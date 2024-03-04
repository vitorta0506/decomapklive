package com.google.android.gms.measurement.internal;

import androidx.annotation.WorkerThread;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2.dex */
public abstract class u3 extends x2 {

    /* renamed from: b  reason: collision with root package name */
    private boolean f9891b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public u3(n4 n4Var) {
        super(n4Var);
        this.f9432a.i();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final void i() {
        if (!m()) {
            throw new IllegalStateException("Not initialized");
        }
    }

    public final void j() {
        if (this.f9891b) {
            throw new IllegalStateException("Can't initialize twice");
        }
        if (n()) {
            return;
        }
        this.f9432a.g();
        this.f9891b = true;
    }

    public final void k() {
        if (!this.f9891b) {
            l();
            this.f9432a.g();
            this.f9891b = true;
            return;
        }
        throw new IllegalStateException("Can't initialize twice");
    }

    @WorkerThread
    protected void l() {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final boolean m() {
        return this.f9891b;
    }

    protected abstract boolean n();
}
