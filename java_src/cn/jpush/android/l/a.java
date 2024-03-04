package cn.jpush.android.l;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.text.TextUtils;
import android.util.Base64;
import cn.jpush.android.aa.g;
import cn.jpush.android.ac.f;
import cn.jpush.android.ad.b;
import cn.jpush.android.api.CallBackParams;
import cn.jpush.android.api.CustomMessage;
import cn.jpush.android.api.JPushInterface;
import cn.jpush.android.api.JThirdPlatFormInterface;
import cn.jpush.android.api.NotificationMessage;
import cn.jpush.android.b.d;
import cn.jpush.android.helper.JCoreHelper;
import cn.jpush.android.helper.Logger;
import cn.jpush.android.helper.c;
import cn.jpush.android.helper.i;
import cn.jpush.android.local.JPushAction;
import cn.jpush.android.local.JPushConstants;
import cn.jpush.android.local.JPushResponse;
import cn.jpush.android.local.ProxyActivityAction;
import cn.jpush.android.service.JPushMessageReceiver;
import cn.jpush.android.v.e;
import com.huawei.hms.framework.common.hianalytics.CrashHianalyticsData;
import java.nio.ByteBuffer;
import java.util.LinkedList;
import java.util.Set;
import java.util.regex.Pattern;
import org.json.JSONObject;
/* loaded from: classes.dex */
public class a extends JPushAction {

    /* renamed from: a  reason: collision with root package name */
    private Boolean f3124a;

    /* renamed from: b  reason: collision with root package name */
    private Boolean f3125b;

    /* renamed from: c  reason: collision with root package name */
    private Context f3126c;

    /* renamed from: d  reason: collision with root package name */
    private cn.jpush.android.r.a f3127d;

    /* renamed from: cn.jpush.android.l.a$a  reason: collision with other inner class name */
    /* loaded from: classes.dex */
    public static class C0047a {
        private static String a(byte b10) {
            switch (b10) {
                case 0:
                case 7:
                default:
                    return "jpush";
                case 1:
                    return "xiaomi";
                case 2:
                    return "huawei";
                case 3:
                    return "meizu";
                case 4:
                    return "oppo";
                case 5:
                    return "vivo";
                case 6:
                    return "asus";
                case 8:
                    return "fcm";
            }
        }

        private static void a(int i9, String str, Intent intent) {
            String str2;
            if (i9 == 1) {
                intent.setData(Uri.parse(str));
                return;
            }
            if (i9 == 2) {
                str2 = "JMessageExtra";
            } else if (i9 != 3) {
                return;
            } else {
                str2 = "asus_data";
            }
            intent.putExtra(str2, str);
        }

        public static boolean a(Context context, int i9, String str) {
            Logger.d("JPushActionImpl", "msg content is " + String.valueOf(str));
            if (TextUtils.isEmpty(str)) {
                return false;
            }
            try {
                JSONObject jSONObject = new JSONObject(str);
                String optString = jSONObject.optString(JThirdPlatFormInterface.KEY_MSG_ID);
                byte optInt = (byte) jSONObject.optInt("rom_type");
                Logger.d("JPushActionImpl", "通道：" + a(optInt));
                boolean has = jSONObject.has(JThirdPlatFormInterface.KEY_MSG_ID);
                boolean has2 = jSONObject.has("rom_type");
                boolean has3 = jSONObject.has("n_title");
                boolean has4 = jSONObject.has("n_content");
                Logger.d("JPushActionImpl", "hasMsgid:" + has);
                Logger.d("JPushActionImpl", "hasWhich:" + has2);
                Logger.d("JPushActionImpl", "hasTitle:" + has3);
                Logger.d("JPushActionImpl", "hasContent:" + has4);
                if (has && has2 && has3 && has4) {
                    JSONObject optJSONObject = jSONObject.optJSONObject("n_intent");
                    jSONObject.remove("n_intent");
                    c.a(context, optString, optInt, str);
                    if (optJSONObject == null) {
                        return false;
                    }
                    String optString2 = optJSONObject.optString("n_url", "");
                    Logger.d("JPushActionImpl", "n_url:" + optString2);
                    String str2 = new String(Base64.decode(optString2, 0));
                    Logger.d("JPushActionImpl", "url_intent:" + str2);
                    String jSONObject2 = jSONObject.toString();
                    Intent parseUri = Build.VERSION.SDK_INT >= 22 ? Intent.parseUri(str2, 4) : Intent.parseUri(str2, 0);
                    parseUri.addFlags(268435456);
                    a(i9, jSONObject2, parseUri);
                    Logger.d("JPushActionImpl", "intentSend:" + parseUri);
                    context.startActivity(parseUri);
                    return true;
                }
                Logger.d("JPushActionImpl", "参数缺失");
                return false;
            } catch (Throwable th2) {
                Logger.w("JPushActionImpl", "parse notification error : " + th2.getMessage());
                return false;
            }
        }

