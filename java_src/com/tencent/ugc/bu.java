package com.tencent.ugc;
/* loaded from: classes4.dex */
final /* synthetic */ class bu implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    private final TXVideoJoiner f34790a;

    private bu(TXVideoJoiner tXVideoJoiner) {
        this.f34790a = tXVideoJoiner;
    }

    public static Runnable a(TXVideoJoiner tXVideoJoiner) {
        return new bu(tXVideoJoiner);
    }

    @Override // java.lang.Runnable
    public final void run() {
        TXVideoJoiner.lambda$cancel$9(this.f34790a);
    }
}
