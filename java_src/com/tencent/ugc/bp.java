package com.tencent.ugc;

import com.tencent.ugc.TXVideoEditer;
/* loaded from: classes4.dex */
final /* synthetic */ class bp implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    private final TXVideoEditer.AnonymousClass4 f34779a;

    private bp(TXVideoEditer.AnonymousClass4 anonymousClass4) {
        this.f34779a = anonymousClass4;
    }

    public static Runnable a(TXVideoEditer.AnonymousClass4 anonymousClass4) {
        return new bp(anonymousClass4);
    }

    @Override // java.lang.Runnable
    public final void run() {
        TXVideoEditer.AnonymousClass4.a(this.f34779a);
    }
}
