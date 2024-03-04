package com.google.android.gms.internal.recaptcha;

import java.util.Objects;
import java.util.Set;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Future;
import java.util.logging.Level;
import java.util.logging.Logger;
/* loaded from: classes2.dex */
abstract class vb<InputT, OutputT> extends bc<OutputT> {

    /* renamed from: n  reason: collision with root package name */
    private static final Logger f9103n = Logger.getLogger(vb.class.getName());

    /* renamed from: l  reason: collision with root package name */
    private zzke<? extends nd<? extends InputT>> f9104l;

    /* renamed from: m  reason: collision with root package name */
    private final boolean f9105m;

    /* JADX INFO: Access modifiers changed from: package-private */
    public vb(zzke<? extends nd<? extends InputT>> zzkeVar, boolean z10, boolean z11) {
        super(zzkeVar.size());
        this.f9104l = zzkeVar;
        this.f9105m = z10;
    }

    private final void a0(Throwable th2) {
        Objects.requireNonNull(th2);
        if (this.f9105m && !J(th2) && d0(W(), th2)) {
            b0(th2);
        } else if (th2 instanceof Error) {
            b0(th2);
        }
    }

    private static void b0(Throwable th2) {
        f9103n.logp(Level.SEVERE, "com.google.common.util.concurrent.AggregateFuture", "log", true != (th2 instanceof Error) ? "Got more than one input Future failure. Logging failures after the first" : "Input Future failed with Error", th2);
    }

    private static boolean d0(Set<Throwable> set, Throwable th2) {
        while (th2 != null) {
            if (!set.add(th2)) {
                return false;
            }
            th2 = th2.getCause();
        }
        return true;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ zzke e0(vb vbVar, zzke zzkeVar) {
        vbVar.f9104l = null;
        return null;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ void g0(vb vbVar, int i9, Future future) {
        try {
            dd.l(future);
        } catch (ExecutionException e10) {
            vbVar.a0(e10.getCause());
        } catch (Throwable th2) {
            vbVar.a0(th2);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ void h0(vb vbVar, zzke zzkeVar) {
        int T = vbVar.T();
        z7.j(T >= 0, "Less than 0 remaining futures");
        if (T == 0) {
            vbVar.X();
            vbVar.i0();
            vbVar.Z(2);
        }
    }

    @Override // com.google.android.gms.internal.recaptcha.bc
    final void Y(Set<Throwable> set) {
        Objects.requireNonNull(set);
        if (isCancelled()) {
            return;
        }
        Throwable b10 = b();
        b10.getClass();
        d0(set, b10);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void Z(int i9) {
        this.f9104l = null;
    }

    abstract void i0();

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void j0() {
        zzke<? extends nd<? extends InputT>> zzkeVar = this.f9104l;
        zzkeVar.getClass();
        if (zzkeVar.isEmpty()) {
            i0();
        } else if (this.f9105m) {
            j9<? extends nd<? extends InputT>> it = this.f9104l.iterator();
            int i9 = 0;
            while (it.hasNext()) {
                nd<? extends InputT> next = it.next();
                next.F(new tb(this, next, i9), kc.INSTANCE);
                i9++;
            }
        } else {
            ub ubVar = new ub(this, null);
            j9<? extends nd<? extends InputT>> it2 = this.f9104l.iterator();
            while (it2.hasNext()) {
                it2.next().F(ubVar, kc.INSTANCE);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.gms.internal.recaptcha.cb
    public final String k() {
        zzke<? extends nd<? extends InputT>> zzkeVar = this.f9104l;
        if (zzkeVar != null) {
            String valueOf = String.valueOf(zzkeVar);
            StringBuilder sb2 = new StringBuilder(valueOf.length() + 8);
            sb2.append("futures=");
            sb2.append(valueOf);
            return sb2.toString();
        }
        return super.k();
    }

    @Override // com.google.android.gms.internal.recaptcha.cb
    protected final void l() {
        zzke<? extends nd<? extends InputT>> zzkeVar = this.f9104l;
        Z(1);
        if ((zzkeVar != null) && isCancelled()) {
            boolean K = K();
            j9<? extends nd<? extends InputT>> it = zzkeVar.iterator();
            while (it.hasNext()) {
                it.next().cancel(K);
            }
        }
    }
}
