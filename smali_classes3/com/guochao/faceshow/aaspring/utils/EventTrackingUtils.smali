.class public Lcom/guochao/faceshow/aaspring/utils/EventTrackingUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/guochao/faceshow/aaspring/utils/EventTrackingUtils$OnEventTrackListener;
    }
.end annotation


# static fields
.field public static final APPLY_RESULT:Ljava/lang/String; = "apply_result"

.field public static final APP_OPEN:Ljava/lang/String; = "app_open_3000"

.field public static final APP_OPEN_KEY:Ljava/lang/String; = "app_open_3000"

.field public static final BE_24H_GREETED:Ljava/lang/String; = "24h_be_greeted"

.field public static final BE_24H_GREETED_REPLY:Ljava/lang/String; = "24h_be_greeted_Reply"

.field public static final CANCEL_CILCK:Ljava/lang/String; = "cancel_click"

.field public static final CLICK_HELLO_LIST_CALL:Ljava/lang/String; = "click_hellolist_call"

.field public static final CLICK_HELLO_LIST_HELLO:Ljava/lang/String; = "click_hellolist_hello"

.field public static final CLICK_HELLO_STAR_HELLO:Ljava/lang/String; = "click_hellostar_hello"

.field public static final CLICK_HELLO_STAR_THANKS:Ljava/lang/String; = "click_hellostar_thanks"

.field public static final CLICK_IM_CHAT_LIVE_ROOM:Ljava/lang/String; = "click_imchat_liveroom"

.field public static final CONNECTION_SELF_POPUP_AGREE_CLICK:Ljava/lang/String; = "connection_self_popup_agree_click"

.field public static final CONNECTION_SELF_POPUP_CANCEL_CLICK:Ljava/lang/String; = "connection_self_popup_cancel_click"

.field public static final CONTENT_TYPE:Ljava/lang/String; = "content_type"

.field public static final CONVERSATION_CLICK:Ljava/lang/String; = "conversation_click"

.field public static final COUNTRY_ASIA_CLICK:Ljava/lang/String; = "Areae_country_Continen_Asia_tclick"

.field public static final DISCOVERY_COUNTRY:Ljava/lang/String; = "Home_live_Explore_country_click"

.field public static final DISCOVERY_LATEST:Ljava/lang/String; = "Home_live_Explore_latest_click"

.field public static final DISCOVERY_MORE:Ljava/lang/String; = "Home_live_Explore_morec_lick"

.field public static final EVENT_TRACKING_RESULT_CODE:I = 0xb2

.field public static final EXPLORE_CONNECTION_CLICK:Ljava/lang/String; = "explore_connection_click"

.field public static final FIRST_CHARGE_CLICK:Ljava/lang/String; = "First_charge_charge_click"

.field public static final FIRST_CHARGE_SUCCESS:Ljava/lang/String; = "First_charge_success"

.field public static final FRIENDS_CLICK:Ljava/lang/String; = "friends_click"

.field public static final FRIENDS_OPEN:Ljava/lang/String; = "friends_open"

.field public static final GOOGLE_COMPLETE_PURCHASE:Ljava/lang/String; = "a_app_purchase"

.field public static final GOOGLE_CONNECT_ERROR:Ljava/lang/String; = "g_connect_error"

.field public static final GOOGLE_PAY_AFTER_SERVER_FAIL:Ljava/lang/String; = "g_pay_after_server_fail"

.field public static final GOOGLE_PAY_AFTER_SERVER_SUCCESS:Ljava/lang/String; = "g_pay_after_server_success"

.field public static final GOOGLE_PAY_BEFORE_SERVER:Ljava/lang/String; = "g_pay_before_server"

.field public static final GOOGLE_PAY_CLICK:Ljava/lang/String; = "g_pay_click"

.field public static final GOOGLE_PAY_ERROR_CALLBACK:Ljava/lang/String; = "g_pay_error_call"

.field public static final GOOGLE_PAY_SUCCESS_CALLBACK:Ljava/lang/String; = "g_pay_success_call"

.field public static final GOOGLE_SUB_CLICK:Ljava/lang/String; = "g_sub_click"

.field public static final HELLO_STAR_HELLO_GIFT:Ljava/lang/String; = "hellostar_hellogift"

.field public static final HELLO_STAR_HELLO_GIFT_SECEND:Ljava/lang/String; = "hellostar_hellogiftsecend"

.field public static final HOME_CLICK:Ljava/lang/String; = "Home_click"

.field public static final HOME_LIVE_CLICK:Ljava/lang/String; = "Home_Live_click"

