package cn.jpush.android.b;

import android.content.Context;
import android.location.Location;
import android.location.LocationListener;
import android.location.LocationManager;
import android.os.Build;
import android.os.Bundle;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.Message;
import android.text.TextUtils;
import cn.jpush.android.af.j;
import cn.jpush.android.helper.Logger;
import cn.jpush.android.n.e;
import com.guochao.faceshow.aaspring.utils.Language;
import com.tencent.thumbplayer.core.thirdparties.LocalCache;
import java.util.Date;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.concurrent.atomic.AtomicBoolean;
import org.light.utils.FileUtils;
/* loaded from: classes.dex */
public class a extends c {

    /* renamed from: b  reason: collision with root package name */
    private long f2940b;

    /* renamed from: c  reason: collision with root package name */
    private LocationManager f2941c;

    /* renamed from: d  reason: collision with root package name */
    private Handler f2942d;

    /* renamed from: e  reason: collision with root package name */
    private long f2943e;

    /* renamed from: f  reason: collision with root package name */
    private long f2944f;

    /* renamed from: g  reason: collision with root package name */
    private String f2945g;

    /* renamed from: h  reason: collision with root package name */
    private boolean f2946h;

    /* renamed from: i  reason: collision with root package name */
    private LocationListener f2947i;

    /* renamed from: j  reason: collision with root package name */
    private final AtomicBoolean f2948j;

