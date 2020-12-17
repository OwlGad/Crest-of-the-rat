const CARD_BASE_WIDTH = 813;
const CARD_BASE_HEIGHT = 1185;
const MAX_WIDTHS = [ 40, 10, 10 ];
const NO_CARD = {
    src: "https://raw.githubusercontent.com/LimitlessSocks/EXU-Scrape/master/res/no_img.png",
    name: "Error: No Card",
    id: -1,
    username: "--",
    card_type: "Monster",
    monster_color: "Error",
    custom: 0,
    effect: "This card does not exist.",
    attribute: "ERROR",
    level: 0,
    atk: -1,
    def: -1,
    exu_limit: 3,
};

class Deck {
    constructor(main = [], side = [], extra = [], editable = true) {
        this.decks = [
            main,
            side,
            extra
        ];
        this.target = null;
        this.deckWidthInCards = 10;
        this.editable = editable;
        this.units = {};
    }
    
    clear() {
        for(let deck of this.decks) {
            deck.splice(0);
        }
    }
    
    getLocation(cardId) {
        let card = CardViewer.Database.cards[cardId];
        return CardViewer.Filters.isExtraDeck(card) ? Deck.Location.EXTRA : Deck.Location.MAIN;
    }
    
    addCard(cardId, location = this.getLocation(cardId)) {
        let destDeck = this.decks[location];
        destDeck.push(cardId);
    }
    
    swapCards(aloc, a, bloc, b) {
        [this.decks[aloc][a], this.decks[bloc][b]] = [this.decks[bloc][b], this.decks[aloc][a]];
    }
    
    removeCard(deck, index) {
        this.decks[deck].splice(index, 1);
    }
    
    applyCSS() {
        if(!this.target) {
            return;
        }
        const deckWidthInCards = this.deckWidthInCards;
        let width = this.target.width() - 30;
        let marginWidth = 5;
        let unitWidth = width - (deckWidthInCards - 1) * marginWidth;
        unitWidth /= deckWidthInCards;
        let totalWidth = unitWidth + marginWidth;
        
        let scaleRatio = unitWidth / CARD_BASE_WIDTH;
        let unitHeight = CARD_BASE_HEIGHT * scaleRatio;
        let totalHeight = unitHeight + marginWidth;
        
        this.units.scaleRatio = scaleRatio;
        this.units.totalWidth = totalWidth;
        this.units.totalHeight = totalHeight;
        
        let j = 0;
        let cIndex = 0;
        // console.log(this.target.children());
        for(let container of this.target.children()) {
            let i = 0;
            let multiplier = 1;
            if(this.decks[cIndex].length > MAX_WIDTHS[cIndex]) {
                multiplier = 0.64;//about 2/3
            }
            let containerWidth = Math.floor(deckWidthInCards / multiplier);
            // let containerWidth = Math.floor(deckWidthInCards / multiplier);
            let cardFound = false;
            let children = $(container).children();
            let size = children.length;
            for(let card of children) {
                // console.log(i, cIndex, j);
                let heightMultiplier = j + cIndex * 0.2;
                card = $(card);
                card.css("left", i * multiplier * totalWidth);
                card.css("top", heightMultiplier * totalHeight);
                card.css("transform", `scale(${scaleRatio})`);
                i++;
                if(i >= containerWidth) {
                    i = 0;
                    j++;
                }
                cardFound = true;
            }
            if(i || !cardFound) j++;
            cIndex++;
        }
    }
    
    isEmpty() {
        return this.decks.every(deck => deck.length === 0);
    };
    
    renderHTML(target) {
        this.target = target;
        
        if(this.isEmpty()) {
            target.text("\xA0");//nbsp
            return;
        }
        
        let j = 0;
        for(let deck of this.decks) {
            let i = 0;
            let container = $("<div class=sub-deck-container>");
            for(let id of deck) {
                let card = CardViewer.Database.cards[id];
                if(!card) {
                    console.warn("Card with id does not exist: " + id);
                    card = CardViewer.Database.cards[id] = Object.assign({}, NO_CARD);
                    card.effect += " Original ID: " + id;
                    // continue;
                }
                let composed = CardViewer.composeResultDeckPreview(card);
                composed.data("index", i);
                composed.data("deck", j);
                composed.data("id", id);
                CardViewer.Editor.addHoverTimerPreview(composed, id);
                if(this.editable) {
                    composed.mousedown((e) => {
                        // only accept left mouse click
                        if(e.which !== 1) return;
                        let offset = getOffsetFrom(e.originalEvent, composed);
                        CardViewer.Editor.trackMouse(this, composed, offset);
                    });
                    composed.contextmenu((e) => {
                        e.preventDefault();
                        this.removeCard(composed.data("deck"), composed.data("index"));
                        CardViewer.Editor.updateDeck();
                    });
                }
                container.append(composed);
                i++;
            }
            j++;
            target.append(container);
        }
        
        this.applyCSS();
    }
}
Deck.Location = {
    MAIN: 0,
    SIDE: 1,
    EXTRA: 2,
};


