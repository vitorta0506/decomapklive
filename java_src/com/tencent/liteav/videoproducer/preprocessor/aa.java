package com.tencent.liteav.videoproducer.preprocessor;

import com.tencent.liteav.videobase.frame.PixelFrame;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes4.dex */
public final /* synthetic */ class aa implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    private final VideoPreprocessor f33008a;

    /* renamed from: b  reason: collision with root package name */
    private final PixelFrame f33009b;

    /* renamed from: c  reason: collision with root package name */
    private final long f33010c;

    private aa(VideoPreprocessor videoPreprocessor, PixelFrame pixelFrame, long j10) {
        this.f33008a = videoPreprocessor;
        this.f33009b = pixelFrame;
        this.f33010c = j10;
    }

    public static Runnable a(VideoPreprocessor videoPreprocessor, PixelFrame pixelFrame, long j10) {
        return new aa(videoPreprocessor, pixelFrame, j10);
    }

    @Override // java.lang.Runnable
    public final void run() {
        VideoPreprocessor.lambda$processFrame$2(this.f33008a, this.f33009b, this.f33010c);
    }
}
