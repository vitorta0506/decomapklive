package com.meizu.cloud.pushsdk.constants;
/* loaded from: classes4.dex */
public abstract class PushConstants {
    public static final String BASIC_PUSH_STATUS_CODE = "code";
    public static final String BASIC_PUSH_STATUS_MESSAGE = "message";
    public static final int BROADCAST_MESSAGE_ARRIVE = 2100;
    public static final String C2DM_INTENT = "com.meizu.c2dm.intent.RECEIVE";
    public static final String CLICK_TYPE = "clickType";
    public static final int CLICK_TYPE_ACTIVITY = 1;
    public static final int CLICK_TYPE_LAUNCHER_ACTIVITY = 0;
    public static final int CLICK_TYPE_SELF_DEFINE_ACTION = 3;
    public static final int CLICK_TYPE_WEB = 2;
    public static final String CONTENT = "content";
    public static final int DELAY_NOTIFICATION = 2202;
    public static final String DEVICE_ID = "device_id";
    public static final int DOWN_LOAD_LARGE_ICON_ERROR = 2300;
    public static final int DOWN_LOAD_LARGE_ICON_SUCCESS = 2301;
    public static final int EXPIRE_NOTIFICATION = 2200;
    public static final String EXTRA = "extra";
    public static final String EXTRA_APPLICATION_PENDING_INTENT = "app";
    public static final String EXTRA_APP_IS_UNREGISTER_SUCCESS = "extra_app_is_unregister_success";
    public static final String EXTRA_APP_PUSH_BRIGHT_NOTIFICATION_MESSAGE = "extra_app_push_bright_notification_message";
    public static final String EXTRA_APP_PUSH_ID = "registration_id";
    public static final String EXTRA_APP_PUSH_MESSAGE = "message";
    public static final String EXTRA_APP_PUSH_PREFERENCE_KEY = "push_preference_key";
    public static final String EXTRA_APP_PUSH_PREFERENCE_NAME = "push_preference";
    public static final String EXTRA_APP_PUSH_PREFERENCE_VALUE = "push_preference_value";
    public static final String EXTRA_APP_PUSH_PREFERENCE_VALUE_TYPE = "push_preference_value_type";
    public static final int EXTRA_APP_PUSH_PREFERENCE_VALUE_TYPE_BOOLEAN = 2;
    public static final int EXTRA_APP_PUSH_PREFERENCE_VALUE_TYPE_INT = 1;
    public static final int EXTRA_APP_PUSH_PREFERENCE_VALUE_TYPE_STRING = 0;
    public static final String EXTRA_APP_PUSH_REGISTER_STATUS = "extra_app_push_register_status";
    public static final String EXTRA_APP_PUSH_RESPONSE_NOTIFICATION_MESSAGE = "extra_app_push_response_notification_message";
    public static final String EXTRA_APP_PUSH_SCHEDULE_NOTIFICATION_MESSAGE = "extra_app_push_schedule_notification_message";
    public static final String EXTRA_APP_PUSH_SEQ_ID = "extra_app_push_seq_Id";
    public static final String EXTRA_APP_PUSH_SERVICE_DEFAULT_PACKAGE_NAME = "extra_app_push_service_default_package_name";
    public static final String EXTRA_APP_PUSH_SUBALIAS_STATUS = "extra_app_push_sub_alias_status";
    public static final String EXTRA_APP_PUSH_SUBTAGS_STATUS = "extra_app_push_sub_tags_status";
    public static final String EXTRA_APP_PUSH_SWITCH_SETTING_PACKAGE_NAME = "extra_app_push_switch_package_name";
    public static final String EXTRA_APP_PUSH_SWITCH_SETTING_STATUS = "extra_app_push_switch_setting_status";
    public static final String EXTRA_APP_PUSH_SWITCH_SETTING_TYPE = "extra_app_push_switch_setting_type";
    public static final String EXTRA_APP_PUSH_SWITCH_STATUS = "extra_app_push_switch_status";
    public static final String EXTRA_APP_PUSH_TASK_ID = "extra_app_push_task_Id";
    public static final String EXTRA_APP_PUSH_TASK_TIMES_TAMP = "extra_app_push_task_timestamp";
    public static final String EXTRA_APP_PUSH_UNREGISTER_STATUS = "extra_app_push_un_register_status";
    public static final String EXTRA_FLYME_GREEN_NOTIFICATION_SETTING = "android.flymeNotificationSetting";
    public static final String EXTRA_GET_NOTIFICATION_PACKAGE_NAME = "extra_notification_package_name";
    public static final String EXTRA_ORIGINAL_NOTIFICATION_PACKAGE_NAME = "android.originalPackageName";
    public static final String EXTRA_PUSH_MESSAGE = "message";
    public static final String EXTRA_PUSH_TRACKER_JSON_DATA = "extra_push_tracker";
    public static final String EXTRA_REGISTRATION_ERROR = "registration_error";
    public static final String EXTRA_REGISTRATION_ID = "registration_id";
    public static final String EXTRA_SENDER = "sender";
    public static final String EXTRA_SUBSTITUTE_APP_NAME = "android.substName";
    public static final String EXTRA_UNREGISTERED = "unregistered";
    public static final String GET_PUBLIC_KEY = "https://api-push.meizu.com/garcia/api/server/getPublicKey";
    public static final String INTENT_ACTIVITY_NAME = "activity";
    public static final String IS_DISCARD = "isDiscard";
    public static final String KEY_PUSH_ID = "pushId";
    public static final String KEY_PUSH_ID_EXPIRE_TIME = "pushId_expire_time";
    public static final String MZ_MESSAGE_VALUE = "messageValue";
    public static final String MZ_PUSH_AD_INSTALL_PACKAGE = "mz_push_ad_install_package";
    public static final String MZ_PUSH_AD_PACKAGE = "mz_push_ad_package";
    public static final String MZ_PUSH_CONTROL_MESSAGE = "mz_push_control_message";
    public static final String MZ_PUSH_DELAYED_REPORT_MILLIS = "mz_push_delayed_report_millis";
    public static final String MZ_PUSH_MANAGER_SERVICE_ACTION = "com.meizu.cloud.pushservice.action.PUSH_MANAGER_SERVICE";
    public static final String MZ_PUSH_MESSAGE_METHOD = "method";
    public static final String MZ_PUSH_MESSAGE_METHOD_ACTION_BRIGHT_NOTIFICATION_MESSAGE = "bright_notification_message";
    public static final String MZ_PUSH_MESSAGE_METHOD_ACTION_MESSAGE = "message";
    public static final String MZ_PUSH_MESSAGE_METHOD_ACTION_NOTIFICATION_ARRIVED = "notification_arrived";
    public static final String MZ_PUSH_MESSAGE_METHOD_ACTION_NOTIFICATION_CLOSE = "notification_close";
    public static final String MZ_PUSH_MESSAGE_METHOD_ACTION_NOTIFICATION_DELETE = "notification_delete";
    public static final String MZ_PUSH_MESSAGE_METHOD_ACTION_NOTIFICATION_SHOW = "notification_show";
    public static final String MZ_PUSH_MESSAGE_METHOD_ACTION_NOTIFICATION_SHOW_V3 = "notification_show_v3";
    public static final String MZ_PUSH_MESSAGE_METHOD_ACTION_NOTIFICATION_STATE = "notification_state";
    public static final String MZ_PUSH_MESSAGE_METHOD_ACTION_PRIVATE = "private";
    public static final String MZ_PUSH_MESSAGE_METHOD_ACTION_PUSH_STATUS = "push_status";
    public static final String MZ_PUSH_MESSAGE_METHOD_ACTION_REGISTER_STATUS = "register_status";
    public static final String MZ_PUSH_MESSAGE_METHOD_ACTION_RESPONSE_NOTIFICATION_MESSAGE = "response_notification_message";
    public static final String MZ_PUSH_MESSAGE_METHOD_ACTION_SCHEDULE_NOTIFICATION = "schedule_notification";
    public static final String MZ_PUSH_MESSAGE_METHOD_ACTION_SUBALIAS_STATUS = "sub_alias_status";
    public static final String MZ_PUSH_MESSAGE_METHOD_ACTION_SUBTAGS_STATUS = "sub_tags_status";
    public static final String MZ_PUSH_MESSAGE_METHOD_ACTION_UNREGISTER_STATUS = "un_register_status";
    public static final String MZ_PUSH_MESSAGE_METHOD_ACTION_UPLOAD_LOG_FILE = "upload_log_file";
    public static final String MZ_PUSH_MESSAGE_STATISTICS_IMEI_KEY = "statistics_imei_key";
    public static final String MZ_PUSH_NOTIFICATION_SMALL_ICON = "mz_push_notification_small_icon";
    public static final String MZ_PUSH_NOTIFICATION_STATE_MESSAGE = "notification_state_message";
    public static final String MZ_PUSH_ON_GET_NOTIFICATION_MESSAGE = "com.meizu.flyme.push.intent.GET_NOTIFICATION_MESSAGE";
    public static final String MZ_PUSH_ON_MESSAGE_ACTION = "com.meizu.flyme.push.intent.MESSAGE";
    public static final String MZ_PUSH_ON_MESSAGE_CHANGE_PREFERENCE = "com.meizu.flyme.push.intent.CHANGE_PREFERENCE";
    public static final String MZ_PUSH_ON_MESSAGE_SWITCH_SETTING = "com.meizu.flyme.push.intent.MESSAGE_SWITCH";
    public static final String MZ_PUSH_ON_REGISTER_ACTION = "com.meizu.flyme.push.intent.REGISTER.FEEDBACK";
    public static final String MZ_PUSH_ON_START_PUSH_REGISTER = "com.meizu.flyme.push.intent.REGISTER";
    public static final String MZ_PUSH_ON_STOP_PUSH_REGISTER = "com.meizu.flyme.push.intent.UNREGISTER";
    public static final String MZ_PUSH_ON_UNREGISTER_ACTION = "com.meizu.flyme.push.intent.UNREGISTER.FEEDBACK";
    public static final String MZ_PUSH_PLATFORM_EXTRA = "platform_extra";
    public static final String MZ_PUSH_PRIVATE_MESSAGE = "pushMessage";
    public static final String MZ_PUSH_RECEIVER_EXIST = "mz_push_erceiver_exist";
    public static final String MZ_PUSH_SERVICE_ACTION = "com.meizu.cloud.pushservice.action.PUSH_SERVICE";
    public static final String MZ_PUSH_SERVICE_NAME = "com.meizu.cloud.pushsdk.pushservice.MzPushService";
    public static final String MZ_PUSH_SYSTEM_RECEIVER_ACTION = "com.meizu.flyme.push.intent.PUSH_SYSTEM";
    public static final String MZ_PUSH_TRACKER_SERVICE_ACTION = "com.meizu.cloud.pushservice.action.PUSH_TRACKER_SERVICE";
    public static final String MZ_PUSH_WHITE_LIST = "mz_push_white_list";
    public static final String NOTIFICATION_EXTRA_DEVICE_ID = "notification_extra_device_id";
    public static final String NOTIFICATION_EXTRA_PUSH_TIMESTAMP = "notification_extra_push_timestamp";
    public static final String NOTIFICATION_EXTRA_SEQ_ID = "notification_extra_seq_id";
    public static final String NOTIFICATION_EXTRA_SHOW_PACKAGE_NAME = "notification_extra_show_package_name";
    public static final String NOTIFICATION_EXTRA_TASK_ID = "notification_extra_task_id";
    public static final String NOTIFICATION_MESSAGE = "notification_message";
    public static final int NOTIFICATION_SERVICE_SEND_MESSAGE = 2003;
    public static final int NOTIFICATION_SERVICE_SEND_MESSAGE_BROADCAST = 2005;
    public static final int NOTIFICATION_SERVICE_SEND_MESSAGE_ERROR = 2004;
    public static final String NOTIFY_TYPE = "notify_type";
    public static final int ON_TIME_NOTIFICATION = 2201;
    public static final String PACKAGE_NAME = "package_name";
    public static final String PARAMS = "parameters";
    public static final int PUSHSERVICE_INFO_SEND_MESSAGE_BY_BROADCAST = 1001;
    public static final int PUSHSERVICE_INFO_SEND_MESSAGE_BY_NOTIFICATION_SERVICE = 1000;
    public static final int PUSHSERVICE_INFO_SEND_MESSAGE_BY_NOTIFICATION_SERVICE_ERROR = 1002;
    public static final String PUSH_ALIAS = "push_alias";
    public static final String PUSH_FLYME_3_CHANGE_VERSION_START = "3";
    public static final String PUSH_FLYME_4_CHANGE_VERSION = "4.5.7";
    public static final String PUSH_ID_PREFERENCE_NAME = "com.meizu.flyme.push";
    public static final String PUSH_NOTIFICATION_CREATE_TIMES_TAMP = "tt";
    public static final String PUSH_PACKAGE_NAME = "com.meizu.cloud";
    public static final String PUSH_SERVICE_ACTION = "com.meizu.pushservice.action.START";
    public static final String PUSH_SWITCH_STATUS_IS_NOTIFICATION_SWITCH = "is_switch_notification";
    public static final String PUSH_SWITCH_STATUS_IS_THROUGH_SWITCH = "is_switch_through";
    public static final String PUSH_TIMESTAMP = "push_timestamp";
    public static final String PUSH_TYPE = "push_type";
    public static final String PUSH_TYPE_NOTIFY = "0";
    public static final String PUSH_TYPE_THROUGH_MESSAGE = "1";
    public static final String PUSH_TYPE_UPLOAD_LOG = "2";
    public static final String PUSH_TYPE_WITHDRAW_NOTIFICATION = "4";
    public static final String REGISTER_PACKAGE_NAME = "sender";
    public static final String REGISTER_STATUS_EXPIRE_TIME = "expire_time";
    public static final String REGISTER_STATUS_PUSH_ID = "push_id";
    public static final String REGISTRATION_CALLBACK_INTENT = "com.meizu.c2dm.intent.REGISTRATION";
    public static final String REQUEST_REGISTER_INTENT = "com.meizu.c2dm.intent.REGISTER";
    public static final String REQUEST_UNREGISTER_INTENT = "com.meizu.c2dm.intent.UNREGISTER";
    public static final String SEQ_ID = "seq_id";
    public static final String SUB_ALIAS_STATUS_NAME = "alias";
    public static final String SUB_TAGS_STATUS_ID = "tag_id";
    public static final String SUB_TAGS_STATUS_LIST = "tag_list";
    public static final String SUB_TAGS_STATUS_NAME = "tag_name";
    public static final String SWITCH_NOTIFICATION_MESSAGE = "switch_notification_message";
    public static final String SWITCH_THROUGH_MESSAGE = "switch_through_message";
    public static final String TASK_ID = "task_id";
    public static final String THROUGH_MESSAGE = "through_message";
    public static final String TITLE = "title";
    public static final String UNREGISTER_PACKAGE_NAME = "sender";
    public static final String UNREGISTER_STATUS_IS_SUCCESS = "is_unregister_success";
    public static final String UPLOAD_DATA_PACKAGE_NAME = "upload_data_package_name";
    public static final String URI_PACKAGE_NAME = "pk";
    public static final String URL_ABROAD_API_SERVER = "https://api-push.in.meizu.com";
    public static final String URL_ABROAD_STATICS_DOMAIN = "push-statics.in.meizu.com";
    public static final String URL_API_SERVER = "https://api-push.meizu.com";
    public static final String URL_DOWNLOAD_PUBLIC_KEY = "https://norma-external-collect.meizu.com/android/exchange/getpublickey.do";
    public static final String URL_STATICS_DOMAIN = "push-statics.meizu.com";
    public static final String URL_UPLOAD_DATA = "https://norma-external-collect.meizu.com/push/android/external/add.do";
    public static final String WEARABLE_PUSH_PACKAGE_NAME = "com.meizu.wearable.cloud";
    public static final String WEB_URL = "url";
    public static final int WORK_RECEIVER_EVENT_CORE_ERROR = 3000;
}
