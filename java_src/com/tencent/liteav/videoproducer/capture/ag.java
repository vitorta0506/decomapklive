package com.tencent.liteav.videoproducer.capture;

import com.tencent.liteav.videoproducer.capture.t;
/* loaded from: classes4.dex */
final /* synthetic */ class ag implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    private final t.AnonymousClass1 f32552a;

    /* renamed from: b  reason: collision with root package name */
    private final boolean f32553b;

    private ag(t.AnonymousClass1 anonymousClass1, boolean z10) {
        this.f32552a = anonymousClass1;
        this.f32553b = z10;
    }

    public static Runnable a(t.AnonymousClass1 anonymousClass1, boolean z10) {
        return new ag(anonymousClass1, z10);
    }

    @Override // java.lang.Runnable
    public final void run() {
        t.AnonymousClass1.a(this.f32552a, this.f32553b);
    }
}
