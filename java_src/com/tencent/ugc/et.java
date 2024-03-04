package com.tencent.ugc;
/* loaded from: classes4.dex */
final /* synthetic */ class et implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    private final UGCSingleFileAudioFrameProvider f34917a;

    /* renamed from: b  reason: collision with root package name */
    private final long f34918b;

    private et(UGCSingleFileAudioFrameProvider uGCSingleFileAudioFrameProvider, long j10) {
        this.f34917a = uGCSingleFileAudioFrameProvider;
        this.f34918b = j10;
    }

    public static Runnable a(UGCSingleFileAudioFrameProvider uGCSingleFileAudioFrameProvider, long j10) {
        return new et(uGCSingleFileAudioFrameProvider, j10);
    }

    @Override // java.lang.Runnable
    public final void run() {
        UGCSingleFileAudioFrameProvider.lambda$seekTo$2(this.f34917a, this.f34918b);
    }
}
