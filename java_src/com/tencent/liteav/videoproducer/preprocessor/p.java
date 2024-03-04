package com.tencent.liteav.videoproducer.preprocessor;

import com.tencent.liteav.videobase.base.GLConstants;
import com.tencent.liteav.videoproducer.preprocessor.h;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes4.dex */
public final /* synthetic */ class p implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    private final h f33101a;

    /* renamed from: b  reason: collision with root package name */
    private final GLConstants.GLScaleType f33102b;

    /* renamed from: c  reason: collision with root package name */
    private final boolean f33103c;

    private p(h hVar, GLConstants.GLScaleType gLScaleType, boolean z10) {
        this.f33101a = hVar;
        this.f33102b = gLScaleType;
        this.f33103c = z10;
    }

    public static Runnable a(h hVar, GLConstants.GLScaleType gLScaleType, boolean z10) {
        return new p(hVar, gLScaleType, z10);
    }

    @Override // java.lang.Runnable
    public final void run() {
        h hVar = this.f33101a;
        GLConstants.GLScaleType gLScaleType = this.f33102b;
        boolean z10 = this.f33103c;
        com.tencent.liteav.beauty.b.h hVar2 = (com.tencent.liteav.beauty.b.h) hVar.b(h.b.f33070d);
        if (hVar2 != null) {
            hVar2.f31146a = gLScaleType;
            hVar2.f31147b = z10;
        }
    }
}
