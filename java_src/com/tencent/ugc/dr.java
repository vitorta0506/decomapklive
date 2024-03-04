package com.tencent.ugc;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes4.dex */
public final /* synthetic */ class dr implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    private final UGCMediaListSource f34871a;

    /* renamed from: b  reason: collision with root package name */
    private final int f34872b;

    private dr(UGCMediaListSource uGCMediaListSource, int i9) {
        this.f34871a = uGCMediaListSource;
        this.f34872b = i9;
    }

    public static Runnable a(UGCMediaListSource uGCMediaListSource, int i9) {
        return new dr(uGCMediaListSource, i9);
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f34871a.mTailWaterMarkDurationMs = this.f34872b * 1000;
    }
}
