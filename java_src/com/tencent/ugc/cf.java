package com.tencent.ugc;
/* loaded from: classes4.dex */
final /* synthetic */ class cf implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    private final TXVideoJoiner f34812a;

    private cf(TXVideoJoiner tXVideoJoiner) {
        this.f34812a = tXVideoJoiner;
    }

    public static Runnable a(TXVideoJoiner tXVideoJoiner) {
        return new cf(tXVideoJoiner);
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f34812a.stopPlayInternal();
    }
}
