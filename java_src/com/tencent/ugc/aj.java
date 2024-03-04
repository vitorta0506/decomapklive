package com.tencent.ugc;

import com.tencent.ugc.TXVideoEditConstants;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes4.dex */
public final /* synthetic */ class aj implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    private final TXVideoEditer f34709a;

    /* renamed from: b  reason: collision with root package name */
    private final TXVideoEditConstants.TXPreviewParam f34710b;

    private aj(TXVideoEditer tXVideoEditer, TXVideoEditConstants.TXPreviewParam tXPreviewParam) {
        this.f34709a = tXVideoEditer;
        this.f34710b = tXPreviewParam;
    }

    public static Runnable a(TXVideoEditer tXVideoEditer, TXVideoEditConstants.TXPreviewParam tXPreviewParam) {
        return new aj(tXVideoEditer, tXPreviewParam);
    }

    @Override // java.lang.Runnable
    public final void run() {
        TXVideoEditer.lambda$initWithPreview$39(this.f34709a, this.f34710b);
    }
}
