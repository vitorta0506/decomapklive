package com.tencent.ugc;

import com.tencent.ugc.TXVideoEditConstants;
/* loaded from: classes4.dex */
final /* synthetic */ class ca implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    private final TXVideoJoiner f34805a;

    /* renamed from: b  reason: collision with root package name */
    private final TXVideoEditConstants.TXPreviewParam f34806b;

    private ca(TXVideoJoiner tXVideoJoiner, TXVideoEditConstants.TXPreviewParam tXPreviewParam) {
        this.f34805a = tXVideoJoiner;
        this.f34806b = tXPreviewParam;
    }

    public static Runnable a(TXVideoJoiner tXVideoJoiner, TXVideoEditConstants.TXPreviewParam tXPreviewParam) {
        return new ca(tXVideoJoiner, tXPreviewParam);
    }

    @Override // java.lang.Runnable
    public final void run() {
        TXVideoJoiner.lambda$initWithPreview$1(this.f34805a, this.f34806b);
    }
}
