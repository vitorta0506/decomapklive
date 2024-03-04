package com.xiaomi.mipush.sdk;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.os.Build;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.os.Messenger;
import android.os.RemoteException;
import android.os.SystemClock;
import com.xiaomi.push.cz;
import com.xiaomi.push.da;
import com.xiaomi.push.db;
import com.xiaomi.push.df;
import com.xiaomi.push.di;
import com.xiaomi.push.dq;
import com.xiaomi.push.dt;
import com.xiaomi.push.du;
import com.xiaomi.push.ea;
import com.xiaomi.push.ef;
import com.xiaomi.push.h2;
import com.xiaomi.push.p3;
import com.xiaomi.push.service.r1;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
/* loaded from: classes5.dex */
public class w {

    /* renamed from: k  reason: collision with root package name */
    private static w f36300k = null;

    /* renamed from: l  reason: collision with root package name */
    private static boolean f36301l = false;

    /* renamed from: m  reason: collision with root package name */
    private static final ArrayList<a> f36302m = new ArrayList<>();

    /* renamed from: a  reason: collision with root package name */
    private boolean f36303a;

    /* renamed from: b  reason: collision with root package name */
    private Context f36304b;

    /* renamed from: d  reason: collision with root package name */
    private Messenger f36306d;

    /* renamed from: e  reason: collision with root package name */
    private Handler f36307e;

    /* renamed from: h  reason: collision with root package name */
    private long f36310h;

    /* renamed from: f  reason: collision with root package name */
    private List<Message> f36308f = new ArrayList();

    /* renamed from: g  reason: collision with root package name */
    private boolean f36309g = false;

    /* renamed from: i  reason: collision with root package name */
    private Intent f36311i = null;

    /* renamed from: j  reason: collision with root package name */
    private Integer f36312j = null;

    /* renamed from: c  reason: collision with root package name */
    private String f36305c = null;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes5.dex */
    public static class a<T extends ef<T, ?>> {

        /* renamed from: a  reason: collision with root package name */
        T f36313a;

        /* renamed from: b  reason: collision with root package name */
        cz f36314b;

        /* renamed from: c  reason: collision with root package name */
        boolean f36315c;

        a() {
        }
    }

