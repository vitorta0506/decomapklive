package com.tencent.ugc;
/* loaded from: classes4.dex */
final /* synthetic */ class ec implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    private final UGCMultiFileAudioFrameProvider f34887a;

    /* renamed from: b  reason: collision with root package name */
    private final long f34888b;

    private ec(UGCMultiFileAudioFrameProvider uGCMultiFileAudioFrameProvider, long j10) {
        this.f34887a = uGCMultiFileAudioFrameProvider;
        this.f34888b = j10;
    }

    public static Runnable a(UGCMultiFileAudioFrameProvider uGCMultiFileAudioFrameProvider, long j10) {
        return new ec(uGCMultiFileAudioFrameProvider, j10);
    }

    @Override // java.lang.Runnable
    public final void run() {
        UGCMultiFileAudioFrameProvider.lambda$seekTo$2(this.f34887a, this.f34888b);
    }
}
