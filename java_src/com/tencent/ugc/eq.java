package com.tencent.ugc;
/* loaded from: classes4.dex */
final /* synthetic */ class eq implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    private final UGCSingleFileAudioFrameProvider f34914a;

    private eq(UGCSingleFileAudioFrameProvider uGCSingleFileAudioFrameProvider) {
        this.f34914a = uGCSingleFileAudioFrameProvider;
    }

    public static Runnable a(UGCSingleFileAudioFrameProvider uGCSingleFileAudioFrameProvider) {
        return new eq(uGCSingleFileAudioFrameProvider);
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f34914a.startInternal();
    }
}
