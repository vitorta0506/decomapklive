package com.tencent.ugc;

import java.util.List;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes4.dex */
public final /* synthetic */ class q implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    private final TXVideoEditer f35047a;

    /* renamed from: b  reason: collision with root package name */
    private final List f35048b;

    private q(TXVideoEditer tXVideoEditer, List list) {
        this.f35047a = tXVideoEditer;
        this.f35048b = list;
    }

    public static Runnable a(TXVideoEditer tXVideoEditer, List list) {
        return new q(tXVideoEditer, list);
    }

    @Override // java.lang.Runnable
    public final void run() {
        TXVideoEditer.lambda$setSpeedList$23(this.f35047a, this.f35048b);
    }
}
