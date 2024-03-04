package com.tencent.ugc;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes4.dex */
public final /* synthetic */ class dk implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    private final UGCMediaListSource f34862a;

    /* renamed from: b  reason: collision with root package name */
    private final boolean f34863b;

    private dk(UGCMediaListSource uGCMediaListSource, boolean z10) {
        this.f34862a = uGCMediaListSource;
        this.f34863b = z10;
    }

    public static Runnable a(UGCMediaListSource uGCMediaListSource, boolean z10) {
        return new dk(uGCMediaListSource, z10);
    }

    @Override // java.lang.Runnable
    public final void run() {
        UGCMediaListSource.lambda$setReverse$12(this.f34862a, this.f34863b);
    }
}
