package com.tencent.ugc;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes4.dex */
public final /* synthetic */ class d implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    private final TXVideoEditer f34842a;

    /* renamed from: b  reason: collision with root package name */
    private final String f34843b;

    /* renamed from: c  reason: collision with root package name */
    private final boolean f34844c;

    private d(TXVideoEditer tXVideoEditer, String str, boolean z10) {
        this.f34842a = tXVideoEditer;
        this.f34843b = str;
        this.f34844c = z10;
    }

    public static Runnable a(TXVideoEditer tXVideoEditer, String str, boolean z10) {
        return new d(tXVideoEditer, str, z10);
    }

    @Override // java.lang.Runnable
    public final void run() {
        TXVideoEditer.lambda$setBGM$11(this.f34842a, this.f34843b, this.f34844c);
    }
}
