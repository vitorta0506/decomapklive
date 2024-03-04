package com.tencent.ugc;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes4.dex */
public final /* synthetic */ class gd implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    private final UGCVideoProcessor f34982a;

    /* renamed from: b  reason: collision with root package name */
    private final boolean f34983b;

    private gd(UGCVideoProcessor uGCVideoProcessor, boolean z10) {
        this.f34982a = uGCVideoProcessor;
        this.f34983b = z10;
    }

    public static Runnable a(UGCVideoProcessor uGCVideoProcessor, boolean z10) {
        return new gd(uGCVideoProcessor, z10);
    }

    @Override // java.lang.Runnable
    public final void run() {
        UGCVideoProcessor.lambda$start$1(this.f34982a, this.f34983b);
    }
}
