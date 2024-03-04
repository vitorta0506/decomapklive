package cn.jpush.android.helper;

import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.text.TextUtils;
import cn.jpush.android.api.CmdMessage;
import cn.jpush.android.api.CustomMessage;
import cn.jpush.android.api.JPushInterface;
import cn.jpush.android.api.JPushMessage;
import cn.jpush.android.local.JPushConstants;
import cn.jpush.android.service.JPushMessageReceiver;
import com.facebook.share.internal.ShareConstants;
import com.huawei.hms.push.constant.RemoteMessageConst;
import com.tencent.thumbplayer.api.TPPlayerMgr;
import java.util.Locale;
/* loaded from: classes.dex */
public class a {

    /* renamed from: a  reason: collision with root package name */
    private static a f3084a;

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: cn.jpush.android.helper.a$a  reason: collision with other inner class name */
    /* loaded from: classes.dex */
    public class C0046a extends cn.jpush.android.af.e {

        /* renamed from: b  reason: collision with root package name */
        private Context f3086b;

        /* renamed from: c  reason: collision with root package name */
        private JPushMessageReceiver f3087c;

        /* renamed from: d  reason: collision with root package name */
        private Intent f3088d;

        public C0046a(Context context, JPushMessageReceiver jPushMessageReceiver, Intent intent) {
            this.f3086b = context;
            this.f3087c = jPushMessageReceiver;
            this.f3088d = intent;
            this.f2899f = "JMessageReceiverHelper#MessageReceiverRunable";
        }

