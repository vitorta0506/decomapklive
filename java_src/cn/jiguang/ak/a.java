package cn.jiguang.ak;

import android.content.Context;
import android.location.GpsStatus;
import android.location.Location;
import android.location.LocationManager;
import android.os.Handler;
import android.os.Looper;
import cn.jiguang.api.JCoreManager;
/* loaded from: classes.dex */
public class a {

    /* renamed from: a  reason: collision with root package name */
    protected Location f1898a;

    /* renamed from: b  reason: collision with root package name */
    public Context f1899b;

    /* renamed from: c  reason: collision with root package name */
    public f f1900c;

    /* renamed from: g  reason: collision with root package name */
    private LocationManager f1904g;

    /* renamed from: h  reason: collision with root package name */
    private boolean f1905h;

    /* renamed from: d  reason: collision with root package name */
    public long f1901d = 0;

    /* renamed from: e  reason: collision with root package name */
    public long f1902e = 0;

    /* renamed from: f  reason: collision with root package name */
    public int f1903f = 0;

    /* renamed from: i  reason: collision with root package name */
    private GpsStatus.Listener f1906i = new i(this);

    public a(Context context) {
        this.f1899b = JCoreManager.getAppContext(context);
        this.f1904g = (LocationManager) context.getSystemService("location");
    }

    private boolean a(Context context, String str) {
        try {
            return context.getPackageManager().checkPermission(str, context.getPackageName()) == 0;
        } catch (Throwable unused) {
            return false;
        }
    }

    private boolean a(Location location) {
        if (location == null) {
            return false;
        }
        return (location.getLatitude() == 0.0d && location.getLongitude() == 0.0d && location.getTime() == 0 && !location.hasAccuracy()) ? false : true;
    }

    private boolean c() {
        if (d()) {
            if (cn.jiguang.f.a.h(this.f1899b, "com.huawei.android.hwouc")) {
                return true;
            }
            LocationManager locationManager = this.f1904g;
            if (locationManager != null) {
                if (a(locationManager.getLastKnownLocation("network"))) {
                    return true;
                }
            }
            return false;
        }
        return false;
    }

    private boolean d() {
        return cn.jiguang.o.d.a(this.f1899b, "android.permission.ACCESS_FINE_LOCATION") && cn.jiguang.o.d.a(this.f1899b, "android.permission.ACCESS_COARSE_LOCATION") && a(this.f1899b, "android.permission.ACCESS_FINE_LOCATION") && a(this.f1899b, "android.permission.ACCESS_COARSE_LOCATION");
    }

    /* JADX WARN: Can't wrap try/catch for region: R(12:7|(1:40)(1:11)|12|13|14|(2:16|17)(2:31|(2:33|34)(6:35|19|20|21|22|23))|18|19|20|21|22|23) */
    /* JADX WARN: Code restructure failed: missing block: B:34:0x0099, code lost:
        r3 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:35:0x009a, code lost:
        cn.jiguang.al.a.a("CellHelper", "getNeighborCell error:" + r3.getMessage());
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r1v3, types: [android.telephony.TelephonyManager] */
    /* JADX WARN: Type inference failed for: r7v12 */
    /* JADX WARN: Type inference failed for: r7v17 */
    /* JADX WARN: Type inference failed for: r7v18 */
    /* JADX WARN: Type inference failed for: r7v5, types: [boolean] */
    /* JADX WARN: Type inference failed for: r7v6 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private cn.jiguang.ak.b e() {
        /*
            Method dump skipped, instructions count: 240
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: cn.jiguang.ak.a.e():cn.jiguang.ak.b");
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public Location a(boolean z10) {
        try {
            if (this.f1904g != null && c()) {
                return z10 ? this.f1904g.getLastKnownLocation("gps") : this.f1904g.getLastKnownLocation("network");
            }
            return null;
        } catch (Throwable th2) {
            cn.jiguang.al.a.a("CellHelper", "getLocation error:" + th2);
            return null;
        }
    }

    public void a() {
        try {
            if (this.f1905h) {
                cn.jiguang.al.a.a("CellHelper", "g is on listening");
                return;
            }
            boolean b10 = d.a().b();
            boolean c10 = c();
            cn.jiguang.al.a.a("CellHelper", " init checkSafeStatus = " + b10 + " , deviceEnv=" + c10);
            if (b10 && this.f1904g != null && c10) {
                new Handler(Looper.getMainLooper()).post(new cn.jiguang.o.e() { // from class: cn.jiguang.ak.a.1
                    @Override // cn.jiguang.o.e
                    public void a() {
                        try {
                            a.this.f1904g.addGpsStatusListener(a.this.f1906i);
                        } catch (Throwable th2) {
                            cn.jiguang.al.a.d("CellHelper", "addGpsStatusListener error:" + th2);
                        }
                    }
                });
                this.f1905h = true;
                cn.jiguang.al.a.a("CellHelper", "g is start listening");
            }
        } catch (Throwable th2) {
            cn.jiguang.al.a.a("CellHelper", "init error:" + th2);
            this.f1905h = false;
        }
    }

    public void a(f fVar) {
        this.f1900c = fVar;
    }

    public void b() {
        try {
            b e10 = e();
            if (e10 != null) {
                this.f1900c.a(e10);
            }
        } catch (Throwable th2) {
            cn.jiguang.al.a.d("CellHelper", "startScanCell error:" + th2);
        }
    }
}
