package com.tencent.ugc;

import android.graphics.Bitmap;
import com.tencent.ugc.TXVideoEditer;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes4.dex */
public final /* synthetic */ class b implements TXVideoEditer.TXThumbnailListener {

    /* renamed from: a  reason: collision with root package name */
    private final TXVideoEditer f34742a;

    private b(TXVideoEditer tXVideoEditer) {
        this.f34742a = tXVideoEditer;
    }

    public static TXVideoEditer.TXThumbnailListener a(TXVideoEditer tXVideoEditer) {
        return new b(tXVideoEditer);
    }

    @Override // com.tencent.ugc.TXVideoEditer.TXThumbnailListener
    public final void onThumbnail(int i9, long j10, Bitmap bitmap) {
        TXVideoEditer.lambda$new$1(this.f34742a, i9, j10, bitmap);
    }
}
