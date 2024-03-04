package com.google.android.gms.measurement.internal;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2.dex */
public final class p8 {

    /* renamed from: a  reason: collision with root package name */
    private final e4.d f9759a;

    /* renamed from: b  reason: collision with root package name */
    private long f9760b;

    public p8(e4.d dVar) {
        com.google.android.gms.common.internal.p.j(dVar);
        this.f9759a = dVar;
    }

    public final void a() {
        this.f9760b = 0L;
    }

    public final void b() {
        this.f9760b = this.f9759a.b();
    }

    public final boolean c(long j10) {
        return this.f9760b == 0 || this.f9759a.b() - this.f9760b >= 3600000;
    }
}
