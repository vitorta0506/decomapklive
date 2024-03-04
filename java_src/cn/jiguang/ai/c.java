package cn.jiguang.ai;

import android.content.Context;
import android.location.Location;
import android.location.LocationListener;
import android.location.LocationManager;
import android.os.Bundle;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.Looper;
import android.os.Message;
/* loaded from: classes.dex */
class c {

    /* renamed from: e  reason: collision with root package name */
    private static final Object f1864e = new Object();

    /* renamed from: h  reason: collision with root package name */
    private static c f1865h;

    /* renamed from: a  reason: collision with root package name */
    protected Handler f1866a;

    /* renamed from: b  reason: collision with root package name */
    private Context f1867b;

    /* renamed from: c  reason: collision with root package name */
    private LocationManager f1868c;

    /* renamed from: d  reason: collision with root package name */
    private cn.jiguang.aj.b f1869d;

    /* renamed from: f  reason: collision with root package name */
    private boolean f1870f;

    /* renamed from: g  reason: collision with root package name */
    private String f1871g;

    /* renamed from: i  reason: collision with root package name */
    private LocationListener f1872i = new LocationListener() { // from class: cn.jiguang.ai.c.1
        @Override // android.location.LocationListener
        public void onLocationChanged(Location location) {
            try {
                cn.jiguang.al.a.a("JLocationGps", "onLocationChanged:" + location + ",provider:" + c.this.f1871g);
                c.this.a(location);
                c.this.h();
            } catch (Throwable th2) {
                cn.jiguang.al.a.d("JLocationGps", "onLocationChanged failed:" + th2.getMessage());
            }
        }

        @Override // android.location.LocationListener
        public void onProviderDisabled(String str) {
            cn.jiguang.al.a.a("JLocationGps", "onProviderDisabled:" + str);
            c.this.h();
        }

        @Override // android.location.LocationListener
        public void onProviderEnabled(String str) {
            cn.jiguang.al.a.a("JLocationGps", "onProviderEnabled:" + str);
        }

        @Override // android.location.LocationListener
        public void onStatusChanged(String str, int i9, Bundle bundle) {
            cn.jiguang.al.a.a("JLocationGps", "onStatusChanged status:" + i9);
            if (i9 == 0) {
                c.this.h();
            }
        }
    };

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public class a extends Handler {
        public a(Looper looper) {
            super(looper);
        }

        @Override // android.os.Handler
        public void handleMessage(Message message) {
            String str;
            int i9 = 1001;
            switch (message.what) {
                case 1001:
                    try {
                        if (c.this.f1871g == null || !c.this.f1871g.equals("network")) {
                            cn.jiguang.al.a.d("JLocationGps", "get " + c.this.f1871g + " time out ");
                            c.this.h();
                        } else {
                            cn.jiguang.al.a.d("JLocationGps", "get gps with network time out ");
                            c.this.f1871g = "gps";
                            c.this.g();
                            c.this.f1868c.requestLocationUpdates(c.this.f1871g, 2000L, 0.0f, c.this.f1872i);
                            cn.jiguang.al.a.a("JLocationGps", "request " + c.this.f1871g + " location");
                            c.this.f1866a.sendEmptyMessageDelayed(1001, 10000L);
                        }
                        return;
                    } catch (Throwable th2) {
                        str = "when location time out " + th2.getMessage();
                        break;
                    }
                    break;
                case 1002:
                default:
                    return;
                case 1003:
                    try {
                        c.this.f1868c.requestLocationUpdates(c.this.f1871g, 2000L, 0.0f, c.this.f1872i);
                        cn.jiguang.al.a.a("JLocationGps", "request " + c.this.f1871g + " location");
                        c.this.f1866a.sendEmptyMessageDelayed(i9, 20000L);
                        return;
                    } catch (SecurityException unused) {
                        str = "No suitable permission when get last known location!";
                        break;
                    } catch (Throwable unused2) {
                        str = "The provider is illegal argument!";
                        break;
                    }
                case 1004:
                    cn.jiguang.al.a.a("JLocationGps", "LOAD_GPS_ACTION_REQUEST_ONLY_NETWORK");
                    i9 = 1005;
                    c.this.f1868c.requestLocationUpdates(c.this.f1871g, 2000L, 0.0f, c.this.f1872i);
                    cn.jiguang.al.a.a("JLocationGps", "request " + c.this.f1871g + " location");
                    c.this.f1866a.sendEmptyMessageDelayed(i9, 20000L);
                    return;
                case 1005:
                    str = "get only network " + c.this.f1871g + " time out ";
                    cn.jiguang.al.a.d("JLocationGps", str);
                    c.this.h();
                    return;
            }
        }
    }

