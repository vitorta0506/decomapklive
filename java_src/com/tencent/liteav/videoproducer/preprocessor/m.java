package com.tencent.liteav.videoproducer.preprocessor;

import com.tencent.liteav.videoproducer.preprocessor.h;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes4.dex */
public final /* synthetic */ class m implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    private final h f33090a;

    /* renamed from: b  reason: collision with root package name */
    private final float f33091b;

    private m(h hVar, float f10) {
        this.f33090a = hVar;
        this.f33091b = f10;
    }

    public static Runnable a(h hVar, float f10) {
        return new m(hVar, f10);
    }

    @Override // java.lang.Runnable
    public final void run() {
        h hVar = this.f33090a;
        final float f10 = this.f33091b;
        final com.tencent.liteav.beauty.b.i iVar = (com.tencent.liteav.beauty.b.i) hVar.b(h.b.f33069c);
        if (iVar != null) {
            iVar.runOnDraw(new Runnable(iVar, f10) { // from class: com.tencent.liteav.beauty.b.k

                /* renamed from: a  reason: collision with root package name */
                private final i f31173a;

                /* renamed from: b  reason: collision with root package name */
                private final float f31174b;

                {
                    this.f31173a = iVar;
                    this.f31174b = f10;
                }

                @Override // java.lang.Runnable
                public final void run() {
                    i iVar2 = this.f31173a;
                    iVar2.f31161e.put(1, this.f31174b);
                    iVar2.f31161e.put(2, 0.0f);
                }
            });
        }
    }
}
