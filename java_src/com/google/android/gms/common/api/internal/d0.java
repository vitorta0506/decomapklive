package com.google.android.gms.common.api.internal;

import android.app.Dialog;
import android.app.PendingIntent;
import androidx.annotation.MainThread;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.api.GoogleApiActivity;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2.dex */
public final class d0 implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    private final b0 f7544a;

    /* renamed from: b  reason: collision with root package name */
    final /* synthetic */ e0 f7545b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public d0(e0 e0Var, b0 b0Var) {
        this.f7545b = e0Var;
        this.f7544a = b0Var;
    }

    @Override // java.lang.Runnable
    @MainThread
    public final void run() {
        if (this.f7545b.f7548b) {
            ConnectionResult b10 = this.f7544a.b();
            if (b10.M()) {
                e0 e0Var = this.f7545b;
                e0Var.f7503a.startActivityForResult(GoogleApiActivity.a(e0Var.b(), (PendingIntent) com.google.android.gms.common.internal.p.j(b10.L()), this.f7544a.a(), false), 1);
                return;
            }
            e0 e0Var2 = this.f7545b;
            if (e0Var2.f7551e.b(e0Var2.b(), b10.I(), null) != null) {
                e0 e0Var3 = this.f7545b;
                e0Var3.f7551e.v(e0Var3.b(), this.f7545b.f7503a, b10.I(), 2, this.f7545b);
            } else if (b10.I() == 18) {
                e0 e0Var4 = this.f7545b;
                Dialog q10 = e0Var4.f7551e.q(e0Var4.b(), this.f7545b);
                e0 e0Var5 = this.f7545b;
                e0Var5.f7551e.r(e0Var5.b().getApplicationContext(), new c0(this, q10));
            } else {
                this.f7545b.l(b10, this.f7544a.a());
            }
        }
    }
}
