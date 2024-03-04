package com.tencent.ugc;
/* loaded from: classes4.dex */
final /* synthetic */ class ea implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    private final UGCMultiFileAudioFrameProvider f34885a;

    private ea(UGCMultiFileAudioFrameProvider uGCMultiFileAudioFrameProvider) {
        this.f34885a = uGCMultiFileAudioFrameProvider;
    }

    public static Runnable a(UGCMultiFileAudioFrameProvider uGCMultiFileAudioFrameProvider) {
        return new ea(uGCMultiFileAudioFrameProvider);
    }

    @Override // java.lang.Runnable
    public final void run() {
        UGCMultiFileAudioFrameProvider.lambda$start$0(this.f34885a);
    }
}