    public a(Context context) {
        super(context);
        this.f2943e = 900000L;
        this.f2944f = 20000L;
        this.f2946h = false;
        this.f2947i = new LocationListener() { // from class: cn.jpush.android.b.a.1
            @Override // android.location.LocationListener
            public void onLocationChanged(Location location) {
                a.this.f2941c.removeUpdates(this);
                a.this.f2948j.set(false);
                a.this.a(location);
            }

            @Override // android.location.LocationListener
            public void onProviderDisabled(String str) {
            }

            @Override // android.location.LocationListener
            public void onProviderEnabled(String str) {
            }

            @Override // android.location.LocationListener
            public void onStatusChanged(String str, int i9, Bundle bundle) {
            }
        };
        this.f2948j = new AtomicBoolean();
        this.f2941c = (LocationManager) context.getSystemService("location");
        this.f2943e = cn.jpush.android.cache.a.c(context, 900000L);
        this.f2940b = cn.jpush.android.cache.a.c(context, -1L);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(Location location) {
        Logger.dd("CustomGeofenAction", "current location:" + location);
        Handler handler = this.f2942d;
        if (handler != null && handler.hasMessages(1001)) {
            this.f2942d.removeMessages(1001);
        }
        if (location != null && e.a().c() > 0) {
            double longitude = location.getLongitude();
            double latitude = location.getLatitude();
            LinkedHashMap<String, b> b10 = e.a().b();
            Iterator<Map.Entry<String, b>> it = b10.entrySet().iterator();
            boolean z10 = false;
            while (it.hasNext()) {
                b value = it.next().getValue();
                if (value.f2956e * 1000 <= System.currentTimeMillis()) {
                    Logger.dd("CustomGeofenAction", "Out of date geofence " + value.f2952a);
                    it.remove();
                    e.a().a(value);
                } else {
                    Iterator<Map.Entry<String, b>> it2 = it;
                    double a10 = j.a(longitude, latitude, value.f2957f, value.f2958g);
                    Logger.dd("CustomGeofenAction", value.f2952a + " distance to center:" + a10);
                    long j10 = value.f2953b;
                    String str = a10 <= ((double) j10) ? Language.INDONESIA : "out";
                    if (Math.abs(a10 - j10) < 1000.0d) {
                        z10 = true;
                    }
                    Logger.d("CustomGeofenAction", "lastStatus:" + value.f2959h + ",currentStatus:" + str);
                    Logger.d("CustomGeofenAction", "geofence status :" + value.f2959h + ",currentStatus:" + str + ",geoStatus:" + str);
                    if ((value.f2954c.equals("inside") || !str.equals(value.f2959h)) && (!value.f2954c.equals("inside") || str != "out")) {
                        if ((value.f2954c.equals("inside") || (value.f2959h != null && str.equals(value.f2954c))) && e(value)) {
                            d(value);
                            c(value);
                            cn.jpush.android.n.a.a(this.f2972a, value.a().toString(), latitude, longitude);
                            if (!value.f2955d) {
                                Logger.dd("CustomGeofenAction", "No repeat geofence " + value.f2952a);
                                b10.remove(value.f2952a);
                                e.a().a(value);
                            }
                        }
                        value.f2959h = str;
                        e.a().a(value.f2952a, value.a(), false);
                    }
                    it = it2;
                }
            }
            if (this.f2940b == -1) {
                long j11 = z10 ? 180000 : 900000;
                if (this.f2943e != j11) {
                    this.f2943e = j11;
                    Logger.dd("CustomGeofenAction", "need update scan peroid to:" + this.f2943e);
                    b(j11);
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void b(long j10) {
        Logger.dd("CustomGeofenAction", "Scan geofence after " + j10 + "ms");
        Handler handler = this.f2942d;
        if (handler == null) {
            return;
        }
        if (handler.hasMessages(1000)) {
            this.f2942d.removeMessages(1000);
        }
        this.f2942d.sendEmptyMessageDelayed(1000, j10);
    }

    private void c() {
        try {
            HandlerThread handlerThread = new HandlerThread("jg_cgf_thread") { // from class: cn.jpush.android.b.a.2
                @Override // android.os.HandlerThread, java.lang.Thread, java.lang.Runnable
                public void run() {
                    try {
                        super.run();
                    } catch (RuntimeException e10) {
                        Logger.e("CustomGeofenAction", "handler thread run e:" + e10 + "  t=" + Thread.currentThread().getName() + "_" + Thread.currentThread().getId());
                    }
                }
            };
            handlerThread.start();
            this.f2942d = new Handler(handlerThread.getLooper()) { // from class: cn.jpush.android.b.a.3
                /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
                @Override // android.os.Handler
                public void handleMessage(Message message) {
                    String str;
                    switch (message.what) {
                        case 1000:
                            Logger.d("CustomGeofenAction", "period task tid " + Thread.currentThread().getId());
                            a aVar = a.this;
                            aVar.b(aVar.f2943e);
                            break;
                        case 1001:
                            a.this.d();
                            try {
                                if (a.this.f2945g == null || !a.this.f2945g.equals("gps")) {
                                    str = "Network provider time out!";
                                } else {
                                    Logger.dd("CustomGeofenAction", "GPS provider time out!");
                                    a.this.f2945g = "network";
                                    if (a.this.f2941c.isProviderEnabled(a.this.f2945g)) {
                                        a.this.f2941c.requestLocationUpdates(a.this.f2945g, 2000L, 0.0f, a.this.f2947i);
                                        a.this.f2942d.sendEmptyMessageDelayed(1001, a.this.f2944f / 2);
                                        return;
                                    }
                                    str = "Network provider is disabled";
                                }
                                Logger.dd("CustomGeofenAction", str);
                            } catch (Throwable th2) {
                                Logger.dd("CustomGeofenAction", "request location error#" + th2);
                            }
                            a.this.f2948j.set(false);
                            return;
                        case 1002:
                            break;
                        default:
                            return;
                    }
                    a.this.e();
                }
            };
        } catch (Throwable th2) {
            Logger.ww("CustomGeofenAction", "init geofence handler failed:" + th2);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void d() {
        String str;
        try {
            LocationListener locationListener = this.f2947i;
            if (locationListener != null) {
                LocationManager locationManager = this.f2941c;
                if (locationManager != null) {
                    locationManager.removeUpdates(locationListener);
                }
                str = "locationManager is null , do nothing!";
            } else {
                str = "Location listener is null , do nothing!";
            }
            Logger.w("CustomGeofenAction", str);
        } catch (Throwable th2) {
            Logger.w("CustomGeofenAction", "remove location listener failed  e:" + th2.getMessage());
        }
    }

    private void d(b bVar) {
        long currentTimeMillis = System.currentTimeMillis();
        bVar.f2966o = currentTimeMillis;
        Date date = new Date(currentTimeMillis);
        String format = j.a("yyyy-DDD").format(date);
        if (format.equals(bVar.f2969r)) {
            bVar.f2970s++;
        } else {
            bVar.f2969r = format;
            bVar.f2970s = 1;
        }
        String format2 = j.a("yyyy-ww").format(date);
        if (format2.equals(bVar.f2967p)) {
            bVar.f2968q++;
            return;
        }
        bVar.f2967p = format2;
        bVar.f2968q = 1;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void e() {
        Logger.d("CustomGeofenAction", "try locate...");
        if (!cn.jpush.android.n.c.b(this.f2972a, this.f2941c)) {
            Logger.dd("CustomGeofenAction", "No enabled provider");
            return;
        }
        Logger.d("CustomGeofenAction", "sdk int:" + Build.VERSION.SDK_INT + ",targetSdkVersion:" + this.f2972a.getApplicationInfo().targetSdkVersion);
        if (e.a().c() <= 0) {
            a();
        } else if (this.f2948j.get()) {
            Logger.d("CustomGeofenAction", "isLocating...");
        } else {
            f();
        }
    }

    private boolean e(b bVar) {
        StringBuilder sb2;
        int i9;
        String sb3;
        if (bVar.f2966o <= 0) {
            return true;
        }
        if (bVar.f2955d) {
            if (bVar.f2965n <= 0 && bVar.f2954c.equals("inside")) {
                bVar.f2965n = LocalCache.TIME_HOUR;
            }
            long currentTimeMillis = System.currentTimeMillis();
            int i10 = bVar.f2965n;
            if (i10 > 0) {
                long j10 = bVar.f2966o;
                if (j10 > 0 && currentTimeMillis < j10 + (i10 * 1000)) {
                    sb2 = new StringBuilder();
                    sb2.append("in ");
                    sb2.append(bVar.f2965n);
                    sb2.append("s, can't repeat geofence");
                    sb3 = sb2.toString();
                }
            }
            if (bVar.f2964m > 0 && !TextUtils.isEmpty(bVar.f2969r)) {
                if (bVar.f2969r.equals(j.a("yyyy-DDD").format(new Date(currentTimeMillis))) && bVar.f2970s >= bVar.f2964m) {
                    sb2 = new StringBuilder();
                    sb2.append("today already repeat enough:");
                    sb2.append(bVar.f2970s);
                    sb2.append(FileUtils.RES_PREFIX_STORAGE);
                    i9 = bVar.f2964m;
                    sb2.append(i9);
                    sb3 = sb2.toString();
                }
            }
            if (bVar.f2963l > 0 && !TextUtils.isEmpty(bVar.f2967p)) {
                if (bVar.f2967p.equals(j.a("yyyy-ww").format(new Date(currentTimeMillis))) && bVar.f2968q >= bVar.f2963l) {
                    sb2 = new StringBuilder();
                    sb2.append("this week already repeat enough:");
                    sb2.append(bVar.f2968q);
                    sb2.append(FileUtils.RES_PREFIX_STORAGE);
                    i9 = bVar.f2963l;
                    sb2.append(i9);
                    sb3 = sb2.toString();
                }
            }
            return true;
        }
        sb3 = "can't repeat geofence";
        Logger.dd("CustomGeofenAction", sb3);
        return false;
    }

    private void f() {
        String str;
        try {
            LocationManager locationManager = this.f2941c;
            if (locationManager == null) {
                Logger.ww("CustomGeofenAction", "locationManager is null");
                return;
            }
            Location a10 = cn.jpush.android.n.c.a(this.f2972a, locationManager);
            if (System.currentTimeMillis() - (a10 != null ? a10.getTime() : 0L) < 30000) {
                StringBuilder sb2 = new StringBuilder();
                sb2.append("need not restart gpslocation,the time with last:");
                sb2.append(System.currentTimeMillis() - (a10 != null ? a10.getTime() : 0L));
                Logger.dd("CustomGeofenAction", sb2.toString());
                a(a10);
                return;
            }
            this.f2945g = null;
            if (this.f2941c.isProviderEnabled("gps")) {
                this.f2945g = "gps";
            } else if (this.f2941c.isProviderEnabled("network")) {
                this.f2945g = "network";
            }
            Logger.d("CustomGeofenAction", "provider " + this.f2945g);
            if (TextUtils.isEmpty(this.f2945g)) {
                Logger.dd("CustomGeofenAction", "not gps nor network provider,stop scan geofence");
                return;
            }
            this.f2948j.set(true);
            this.f2941c.requestLocationUpdates(this.f2945g, 2000L, 0.0f, this.f2947i);
            this.f2942d.sendEmptyMessageDelayed(1001, this.f2944f);
        } catch (SecurityException unused) {
            str = "No suitable permission when get last known location!";
            Logger.ww("CustomGeofenAction", str);
        } catch (Throwable th2) {
            str = "The provider is illegal argument!" + th2;
            Logger.ww("CustomGeofenAction", str);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // cn.jpush.android.b.c
    public synchronized void a() {
        Logger.dd("CustomGeofenAction", "geofence size:" + e.a().c());
        Logger.dd("CustomGeofenAction", "stop listen geofence");
        if (this.f2946h) {
            Handler handler = this.f2942d;
            if (handler != null) {
                handler.removeMessages(1000);
            }
            this.f2946h = false;
        }
    }

    @Override // cn.jpush.android.b.c
    public void a(long j10) {
        Logger.dd("CustomGeofenAction", "Set geofence interval " + j10);
        this.f2943e = j10;
        this.f2940b = j10;
        cn.jpush.android.cache.a.b(this.f2972a, j10);
    }

    @Override // cn.jpush.android.b.c
    protected void a(b bVar) {
        Handler handler;
        Logger.dd("CustomGeofenAction", "Geofence create success, id=" + bVar.f2952a);
        if (!this.f2946h || (handler = this.f2942d) == null) {
            return;
        }
        handler.sendEmptyMessage(1002);
    }

    @Override // cn.jpush.android.b.c
    protected void a(b bVar, b bVar2) {
        Handler handler;
        if (bVar != null) {
            Logger.dd("CustomGeofenAction", "Geofence update success, id=" + bVar.f2952a);
        }
        if (!this.f2946h || (handler = this.f2942d) == null) {
            return;
        }
        handler.sendEmptyMessage(1002);
    }

    @Override // cn.jpush.android.b.c
    public synchronized void b() {
        Logger.dd("CustomGeofenAction", "start listen geofence");
        if (!cn.jpush.android.cache.a.n(this.f2972a)) {
            Logger.ww("CustomGeofenAction", "lbs is disable!");
        } else if (this.f2946h) {
            Logger.ii("CustomGeofenAction", "geofence is running!");
        } else if (e.a().c() == 0) {
            Logger.dd("CustomGeofenAction", "No geofence,not need listen");
        } else {
            if (this.f2942d == null) {
                c();
            }
            b(0L);
            this.f2946h = true;
        }
    }

    @Override // cn.jpush.android.b.c
    protected void b(b bVar) {
        Logger.dd("CustomGeofenAction", "Geofence delete success, id=" + bVar.f2952a);
    }
}