    private c(Context context) {
        this.f1867b = context;
        this.f1868c = (LocationManager) context.getSystemService("location");
    }

    public static c a(Context context) {
        if (f1865h == null) {
            synchronized (f1864e) {
                if (f1865h == null) {
                    f1865h = new c(context);
                }
            }
        }
        return f1865h;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(Location location) {
        if (location == null) {
            this.f1869d = null;
            return;
        }
        cn.jiguang.al.a.a("JLocationGps", "updateGpsInfo location time:" + location.getTime());
        if (this.f1869d == null) {
            this.f1869d = new cn.jiguang.aj.b();
        }
        this.f1869d.f1886a = cn.jiguang.o.d.a(this.f1867b, location.getTime());
        this.f1869d.f1887b = location.getProvider();
        this.f1869d.f1888c = location.getLatitude();
        this.f1869d.f1889d = location.getLongitude();
        this.f1869d.f1891f = location.getBearing();
        this.f1869d.f1892g = location.getAccuracy();
    }

    private boolean a(Location location, Location location2) {
        if (location == null) {
            return false;
        }
        if (location2 == null) {
            return true;
        }
        long time = location.getTime() - location2.getTime();
        boolean z10 = time > 120000;
        boolean z11 = time < -120000;
        boolean z12 = time > 0;
        if (z10) {
            return true;
        }
        if (z11) {
            return false;
        }
        int accuracy = (int) (location.getAccuracy() - location2.getAccuracy());
        boolean z13 = accuracy > 0;
        boolean z14 = accuracy < 0;
        boolean z15 = accuracy > 200;
        boolean a10 = a(location.getProvider(), location2.getProvider());
        if (z14) {
            return true;
        }
        if (!z12 || z13) {
            return z12 && !z15 && a10;
        }
        return true;
    }

    private boolean a(String str, String str2) {
        return str == null ? str2 == null : str.equals(str2);
    }

    private void f() {
        try {
            if (this.f1866a == null) {
                HandlerThread handlerThread = new HandlerThread("jg_lcn_thread");
                handlerThread.start();
                this.f1866a = new a(handlerThread.getLooper());
            }
        } catch (Throwable th2) {
            cn.jiguang.al.a.f("JLocationGps", "start load loc-info failed - error:" + th2);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void g() {
        String str;
        try {
            LocationListener locationListener = this.f1872i;
            if (locationListener != null) {
                LocationManager locationManager = this.f1868c;
                if (locationManager != null) {
                    locationManager.removeUpdates(locationListener);
                }
                str = "locationManager is null , do nothing!";
            } else {
                str = "Location listener is null , do nothing!";
            }
            cn.jiguang.al.a.d("JLocationGps", str);
        } catch (Throwable th2) {
            cn.jiguang.al.a.d("JLocationGps", "remove location listener failed  e:" + th2.getMessage());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public synchronized void h() {
        cn.jiguang.al.a.a("JLocationGps", "gps will done");
        this.f1870f = true;
        g();
        Handler handler = this.f1866a;
        if (handler != null) {
            if (handler.hasMessages(1004)) {
                this.f1866a.removeMessages(1004);
            }
            if (this.f1866a.hasMessages(1003)) {
                this.f1866a.removeMessages(1003);
            }
            if (this.f1866a.hasMessages(1001)) {
                this.f1866a.removeMessages(1001);
            }
            if (this.f1866a.hasMessages(1005)) {
                this.f1866a.removeMessages(1005);
            }
            this.f1866a.getLooper().quit();
            this.f1866a = null;
        } else {
            cn.jiguang.al.a.e("JLocationGps", "cellLocationManager is null,please check it");
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public cn.jiguang.aj.b a() {
        return this.f1869d;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean b() {
        return this.f1870f;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void c() {
        String str;
        this.f1870f = false;
        this.f1869d = null;
        if (this.f1868c == null) {
            str = "get locationManager failed";
        } else {
            f();
            if (this.f1866a != null) {
                if (this.f1868c.isProviderEnabled("network")) {
                    this.f1871g = "network";
                } else if (!this.f1868c.isProviderEnabled("gps")) {
                    this.f1871g = "network";
                    this.f1866a.sendEmptyMessage(1004);
                    return;
                } else {
                    this.f1871g = "gps";
                }
                this.f1866a.sendEmptyMessage(1003);
                return;
            }
            str = " mAsyncHandler is empty";
        }
        cn.jiguang.al.a.d("JLocationGps", str);
        this.f1870f = true;
    }

    /* JADX WARN: Removed duplicated region for block: B:13:0x0032 A[Catch: all -> 0x0069, TryCatch #0 {all -> 0x0069, blocks: (B:3:0x0002, B:5:0x0020, B:13:0x0032, B:15:0x0041, B:8:0x0027), top: B:21:0x0002 }] */
    /* JADX WARN: Removed duplicated region for block: B:23:? A[ADDED_TO_REGION, RETURN, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public cn.jiguang.aj.b d() {
        /*
            r7 = this;
            java.lang.String r0 = "JLocationGps"
            android.location.LocationManager r1 = r7.f1868c     // Catch: java.lang.Throwable -> L69
            java.lang.String r2 = "gps"
            android.location.Location r1 = r1.getLastKnownLocation(r2)     // Catch: java.lang.Throwable -> L69
            android.location.LocationManager r2 = r7.f1868c     // Catch: java.lang.Throwable -> L69
            java.lang.String r3 = "network"
            android.location.Location r2 = r2.getLastKnownLocation(r3)     // Catch: java.lang.Throwable -> L69
            android.location.LocationManager r3 = r7.f1868c     // Catch: java.lang.Throwable -> L69
            java.lang.String r4 = "passive"
            android.location.Location r3 = r3.getLastKnownLocation(r4)     // Catch: java.lang.Throwable -> L69
            boolean r4 = r7.a(r1, r2)     // Catch: java.lang.Throwable -> L69
            if (r4 == 0) goto L27
            boolean r2 = r7.a(r1, r3)     // Catch: java.lang.Throwable -> L69
            if (r2 == 0) goto L2f
            goto L30
        L27:
            boolean r1 = r7.a(r2, r3)     // Catch: java.lang.Throwable -> L69
            if (r1 == 0) goto L2f
            r1 = r2
            goto L30
        L2f:
            r1 = r3
        L30:
            if (r1 == 0) goto L82
            long r2 = java.lang.System.currentTimeMillis()     // Catch: java.lang.Throwable -> L69
            long r4 = r1.getTime()     // Catch: java.lang.Throwable -> L69
            long r2 = r2 - r4
            r4 = 30000(0x7530, double:1.4822E-319)
            int r6 = (r2 > r4 ? 1 : (r2 == r4 ? 0 : -1))
            if (r6 >= 0) goto L82
            r7.a(r1)     // Catch: java.lang.Throwable -> L69
            java.lang.StringBuilder r1 = new java.lang.StringBuilder     // Catch: java.lang.Throwable -> L69
            r1.<init>()     // Catch: java.lang.Throwable -> L69
            java.lang.String r2 = "bestLocation:"
            r1.append(r2)     // Catch: java.lang.Throwable -> L69
            cn.jiguang.aj.b r2 = r7.f1869d     // Catch: java.lang.Throwable -> L69
            r1.append(r2)     // Catch: java.lang.Throwable -> L69
            java.lang.String r2 = ",curTime:"
            r1.append(r2)     // Catch: java.lang.Throwable -> L69
            long r2 = java.lang.System.currentTimeMillis()     // Catch: java.lang.Throwable -> L69
            r1.append(r2)     // Catch: java.lang.Throwable -> L69
            java.lang.String r1 = r1.toString()     // Catch: java.lang.Throwable -> L69
            cn.jiguang.al.a.a(r0, r1)     // Catch: java.lang.Throwable -> L69
            cn.jiguang.aj.b r0 = r7.f1869d     // Catch: java.lang.Throwable -> L69
            return r0
        L69:
            r1 = move-exception
            java.lang.StringBuilder r2 = new java.lang.StringBuilder
            r2.<init>()
            java.lang.String r3 = "loadLastGpsInfo failed: "
            r2.append(r3)
            java.lang.String r1 = r1.getMessage()
            r2.append(r1)
            java.lang.String r1 = r2.toString()
            cn.jiguang.al.a.d(r0, r1)
        L82:
            r0 = 0
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: cn.jiguang.ai.c.d():cn.jiguang.aj.b");
    }

    public boolean e() {
        String str;
        try {
            LocationManager locationManager = this.f1868c;
            if (locationManager != null) {
                if (!locationManager.isProviderEnabled("gps") && !this.f1868c.isProviderEnabled("network")) {
                    if (!this.f1868c.isProviderEnabled("passive")) {
                        return false;
                    }
                }
                return true;
            }
            return false;
        } catch (IllegalArgumentException unused) {
            str = "The provider [gps] is illegal argument!";
            cn.jiguang.al.a.d("JLocationGps", str);
            return false;
        } catch (SecurityException unused2) {
            str = "No suitable permission is present when get GPS_PROVIDER!";
            cn.jiguang.al.a.d("JLocationGps", str);
            return false;
        } catch (Exception unused3) {
            str = "The ILocationManager is null!";
            cn.jiguang.al.a.d("JLocationGps", str);
            return false;
        }
    }
}
