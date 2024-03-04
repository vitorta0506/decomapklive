package com.tencent.liteav.txcvodplayer.renderer;

import com.tencent.liteav.videobase.base.GLConstants;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes4.dex */
public final /* synthetic */ class i implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    private final d f31658a;

    /* renamed from: b  reason: collision with root package name */
    private final GLConstants.GLScaleType f31659b;

    private i(d dVar, GLConstants.GLScaleType gLScaleType) {
        this.f31658a = dVar;
        this.f31659b = gLScaleType;
    }

    public static Runnable a(d dVar, GLConstants.GLScaleType gLScaleType) {
        return new i(dVar, gLScaleType);
    }

    @Override // java.lang.Runnable
    public final void run() {
        d.a(this.f31658a, this.f31659b);
    }
}
