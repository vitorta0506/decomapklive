package com.tencent.ugc;

import com.tencent.ugc.TXVideoEditer;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes4.dex */
public final /* synthetic */ class bg implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    private final TXVideoEditer.TXVideoPreviewListener f34754a;

    private bg(TXVideoEditer.TXVideoPreviewListener tXVideoPreviewListener) {
        this.f34754a = tXVideoPreviewListener;
    }

    public static Runnable a(TXVideoEditer.TXVideoPreviewListener tXVideoPreviewListener) {
        return new bg(tXVideoPreviewListener);
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f34754a.onPreviewFinished();
    }
}
