package com.tencent.ugc;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes4.dex */
public final /* synthetic */ class fr implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    private final UGCVideoProcessor f34953a;

    private fr(UGCVideoProcessor uGCVideoProcessor) {
        this.f34953a = uGCVideoProcessor;
    }

    public static Runnable a(UGCVideoProcessor uGCVideoProcessor) {
        return new fr(uGCVideoProcessor);
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f34953a.onCompleteBroadcast();
    }
}
