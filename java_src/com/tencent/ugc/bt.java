package com.tencent.ugc;
/* loaded from: classes4.dex */
final /* synthetic */ class bt implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    private final TXVideoJoiner f34787a;

    /* renamed from: b  reason: collision with root package name */
    private final String f34788b;

    /* renamed from: c  reason: collision with root package name */
    private final int f34789c;

    private bt(TXVideoJoiner tXVideoJoiner, String str, int i9) {
        this.f34787a = tXVideoJoiner;
        this.f34788b = str;
        this.f34789c = i9;
    }

    public static Runnable a(TXVideoJoiner tXVideoJoiner, String str, int i9) {
        return new bt(tXVideoJoiner, str, i9);
    }

    @Override // java.lang.Runnable
    public final void run() {
        TXVideoJoiner.lambda$joinVideo$8(this.f34787a, this.f34788b, this.f34789c);
    }
}