.field public static final HOME_LIVE_FOLLOWING_CLICK:Ljava/lang/String; = "Home_live_following_click"

.field public static final HOME_LIVE_LATEST_CLICK:Ljava/lang/String; = "Home_live_latest_click"

.field public static final HOME_LIVE_NEAR_BY_CLICK:Ljava/lang/String; = "Home_live_nearby_click"

.field public static final HOME_LIVE_PARTY_CLICK:Ljava/lang/String; = "Home_live_party_click"

.field public static final HOME_LIVE_POPULAR_CLICK:Ljava/lang/String; = "Home_live_popular_click"

.field public static final HOME_LIVE_VOICE_ROOM_CLICK:Ljava/lang/String; = "Home_live_voice_room_click"

.field public static final HOME_OPEN:Ljava/lang/String; = "Home_open"

.field public static final HOME_OVO_CLICK:Ljava/lang/String; = "Home_1v1_click"

.field public static final HOME_VIDEO_CLICK:Ljava/lang/String; = "Home_video_click"

.field public static final IMGREET:Ljava/lang/String; = "imgreet"

.field public static final IMGREET_CLICK:Ljava/lang/String; = "imgreet_click"

.field public static final IM_CHAT_HELLOS_TAR_REPLY_HELLO:Ljava/lang/String; = "imchat_hellostar_replythello"

.field public static final IM_CHAT_HELLOS_TAR_REPLY_THANK:Ljava/lang/String; = "imchat_hellostar_replythank"

.field public static final IM_CLICK:Ljava/lang/String; = "IM_click"

.field public static final IM_FRIEND_ADD_GROUP:Ljava/lang/String; = "IM_friends_addgroup_click"

.field public static final IM_FRIEND_CLICK:Ljava/lang/String; = "IM_friends_click"

.field public static final IM_OPEN:Ljava/lang/String; = "IM_open"

.field public static final IM_REQUEST_CLICK:Ljava/lang/String; = "im_request_click"

.field public static final IM_TOP_CLICK:Ljava/lang/String; = "IM_top_click"

.field public static final INVIT_CONNECTION:Ljava/lang/String; = "invit_connection"

.field public static final INVIT_CONNECTION_BACK_CLICK:Ljava/lang/String; = "invit_connection_back_click"

.field public static final INVIT_CONNECTION_INVITE_CLICK:Ljava/lang/String; = "invit_connection_invite_click"

.field public static final ITEM_ID:Ljava/lang/String; = "item_id"

.field public static final ITEM_NAME:Ljava/lang/String; = "item_name"

.field public static final JPUSH_NOTIFICATION_CLICK:Ljava/lang/String; = "JPush_notification_click"

.field public static final LIVE_HOME_DISCOVERY:Ljava/lang/String; = "Home_live_Explore_click"

.field public static final LIVE_IM_FLOAT_CHAT_CLICK:Ljava/lang/String; = "live_im_float_chat_click"

.field public static final LIVE_IM_FLOAT_CONVERSATION_CLICK:Ljava/lang/String; = "live_im_float_conversation_click"

.field public static final LIVE_IM_FLOAT_SYSTEM_CONVERSATION_CLICK:Ljava/lang/String; = "live_im_float_system_conversation_click"

.field public static final LIVE_TYPE:Ljava/lang/String; = "live_type"

.field public static final LOGOUT_CLICK:Ljava/lang/String; = "log_out_click"

.field public static final LOOK_ADS_CLICK:Ljava/lang/String; = "look_ads_click"

.field public static final LOOK_ADS_FAILED:Ljava/lang/String; = "look_ads_failed"

.field public static final LOOK_ADS_LOAD_FAILED:Ljava/lang/String; = "look_ads_load_failed"

.field public static final LOOK_ADS_SKIPPED:Ljava/lang/String; = "look_ads_skipped"

.field public static final LOOK_ADS_SUCC:Ljava/lang/String; = "look_ads_succ"

.field public static final NOTICE_LIST:Ljava/lang/String; = "notice_list"

.field public static final NOTICE_LIST_CLICK:Ljava/lang/String; = "notice_list_click"

.field public static final NOTICE_LIST_CLOSE_CLICK:Ljava/lang/String; = "notice_list_close_click"

.field public static final NOTICE_LIST_RESULT:Ljava/lang/String; = "notice_list_result"

.field public static final NOTICE_PAGE:Ljava/lang/String; = "notice_page"

.field public static final NOTICE_PAGE_CLOSE_CHICK:Ljava/lang/String; = "notice_page_close_chick"

.field public static final NOTICE_PAGE_OPEN_CLICK:Ljava/lang/String; = "notice_page_open_click"