        public static boolean a(Context context, Intent intent) {
            int i9;
            String str;
            Logger.d("JPushActionImpl", "用户点击打开了通知");
            if (intent.getData() != null) {
                str = intent.getData().toString();
                Logger.d("JPushActionImpl", "华为：" + str);
                i9 = 1;
            } else {
                i9 = 0;
                str = null;
            }
            if (TextUtils.isEmpty(str) && intent.getExtras() != null) {
                str = intent.getExtras().getString("JMessageExtra");
                Logger.d("JPushActionImpl", "fcm、oppo、vivo、华硕、小米：" + str);
                i9 = 2;
            }
            if (TextUtils.isEmpty(str) && intent.getExtras() != null) {
                str = intent.getExtras().getString("asus_data");
                Logger.d("JPushActionImpl", "asus_data：" + str);
                i9 = 3;
            }
            return a(context, i9, str);
        }
    }

    private static JSONObject a(ByteBuffer byteBuffer) {
        try {
            byteBuffer.getLong();
            byte[] bArr = new byte[byteBuffer.getShort()];
            byteBuffer.get(bArr);
            String str = new String(bArr, "UTF-8");
            Logger.d("JPushActionImpl", "parseBundle2Json content: " + str);
            return new JSONObject(str);
        } catch (Exception e10) {
            Logger.w("JPushActionImpl", "parseBundle2Json exception:" + e10.getMessage());
            return null;
        }
    }

    private static void a(Context context, int i9, long j10) {
        if (i9 != 10) {
            if (i9 == 34) {
                e.a().a(context, j10, JPushInterface.ErrorCode.TIMEOUT, 1, 30L);
                return;
            } else if (i9 == 37) {
                d.a(context).a(j10, JPushInterface.ErrorCode.TIMEOUT, null);
                return;
            } else {
                switch (i9) {
                    case 26:
                        cn.jpush.android.helper.d.a().a(context, j10, JPushInterface.ErrorCode.TIMEOUT);
                        return;
                    case 27:
                        cn.jpush.android.ae.a.a().b(context, j10);
                        return;
                    case 28:
                    case 29:
                        break;
                    default:
                        return;
                }
            }
        }
        cn.jpush.android.ad.a.a(context, b.a().a(j10), JPushInterface.ErrorCode.TIMEOUT, j10);
    }

    private static void a(Context context, Bundle bundle) {
        if (bundle == null) {
            Logger.w("JPushActionImpl", "[setMaxNotificationNum] bundle is bull");
            return;
        }
        int i9 = bundle.getInt("num");
        Logger.dd("JPushActionImpl", "action:setMaxNotificationNum :" + i9);
        int b10 = g.b();
        Logger.v("JPushActionImpl", "number in queue: " + b10);
        if (i9 < b10) {
            int i10 = b10 - i9;
            Logger.v("JPushActionImpl", "decreaseNotification:" + i10);
            cn.jpush.android.aa.c.c(context, i10);
        }
        cn.jpush.android.cache.a.c(context, i9);
    }

