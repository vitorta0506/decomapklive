package com.vk.sdk.api.groups.dto;

import com.facebook.share.internal.ShareConstants;
import kotlin.Metadata;
@Metadata(d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0000\n\u0002\u0010\b\n\u0002\b1\b\u0086\u0001\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\u000f\b\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0005\u0010\u0006j\u0002\b\u0007j\u0002\b\bj\u0002\b\tj\u0002\b\nj\u0002\b\u000bj\u0002\b\fj\u0002\b\rj\u0002\b\u000ej\u0002\b\u000fj\u0002\b\u0010j\u0002\b\u0011j\u0002\b\u0012j\u0002\b\u0013j\u0002\b\u0014j\u0002\b\u0015j\u0002\b\u0016j\u0002\b\u0017j\u0002\b\u0018j\u0002\b\u0019j\u0002\b\u001aj\u0002\b\u001bj\u0002\b\u001cj\u0002\b\u001dj\u0002\b\u001ej\u0002\b\u001fj\u0002\b j\u0002\b!j\u0002\b\"j\u0002\b#j\u0002\b$j\u0002\b%j\u0002\b&j\u0002\b'j\u0002\b(j\u0002\b)j\u0002\b*j\u0002\b+j\u0002\b,j\u0002\b-j\u0002\b.j\u0002\b/j\u0002\b0j\u0002\b1j\u0002\b2j\u0002\b3¨\u00064"}, d2 = {"Lcom/vk/sdk/api/groups/dto/GroupsGroupFullSection;", "", "value", "", "(Ljava/lang/String;II)V", "getValue", "()I", "NONE", ShareConstants.PHOTOS, "TOPICS", "AUDIOS", "VIDEOS", "MARKET", "STORIES", "APPS", "FOLLOWERS", "LINKS", "EVENTS", "PLACES", "CONTACTS", "APP_BTNS", "DOCS", "EVENT_COUNTERS", "GROUP_MESSAGES", "ALBUMS", "CATEGORIES", "ADMIN_HELP", "APP_WIDGET", "PUBLIC_HELP", "HS_DONATION_APP", "HS_MARKET_APP", "ADDRESSES", "ARTIST_PAGE", "PODCAST", "ARTICLES", "ADMIN_TIPS", "MENU", "FIXED_POST", "CHATS", "EVERGREEN_NOTICE", "MUSICIANS", "NARRATIVES", "DONUT_DONATE", "CLIPS", "MARKET_CART", "CURATORS", "MARKET_SERVICES", "CLASSIFIEDS", "TEXTLIVES", "DONUT_FOR_DONS", "BADGES", "CHATS_CREATION", "api_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
/* loaded from: classes5.dex */
public enum GroupsGroupFullSection {
    NONE(0),
    PHOTOS(1),
    TOPICS(2),
    AUDIOS(3),
    VIDEOS(4),
    MARKET(5),
    STORIES(6),
    APPS(7),
    FOLLOWERS(8),
    LINKS(9),
    EVENTS(10),
    PLACES(11),
    CONTACTS(12),
    APP_BTNS(13),
    DOCS(14),
    EVENT_COUNTERS(15),
    GROUP_MESSAGES(16),
    ALBUMS(24),
    CATEGORIES(26),
    ADMIN_HELP(27),
    APP_WIDGET(31),
    PUBLIC_HELP(32),
    HS_DONATION_APP(33),
    HS_MARKET_APP(34),
    ADDRESSES(35),
    ARTIST_PAGE(36),
    PODCAST(37),
    ARTICLES(39),
    ADMIN_TIPS(40),
    MENU(41),
    FIXED_POST(42),
    CHATS(43),
    EVERGREEN_NOTICE(44),
    MUSICIANS(45),
    NARRATIVES(46),
    DONUT_DONATE(47),
    CLIPS(48),
    MARKET_CART(49),
    CURATORS(50),
    MARKET_SERVICES(51),
    CLASSIFIEDS(53),
    TEXTLIVES(54),
    DONUT_FOR_DONS(55),
    BADGES(57),
    CHATS_CREATION(58);
    
    private final int value;

    GroupsGroupFullSection(int i9) {
        this.value = i9;
    }

    public final int getValue() {
        return this.value;
    }
}