.field public static final NOTICE_PAGE_RESULT:Ljava/lang/String; = "notice_page_result"

.field public static final OVO_MATCH:Ljava/lang/String; = "ovo_match"

.field public static final OVO_MATCHING_BEAUTY_CHICK:Ljava/lang/String; = "ovo_matching_beauty_click"

.field public static final OVO_MATCHING_BEAUTY_FEMALE_CHICK:Ljava/lang/String; = "ovo_matching_beauty_Female_click"

.field public static final OVO_MATCHING_BEAUTY_MALE_CHICK:Ljava/lang/String; = "ovo_matching_beauty_male_click"

.field public static final OVO_MATCH_FEMALE:Ljava/lang/String; = "ovo_match_Female"

.field public static final OVO_MATCH_MALE:Ljava/lang/String; = "ovo_match_male"

.field public static final OVO_MATCH_SUCCESSFULLY:Ljava/lang/String; = "ovo_match_successfully"

.field public static final OVO_MATCH_SUCCESSFULLY_FEMALE:Ljava/lang/String; = "ovo_match_successfully_Female"

.field public static final OVO_MATCH_SUCCESSFULLY_MALE:Ljava/lang/String; = "ovo_match_successfully_male"

.field public static final OVO_PREPARE_BEAUTY_CLICK:Ljava/lang/String; = "ovo_Prepare_beauty_click"

.field public static final OVO_PREPARE_BEAUTY_FEMALE_CLICK:Ljava/lang/String; = "ovo_Prepare_beauty_Female_click"

.field public static final OVO_PREPARE_BEAUTY_MALE_CLICK:Ljava/lang/String; = "ovo_Prepare_beauty_male_click"

.field public static final OVO_PREPARE_GENDER_CHICK:Ljava/lang/String; = "ovo_Prepare_gender_click"

.field public static final OVO_PREPARE_GENDER_FEMALE_CHICK:Ljava/lang/String; = "ovo_Prepare_gender_Female_click"

.field public static final OVO_PREPARE_GENDER_MALE_CHICK:Ljava/lang/String; = "ovo_Prepare_gender_male_click"

.field public static final OVO_PREPARE_RECORD_CHICK:Ljava/lang/String; = "ovo_Prepare_Record_click"

.field public static final OVO_PREPARE_RECORD_FEMALE_CHICK:Ljava/lang/String; = "ovo_Prepare_Record_Female_click"

.field public static final OVO_PREPARE_RECORD_MALE_CHICK:Ljava/lang/String; = "ovo_Prepare_Record_male_click"

.field public static final OVO_PREPARE_SLIDE_CHICK:Ljava/lang/String; = "ovo_Prepare_slide_click"

.field public static final OVO_PREPARE_SLIDE_FEMALE_CHICK:Ljava/lang/String; = "ovo_Prepare_slide_Female_click"

.field public static final OVO_PREPARE_SLIDE_MALE_CHICK:Ljava/lang/String; = "ovo_Prepare_slide_male_click"

.field public static final PENDANT_BEAUTY_CLICKED:Ljava/lang/String; = "Beautify_Beauty_click"

.field public static final PENDANT_DIALOG_CLICKED:Ljava/lang/String; = "Beautifye_click"

.field public static final PENDANT_FILTER_CLICKED:Ljava/lang/String; = "Beautify_filter_click"

.field public static final PENDANT_SPECIAL_EFFECT_CLICKED:Ljava/lang/String; = "Beautify_Special_effects_click"

.field public static final PLANET_CLICK:Ljava/lang/String; = "planet_click"

.field public static final PLANET_GENDER_CLICK:Ljava/lang/String; = "planet_gender_click"

.field public static final PLANET_LIST:Ljava/lang/String; = "planet_list"

.field public static final PLANET_LIST_CLICK:Ljava/lang/String; = "planet_list_click"

.field public static final PLANET_LIST_REPLYMESSAGE:Ljava/lang/String; = "planet_list_Replymessage"

.field public static final PLANET_LIST_SENDMESSAGE:Ljava/lang/String; = "planet_list_sendmessage"

.field public static final PLANET_SURPRISE_CLICK:Ljava/lang/String; = "planet_surprise_click"

.field public static final PLANET_SURPRISE_REPLYMESSAGE:Ljava/lang/String; = "planet_surprise_Replymessage"

.field public static final PLANET_SURPRISE_SENDMESSAGE:Ljava/lang/String; = "planet_surprise_sendmessage"

.field public static final PRIVATE_LIVE_INVITE_BY_FCM:Ljava/lang/String; = "PRIVATE_LIVE_INVITE_BY_FCM"

