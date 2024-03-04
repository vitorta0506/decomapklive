package com.google.android.gms.internal.recaptcha;

import java.util.Objects;
import java.util.concurrent.CancellationException;
import java.util.concurrent.ExecutionException;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2.dex */
public abstract class sb<I, O, F, T> extends sc<O> implements Runnable {

    /* renamed from: j  reason: collision with root package name */
    public static final /* synthetic */ int f9042j = 0;

    /* renamed from: h  reason: collision with root package name */
    nd<? extends I> f9043h;

    /* renamed from: i  reason: collision with root package name */
    F f9044i;

    /* JADX INFO: Access modifiers changed from: package-private */
    public sb(nd<? extends I> ndVar, F f10) {
        Objects.requireNonNull(ndVar);
        this.f9043h = ndVar;
        Objects.requireNonNull(f10);
        this.f9044i = f10;
    }

    abstract T S(F f10, I i9) throws Exception;

    abstract void T(T t10);

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.gms.internal.recaptcha.cb
    public final String k() {
        String str;
        nd<? extends I> ndVar = this.f9043h;
        F f10 = this.f9044i;
        String k10 = super.k();
        if (ndVar != null) {
            String valueOf = String.valueOf(ndVar);
            StringBuilder sb2 = new StringBuilder(valueOf.length() + 16);
            sb2.append("inputFuture=[");
            sb2.append(valueOf);
            sb2.append("], ");
            str = sb2.toString();
        } else {
            str = "";
        }
        if (f10 == null) {
            if (k10 != null) {
                String valueOf2 = String.valueOf(str);
                return k10.length() != 0 ? valueOf2.concat(k10) : new String(valueOf2);
            }
            return null;
        }
        String valueOf3 = String.valueOf(f10);
        StringBuilder sb3 = new StringBuilder(String.valueOf(str).length() + 11 + valueOf3.length());
        sb3.append(str);
        sb3.append("function=[");
        sb3.append(valueOf3);
        sb3.append("]");
        return sb3.toString();
    }

    @Override // com.google.android.gms.internal.recaptcha.cb
    protected final void l() {
        E(this.f9043h);
        this.f9043h = null;
        this.f9044i = null;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // java.lang.Runnable
    public final void run() {
        nd<? extends I> ndVar = this.f9043h;
        F f10 = this.f9044i;
        if ((isCancelled() | (ndVar == null)) || (f10 == null)) {
            return;
        }
        this.f9043h = null;
        if (ndVar.isCancelled()) {
            n(ndVar);
            return;
        }
        try {
            try {
                Object S = S(f10, dd.l(ndVar));
                this.f9044i = null;
                T(S);
            } catch (Throwable th2) {
                try {
                    J(th2);
                } finally {
                    this.f9044i = null;
                }
            }
        } catch (Error e10) {
            J(e10);
        } catch (CancellationException unused) {
            cancel(false);
        } catch (RuntimeException e11) {
            J(e11);
        } catch (ExecutionException e12) {
            J(e12.getCause());
        }
    }
}
