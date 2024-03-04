package com.tencent.ugc;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes4.dex */
public final /* synthetic */ class e implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    private final TXVideoEditer f34883a;

    /* renamed from: b  reason: collision with root package name */
    private final boolean f34884b;

    private e(TXVideoEditer tXVideoEditer, boolean z10) {
        this.f34883a = tXVideoEditer;
        this.f34884b = z10;
    }

    public static Runnable a(TXVideoEditer tXVideoEditer, boolean z10) {
        return new e(tXVideoEditer, z10);
    }

    @Override // java.lang.Runnable
    public final void run() {
        TXVideoEditer.lambda$setBGMLoop$12(this.f34883a, this.f34884b);
    }
}
