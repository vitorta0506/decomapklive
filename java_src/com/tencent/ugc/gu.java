package com.tencent.ugc;
/* loaded from: classes4.dex */
final /* synthetic */ class gu implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    private final VideoDemuxerFFmpeg f35023a;

    private gu(VideoDemuxerFFmpeg videoDemuxerFFmpeg) {
        this.f35023a = videoDemuxerFFmpeg;
    }

    public static Runnable a(VideoDemuxerFFmpeg videoDemuxerFFmpeg) {
        return new gu(videoDemuxerFFmpeg);
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f35023a.getNextEncodeVideoFrameInternal();
    }
}