    private static void a(Context context, JPushResponse jPushResponse) {
        Logger.dd("JPushActionImpl", "action:handleMsg:" + jPushResponse);
        if (jPushResponse == null) {
            return;
        }
        int cmd = jPushResponse.getCmd();
        if (cmd == 3) {
            cn.jpush.android.ac.d dVar = new cn.jpush.android.ac.d(jPushResponse);
            if (cn.jpush.android.cache.a.d(context)) {
                Logger.d("JPushActionImpl", "JPush was stoped");
                if (dVar.a() != 20) {
                    return;
                }
            }
            cn.jpush.android.d.b.a(context, dVar);
            return;
        }
        if (cmd != 10) {
            if (cmd == 34) {
                cn.jpush.android.ac.b bVar = new cn.jpush.android.ac.b(jPushResponse);
                e.a().a(context, bVar.getRquestId(), bVar.a(), bVar.c(), bVar.b());
                return;
            } else if (cmd == 36) {
                d.a(context).a(new cn.jpush.android.n.b(jPushResponse));
                return;
            } else if (cmd == 37) {
                d.a(context).a(jPushResponse.getRquestId(), 0, new cn.jpush.android.n.d(jPushResponse));
                return;
            } else {
                switch (cmd) {
                    case 25:
                        JSONObject a10 = a(jPushResponse.getBody());
                        if (a10 != null) {
                            int optInt = a10.optInt("cmd");
                            if (optInt == 56) {
                                d.a(context).a(a10);
                                return;
                            } else if (optInt != 57) {
                                if (optInt == 59) {
                                    a(context, a10);
                                    cn.jpush.android.p.a.a().a(context, a10);
                                    return;
                                } else if (optInt == 60) {
                                    cn.jpush.android.aa.c.a(context, 2, true);
                                    return;
                                } else if (optInt == 77) {
                                    cn.jpush.android.v.c.a().b(context, a10);
                                    return;
                                } else if (optInt != 78) {
                                    Logger.d("JPushActionImpl", "Unknown command for ctrl");
                                    return;
                                } else {
                                    cn.jpush.android.v.c.a().a(context, a10);
                                    return;
                                }
                            } else {
                                return;
                            }
                        }
                        return;
                    case 26:
                        cn.jpush.android.ac.a aVar = new cn.jpush.android.ac.a(jPushResponse);
                        cn.jpush.android.helper.d.a().a(context, aVar.getRquestId(), aVar.a());
                        return;
                    case 27:
                        cn.jpush.android.ac.a aVar2 = new cn.jpush.android.ac.a(jPushResponse);
                        if (aVar2.a() == 0) {
                            cn.jpush.android.ae.a.a().a(context, jPushResponse.getRquestId());
                            return;
                        } else {
                            cn.jpush.android.ae.a.a().a(context, jPushResponse.getRquestId(), aVar2.a());
                            return;
                        }
                    case 28:
                    case 29:
                        break;
                    default:
                        Logger.w("JPushActionImpl", "Unknown command for parsing inbound.");
                        return;
                }
            }
        }
        cn.jpush.android.ad.a.a(context, new f(jPushResponse).a(), jPushResponse.getCmd() != 28 ? 2 : 1, jPushResponse.getRquestId());
    }

