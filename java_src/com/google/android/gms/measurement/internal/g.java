package com.google.android.gms.measurement.internal;

import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import android.os.Bundle;
import android.text.TextUtils;
import androidx.annotation.Size;
import androidx.annotation.WorkerThread;
import java.lang.reflect.InvocationTargetException;
/* loaded from: classes2.dex */
public final class g extends g5 {

    /* renamed from: b  reason: collision with root package name */
    private Boolean f9418b;

    /* renamed from: c  reason: collision with root package name */
    private f f9419c;

    /* renamed from: d  reason: collision with root package name */
    private Boolean f9420d;

    /* JADX INFO: Access modifiers changed from: package-private */
    public g(n4 n4Var) {
        super(n4Var);
        this.f9419c = new f() { // from class: com.google.android.gms.measurement.internal.e
            @Override // com.google.android.gms.measurement.internal.f
            public final String e(String str, String str2) {
                return null;
            }
        };
    }

    public static final long I() {
        return ((Long) z2.f10034e.a(null)).longValue();
    }

    public static final long i() {
        return ((Long) z2.E.a(null)).longValue();
    }

    private final String j(String str, String str2) {
        try {
            String str3 = (String) Class.forName("android.os.SystemProperties").getMethod("get", String.class, String.class).invoke(null, str, "");
            com.google.android.gms.common.internal.p.j(str3);
            return str3;
        } catch (ClassNotFoundException e10) {
            this.f9432a.b().r().b("Could not find SystemProperties class", e10);
            return "";
        } catch (IllegalAccessException e11) {
            this.f9432a.b().r().b("Could not access SystemProperties.get()", e11);
            return "";
        } catch (NoSuchMethodException e12) {
            this.f9432a.b().r().b("Could not find SystemProperties.get() method", e12);
            return "";
        } catch (InvocationTargetException e13) {
            this.f9432a.b().r().b("SystemProperties.get() threw an exception", e13);
            return "";
        }
    }

    public final boolean A() {
        Boolean t10 = t("google_analytics_adid_collection_enabled");
        return t10 == null || t10.booleanValue();
    }

    @WorkerThread
    public final boolean B(String str, y2 y2Var) {
        if (str == null) {
            return ((Boolean) y2Var.a(null)).booleanValue();
        }
        String e10 = this.f9419c.e(str, y2Var.b());
        if (TextUtils.isEmpty(e10)) {
            return ((Boolean) y2Var.a(null)).booleanValue();
        }
        return ((Boolean) y2Var.a(Boolean.valueOf("1".equals(e10)))).booleanValue();
    }

    public final boolean C(String str) {
        return "1".equals(this.f9419c.e(str, "gaia_collection_enabled"));
    }

    public final boolean D() {
        Boolean t10 = t("google_analytics_automatic_screen_reporting_enabled");
        return t10 == null || t10.booleanValue();
    }

    public final boolean E() {
        this.f9432a.d();
        Boolean t10 = t("firebase_analytics_collection_deactivated");
        return t10 != null && t10.booleanValue();
    }

