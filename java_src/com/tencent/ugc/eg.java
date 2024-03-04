package com.tencent.ugc;
/* loaded from: classes4.dex */
final /* synthetic */ class eg implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    private final UGCMultiFilePixelFrameProvider f34892a;

    /* renamed from: b  reason: collision with root package name */
    private final long f34893b;

    /* renamed from: c  reason: collision with root package name */
    private final boolean f34894c;

    private eg(UGCMultiFilePixelFrameProvider uGCMultiFilePixelFrameProvider, long j10, boolean z10) {
        this.f34892a = uGCMultiFilePixelFrameProvider;
        this.f34893b = j10;
        this.f34894c = z10;
    }

    public static Runnable a(UGCMultiFilePixelFrameProvider uGCMultiFilePixelFrameProvider, long j10, boolean z10) {
        return new eg(uGCMultiFilePixelFrameProvider, j10, z10);
    }

    @Override // java.lang.Runnable
    public final void run() {
        UGCMultiFilePixelFrameProvider.lambda$seekTo$2(this.f34892a, this.f34893b, this.f34894c);
    }
}
