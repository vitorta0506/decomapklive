package com.google.android.gms.measurement.internal;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.pm.ResolveInfo;
import android.os.Bundle;
import android.os.RemoteException;
import android.util.Pair;
import androidx.annotation.WorkerThread;
import com.facebook.internal.security.CertificateUtil;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.atomic.AtomicReference;
/* loaded from: classes2.dex */
public final class y7 extends u3 {

    /* renamed from: c  reason: collision with root package name */
    private final x7 f10014c;

    /* renamed from: d  reason: collision with root package name */
    private p4.e f10015d;

    /* renamed from: e  reason: collision with root package name */
    private volatile Boolean f10016e;

    /* renamed from: f  reason: collision with root package name */
    private final n f10017f;

    /* renamed from: g  reason: collision with root package name */
    private final p8 f10018g;

    /* renamed from: h  reason: collision with root package name */
    private final List f10019h;

    /* renamed from: i  reason: collision with root package name */
    private final n f10020i;

    /* JADX INFO: Access modifiers changed from: protected */
    public y7(n4 n4Var) {
        super(n4Var);
        this.f10019h = new ArrayList();
        this.f10018g = new p8(n4Var.c());
        this.f10014c = new x7(this);
        this.f10017f = new i7(this, n4Var);
        this.f10020i = new k7(this, n4Var);
    }

    @WorkerThread
    private final zzq C(boolean z10) {
        Pair a10;
        this.f9432a.d();
        b3 B = this.f9432a.B();
        String str = null;
        if (z10) {
            j3 b10 = this.f9432a.b();
            if (b10.f9432a.F().f9954d != null && (a10 = b10.f9432a.F().f9954d.a()) != null && a10 != x3.f9952x) {
                str = String.valueOf(a10.second) + CertificateUtil.DELIMITER + ((String) a10.first);
            }
        }
        return B.q(str);
    }

    /* JADX INFO: Access modifiers changed from: private */
    @WorkerThread
    public final void D() {
        h();
        this.f9432a.b().v().b("Processing queued up service tasks", Integer.valueOf(this.f10019h.size()));
        for (Runnable runnable : this.f10019h) {
            try {
                runnable.run();
            } catch (RuntimeException e10) {
                this.f9432a.b().r().b("Task exception while flushing queue", e10);
            }
        }
        this.f10019h.clear();
        this.f10020i.b();
    }

    /* JADX INFO: Access modifiers changed from: private */
    @WorkerThread
    public final void E() {
        h();
        this.f10018g.b();
        n nVar = this.f10017f;
        this.f9432a.z();
        nVar.d(((Long) z2.K.a(null)).longValue());
    }

    @WorkerThread
    private final void F(Runnable runnable) throws IllegalStateException {
        h();
        if (z()) {
            runnable.run();
            return;
        }
        int size = this.f10019h.size();
        this.f9432a.z();
        if (size >= 1000) {
            this.f9432a.b().r().a("Discarding data. Max runnable queue size reached");
            return;
        }
        this.f10019h.add(runnable);
        this.f10020i.d(60000L);
        P();
    }