        @Override // cn.jpush.android.af.e
        public void a() {
            try {
                Intent intent = this.f3088d;
                if (intent != null && this.f3087c != null) {
                    String action = intent.getAction();
                    Logger.d("JMessageReceiverHelper", "do receiver action :" + action);
                    if (action == null) {
                        Logger.w("JMessageReceiverHelper", "unsupport action type");
                        return;
                    } else if (action.equals("cn.jpush.android.intent.RECEIVE_MESSAGE")) {
                        int intExtra = this.f3088d.getIntExtra(RemoteMessageConst.MSGTYPE, -1);
                        JPushMessage jPushMessage = null;
                        if (1 == intExtra || 2 == intExtra) {
                            jPushMessage = cn.jpush.android.ad.c.a().a(this.f3086b, this.f3088d);
                        }
                        Logger.d("JMessageReceiverHelper", "messageType:" + intExtra + ",jPushMessage:" + jPushMessage);
                        if (jPushMessage == null) {
                            Logger.w("JMessageReceiverHelper", "parse tagalias message failed");
                            return;
                        } else if (intExtra == 1) {
                            if (jPushMessage.isTagCheckOperator()) {
                                this.f3087c.onCheckTagOperatorResult(this.f3086b, jPushMessage);
                                return;
                            } else {
                                this.f3087c.onTagOperatorResult(this.f3086b, jPushMessage);
                                return;
                            }
                        } else if (intExtra == 2) {
                            this.f3087c.onAliasOperatorResult(this.f3086b, jPushMessage);
                            return;
                        } else {
                            Logger.w("JMessageReceiverHelper", "unsupport message type");
                            return;
                        }
                    } else if (action.equals("mobile_result")) {
                        this.f3087c.onMobileNumberOperatorResult(this.f3086b, d.a().a(this.f3086b, this.f3088d));
                        return;
                    } else if (action.equals(cn.jpush.android.af.a.f(this.f3086b, "custom_msg"))) {
                        this.f3087c.onMessage(this.f3086b, cn.jpush.android.d.b.a(this.f3088d));
                        return;
                    } else if (action.equals(cn.jpush.android.af.a.f(this.f3086b, "cmd_msg"))) {
                        a.a(this.f3087c, this.f3086b, this.f3088d);
                        return;
                    } else if (action.equals("cn.jpush.android.intent.NOTIFICATION_ARRIVED")) {
                        this.f3087c.onNotifyMessageArrived(this.f3086b, cn.jpush.android.aa.c.b(this.f3086b, this.f3088d));
                        return;
                    } else if (action.equals("cn.jpush.android.intent.NOTIFICATION_UN_SHOW")) {
                        try {
                            this.f3087c.onNotifyMessageUnShow(this.f3086b, cn.jpush.android.aa.c.b(this.f3086b, this.f3088d));
                            return;
                        } catch (Throwable unused) {
                            return;
                        }
                    } else if (action.equals(JPushInterface.ACTION_NOTIFICATION_OPENED)) {
                        this.f3087c.onNotifyMessageOpened(this.f3086b, cn.jpush.android.aa.c.b(this.f3086b, this.f3088d));
                        return;
                    } else if (action.equals("cn.jpush.android.intent.NOTIFICATION_DISMISS")) {
                        this.f3087c.onNotifyMessageDismiss(this.f3086b, cn.jpush.android.aa.c.b(this.f3086b, this.f3088d));
                        return;
                    } else if (JPushInterface.ACTION_NOTIFICATION_CLICK_ACTION_PROXY.equals(this.f3088d.getAction())) {
                        Intent intent2 = new Intent(JPushInterface.ACTION_NOTIFICATION_CLICK_ACTION);
                        if (this.f3088d.getExtras() != null) {
                            intent2.putExtras(this.f3088d.getExtras());
                        }
                        this.f3087c.onMultiActionClicked(this.f3086b, intent2);
                        return;
                    } else if ("on_noti_settings_check".equals(action)) {
                        this.f3087c.onNotificationSettingsCheck(this.f3086b, this.f3088d.getBooleanExtra("isOn", false), this.f3088d.getIntExtra(ShareConstants.FEED_SOURCE_PARAM, 0));
                        return;
                    } else if ("cn.jpush.android.intent.INAPP_MESSAGE_ARRIVED".equals(action)) {
                        cn.jpush.android.d.d a10 = cn.jpush.android.aa.c.a(this.f3086b, this.f3088d);
                        if (a10 != null) {
                            a10.toString();
                            cn.jpush.android.d.d.a(a10.f3017c, a10.bt);
                        }
                        Logger.d("JMessageReceiverHelper", "[MessageReceiverRunable] in-app message onInAppMessageArrived");
                        cn.jpush.android.p.a.a().b(this.f3086b, a10);
                        cn.jpush.android.o.b.c(this.f3086b);
                        return;
                    } else if ("cn.jpush.android.intent.NOTIFY_INAPP_CANCEL".equals(action)) {
                        cn.jpush.android.p.a.a().c(this.f3086b, cn.jpush.android.aa.c.a(this.f3086b, this.f3088d));
                        return;
                    } else if (action.equals("cn.jpush.android.intent.IN_APP_MSG_ARRIVED_INTERVAL")) {
                        this.f3087c.onInAppMessageArrived(this.f3086b, cn.jpush.android.aa.c.b(this.f3086b, this.f3088d));
                        return;
                    } else if (action.equals("cn.jpush.android.intent.IN_APP_MSG_CLICK_INTERVAL")) {
                        this.f3087c.onInAppMessageClick(this.f3086b, cn.jpush.android.aa.c.b(this.f3086b, this.f3088d));
                        return;
                    } else if (action.equals("cn.jpush.android.intent.IN_APP_MSG_DISMISS_INTERVAL")) {
                        this.f3087c.onInAppMessageDismiss(this.f3086b, cn.jpush.android.aa.c.b(this.f3086b, this.f3088d));
                        return;
                    } else if (action.equals("cn.jpush.android.intent.IN_APP_MSG_UN_SHOW_INTERVAL")) {
                        this.f3087c.onInAppMessageUnShow(this.f3086b, cn.jpush.android.aa.c.b(this.f3086b, this.f3088d));
                        return;
                    } else if (action.equals("in_app_pull_result")) {
                        this.f3087c.onPullInAppResult(this.f3086b, cn.jpush.android.v.e.a().a(this.f3086b, this.f3088d));
                        return;
                    } else if ("cn.jpush.android.intent.ACTION_SYNC_ACTIVITY_TASK_CNT".equals(action)) {
                        return;
                    } else {
                        if ("cn.jpush.android.intent.SYNC_BLACK_LIST".equals(action)) {
                            cn.jpush.android.d.d a11 = cn.jpush.android.aa.c.a(this.f3086b, this.f3088d);
                            if (a11 != null) {
                                cn.jpush.android.v.b.a(this.f3086b, a11.br);
                                return;
                            }
                            return;
                        } else if ("cn.jpush.android.intent.GEO_RECEIVED".equals(action)) {
                            String stringExtra = this.f3088d.getStringExtra("geo");
                            if (TextUtils.isEmpty(stringExtra)) {
                                stringExtra = "";
                            }
                            this.f3087c.onGeofenceReceived(this.f3086b, stringExtra);
                            return;
                        } else if ("cn.jpush.android.intent.GEO_REGION".equals(action)) {
                            String stringExtra2 = this.f3088d.getStringExtra("geo");
                            double doubleExtra = this.f3088d.getDoubleExtra("geoLat", 200.0d);
                            this.f3087c.onGeofenceRegion(this.f3086b, stringExtra2, this.f3088d.getDoubleExtra("geoLng", 200.0d), doubleExtra);
                            return;
                        } else if ("cn.jpush.android.intent.SYNC_ANI_CONFIG".equals(action)) {
                            cn.jpush.android.d.d a12 = cn.jpush.android.aa.c.a(this.f3086b, this.f3088d);
                            if (a12 != null) {
                                cn.jpush.android.v.a.a().a(this.f3086b, a12.bs);
                                return;
                            }
                            return;
                        } else if (!"sync_reg_lifecycle".equals(action)) {
                            if (!"cn.jpush.android.intent.DISPLAYED_STOP".equals(action)) {
                                Logger.w("JMessageReceiverHelper", "unsupport action type");
                                return;
                            }
                            cn.jpush.android.d.d a13 = cn.jpush.android.aa.c.a(this.f3086b, this.f3088d);
                            if (a13 != null) {
                                cn.jpush.android.p.a.a().a(this.f3086b, a13.bn, a13.f3031q);
                                return;
                            }
                            return;
                        } else {
                            cn.jpush.android.d.d a14 = cn.jpush.android.aa.c.a(this.f3086b, this.f3088d);
                            if (a14 != null) {
                                Logger.d("JMessageReceiverHelper", "sync reg lifecycle, type: " + a14.f3031q);
                                if (a14.f3031q == 1) {
                                    JPushConstants.init(this.f3086b);
                                    return;
                                } else {
                                    cn.jpush.android.o.b.a(this.f3086b);
                                    return;
                                }
                            }
                            return;
                        }
                    }
                }
                Logger.w("JMessageReceiverHelper", "intent or jPushMessageReceiver was null");
            } catch (Throwable th2) {
                Logger.ww("JMessageReceiverHelper", "MessageReceiver run failed:" + th2.getMessage());
            }
        }
    }