    private static void a(Context context, JSONObject jSONObject) {
        try {
            String optString = jSONObject.getJSONObject("content").optString("ids");
            if (TextUtils.isEmpty(optString)) {
                return;
            }
            Logger.d("JPushActionImpl", "dealCancelNotification ids=" + optString);
            String[] split = optString.split(",");
            LinkedList linkedList = new LinkedList();
            for (String str : split) {
                if (!TextUtils.isEmpty(str)) {
                    if (cn.jpush.android.aa.e.a(context, str)) {
                        int a10 = cn.jpush.android.aa.c.a(str, 0);
                        Logger.d("JPushActionImpl", "message id:" + str + " is in local history ,try cancel notificationID : " + a10);
                        if (cn.jpush.android.aa.c.a(context, a10)) {
                            cn.jpush.android.aa.c.d(context, a10);
                            c.a(split.length == 2 ? split[1] : str, 1068, context);
                        }
                    } else if (cn.jpush.android.aa.e.a(context, str, null)) {
                        Logger.d("JPushActionImpl", "dealCancelNotification , do nothing ");
                    } else {
                        byte a11 = cn.jpush.android.ae.c.a().a(context, str);
                        Logger.d("JPushActionImpl", "message id:" + str + " may be ospush channel,try cancel by sdkType: " + ((int) a11));
                        if (a11 != -1) {
                            c.a(str, "", a11, 1069, context);
                        }
                    }
                    linkedList.add(str);
                }
            }
            cn.jpush.android.aa.e.a(context, linkedList);
        } catch (Throwable th2) {
            Logger.w("JPushActionImpl", "dealCancelNotification e:" + th2);
        }
    }

    private boolean a(Context context) {
        Boolean bool = this.f3124a;
        if (bool != null) {
            return bool.booleanValue();
        }
        if (context == null) {
            Logger.ww("JPushActionImpl", "context is null");
            return false;
        }
        this.f3126c = context.getApplicationContext();
        Boolean valueOf = Boolean.valueOf(cn.jpush.android.af.a.h(context));
        this.f3124a = valueOf;
        if (valueOf.booleanValue()) {
            cn.jpush.android.o.b.a(context);
        }
        return this.f3124a.booleanValue();
    }

    private void b(Context context) {
        Logger.d("JPushActionImpl", "serviceInit...");
        try {
            if (this.f3125b != null) {
                return;
            }
            this.f3125b = Boolean.TRUE;
            boolean z10 = JPushConstants.SUPPORT_DY;
            cn.jpush.android.aa.c.a(context, 0, true);
            e(context);
            Logger.d("JPushActionImpl", "google:true");
            int i9 = cn.jpush.android.m.a.f3138a != JPushConstants.SDK_VERSION_CODE ? 2 : 0;
            Logger.d("JPushActionImpl", "custom:1,dynamic:" + i9);
            cn.jpush.android.aa.f.a().a(context, null, true);
            JCoreHelper.reportSdkType(context, "push", 1, i9, cn.jpush.android.m.a.f3138a);
            if (JPushConstants.canGetLbsInBackGround(context)) {
                d.a(context).a();
            }
            d(context);
            c(context);
        } catch (Throwable unused) {
        }
    }

    private static void b(Context context, Bundle bundle) {
        if (bundle == null) {
            Logger.w("JPushActionImpl", "[setSilenceTime] bundle is bull");
            return;
        }
        String string = bundle.getString(CrashHianalyticsData.TIME);
        Logger.dd("JPushActionImpl", "action:setSilenceTime pushTime:" + string);
        cn.jpush.android.cache.a.c(context, string);
    }

    private void c(Context context) {
        new cn.jpush.android.v.b().a(context);
        cn.jpush.android.v.a.a().b(context);
    }

    private static void c(Context context, Bundle bundle) {
        if (bundle == null) {
            Logger.w("JPushActionImpl", "[setPushTime] bundle is bull");
            return;
        }
        cn.jpush.android.cache.a.b(context, true);
        String string = bundle.getString(CrashHianalyticsData.TIME);
        if (!Pattern.compile("([0-6]{0,7})_((([0-9]|1[0-9]|2[0-3])\\^([0-9]|1[0-9]|2[0-3]))|(([0-9]|1[0-9]|2[0-3])\\^([0-9]|1[0-9]|2[0-3])-)+(([0-9]|1[0-9]|2[0-3])\\^([0-9]|1[0-9]|2[0-3])))").matcher(string).matches()) {
            Logger.ee("JPushActionImpl", "Invalid time format - " + string);
            return;
        }
        String g10 = cn.jpush.android.cache.a.g(context);
        if (string.equals(g10)) {
            Logger.dd("JPushActionImpl", "Already SetPushTime, give up - " + g10);
            return;
        }
        Logger.dd("JPushActionImpl", "action:setPushTime pushTime:" + string);
        cn.jpush.android.cache.a.b(context, string);
    }

