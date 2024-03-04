package com.tencent.ugc;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes4.dex */
public final /* synthetic */ class eu implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    private final UGCSingleFileAudioFrameProvider f34919a;

    private eu(UGCSingleFileAudioFrameProvider uGCSingleFileAudioFrameProvider) {
        this.f34919a = uGCSingleFileAudioFrameProvider;
    }

    public static Runnable a(UGCSingleFileAudioFrameProvider uGCSingleFileAudioFrameProvider) {
        return new eu(uGCSingleFileAudioFrameProvider);
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f34919a.DecodeOrAppendMuteFrame();
    }
}
