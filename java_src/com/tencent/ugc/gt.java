package com.tencent.ugc;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes4.dex */
public final /* synthetic */ class gt implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    private final VideoDemuxerFFmpeg f35022a;

    private gt(VideoDemuxerFFmpeg videoDemuxerFFmpeg) {
        this.f35022a = videoDemuxerFFmpeg;
    }

    public static Runnable a(VideoDemuxerFFmpeg videoDemuxerFFmpeg) {
        return new gt(videoDemuxerFFmpeg);
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f35022a.getNextEncodeVideoFrameInternal();
    }
}
