package com.tencent.ugc;
/* loaded from: classes4.dex */
final /* synthetic */ class cd implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    private final TXVideoJoiner f34810a;

    private cd(TXVideoJoiner tXVideoJoiner) {
        this.f34810a = tXVideoJoiner;
    }

    public static Runnable a(TXVideoJoiner tXVideoJoiner) {
        return new cd(tXVideoJoiner);
    }

    @Override // java.lang.Runnable
    public final void run() {
        TXVideoJoiner.lambda$pausePlay$4(this.f34810a);
    }
}
