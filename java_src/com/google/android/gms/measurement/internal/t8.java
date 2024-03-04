package com.google.android.gms.measurement.internal;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2.dex */
public abstract class t8 extends s8 {

    /* renamed from: c  reason: collision with root package name */
    private boolean f9884c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public t8(d9 d9Var) {
        super(d9Var);
        this.f9855b.r();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final void i() {
        if (!k()) {
            throw new IllegalStateException("Not initialized");
        }
    }

    public final void j() {
        if (!this.f9884c) {
            l();
            this.f9855b.m();
            this.f9884c = true;
            return;
        }
        throw new IllegalStateException("Can't initialize twice");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final boolean k() {
        return this.f9884c;
    }

    protected abstract boolean l();
}