    public final boolean F(String str) {
        return "1".equals(this.f9419c.e(str, "measurement.event_sampling_enabled"));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @WorkerThread
    public final boolean G() {
        if (this.f9418b == null) {
            Boolean t10 = t("app_measurement_lite");
            this.f9418b = t10;
            if (t10 == null) {
                this.f9418b = Boolean.FALSE;
            }
        }
        return this.f9418b.booleanValue() || !this.f9432a.s();
    }

    public final boolean H() {
        if (this.f9420d == null) {
            synchronized (this) {
                if (this.f9420d == null) {
                    ApplicationInfo applicationInfo = this.f9432a.f().getApplicationInfo();
                    String a10 = e4.n.a();
                    if (applicationInfo != null) {
                        String str = applicationInfo.processName;
                        boolean z10 = false;
                        if (str != null && str.equals(a10)) {
                            z10 = true;
                        }
                        this.f9420d = Boolean.valueOf(z10);
                    }
                    if (this.f9420d == null) {
                        this.f9420d = Boolean.TRUE;
                        this.f9432a.b().r().a("My process not in the list of running processes");
                    }
                }
            }
        }
        return this.f9420d.booleanValue();
    }

    @WorkerThread
    public final double k(String str, y2 y2Var) {
        if (str == null) {
            return ((Double) y2Var.a(null)).doubleValue();
        }
        String e10 = this.f9419c.e(str, y2Var.b());
        if (TextUtils.isEmpty(e10)) {
            return ((Double) y2Var.a(null)).doubleValue();
        }
        try {
            return ((Double) y2Var.a(Double.valueOf(Double.parseDouble(e10)))).doubleValue();
        } catch (NumberFormatException unused) {
            return ((Double) y2Var.a(null)).doubleValue();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final int l(@Size(min = 1) String str) {
        return p(str, z2.I, 500, 2000);
    }

    public final int m() {
        k9 N = this.f9432a.N();
        Boolean J = N.f9432a.L().J();
        if (N.o0() < 201500) {
            return (J == null || J.booleanValue()) ? 25 : 100;
        }
        return 100;
    }

    public final int n(@Size(min = 1) String str) {
        return p(str, z2.J, 25, 100);
    }

    @WorkerThread
    public final int o(String str, y2 y2Var) {
        if (str == null) {
            return ((Integer) y2Var.a(null)).intValue();
        }
        String e10 = this.f9419c.e(str, y2Var.b());
        if (TextUtils.isEmpty(e10)) {
            return ((Integer) y2Var.a(null)).intValue();
        }
        try {
            return ((Integer) y2Var.a(Integer.valueOf(Integer.parseInt(e10)))).intValue();
        } catch (NumberFormatException unused) {
            return ((Integer) y2Var.a(null)).intValue();
        }
    }

    @WorkerThread
    public final int p(String str, y2 y2Var, int i9, int i10) {
        return Math.max(Math.min(o(str, y2Var), i10), i9);
    }

    public final long q() {
        this.f9432a.d();
        return 73000L;
    }

    @WorkerThread
    public final long r(String str, y2 y2Var) {
        if (str == null) {
            return ((Long) y2Var.a(null)).longValue();
        }
        String e10 = this.f9419c.e(str, y2Var.b());
        if (TextUtils.isEmpty(e10)) {
            return ((Long) y2Var.a(null)).longValue();
        }
        try {
            return ((Long) y2Var.a(Long.valueOf(Long.parseLong(e10)))).longValue();
        } catch (NumberFormatException unused) {
            return ((Long) y2Var.a(null)).longValue();
        }
    }

    final Bundle s() {
        try {
            if (this.f9432a.f().getPackageManager() == null) {
                this.f9432a.b().r().a("Failed to load metadata: PackageManager is null");
                return null;
            }
            ApplicationInfo c10 = g4.c.a(this.f9432a.f()).c(this.f9432a.f().getPackageName(), 128);
            if (c10 == null) {
                this.f9432a.b().r().a("Failed to load metadata: ApplicationInfo is null");
                return null;
            }
            return c10.metaData;
        } catch (PackageManager.NameNotFoundException e10) {
            this.f9432a.b().r().b("Failed to load metadata: Package name not found", e10);
            return null;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final Boolean t(@Size(min = 1) String str) {
        com.google.android.gms.common.internal.p.f(str);
        Bundle s10 = s();
        if (s10 == null) {
            this.f9432a.b().r().a("Failed to load metadata: Metadata bundle is null");
            return null;
        } else if (s10.containsKey(str)) {
            return Boolean.valueOf(s10.getBoolean(str));
        } else {
            return null;
        }
    }

    public final String u() {
        return j("debug.firebase.analytics.app", "");
    }

    public final String v() {
        return j("debug.deferred.deeplink", "");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final String w() {
        this.f9432a.d();
        return "FA";
    }

    @WorkerThread
    public final String x(String str, y2 y2Var) {
        if (str == null) {
            return (String) y2Var.a(null);
        }
        return (String) y2Var.a(this.f9419c.e(str, y2Var.b()));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: Removed duplicated region for block: B:19:0x002e A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.util.List y(@androidx.annotation.Size(min = 1) java.lang.String r4) {
        /*
            r3 = this;
            java.lang.String r4 = "analytics.safelisted_events"
            com.google.android.gms.common.internal.p.f(r4)
            android.os.Bundle r0 = r3.s()
            r1 = 0
            if (r0 != 0) goto L1d
            com.google.android.gms.measurement.internal.n4 r4 = r3.f9432a
            com.google.android.gms.measurement.internal.j3 r4 = r4.b()
            com.google.android.gms.measurement.internal.h3 r4 = r4.r()
            java.lang.String r0 = "Failed to load metadata: Metadata bundle is null"
            r4.a(r0)
        L1b:
            r4 = r1
            goto L2c
        L1d:
            boolean r2 = r0.containsKey(r4)
            if (r2 != 0) goto L24
            goto L1b
        L24:
            int r4 = r0.getInt(r4)
            java.lang.Integer r4 = java.lang.Integer.valueOf(r4)
        L2c:
            if (r4 == 0) goto L58
            com.google.android.gms.measurement.internal.n4 r0 = r3.f9432a     // Catch: android.content.res.Resources.NotFoundException -> L48
            android.content.Context r0 = r0.f()     // Catch: android.content.res.Resources.NotFoundException -> L48
            android.content.res.Resources r0 = r0.getResources()     // Catch: android.content.res.Resources.NotFoundException -> L48
            int r4 = r4.intValue()     // Catch: android.content.res.Resources.NotFoundException -> L48
            java.lang.String[] r4 = r0.getStringArray(r4)     // Catch: android.content.res.Resources.NotFoundException -> L48
            if (r4 != 0) goto L43
            return r1
        L43:
            java.util.List r4 = java.util.Arrays.asList(r4)     // Catch: android.content.res.Resources.NotFoundException -> L48
            return r4
        L48:
            r4 = move-exception
            com.google.android.gms.measurement.internal.n4 r0 = r3.f9432a
            com.google.android.gms.measurement.internal.j3 r0 = r0.b()
            com.google.android.gms.measurement.internal.h3 r0 = r0.r()
            java.lang.String r2 = "Failed to load string array from metadata: resource not found"
            r0.b(r2, r4)
        L58:
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.measurement.internal.g.y(java.lang.String):java.util.List");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void z(f fVar) {
        this.f9419c = fVar;
    }
}
