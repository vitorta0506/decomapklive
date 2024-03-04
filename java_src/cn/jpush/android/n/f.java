package cn.jpush.android.n;

import android.content.Context;
import android.location.Location;
import android.location.LocationManager;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.Message;
import android.text.TextUtils;
import cn.jpush.android.af.j;
import cn.jpush.android.api.JPushInterface;
import cn.jpush.android.helper.JCoreHelper;
import cn.jpush.android.helper.Logger;
import cn.jpush.android.helper.g;
import cn.jpush.android.local.JPushConstants;
import com.huawei.hms.framework.common.hianalytics.CrashHianalyticsData;
import java.util.HashMap;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes.dex */
public class f {

    /* renamed from: a  reason: collision with root package name */
    private final LocationManager f3153a;

    /* renamed from: b  reason: collision with root package name */
    private Context f3154b;

    /* renamed from: c  reason: collision with root package name */
    private Handler f3155c;

    /* renamed from: e  reason: collision with root package name */
    private volatile a f3157e;

    /* renamed from: f  reason: collision with root package name */
    private volatile b f3158f;

    /* renamed from: d  reason: collision with root package name */
    private HashMap<String, JSONObject> f3156d = new HashMap<>();

    /* renamed from: g  reason: collision with root package name */
    private boolean f3159g = false;

    /* loaded from: classes.dex */
    public class a {

        /* renamed from: a  reason: collision with root package name */
        public long f3162a;

        /* renamed from: b  reason: collision with root package name */
        public double f3163b;

        /* renamed from: c  reason: collision with root package name */
        public double f3164c;

        public a() {
        }

        public void a(Context context) {
            String m10 = cn.jpush.android.cache.a.m(context);
            if (TextUtils.isEmpty(m10)) {
                return;
            }
            Logger.d("GeofencePullHelper", "last pull state:" + m10);
            try {
                a(new JSONObject(m10));
            } catch (JSONException e10) {
                e10.printStackTrace();
            }
        }

        public void a(Context context, JSONObject jSONObject) {
            if (jSONObject == null) {
                return;
            }
            Logger.d("GeofencePullHelper", "saveGeofenceLastPullState:" + jSONObject.toString());
            a(jSONObject);
            cn.jpush.android.cache.a.f(f.this.f3154b, jSONObject.toString());
        }

        public void a(JSONObject jSONObject) {
            f.this.f3157e.f3163b = jSONObject.optDouble("lat", 200.0d);
            f.this.f3157e.f3164c = jSONObject.optDouble("lng", 200.0d);
            f.this.f3157e.f3162a = jSONObject.optLong(CrashHianalyticsData.TIME, 0L);
        }
    }

    /* loaded from: classes.dex */
    public class b {

        /* renamed from: a  reason: collision with root package name */
        public int f3166a = 1800;

        /* renamed from: b  reason: collision with root package name */
        public int f3167b = 10800;

        /* renamed from: c  reason: collision with root package name */
        public int f3168c = 900;

        /* renamed from: d  reason: collision with root package name */
        public int f3169d = 20;

        public b() {
        }

        private void a(JSONObject jSONObject) {
            f.this.f3158f.f3166a = jSONObject.optInt("minInterval", f.this.f3158f.f3166a);
            f.this.f3158f.f3167b = jSONObject.optInt("nextInterval", f.this.f3158f.f3167b);
            f.this.f3158f.f3168c = jSONObject.optInt("minLBSInterval", f.this.f3158f.f3168c);
            f.this.f3158f.f3169d = jSONObject.optInt("minLBSKilo", f.this.f3158f.f3169d);
        }

        private void a(JSONObject jSONObject, JSONObject jSONObject2, String str, int i9) {
            if (jSONObject.has(str)) {
                jSONObject2.put(str, i9);
            }
        }

        public void a(Context context) {
            String l10 = cn.jpush.android.cache.a.l(context);
            if (TextUtils.isEmpty(l10)) {
                return;
            }
            Logger.d("GeofencePullHelper", "pull limit:" + l10);
            try {
                a(new JSONObject(l10));
            } catch (Throwable unused) {
            }
        }

