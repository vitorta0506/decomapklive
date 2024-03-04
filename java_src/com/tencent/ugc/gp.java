package com.tencent.ugc;
/* loaded from: classes4.dex */
final /* synthetic */ class gp implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    private final VideoDemuxerFFmpeg f35016a;

    /* renamed from: b  reason: collision with root package name */
    private final String f35017b;

    private gp(VideoDemuxerFFmpeg videoDemuxerFFmpeg, String str) {
        this.f35016a = videoDemuxerFFmpeg;
        this.f35017b = str;
    }

    public static Runnable a(VideoDemuxerFFmpeg videoDemuxerFFmpeg, String str) {
        return new gp(videoDemuxerFFmpeg, str);
    }

    @Override // java.lang.Runnable
    public final void run() {
        VideoDemuxerFFmpeg.lambda$open$0(this.f35016a, this.f35017b);
    }
}
