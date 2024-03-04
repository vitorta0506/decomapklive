package com.tencent.ugc;

import java.util.List;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes4.dex */
public final /* synthetic */ class r implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    private final TXVideoEditer f35049a;

    /* renamed from: b  reason: collision with root package name */
    private final List f35050b;

    private r(TXVideoEditer tXVideoEditer, List list) {
        this.f35049a = tXVideoEditer;
        this.f35050b = list;
    }

    public static Runnable a(TXVideoEditer tXVideoEditer, List list) {
        return new r(tXVideoEditer, list);
    }

    @Override // java.lang.Runnable
    public final void run() {
        TXVideoEditer.lambda$setRepeatPlay$24(this.f35049a, this.f35050b);
    }
}
