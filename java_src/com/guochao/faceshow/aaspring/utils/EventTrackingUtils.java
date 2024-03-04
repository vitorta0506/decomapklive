package com.guochao.faceshow.aaspring.utils;

import android.os.Bundle;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes3.dex */
public class EventTrackingUtils {
    public static final String APPLY_RESULT = "apply_result";
    public static final String APP_OPEN = "app_open_3000";
    public static final String APP_OPEN_KEY = "app_open_3000";
    public static final String BE_24H_GREETED = "24h_be_greeted";
    public static final String BE_24H_GREETED_REPLY = "24h_be_greeted_Reply";
    public static final String CANCEL_CILCK = "cancel_click";
    public static final String CLICK_HELLO_LIST_CALL = "click_hellolist_call";
    public static final String CLICK_HELLO_LIST_HELLO = "click_hellolist_hello";
    public static final String CLICK_HELLO_STAR_HELLO = "click_hellostar_hello";
    public static final String CLICK_HELLO_STAR_THANKS = "click_hellostar_thanks";
    public static final String CLICK_IM_CHAT_LIVE_ROOM = "click_imchat_liveroom";
    public static final String CONNECTION_SELF_POPUP_AGREE_CLICK = "connection_self_popup_agree_click";
    public static final String CONNECTION_SELF_POPUP_CANCEL_CLICK = "connection_self_popup_cancel_click";
    public static final String CONTENT_TYPE = "content_type";
    public static final String CONVERSATION_CLICK = "conversation_click";
    public static final String COUNTRY_ASIA_CLICK = "Areae_country_Continen_Asia_tclick";
    public static final String DISCOVERY_COUNTRY = "Home_live_Explore_country_click";
    public static final String DISCOVERY_LATEST = "Home_live_Explore_latest_click";
    public static final String DISCOVERY_MORE = "Home_live_Explore_morec_lick";
    public static final int EVENT_TRACKING_RESULT_CODE = 178;
    public static final String EXPLORE_CONNECTION_CLICK = "explore_connection_click";
    public static final String FIRST_CHARGE_CLICK = "First_charge_charge_click";
    public static final String FIRST_CHARGE_SUCCESS = "First_charge_success";
    public static final String FRIENDS_CLICK = "friends_click";
    public static final String FRIENDS_OPEN = "friends_open";
    public static final String GOOGLE_COMPLETE_PURCHASE = "a_app_purchase";
    public static final String GOOGLE_CONNECT_ERROR = "g_connect_error";
    public static final String GOOGLE_PAY_AFTER_SERVER_FAIL = "g_pay_after_server_fail";
    public static final String GOOGLE_PAY_AFTER_SERVER_SUCCESS = "g_pay_after_server_success";
    public static final String GOOGLE_PAY_BEFORE_SERVER = "g_pay_before_server";
    public static final String GOOGLE_PAY_CLICK = "g_pay_click";
    public static final String GOOGLE_PAY_ERROR_CALLBACK = "g_pay_error_call";
    public static final String GOOGLE_PAY_SUCCESS_CALLBACK = "g_pay_success_call";
    public static final String GOOGLE_SUB_CLICK = "g_sub_click";
    public static final String HELLO_STAR_HELLO_GIFT = "hellostar_hellogift";
    public static final String HELLO_STAR_HELLO_GIFT_SECEND = "hellostar_hellogiftsecend";
    public static final String HOME_CLICK = "Home_click";
    public static final String HOME_LIVE_CLICK = "Home_Live_click";
    public static final String HOME_LIVE_FOLLOWING_CLICK = "Home_live_following_click";
    public static final String HOME_LIVE_LATEST_CLICK = "Home_live_latest_click";
    public static final String HOME_LIVE_NEAR_BY_CLICK = "Home_live_nearby_click";
    public static final String HOME_LIVE_PARTY_CLICK = "Home_live_party_click";
    public static final String HOME_LIVE_POPULAR_CLICK = "Home_live_popular_click";
    public static final String HOME_LIVE_VOICE_ROOM_CLICK = "Home_live_voice_room_click";
    public static final String HOME_OPEN = "Home_open";
    public static final String HOME_OVO_CLICK = "Home_1v1_click";
    public static final String HOME_VIDEO_CLICK = "Home_video_click";
    public static final String IMGREET = "imgreet";
    public static final String IMGREET_CLICK = "imgreet_click";
    public static final String IM_CHAT_HELLOS_TAR_REPLY_HELLO = "imchat_hellostar_replythello";
    public static final String IM_CHAT_HELLOS_TAR_REPLY_THANK = "imchat_hellostar_replythank";
    public static final String IM_CLICK = "IM_click";
    public static final String IM_FRIEND_ADD_GROUP = "IM_friends_addgroup_click";
    public static final String IM_FRIEND_CLICK = "IM_friends_click";
    public static final String IM_OPEN = "IM_open";
    public static final String IM_REQUEST_CLICK = "im_request_click";
    public static final String IM_TOP_CLICK = "IM_top_click";
    public static final String INVIT_CONNECTION = "invit_connection";
    public static final String INVIT_CONNECTION_BACK_CLICK = "invit_connection_back_click";
    public static final String INVIT_CONNECTION_INVITE_CLICK = "invit_connection_invite_click";
    public static final String ITEM_ID = "item_id";
    public static final String ITEM_NAME = "item_name";
    public static final String JPUSH_NOTIFICATION_CLICK = "JPush_notification_click";
    public static final String LIVE_HOME_DISCOVERY = "Home_live_Explore_click";
    public static final String LIVE_IM_FLOAT_CHAT_CLICK = "live_im_float_chat_click";
    public static final String LIVE_IM_FLOAT_CONVERSATION_CLICK = "live_im_float_conversation_click";
    public static final String LIVE_IM_FLOAT_SYSTEM_CONVERSATION_CLICK = "live_im_float_system_conversation_click";
    public static final String LIVE_TYPE = "live_type";
    public static final String LOGOUT_CLICK = "log_out_click";
    public static final String LOOK_ADS_CLICK = "look_ads_click";
    public static final String LOOK_ADS_FAILED = "look_ads_failed";
    public static final String LOOK_ADS_LOAD_FAILED = "look_ads_load_failed";
    public static final String LOOK_ADS_SKIPPED = "look_ads_skipped";
    public static final String LOOK_ADS_SUCC = "look_ads_succ";
    public static final String NOTICE_LIST = "notice_list";
    public static final String NOTICE_LIST_CLICK = "notice_list_click";
    public static final String NOTICE_LIST_CLOSE_CLICK = "notice_list_close_click";
    public static final String NOTICE_LIST_RESULT = "notice_list_result";
    public static final String NOTICE_PAGE = "notice_page";
    public static final String NOTICE_PAGE_CLOSE_CHICK = "notice_page_close_chick";
    public static final String NOTICE_PAGE_OPEN_CLICK = "notice_page_open_click";
    public static final String NOTICE_PAGE_RESULT = "notice_page_result";
    public static final String OVO_MATCH = "ovo_match";
    public static final String OVO_MATCHING_BEAUTY_CHICK = "ovo_matching_beauty_click";
    public static final String OVO_MATCHING_BEAUTY_FEMALE_CHICK = "ovo_matching_beauty_Female_click";
    public static final String OVO_MATCHING_BEAUTY_MALE_CHICK = "ovo_matching_beauty_male_click";
    public static final String OVO_MATCH_FEMALE = "ovo_match_Female";
    public static final String OVO_MATCH_MALE = "ovo_match_male";
    public static final String OVO_MATCH_SUCCESSFULLY = "ovo_match_successfully";
    public static final String OVO_MATCH_SUCCESSFULLY_FEMALE = "ovo_match_successfully_Female";
    public static final String OVO_MATCH_SUCCESSFULLY_MALE = "ovo_match_successfully_male";
    public static final String OVO_PREPARE_BEAUTY_CLICK = "ovo_Prepare_beauty_click";
    public static final String OVO_PREPARE_BEAUTY_FEMALE_CLICK = "ovo_Prepare_beauty_Female_click";
    public static final String OVO_PREPARE_BEAUTY_MALE_CLICK = "ovo_Prepare_beauty_male_click";
    public static final String OVO_PREPARE_GENDER_CHICK = "ovo_Prepare_gender_click";
    public static final String OVO_PREPARE_GENDER_FEMALE_CHICK = "ovo_Prepare_gender_Female_click";
    public static final String OVO_PREPARE_GENDER_MALE_CHICK = "ovo_Prepare_gender_male_click";
    public static final String OVO_PREPARE_RECORD_CHICK = "ovo_Prepare_Record_click";
    public static final String OVO_PREPARE_RECORD_FEMALE_CHICK = "ovo_Prepare_Record_Female_click";
    public static final String OVO_PREPARE_RECORD_MALE_CHICK = "ovo_Prepare_Record_male_click";
    public static final String OVO_PREPARE_SLIDE_CHICK = "ovo_Prepare_slide_click";
    public static final String OVO_PREPARE_SLIDE_FEMALE_CHICK = "ovo_Prepare_slide_Female_click";
    public static final String OVO_PREPARE_SLIDE_MALE_CHICK = "ovo_Prepare_slide_male_click";
    public static final String PENDANT_BEAUTY_CLICKED = "Beautify_Beauty_click";
    public static final String PENDANT_DIALOG_CLICKED = "Beautifye_click";
    public static final String PENDANT_FILTER_CLICKED = "Beautify_filter_click";
    public static final String PENDANT_SPECIAL_EFFECT_CLICKED = "Beautify_Special_effects_click";
    public static final String PLANET_CLICK = "planet_click";
    public static final String PLANET_GENDER_CLICK = "planet_gender_click";
    public static final String PLANET_LIST = "planet_list";
    public static final String PLANET_LIST_CLICK = "planet_list_click";
    public static final String PLANET_LIST_REPLYMESSAGE = "planet_list_Replymessage";
    public static final String PLANET_LIST_SENDMESSAGE = "planet_list_sendmessage";
    public static final String PLANET_SURPRISE_CLICK = "planet_surprise_click";
    public static final String PLANET_SURPRISE_REPLYMESSAGE = "planet_surprise_Replymessage";
    public static final String PLANET_SURPRISE_SENDMESSAGE = "planet_surprise_sendmessage";
    public static final String PRIVATE_LIVE_INVITE_BY_FCM = "PRIVATE_LIVE_INVITE_BY_FCM";
    public static final String PRIVATE_LIVE_INVITE_BY_JIGUANG = "private_live_invite_by_jiguang";
    public static final String PRIVATE_LIVE_INVITE_BY_TIM = "private_live_invite_by_tim";
    public static final String PRIVATE_LIVE_INVITE_CLICK_BY_FCM = "private_live_invite_click_by_FCM";
    public static final String PRIVATE_LIVE_INVITE_CLICK_BY_JIGUANG = "private_live_invite_click_by_jiguang";
    public static final String PRIVATE_LIVE_INVITE_CLICK_BY_TIM = "private_live_invite_click_by_tim";
    public static final String RANK_LIST_CLICK = "Home_live_Trophy_click";
    public static final String REPLY_IMGREET = "Reply_imgreet";
    public static final String REPLY_SAYHIIM = "Reply_sayhiim";
    public static final String REVIEW_GOOGLE_BOX = "Google_commentbox";
    public static final String REVIEW_GOOGLE_BOX_SHOWED = "Google_commentbox_showed_success";
    public static final String REVIEW_UI_BOX = "UI_commentbox";
    public static final String REVIEW_UI_BOX_OPINION = "UI_commentbox_opinion";
    public static final String REVIEW_UI_BOX_PRAISE = "UI_commentbox_Praise";
    public static final String SAYHIIM_CLICK = "sayhiim_click";
    public static final String SAYHI_CLICK = "sayhi_click";
    public static final String SAYHI_ONEPEOPLE = "sayhi_onepeople";
    public static final String SEND_GIFT_CLICK = "send_gift_click";
    public static final String SEND_GIFT_RESULT = "send_gift_result";
    public static final String SEND_MESSAGE = "send_message";
    public static final String SEND_MESSAGE_PORT_UES = "send_message_port_ues";
    public static final String SETTINGPAGE_CLICK = "settingpage_click";
    public static final String SHAREPAGE_TIMES = "sharepage_times";
    public static final String SIGN_UP = "sign_up";
    public static final String SPEECH_TO_TEXT_CLICK = "voice_to_text_btn_click";
    public static final String SPEECH_TO_TEXT_ERROR = "voice_to_text_error";
    public static final String SPEECH_TO_TEXT_RESULT = "voice_to_text_result";
    public static final String SUCCESSFULLY_BEAUTY_CHICK = "ovo_match successfully_beauty_click";
    public static final String SUCCESSFULLY_BEAUTY_FEMALE_CHICK = "ovo_match ovo_match successfully_beauty_Female_click";
    public static final String SUCCESSFULLY_BEAUTY_MALE_CHICK = "ovo_match ovo_match successfully_beauty_male_click";
    public static final String SYSTEM_CONNECTION_POPUP_AGREE_CLICK = "android_system_connection_popup_agree_click";
    public static final String SYSTEM_CONNECTION_POPUP_CANCEL_CLICK = "android_system_connection_popup_cancel_click";
    public static final String SYSTEM_CONVERSATION_CLICK = "system_conversation_click";
    private static final String TAG = "EventTrackingUtils";
    public static final String THIRD_PUSH_RECEIVE_MESSAGE_CLICKED = "third_push_online_message_clicked";
    public static final String THIRD_PUSH_RECEIVE_ONLINE_MESSAGE = "third_push_online_message_received";
    public static final String UGC_1V1 = "friends_People_ovo";
    public static final String UGC_CLICK = "friends_click";
    public static final String UGC_DATING_AUDIO_CLICK = "friends_Dating_voicecall";
    public static final String UGC_DATING_CLICK = "friends_Dating_click";
    public static final String UGC_DATING_VIDEO_CLICK = "friends_Dating_videocall";
    public static final String UGC_FOCUS_TAB_CLICK = "friends_following_click";
    public static final String UGC_HOT_SEARCH_CLICK = "friends_popsearch_click";
    public static final String UGC_HOT_TAB_CLICK = "friends_hot_click";
    public static final String UGC_LATEST_TAB_CLICK = "friends_latest_click";
    public static final String UGC_MEET_ME_CLICK = "friends_meetme_click";
    public static final String UGC_MEET_ME_SEARCH_CLICK = "friends_meetme_search_click";
    public static final String UGC_MEET_ME_SEARCH_RESULT_CLICK = "friends_meetme_search_result_click";
    public static final String UGC_NEAR_BY_CLICK = "friends_People_nearby_click";
    public static final String UGC_NEAR_BY_PEOPLE_CLICK = "friends_People_nearby_people_click";
    public static final String UGC_NEAR_BY_TAB_CLICK = "friends_neraby_click";
    public static final String UGC_SEARCH_CLICK = "friends_searchbar_click";
    public static final String WATCH_TIME = "watch_time";
    private static EventTrackingUtils sEventTrackingUtils;
    private List<OnEventTrackListener> mListeners;

    /* loaded from: classes3.dex */
    public interface OnEventTrackListener {
        void onTrackEvent(@NonNull String str, @Nullable Bundle bundle);
    }

    public static EventTrackingUtils getInstance() {
        if (sEventTrackingUtils == null) {
            synchronized (EventTrackingUtils.class) {
                if (sEventTrackingUtils == null) {
                    sEventTrackingUtils = new EventTrackingUtils();
                }
            }
        }
        return sEventTrackingUtils;
    }

    public void addListener(OnEventTrackListener onEventTrackListener) {
        if (this.mListeners == null) {
            this.mListeners = new ArrayList();
        }
        this.mListeners.add(onEventTrackListener);
    }

    public void removeListener(OnEventTrackListener onEventTrackListener) {
        List<OnEventTrackListener> list = this.mListeners;
        if (list == null) {
            return;
        }
        list.remove(onEventTrackListener);
    }

    public void track(@NonNull String str, @Nullable Bundle bundle) {
        List<OnEventTrackListener> list = this.mListeners;
        if (list != null) {
            for (OnEventTrackListener onEventTrackListener : list) {
                onEventTrackListener.onTrackEvent(str, bundle);
            }
        }
    }

    public void track(@NonNull String str) {
        track(str, null);
    }
}
