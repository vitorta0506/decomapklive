package com.google.android.gms.measurement.internal;

import android.app.Activity;
import android.os.Bundle;
import androidx.annotation.GuardedBy;
import androidx.annotation.MainThread;
import androidx.annotation.NonNull;
import androidx.annotation.WorkerThread;
import com.meizu.cloud.pushsdk.constants.PushConstants;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import kotlinx.coroutines.DebugKt;
/* loaded from: classes2.dex */
public final class y6 extends u3 {

    /* renamed from: c  reason: collision with root package name */
    private volatile r6 f10004c;

    /* renamed from: d  reason: collision with root package name */
    private volatile r6 f10005d;

    /* renamed from: e  reason: collision with root package name */
    protected r6 f10006e;

    /* renamed from: f  reason: collision with root package name */
    private final Map f10007f;
    @GuardedBy("activityLock")

    /* renamed from: g  reason: collision with root package name */
    private Activity f10008g;
    @GuardedBy("activityLock")

    /* renamed from: h  reason: collision with root package name */
    private volatile boolean f10009h;

    /* renamed from: i  reason: collision with root package name */
    private volatile r6 f10010i;

    /* renamed from: j  reason: collision with root package name */
    private r6 f10011j;
    @GuardedBy("activityLock")

    /* renamed from: k  reason: collision with root package name */
    private boolean f10012k;

    /* renamed from: l  reason: collision with root package name */
    private final Object f10013l;

    public y6(n4 n4Var) {
        super(n4Var);
        this.f10013l = new Object();
        this.f10007f = new ConcurrentHashMap();
    }

    @MainThread
    private final r6 F(@NonNull Activity activity) {
        com.google.android.gms.common.internal.p.j(activity);
        r6 r6Var = (r6) this.f10007f.get(activity);
        if (r6Var == null) {
            r6 r6Var2 = new r6(null, t(activity.getClass(), "Activity"), this.f9432a.N().r0());
            this.f10007f.put(activity, r6Var2);
            r6Var = r6Var2;
        }
        return this.f10010i != null ? this.f10010i : r6Var;
    }

    @MainThread
    private final void G(Activity activity, r6 r6Var, boolean z10) {
        r6 r6Var2;
        r6 r6Var3 = this.f10004c == null ? this.f10005d : this.f10004c;
        if (r6Var.f9806b == null) {
            r6Var2 = new r6(r6Var.f9805a, activity != null ? t(activity.getClass(), "Activity") : null, r6Var.f9807c, r6Var.f9809e, r6Var.f9810f);
        } else {
            r6Var2 = r6Var;
        }
        this.f10005d = this.f10004c;
        this.f10004c = r6Var2;
        this.f9432a.a().z(new t6(this, r6Var2, r6Var3, this.f9432a.c().b(), z10));
    }

