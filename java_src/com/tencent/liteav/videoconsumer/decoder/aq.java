package com.tencent.liteav.videoconsumer.decoder;

import com.tencent.liteav.base.util.CommonUtil;
import com.tencent.liteav.base.util.LiteavLog;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes4.dex */
public final /* synthetic */ class aq implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    private final VideoDecodeController f32204a;

    /* renamed from: b  reason: collision with root package name */
    private final Object f32205b;

    private aq(VideoDecodeController videoDecodeController, Object obj) {
        this.f32204a = videoDecodeController;
        this.f32205b = obj;
    }

    public static Runnable a(VideoDecodeController videoDecodeController, Object obj) {
        return new aq(videoDecodeController, obj);
    }

    @Override // java.lang.Runnable
    public final void run() {
        VideoDecodeController videoDecodeController = this.f32204a;
        Object obj = this.f32205b;
        if (CommonUtil.equals(videoDecodeController.f32150i, obj)) {
            return;
        }
        String str = videoDecodeController.f32142a;
        LiteavLog.i(str, "setSharedEGLContext(object:" + obj + ", mEGLCore: " + videoDecodeController.f32151j + ")");
        videoDecodeController.f32150i = obj;
        if (videoDecodeController.f32151j != null) {
            videoDecodeController.c();
            videoDecodeController.b();
            videoDecodeController.f32144c.f32266v = true;
        }
    }
}
