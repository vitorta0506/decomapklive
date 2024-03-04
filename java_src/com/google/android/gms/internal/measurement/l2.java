package com.google.android.gms.internal.measurement;

import android.os.RemoteException;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2.dex */
public abstract class l2 implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    final long f8175a;

    /* renamed from: b  reason: collision with root package name */
    final long f8176b;

    /* renamed from: c  reason: collision with root package name */
    final boolean f8177c;

    /* renamed from: d  reason: collision with root package name */
    final /* synthetic */ w2 f8178d;

    /* JADX INFO: Access modifiers changed from: package-private */
    public l2(w2 w2Var, boolean z10) {
        this.f8178d = w2Var;
        this.f8175a = w2Var.f8392b.a();
        this.f8176b = w2Var.f8392b.b();
        this.f8177c = z10;
    }

    abstract void b() throws RemoteException;

    protected void c() {
    }

    @Override // java.lang.Runnable
    public final void run() {
        boolean z10;
        z10 = this.f8178d.f8397g;
        if (z10) {
            c();
            return;
        }
        try {
            b();
        } catch (Exception e10) {
            this.f8178d.m(e10, false, this.f8177c);
            c();
        }
    }
}
