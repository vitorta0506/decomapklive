package com.tencent.ugc;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes4.dex */
public final /* synthetic */ class eb implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    private final UGCMultiFileAudioFrameProvider f34886a;

    private eb(UGCMultiFileAudioFrameProvider uGCMultiFileAudioFrameProvider) {
        this.f34886a = uGCMultiFileAudioFrameProvider;
    }

    public static Runnable a(UGCMultiFileAudioFrameProvider uGCMultiFileAudioFrameProvider) {
        return new eb(uGCMultiFileAudioFrameProvider);
    }

    @Override // java.lang.Runnable
    public final void run() {
        UGCMultiFileAudioFrameProvider.lambda$stop$1(this.f34886a);
    }
}
