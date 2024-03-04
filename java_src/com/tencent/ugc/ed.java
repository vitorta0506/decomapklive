package com.tencent.ugc;
/* loaded from: classes4.dex */
final /* synthetic */ class ed implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    private final UGCMultiFileAudioFrameProvider f34889a;

    private ed(UGCMultiFileAudioFrameProvider uGCMultiFileAudioFrameProvider) {
        this.f34889a = uGCMultiFileAudioFrameProvider;
    }

    public static Runnable a(UGCMultiFileAudioFrameProvider uGCMultiFileAudioFrameProvider) {
        return new ed(uGCMultiFileAudioFrameProvider);
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f34889a.readFrameToQueue();
    }
}
