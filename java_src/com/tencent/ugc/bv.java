package com.tencent.ugc;

import java.util.List;
/* loaded from: classes4.dex */
final /* synthetic */ class bv implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    private final TXVideoJoiner f34791a;

    /* renamed from: b  reason: collision with root package name */
    private final List f34792b;

    /* renamed from: c  reason: collision with root package name */
    private final int f34793c;

    /* renamed from: d  reason: collision with root package name */
    private final int f34794d;

    private bv(TXVideoJoiner tXVideoJoiner, List list, int i9, int i10) {
        this.f34791a = tXVideoJoiner;
        this.f34792b = list;
        this.f34793c = i9;
        this.f34794d = i10;
    }

    public static Runnable a(TXVideoJoiner tXVideoJoiner, List list, int i9, int i10) {
        return new bv(tXVideoJoiner, list, i9, i10);
    }

    @Override // java.lang.Runnable
    public final void run() {
        TXVideoJoiner.lambda$setSplitScreenList$10(this.f34791a, this.f34792b, this.f34793c, this.f34794d);
    }
}
