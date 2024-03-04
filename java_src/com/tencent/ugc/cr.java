package com.tencent.ugc;
/* loaded from: classes4.dex */
final /* synthetic */ class cr implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    private final UGCImageProvider f34829a;

    /* renamed from: b  reason: collision with root package name */
    private final long f34830b;

    private cr(UGCImageProvider uGCImageProvider, long j10) {
        this.f34829a = uGCImageProvider;
        this.f34830b = j10;
    }

    public static Runnable a(UGCImageProvider uGCImageProvider, long j10) {
        return new cr(uGCImageProvider, j10);
    }

    @Override // java.lang.Runnable
    public final void run() {
        UGCImageProvider.lambda$seekTo$4(this.f34829a, this.f34830b);
    }
}
