package com.tencent.liteav.videoproducer.capture;

import com.tencent.liteav.videoproducer.capture.t;
/* loaded from: classes4.dex */
final /* synthetic */ class af implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    private final t.AnonymousClass1 f32550a;

    /* renamed from: b  reason: collision with root package name */
    private final boolean f32551b;

    private af(t.AnonymousClass1 anonymousClass1, boolean z10) {
        this.f32550a = anonymousClass1;
        this.f32551b = z10;
    }

    public static Runnable a(t.AnonymousClass1 anonymousClass1, boolean z10) {
        return new af(anonymousClass1, z10);
    }

    @Override // java.lang.Runnable
    public final void run() {
        t.AnonymousClass1.b(this.f32550a, this.f32551b);
    }
}
