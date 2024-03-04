package com.tencent.ugc;

import com.tencent.ugc.TXVideoEditer;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes4.dex */
public final /* synthetic */ class ae implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    private final TXVideoEditer f34701a;

    /* renamed from: b  reason: collision with root package name */
    private final TXVideoEditer.TXThumbnailListener f34702b;

    private ae(TXVideoEditer tXVideoEditer, TXVideoEditer.TXThumbnailListener tXThumbnailListener) {
        this.f34701a = tXVideoEditer;
        this.f34702b = tXThumbnailListener;
    }

    public static Runnable a(TXVideoEditer tXVideoEditer, TXVideoEditer.TXThumbnailListener tXThumbnailListener) {
        return new ae(tXVideoEditer, tXThumbnailListener);
    }

    @Override // java.lang.Runnable
    public final void run() {
        TXVideoEditer.lambda$setThumbnailListener$36(this.f34701a, this.f34702b);
    }
}
