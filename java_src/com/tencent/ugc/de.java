package com.tencent.ugc;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes4.dex */
public final /* synthetic */ class de implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    private final UGCMediaListSource f34852a;

    /* renamed from: b  reason: collision with root package name */
    private final long f34853b;

    private de(UGCMediaListSource uGCMediaListSource, long j10) {
        this.f34852a = uGCMediaListSource;
        this.f34853b = j10;
    }

    public static Runnable a(UGCMediaListSource uGCMediaListSource, long j10) {
        return new de(uGCMediaListSource, j10);
    }

    @Override // java.lang.Runnable
    public final void run() {
        UGCMediaListSource.lambda$setPlayEndTime$9(this.f34852a, this.f34853b);
    }
}
