package com.tencent.ugc;

import com.tencent.ugc.TXVideoEditConstants;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes4.dex */
public final /* synthetic */ class ad implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    private final TXVideoEditer f34699a;

    /* renamed from: b  reason: collision with root package name */
    private final TXVideoEditConstants.TXThumbnail f34700b;

    private ad(TXVideoEditer tXVideoEditer, TXVideoEditConstants.TXThumbnail tXThumbnail) {
        this.f34699a = tXVideoEditer;
        this.f34700b = tXThumbnail;
    }

    public static Runnable a(TXVideoEditer tXVideoEditer, TXVideoEditConstants.TXThumbnail tXThumbnail) {
        return new ad(tXVideoEditer, tXThumbnail);
    }

    @Override // java.lang.Runnable
    public final void run() {
        TXVideoEditer.lambda$setThumbnail$35(this.f34699a, this.f34700b);
    }
}
