package com.google.android.gms.measurement.internal;

import com.google.android.gms.internal.measurement.nd;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2.dex */
public final class h6 implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ p4.a f9466a;

    /* renamed from: b  reason: collision with root package name */
    final /* synthetic */ int f9467b;

    /* renamed from: c  reason: collision with root package name */
    final /* synthetic */ long f9468c;

    /* renamed from: d  reason: collision with root package name */
    final /* synthetic */ boolean f9469d;

    /* renamed from: e  reason: collision with root package name */
    final /* synthetic */ p4.a f9470e;

    /* renamed from: f  reason: collision with root package name */
    final /* synthetic */ m6 f9471f;

    /* JADX INFO: Access modifiers changed from: package-private */
    public h6(m6 m6Var, p4.a aVar, int i9, long j10, boolean z10, p4.a aVar2) {
        this.f9471f = m6Var;
        this.f9466a = aVar;
        this.f9467b = i9;
        this.f9468c = j10;
        this.f9469d = z10;
        this.f9470e = aVar2;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f9471f.J(this.f9466a);
        m6.c0(this.f9471f, this.f9466a, this.f9467b, this.f9468c, false, this.f9469d);
        nd.b();
        if (this.f9471f.f9432a.z().B(null, z2.f10067u0)) {
            m6.b0(this.f9471f, this.f9466a, this.f9470e);
        }
    }
}
