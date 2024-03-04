package com.tencent.liteav.videoproducer.capture;

import com.tencent.liteav.videoproducer.capture.t;
/* loaded from: classes4.dex */
final /* synthetic */ class ac implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    private final t.AnonymousClass1 f32545a;

    /* renamed from: b  reason: collision with root package name */
    private final boolean f32546b;

    private ac(t.AnonymousClass1 anonymousClass1, boolean z10) {
        this.f32545a = anonymousClass1;
        this.f32546b = z10;
    }

    public static Runnable a(t.AnonymousClass1 anonymousClass1, boolean z10) {
        return new ac(anonymousClass1, z10);
    }

    @Override // java.lang.Runnable
    public final void run() {
        t.AnonymousClass1.c(this.f32545a, this.f32546b);
    }
}
