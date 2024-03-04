package com.tencent.ugc;
/* loaded from: classes4.dex */
final /* synthetic */ class ep implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    private final UGCSingleFileAudioFrameProvider f34913a;

    private ep(UGCSingleFileAudioFrameProvider uGCSingleFileAudioFrameProvider) {
        this.f34913a = uGCSingleFileAudioFrameProvider;
    }

    public static Runnable a(UGCSingleFileAudioFrameProvider uGCSingleFileAudioFrameProvider) {
        return new ep(uGCSingleFileAudioFrameProvider);
    }

    @Override // java.lang.Runnable
    public final void run() {
        UGCSingleFileAudioFrameProvider.lambda$uninitialize$1(this.f34913a);
    }
}
