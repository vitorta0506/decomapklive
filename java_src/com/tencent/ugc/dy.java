package com.tencent.ugc;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes4.dex */
public final /* synthetic */ class dy implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    private final UGCMediaListSource f34880a;

    /* renamed from: b  reason: collision with root package name */
    private final boolean f34881b;

    private dy(UGCMediaListSource uGCMediaListSource, boolean z10) {
        this.f34880a = uGCMediaListSource;
        this.f34881b = z10;
    }

    public static Runnable a(UGCMediaListSource uGCMediaListSource, boolean z10) {
        return new dy(uGCMediaListSource, z10);
    }

    @Override // java.lang.Runnable
    public final void run() {
        UGCMediaListSource.lambda$setIsMediaSourceOverlapped$3(this.f34880a, this.f34881b);
    }
}