const getOffsetFrom = (originalEvent, container) => {
    let { pageX, pageY } = originalEvent;
    let { left, top } = container.offset();
    return {
        x: pageX - left,
        y: pageY - top,
    };
}


CardViewer.Editor = {};
CardViewer.Editor.DeckInstance = new Deck();
CardViewer.Editor.setPreview = function (id) {
    CardViewer.Elements.cardPreview.empty();
    if(!id) return;
    CardViewer.Elements.cardPreview.append(
        CardViewer.composeResultCardPreview(CardViewer.Database.cards[id])
    );
};
CardViewer.Editor.TIMER_DELAY = 100;//ms
CardViewer.Editor.addHoverTimerPreview = function (composed, id) {
    let hoverTimer = null;
    let setPreviewToThis = () => CardViewer.Editor.setPreview(id);
    composed.click(setPreviewToThis);
    composed.hover(() => {
        if(hoverTimer !== null) {
            // only set hover once
            return;
        }
        hoverTimer = setTimeout(setPreviewToThis, CardViewer.Editor.TIMER_DELAY);
    });
    composed.mouseleave(() => {
        clearTimeout(hoverTimer);
        hoverTimer = null;
    });
};
CardViewer.Editor.trackMouse = function (deck, composed, offset) {
    offset = offset || { x: 0, y: 0 };
    composed.addClass("dragging");
    offset.x += 10;
    offset.y -= 15;
    let sourceIndex = composed.data("index");
    let sourceDeck = composed.data("deck");
    let sourceLocation = deck.getLocation(composed.data("id"));
    let focusedChild = null;
    
    let container = $(".sub-deck-container");
    
    let onMove = (e) => {
        let { x, y } = getOffsetFrom(e.originalEvent, container);
        // x -= offset.x;
        // y -= offset.y;
        composed.css("left", (x - offset.x) + "px");
        composed.css("top", (y - offset.y) + "px");
        // let minDistance = Infinity;
        // let minChild = null;
        let allCards = container.find(".editor-item");
        allCards.removeClass("focused");
        // let { screenX, screenY } = e.originalEvent;
        let { clientX, clientY } = e.originalEvent;
        
        let myX, myY;
        myX = clientX;
        myY = clientY;
        
        for(let child of allCards) {
            child = $(child);
            if(child.data("index") === sourceIndex) continue;
            let childLocation = deck.getLocation(child.data("id"));
            if(childLocation !== sourceLocation) continue;
            let childOffset = child.offset();
            let containerOffset = container.offset();
            let bounds = child.get(0).getBoundingClientRect();
            let isLeftRightBounded = bounds.left <= myX && myX <= bounds.right;
            let isTopBottomBounded = bounds.top <= myY && myY <= bounds.bottom;
            if(isLeftRightBounded && isTopBottomBounded) {
                focusedChild = child;
                break;
            }
        }
        if(focusedChild) {
            focusedChild.addClass("focused");
        }
    };
    let onMouseUp = (e) => {
        composed.removeClass("dragging");
        //TODO: just handle it with a single listener
        $(window).unbind("mousemove", onMove);
        $(window).unbind("mouseup", onMouseUp);
        
        if(!focusedChild) {
            focusedChild = composed;
        }
        let myIndex = composed.data("index");
        let targetIndex = focusedChild.data("index");
        deck.swapCards(
            composed.data("deck"), myIndex,
            focusedChild.data("deck"), targetIndex
        );
        CardViewer.Editor.updateDeck();
    };
    $(window).mousemove(onMove);
    $(window).mouseup(onMouseUp);
};
CardViewer.Editor.recalculateView = function () {
    const MARGIN = 24;
    let windowHeight = $(window).height();
    
    let topPosition = CardViewer.Editor.MajorContainer.position().top;
    let max = windowHeight - topPosition - MARGIN;
    CardViewer.Editor.MajorContainer.children().css("height", max + "px");
    
    if(CardViewer.Elements.results) {
        let resultTop = CardViewer.Elements.results.position().top;
        let resultMax = windowHeight - resultTop - MARGIN;
        CardViewer.Elements.results.css("height", resultMax + "px");
    }
    
    CardViewer.Editor.DeckInstance.applyCSS();
};