    /* JADX INFO: Access modifiers changed from: private */
    @WorkerThread
    public final void o(r6 r6Var, r6 r6Var2, long j10, boolean z10, Bundle bundle) {
        Bundle bundle2;
        long j11;
        long j12;
        h();
        boolean z11 = false;
        boolean z12 = (r6Var2 != null && r6Var2.f9807c == r6Var.f9807c && p4.x.a(r6Var2.f9806b, r6Var.f9806b) && p4.x.a(r6Var2.f9805a, r6Var.f9805a)) ? false : true;
        if (z10 && this.f10006e != null) {
            z11 = true;
        }
        if (z12) {
            if (bundle != null) {
                bundle2 = new Bundle(bundle);
            } else {
                bundle2 = new Bundle();
            }
            Bundle bundle3 = bundle2;
            k9.y(r6Var, bundle3, true);
            if (r6Var2 != null) {
                String str = r6Var2.f9805a;
                if (str != null) {
                    bundle3.putString("_pn", str);
                }
                String str2 = r6Var2.f9806b;
                if (str2 != null) {
                    bundle3.putString("_pc", str2);
                }
                bundle3.putLong("_pi", r6Var2.f9807c);
            }
            if (z11) {
                m8 m8Var = this.f9432a.M().f9735e;
                long j13 = j10 - m8Var.f9652b;
                m8Var.f9652b = j10;
                if (j13 > 0) {
                    this.f9432a.N().w(bundle3, j13);
                }
            }
            if (!this.f9432a.z().D()) {
                bundle3.putLong("_mst", 1L);
            }
            String str3 = true != r6Var.f9809e ? DebugKt.DEBUG_PROPERTY_VALUE_AUTO : PushConstants.EXTRA_APPLICATION_PENDING_INTENT;
            long a10 = this.f9432a.c().a();
            if (r6Var.f9809e) {
                j11 = a10;
                long j14 = r6Var.f9810f;
                if (j14 != 0) {
                    j12 = j14;
                    this.f9432a.I().v(str3, "_vs", j12, bundle3);
                }
            } else {
                j11 = a10;
            }
            j12 = j11;
            this.f9432a.I().v(str3, "_vs", j12, bundle3);
        }
        if (z11) {
            p(this.f10006e, true, j10);
        }
        this.f10006e = r6Var;
        if (r6Var.f9809e) {
            this.f10011j = r6Var;
        }
        this.f9432a.L().u(r6Var);
    }

