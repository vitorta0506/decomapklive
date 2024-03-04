package com.tencent.ugc;

import com.tencent.ugc.TXVideoEditer;
/* loaded from: classes4.dex */
final /* synthetic */ class bo implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    private final TXVideoEditer.AnonymousClass4 f34777a;

    /* renamed from: b  reason: collision with root package name */
    private final long f34778b;

    private bo(TXVideoEditer.AnonymousClass4 anonymousClass4, long j10) {
        this.f34777a = anonymousClass4;
        this.f34778b = j10;
    }

    public static Runnable a(TXVideoEditer.AnonymousClass4 anonymousClass4, long j10) {
        return new bo(anonymousClass4, j10);
    }

    @Override // java.lang.Runnable
    public final void run() {
        TXVideoEditer.AnonymousClass4.a(this.f34777a, this.f34778b);
    }
}
