package com.tencent.ugc;

import android.graphics.Bitmap;
import com.tencent.ugc.TXVideoEditer;
import java.util.List;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes4.dex */
public final /* synthetic */ class ay implements TXVideoEditer.TXThumbnailListener {

    /* renamed from: a  reason: collision with root package name */
    private final TXVideoEditer.TXThumbnailListener f34736a;

    /* renamed from: b  reason: collision with root package name */
    private final List f34737b;

    /* renamed from: c  reason: collision with root package name */
    private final UGCThumbnailGenerator f34738c;

    private ay(TXVideoEditer.TXThumbnailListener tXThumbnailListener, List list, UGCThumbnailGenerator uGCThumbnailGenerator) {
        this.f34736a = tXThumbnailListener;
        this.f34737b = list;
        this.f34738c = uGCThumbnailGenerator;
    }

    public static TXVideoEditer.TXThumbnailListener a(TXVideoEditer.TXThumbnailListener tXThumbnailListener, List list, UGCThumbnailGenerator uGCThumbnailGenerator) {
        return new ay(tXThumbnailListener, list, uGCThumbnailGenerator);
    }

    @Override // com.tencent.ugc.TXVideoEditer.TXThumbnailListener
    public final void onThumbnail(int i9, long j10, Bitmap bitmap) {
        TXVideoEditer.lambda$doGetThumbnail$53(this.f34736a, this.f34737b, this.f34738c, i9, j10, bitmap);
    }
}
