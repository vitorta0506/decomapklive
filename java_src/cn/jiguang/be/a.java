package cn.jiguang.be;

import android.content.Context;
import android.os.Build;
import cn.jiguang.az.e;
import com.tencent.rtmp.TXLiveConstants;
import java.util.concurrent.atomic.AtomicBoolean;
/* loaded from: classes.dex */
public class a {

    /* renamed from: t  reason: collision with root package name */
    private static volatile a f2448t;

    /* renamed from: u  reason: collision with root package name */
    private static final Object f2449u = new Object();

    /* renamed from: v  reason: collision with root package name */
    private static String f2450v;

    /* renamed from: a  reason: collision with root package name */
    public String f2451a;

    /* renamed from: b  reason: collision with root package name */
    public String f2452b;

    /* renamed from: c  reason: collision with root package name */
    public String f2453c;

    /* renamed from: d  reason: collision with root package name */
    public String f2454d;

    /* renamed from: e  reason: collision with root package name */
    public String f2455e;

    /* renamed from: f  reason: collision with root package name */
    public String f2456f;

    /* renamed from: g  reason: collision with root package name */
    public int f2457g;

    /* renamed from: h  reason: collision with root package name */
    public String f2458h;

    /* renamed from: i  reason: collision with root package name */
    public String f2459i;

    /* renamed from: j  reason: collision with root package name */
    public String f2460j;

    /* renamed from: k  reason: collision with root package name */
    public String f2461k;

    /* renamed from: l  reason: collision with root package name */
    public String f2462l;

    /* renamed from: m  reason: collision with root package name */
    public String f2463m;

    /* renamed from: n  reason: collision with root package name */
    public String f2464n;

    /* renamed from: o  reason: collision with root package name */
    public String f2465o;

    /* renamed from: p  reason: collision with root package name */
    public String f2466p;

    /* renamed from: q  reason: collision with root package name */
    public String f2467q;

    /* renamed from: r  reason: collision with root package name */
    public String f2468r;

    /* renamed from: s  reason: collision with root package name */
    private transient AtomicBoolean f2469s = new AtomicBoolean(false);

    private a(Context context) {
        b(context);
    }

    public static a a(Context context) {
        if (f2448t == null) {
            synchronized (f2449u) {
                if (f2448t == null) {
                    f2448t = new a(context);
                }
            }
        }
        return f2448t;
    }

    private String a(String str) {
        if (str != null) {
            return str.trim();
        }
        return null;
    }

    private void b(Context context) {
        if (this.f2469s.get() || context == null) {
            return;
        }
        StringBuilder sb2 = new StringBuilder();
        sb2.append(a(Build.VERSION.RELEASE));
        sb2.append(",");
        int i9 = Build.VERSION.SDK_INT;
        sb2.append(i9);
        this.f2452b = sb2.toString();
        if (cn.jiguang.i.a.a().d(2009)) {
            this.f2453c = a(Build.MODEL);
        }
        if (cn.jiguang.i.a.a().d(2001)) {
            this.f2454d = cn.jiguang.f.a.b(context, "gsm.version.baseband", "baseband");
        }
        if (cn.jiguang.i.a.a().d(2008)) {
            this.f2462l = a(Build.MANUFACTURER);
        }
        if (cn.jiguang.i.a.a().d(2002)) {
            this.f2464n = a(Build.BRAND);
        }
        if (cn.jiguang.i.a.a().d(TXLiveConstants.PLAY_EVT_GET_MESSAGE)) {
            this.f2458h = cn.jiguang.f.a.f(context);
        }
        if (cn.jiguang.i.a.a().d(2000)) {
            this.f2459i = cn.jiguang.f.a.i(context);
        }
        this.f2460j = " ";
        this.f2455e = a(Build.DEVICE);
        this.f2461k = a(Build.PRODUCT);
        this.f2463m = a(Build.FINGERPRINT);
        this.f2451a = c(context);
        this.f2456f = cn.jiguang.d.a.g(context);
        this.f2457g = cn.jiguang.f.a.e(context) ? 1 : 0;
        this.f2465o = cn.jiguang.f.a.f(context, "");
        Object a10 = e.a(context, "get_imei", null);
        if (a10 instanceof String) {
            this.f2466p = (String) a10;
        }
        this.f2467q = i9 + "";
        this.f2468r = context.getApplicationInfo().targetSdkVersion + "";
        this.f2469s.set(true);
    }

    private static String c(Context context) {
        if (f2450v == null) {
            try {
                String str = context.getPackageManager().getPackageInfo(context.getPackageName(), 0).versionName;
                if (str.length() > 30) {
                    str = str.substring(0, 30);
                }
                f2450v = str;
            } catch (Throwable unused) {
                cn.jiguang.as.d.d("DeviceInfo", "NO versionName defined in manifest.");
            }
        }
        String str2 = f2450v;
        return str2 == null ? "" : str2;
    }
}
