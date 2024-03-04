package cn.jpush.android.v;

import android.content.Context;
import android.os.Bundle;
import android.os.Message;
import android.text.TextUtils;
import android.util.DisplayMetrics;
import cn.jiguang.api.JCoreManager;
import cn.jpush.android.af.j;
import cn.jpush.android.helper.JCoreHelper;
import cn.jpush.android.helper.Logger;
import cn.jpush.android.helper.h;
import cn.jpush.android.helper.i;
import cn.jpush.android.local.JPushConstants;
import com.facebook.AuthenticationTokenClaims;
import com.facebook.devicerequests.internal.DeviceRequestsHelper;
import com.facebook.internal.ServerProtocol;
import com.meizu.cloud.pushsdk.notification.model.NotifyType;
import com.tencent.thumbplayer.core.downloadproxy.api.TPDownloadProxyEnum;
import org.json.JSONObject;
/* loaded from: classes.dex */
public class c {

    /* renamed from: a  reason: collision with root package name */
    private static int f3376a = 120;

    /* renamed from: b  reason: collision with root package name */
    private static volatile c f3377b = null;

    /* renamed from: l  reason: collision with root package name */
    private static String f3378l = "";

    /* renamed from: m  reason: collision with root package name */
    private static long f3379m = 0;

    /* renamed from: n  reason: collision with root package name */
    private static long f3380n = 43200;

    /* renamed from: h  reason: collision with root package name */
    private long f3386h;

    /* renamed from: q  reason: collision with root package name */
    private String f3392q;

    /* renamed from: r  reason: collision with root package name */
    private String f3393r;

    /* renamed from: c  reason: collision with root package name */
    private boolean f3381c = true;

    /* renamed from: d  reason: collision with root package name */
    private int f3382d = 0;

    /* renamed from: e  reason: collision with root package name */
    private int f3383e = 0;

    /* renamed from: f  reason: collision with root package name */
    private boolean f3384f = false;

    /* renamed from: g  reason: collision with root package name */
    private boolean f3385g = false;

    /* renamed from: i  reason: collision with root package name */
    private boolean f3387i = true;

    /* renamed from: j  reason: collision with root package name */
    private String f3388j = "";

    /* renamed from: k  reason: collision with root package name */
    private long f3389k = 0;

    /* renamed from: o  reason: collision with root package name */
    private long f3390o = 0;

    /* renamed from: p  reason: collision with root package name */
    private long f3391p = 0;

    /* renamed from: s  reason: collision with root package name */
    private f f3394s = new f() { // from class: cn.jpush.android.v.c.1
        @Override // cn.jpush.android.v.f
        public void a(Message message) {
            if (message == null || message.what != 1004) {
                return;
            }
            Context context = JPushConstants.mApplicationContext;
            Bundle bundle = new Bundle();
            bundle.putBoolean("force", true);
            c.this.a(context, "tcp_send_rtc", bundle);
        }
    };

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public class a extends cn.jpush.android.af.e {

        /* renamed from: b  reason: collision with root package name */
        private Context f3397b;

        /* renamed from: c  reason: collision with root package name */
        private String f3398c;

        /* renamed from: d  reason: collision with root package name */
        private Bundle f3399d;

        public a(Context context, String str, Bundle bundle) {
            this.f3397b = context;
            this.f3398c = str;
            this.f3399d = bundle;
            this.f2899f = "HbPeriodManager#Action";
        }

        @Override // cn.jpush.android.af.e
        public void a() {
            c cVar;
            Context context;
            Bundle bundle;
            try {
                Logger.d("InAppHbPeriodManager", "action: " + this.f3398c);
                if (this.f3398c.equals("tcp_rtc")) {
                    d.a().a(this.f3397b, false);
                    cVar = c.this;
                    context = this.f3397b;
                    bundle = this.f3399d;
                } else if (this.f3398c.equals("tcp_send_rtc")) {
                    c.this.c(this.f3397b, this.f3399d);
                    return;
                } else if (!"special_rtc".equals(this.f3398c)) {
                    return;
                } else {
                    cVar = c.this;
                    context = this.f3397b;
                    bundle = this.f3399d;
                }
                cVar.a(context, bundle);
            } catch (Throwable th2) {
                Logger.ww("InAppHbPeriodManager", "tcp action failed:" + th2.getMessage());
            }
        }
    }

    public static c a() {
        if (f3377b == null) {
            synchronized (c.class) {
                if (f3377b == null) {
                    f3377b = new c();
                }
            }
        }
        return f3377b;
    }

