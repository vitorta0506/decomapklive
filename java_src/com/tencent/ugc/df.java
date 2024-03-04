package com.tencent.ugc;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes4.dex */
public final /* synthetic */ class df implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    private final UGCMediaListSource f34854a;

    /* renamed from: b  reason: collision with root package name */
    private final long f34855b;

    /* renamed from: c  reason: collision with root package name */
    private final boolean f34856c;

    private df(UGCMediaListSource uGCMediaListSource, long j10, boolean z10) {
        this.f34854a = uGCMediaListSource;
        this.f34855b = j10;
        this.f34856c = z10;
    }

    public static Runnable a(UGCMediaListSource uGCMediaListSource, long j10, boolean z10) {
        return new df(uGCMediaListSource, j10, z10);
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f34854a.seekToInternal(this.f34855b, this.f34856c);
    }
}
