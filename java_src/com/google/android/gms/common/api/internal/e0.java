package com.google.android.gms.common.api.internal;

import android.app.PendingIntent;
import android.content.DialogInterface;
import android.content.Intent;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import androidx.annotation.Nullable;
import com.google.android.gms.common.ConnectionResult;
import java.util.concurrent.atomic.AtomicReference;
/* loaded from: classes2.dex */
public abstract class e0 extends LifecycleCallback implements DialogInterface.OnCancelListener {

    /* renamed from: b  reason: collision with root package name */
    protected volatile boolean f7548b;

    /* renamed from: c  reason: collision with root package name */
    protected final AtomicReference f7549c;

    /* renamed from: d  reason: collision with root package name */
    private final Handler f7550d;

    /* renamed from: e  reason: collision with root package name */
    protected final com.google.android.gms.common.a f7551e;

    /* JADX INFO: Access modifiers changed from: package-private */
    public e0(v3.e eVar, com.google.android.gms.common.a aVar) {
        super(eVar);
        this.f7549c = new AtomicReference(null);
        this.f7550d = new k4.h(Looper.getMainLooper());
        this.f7551e = aVar;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void l(ConnectionResult connectionResult, int i9) {
        this.f7549c.set(null);
        m(connectionResult, i9);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void o() {
        this.f7549c.set(null);
        n();
    }

    private static final int p(@Nullable b0 b0Var) {
        if (b0Var == null) {
            return -1;
        }
        return b0Var.a();
    }

    @Override // com.google.android.gms.common.api.internal.LifecycleCallback
    public final void e(int i9, int i10, Intent intent) {
        b0 b0Var = (b0) this.f7549c.get();
        if (i9 != 1) {
            if (i9 == 2) {
                int g10 = this.f7551e.g(b());
                if (g10 == 0) {
                    o();
                    return;
                } else if (b0Var == null) {
                    return;
                } else {
                    if (b0Var.b().I() == 18 && g10 == 18) {
                        return;
                    }
                }
            }
        } else if (i10 == -1) {
            o();
            return;
        } else if (i10 == 0) {
            if (b0Var == null) {
                return;
            }
            l(new ConnectionResult(intent != null ? intent.getIntExtra("<<ResolutionFailureErrorDetail>>", 13) : 13, null, b0Var.b().toString()), p(b0Var));
            return;
        }
        if (b0Var != null) {
            l(b0Var.b(), b0Var.a());
        }
    }

    @Override // com.google.android.gms.common.api.internal.LifecycleCallback
    public final void f(@Nullable Bundle bundle) {
        super.f(bundle);
        if (bundle != null) {
            this.f7549c.set(bundle.getBoolean("resolving_error", false) ? new b0(new ConnectionResult(bundle.getInt("failed_status"), (PendingIntent) bundle.getParcelable("failed_resolution")), bundle.getInt("failed_client_id", -1)) : null);
        }
    }

    @Override // com.google.android.gms.common.api.internal.LifecycleCallback
    public final void i(Bundle bundle) {
        super.i(bundle);
        b0 b0Var = (b0) this.f7549c.get();
        if (b0Var == null) {
            return;
        }
        bundle.putBoolean("resolving_error", true);
        bundle.putInt("failed_client_id", b0Var.a());
        bundle.putInt("failed_status", b0Var.b().I());
        bundle.putParcelable("failed_resolution", b0Var.b().L());
    }

    @Override // com.google.android.gms.common.api.internal.LifecycleCallback
    public void j() {
        super.j();
        this.f7548b = true;
    }

    @Override // com.google.android.gms.common.api.internal.LifecycleCallback
    public void k() {
        super.k();
        this.f7548b = false;
    }

    protected abstract void m(ConnectionResult connectionResult, int i9);

    protected abstract void n();

    @Override // android.content.DialogInterface.OnCancelListener
    public final void onCancel(DialogInterface dialogInterface) {
        l(new ConnectionResult(13, null), p((b0) this.f7549c.get()));
    }

    public final void s(ConnectionResult connectionResult, int i9) {
        b0 b0Var = new b0(connectionResult, i9);
        AtomicReference atomicReference = this.f7549c;
        while (!atomicReference.compareAndSet(null, b0Var)) {
            if (atomicReference.get() != null) {
                return;
            }
        }
        this.f7550d.post(new d0(this, b0Var));
    }
}
