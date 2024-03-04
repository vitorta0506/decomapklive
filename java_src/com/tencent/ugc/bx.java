package com.tencent.ugc;
/* loaded from: classes4.dex */
final /* synthetic */ class bx implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    private final TXVideoJoiner f34797a;

    /* renamed from: b  reason: collision with root package name */
    private final int f34798b;

    /* renamed from: c  reason: collision with root package name */
    private final String f34799c;

    private bx(TXVideoJoiner tXVideoJoiner, int i9, String str) {
        this.f34797a = tXVideoJoiner;
        this.f34798b = i9;
        this.f34799c = str;
    }

    public static Runnable a(TXVideoJoiner tXVideoJoiner, int i9, String str) {
        return new bx(tXVideoJoiner, i9, str);
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f34797a.joinVideoInternal(this.f34798b, this.f34799c, true);
    }
}
