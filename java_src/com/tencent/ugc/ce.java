package com.tencent.ugc;
/* loaded from: classes4.dex */
final /* synthetic */ class ce implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    private final TXVideoJoiner f34811a;

    private ce(TXVideoJoiner tXVideoJoiner) {
        this.f34811a = tXVideoJoiner;
    }

    public static Runnable a(TXVideoJoiner tXVideoJoiner) {
        return new ce(tXVideoJoiner);
    }

    @Override // java.lang.Runnable
    public final void run() {
        TXVideoJoiner.lambda$resumePlay$5(this.f34811a);
    }
}
