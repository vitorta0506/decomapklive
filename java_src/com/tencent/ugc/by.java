package com.tencent.ugc;
/* loaded from: classes4.dex */
final /* synthetic */ class by implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    private final TXVideoJoiner f34800a;

    /* renamed from: b  reason: collision with root package name */
    private final boolean f34801b;

    private by(TXVideoJoiner tXVideoJoiner, boolean z10) {
        this.f34800a = tXVideoJoiner;
        this.f34801b = z10;
    }

    public static Runnable a(TXVideoJoiner tXVideoJoiner, boolean z10) {
        return new by(tXVideoJoiner, z10);
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f34800a.mIsNeedEdit = this.f34801b;
    }
}
