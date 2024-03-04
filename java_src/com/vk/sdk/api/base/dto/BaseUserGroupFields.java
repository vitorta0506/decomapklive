package com.vk.sdk.api.base.dto;

import com.facebook.appevents.UserDataStore;
import com.facebook.share.internal.ShareConstants;
import com.guochao.faceshow.utils.BaseConfig;
import com.guochao.faceshow.utils.Contants;
import com.meizu.cloud.pushsdk.constants.PushConstants;
import com.vk.api.sdk.exceptions.VKApiCodes;
import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;
@Metadata(d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0000\n\u0002\u0010\u000e\n\u0002\bi\b\u0086\u0001\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\u000f\b\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0005\u0010\u0006j\u0002\b\u0007j\u0002\b\bj\u0002\b\tj\u0002\b\nj\u0002\b\u000bj\u0002\b\fj\u0002\b\rj\u0002\b\u000ej\u0002\b\u000fj\u0002\b\u0010j\u0002\b\u0011j\u0002\b\u0012j\u0002\b\u0013j\u0002\b\u0014j\u0002\b\u0015j\u0002\b\u0016j\u0002\b\u0017j\u0002\b\u0018j\u0002\b\u0019j\u0002\b\u001aj\u0002\b\u001bj\u0002\b\u001cj\u0002\b\u001dj\u0002\b\u001ej\u0002\b\u001fj\u0002\b j\u0002\b!j\u0002\b\"j\u0002\b#j\u0002\b$j\u0002\b%j\u0002\b&j\u0002\b'j\u0002\b(j\u0002\b)j\u0002\b*j\u0002\b+j\u0002\b,j\u0002\b-j\u0002\b.j\u0002\b/j\u0002\b0j\u0002\b1j\u0002\b2j\u0002\b3j\u0002\b4j\u0002\b5j\u0002\b6j\u0002\b7j\u0002\b8j\u0002\b9j\u0002\b:j\u0002\b;j\u0002\b<j\u0002\b=j\u0002\b>j\u0002\b?j\u0002\b@j\u0002\bAj\u0002\bBj\u0002\bCj\u0002\bDj\u0002\bEj\u0002\bFj\u0002\bGj\u0002\bHj\u0002\bIj\u0002\bJj\u0002\bKj\u0002\bLj\u0002\bMj\u0002\bNj\u0002\bOj\u0002\bPj\u0002\bQj\u0002\bRj\u0002\bSj\u0002\bTj\u0002\bUj\u0002\bVj\u0002\bWj\u0002\bXj\u0002\bYj\u0002\bZj\u0002\b[j\u0002\b\\j\u0002\b]j\u0002\b^j\u0002\b_j\u0002\b`j\u0002\baj\u0002\bbj\u0002\bcj\u0002\bdj\u0002\bej\u0002\bfj\u0002\bgj\u0002\bhj\u0002\bij\u0002\bjj\u0002\bk¨\u0006l"}, d2 = {"Lcom/vk/sdk/api/base/dto/BaseUserGroupFields;", "", "value", "", "(Ljava/lang/String;ILjava/lang/String;)V", "getValue", "()Ljava/lang/String;", "ABOUT", "ACTION_BUTTON", "ACTIVITIES", "ACTIVITY", "ADDRESSES", "ADMIN_LEVEL", "AGE_LIMITS", "AUTHOR_ID", "BAN_INFO", "BDATE", "BLACKLISTED", "BLACKLISTED_BY_ME", "BOOKS", "CAN_CREATE_TOPIC", "CAN_MESSAGE", "IS_WIDGET_MESSAGES_ENABLED", "CAN_POST", "CAN_SEE_ALL_POSTS", "CAN_SEE_AUDIO", "CAN_SEND_FRIEND_REQUEST", "CAN_UPLOAD_VIDEO", "CAN_WRITE_PRIVATE_MESSAGE", "CAREER", "CITY", "COMMON_COUNT", "CONNECTIONS", "CONTACTS", "COUNTERS", "COUNTRY", "COVER", "CROP_PHOTO", "DEACTIVATED", ShareConstants.DESCRIPTION, "DOMAIN", "EDUCATION", "EXPORTS", "FINISH_DATE", "FIXED_POST", "FOLLOWERS_COUNT", "FRIEND_STATUS", "GAMES", "HAS_MARKET_APP", "HAS_MOBILE", "HAS_PHOTO", "HOME_TOWN", "ID", "INTERESTS", "IS_ADMIN", "IS_CLOSED", "IS_FAVORITE", "IS_FRIEND", "IS_HIDDEN_FROM_FEED", "IS_MEMBER", "IS_MESSAGES_BLOCKED", "CAN_SEND_NOTIFY", "IS_SUBSCRIBED", "LAST_SEEN", "LINKS", "LISTS", "MAIDEN_NAME", "MAIN_ALBUM_ID", "MAIN_SECTION", "MARKET", "MEMBER_STATUS", "MEMBERS_COUNT", "MILITARY", "MOVIES", "MUSIC", "NAME", "NICKNAME", "OCCUPATION", "ONLINE", "ONLINE_STATUS", "PERSONAL", "PHONE", "PHOTO_100", "PHOTO_200", "PHOTO_200_ORIG", "PHOTO_400_ORIG", "PHOTO_50", "PHOTO_ID", "PHOTO_MAX", "PHOTO_MAX_ORIG", "QUOTES", "RELATION", "RELATIVES", "SCHOOLS", "SCREEN_NAME", "SEX", "SITE", "START_DATE", "STATUS", "TIMEZONE", "TRENDING", "TV", "TYPE", "UNIVERSITIES", "VERIFIED", "WALL_COMMENTS", "WIKI_PAGE", "VK_ADMIN_STATUS", "api_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
/* loaded from: classes4.dex */
public enum BaseUserGroupFields {
    ABOUT("about"),
    ACTION_BUTTON("action_button"),
    ACTIVITIES("activities"),
    ACTIVITY(PushConstants.INTENT_ACTIVITY_NAME),
    ADDRESSES("addresses"),
    ADMIN_LEVEL("admin_level"),
    AGE_LIMITS("age_limits"),
    AUTHOR_ID("author_id"),
    BAN_INFO(VKApiCodes.PARAM_BAN_INFO),
    BDATE("bdate"),
    BLACKLISTED("blacklisted"),
    BLACKLISTED_BY_ME("blacklisted_by_me"),
    BOOKS("books"),
    CAN_CREATE_TOPIC("can_create_topic"),
    CAN_MESSAGE("can_message"),
    IS_WIDGET_MESSAGES_ENABLED("is_widget_messages_enabled"),
    CAN_POST("can_post"),
    CAN_SEE_ALL_POSTS("can_see_all_posts"),
    CAN_SEE_AUDIO("can_see_audio"),
    CAN_SEND_FRIEND_REQUEST("can_send_friend_request"),
    CAN_UPLOAD_VIDEO("can_upload_video"),
    CAN_WRITE_PRIVATE_MESSAGE("can_write_private_message"),
    CAREER("career"),
    CITY("city"),
    COMMON_COUNT("common_count"),
    CONNECTIONS("connections"),
    CONTACTS("contacts"),
    COUNTERS("counters"),
    COUNTRY(UserDataStore.COUNTRY),
    COVER("cover"),
    CROP_PHOTO("crop_photo"),
    DEACTIVATED("deactivated"),
    DESCRIPTION("description"),
    DOMAIN("domain"),
    EDUCATION("education"),
    EXPORTS("exports"),
    FINISH_DATE("finish_date"),
    FIXED_POST("fixed_post"),
    FOLLOWERS_COUNT("followers_count"),
    FRIEND_STATUS("friend_status"),
    GAMES("games"),
    HAS_MARKET_APP("has_market_app"),
    HAS_MOBILE("has_mobile"),
    HAS_PHOTO("has_photo"),
    HOME_TOWN("home_town"),
    ID("id"),
    INTERESTS("interests"),
    IS_ADMIN("is_admin"),
    IS_CLOSED("is_closed"),
    IS_FAVORITE("is_favorite"),
    IS_FRIEND("is_friend"),
    IS_HIDDEN_FROM_FEED("is_hidden_from_feed"),
    IS_MEMBER("is_member"),
    IS_MESSAGES_BLOCKED("is_messages_blocked"),
    CAN_SEND_NOTIFY("can_send_notify"),
    IS_SUBSCRIBED("is_subscribed"),
    LAST_SEEN("last_seen"),
    LINKS("links"),
    LISTS("lists"),
    MAIDEN_NAME("maiden_name"),
    MAIN_ALBUM_ID("main_album_id"),
    MAIN_SECTION("main_section"),
    MARKET("market"),
    MEMBER_STATUS("member_status"),
    MEMBERS_COUNT("members_count"),
    MILITARY("military"),
    MOVIES("movies"),
    MUSIC(BaseConfig.DB_TYPE_MUSIC_NAME),
    NAME("name"),
    NICKNAME(Contants.USER_NICKNAME),
    OCCUPATION("occupation"),
    ONLINE("online"),
    ONLINE_STATUS("online_status"),
    PERSONAL("personal"),
    PHONE("phone"),
    PHOTO_100("photo_100"),
    PHOTO_200("photo_200"),
    PHOTO_200_ORIG("photo_200_orig"),
    PHOTO_400_ORIG("photo_400_orig"),
    PHOTO_50("photo_50"),
    PHOTO_ID("photo_id"),
    PHOTO_MAX("photo_max"),
    PHOTO_MAX_ORIG("photo_max_orig"),
    QUOTES("quotes"),
    RELATION("relation"),
    RELATIVES("relatives"),
    SCHOOLS("schools"),
    SCREEN_NAME("screen_name"),
    SEX("sex"),
    SITE("site"),
    START_DATE("start_date"),
    STATUS("status"),
    TIMEZONE("timezone"),
    TRENDING("trending"),
    TV("tv"),
    TYPE("type"),
    UNIVERSITIES("universities"),
    VERIFIED("verified"),
    WALL_COMMENTS("wall_comments"),
    WIKI_PAGE("wiki_page"),
    VK_ADMIN_STATUS("vk_admin_status");
    
    @NotNull
    private final String value;

    BaseUserGroupFields(String str) {
        this.value = str;
    }

    @NotNull
    public final String getValue() {
        return this.value;
    }
}
