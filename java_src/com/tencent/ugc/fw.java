package com.tencent.ugc;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes4.dex */
public final /* synthetic */ class fw implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    private final UGCVideoProcessor f34962a;

    /* renamed from: b  reason: collision with root package name */
    private final int f34963b;

    /* renamed from: c  reason: collision with root package name */
    private final int f34964c;

    private fw(UGCVideoProcessor uGCVideoProcessor, int i9, int i10) {
        this.f34962a = uGCVideoProcessor;
        this.f34963b = i9;
        this.f34964c = i10;
    }

    public static Runnable a(UGCVideoProcessor uGCVideoProcessor, int i9, int i10) {
        return new fw(uGCVideoProcessor, i9, i10);
    }

    @Override // java.lang.Runnable
    public final void run() {
        UGCVideoProcessor.lambda$setBeautyFilter$10(this.f34962a, this.f34963b, this.f34964c);
    }
}
