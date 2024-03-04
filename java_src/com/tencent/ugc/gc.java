package com.tencent.ugc;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes4.dex */
public final /* synthetic */ class gc implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    private final UGCVideoProcessor f34981a;

    private gc(UGCVideoProcessor uGCVideoProcessor) {
        this.f34981a = uGCVideoProcessor;
    }

    public static Runnable a(UGCVideoProcessor uGCVideoProcessor) {
        return new gc(uGCVideoProcessor);
    }

    @Override // java.lang.Runnable
    public final void run() {
        UGCVideoProcessor.lambda$unInitialize$0(this.f34981a);
    }
}
