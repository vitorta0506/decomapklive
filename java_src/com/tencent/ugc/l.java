package com.tencent.ugc;

import java.util.List;
/* loaded from: classes4.dex */
final /* synthetic */ class l implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    private final TXVideoEditer f35037a;

    /* renamed from: b  reason: collision with root package name */
    private final List f35038b;

    private l(TXVideoEditer tXVideoEditer, List list) {
        this.f35037a = tXVideoEditer;
        this.f35038b = list;
    }

    public static Runnable a(TXVideoEditer tXVideoEditer, List list) {
        return new l(tXVideoEditer, list);
    }

    @Override // java.lang.Runnable
    public final void run() {
        TXVideoEditer.lambda$setSubtitleList$19(this.f35037a, this.f35038b);
    }
}
