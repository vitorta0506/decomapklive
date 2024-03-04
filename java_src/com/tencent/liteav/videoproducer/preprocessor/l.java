package com.tencent.liteav.videoproducer.preprocessor;

import com.tencent.liteav.videoproducer.preprocessor.h;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes4.dex */
public final /* synthetic */ class l implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    private final h f33088a;

    /* renamed from: b  reason: collision with root package name */
    private final float f33089b;

    private l(h hVar, float f10) {
        this.f33088a = hVar;
        this.f33089b = f10;
    }

    public static Runnable a(h hVar, float f10) {
        return new l(hVar, f10);
    }

    @Override // java.lang.Runnable
    public final void run() {
        h hVar = this.f33088a;
        float f10 = this.f33089b;
        if (f10 < 0.0f) {
            hVar.c(h.b.f33068b);
            return;
        }
        com.tencent.liteav.beauty.b.f fVar = (com.tencent.liteav.beauty.b.f) hVar.a(h.b.f33068b);
        if (fVar != null) {
            fVar.f31139a.a(f10, 0.0f);
            fVar.f31140b.a(0.0f, f10);
        }
    }
}