    private final boolean G() {
        this.f9432a.d();
        return true;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* bridge */ /* synthetic */ void M(y7 y7Var, ComponentName componentName) {
        y7Var.h();
        if (y7Var.f10015d != null) {
            y7Var.f10015d = null;
            y7Var.f9432a.b().v().b("Disconnected from device MeasurementService", componentName);
            y7Var.h();
            y7Var.P();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @WorkerThread
    public final boolean A() {
        h();
        i();
        return !B() || this.f9432a.N().o0() >= ((Integer) z2.f10041h0.a(null)).intValue();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: Removed duplicated region for block: B:46:0x012b  */
    @androidx.annotation.WorkerThread
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean B() {
        /*
            Method dump skipped, instructions count: 336
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.measurement.internal.y7.B():boolean");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final Boolean J() {
        return this.f10016e;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @WorkerThread
    public final void O() {
        h();
        i();
        zzq C = C(true);
        this.f9432a.C().r();
        F(new e7(this, C));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @WorkerThread
    public final void P() {
        h();
        i();
        if (z()) {
            return;
        }
        if (!B()) {
            if (this.f9432a.z().G()) {
                return;
            }
            this.f9432a.d();
            List<ResolveInfo> queryIntentServices = this.f9432a.f().getPackageManager().queryIntentServices(new Intent().setClassName(this.f9432a.f(), "com.google.android.gms.measurement.AppMeasurementService"), 65536);
            if (queryIntentServices != null && !queryIntentServices.isEmpty()) {
                Intent intent = new Intent("com.google.android.gms.measurement.START");
                Context f10 = this.f9432a.f();
                this.f9432a.d();
                intent.setComponent(new ComponentName(f10, "com.google.android.gms.measurement.AppMeasurementService"));
                this.f10014c.c(intent);
                return;
            }
            this.f9432a.b().r().a("Unable to use remote or local measurement implementation. Please register the AppMeasurementService service in the app manifest");
            return;
        }
        this.f10014c.d();
    }

    @WorkerThread
    public final void Q() {
        h();
        i();
        this.f10014c.e();
        try {
            d4.a.b().c(this.f9432a.f(), this.f10014c);
        } catch (IllegalArgumentException | IllegalStateException unused) {
        }
        this.f10015d = null;
    }

    @WorkerThread
    public final void R(com.google.android.gms.internal.measurement.h1 h1Var) {
        h();
        i();
        F(new d7(this, C(false), h1Var));
    }

    @WorkerThread
    public final void S(AtomicReference atomicReference) {
        h();
        i();
        F(new c7(this, atomicReference, C(false)));
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @WorkerThread
    public final void T(com.google.android.gms.internal.measurement.h1 h1Var, String str, String str2) {
        h();
        i();
        F(new q7(this, str, str2, C(false), h1Var));
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @WorkerThread
    public final void U(AtomicReference atomicReference, String str, String str2, String str3) {
        h();
        i();
        F(new p7(this, atomicReference, null, str2, str3, C(false)));
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @WorkerThread
    public final void V(com.google.android.gms.internal.measurement.h1 h1Var, String str, String str2, boolean z10) {
        h();
        i();
        F(new z6(this, str, str2, C(false), z10, h1Var));
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @WorkerThread
    public final void W(AtomicReference atomicReference, String str, String str2, String str3, boolean z10) {
        h();
        i();
        F(new r7(this, atomicReference, null, str2, str3, C(false), z10));
    }

    @Override // com.google.android.gms.measurement.internal.u3
    protected final boolean n() {
        return false;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @WorkerThread
    public final void o(zzaw zzawVar, String str) {
        com.google.android.gms.common.internal.p.j(zzawVar);
        h();
        i();
        G();
        F(new n7(this, true, C(true), this.f9432a.C().v(zzawVar), zzawVar, str));
    }

    @WorkerThread
    public final void p(com.google.android.gms.internal.measurement.h1 h1Var, zzaw zzawVar, String str) {
        h();
        i();
        if (this.f9432a.N().p0(com.google.android.gms.common.d.f7626a) != 0) {
            this.f9432a.b().w().a("Not bundling data. Service unavailable or out of date");
            this.f9432a.N().G(h1Var, new byte[0]);
            return;
        }
        F(new j7(this, zzawVar, str, h1Var));
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @WorkerThread
    public final void q() {
        h();
        i();
        zzq C = C(false);
        G();
        this.f9432a.C().q();
        F(new b7(this, C));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @WorkerThread
    public final void r(p4.e eVar, AbstractSafeParcelable abstractSafeParcelable, zzq zzqVar) {
        int i9;
        h();
        i();
        G();
        this.f9432a.z();
        int i10 = 0;
        int i11 = 100;
        while (i10 < 1001 && i11 == 100) {
            ArrayList arrayList = new ArrayList();
            List p10 = this.f9432a.C().p(100);
            if (p10 != null) {
                arrayList.addAll(p10);
                i9 = p10.size();
            } else {
                i9 = 0;
            }
            if (abstractSafeParcelable != null && i9 < 100) {
                arrayList.add(abstractSafeParcelable);
            }
            int size = arrayList.size();
            for (int i12 = 0; i12 < size; i12++) {
                AbstractSafeParcelable abstractSafeParcelable2 = (AbstractSafeParcelable) arrayList.get(i12);
                if (abstractSafeParcelable2 instanceof zzaw) {
                    try {
                        eVar.v((zzaw) abstractSafeParcelable2, zzqVar);
                    } catch (RemoteException e10) {
                        this.f9432a.b().r().b("Failed to send event to the service", e10);
                    }
                } else if (abstractSafeParcelable2 instanceof zzlc) {
                    try {
                        eVar.C((zzlc) abstractSafeParcelable2, zzqVar);
                    } catch (RemoteException e11) {
                        this.f9432a.b().r().b("Failed to send user property to the service", e11);
                    }
                } else if (abstractSafeParcelable2 instanceof zzac) {
                    try {
                        eVar.B0((zzac) abstractSafeParcelable2, zzqVar);
                    } catch (RemoteException e12) {
                        this.f9432a.b().r().b("Failed to send conditional user property to the service", e12);
                    }
                } else {
                    this.f9432a.b().r().a("Discarding data. Unrecognized parcel type.");
                }
            }
            i10++;
            i11 = i9;
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @WorkerThread
    public final void s(zzac zzacVar) {
        com.google.android.gms.common.internal.p.j(zzacVar);
        h();
        i();
        this.f9432a.d();
        F(new o7(this, true, C(true), this.f9432a.C().u(zzacVar), new zzac(zzacVar), zzacVar));
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @WorkerThread
    public final void t(boolean z10) {
        h();
        i();
        if (z10) {
            G();
            this.f9432a.C().q();
        }
        if (A()) {
            F(new m7(this, C(false)));
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @WorkerThread
    public final void u(r6 r6Var) {
        h();
        i();
        F(new g7(this, r6Var));
    }

    @WorkerThread
    public final void v(Bundle bundle) {
        h();
        i();
        F(new h7(this, C(false), bundle));
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @WorkerThread
    public final void w() {
        h();
        i();
        F(new l7(this, C(true)));
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @WorkerThread
    public final void x(p4.e eVar) {
        h();
        com.google.android.gms.common.internal.p.j(eVar);
        this.f10015d = eVar;
        E();
        D();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @WorkerThread
    public final void y(zzlc zzlcVar) {
        h();
        i();
        G();
        F(new a7(this, C(true), this.f9432a.C().w(zzlcVar), zzlcVar));
    }

    @WorkerThread
    public final boolean z() {
        h();
        i();
        return this.f10015d != null;
    }
}
