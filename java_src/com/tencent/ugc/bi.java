package com.tencent.ugc;

import com.tencent.ugc.TXVideoEditer;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes4.dex */
public final /* synthetic */ class bi implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    private final TXVideoEditer.TXVideoGenerateListener f34757a;

    /* renamed from: b  reason: collision with root package name */
    private final float f34758b;

    private bi(TXVideoEditer.TXVideoGenerateListener tXVideoGenerateListener, float f10) {
        this.f34757a = tXVideoGenerateListener;
        this.f34758b = f10;
    }

    public static Runnable a(TXVideoEditer.TXVideoGenerateListener tXVideoGenerateListener, float f10) {
        return new bi(tXVideoGenerateListener, f10);
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f34757a.onGenerateProgress(this.f34758b);
    }
}
