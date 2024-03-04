package com.tencent.ugc;
/* loaded from: classes4.dex */
final /* synthetic */ class gq implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    private final VideoDemuxerFFmpeg f35018a;

    private gq(VideoDemuxerFFmpeg videoDemuxerFFmpeg) {
        this.f35018a = videoDemuxerFFmpeg;
    }

    public static Runnable a(VideoDemuxerFFmpeg videoDemuxerFFmpeg) {
        return new gq(videoDemuxerFFmpeg);
    }

    @Override // java.lang.Runnable
    public final void run() {
        VideoDemuxerFFmpeg.lambda$close$1(this.f35018a);
    }
}
