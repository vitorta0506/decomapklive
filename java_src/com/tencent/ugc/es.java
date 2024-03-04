package com.tencent.ugc;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes4.dex */
public final /* synthetic */ class es implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    private final UGCSingleFileAudioFrameProvider f34916a;

    private es(UGCSingleFileAudioFrameProvider uGCSingleFileAudioFrameProvider) {
        this.f34916a = uGCSingleFileAudioFrameProvider;
    }

    public static Runnable a(UGCSingleFileAudioFrameProvider uGCSingleFileAudioFrameProvider) {
        return new es(uGCSingleFileAudioFrameProvider);
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f34916a.DecodeOrAppendMuteFrame();
    }
}