    /* JADX INFO: Access modifiers changed from: private */
    @WorkerThread
    public final void p(r6 r6Var, boolean z10, long j10) {
        this.f9432a.y().n(this.f9432a.c().b());
        if (!this.f9432a.M().f9735e.d(r6Var != null && r6Var.f9808d, z10, j10) || r6Var == null) {
            return;
        }
        r6Var.f9808d = false;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* bridge */ /* synthetic */ void w(y6 y6Var, Bundle bundle, r6 r6Var, r6 r6Var2, long j10) {
        bundle.remove("screen_name");
        bundle.remove("screen_class");
        y6Var.o(r6Var, r6Var2, j10, true, y6Var.f9432a.N().v0(null, "screen_view", bundle, null, false));
    }

    @MainThread
    public final void A(Activity activity) {
        synchronized (this.f10013l) {
            this.f10012k = false;
            this.f10009h = true;
        }
        long b10 = this.f9432a.c().b();
        if (!this.f9432a.z().D()) {
            this.f10004c = null;
            this.f9432a.a().z(new v6(this, b10));
            return;
        }
        r6 F = F(activity);
        this.f10005d = this.f10004c;
        this.f10004c = null;
        this.f9432a.a().z(new w6(this, F, b10));
    }

    @MainThread
    public final void B(Activity activity) {
        synchronized (this.f10013l) {
            this.f10012k = true;
            if (activity != this.f10008g) {
                synchronized (this.f10013l) {
                    this.f10008g = activity;
                    this.f10009h = false;
                }
                if (this.f9432a.z().D()) {
                    this.f10010i = null;
                    this.f9432a.a().z(new x6(this));
                }
            }
        }
        if (!this.f9432a.z().D()) {
            this.f10004c = this.f10010i;
            this.f9432a.a().z(new u6(this));
            return;
        }
        G(activity, F(activity), false);
        x1 y10 = this.f9432a.y();
        y10.f9432a.a().z(new w0(y10, y10.f9432a.c().b()));
    }

    @MainThread
    public final void C(Activity activity, Bundle bundle) {
        r6 r6Var;
        if (!this.f9432a.z().D() || bundle == null || (r6Var = (r6) this.f10007f.get(activity)) == null) {
            return;
        }
        Bundle bundle2 = new Bundle();
        bundle2.putLong("id", r6Var.f9807c);
        bundle2.putString("name", r6Var.f9805a);
        bundle2.putString("referrer_name", r6Var.f9806b);
        bundle.putBundle("com.google.app_measurement.screen_service", bundle2);
    }

    /* JADX WARN: Code restructure failed: missing block: B:27:0x0088, code lost:
        if (r5.length() <= 100) goto L29;
     */
    /* JADX WARN: Code restructure failed: missing block: B:35:0x00b4, code lost:
        if (r6.length() <= 100) goto L36;
     */
    @java.lang.Deprecated
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void D(@androidx.annotation.NonNull android.app.Activity r4, @androidx.annotation.Size(max = 36, min = 1) java.lang.String r5, @androidx.annotation.Size(max = 36, min = 1) java.lang.String r6) {
        /*
            r3 = this;
            com.google.android.gms.measurement.internal.n4 r0 = r3.f9432a
            com.google.android.gms.measurement.internal.g r0 = r0.z()
            boolean r0 = r0.D()
            if (r0 != 0) goto L1c
            com.google.android.gms.measurement.internal.n4 r4 = r3.f9432a
            com.google.android.gms.measurement.internal.j3 r4 = r4.b()
            com.google.android.gms.measurement.internal.h3 r4 = r4.x()
            java.lang.String r5 = "setCurrentScreen cannot be called while screen reporting is disabled."
            r4.a(r5)
            return
        L1c:
            com.google.android.gms.measurement.internal.r6 r0 = r3.f10004c
            if (r0 != 0) goto L30
            com.google.android.gms.measurement.internal.n4 r4 = r3.f9432a
            com.google.android.gms.measurement.internal.j3 r4 = r4.b()
            com.google.android.gms.measurement.internal.h3 r4 = r4.x()
            java.lang.String r5 = "setCurrentScreen cannot be called while no activity active"
            r4.a(r5)
            return
        L30:
            java.util.Map r1 = r3.f10007f
            java.lang.Object r1 = r1.get(r4)
            if (r1 != 0) goto L48
            com.google.android.gms.measurement.internal.n4 r4 = r3.f9432a
            com.google.android.gms.measurement.internal.j3 r4 = r4.b()
            com.google.android.gms.measurement.internal.h3 r4 = r4.x()
            java.lang.String r5 = "setCurrentScreen must be called with an activity in the activity lifecycle"
            r4.a(r5)
            return
        L48:
            if (r6 != 0) goto L54
            java.lang.Class r6 = r4.getClass()
            java.lang.String r1 = "Activity"
            java.lang.String r6 = r3.t(r6, r1)
        L54:
            java.lang.String r1 = r0.f9806b
            boolean r1 = p4.x.a(r1, r6)
            java.lang.String r0 = r0.f9805a
            boolean r0 = p4.x.a(r0, r5)
            if (r1 == 0) goto L75
            if (r0 != 0) goto L65
            goto L75
        L65:
            com.google.android.gms.measurement.internal.n4 r4 = r3.f9432a
            com.google.android.gms.measurement.internal.j3 r4 = r4.b()
            com.google.android.gms.measurement.internal.h3 r4 = r4.x()
            java.lang.String r5 = "setCurrentScreen cannot be called with the same class and name"
            r4.a(r5)
            return
        L75:
            r0 = 100
            if (r5 == 0) goto La3
            int r1 = r5.length()
            if (r1 <= 0) goto L8b
            com.google.android.gms.measurement.internal.n4 r1 = r3.f9432a
            r1.z()
            int r1 = r5.length()
            if (r1 > r0) goto L8b
            goto La3
        L8b:
            com.google.android.gms.measurement.internal.n4 r4 = r3.f9432a
            com.google.android.gms.measurement.internal.j3 r4 = r4.b()
            com.google.android.gms.measurement.internal.h3 r4 = r4.x()
            int r5 = r5.length()
            java.lang.Integer r5 = java.lang.Integer.valueOf(r5)
            java.lang.String r6 = "Invalid screen name length in setCurrentScreen. Length"
            r4.b(r6, r5)
            return
        La3:
            if (r6 == 0) goto Lcf
            int r1 = r6.length()
            if (r1 <= 0) goto Lb7
            com.google.android.gms.measurement.internal.n4 r1 = r3.f9432a
            r1.z()
            int r1 = r6.length()
            if (r1 > r0) goto Lb7
            goto Lcf
        Lb7:
            com.google.android.gms.measurement.internal.n4 r4 = r3.f9432a
            com.google.android.gms.measurement.internal.j3 r4 = r4.b()
            com.google.android.gms.measurement.internal.h3 r4 = r4.x()
            int r5 = r6.length()
            java.lang.Integer r5 = java.lang.Integer.valueOf(r5)
            java.lang.String r6 = "Invalid class name length in setCurrentScreen. Length"
            r4.b(r6, r5)
            return
        Lcf:
            com.google.android.gms.measurement.internal.n4 r0 = r3.f9432a
            com.google.android.gms.measurement.internal.j3 r0 = r0.b()
            com.google.android.gms.measurement.internal.h3 r0 = r0.v()
            if (r5 != 0) goto Lde
            java.lang.String r1 = "null"
            goto Ldf
        Lde:
            r1 = r5
        Ldf:
            java.lang.String r2 = "Setting current screen to name, class"
            r0.c(r2, r1, r6)
            com.google.android.gms.measurement.internal.r6 r0 = new com.google.android.gms.measurement.internal.r6
            com.google.android.gms.measurement.internal.n4 r1 = r3.f9432a
            com.google.android.gms.measurement.internal.k9 r1 = r1.N()
            long r1 = r1.r0()
            r0.<init>(r5, r6, r1)
            java.util.Map r5 = r3.f10007f
            r5.put(r4, r0)
            r5 = 1
            r3.G(r4, r0, r5)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.measurement.internal.y6.D(android.app.Activity, java.lang.String, java.lang.String):void");
    }

    /* JADX WARN: Code restructure failed: missing block: B:14:0x0031, code lost:
        if (r2 > 100) goto L16;
     */
    /* JADX WARN: Code restructure failed: missing block: B:23:0x0063, code lost:
        if (r4 > 100) goto L25;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void E(android.os.Bundle r13, long r14) {
        /*
            Method dump skipped, instructions count: 286
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.measurement.internal.y6.E(android.os.Bundle, long):void");
    }

    @Override // com.google.android.gms.measurement.internal.u3
    protected final boolean n() {
        return false;
    }

    public final r6 r() {
        return this.f10004c;
    }

    @WorkerThread
    public final r6 s(boolean z10) {
        i();
        h();
        if (z10) {
            r6 r6Var = this.f10006e;
            return r6Var != null ? r6Var : this.f10011j;
        }
        return this.f10006e;
    }

    final String t(Class cls, String str) {
        String canonicalName = cls.getCanonicalName();
        if (canonicalName == null) {
            return "Activity";
        }
        String[] split = canonicalName.split("\\.");
        int length = split.length;
        String str2 = length > 0 ? split[length - 1] : "";
        int length2 = str2.length();
        this.f9432a.z();
        if (length2 > 100) {
            this.f9432a.z();
            return str2.substring(0, 100);
        }
        return str2;
    }

    @MainThread
    public final void y(Activity activity, Bundle bundle) {
        Bundle bundle2;
        if (!this.f9432a.z().D() || bundle == null || (bundle2 = bundle.getBundle("com.google.app_measurement.screen_service")) == null) {
            return;
        }
        this.f10007f.put(activity, new r6(bundle2.getString("name"), bundle2.getString("referrer_name"), bundle2.getLong("id")));
    }

    @MainThread
    public final void z(Activity activity) {
        synchronized (this.f10013l) {
            if (activity == this.f10008g) {
                this.f10008g = null;
            }
        }
        if (this.f9432a.z().D()) {
            this.f10007f.remove(activity);
        }
    }
}
