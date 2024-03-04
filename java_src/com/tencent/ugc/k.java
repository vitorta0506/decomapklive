package com.tencent.ugc;

import android.graphics.Bitmap;
import com.tencent.ugc.TXVideoEditConstants;
/* loaded from: classes4.dex */
final /* synthetic */ class k implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    private final TXVideoEditer f35033a;

    /* renamed from: b  reason: collision with root package name */
    private final int f35034b;

    /* renamed from: c  reason: collision with root package name */
    private final Bitmap f35035c;

    /* renamed from: d  reason: collision with root package name */
    private final TXVideoEditConstants.TXRect f35036d;

    private k(TXVideoEditer tXVideoEditer, int i9, Bitmap bitmap, TXVideoEditConstants.TXRect tXRect) {
        this.f35033a = tXVideoEditer;
        this.f35034b = i9;
        this.f35035c = bitmap;
        this.f35036d = tXRect;
    }

    public static Runnable a(TXVideoEditer tXVideoEditer, int i9, Bitmap bitmap, TXVideoEditConstants.TXRect tXRect) {
        return new k(tXVideoEditer, i9, bitmap, tXRect);
    }

    @Override // java.lang.Runnable
    public final void run() {
        TXVideoEditer.lambda$setTailWaterMark$18(this.f35033a, this.f35034b, this.f35035c, this.f35036d);
    }
}
