package com.tencent.ugc;
/* loaded from: classes4.dex */
final /* synthetic */ class er implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    private final UGCSingleFileAudioFrameProvider f34915a;

    private er(UGCSingleFileAudioFrameProvider uGCSingleFileAudioFrameProvider) {
        this.f34915a = uGCSingleFileAudioFrameProvider;
    }

    public static Runnable a(UGCSingleFileAudioFrameProvider uGCSingleFileAudioFrameProvider) {
        return new er(uGCSingleFileAudioFrameProvider);
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f34915a.stopInternal();
    }
}
