package com.tencent.ugc;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes4.dex */
public final /* synthetic */ class ge implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    private final UGCVideoProcessor f34984a;

    private ge(UGCVideoProcessor uGCVideoProcessor) {
        this.f34984a = uGCVideoProcessor;
    }

    public static Runnable a(UGCVideoProcessor uGCVideoProcessor) {
        return new ge(uGCVideoProcessor);
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f34984a.stopEncoder();
    }
}