    private boolean a(boolean z10) {
        return g() && z10 && System.currentTimeMillis() - this.f3391p > 100 && System.currentTimeMillis() - this.f3390o >= 1000;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void c(Context context, Bundle bundle) {
        try {
            if (!f()) {
                Logger.d("InAppHbPeriodManager", "HB Period is disabled by user");
                return;
            }
            if (!(bundle != null ? bundle.getBoolean("force", false) : false) && h()) {
                Logger.d("InAppHbPeriodManager", "No need to in app rtc, Because it have succeed recently");
            } else if (!this.f3384f) {
                Logger.d("InAppHbPeriodManager", "socket is closed or push isn't login");
            } else {
                Logger.dd("InAppHbPeriodManager", "Send heart beat");
                e(context);
            }
        } catch (Throwable th2) {
            Logger.w("InAppHbPeriodManager", "[rtcKeepAlive] failed, " + th2.getMessage());
        }
    }

    public static synchronized String f(Context context) {
        synchronized (c.class) {
            if (System.currentTimeMillis() - f3379m < f3380n * 1000) {
                return f3378l;
            }
            String i9 = i(context);
            f3380n = !TextUtils.isEmpty(i9) ? 43200L : 360L;
            if (!TextUtils.isEmpty(i9)) {
                JSONObject jSONObject = new JSONObject(i9);
                String optString = jSONObject.optString("imei1", " ");
                String optString2 = jSONObject.optString("imei2", " ");
                String optString3 = jSONObject.optString("joad", " ");
                String optString4 = jSONObject.optString("android_id", " ");
                String optString5 = jSONObject.optString("manufacturer", " ");
                String optString6 = jSONObject.optString(DeviceRequestsHelper.DEVICE_INFO_MODEL, " ");
                String a10 = h.a();
                String optString7 = jSONObject.optString(TPDownloadProxyEnum.USER_OS_VERSION, " ");
                String optString8 = jSONObject.optString("language", " ");
                DisplayMetrics a11 = j.a(context);
                i9 = optString + "$$" + optString2 + "$$" + optString3 + "$$" + optString4 + "$$" + optString5 + "$$" + optString6 + "$$" + a10 + "$$" + optString7 + "$$" + optString8 + "$$" + a11.widthPixels + "$$" + a11.heightPixels;
            }
            f3378l = i9;
            f3379m = System.currentTimeMillis();
            return i9;
        }
    }

    private boolean f() {
        return JPushConstants.SDK_VERSION_CODE >= 410 ? JPushConstants.IS_HB_PERIOD_ENABLE : this.f3387i;
    }

    private String g(Context context) {
        if (JCoreHelper.getJCoreSDKVersionInt() < 266) {
            return "-4";
        }
        if (System.currentTimeMillis() - this.f3389k < AuthenticationTokenClaims.MAX_TIME_SINCE_TOKEN_ISSUED) {
            return this.f3388j;
        }
        String h10 = h(context);
        this.f3388j = h10;
        this.f3389k = System.currentTimeMillis();
        return h10;
    }

    private boolean g() {
        return this.f3384f && this.f3381c && f();
    }

    private static String h(Context context) {
        Object onEvent = JCoreManager.onEvent(context, JPushConstants.SDK_TYPE, 85, null, null, new Object[0]);
        return onEvent instanceof String ? (String) onEvent : "";
    }

    private boolean h() {
        int i9 = this.f3382d;
        long currentTimeMillis = System.currentTimeMillis() - this.f3386h;
        return i9 > 0 ? currentTimeMillis < ((long) (this.f3382d + (-4))) * 1000 : currentTimeMillis < 18000;
    }

    private static String i(Context context) {
        Object onEvent = JCoreManager.onEvent(context, JPushConstants.SDK_TYPE, 86, null, null, new Object[0]);
        return onEvent instanceof JSONObject ? ((JSONObject) onEvent).toString() : "";
    }

    public synchronized void a(Context context) {
        if (this.f3385g) {
            return;
        }
        this.f3383e = 0;
        Logger.d("InAppHbPeriodManager", "start push period worker...");
        g.a().b();
        d.a().a(context, true);
        this.f3385g = true;
    }

    public void a(Context context, Bundle bundle) {
        long j10;
        if (cn.jpush.android.cache.a.d(context)) {
            Logger.dd("InAppHbPeriodManager", "[rtc] tcp has close by active");
            return;
        }
        boolean z10 = true;
        if (bundle != null) {
            z10 = bundle.getBoolean("force", true);
            j10 = bundle.getLong("delay_time", 0L);
        } else {
            j10 = 0;
        }
        if (j10 <= 0) {
            c(context, bundle);
        } else {
            g.a().b(1004, j10, this.f3394s);
        }
        Logger.i("InAppHbPeriodManager", "send rtc force=" + z10 + " delay=" + j10);
    }

    public void a(Context context, String str) {
        Logger.d("InAppHbPeriodManager", "trigger inapp heartbeat by event: " + str);
        if (TextUtils.isEmpty(str)) {
            return;
        }
        this.f3393r = str;
        a(context, "special_rtc", true, 0L);
    }

    public void a(Context context, String str, Bundle bundle) {
        Logger.d("InAppHbPeriodManager", "[doAction] action: " + str + ", userInAppHb: " + this.f3381c);
        a(context);
        JCoreHelper.normalExecutor(context, "InAppHbPeriodManager", new a(context, str, bundle));
    }

    public void a(Context context, String str, boolean z10, long j10) {
        try {
            Logger.d("InAppHbPeriodManager", "[sendRtcToTcp], action: " + str + ", force: " + z10 + ", delayTime: " + j10);
            Bundle bundle = new Bundle();
            bundle.putBoolean("force", z10);
            bundle.putLong("delay_time", j10 * 1000);
            a(context, str, bundle);
        } catch (Throwable th2) {
            Logger.ww("InAppHbPeriodManager", "sendRtcToTcp error:" + th2.getMessage());
        }
    }

    public void a(Context context, JSONObject jSONObject) {
        try {
            JSONObject jSONObject2 = jSONObject.getJSONObject("content");
            if (jSONObject2 != null) {
                int optInt = jSONObject2.optInt("inapp_next_time");
                Logger.d("InAppHbPeriodManager", "need request in app soon, next_time: " + optInt);
                a(context, "special_rtc", true, (long) Math.max(optInt, 0));
            }
        } catch (Throwable th2) {
            Logger.w("InAppHbPeriodManager", "[handleCtrlNextInAppCmd] error:" + th2.getMessage());
        }
    }

    public void a(Context context, boolean z10) {
        boolean z11 = JPushConstants.IS_HB_PERIOD_ENABLE;
        if (z11 && !z10) {
            d.a().a(context);
        } else if (!z11 && z10) {
            a(context);
            e();
            d.a().a(context, true);
        }
        this.f3387i = z10;
        JPushConstants.IS_HB_PERIOD_ENABLE = z10;
        cn.jpush.android.helper.c.a("NO MSGID", 1327, context);
        Logger.d("InAppHbPeriodManager", "user set HB Period status, enable: " + z10);
    }

    public void b() {
        int i9;
        int i10 = this.f3383e;
        int i11 = this.f3382d;
        if (i11 > 0) {
            if (i10 == 0) {
                i9 = i11 * 2;
            } else {
                int i12 = i10 * 2;
                int i13 = f3376a;
                if (i12 < i13) {
                    i9 = i10 * 2;
                } else {
                    this.f3383e = i13;
                }
            }
            this.f3383e = i9;
        }
        Logger.d("InAppHbPeriodManager", "updateHeartBeatInterval  -- current HeartBeatInterval = " + this.f3383e + ", old hbInterval: " + i10);
    }

    public void b(Context context) {
        this.f3384f = true;
        Logger.d("InAppHbPeriodManager", "send force rtc by loggined, delay time 3s");
        a(context, "special_rtc", true, 3L);
    }

    public void b(Context context, Bundle bundle) {
        if (bundle != null) {
            String string = bundle.getString("activity_name");
            int i9 = bundle.getInt(ServerProtocol.DIALOG_PARAM_STATE);
            boolean z10 = bundle.getBoolean("type");
            cn.jpush.android.t.d.a(string, i9, z10);
            this.f3392q = cn.jpush.android.t.d.a();
            boolean z11 = i9 == 1;
            Logger.d("InAppHbPeriodManager", "handleLifeResume, pageName: " + string + ", isEnter: " + z11 + ", isActivity: " + z10 + ", currentPageName: " + this.f3392q);
            if (a(z11)) {
                Logger.d("InAppHbPeriodManager", "send force rtc by page change, current page: " + this.f3392q);
                a(context, "special_rtc", true, 0L);
                this.f3390o = System.currentTimeMillis();
            }
        }
    }

    public void b(Context context, JSONObject jSONObject) {
        try {
            JSONObject jSONObject2 = jSONObject.getJSONObject("content");
            Logger.d("InAppHbPeriodManager", "handleCtrlHeartBeatCmd cmd content: " + jSONObject2);
            if (jSONObject2 != null) {
                boolean optBoolean = jSONObject2.optBoolean("use_inapp");
                this.f3381c = optBoolean;
                if (!optBoolean) {
                    d.a().a(context);
                    return;
                }
                int optInt = jSONObject2.optInt("inapp_interval");
                int optInt2 = jSONObject2.optInt("inapp_max_interval", f3376a);
                int i9 = f3376a;
                if (optInt2 <= i9) {
                    f3376a = i9;
                }
                f3376a = optInt2;
                if (optInt <= 0) {
                    Logger.w("InAppHbPeriodManager", "hb_interval is less than 0, will use 15s");
                    this.f3382d = 15;
                } else if (optInt >= optInt2 / 2) {
                    Logger.w("InAppHbPeriodManager", "hb_interval is more than " + f3376a + ", will use " + f3376a + NotifyType.SOUND);
                    this.f3382d = 0;
                } else {
                    Logger.w("InAppHbPeriodManager", "set ssp heartbeat interval:" + optInt);
                    this.f3382d = optInt;
                }
                a(context);
                d.a().a(context, true);
            }
        } catch (Throwable th2) {
            Logger.w("InAppHbPeriodManager", "[InAppHbPeriodManager] handleCtrlHeartBeatCmd error:" + th2);
        }
    }

    public int c() {
        Logger.d("InAppHbPeriodManager", "getHeartBeatInterval  -- current HeartBeatInterval = " + this.f3383e);
        int i9 = this.f3382d;
        if (i9 > 0) {
            int i10 = this.f3383e;
            return i10 == 0 ? i9 : i10;
        }
        return f3376a;
    }

    public void c(Context context) {
        Logger.d("InAppHbPeriodManager", "[onTcpDisconnected] hb cancel");
        if (g()) {
            d.a().a(context);
        }
        this.f3384f = false;
        this.f3385g = false;
        this.f3382d = 0;
    }

    public int d() {
        Logger.d("InAppHbPeriodManager", "getNextHbIntervalForLog  -- current HeartBeatInterval = " + this.f3383e);
        int i9 = this.f3382d;
        if (i9 > 0) {
            int i10 = this.f3383e;
            if (i10 == 0) {
                int i11 = i9 * 2;
                int i12 = f3376a;
                return i11 < i12 / 2 ? i9 * 2 : i12;
            }
            int i13 = i10 * 2;
            int i14 = f3376a;
            return i13 < i14 / 2 ? i10 * 2 : i14;
        }
        return f3376a;
    }

    public void d(Context context) {
        this.f3391p = System.currentTimeMillis();
        if (g()) {
            if (c() >= f3376a / 2 && this.f3382d > 0) {
                Logger.d("InAppHbPeriodManager", "change foreground hb large " + (f3376a / 2) + ", reset current hb");
                e();
            }
            if (System.currentTimeMillis() - this.f3390o >= 10000) {
                Logger.d("InAppHbPeriodManager", "send force rtc by change to foreground");
                a(context, "special_rtc", true, 0L);
                this.f3390o = System.currentTimeMillis();
            }
        }
    }

    public void e() {
        this.f3383e = 0;
        d.a().b();
    }

    public void e(Context context) {
        try {
            if (cn.jpush.android.t.d.d(context)) {
                Logger.d("InAppHbPeriodManager", "current page in black list, not send hb");
                long uid = JCoreHelper.getUid(context);
                cn.jpush.android.helper.c.a(uid + "", 1325, context);
                return;
            }
            int i9 = cn.jpush.android.o.b.f3177a;
            if (i9 != 2) {
                i9 = cn.jpush.android.af.a.k(context) ? 1 : 0;
                Logger.d("InAppHbPeriodManager", "send heartbeat local userType= " + cn.jpush.android.o.b.f3177a + ", use process importance to judge type: " + i9);
            }
            int i10 = i9;
            int i11 = cn.jpush.android.o.b.f3179c ? 1 : 0;
            byte g10 = cn.jpush.android.t.a.g(context);
            byte b10 = i.b(context);
            int a10 = i.a(context);
            String g11 = g(context);
            String f10 = f(context);
            StringBuilder sb2 = new StringBuilder();
            sb2.append(" $$");
            String str = " ";
            sb2.append(TextUtils.isEmpty(this.f3392q) ? " " : this.f3392q);
            sb2.append("$$");
            if (!TextUtils.isEmpty(this.f3393r)) {
                str = this.f3393r;
            }
            sb2.append(str);
            String sb3 = sb2.toString();
            Logger.d("InAppHbPeriodManager", "send status report - userType:" + i10 + ", supportInstall:" + i11 + ", sspLayoutVersion=" + a10 + " , suppprtINAPP:" + ((int) g10) + ", supportSSP: " + ((int) b10) + ", pkgIndex: " + g11 + ", devInfo: " + f10 + ", adInfo: " + sb3);
            JCoreHelper.sendRequest(context, JPushConstants.SDK_TYPE, 35, 5, 1L, 0L, cn.jpush.android.ac.c.a(i10, i11, 1, a10, g10, b10, g11, f10, sb3));
            this.f3393r = "";
            this.f3386h = System.currentTimeMillis();
        } catch (Throwable th2) {
            Logger.w("InAppHbPeriodManager", "send hb failed, error: " + th2.getMessage());
        }
    }
}
