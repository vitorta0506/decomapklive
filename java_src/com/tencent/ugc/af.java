package com.tencent.ugc;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes4.dex */
public final /* synthetic */ class af implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    private final TXVideoEditer f34703a;

    private af(TXVideoEditer tXVideoEditer) {
        this.f34703a = tXVideoEditer;
    }

    public static Runnable a(TXVideoEditer tXVideoEditer) {
        return new af(tXVideoEditer);
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f34703a.processVideoInternal();
    }
}
