package com.tencent.ugc;

import com.tencent.liteav.videobase.base.GLConstants;
import com.tencent.liteav.videobase.videobase.DisplayTarget;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes4.dex */
public final /* synthetic */ class gh implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    private final UGCVideoProcessor f34993a;

    /* renamed from: b  reason: collision with root package name */
    private final DisplayTarget f34994b;

    /* renamed from: c  reason: collision with root package name */
    private final GLConstants.GLScaleType f34995c;

    private gh(UGCVideoProcessor uGCVideoProcessor, DisplayTarget displayTarget, GLConstants.GLScaleType gLScaleType) {
        this.f34993a = uGCVideoProcessor;
        this.f34994b = displayTarget;
        this.f34995c = gLScaleType;
    }

    public static Runnable a(UGCVideoProcessor uGCVideoProcessor, DisplayTarget displayTarget, GLConstants.GLScaleType gLScaleType) {
        return new gh(uGCVideoProcessor, displayTarget, gLScaleType);
    }

    @Override // java.lang.Runnable
    public final void run() {
        UGCVideoProcessor.lambda$setDisplayView$4(this.f34993a, this.f34994b, this.f34995c);
    }
}
