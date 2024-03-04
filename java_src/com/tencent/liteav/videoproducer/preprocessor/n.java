package com.tencent.liteav.videoproducer.preprocessor;

import android.graphics.Bitmap;
import com.tencent.liteav.videoproducer.preprocessor.h;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes4.dex */
public final /* synthetic */ class n implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    private final h f33092a;

    /* renamed from: b  reason: collision with root package name */
    private final Bitmap f33093b;

    /* renamed from: c  reason: collision with root package name */
    private final Bitmap f33094c;

    /* renamed from: d  reason: collision with root package name */
    private final float f33095d;

    /* renamed from: e  reason: collision with root package name */
    private final float f33096e;

    /* renamed from: f  reason: collision with root package name */
    private final float f33097f;

    private n(h hVar, Bitmap bitmap, Bitmap bitmap2, float f10, float f11, float f12) {
        this.f33092a = hVar;
        this.f33093b = bitmap;
        this.f33094c = bitmap2;
        this.f33095d = f10;
        this.f33096e = f11;
        this.f33097f = f12;
    }

    public static Runnable a(h hVar, Bitmap bitmap, Bitmap bitmap2, float f10, float f11, float f12) {
        return new n(hVar, bitmap, bitmap2, f10, f11, f12);
    }

    @Override // java.lang.Runnable
    public final void run() {
        h hVar = this.f33092a;
        Bitmap bitmap = this.f33093b;
        Bitmap bitmap2 = this.f33094c;
        float f10 = this.f33095d;
        float f11 = this.f33096e;
        float f12 = this.f33097f;
        if (bitmap == null && bitmap2 == null) {
            hVar.c(h.b.f33069c);
            return;
        }
        ((com.tencent.liteav.beauty.b.i) hVar.a(h.b.f33069c)).a(f10, bitmap, f11, bitmap2, f12);
        com.tencent.liteav.beauty.a.f(hVar.f33044a);
    }
}
