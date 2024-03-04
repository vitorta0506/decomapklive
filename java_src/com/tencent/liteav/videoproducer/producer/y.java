package com.tencent.liteav.videoproducer.producer;

import com.tencent.liteav.videobase.base.GLConstants;
/* loaded from: classes4.dex */
final /* synthetic */ class y implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    private final f f33338a;

    /* renamed from: b  reason: collision with root package name */
    private final GLConstants.GLScaleType f33339b;

    private y(f fVar, GLConstants.GLScaleType gLScaleType) {
        this.f33338a = fVar;
        this.f33339b = gLScaleType;
    }

    public static Runnable a(f fVar, GLConstants.GLScaleType gLScaleType) {
        return new y(fVar, gLScaleType);
    }

    @Override // java.lang.Runnable
    public final void run() {
        f.a(this.f33338a, this.f33339b);
    }
}
