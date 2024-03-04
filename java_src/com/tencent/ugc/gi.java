package com.tencent.ugc;

import com.tencent.liteav.videobase.utils.Rotation;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes4.dex */
public final /* synthetic */ class gi implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    private final UGCVideoProcessor f34996a;

    /* renamed from: b  reason: collision with root package name */
    private final Rotation f34997b;

    private gi(UGCVideoProcessor uGCVideoProcessor, Rotation rotation) {
        this.f34996a = uGCVideoProcessor;
        this.f34997b = rotation;
    }

    public static Runnable a(UGCVideoProcessor uGCVideoProcessor, Rotation rotation) {
        return new gi(uGCVideoProcessor, rotation);
    }

    @Override // java.lang.Runnable
    public final void run() {
        UGCVideoProcessor.lambda$setRenderRotation$5(this.f34996a, this.f34997b);
    }
}
