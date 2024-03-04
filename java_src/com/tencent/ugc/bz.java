package com.tencent.ugc;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes4.dex */
public final /* synthetic */ class bz implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    private final TXVideoJoiner f34802a;

    private bz(TXVideoJoiner tXVideoJoiner) {
        this.f34802a = tXVideoJoiner;
    }

    public static Runnable a(TXVideoJoiner tXVideoJoiner) {
        return new bz(tXVideoJoiner);
    }

    @Override // java.lang.Runnable
    public final void run() {
        TXVideoJoiner.lambda$notifyJoinComplete$14(this.f34802a);
    }
}