    private void d(Context context) {
        try {
            Logger.d("JPushActionImpl", "google play not register ir");
        } catch (Throwable th2) {
            Logger.w("JPushActionImpl", "register apk install receiver failed, " + th2.getMessage());
        }
    }

    private void e(Context context) {
        try {
            Class.forName("cn.jpush.android.dy.JPushThirdDyManager").getDeclaredMethod("update", Context.class).invoke(null, context);
        } catch (Throwable unused) {
        }
    }

    @Override // cn.jpush.android.local.JPushAction
    public Object beforLogin(Context context, String str, int i9, String str2) {
        String str3;
        a(context);
        if (context == null) {
            str3 = "context was null";
        } else if (!TextUtils.isEmpty(str2)) {
            if ("platformtype".equals(str2)) {
                if (i9 >= 16) {
                    return Byte.valueOf(cn.jpush.android.ae.c.a().e(context));
                }
            } else if ("platformregid".equals(str2)) {
                return cn.jpush.android.ae.c.a().f(context);
            }
            return null;
        } else {
            str3 = " filed name was empty";
        }
        Logger.e("JPushActionImpl", str3);
        return null;
    }

    @Override // cn.jpush.android.local.JPushAction
    public ProxyActivityAction getPopWinActivity(Context context) {
        return new cn.jpush.android.ui.b();
    }

    @Override // cn.jpush.android.local.JPushAction
    public ProxyActivityAction getPushActivity(Context context) {
        return new cn.jpush.android.ui.c();
    }

    @Override // cn.jpush.android.local.JPushAction
    public String getSdkVersion(String str) {
        return cn.jpush.android.m.a.f3139b;
    }

