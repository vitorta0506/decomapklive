package com.tencent.ugc;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes4.dex */
public final /* synthetic */ class gn implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    private final UGCWatermarkAlphaTextureFilter f35007a;

    /* renamed from: b  reason: collision with root package name */
    private final boolean f35008b;

    private gn(UGCWatermarkAlphaTextureFilter uGCWatermarkAlphaTextureFilter, boolean z10) {
        this.f35007a = uGCWatermarkAlphaTextureFilter;
        this.f35008b = z10;
    }

    public static Runnable a(UGCWatermarkAlphaTextureFilter uGCWatermarkAlphaTextureFilter, boolean z10) {
        return new gn(uGCWatermarkAlphaTextureFilter, z10);
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f35007a.mIsShowBackImageMoment = this.f35008b;
    }
}
