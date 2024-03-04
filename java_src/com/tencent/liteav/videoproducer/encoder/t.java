package com.tencent.liteav.videoproducer.encoder;

import com.tencent.liteav.videobase.videobase.h;
/* loaded from: classes4.dex */
final /* synthetic */ class t implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    private final o f32957a;

    /* renamed from: b  reason: collision with root package name */
    private final h.a f32958b;

    private t(o oVar, h.a aVar) {
        this.f32957a = oVar;
        this.f32958b = aVar;
    }

    public static Runnable a(o oVar, h.a aVar) {
        return new t(oVar, aVar);
    }

    @Override // java.lang.Runnable
    public final void run() {
        o.a(this.f32957a, this.f32958b);
    }
}