    /* JADX WARN: Code restructure failed: missing block: B:210:0x04b8, code lost:
        if (r2 == 2001) goto L278;
     */
    /* JADX WARN: Code restructure failed: missing block: B:211:0x04ba, code lost:
        if (r2 == 0) goto L278;
     */
    /* JADX WARN: Code restructure failed: missing block: B:212:0x04bc, code lost:
        if (r2 != 2002) goto L269;
     */
    @Override // cn.jpush.android.local.JPushAction
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.lang.Object handleAction(android.content.Context r19, java.lang.String r20, java.lang.Object r21) {
        /*
            Method dump skipped, instructions count: 2157
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: cn.jpush.android.l.a.handleAction(android.content.Context, java.lang.String, java.lang.Object):java.lang.Object");
    }

    @Override // cn.jpush.android.local.JPushAction
    public void handleNotificationIntent(Context context, Intent intent) {
        cn.jpush.android.d.d a10 = cn.jpush.android.aa.c.a(context, intent);
        Logger.i("JPushActionImpl", "handleNotificationIntent:" + a10);
        if (a10 == null) {
            if (C0047a.a(context, intent)) {
                Logger.i("JPushActionImpl", "handleNotificationIntent handleOpenClick:true");
                return;
            }
            return;
        }
        if (JPushInterface.ACTION_NOTIFICATION_OPENED.equals(intent.getAction()) && a10.f3026l != 1) {
            byte b10 = a10.f2996ae;
            if (b10 == 0) {
                c.a(a10.f3017c, 1000, context);
            } else {
                c.a(context, a10.f3017c, b10, (String) null);
            }
            int f10 = cn.jpush.android.aa.c.f(context, a10);
            Logger.d("JPushActionImpl", "is deep link:" + f10);
            if (f10 == 2) {
                if (i.f()) {
                    cn.jpush.android.aa.c.e(context, a10);
                    return;
                }
                return;
            }
        }
        cn.jpush.android.aa.c.a(context, intent.getAction(), a10, intent);
    }

    @Override // cn.jpush.android.local.JPushAction
    public void onActivityLifeCallback(Activity activity, String str) {
        try {
            if (this.f3127d == null) {
                this.f3127d = new cn.jpush.android.r.a();
            }
            char c10 = 65535;
            switch (str.hashCode()) {
                case -1897185151:
                    if (str.equals("started")) {
                        c10 = 0;
                        break;
                    }
                    break;
                case -1884319283:
                    if (str.equals("stopped")) {
                        c10 = 3;
                        break;
                    }
                    break;
                case -995321554:
                    if (str.equals("paused")) {
                        c10 = 2;
                        break;
                    }
                    break;
                case 1097547223:
                    if (str.equals("resumed")) {
                        c10 = 1;
                        break;
                    }
                    break;
                case 1986762265:
                    if (str.equals("destroyed")) {
                        c10 = 4;
                        break;
                    }
                    break;
            }
            if (c10 == 0) {
                this.f3127d.b(activity);
            } else if (c10 == 1) {
                this.f3127d.c(activity);
                cn.jpush.android.k.a.d(activity);
            } else if (c10 == 2) {
                this.f3127d.d(activity);
            } else if (c10 == 3) {
                this.f3127d.e(activity);
            } else if (c10 != 4) {
            } else {
                this.f3127d.f(activity);
            }
        } catch (Throwable th2) {
            Logger.w("JPushActionImpl", "onActivityLifeCallback failed. " + th2.getMessage());
        }
    }

    @Override // cn.jpush.android.local.JPushAction
    public void onInAppMessageArrived(Context context, NotificationMessage notificationMessage) {
        cn.jpush.android.helper.a.a(context, notificationMessage, JPushInterface.ACTION_IN_APP_MSG_RECEIVED);
    }

    @Override // cn.jpush.android.local.JPushAction
    public void onInAppMessageClick(Context context, NotificationMessage notificationMessage) {
        cn.jpush.android.helper.a.a(context, notificationMessage, JPushInterface.ACTION_IN_APP_MSG_CLICK);
    }

    @Override // cn.jpush.android.local.JPushAction
    public void onJPushMessageReceive(Context context, JPushMessageReceiver jPushMessageReceiver, Intent intent) {
        cn.jpush.android.helper.a.a().a(context.getApplicationContext(), jPushMessageReceiver, intent);
    }

    @Override // cn.jpush.android.local.JPushAction
    public void onMessage(Context context, CustomMessage customMessage) {
        cn.jpush.android.helper.a.a(context, customMessage);
    }

    @Override // cn.jpush.android.local.JPushAction
    public void onMultiAction(Context context, Intent intent) {
        cn.jpush.android.helper.a.a(context, intent);
    }

    @Override // cn.jpush.android.local.JPushAction
    public void onNotifyMessageArrived(Context context, NotificationMessage notificationMessage) {
        cn.jpush.android.helper.a.a(context, notificationMessage, JPushInterface.ACTION_NOTIFICATION_RECEIVED);
    }

    @Override // cn.jpush.android.local.JPushAction
    public void onNotifyMessageOpened(Context context, NotificationMessage notificationMessage) {
        cn.jpush.android.helper.a.a(context, notificationMessage, JPushInterface.ACTION_NOTIFICATION_OPENED);
    }

    @Override // cn.jpush.android.local.JPushAction
    public void onTagAliasResponse(Context context, long j10, int i9, Intent intent) {
        cn.jpush.android.ad.c.a().a(context.getApplicationContext(), j10, i9, intent);
    }

    @Override // cn.jpush.android.local.JPushAction
    public void setAliasAndTags(Context context, String str, Set<String> set, CallBackParams callBackParams) {
        cn.jpush.android.ad.a.a(context, str, set, callBackParams);
    }
}
