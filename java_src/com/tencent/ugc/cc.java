package com.tencent.ugc;
/* loaded from: classes4.dex */
final /* synthetic */ class cc implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    private final TXVideoJoiner f34809a;

    private cc(TXVideoJoiner tXVideoJoiner) {
        this.f34809a = tXVideoJoiner;
    }

    public static Runnable a(TXVideoJoiner tXVideoJoiner) {
        return new cc(tXVideoJoiner);
    }

    @Override // java.lang.Runnable
    public final void run() {
        TXVideoJoiner.lambda$startPlay$3(this.f34809a);
    }
}