    private w(Context context) {
        this.f36303a = false;
        this.f36307e = null;
        this.f36304b = context.getApplicationContext();
        this.f36303a = S();
        f36301l = V();
        this.f36307e = new x(this, Looper.getMainLooper());
        if (sf.e.i(context)) {
            r1.a(new z(this));
        }
        Intent K = K();
        if (K != null) {
            q(K);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Removed duplicated region for block: B:29:0x0064  */
    /* JADX WARN: Removed duplicated region for block: B:32:0x0071  */
    /* JADX WARN: Removed duplicated region for block: B:36:0x0088  */
    /* JADX WARN: Removed duplicated region for block: B:43:0x00db  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void D(java.lang.String r12, com.xiaomi.mipush.sdk.am r13, boolean r14, java.util.HashMap<java.lang.String, java.lang.String> r15) {
        /*
            Method dump skipped, instructions count: 352
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.xiaomi.mipush.sdk.w.D(java.lang.String, com.xiaomi.mipush.sdk.am, boolean, java.util.HashMap):void");
    }

    private Intent K() {
        if ("com.xiaomi.xmsf".equals(this.f36304b.getPackageName())) {
            tf.c.t("pushChannel xmsf create own channel");
            return W();
        }
        return O();
    }

    private void M(Intent intent) {
        com.xiaomi.push.service.u c10 = com.xiaomi.push.service.u.c(this.f36304b);
        int a10 = db.ServiceBootMode.a();
        da daVar = da.START;
        int a11 = c10.a(a10, daVar.a());
        int a12 = a();
        da daVar2 = da.BIND;
        boolean z10 = a11 == daVar2.a() && f36301l;
        int a13 = z10 ? daVar2.a() : daVar.a();
        if (a13 != a12) {
            I(a13);
        }
        if (z10) {
            R(intent);
        } else {
            q(intent);
        }
    }

    private Intent O() {
        if (H()) {
            tf.c.t("pushChannel app start miui channel");
            return T();
        }
        tf.c.t("pushChannel app start  own channel");
        return W();
    }

    private synchronized void Q(int i9) {
        this.f36304b.getSharedPreferences("mipush_extra", 0).edit().putInt("service_boot_mode", i9).commit();
    }

    private synchronized void R(Intent intent) {
        if (this.f36309g) {
            Message e10 = e(intent);
            if (this.f36308f.size() >= 50) {
                this.f36308f.remove(0);
            }
            this.f36308f.add(e10);
            return;
        }
        if (this.f36306d == null) {
            this.f36304b.bindService(intent, new b0(this), 1);
            this.f36309g = true;
            this.f36308f.clear();
            this.f36308f.add(e(intent));
        } else {
            try {
                this.f36306d.send(e(intent));
            } catch (RemoteException unused) {
                this.f36306d = null;
                this.f36309g = false;
            }
        }
    }

    private boolean S() {
        try {
            PackageInfo packageInfo = this.f36304b.getPackageManager().getPackageInfo("com.xiaomi.xmsf", 4);
            if (packageInfo == null) {
                return false;
            }
            return packageInfo.versionCode >= 105;
        } catch (Throwable unused) {
            return false;
        }
    }

    private Intent T() {
        Intent intent = new Intent();
        String packageName = this.f36304b.getPackageName();
        intent.setPackage("com.xiaomi.xmsf");
        intent.setClassName("com.xiaomi.xmsf", k());
        intent.putExtra("mipush_app_package", packageName);
        a0();
        return intent;
    }

    private boolean V() {
        if (H()) {
            try {
                return this.f36304b.getPackageManager().getPackageInfo("com.xiaomi.xmsf", 4).versionCode >= 108;
            } catch (Exception unused) {
            }
        }
        return true;
    }

    private Intent W() {
        Intent intent = new Intent();
        String packageName = this.f36304b.getPackageName();
        b0();
        intent.setComponent(new ComponentName(this.f36304b, "com.xiaomi.push.service.XMPushService"));
        intent.putExtra("mipush_app_package", packageName);
        return intent;
    }

    private boolean Y() {
        String packageName = this.f36304b.getPackageName();
        return packageName.contains("miui") || packageName.contains("xiaomi") || (this.f36304b.getApplicationInfo().flags & 1) != 0;
    }

    private void Z() {
        this.f36310h = SystemClock.elapsedRealtime();
    }

    private synchronized int a() {
        return this.f36304b.getSharedPreferences("mipush_extra", 0).getInt("service_boot_mode", -1);
    }

    private void a0() {
        try {
            PackageManager packageManager = this.f36304b.getPackageManager();
            ComponentName componentName = new ComponentName(this.f36304b, "com.xiaomi.push.service.XMPushService");
            if (packageManager.getComponentEnabledSetting(componentName) == 2) {
                return;
            }
            packageManager.setComponentEnabledSetting(componentName, 2, 1);
        } catch (Throwable unused) {
        }
    }

    private void b0() {
        try {
            PackageManager packageManager = this.f36304b.getPackageManager();
            ComponentName componentName = new ComponentName(this.f36304b, "com.xiaomi.push.service.XMPushService");
            if (packageManager.getComponentEnabledSetting(componentName) == 1) {
                return;
            }
            packageManager.setComponentEnabledSetting(componentName, 1, 1);
        } catch (Throwable unused) {
        }
    }

    private Intent d() {
        return (!H() || "com.xiaomi.xmsf".equals(this.f36304b.getPackageName())) ? W() : T();
    }

    private Message e(Intent intent) {
        Message obtain = Message.obtain();
        obtain.what = 17;
        obtain.obj = intent;
        return obtain;
    }

    public static synchronized w h(Context context) {
        w wVar;
        synchronized (w.class) {
            if (f36300k == null) {
                f36300k = new w(context);
            }
            wVar = f36300k;
        }
        return wVar;
    }

    private String k() {
        try {
            return this.f36304b.getPackageManager().getPackageInfo("com.xiaomi.xmsf", 4).versionCode >= 106 ? "com.xiaomi.push.service.XMPushService" : "com.xiaomi.xmsf.push.service.XMPushService";
        } catch (Exception unused) {
            return "com.xiaomi.xmsf.push.service.XMPushService";
        }
    }

    private void q(Intent intent) {
        try {
            if (sf.e.h() || Build.VERSION.SDK_INT < 26) {
                this.f36304b.startService(intent);
            } else {
                R(intent);
            }
        } catch (Exception e10) {
            tf.c.o(e10);
        }
    }

    public final <T extends ef<T, ?>> void A(T t10, cz czVar, boolean z10, boolean z11, di diVar, boolean z12, String str, String str2, boolean z13) {
        B(t10, czVar, z10, z11, diVar, z12, str, str2, z13, true);
    }

    public final <T extends ef<T, ?>> void B(T t10, cz czVar, boolean z10, boolean z11, di diVar, boolean z12, String str, String str2, boolean z13, boolean z14) {
        if (z14 && !n.c(this.f36304b).s()) {
            if (z11) {
                v(t10, czVar, z10);
                return;
            } else {
                tf.c.l("drop the message before initialization.");
                return;
            }
        }
        dq b10 = z13 ? q.b(this.f36304b, t10, czVar, z10, str, str2) : q.f(this.f36304b, t10, czVar, z10, str, str2);
        if (diVar != null) {
            b10.a(diVar);
        }
        byte[] d10 = h2.d(b10);
        if (d10 == null) {
            tf.c.l("send message fail, because msgBytes is null.");
            return;
        }
        Intent d11 = d();
        d11.setAction("com.xiaomi.mipush.SEND_MESSAGE");
        d11.putExtra("mipush_payload", d10);
        d11.putExtra("com.xiaomi.mipush.MESSAGE_CACHE", z12);
        M(d11);
    }

    public final void C(String str, am amVar, c cVar) {
        x0.b(this.f36304b).d(amVar, "syncing");
        D(str, amVar, false, i0.e(this.f36304b, cVar));
    }

    public void E(String str, String str2) {
        Intent d10 = d();
        d10.setAction("com.xiaomi.mipush.CLEAR_NOTIFICATION");
        d10.putExtra(com.xiaomi.push.service.e0.f37236y, this.f36304b.getPackageName());
        d10.putExtra(com.xiaomi.push.service.e0.E, str);
        d10.putExtra(com.xiaomi.push.service.e0.F, str2);
        M(d10);
    }

    public final void F(boolean z10) {
        G(z10, null);
    }

    public final void G(boolean z10, String str) {
        am amVar;
        x0 b10;
        am amVar2;
        if (z10) {
            x0 b11 = x0.b(this.f36304b);
            amVar = am.DISABLE_PUSH;
            b11.d(amVar, "syncing");
            b10 = x0.b(this.f36304b);
            amVar2 = am.ENABLE_PUSH;
        } else {
            x0 b12 = x0.b(this.f36304b);
            amVar = am.ENABLE_PUSH;
            b12.d(amVar, "syncing");
            b10 = x0.b(this.f36304b);
            amVar2 = am.DISABLE_PUSH;
        }
        b10.d(amVar2, "");
        D(str, amVar, true, null);
    }

    public boolean H() {
        return this.f36303a && 1 == n.c(this.f36304b).a();
    }

    public boolean I(int i9) {
        if (n.c(this.f36304b).p()) {
            Q(i9);
            dt dtVar = new dt();
            dtVar.a(com.xiaomi.push.service.x.a());
            dtVar.b(n.c(this.f36304b).d());
            dtVar.d(this.f36304b.getPackageName());
            dtVar.c(df.ClientABTest.f42a);
            HashMap hashMap = new HashMap();
            dtVar.f179a = hashMap;
            hashMap.put("boot_mode", i9 + "");
            h(this.f36304b).w(dtVar, cz.Notification, false, null);
            return true;
        }
        return false;
    }

    public final void L() {
        Intent d10 = d();
        d10.setAction("com.xiaomi.mipush.DISABLE_PUSH");
        M(d10);
    }

    public boolean N() {
        if (H() && Y()) {
            if (this.f36312j == null) {
                Integer valueOf = Integer.valueOf(com.xiaomi.push.service.g0.c(this.f36304b).a());
                this.f36312j = valueOf;
                if (valueOf.intValue() == 0) {
                    this.f36304b.getContentResolver().registerContentObserver(com.xiaomi.push.service.g0.c(this.f36304b).b(), false, new a0(this, new Handler(Looper.getMainLooper())));
                }
            }
            return this.f36312j.intValue() != 0;
        }
        return true;
    }

    public void P() {
        if (this.f36311i != null) {
            Z();
            M(this.f36311i);
            this.f36311i = null;
        }
    }

    public void U() {
        ArrayList<a> arrayList = f36302m;
        synchronized (arrayList) {
            boolean z10 = Thread.currentThread() == Looper.getMainLooper().getThread();
            Iterator<a> it = arrayList.iterator();
            while (it.hasNext()) {
                a next = it.next();
                y(next.f36313a, next.f36314b, next.f36315c, false, null, true);
                if (!z10) {
                    try {
                        Thread.sleep(100L);
                    } catch (InterruptedException unused) {
                    }
                }
            }
            f36302m.clear();
        }
    }

    public void X() {
        Intent d10 = d();
        d10.setAction("com.xiaomi.mipush.SET_NOTIFICATION_TYPE");
        d10.putExtra(com.xiaomi.push.service.e0.f37236y, this.f36304b.getPackageName());
        d10.putExtra(com.xiaomi.push.service.e0.D, com.xiaomi.push.f.d(this.f36304b.getPackageName()));
        M(d10);
    }

    public long b() {
        return this.f36310h;
    }

    public void m() {
        q(d());
    }

    public void n(int i9) {
        o(i9, 0);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void o(int i9, int i10) {
        Intent d10 = d();
        d10.setAction("com.xiaomi.mipush.CLEAR_NOTIFICATION");
        d10.putExtra(com.xiaomi.push.service.e0.f37236y, this.f36304b.getPackageName());
        d10.putExtra(com.xiaomi.push.service.e0.f37237z, i9);
        d10.putExtra(com.xiaomi.push.service.e0.A, i10);
        M(d10);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void p(int i9, String str) {
        Intent d10 = d();
        d10.setAction("com.xiaomi.mipush.thirdparty");
        d10.putExtra("com.xiaomi.mipush.thirdparty_LEVEL", i9);
        d10.putExtra("com.xiaomi.mipush.thirdparty_DESC", str);
        q(d10);
    }

    public final void s(du duVar, boolean z10, boolean z11) {
        this.f36311i = null;
        n.c(this.f36304b).f36264d = duVar.a();
        Intent d10 = d();
        byte[] d11 = h2.d(q.a(this.f36304b, duVar, cz.Registration));
        if (d11 == null) {
            tf.c.l("register fail, because msgBytes is null.");
            return;
        }
        d10.setAction("com.xiaomi.mipush.REGISTER_APP");
        d10.putExtra("mipush_app_id", n.c(this.f36304b).d());
        d10.putExtra("mipush_payload", d11);
        d10.putExtra("mipush_session", this.f36305c);
        d10.putExtra("mipush_env_chanage", z10);
        d10.putExtra("mipush_env_type", n.c(this.f36304b).a());
        d10.putExtra("mipush_region_change", z11);
        if (!p3.m(this.f36304b) || !N()) {
            this.f36311i = d10;
            return;
        }
        Z();
        M(d10);
    }

    public final void t(ea eaVar) {
        byte[] d10 = h2.d(q.a(this.f36304b, eaVar, cz.UnRegistration));
        if (d10 == null) {
            tf.c.l("unregister fail, because msgBytes is null.");
            return;
        }
        Intent d11 = d();
        d11.setAction("com.xiaomi.mipush.UNREGISTER_APP");
        d11.putExtra("mipush_app_id", n.c(this.f36304b).d());
        d11.putExtra("mipush_payload", d10);
        M(d11);
    }

    public final <T extends ef<T, ?>> void u(T t10, cz czVar, di diVar) {
        w(t10, czVar, !czVar.equals(cz.Registration), diVar);
    }

    public <T extends ef<T, ?>> void v(T t10, cz czVar, boolean z10) {
        a aVar = new a();
        aVar.f36313a = t10;
        aVar.f36314b = czVar;
        aVar.f36315c = z10;
        ArrayList<a> arrayList = f36302m;
        synchronized (arrayList) {
            arrayList.add(aVar);
            if (arrayList.size() > 10) {
                arrayList.remove(0);
            }
        }
    }

    public final <T extends ef<T, ?>> void w(T t10, cz czVar, boolean z10, di diVar) {
        y(t10, czVar, z10, true, diVar, true);
    }

    public final <T extends ef<T, ?>> void x(T t10, cz czVar, boolean z10, di diVar, boolean z11) {
        y(t10, czVar, z10, true, diVar, z11);
    }

    public final <T extends ef<T, ?>> void y(T t10, cz czVar, boolean z10, boolean z11, di diVar, boolean z12) {
        z(t10, czVar, z10, z11, diVar, z12, this.f36304b.getPackageName(), n.c(this.f36304b).d());
    }

    public final <T extends ef<T, ?>> void z(T t10, cz czVar, boolean z10, boolean z11, di diVar, boolean z12, String str, String str2) {
        A(t10, czVar, z10, z11, diVar, z12, str, str2, true);
    }
}
