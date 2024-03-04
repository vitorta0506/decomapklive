package com.tencent.ugc;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes4.dex */
public final /* synthetic */ class go implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    private final UGCWatermarkAlphaTextureFilter f35009a;

    /* renamed from: b  reason: collision with root package name */
    private final int f35010b;

    /* renamed from: c  reason: collision with root package name */
    private final int f35011c;

    /* renamed from: d  reason: collision with root package name */
    private final int f35012d;

    /* renamed from: e  reason: collision with root package name */
    private final float f35013e;

    /* renamed from: f  reason: collision with root package name */
    private final float f35014f;

    /* renamed from: g  reason: collision with root package name */
    private final float f35015g;

    private go(UGCWatermarkAlphaTextureFilter uGCWatermarkAlphaTextureFilter, int i9, int i10, int i11, float f10, float f11, float f12) {
        this.f35009a = uGCWatermarkAlphaTextureFilter;
        this.f35010b = i9;
        this.f35011c = i10;
        this.f35012d = i11;
        this.f35013e = f10;
        this.f35014f = f11;
        this.f35015g = f12;
    }

    public static Runnable a(UGCWatermarkAlphaTextureFilter uGCWatermarkAlphaTextureFilter, int i9, int i10, int i11, float f10, float f11, float f12) {
        return new go(uGCWatermarkAlphaTextureFilter, i9, i10, i11, f10, f11, f12);
    }

    @Override // java.lang.Runnable
    public final void run() {
        UGCWatermarkAlphaTextureFilter.lambda$setTextureWatermark$1(this.f35009a, this.f35010b, this.f35011c, this.f35012d, this.f35013e, this.f35014f, this.f35015g);
    }
}
