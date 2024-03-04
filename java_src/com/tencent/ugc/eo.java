package com.tencent.ugc;
/* loaded from: classes4.dex */
final /* synthetic */ class eo implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    private final UGCSingleFileAudioFrameProvider f34912a;

    private eo(UGCSingleFileAudioFrameProvider uGCSingleFileAudioFrameProvider) {
        this.f34912a = uGCSingleFileAudioFrameProvider;
    }

    public static Runnable a(UGCSingleFileAudioFrameProvider uGCSingleFileAudioFrameProvider) {
        return new eo(uGCSingleFileAudioFrameProvider);
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f34912a.DecodeOrAppendMuteFrame();
    }
}