    private a() {
    }

    public static a a() {
        if (f3084a == null) {
            synchronized (a.class) {
                if (f3084a == null) {
                    f3084a = new a();
                }
            }
        }
        return f3084a;
    }

    public static void a(Context context, Intent intent) {
        try {
            Logger.i("JMessageReceiverHelper", "Click notification action with extra: " + intent.getExtras().getString(JPushInterface.EXTRA_NOTIFICATION_ACTION_EXTRA));
            Intent intent2 = new Intent(JPushInterface.ACTION_NOTIFICATION_CLICK_ACTION);
            intent2.putExtras(intent.getExtras());
            intent2.addCategory(context.getPackageName());
            intent2.setPackage(context.getPackageName());
            context.sendBroadcast(intent2, context.getPackageName() + JPushInterface.PUSH_MESSAGE_PERMISSION_POSTFIX);
        } catch (Throwable th2) {
            Logger.ww("JMessageReceiverHelper", "Click notification sendBroadcast :" + th2.getMessage());
        }
    }

    public static void a(Context context, CustomMessage customMessage) {
        if (context == null || customMessage == null) {
            Logger.dd("JMessageReceiverHelper", "Send custom message to app failed, param is invalid!");
            return;
        }
        Logger.dd("JMessageReceiverHelper", "not found user push message,use old action to user");
        Intent intent = new Intent(JPushInterface.ACTION_MESSAGE_RECEIVED);
        intent.putExtra(JPushInterface.EXTRA_APP_KEY, customMessage.senderId);
        intent.putExtra(JPushInterface.EXTRA_MESSAGE, customMessage.message);
        intent.putExtra(JPushInterface.EXTRA_CONTENT_TYPE, customMessage.contentType);
        intent.putExtra(JPushInterface.EXTRA_TITLE, customMessage.title);
        intent.putExtra(JPushInterface.EXTRA_EXTRA, customMessage.extra);
        intent.putExtra(JPushInterface.EXTRA_MSG_ID, customMessage.messageId);
        if (JPushConstants.SDK_VERSION_CODE >= 387) {
            intent.putExtra(JPushInterface.EXTRA_TYPE_PLATFORM, customMessage.platform);
        }
        intent.addCategory(customMessage.appId);
        intent.setPackage(context.getPackageName());
        Locale locale = Locale.ENGLISH;
        context.sendBroadcast(intent, String.format(locale, "%s.permission.JPUSH_MESSAGE", customMessage.appId));
        Logger.i("JMessageReceiverHelper", "Send broadcast to app: " + String.format(locale, "%s.permission.JPUSH_MESSAGE", customMessage.appId));
    }

