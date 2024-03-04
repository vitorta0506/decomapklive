package com.vk.sdk.api.groups.dto;

import com.facebook.appevents.UserDataStore;
import com.facebook.internal.NativeProtocol;
import com.facebook.share.internal.ShareConstants;
import com.meizu.cloud.pushsdk.constants.PushConstants;
import com.vk.api.sdk.exceptions.VKApiCodes;
import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;
@Metadata(d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0000\n\u0002\u0010\u000e\n\u0002\bi\b\u0086\u0001\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\u000f\b\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0005\u0010\u0006j\u0002\b\u0007j\u0002\b\bj\u0002\b\tj\u0002\b\nj\u0002\b\u000bj\u0002\b\fj\u0002\b\rj\u0002\b\u000ej\u0002\b\u000fj\u0002\b\u0010j\u0002\b\u0011j\u0002\b\u0012j\u0002\b\u0013j\u0002\b\u0014j\u0002\b\u0015j\u0002\b\u0016j\u0002\b\u0017j\u0002\b\u0018j\u0002\b\u0019j\u0002\b\u001aj\u0002\b\u001bj\u0002\b\u001cj\u0002\b\u001dj\u0002\b\u001ej\u0002\b\u001fj\u0002\b j\u0002\b!j\u0002\b\"j\u0002\b#j\u0002\b$j\u0002\b%j\u0002\b&j\u0002\b'j\u0002\b(j\u0002\b)j\u0002\b*j\u0002\b+j\u0002\b,j\u0002\b-j\u0002\b.j\u0002\b/j\u0002\b0j\u0002\b1j\u0002\b2j\u0002\b3j\u0002\b4j\u0002\b5j\u0002\b6j\u0002\b7j\u0002\b8j\u0002\b9j\u0002\b:j\u0002\b;j\u0002\b<j\u0002\b=j\u0002\b>j\u0002\b?j\u0002\b@j\u0002\bAj\u0002\bBj\u0002\bCj\u0002\bDj\u0002\bEj\u0002\bFj\u0002\bGj\u0002\bHj\u0002\bIj\u0002\bJj\u0002\bKj\u0002\bLj\u0002\bMj\u0002\bNj\u0002\bOj\u0002\bPj\u0002\bQj\u0002\bRj\u0002\bSj\u0002\bTj\u0002\bUj\u0002\bVj\u0002\bWj\u0002\bXj\u0002\bYj\u0002\bZj\u0002\b[j\u0002\b\\j\u0002\b]j\u0002\b^j\u0002\b_j\u0002\b`j\u0002\baj\u0002\bbj\u0002\bcj\u0002\bdj\u0002\bej\u0002\bfj\u0002\bgj\u0002\bhj\u0002\bij\u0002\bjj\u0002\bk¨\u0006l"}, d2 = {"Lcom/vk/sdk/api/groups/dto/GroupsFields;", "", "value", "", "(Ljava/lang/String;ILjava/lang/String;)V", "getValue", "()Ljava/lang/String;", "MARKET", "MARKET_SERVICES", "MEMBER_STATUS", "IS_FAVORITE", "IS_SUBSCRIBED", "IS_SUBSCRIBED_PODCASTS", "CAN_SUBSCRIBE_PODCASTS", "CITY", "COUNTRY", "VERIFIED", ShareConstants.DESCRIPTION, "WIKI_PAGE", "MEMBERS_COUNT", "REQUESTS_COUNT", "COUNTERS", "COVER", "CAN_POST", "CAN_SUGGEST", "CAN_UPLOAD_STORY", "CAN_UPLOAD_DOC", "CAN_UPLOAD_VIDEO", "CAN_UPLOAD_CLIP", "CAN_SEE_ALL_POSTS", "CAN_CREATE_TOPIC", "CROP_PHOTO", "ACTIVITY", "FIXED_POST", "HAS_PHOTO", "STATUS", "MAIN_ALBUM_ID", "LINKS", "CONTACTS", "SITE", "MAIN_SECTION", "SECONDARY_SECTION", "WALL", "TRENDING", "HAD_TORCH", "CAN_MESSAGE", "IS_MARKET_CART_ENABLED", "IS_MESSAGES_BLOCKED", "CAN_SEND_NOTIFY", "HAS_GROUP_CHANNEL", "GROUP_CHANNEL", "ONLINE_STATUS", "START_DATE", "FINISH_DATE", "AGE_LIMITS", "BAN_INFO", "ACTION_BUTTON", "AUTHOR_ID", "PHONE", "HAS_MARKET_APP", "VKPAY_CAN_TRANSFER", "VKPAY_RECEIVER_ID", "USING_VKPAY_MARKET_APP", "ADDRESSES", "LIVE_COVERS", "IS_ADULT", "IS_HIDDEN_FROM_FEED", "CAN_SUBSCRIBE_POSTS", "CREATE_DATE", "MENU", "WARNING_NOTIFICATION", "DONUT", "DONUT_PAYMENT_INFO", "CAN_POST_DONUT", "CAN_SEE_MEMBERS", "MSG_PUSH_ALLOWED", "CHATS_STATUS", "CAN_REPORT", "HAS_SUGGESTIONS", "SHOW_SUGGESTIONS", "VERIFICATION_END_TIME", "CAN_MANAGE", "CAN_VIEW_STATS", "CAN_VIEW_POST_REACH_STATS", "STORIES_ARCHIVE_COUNT", "VIDEO_LIVE_LEVEL", "VIDEO_LIVE_COUNT", "CLIPS_COUNT", "MICROLANDING", "TARIFFS", "HAS_UNSEEN_STORIES", "LIKE", "YOULA_STATUS", "YOULA_USE_WALLPOST_REDIRECT", "YOULA_USE_WALLPOST_REDIRECT_ONBOARDING", "YOULA_WALLPOST_REDIRECT_MINIAPP_URL", "CLASSIFIEDS_ANTIBARAHOLKA_DESIGN_VERSION", "IS_YOULA_POSTING_TO_WALL_ALLOWED", "WORKI_USE_WALLPOST_REDIRECT", "IS_BUSINESS", "TEXTLIVE", "TEXTLIVES_COUNT", ShareConstants.PEOPLE_IDS, "IS_WIDGET_MESSAGES_ENABLED", "DEACTIVATED_MESSAGE", "WORKI_ACTION_MENU_ITEM", "YOULA_POSTING_METHOD", "MEMBERS_COUNT_TEXT", "api_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
/* loaded from: classes5.dex */
public enum GroupsFields {
    MARKET("market"),
    MARKET_SERVICES("market_services"),
    MEMBER_STATUS("member_status"),
    IS_FAVORITE("is_favorite"),
    IS_SUBSCRIBED("is_subscribed"),
    IS_SUBSCRIBED_PODCASTS("is_subscribed_podcasts"),
    CAN_SUBSCRIBE_PODCASTS("can_subscribe_podcasts"),
    CITY("city"),
    COUNTRY(UserDataStore.COUNTRY),
    VERIFIED("verified"),
    DESCRIPTION("description"),
    WIKI_PAGE("wiki_page"),
    MEMBERS_COUNT("members_count"),
    REQUESTS_COUNT("requests_count"),
    COUNTERS("counters"),
    COVER("cover"),
    CAN_POST("can_post"),
    CAN_SUGGEST("can_suggest"),
    CAN_UPLOAD_STORY("can_upload_story"),
    CAN_UPLOAD_DOC("can_upload_doc"),
    CAN_UPLOAD_VIDEO("can_upload_video"),
    CAN_UPLOAD_CLIP("can_upload_clip"),
    CAN_SEE_ALL_POSTS("can_see_all_posts"),
    CAN_CREATE_TOPIC("can_create_topic"),
    CROP_PHOTO("crop_photo"),
    ACTIVITY(PushConstants.INTENT_ACTIVITY_NAME),
    FIXED_POST("fixed_post"),
    HAS_PHOTO("has_photo"),
    STATUS("status"),
    MAIN_ALBUM_ID("main_album_id"),
    LINKS("links"),
    CONTACTS("contacts"),
    SITE("site"),
    MAIN_SECTION("main_section"),
    SECONDARY_SECTION("secondary_section"),
    WALL("wall"),
    TRENDING("trending"),
    HAD_TORCH("had_torch"),
    CAN_MESSAGE("can_message"),
    IS_MARKET_CART_ENABLED("is_market_cart_enabled"),
    IS_MESSAGES_BLOCKED("is_messages_blocked"),
    CAN_SEND_NOTIFY("can_send_notify"),
    HAS_GROUP_CHANNEL("has_group_channel"),
    GROUP_CHANNEL("group_channel"),
    ONLINE_STATUS("online_status"),
    START_DATE("start_date"),
    FINISH_DATE("finish_date"),
    AGE_LIMITS("age_limits"),
    BAN_INFO(VKApiCodes.PARAM_BAN_INFO),
    ACTION_BUTTON("action_button"),
    AUTHOR_ID("author_id"),
    PHONE("phone"),
    HAS_MARKET_APP("has_market_app"),
    VKPAY_CAN_TRANSFER("vkpay_can_transfer"),
    VKPAY_RECEIVER_ID("vkpay_receiver_id"),
    USING_VKPAY_MARKET_APP("using_vkpay_market_app"),
    ADDRESSES("addresses"),
    LIVE_COVERS("live_covers"),
    IS_ADULT("is_adult"),
    IS_HIDDEN_FROM_FEED("is_hidden_from_feed"),
    CAN_SUBSCRIBE_POSTS("can_subscribe_posts"),
    CREATE_DATE("create_date"),
    MENU("menu"),
    WARNING_NOTIFICATION("warning_notification"),
    DONUT("donut"),
    DONUT_PAYMENT_INFO("donut_payment_info"),
    CAN_POST_DONUT("can_post_donut"),
    CAN_SEE_MEMBERS("can_see_members"),
    MSG_PUSH_ALLOWED("msg_push_allowed"),
    CHATS_STATUS("chats_status"),
    CAN_REPORT("can_report"),
    HAS_SUGGESTIONS("has_suggestions"),
    SHOW_SUGGESTIONS("show_suggestions"),
    VERIFICATION_END_TIME("verification_end_time"),
    CAN_MANAGE("can_manage"),
    CAN_VIEW_STATS("can_view_stats"),
    CAN_VIEW_POST_REACH_STATS("can_view_post_reach_stats"),
    STORIES_ARCHIVE_COUNT("stories_archive_count"),
    VIDEO_LIVE_LEVEL("video_live_level"),
    VIDEO_LIVE_COUNT("video_live_count"),
    CLIPS_COUNT("clips_count"),
    MICROLANDING("microlanding"),
    TARIFFS("tariffs"),
    HAS_UNSEEN_STORIES("has_unseen_stories"),
    LIKE("like"),
    YOULA_STATUS("youla_status"),
    YOULA_USE_WALLPOST_REDIRECT("youla_use_wallpost_redirect"),
    YOULA_USE_WALLPOST_REDIRECT_ONBOARDING("youla_use_wallpost_redirect_onboarding"),
    YOULA_WALLPOST_REDIRECT_MINIAPP_URL("youla_wallpost_redirect_miniapp_url"),
    CLASSIFIEDS_ANTIBARAHOLKA_DESIGN_VERSION("classifieds_antibaraholka_design_version"),
    IS_YOULA_POSTING_TO_WALL_ALLOWED("is_youla_posting_to_wall_allowed"),
    WORKI_USE_WALLPOST_REDIRECT("worki_use_wallpost_redirect"),
    IS_BUSINESS("is_business"),
    TEXTLIVE("textlive"),
    TEXTLIVES_COUNT("textlives_count"),
    FRIENDS(NativeProtocol.AUDIENCE_FRIENDS),
    IS_WIDGET_MESSAGES_ENABLED("is_widget_messages_enabled"),
    DEACTIVATED_MESSAGE("deactivated_message"),
    WORKI_ACTION_MENU_ITEM("worki_action_menu_item"),
    YOULA_POSTING_METHOD("youla_posting_method"),
    MEMBERS_COUNT_TEXT("members_count_text");
    
    @NotNull
    private final String value;

    GroupsFields(String str) {
        this.value = str;
    }

    @NotNull
    public final String getValue() {
        return this.value;
    }
}
