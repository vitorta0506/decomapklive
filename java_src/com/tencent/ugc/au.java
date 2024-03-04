package com.tencent.ugc;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes4.dex */
public final /* synthetic */ class au implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    private final TXVideoEditer f34729a;

    /* renamed from: b  reason: collision with root package name */
    private final int f34730b;

    /* renamed from: c  reason: collision with root package name */
    private final String f34731c;

    private au(TXVideoEditer tXVideoEditer, int i9, String str) {
        this.f34729a = tXVideoEditer;
        this.f34730b = i9;
        this.f34731c = str;
    }

    public static Runnable a(TXVideoEditer tXVideoEditer, int i9, String str) {
        return new au(tXVideoEditer, i9, str);
    }

    @Override // java.lang.Runnable
    public final void run() {
        TXVideoEditer.lambda$generateVideo$49(this.f34729a, this.f34730b, this.f34731c);
    }
}
