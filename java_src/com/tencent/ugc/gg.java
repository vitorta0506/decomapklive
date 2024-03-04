package com.tencent.ugc;

import com.tencent.liteav.videobase.base.GLConstants;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes4.dex */
public final /* synthetic */ class gg implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    private final UGCVideoProcessor f34989a;

    /* renamed from: b  reason: collision with root package name */
    private final int f34990b;

    /* renamed from: c  reason: collision with root package name */
    private final int f34991c;

    /* renamed from: d  reason: collision with root package name */
    private final GLConstants.GLScaleType f34992d;

    private gg(UGCVideoProcessor uGCVideoProcessor, int i9, int i10, GLConstants.GLScaleType gLScaleType) {
        this.f34989a = uGCVideoProcessor;
        this.f34990b = i9;
        this.f34991c = i10;
        this.f34992d = gLScaleType;
    }

    public static Runnable a(UGCVideoProcessor uGCVideoProcessor, int i9, int i10, GLConstants.GLScaleType gLScaleType) {
        return new gg(uGCVideoProcessor, i9, i10, gLScaleType);
    }

    @Override // java.lang.Runnable
    public final void run() {
        UGCVideoProcessor.lambda$setOutputSize$3(this.f34989a, this.f34990b, this.f34991c, this.f34992d);
    }
}