CardViewer.composeResultCardPreview = function (card) {
    let img = $("<img class=img-result>").attr("src", card.src);
    let name = $("<h3 class=result-name>").text(card.name);
    
    let idText = card.id;
    let altText = `(~${card.submission_source})`;
    let id = $("<h4 class=result-id>")
        .contextmenu((e) => {
            e.preventDefault();
            idText = idText === card.id ? altText : card.id;
            id.text(idText);
        })
        .text(idText);
    let author = $("<h4 class=result-author>");
    if(card.username) {
        author.text(card.username);
    }
    else {
        //TCG card
        let subtitle = "Yu-Gi-Oh!";
        if(card.exu_import) subtitle += " Imported";
        author.append($("<em>").text(subtitle));
    }
    
    let res = $("<div class=result>");
    res.attr("id", "card" + card.id);
    res.addClass("card-preview");
    res.addClass(card.card_type.toLowerCase());
    res.addClass(card.monster_color.toLowerCase());
    
    let isPrivate = card.custom && card.custom > 1;
    
    if(isPrivate) {
        res.addClass("private");
        name.append($("<i>").text(" (private)"));
    }
    
    let effect = card.effect;
    if(card.pendulum) {
        effect = "Scale = " + card.scale + "\n[Pendulum Effect]\n" + card.pendulum_effect + "\n-----------\n[Monster Effect]\n" + effect;
        res.addClass("pendulum");
    }
    
    let stats = $("<div>");
    
    let attribute = $("<img>");
    let marking = $("<div class=markings>");
    
    let linkArrows;
    if(card.card_type === "Monster") {
        attribute.attr("src", getAttribute(card.attribute))
        let kind = [];
        
        let levelIndicator;
        let star;
        switch(card.monster_color) {
            case "Link":
                levelIndicator = "Link-";
                break;
            case "Xyz":
                levelIndicator = "Rank ";
                star = "Xyz";
                break;
            default:
                levelIndicator = "Level ";
                star = "Normal";
                break;
        }
        
        if(star) {
            for(let i = 0; i < card.level; i++) {
                marking.append(
                    $("<img class=star>").attr("src", getStar(star))
                );
            }
        }
        
        kind.push(levelIndicator + card.level);
        kind.push(card.attribute);
        kind.push(card.type);
        
        if(card.ability) {
            kind.push(card.ability);
        }
        
        kind.push(card.monster_color);
        
        if(card.pendulum) {
            kind.push("Pendulum");
        }
        
        kind.push("Monster");
        
        stats.append($("<p>").text(kind.join(" ")));
        
        if(card.monster_color === "Link") {
            stats.append($("<p>").text(`ATK/${card.atk}`));
            linkArrows = $(
                "<p class=link-arrows>" +
                getLinkArrowText(card.arrows).replace(/\n/g,"<br>") +
                "</p>"
            );
        }
        else {
            stats.append($("<p>").text(`ATK/${card.atk} DEF/${card.def}`));
        }
    }
    else {
        attribute.attr("src", getAttribute(card.card_type));
        marking.append($("<img class=cardicon>").attr("src", getIcon(card.type)));
    }
    
    let banMarker = $("<img class=banicon>");
    let importMarker = $("<img class=importicon>");
    if(card.exu_ban_import) {
        importMarker.attr("src", BANLIST_ICONS.notImported);
    }
    else if(card.exu_import) {
        importMarker.attr("src", BANLIST_ICONS.imported);
    }
    
    if(card.exu_limit !== 3) {
        banMarker.attr("src", BANLIST_ICONS[card.exu_limit]);
    }
    
    if(importMarker.attr("src")) {
        marking.append($("<div>").append(importMarker));
    }
    if(banMarker.attr("src")) {
        marking.append($("<div>").append(banMarker));
    }
    
    effect = effect.split(/\r|\r?\n/).map(para => $("<p>").text(para));
    // effect = 
    
    res.append($("<div class=result-inner>").append(id, name, img, linkArrows, marking, author, stats, effect
        // $("<table>").append(
            // $("<tr>").append(
                // $("<td class=result-img-holder>").append(img, attribute, marking),
                // $("<td class=result-effect>").append(effect)
            // )
        // )
    ));
    return res;
};

const LINK_ARROW_IMAGE_SOURCES = {
    [0b10000000]: "topLeft",
    [0b01000000]: "topCenter",
    [0b00100000]: "topRight",
    [0b00010000]: "middleRight",
    [0b00001000]: "bottomRight",
    [0b00000100]: "bottomCenter",
    [0b00000010]: "bottomLeft",
    [0b00000001]: "middleLeft",
};
const getLinkArrowImages = function (arrows) {
    let res = [];
    arrows = parseInt(arrows, 2);
    for(let i = 1; i <= 0b10000000; i <<= 1) {
        if((arrows & i) !== 0) {
            let arrowName = LINK_ARROW_IMAGE_SOURCES[i];
            let img = $("<img>")
                .addClass("arrow")
                .addClass(arrowName)
                .attr("src", getResource("marker", arrowName));
            res.push(img);
        }
    }
    return res;
};

