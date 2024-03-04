package com.tencent.ugc;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes4.dex */
public final /* synthetic */ class gs implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    private final VideoDemuxerFFmpeg f35021a;

    private gs(VideoDemuxerFFmpeg videoDemuxerFFmpeg) {
        this.f35021a = videoDemuxerFFmpeg;
    }

    public static Runnable a(VideoDemuxerFFmpeg videoDemuxerFFmpeg) {
        return new gs(videoDemuxerFFmpeg);
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f35021a.getNextEncodeVideoFrameInternal();
    }
}
