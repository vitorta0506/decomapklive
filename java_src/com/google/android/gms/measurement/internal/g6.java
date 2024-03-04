package com.google.android.gms.measurement.internal;

import com.google.android.gms.internal.measurement.nd;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2.dex */
public final class g6 implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ p4.a f9433a;

    /* renamed from: b  reason: collision with root package name */
    final /* synthetic */ long f9434b;

    /* renamed from: c  reason: collision with root package name */
    final /* synthetic */ int f9435c;

    /* renamed from: d  reason: collision with root package name */
    final /* synthetic */ long f9436d;

    /* renamed from: e  reason: collision with root package name */
    final /* synthetic */ boolean f9437e;

    /* renamed from: f  reason: collision with root package name */
    final /* synthetic */ p4.a f9438f;

    /* renamed from: g  reason: collision with root package name */
    final /* synthetic */ m6 f9439g;

    /* JADX INFO: Access modifiers changed from: package-private */
    public g6(m6 m6Var, p4.a aVar, long j10, int i9, long j11, boolean z10, p4.a aVar2) {
        this.f9439g = m6Var;
        this.f9433a = aVar;
        this.f9434b = j10;
        this.f9435c = i9;
        this.f9436d = j11;
        this.f9437e = z10;
        this.f9438f = aVar2;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f9439g.J(this.f9433a);
        this.f9439g.z(this.f9434b, false);
        m6.c0(this.f9439g, this.f9433a, this.f9435c, this.f9436d, true, this.f9437e);
        nd.b();
        if (this.f9439g.f9432a.z().B(null, z2.f10067u0)) {
            m6.b0(this.f9439g, this.f9433a, this.f9438f);
        }
    }
}