.field public static final PRIVATE_LIVE_INVITE_BY_JIGUANG:Ljava/lang/String; = "private_live_invite_by_jiguang"

.field public static final PRIVATE_LIVE_INVITE_BY_TIM:Ljava/lang/String; = "private_live_invite_by_tim"

.field public static final PRIVATE_LIVE_INVITE_CLICK_BY_FCM:Ljava/lang/String; = "private_live_invite_click_by_FCM"

.field public static final PRIVATE_LIVE_INVITE_CLICK_BY_JIGUANG:Ljava/lang/String; = "private_live_invite_click_by_jiguang"

.field public static final PRIVATE_LIVE_INVITE_CLICK_BY_TIM:Ljava/lang/String; = "private_live_invite_click_by_tim"

.field public static final RANK_LIST_CLICK:Ljava/lang/String; = "Home_live_Trophy_click"

.field public static final REPLY_IMGREET:Ljava/lang/String; = "Reply_imgreet"

.field public static final REPLY_SAYHIIM:Ljava/lang/String; = "Reply_sayhiim"

.field public static final REVIEW_GOOGLE_BOX:Ljava/lang/String; = "Google_commentbox"

.field public static final REVIEW_GOOGLE_BOX_SHOWED:Ljava/lang/String; = "Google_commentbox_showed_success"

.field public static final REVIEW_UI_BOX:Ljava/lang/String; = "UI_commentbox"

.field public static final REVIEW_UI_BOX_OPINION:Ljava/lang/String; = "UI_commentbox_opinion"

.field public static final REVIEW_UI_BOX_PRAISE:Ljava/lang/String; = "UI_commentbox_Praise"

.field public static final SAYHIIM_CLICK:Ljava/lang/String; = "sayhiim_click"

.field public static final SAYHI_CLICK:Ljava/lang/String; = "sayhi_click"

.field public static final SAYHI_ONEPEOPLE:Ljava/lang/String; = "sayhi_onepeople"

.field public static final SEND_GIFT_CLICK:Ljava/lang/String; = "send_gift_click"

.field public static final SEND_GIFT_RESULT:Ljava/lang/String; = "send_gift_result"

.field public static final SEND_MESSAGE:Ljava/lang/String; = "send_message"

.field public static final SEND_MESSAGE_PORT_UES:Ljava/lang/String; = "send_message_port_ues"

.field public static final SETTINGPAGE_CLICK:Ljava/lang/String; = "settingpage_click"

.field public static final SHAREPAGE_TIMES:Ljava/lang/String; = "sharepage_times"

.field public static final SIGN_UP:Ljava/lang/String; = "sign_up"

.field public static final SPEECH_TO_TEXT_CLICK:Ljava/lang/String; = "voice_to_text_btn_click"

.field public static final SPEECH_TO_TEXT_ERROR:Ljava/lang/String; = "voice_to_text_error"

.field public static final SPEECH_TO_TEXT_RESULT:Ljava/lang/String; = "voice_to_text_result"

.field public static final SUCCESSFULLY_BEAUTY_CHICK:Ljava/lang/String; = "ovo_match successfully_beauty_click"

.field public static final SUCCESSFULLY_BEAUTY_FEMALE_CHICK:Ljava/lang/String; = "ovo_match ovo_match successfully_beauty_Female_click"

.field public static final SUCCESSFULLY_BEAUTY_MALE_CHICK:Ljava/lang/String; = "ovo_match ovo_match successfully_beauty_male_click"

.field public static final SYSTEM_CONNECTION_POPUP_AGREE_CLICK:Ljava/lang/String; = "android_system_connection_popup_agree_click"

.field public static final SYSTEM_CONNECTION_POPUP_CANCEL_CLICK:Ljava/lang/String; = "android_system_connection_popup_cancel_click"

.field public static final SYSTEM_CONVERSATION_CLICK:Ljava/lang/String; = "system_conversation_click"

.field private static final TAG:Ljava/lang/String; = "EventTrackingUtils"

.field public static final THIRD_PUSH_RECEIVE_MESSAGE_CLICKED:Ljava/lang/String; = "third_push_online_message_clicked"

.field public static final THIRD_PUSH_RECEIVE_ONLINE_MESSAGE:Ljava/lang/String; = "third_push_online_message_received"

.field public static final UGC_1V1:Ljava/lang/String; = "friends_People_ovo"

.field public static final UGC_CLICK:Ljava/lang/String; = "friends_click"

.field public static final UGC_DATING_AUDIO_CLICK:Ljava/lang/String; = "friends_Dating_voicecall"