CardViewer.composeResultDeckPreview = function (card) {
    // console.log(card);
    if(!card) {
        console.warn("No card passed to deck preview (" + card + ")");
        return $("");
    }
    card.src = card.src || (
        "https://www.duelingbook.com/images/low-res/" + card.id + ".jpg"
    );
    
    let img = $("<img class=img-result>")
        .attr("src", card.src);
    let name = $("<h3 class=result-name>").text(card.name);
    let id = $("<h4 class=result-id>").text(card.id);
    let author = $("<h4 class=result-author>").text(card.username);
    
    let res = $("<div class=result>");
    // res.attr("title", card.name);
    res.addClass("editor-item");
    res.addClass("unselectable");
    // res.attr("id", "card" + card.id);
    res.addClass(card.card_type.toLowerCase());
    res.addClass(card.monster_color.toLowerCase());
    
    let isPrivate = card.custom && card.custom > 1;
    
    if(isPrivate) {
        res.addClass("private");
    }
    
    let effect = card.effect;
    if(card.pendulum) {
        effect = "[Pendulum Effect]\n" + card.pendulum_effect + "\n-----------\n[Monster Effect]\n" + effect;
        res.addClass("pendulum");
    }
    
    effect = effect.split(/\r|\r?\n/).map(para => $("<p>").text(para));
    
    // let stats = $("<div>");
    
    let attribute = $("<img class=result-attribute>");
    let marking = $("<div class=markings>");
    
    let stats = [];
    let linkArrows = [];
    if(card.card_type === "Monster") {
        attribute.attr("src", getAttribute(card.attribute));
        let levelIndicator;
        let star;
        switch(card.monster_color) {
            case "Link":
                levelIndicator = "Link-";
                break;
            case "Xyz":
                levelIndicator = "Rank ";
                star = "Xyz";
                break;
            default:
                levelIndicator = "Level ";
                star = "Normal";
                break;
        }
        
        if(star) {
            for(let i = 0; i < card.level; i++) {
                marking.append(
                    $("<img class=star>").attr("src", getStar(star))
                );
            }
            if(star === "Xyz") {
                marking.addClass("xyz");
            }
        }
        
        stats.push(
            $("<div>")
                .text(`ATK/${card.atk}`)
                .addClass("stat")
                .addClass("atk")
        );
        if(card.monster_color === "Link") {
            linkArrows = getLinkArrowImages(card.arrows);
        }
        else {
            stats.push(
                $("<div>")
                    .text(`DEF/${card.def}`)
                    .addClass("stat")
                    .addClass("def")
            );
        }
        
    }
    else {
        attribute.attr("src", getAttribute(card.card_type));
        marking.addClass("spelltrap");
        marking.append($("<img class=cardicon>").attr("src", getIcon(card.type)));
    }
    
    let banMarker = $("<img class=banicon>");
    let importMarker = $("<img class=importicon>");
    let pos = 0;
    if(card.exu_ban_import) {
        banMarker.attr("src", BANLIST_ICONS.notImported);
    }
    else if(card.exu_limit !== 3) {
        banMarker.attr("src", BANLIST_ICONS[card.exu_limit]);
    }
    if(card.exu_import) {
        importMarker.attr("src", BANLIST_ICONS.imported);
    }
    let hasBanMarker = !!banMarker.attr("src");
    let hasImportMarker = !!importMarker.attr("src");
    let iconPosition = 0;
    
    importMarker.toggle(hasImportMarker);
    if(hasImportMarker) {
        importMarker.addClass("icon" + iconPosition++);
    }
    
    banMarker.toggle(hasBanMarker);
    if(hasBanMarker) {
        banMarker.addClass("icon" + iconPosition++);
    }
    
    marking.prepend(attribute);
    
    
    res.append($("<div class=result-inner>").append(
        name, attribute, img, marking, banMarker, importMarker,
        ...linkArrows, ...stats
    ));
    // console.log(res);
    // res.on("load", function () {
        // console.log("Loaded!");
    // });
    res.ready(function () {
        let longer = name.width();
        let shorter = name.parent().width() - attribute.width() - 24;
        if(shorter >= longer) return;
        let scaleRatio = shorter / longer;
        name.css("transform", "scaleX(" + scaleRatio + ")");
        // console.log(longer, shorter);
    });
    
    //prevent dragable images
    res.find("img")
        .on("dragstart", (e) => e.preventDefault());
    
    return res;
};
// CardViewer.composeStrategy = CardViewer.composeResultDeckPreview;
CardViewer.composeStrategy = CardViewer.composeResultSmall;
CardViewer.excludeTcg = false;

CardViewer.Editor.updateDeck = function (deckInstance = CardViewer.Editor.DeckInstance) {
    CardViewer.Elements.deckEditor.empty();
    CardViewer.Editor.DeckInstance.renderHTML(CardViewer.Elements.deckEditor);
    // CardViewer.Editor.setPreview(0);
};