package com.tencent.ugc;

import java.util.concurrent.Callable;
/* loaded from: classes4.dex */
final /* synthetic */ class gr implements Callable {

    /* renamed from: a  reason: collision with root package name */
    private final VideoDemuxerFFmpeg f35019a;

    /* renamed from: b  reason: collision with root package name */
    private final long f35020b;

    private gr(VideoDemuxerFFmpeg videoDemuxerFFmpeg, long j10) {
        this.f35019a = videoDemuxerFFmpeg;
        this.f35020b = j10;
    }

    public static Callable a(VideoDemuxerFFmpeg videoDemuxerFFmpeg, long j10) {
        return new gr(videoDemuxerFFmpeg, j10);
    }

    @Override // java.util.concurrent.Callable
    public final Object call() {
        return VideoDemuxerFFmpeg.lambda$seek$2(this.f35019a, this.f35020b);
    }
}
