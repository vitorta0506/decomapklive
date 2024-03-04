package com.tencent.ugc;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes4.dex */
public final /* synthetic */ class fu implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    private final UGCVideoProcessor f34958a;

    /* renamed from: b  reason: collision with root package name */
    private final int f34959b;

    private fu(UGCVideoProcessor uGCVideoProcessor, int i9) {
        this.f34958a = uGCVideoProcessor;
        this.f34959b = i9;
    }

    public static Runnable a(UGCVideoProcessor uGCVideoProcessor, int i9) {
        return new fu(uGCVideoProcessor, i9);
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f34958a.mTransitionType = this.f34959b;
    }
}