    /* JADX WARN: Removed duplicated region for block: B:41:0x00d7 A[Catch: all -> 0x01c5, TryCatch #0 {all -> 0x01c5, blocks: (B:17:0x0047, B:19:0x0084, B:20:0x008b, B:22:0x0093, B:23:0x009a, B:25:0x009f, B:27:0x00a7, B:28:0x00ab, B:39:0x00d3, B:41:0x00d7, B:42:0x00ed, B:44:0x00f5, B:45:0x00fc, B:47:0x0104, B:48:0x010b, B:50:0x0113, B:51:0x011a, B:53:0x0122, B:54:0x0129, B:56:0x012d, B:60:0x0134, B:62:0x0138, B:64:0x013e, B:65:0x014b, B:67:0x014f, B:69:0x0155, B:70:0x0166, B:72:0x016c, B:74:0x017a, B:75:0x017e, B:77:0x0188, B:78:0x018b, B:79:0x018f, B:80:0x0198, B:81:0x01a1, B:29:0x00af, B:31:0x00b4, B:33:0x00bc, B:34:0x00c1, B:36:0x00c6, B:38:0x00ce), top: B:89:0x0047 }] */
    /* JADX WARN: Removed duplicated region for block: B:44:0x00f5 A[Catch: all -> 0x01c5, TryCatch #0 {all -> 0x01c5, blocks: (B:17:0x0047, B:19:0x0084, B:20:0x008b, B:22:0x0093, B:23:0x009a, B:25:0x009f, B:27:0x00a7, B:28:0x00ab, B:39:0x00d3, B:41:0x00d7, B:42:0x00ed, B:44:0x00f5, B:45:0x00fc, B:47:0x0104, B:48:0x010b, B:50:0x0113, B:51:0x011a, B:53:0x0122, B:54:0x0129, B:56:0x012d, B:60:0x0134, B:62:0x0138, B:64:0x013e, B:65:0x014b, B:67:0x014f, B:69:0x0155, B:70:0x0166, B:72:0x016c, B:74:0x017a, B:75:0x017e, B:77:0x0188, B:78:0x018b, B:79:0x018f, B:80:0x0198, B:81:0x01a1, B:29:0x00af, B:31:0x00b4, B:33:0x00bc, B:34:0x00c1, B:36:0x00c6, B:38:0x00ce), top: B:89:0x0047 }] */
    /* JADX WARN: Removed duplicated region for block: B:47:0x0104 A[Catch: all -> 0x01c5, TryCatch #0 {all -> 0x01c5, blocks: (B:17:0x0047, B:19:0x0084, B:20:0x008b, B:22:0x0093, B:23:0x009a, B:25:0x009f, B:27:0x00a7, B:28:0x00ab, B:39:0x00d3, B:41:0x00d7, B:42:0x00ed, B:44:0x00f5, B:45:0x00fc, B:47:0x0104, B:48:0x010b, B:50:0x0113, B:51:0x011a, B:53:0x0122, B:54:0x0129, B:56:0x012d, B:60:0x0134, B:62:0x0138, B:64:0x013e, B:65:0x014b, B:67:0x014f, B:69:0x0155, B:70:0x0166, B:72:0x016c, B:74:0x017a, B:75:0x017e, B:77:0x0188, B:78:0x018b, B:79:0x018f, B:80:0x0198, B:81:0x01a1, B:29:0x00af, B:31:0x00b4, B:33:0x00bc, B:34:0x00c1, B:36:0x00c6, B:38:0x00ce), top: B:89:0x0047 }] */
    /* JADX WARN: Removed duplicated region for block: B:50:0x0113 A[Catch: all -> 0x01c5, TryCatch #0 {all -> 0x01c5, blocks: (B:17:0x0047, B:19:0x0084, B:20:0x008b, B:22:0x0093, B:23:0x009a, B:25:0x009f, B:27:0x00a7, B:28:0x00ab, B:39:0x00d3, B:41:0x00d7, B:42:0x00ed, B:44:0x00f5, B:45:0x00fc, B:47:0x0104, B:48:0x010b, B:50:0x0113, B:51:0x011a, B:53:0x0122, B:54:0x0129, B:56:0x012d, B:60:0x0134, B:62:0x0138, B:64:0x013e, B:65:0x014b, B:67:0x014f, B:69:0x0155, B:70:0x0166, B:72:0x016c, B:74:0x017a, B:75:0x017e, B:77:0x0188, B:78:0x018b, B:79:0x018f, B:80:0x0198, B:81:0x01a1, B:29:0x00af, B:31:0x00b4, B:33:0x00bc, B:34:0x00c1, B:36:0x00c6, B:38:0x00ce), top: B:89:0x0047 }] */
    /* JADX WARN: Removed duplicated region for block: B:53:0x0122 A[Catch: all -> 0x01c5, TryCatch #0 {all -> 0x01c5, blocks: (B:17:0x0047, B:19:0x0084, B:20:0x008b, B:22:0x0093, B:23:0x009a, B:25:0x009f, B:27:0x00a7, B:28:0x00ab, B:39:0x00d3, B:41:0x00d7, B:42:0x00ed, B:44:0x00f5, B:45:0x00fc, B:47:0x0104, B:48:0x010b, B:50:0x0113, B:51:0x011a, B:53:0x0122, B:54:0x0129, B:56:0x012d, B:60:0x0134, B:62:0x0138, B:64:0x013e, B:65:0x014b, B:67:0x014f, B:69:0x0155, B:70:0x0166, B:72:0x016c, B:74:0x017a, B:75:0x017e, B:77:0x0188, B:78:0x018b, B:79:0x018f, B:80:0x0198, B:81:0x01a1, B:29:0x00af, B:31:0x00b4, B:33:0x00bc, B:34:0x00c1, B:36:0x00c6, B:38:0x00ce), top: B:89:0x0047 }] */
    /* JADX WARN: Removed duplicated region for block: B:56:0x012d A[Catch: all -> 0x01c5, TryCatch #0 {all -> 0x01c5, blocks: (B:17:0x0047, B:19:0x0084, B:20:0x008b, B:22:0x0093, B:23:0x009a, B:25:0x009f, B:27:0x00a7, B:28:0x00ab, B:39:0x00d3, B:41:0x00d7, B:42:0x00ed, B:44:0x00f5, B:45:0x00fc, B:47:0x0104, B:48:0x010b, B:50:0x0113, B:51:0x011a, B:53:0x0122, B:54:0x0129, B:56:0x012d, B:60:0x0134, B:62:0x0138, B:64:0x013e, B:65:0x014b, B:67:0x014f, B:69:0x0155, B:70:0x0166, B:72:0x016c, B:74:0x017a, B:75:0x017e, B:77:0x0188, B:78:0x018b, B:79:0x018f, B:80:0x0198, B:81:0x01a1, B:29:0x00af, B:31:0x00b4, B:33:0x00bc, B:34:0x00c1, B:36:0x00c6, B:38:0x00ce), top: B:89:0x0047 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static void a(android.content.Context r8, cn.jpush.android.api.NotificationMessage r9, java.lang.String r10) {
        /*
            Method dump skipped, instructions count: 505
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: cn.jpush.android.helper.a.a(android.content.Context, cn.jpush.android.api.NotificationMessage, java.lang.String):void");
    }

    public static void a(JPushMessageReceiver jPushMessageReceiver, Context context, Intent intent) {
        CmdMessage cmdMessage;
        try {
            int intExtra = intent.getIntExtra("code", -2);
            int intExtra2 = intent.getIntExtra("cmd", -2);
            String stringExtra = intent.getStringExtra("message");
            Logger.d("JMessageReceiverHelper", "[callCmdMessage] code:" + intExtra + ",cmd:" + intExtra2 + ",message:" + stringExtra);
            Bundle extras = intent.getExtras();
            if (intExtra2 == -1) {
                jPushMessageReceiver.onConnected(context, false);
                return;
            }
            if (intExtra2 == 0) {
                if (intExtra == 0) {
                    jPushMessageReceiver.onRegister(context, stringExtra);
                    return;
                }
                cmdMessage = new CmdMessage(intExtra2, intExtra, stringExtra, extras);
            } else if (intExtra2 == 1) {
                jPushMessageReceiver.onConnected(context, true);
                return;
            } else if (intExtra2 == 2001) {
                return;
            } else {
                if (intExtra2 != 10000) {
                    switch (intExtra2) {
                        case 2003:
                        case 2004:
                        case 2005:
                        case 2006:
                        case 2007:
                            break;
                        default:
                            switch (intExtra2) {
                                case TPPlayerMgr.EVENT_ID_APP_ENTER_BACKGROUND /* 100001 */:
                                case TPPlayerMgr.EVENT_ID_APP_ENTER_FOREGROUND /* 100002 */:
                                case 100003:
                                case 100004:
                                case 100005:
                                    break;
                                default:
                                    Logger.dd("JMessageReceiverHelper", "unkown cmd:" + intExtra2);
                                    return;
                            }
                    }
                }
                cmdMessage = new CmdMessage(intExtra2, intExtra, stringExtra, extras);
            }
            jPushMessageReceiver.onCommandResult(context, cmdMessage);
        } catch (Throwable th2) {
            Logger.e("JMessageReceiverHelper", "callCmdMessage failed:" + th2.getMessage());
        }
    }

    public void a(Context context, JPushMessageReceiver jPushMessageReceiver, Intent intent) {
        JCoreHelper.majorExecutor(context, "JMessageReceiverHelper", new C0046a(context, jPushMessageReceiver, intent));
    }
}
