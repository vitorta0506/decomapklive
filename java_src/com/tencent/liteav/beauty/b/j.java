package com.tencent.liteav.beauty.b;

import android.graphics.Bitmap;
import com.tencent.liteav.videobase.utils.OpenGlUtils;
/* loaded from: classes4.dex */
final /* synthetic */ class j implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    private final i f31167a;

    /* renamed from: b  reason: collision with root package name */
    private final float f31168b;

    /* renamed from: c  reason: collision with root package name */
    private final float f31169c;

    /* renamed from: d  reason: collision with root package name */
    private final float f31170d;

    /* renamed from: e  reason: collision with root package name */
    private final Bitmap f31171e;

    /* renamed from: f  reason: collision with root package name */
    private final Bitmap f31172f;

    private j(i iVar, float f10, float f11, float f12, Bitmap bitmap, Bitmap bitmap2) {
        this.f31167a = iVar;
        this.f31168b = f10;
        this.f31169c = f11;
        this.f31170d = f12;
        this.f31171e = bitmap;
        this.f31172f = bitmap2;
    }

    public static Runnable a(i iVar, float f10, float f11, float f12, Bitmap bitmap, Bitmap bitmap2) {
        return new j(iVar, f10, f11, f12, bitmap, bitmap2);
    }

    @Override // java.lang.Runnable
    public final void run() {
        i iVar = this.f31167a;
        float f10 = this.f31168b;
        float f11 = this.f31169c;
        float f12 = this.f31170d;
        Bitmap bitmap = this.f31171e;
        Bitmap bitmap2 = this.f31172f;
        iVar.f31161e.put(0, f10);
        iVar.f31161e.put(1, f11);
        iVar.f31161e.put(2, f12);
        if (bitmap == null) {
            OpenGlUtils.deleteTexture(iVar.f31158b);
            iVar.f31158b = -1;
            iVar.f31162f.put(0, 0.0f);
        } else if (bitmap != iVar.f31157a) {
            iVar.f31158b = OpenGlUtils.loadTexture(bitmap, iVar.f31158b, false);
            iVar.f31162f.put(0, 1.0f);
        }
        if (bitmap2 == null) {
            OpenGlUtils.deleteTexture(iVar.f31160d);
            iVar.f31160d = -1;
            iVar.f31162f.put(1, 0.0f);
        } else if (bitmap2 != iVar.f31159c) {
            iVar.f31160d = OpenGlUtils.loadTexture(bitmap2, iVar.f31160d, false);
            iVar.f31162f.put(1, 1.0f);
        }
        iVar.f31157a = bitmap;
        iVar.f31159c = bitmap2;
    }
}
