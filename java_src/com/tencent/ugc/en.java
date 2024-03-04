package com.tencent.ugc;
/* loaded from: classes4.dex */
final /* synthetic */ class en implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    private final UGCSingleFileAudioFrameProvider f34911a;

    private en(UGCSingleFileAudioFrameProvider uGCSingleFileAudioFrameProvider) {
        this.f34911a = uGCSingleFileAudioFrameProvider;
    }

    public static Runnable a(UGCSingleFileAudioFrameProvider uGCSingleFileAudioFrameProvider) {
        return new en(uGCSingleFileAudioFrameProvider);
    }

    @Override // java.lang.Runnable
    public final void run() {
        UGCSingleFileAudioFrameProvider.lambda$initialize$0(this.f34911a);
    }
}
