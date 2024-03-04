package com.tencent.ugc.videoprocessor;

import android.graphics.Bitmap;
import com.tencent.ugc.TXVideoEditConstants;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes4.dex */
public final /* synthetic */ class a implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    private final WatermarkProcessor f35062a;

    /* renamed from: b  reason: collision with root package name */
    private final Bitmap f35063b;

    /* renamed from: c  reason: collision with root package name */
    private final TXVideoEditConstants.TXRect f35064c;

    private a(WatermarkProcessor watermarkProcessor, Bitmap bitmap, TXVideoEditConstants.TXRect tXRect) {
        this.f35062a = watermarkProcessor;
        this.f35063b = bitmap;
        this.f35064c = tXRect;
    }

    public static Runnable a(WatermarkProcessor watermarkProcessor, Bitmap bitmap, TXVideoEditConstants.TXRect tXRect) {
        return new a(watermarkProcessor, bitmap, tXRect);
    }

    @Override // java.lang.Runnable
    public final void run() {
        WatermarkProcessor.lambda$setWaterMark$0(this.f35062a, this.f35063b, this.f35064c);
    }
}
