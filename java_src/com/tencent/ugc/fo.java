package com.tencent.ugc;

import com.tencent.ugc.TXVideoEditer;
import com.tencent.ugc.UGCThumbnailGenerator;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes4.dex */
public final /* synthetic */ class fo implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    private final UGCThumbnailGenerator f34948a;

    /* renamed from: b  reason: collision with root package name */
    private final UGCThumbnailGenerator.UGCThumbnailGenerateParams f34949b;

    /* renamed from: c  reason: collision with root package name */
    private final TXVideoEditer.TXThumbnailListener f34950c;

    private fo(UGCThumbnailGenerator uGCThumbnailGenerator, UGCThumbnailGenerator.UGCThumbnailGenerateParams uGCThumbnailGenerateParams, TXVideoEditer.TXThumbnailListener tXThumbnailListener) {
        this.f34948a = uGCThumbnailGenerator;
        this.f34949b = uGCThumbnailGenerateParams;
        this.f34950c = tXThumbnailListener;
    }

    public static Runnable a(UGCThumbnailGenerator uGCThumbnailGenerator, UGCThumbnailGenerator.UGCThumbnailGenerateParams uGCThumbnailGenerateParams, TXVideoEditer.TXThumbnailListener tXThumbnailListener) {
        return new fo(uGCThumbnailGenerator, uGCThumbnailGenerateParams, tXThumbnailListener);
    }

    @Override // java.lang.Runnable
    public final void run() {
        UGCThumbnailGenerator.lambda$start$3(this.f34948a, this.f34949b, this.f34950c);
    }
}
