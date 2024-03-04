package com.xiaomi.push.service;
/* loaded from: classes5.dex */
public abstract class e0 {
    public static String A = "ext_clicked_button";
    public static String B = "ext_notify_type";
    public static String C = "ext_session";
    public static String D = "sig";
    public static String E = "ext_notify_title";
    public static String F = "ext_notify_description";
    public static String G = "ext_messenger";
    public static String H = "title";
    public static String I = "description";
    public static String J = "notifyId";

    /* renamed from: a  reason: collision with root package name */
    public static String f37212a = "1";

    /* renamed from: b  reason: collision with root package name */
    public static String f37213b = "2";

    /* renamed from: c  reason: collision with root package name */
    public static String f37214c = "3";

    /* renamed from: d  reason: collision with root package name */
    public static String f37215d = "com.xiaomi.push.OPEN_CHANNEL";

    /* renamed from: e  reason: collision with root package name */
    public static String f37216e = "com.xiaomi.push.SEND_MESSAGE";

    /* renamed from: f  reason: collision with root package name */
    public static String f37217f = "com.xiaomi.push.SEND_IQ";

    /* renamed from: g  reason: collision with root package name */
    public static String f37218g = "com.xiaomi.push.BATCH_SEND_MESSAGE";

    /* renamed from: h  reason: collision with root package name */
    public static String f37219h = "com.xiaomi.push.SEND_PRES";

    /* renamed from: i  reason: collision with root package name */
    public static String f37220i = "com.xiaomi.push.CLOSE_CHANNEL";

    /* renamed from: j  reason: collision with root package name */
    public static String f37221j = "com.xiaomi.push.FORCE_RECONN";

    /* renamed from: k  reason: collision with root package name */
    public static String f37222k = "com.xiaomi.push.RESET_CONN";

    /* renamed from: l  reason: collision with root package name */
    public static String f37223l = "com.xiaomi.push.UPDATE_CHANNEL_INFO";

    /* renamed from: m  reason: collision with root package name */
    public static String f37224m = "com.xiaomi.push.HANDLE_FCM_MSG";

    /* renamed from: n  reason: collision with root package name */
    public static String f37225n = "com.xiaomi.push.PING_TIMER";

    /* renamed from: o  reason: collision with root package name */
    public static String f37226o = "ext_user_id";

    /* renamed from: p  reason: collision with root package name */
    public static String f37227p = "ext_user_server";

    /* renamed from: q  reason: collision with root package name */
    public static String f37228q = "ext_user_res";

    /* renamed from: r  reason: collision with root package name */
    public static String f37229r = "ext_chid";

    /* renamed from: s  reason: collision with root package name */
    public static String f37230s = "ext_token";

    /* renamed from: t  reason: collision with root package name */
    public static String f37231t = "ext_auth_method";

    /* renamed from: u  reason: collision with root package name */
    public static String f37232u = "ext_security";

    /* renamed from: v  reason: collision with root package name */
    public static String f37233v = "ext_kick";

    /* renamed from: w  reason: collision with root package name */
    public static String f37234w = "ext_client_attr";

    /* renamed from: x  reason: collision with root package name */
    public static String f37235x = "ext_cloud_attr";

    /* renamed from: y  reason: collision with root package name */
    public static String f37236y = "ext_pkg_name";

    /* renamed from: z  reason: collision with root package name */
    public static String f37237z = "ext_notify_id";

    public static String a(int i9) {
        switch (i9) {
            case 0:
                return "ERROR_OK";
            case 1:
                return "ERROR_SERVICE_NOT_INSTALLED";
            case 2:
                return "ERROR_NETWORK_NOT_AVAILABLE";
            case 3:
                return "ERROR_NETWORK_FAILED";
            case 4:
                return "ERROR_ACCESS_DENIED";
            case 5:
                return "ERROR_AUTH_FAILED";
            case 6:
                return "ERROR_MULTI_LOGIN";
            case 7:
                return "ERROR_SERVER_ERROR";
            case 8:
                return "ERROR_RECEIVE_TIMEOUT";
            case 9:
                return "ERROR_READ_ERROR";
            case 10:
                return "ERROR_SEND_ERROR";
            case 11:
                return "ERROR_RESET";
            case 12:
                return "ERROR_NO_CLIENT";
            case 13:
                return "ERROR_SERVER_STREAM";
            case 14:
                return "ERROR_THREAD_BLOCK";
            case 15:
                return "ERROR_SERVICE_DESTROY";
            case 16:
                return "ERROR_SESSION_CHANGED";
            case 17:
                return "ERROR_READ_TIMEOUT";
            case 18:
                return "ERROR_CONNECTIING_TIMEOUT";
            case 19:
                return "ERROR_USER_BLOCKED";
            case 20:
                return "ERROR_REDIRECT";
            case 21:
                return "ERROR_BIND_TIMEOUT";
            case 22:
                return "ERROR_PING_TIMEOUT";
            default:
                return String.valueOf(i9);
        }
    }
}
