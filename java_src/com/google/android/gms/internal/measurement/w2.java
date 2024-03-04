package com.google.android.gms.internal.measurement;

import android.app.Activity;
import android.app.Application;
import android.content.Context;
import android.os.BadParcelableException;
import android.os.Bundle;
import android.os.NetworkOnMainThreadException;
import android.os.RemoteException;
import android.util.Log;
import android.util.Pair;
import androidx.annotation.GuardedBy;
import androidx.annotation.NonNull;
import com.google.android.gms.dynamite.DynamiteModule;
import com.google.android.gms.dynamite.descriptors.com.google.android.gms.measurement.dynamite.ModuleDescriptor;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Random;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
/* loaded from: classes2.dex */
public final class w2 {

    /* renamed from: j  reason: collision with root package name */
    private static volatile w2 f8390j;

    /* renamed from: a  reason: collision with root package name */
    private final String f8391a;

    /* renamed from: b  reason: collision with root package name */
    protected final e4.d f8392b;

    /* renamed from: c  reason: collision with root package name */
    protected final ExecutorService f8393c;

    /* renamed from: d  reason: collision with root package name */
    private final o4.a f8394d;
    @GuardedBy("listenerList")

    /* renamed from: e  reason: collision with root package name */
    private final List f8395e;

    /* renamed from: f  reason: collision with root package name */
    private int f8396f;

    /* renamed from: g  reason: collision with root package name */
    private boolean f8397g;

    /* renamed from: h  reason: collision with root package name */
    private final String f8398h;

    /* renamed from: i  reason: collision with root package name */
    private volatile e1 f8399i;

    protected w2(Context context, String str, String str2, String str3, Bundle bundle) {
        if (str != null && p(str2, str3)) {
            this.f8391a = str;
        } else {
            this.f8391a = "FA";
        }
        this.f8392b = e4.g.c();
        y0.a();
        ThreadPoolExecutor threadPoolExecutor = new ThreadPoolExecutor(1, 1, 60L, TimeUnit.SECONDS, new LinkedBlockingQueue(), new e2(this));
        threadPoolExecutor.allowCoreThreadTimeOut(true);
        this.f8393c = Executors.unconfigurableExecutorService(threadPoolExecutor);
        this.f8394d = new o4.a(this);
        this.f8395e = new ArrayList();
        try {
            if (p4.w.b(context, "google_app_id", p4.l.a(context)) != null && !l()) {
                this.f8398h = null;
                this.f8397g = true;
                Log.w(this.f8391a, "Disabling data collection. Found google_app_id in strings.xml but Google Analytics for Firebase is missing. Remove this value or add Google Analytics for Firebase to resume data collection.");
                return;
            }
        } catch (IllegalStateException unused) {
        }
        if (p(str2, str3)) {
            this.f8398h = str2;
        } else {
            this.f8398h = "fa";
            if (str2 == null || str3 == null) {
                if ((str2 == null) ^ (str3 == null)) {
                    Log.w(this.f8391a, "Specified origin or custom app id is null. Both parameters will be ignored.");
                }
            } else {
                Log.v(this.f8391a, "Deferring to Google Analytics for Firebase for event data collection. https://goo.gl/J1sWQy");
            }
        }
        o(new u1(this, str2, str3, context, bundle));
        Application application = (Application) context.getApplicationContext();
        if (application == null) {
            Log.w(this.f8391a, "Unable to register lifecycle notifications. Application null.");
        } else {
            application.registerActivityLifecycleCallbacks(new v2(this));
        }
    }

