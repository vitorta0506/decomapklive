package com.tencent.ugc;
/* loaded from: classes4.dex */
final /* synthetic */ class ch implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    private final TXVideoJoiner f34815a;

    /* renamed from: b  reason: collision with root package name */
    private final int f34816b;

    private ch(TXVideoJoiner tXVideoJoiner, int i9) {
        this.f34815a = tXVideoJoiner;
        this.f34816b = i9;
    }

    public static Runnable a(TXVideoJoiner tXVideoJoiner, int i9) {
        return new ch(tXVideoJoiner, i9);
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f34815a.mProfile = this.f34816b;
    }
}
