package com.tencent.ugc;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes4.dex */
public final /* synthetic */ class gv implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    private final VideoDemuxerFFmpeg f35024a;

    private gv(VideoDemuxerFFmpeg videoDemuxerFFmpeg) {
        this.f35024a = videoDemuxerFFmpeg;
    }

    public static Runnable a(VideoDemuxerFFmpeg videoDemuxerFFmpeg) {
        return new gv(videoDemuxerFFmpeg);
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f35024a.getNextEncodeVideoFrameInternal();
    }
}
