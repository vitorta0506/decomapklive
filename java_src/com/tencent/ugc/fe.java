package com.tencent.ugc;
/* loaded from: classes4.dex */
final /* synthetic */ class fe implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    private final UGCSingleFilePixelFrameProvider f34931a;

    /* renamed from: b  reason: collision with root package name */
    private final long f34932b;

    /* renamed from: c  reason: collision with root package name */
    private final boolean f34933c;

    private fe(UGCSingleFilePixelFrameProvider uGCSingleFilePixelFrameProvider, long j10, boolean z10) {
        this.f34931a = uGCSingleFilePixelFrameProvider;
        this.f34932b = j10;
        this.f34933c = z10;
    }

    public static Runnable a(UGCSingleFilePixelFrameProvider uGCSingleFilePixelFrameProvider, long j10, boolean z10) {
        return new fe(uGCSingleFilePixelFrameProvider, j10, z10);
    }

    @Override // java.lang.Runnable
    public final void run() {
        UGCSingleFilePixelFrameProvider.lambda$seekTo$0(this.f34931a, this.f34932b, this.f34933c);
    }
}
