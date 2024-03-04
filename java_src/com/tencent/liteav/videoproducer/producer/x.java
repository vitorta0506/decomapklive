package com.tencent.liteav.videoproducer.producer;

import com.tencent.liteav.videobase.base.GLConstants;
/* loaded from: classes4.dex */
final /* synthetic */ class x implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    private final f f33336a;

    /* renamed from: b  reason: collision with root package name */
    private final GLConstants.MirrorMode f33337b;

    private x(f fVar, GLConstants.MirrorMode mirrorMode) {
        this.f33336a = fVar;
        this.f33337b = mirrorMode;
    }

    public static Runnable a(f fVar, GLConstants.MirrorMode mirrorMode) {
        return new x(fVar, mirrorMode);
    }

    @Override // java.lang.Runnable
    public final void run() {
        f.a(this.f33336a, this.f33337b);
    }
}
