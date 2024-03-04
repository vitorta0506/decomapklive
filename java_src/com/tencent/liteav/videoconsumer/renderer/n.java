package com.tencent.liteav.videoconsumer.renderer;

import com.tencent.liteav.videoconsumer.renderer.i;
/* loaded from: classes4.dex */
final /* synthetic */ class n implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    private final i.AnonymousClass1 f32416a;

    private n(i.AnonymousClass1 anonymousClass1) {
        this.f32416a = anonymousClass1;
    }

    public static Runnable a(i.AnonymousClass1 anonymousClass1) {
        return new n(anonymousClass1);
    }

    @Override // java.lang.Runnable
    public final void run() {
        i.AnonymousClass1.a(this.f32416a);
    }
}