        public void a(Context context, JSONObject jSONObject) {
            if (jSONObject == null) {
                return;
            }
            try {
                a(jSONObject);
                JSONObject jSONObject2 = new JSONObject();
                a(jSONObject, jSONObject2, "minInterval", f.this.f3158f.f3166a);
                a(jSONObject, jSONObject2, "nextInterval", f.this.f3158f.f3167b);
                a(jSONObject, jSONObject2, "minLBSInterval", f.this.f3158f.f3168c);
                a(jSONObject, jSONObject2, "minLBSKilo", f.this.f3158f.f3169d);
                cn.jpush.android.cache.a.e(context, jSONObject2.toString());
            } catch (Throwable unused) {
                Logger.d("GeofencePullHelper", "save limit failed");
            }
        }
    }

    public f(Context context) {
        Context applicationContext = context.getApplicationContext();
        this.f3154b = applicationContext;
        this.f3153a = (LocationManager) applicationContext.getSystemService("location");
        c();
        i();
        j();
    }

    private void a(double d10, double d11) {
        try {
            JSONObject jSONObject = new JSONObject();
            jSONObject.put("lat", d10);
            jSONObject.put("lng", d11);
            jSONObject.put(CrashHianalyticsData.TIME, System.currentTimeMillis() / 1000);
            long a10 = g.a();
            Logger.dd("GeofencePullHelper", "will send report geo request:" + jSONObject + ",requestid:" + a10);
            HashMap<String, JSONObject> hashMap = this.f3156d;
            StringBuilder sb2 = new StringBuilder();
            sb2.append(a10);
            sb2.append("");
            hashMap.put(sb2.toString(), jSONObject);
            JCoreHelper.sendRequest(this.f3154b, JPushConstants.SDK_TYPE, 37, 1, a10, 0L, cn.jpush.android.ac.c.c(jSONObject.toString()));
        } catch (Throwable th2) {
            Logger.dd("GeofencePullHelper", "send report geo request failed:" + th2.getMessage());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(long j10) {
        StringBuilder sb2 = new StringBuilder();
        sb2.append("pull geofence after ");
        long j11 = j10 * 1000;
        sb2.append(j11);
        sb2.append("ms");
        Logger.dd("GeofencePullHelper", sb2.toString());
        Handler handler = this.f3155c;
        if (handler == null) {
            return;
        }
        if (handler.hasMessages(1000)) {
            this.f3155c.removeMessages(1000);
        }
        this.f3155c.sendEmptyMessageDelayed(1000, j11);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void b(long j10) {
        StringBuilder sb2 = new StringBuilder();
        sb2.append("compile loc after ");
        long j11 = j10 * 1000;
        sb2.append(j11);
        sb2.append("ms");
        Logger.dd("GeofencePullHelper", sb2.toString());
        Handler handler = this.f3155c;
        if (handler == null) {
            return;
        }
        if (handler.hasMessages(1002)) {
            this.f3155c.removeMessages(1002);
        }
        this.f3155c.sendEmptyMessageDelayed(1002, j11);
    }

    private void c() {
        try {
            HandlerThread handlerThread = new HandlerThread("jg_gph_thread") { // from class: cn.jpush.android.n.f.1
                @Override // android.os.HandlerThread, java.lang.Thread, java.lang.Runnable
                public void run() {
                    try {
                        super.run();
                    } catch (RuntimeException e10) {
                        Logger.e("GeofencePullHelper", "handler thread run e:" + e10 + "  t=" + Thread.currentThread().getName() + "_" + Thread.currentThread().getId());
                    }
                }
            };
            handlerThread.start();
            this.f3155c = new Handler(handlerThread.getLooper()) { // from class: cn.jpush.android.n.f.2
                /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
                @Override // android.os.Handler
                public void handleMessage(Message message) {
                    switch (message.what) {
                        case 1000:
                            f fVar = f.this;
                            fVar.a(fVar.f3158f.f3167b);
                            break;
                        case 1001:
                            break;
                        case 1002:
                            if (f.this.g()) {
                                f.this.a(0L);
                            }
                            f fVar2 = f.this;
                            fVar2.b(fVar2.f3158f.f3168c);
                            return;
                        default:
                            return;
                    }
                    f.this.f();
                }
            };
        } catch (Throwable th2) {
            Logger.ww("GeofencePullHelper", "init geofence pull handler failed:" + th2);
        }
    }

    private void d() {
        Logger.dd("GeofencePullHelper", "start schedule geofence pull");
        a((h() || g()) ? 0L : this.f3158f.f3167b);
        b(this.f3158f.f3168c);
    }

    private void e() {
        Logger.dd("GeofencePullHelper", "stop schedule geofence pull");
        Handler handler = this.f3155c;
        if (handler == null) {
            return;
        }
        if (handler.hasMessages(1000)) {
            this.f3155c.removeMessages(1000);
        }
        if (this.f3155c.hasMessages(1001)) {
            this.f3155c.removeMessages(1001);
        }
        if (this.f3155c.hasMessages(1002)) {
            this.f3155c.removeMessages(1002);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void f() {
        Logger.dd("GeofencePullHelper", "try pull...");
        Location a10 = c.a(this.f3154b, this.f3153a);
        if (a10 == null) {
            Logger.dd("GeofencePullHelper", "stop pull,get loction failed");
        } else {
            a(a10.getLatitude(), a10.getLongitude());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean g() {
        Location a10 = c.a(this.f3154b, this.f3153a);
        if (a10 != null) {
            double a11 = j.a(a10.getLongitude(), a10.getLatitude(), this.f3157e.f3164c, this.f3157e.f3163b);
            Logger.d("GeofencePullHelper", "check current distance to last pull distance:" + a11 + ",lbsKilo:" + (this.f3158f.f3169d * 1000));
            if (a11 > this.f3158f.f3169d * 1000) {
                return true;
            }
        }
        Logger.dd("GeofencePullHelper", "loc limit");
        return false;
    }

    private boolean h() {
        long currentTimeMillis = System.currentTimeMillis() / 1000;
        long j10 = this.f3157e.f3162a;
        Logger.dd("GeofencePullHelper", "lastPullTime:" + j10 + ",currentTime:" + currentTimeMillis + ",minInterval:" + this.f3158f.f3166a);
        if (currentTimeMillis - j10 < this.f3158f.f3166a) {
            Logger.dd("GeofencePullHelper", "time limit");
            return false;
        }
        return true;
    }

    private void i() {
        this.f3157e = new a();
        this.f3157e.a(this.f3154b);
    }

    private void j() {
        this.f3158f = new b();
        this.f3158f.a(this.f3154b);
        this.f3159g = cn.jpush.android.cache.a.k(this.f3154b);
    }

    public void a() {
        Logger.d("GeofencePullHelper", "onLogin");
        if (this.f3159g) {
            d();
        } else {
            Logger.dd("GeofencePullHelper", "do not support pull");
        }
    }

    public void a(long j10, int i9, d dVar) {
        String str;
        StringBuilder sb2;
        String str2;
        HashMap<String, JSONObject> hashMap = this.f3156d;
        JSONObject remove = hashMap.remove(j10 + "");
        if (i9 == JPushInterface.ErrorCode.TIMEOUT) {
            sb2 = new StringBuilder();
            str2 = "pull geo is timeout,requestid:";
        } else if (remove != null) {
            JSONObject a10 = dVar.a();
            if (a10 == null) {
                str = "onPullResponse empty pull response";
                Logger.dd("GeofencePullHelper", str);
            }
            this.f3158f.a(this.f3154b, a10);
            JSONArray b10 = dVar.b();
            if (b10 == null) {
                b10 = new JSONArray();
            }
            Logger.dd("GeofencePullHelper", "onPullResponse:" + b10);
            if (b10.length() == 0) {
                this.f3159g = false;
                cn.jpush.android.cache.a.c(this.f3154b, false);
                e();
            }
            this.f3157e.a(this.f3154b, remove);
            e.a().a(b10);
            cn.jpush.android.n.a.a(this.f3154b, b10.toString());
            return;
        } else {
            sb2 = new StringBuilder();
            str2 = "can not find request from requestid:";
        }
        sb2.append(str2);
        sb2.append(j10);
        str = sb2.toString();
        Logger.dd("GeofencePullHelper", str);
    }

    public void a(cn.jpush.android.n.b bVar) {
        if (bVar == null) {
            return;
        }
        int a10 = bVar.a();
        Logger.d("GeofencePullHelper", "control pull geo type:" + a10);
        if (this.f3159g ^ (a10 == 1)) {
            boolean z10 = a10 == 1;
            this.f3159g = z10;
            cn.jpush.android.cache.a.c(this.f3154b, z10);
            if (this.f3159g) {
                d();
            } else {
                e();
            }
        }
    }

    public void b() {
        Logger.d("GeofencePullHelper", "onTcpDisconnected");
        e();
    }
}
