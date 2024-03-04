package com.tencent.ugc;

import java.util.List;
/* loaded from: classes4.dex */
final /* synthetic */ class n implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    private final TXVideoEditer f35041a;

    /* renamed from: b  reason: collision with root package name */
    private final List f35042b;

    private n(TXVideoEditer tXVideoEditer, List list) {
        this.f35041a = tXVideoEditer;
        this.f35042b = list;
    }

    public static Runnable a(TXVideoEditer tXVideoEditer, List list) {
        return new n(tXVideoEditer, list);
    }

    @Override // java.lang.Runnable
    public final void run() {
        TXVideoEditer.lambda$setAnimatedPasterList$20(this.f35041a, this.f35042b);
    }
}
