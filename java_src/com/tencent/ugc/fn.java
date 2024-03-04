package com.tencent.ugc;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes4.dex */
public final /* synthetic */ class fn implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    private final UGCThumbnailGenerator f34945a;

    /* renamed from: b  reason: collision with root package name */
    private final long f34946b;

    /* renamed from: c  reason: collision with root package name */
    private final long f34947c;

    private fn(UGCThumbnailGenerator uGCThumbnailGenerator, long j10, long j11) {
        this.f34945a = uGCThumbnailGenerator;
        this.f34946b = j10;
        this.f34947c = j11;
    }

    public static Runnable a(UGCThumbnailGenerator uGCThumbnailGenerator, long j10, long j11) {
        return new fn(uGCThumbnailGenerator, j10, j11);
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f34945a.mMediaListSource.setVideoSourceRange(this.f34946b, this.f34947c);
    }
}
