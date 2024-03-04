package com.tencent.ugc;

import java.util.List;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes4.dex */
public final /* synthetic */ class o implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    private final TXVideoEditer f35043a;

    /* renamed from: b  reason: collision with root package name */
    private final List f35044b;

    private o(TXVideoEditer tXVideoEditer, List list) {
        this.f35043a = tXVideoEditer;
        this.f35044b = list;
    }

    public static Runnable a(TXVideoEditer tXVideoEditer, List list) {
        return new o(tXVideoEditer, list);
    }

    @Override // java.lang.Runnable
    public final void run() {
        TXVideoEditer.lambda$setPasterList$21(this.f35043a, this.f35044b);
    }
}