.field public static final UGC_DATING_CLICK:Ljava/lang/String; = "friends_Dating_click"

.field public static final UGC_DATING_VIDEO_CLICK:Ljava/lang/String; = "friends_Dating_videocall"

.field public static final UGC_FOCUS_TAB_CLICK:Ljava/lang/String; = "friends_following_click"

.field public static final UGC_HOT_SEARCH_CLICK:Ljava/lang/String; = "friends_popsearch_click"

.field public static final UGC_HOT_TAB_CLICK:Ljava/lang/String; = "friends_hot_click"

.field public static final UGC_LATEST_TAB_CLICK:Ljava/lang/String; = "friends_latest_click"

.field public static final UGC_MEET_ME_CLICK:Ljava/lang/String; = "friends_meetme_click"

.field public static final UGC_MEET_ME_SEARCH_CLICK:Ljava/lang/String; = "friends_meetme_search_click"

.field public static final UGC_MEET_ME_SEARCH_RESULT_CLICK:Ljava/lang/String; = "friends_meetme_search_result_click"

.field public static final UGC_NEAR_BY_CLICK:Ljava/lang/String; = "friends_People_nearby_click"

.field public static final UGC_NEAR_BY_PEOPLE_CLICK:Ljava/lang/String; = "friends_People_nearby_people_click"

.field public static final UGC_NEAR_BY_TAB_CLICK:Ljava/lang/String; = "friends_neraby_click"

.field public static final UGC_SEARCH_CLICK:Ljava/lang/String; = "friends_searchbar_click"

.field public static final WATCH_TIME:Ljava/lang/String; = "watch_time"

.field private static sEventTrackingUtils:Lcom/guochao/faceshow/aaspring/utils/EventTrackingUtils;


# instance fields
.field private mListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/guochao/faceshow/aaspring/utils/EventTrackingUtils$OnEventTrackListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/guochao/faceshow/aaspring/utils/EventTrackingUtils;
    .locals 2

    .line 1
    sget-object v0, Lcom/guochao/faceshow/aaspring/utils/EventTrackingUtils;->sEventTrackingUtils:Lcom/guochao/faceshow/aaspring/utils/EventTrackingUtils;

    if-nez v0, :cond_1

    .line 2
    const-class v0, Lcom/guochao/faceshow/aaspring/utils/EventTrackingUtils;

    monitor-enter v0

    .line 3
    :try_start_0
    sget-object v1, Lcom/guochao/faceshow/aaspring/utils/EventTrackingUtils;->sEventTrackingUtils:Lcom/guochao/faceshow/aaspring/utils/EventTrackingUtils;

    if-nez v1, :cond_0

    .line 4
    new-instance v1, Lcom/guochao/faceshow/aaspring/utils/EventTrackingUtils;

    invoke-direct {v1}, Lcom/guochao/faceshow/aaspring/utils/EventTrackingUtils;-><init>()V

    sput-object v1, Lcom/guochao/faceshow/aaspring/utils/EventTrackingUtils;->sEventTrackingUtils:Lcom/guochao/faceshow/aaspring/utils/EventTrackingUtils;

    .line 5
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 6
    :cond_1
    :goto_0
    sget-object v0, Lcom/guochao/faceshow/aaspring/utils/EventTrackingUtils;->sEventTrackingUtils:Lcom/guochao/faceshow/aaspring/utils/EventTrackingUtils;

    return-object v0
.end method


# virtual methods
.method public addListener(Lcom/guochao/faceshow/aaspring/utils/EventTrackingUtils$OnEventTrackListener;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/utils/EventTrackingUtils;->mListeners:Ljava/util/List;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/utils/EventTrackingUtils;->mListeners:Ljava/util/List;

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/utils/EventTrackingUtils;->mListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public removeListener(Lcom/guochao/faceshow/aaspring/utils/EventTrackingUtils$OnEventTrackListener;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/utils/EventTrackingUtils;->mListeners:Ljava/util/List;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public track(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const/4 v0, 0x0

    .line 4
    invoke-virtual {p0, p1, v0}, Lcom/guochao/faceshow/aaspring/utils/EventTrackingUtils;->track(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public track(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/utils/EventTrackingUtils;->mListeners:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/guochao/faceshow/aaspring/utils/EventTrackingUtils$OnEventTrackListener;

    .line 3
    invoke-interface {v1, p1, p2}, Lcom/guochao/faceshow/aaspring/utils/EventTrackingUtils$OnEventTrackListener;->onTrackEvent(Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_0

    :cond_0
    return-void
.end method
