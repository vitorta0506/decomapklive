package com.tencent.liteav.videoconsumer.renderer;

import com.tencent.liteav.videobase.base.GLConstants;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes4.dex */
public final /* synthetic */ class ah implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    private final p f32378a;

    /* renamed from: b  reason: collision with root package name */
    private final GLConstants.GLScaleType f32379b;

    private ah(p pVar, GLConstants.GLScaleType gLScaleType) {
        this.f32378a = pVar;
        this.f32379b = gLScaleType;
    }

    public static Runnable a(p pVar, GLConstants.GLScaleType gLScaleType) {
        return new ah(pVar, gLScaleType);
    }

    @Override // java.lang.Runnable
    public final void run() {
        p.a(this.f32378a, this.f32379b);
    }
}
