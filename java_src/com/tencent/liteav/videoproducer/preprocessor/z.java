package com.tencent.liteav.videoproducer.preprocessor;

import com.tencent.liteav.videoproducer.capture.CaptureSourceInterface;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes4.dex */
public final /* synthetic */ class z implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    private final VideoPreprocessor f33126a;

    /* renamed from: b  reason: collision with root package name */
    private final CaptureSourceInterface.SourceType f33127b;

    private z(VideoPreprocessor videoPreprocessor, CaptureSourceInterface.SourceType sourceType) {
        this.f33126a = videoPreprocessor;
        this.f33127b = sourceType;
    }

    public static Runnable a(VideoPreprocessor videoPreprocessor, CaptureSourceInterface.SourceType sourceType) {
        return new z(videoPreprocessor, sourceType);
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f33126a.mSourceType = this.f33127b;
    }
}