    protected static final boolean l() {
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void m(Exception exc, boolean z10, boolean z11) {
        this.f8397g |= z10;
        if (z10) {
            Log.w(this.f8391a, "Data collection startup failed. No data will be collected.", exc);
            return;
        }
        if (z11) {
            a(5, "Error with data collection. Data lost.", exc, null, null);
        }
        Log.w(this.f8391a, "Error with data collection. Data lost.", exc);
    }

    private final void n(String str, String str2, Bundle bundle, boolean z10, boolean z11, Long l10) {
        o(new j2(this, l10, str, str2, bundle, z10, z11));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void o(l2 l2Var) {
        this.f8393c.execute(l2Var);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final boolean p(String str, String str2) {
        return (str2 == null || str == null || l()) ? false : true;
    }

    public static w2 v(Context context, String str, String str2, String str3, Bundle bundle) {
        com.google.android.gms.common.internal.p.j(context);
        if (f8390j == null) {
            synchronized (w2.class) {
                if (f8390j == null) {
                    f8390j = new w2(context, str, str2, str3, bundle);
                }
            }
        }
        return f8390j;
    }

    public final String A() {
        a1 a1Var = new a1();
        o(new x1(this, a1Var));
        return a1Var.D0(500L);
    }

    public final List B(String str, String str2) {
        a1 a1Var = new a1();
        o(new q1(this, str, str2, a1Var));
        List list = (List) a1.E0(a1Var.f(5000L), List.class);
        return list == null ? Collections.emptyList() : list;
    }

    public final Map C(String str, String str2, boolean z10) {
        a1 a1Var = new a1();
        o(new c2(this, str, str2, z10, a1Var));
        Bundle f10 = a1Var.f(5000L);
        if (f10 != null && f10.size() != 0) {
            HashMap hashMap = new HashMap(f10.size());
            for (String str3 : f10.keySet()) {
                Object obj = f10.get(str3);
                if ((obj instanceof Double) || (obj instanceof Long) || (obj instanceof String)) {
                    hashMap.put(str3, obj);
                }
            }
            return hashMap;
        }
        return Collections.emptyMap();
    }

    public final void G(String str) {
        o(new v1(this, str));
    }

    public final void H(String str, String str2, Bundle bundle) {
        o(new p1(this, str, str2, bundle));
    }

    public final void I(String str) {
        o(new w1(this, str));
    }

    public final void J(@NonNull String str, Bundle bundle) {
        n(null, str, bundle, false, true, null);
    }

    public final void K(String str, String str2, Bundle bundle) {
        n(str, str2, bundle, true, true, null);
    }

    public final void a(int i9, String str, Object obj, Object obj2, Object obj3) {
        o(new d2(this, false, 5, str, obj, null, null));
    }

    public final void b(p4.t tVar) {
        com.google.android.gms.common.internal.p.j(tVar);
        synchronized (this.f8395e) {
            for (int i9 = 0; i9 < this.f8395e.size(); i9++) {
                if (tVar.equals(((Pair) this.f8395e.get(i9)).first)) {
                    Log.w(this.f8391a, "OnEventListener already registered.");
                    return;
                }
            }
            m2 m2Var = new m2(tVar);
            this.f8395e.add(new Pair(tVar, m2Var));
            if (this.f8399i != null) {
                try {
                    this.f8399i.registerOnMeasurementEventListener(m2Var);
                    return;
                } catch (BadParcelableException | NetworkOnMainThreadException | RemoteException | IllegalArgumentException | IllegalStateException | NullPointerException | SecurityException | UnsupportedOperationException unused) {
                    Log.w(this.f8391a, "Failed to register event listener on calling thread. Trying again on the dynamite thread.");
                }
            }
            o(new h2(this, m2Var));
        }
    }

    public final void c(Bundle bundle) {
        o(new o1(this, bundle));
    }

    public final void d(Bundle bundle) {
        o(new t1(this, bundle));
    }

    public final void e(Activity activity, String str, String str2) {
        o(new s1(this, activity, str, str2));
    }

    public final void f(boolean z10) {
        o(new g2(this, z10));
    }

    public final void g(String str) {
        o(new r1(this, str));
    }

    public final void h(String str, String str2, Object obj, boolean z10) {
        o(new k2(this, str, str2, obj, z10));
    }

    public final void i(p4.t tVar) {
        Pair pair;
        com.google.android.gms.common.internal.p.j(tVar);
        synchronized (this.f8395e) {
            int i9 = 0;
            while (true) {
                if (i9 >= this.f8395e.size()) {
                    pair = null;
                    break;
                } else if (tVar.equals(((Pair) this.f8395e.get(i9)).first)) {
                    pair = (Pair) this.f8395e.get(i9);
                    break;
                } else {
                    i9++;
                }
            }
            if (pair == null) {
                Log.w(this.f8391a, "OnEventListener had not been registered.");
                return;
            }
            this.f8395e.remove(pair);
            m2 m2Var = (m2) pair.second;
            if (this.f8399i != null) {
                try {
                    this.f8399i.unregisterOnMeasurementEventListener(m2Var);
                    return;
                } catch (BadParcelableException | NetworkOnMainThreadException | RemoteException | IllegalArgumentException | IllegalStateException | NullPointerException | SecurityException | UnsupportedOperationException unused) {
                    Log.w(this.f8391a, "Failed to unregister event listener on calling thread. Trying again on the dynamite thread.");
                }
            }
            o(new i2(this, m2Var));
        }
    }

    public final int q(String str) {
        a1 a1Var = new a1();
        o(new f2(this, str, a1Var));
        Integer num = (Integer) a1.E0(a1Var.f(10000L), Integer.class);
        if (num == null) {
            return 25;
        }
        return num.intValue();
    }

    public final long r() {
        a1 a1Var = new a1();
        o(new z1(this, a1Var));
        Long l10 = (Long) a1.E0(a1Var.f(500L), Long.class);
        if (l10 == null) {
            long nextLong = new Random(System.nanoTime() ^ this.f8392b.a()).nextLong();
            int i9 = this.f8396f + 1;
            this.f8396f = i9;
            return nextLong + i9;
        }
        return l10.longValue();
    }

    public final o4.a s() {
        return this.f8394d;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final e1 u(Context context, boolean z10) {
        try {
            return d1.asInterface(DynamiteModule.d(context, DynamiteModule.f7856e, ModuleDescriptor.MODULE_ID).c("com.google.android.gms.measurement.internal.AppMeasurementDynamiteService"));
        } catch (DynamiteModule.LoadingException e10) {
            m(e10, true, false);
            return null;
        }
    }

    public final String x() {
        a1 a1Var = new a1();
        o(new y1(this, a1Var));
        return a1Var.D0(50L);
    }

    public final String y() {
        a1 a1Var = new a1();
        o(new b2(this, a1Var));
        return a1Var.D0(500L);
    }

    public final String z() {
        a1 a1Var = new a1();
        o(new a2(this, a1Var));
        return a1Var.D0(500L);
    }
}
