package com.tencent.ugc;

import android.graphics.Bitmap;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes4.dex */
public final /* synthetic */ class be implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    private final TXVideoEditer f34749a;

    /* renamed from: b  reason: collision with root package name */
    private final Bitmap f34750b;

    private be(TXVideoEditer tXVideoEditer, Bitmap bitmap) {
        this.f34749a = tXVideoEditer;
        this.f34750b = bitmap;
    }

    public static Runnable a(TXVideoEditer tXVideoEditer, Bitmap bitmap) {
        return new be(tXVideoEditer, bitmap);
    }

    @Override // java.lang.Runnable
    public final void run() {
        TXVideoEditer.lambda$setFilter$6(this.f34749a, this.f34750b);
    }
}
