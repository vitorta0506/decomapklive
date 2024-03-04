package com.tencent.ugc;

import java.util.List;
/* loaded from: classes4.dex */
final /* synthetic */ class bn implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    private final TXVideoEditer f34774a;

    /* renamed from: b  reason: collision with root package name */
    private final int f34775b;

    /* renamed from: c  reason: collision with root package name */
    private final List f34776c;

    private bn(TXVideoEditer tXVideoEditer, int i9, List list) {
        this.f34774a = tXVideoEditer;
        this.f34775b = i9;
        this.f34776c = list;
    }

    public static Runnable a(TXVideoEditer tXVideoEditer, int i9, List list) {
        return new bn(tXVideoEditer, i9, list);
    }

    @Override // java.lang.Runnable
    public final void run() {
        TXVideoEditer.lambda$setPictureList$9(this.f34774a, this.f34775b, this.f34776c);
    }
}
