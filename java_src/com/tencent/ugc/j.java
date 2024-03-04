package com.tencent.ugc;

import android.graphics.Bitmap;
import com.tencent.ugc.TXVideoEditConstants;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes4.dex */
public final /* synthetic */ class j implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    private final TXVideoEditer f35030a;

    /* renamed from: b  reason: collision with root package name */
    private final TXVideoEditConstants.TXRect f35031b;

    /* renamed from: c  reason: collision with root package name */
    private final Bitmap f35032c;

    private j(TXVideoEditer tXVideoEditer, TXVideoEditConstants.TXRect tXRect, Bitmap bitmap) {
        this.f35030a = tXVideoEditer;
        this.f35031b = tXRect;
        this.f35032c = bitmap;
    }

    public static Runnable a(TXVideoEditer tXVideoEditer, TXVideoEditConstants.TXRect tXRect, Bitmap bitmap) {
        return new j(tXVideoEditer, tXRect, bitmap);
    }

    @Override // java.lang.Runnable
    public final void run() {
        TXVideoEditer.lambda$setWaterMark$17(this.f35030a, this.f35031b, this.f35032c);
    }
}
