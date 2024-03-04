package com.tencent.ugc.videoprocessor;

import android.graphics.Bitmap;
import com.tencent.ugc.TXVideoEditConstants;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes4.dex */
public final /* synthetic */ class b implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    private final WatermarkProcessor f35065a;

    /* renamed from: b  reason: collision with root package name */
    private final Bitmap f35066b;

    /* renamed from: c  reason: collision with root package name */
    private final TXVideoEditConstants.TXRect f35067c;

    /* renamed from: d  reason: collision with root package name */
    private final long f35068d;

    /* renamed from: e  reason: collision with root package name */
    private final int f35069e;

    private b(WatermarkProcessor watermarkProcessor, Bitmap bitmap, TXVideoEditConstants.TXRect tXRect, long j10, int i9) {
        this.f35065a = watermarkProcessor;
        this.f35066b = bitmap;
        this.f35067c = tXRect;
        this.f35068d = j10;
        this.f35069e = i9;
    }

    public static Runnable a(WatermarkProcessor watermarkProcessor, Bitmap bitmap, TXVideoEditConstants.TXRect tXRect, long j10, int i9) {
        return new b(watermarkProcessor, bitmap, tXRect, j10, i9);
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f35065a.setTailWaterMarkInternal(this.f35066b, this.f35067c, this.f35068d, this.f35069e);
    }
}
