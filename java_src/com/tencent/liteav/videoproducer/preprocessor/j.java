package com.tencent.liteav.videoproducer.preprocessor;

import android.graphics.Bitmap;
import com.tencent.liteav.videoproducer.preprocessor.h;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes4.dex */
public final /* synthetic */ class j implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    private final h f33081a;

    /* renamed from: b  reason: collision with root package name */
    private final Bitmap f33082b;

    /* renamed from: c  reason: collision with root package name */
    private final float f33083c;

    /* renamed from: d  reason: collision with root package name */
    private final float f33084d;

    /* renamed from: e  reason: collision with root package name */
    private final float f33085e;

    private j(h hVar, Bitmap bitmap, float f10, float f11, float f12) {
        this.f33081a = hVar;
        this.f33082b = bitmap;
        this.f33083c = f10;
        this.f33084d = f11;
        this.f33085e = f12;
    }

    public static Runnable a(h hVar, Bitmap bitmap, float f10, float f11, float f12) {
        return new j(hVar, bitmap, f10, f11, f12);
    }

    @Override // java.lang.Runnable
    public final void run() {
        h hVar = this.f33081a;
        Bitmap bitmap = this.f33082b;
        float f10 = this.f33083c;
        float f11 = this.f33084d;
        float f12 = this.f33085e;
        if (bitmap == null) {
            hVar.c(h.b.f33071e);
            return;
        }
        com.tencent.liteav.beauty.b.n nVar = (com.tencent.liteav.beauty.b.n) hVar.a(h.b.f33071e);
        nVar.enableWatermark(true);
        nVar.setWatermark(bitmap, f10, f11, f12);
        com.tencent.liteav.beauty.a.h(hVar.f33044a);
    }
}
