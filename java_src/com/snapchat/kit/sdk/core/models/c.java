package com.snapchat.kit.sdk.core.models;
/* loaded from: classes4.dex */
public final class c {

    /* renamed from: a  reason: collision with root package name */
    public final long f29504a;

    /* renamed from: b  reason: collision with root package name */
    public final long f29505b;

    /* renamed from: c  reason: collision with root package name */
    public final long f29506c;

    public c(long j10, long j11, long j12) {
        this.f29504a = j10;
        this.f29505b = j11;
        this.f29506c = j12;
    }

    public final boolean a(c cVar) {
        return this.f29504a == cVar.f29504a && b(cVar);
    }

    public final boolean b(c cVar) {
        return this.f29505b == cVar.f29505b && this.f29506c == cVar.f29506c;
    }
}
