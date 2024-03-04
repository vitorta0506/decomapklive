package com.google.android.gms.measurement.internal;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2.dex */
public abstract class h5 extends g5 {

    /* renamed from: b  reason: collision with root package name */
    private boolean f9465b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public h5(n4 n4Var) {
        super(n4Var);
        this.f9432a.i();
    }

    protected void i() {
    }

    protected abstract boolean j();

    /* JADX INFO: Access modifiers changed from: protected */
    public final void k() {
        if (!n()) {
            throw new IllegalStateException("Not initialized");
        }
    }

    public final void l() {
        if (!this.f9465b) {
            if (j()) {
                return;
            }
            this.f9432a.g();
            this.f9465b = true;
            return;
        }
        throw new IllegalStateException("Can't initialize twice");
    }

    public final void m() {
        if (!this.f9465b) {
            i();
            this.f9432a.g();
            this.f9465b = true;
            return;
        }
        throw new IllegalStateException("Can't initialize twice");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final boolean n() {
        return this.f9465b;
    }
}
