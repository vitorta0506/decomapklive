package com.tencent.liteav.videoproducer2.preprocessor;

import com.tencent.liteav.base.annotations.CalledByNative;
import com.tencent.liteav.base.annotations.JNINamespace;
import com.tencent.liteav.base.util.LiteavLog;
import com.tencent.liteav.videobase.frame.PixelFrame;
import com.tencent.liteav.videoproducer.preprocessor.ah;
import com.tencent.liteav.videoproducer2.preprocessor.CustomProcessParams;
import com.tencent.liteav.videoproducer2.preprocessor.a;
import java.util.HashMap;
import java.util.Map;
@JNINamespace("liteav::video")
/* loaded from: classes4.dex */
public class VideoPreprocessor2Proxy {
    private static final String TAG = "VideoPreprocessor2";
    private final a mPreprocessor = new a();
    private final Map<Integer, ah> mListenerMap = new HashMap();

    @CalledByNative
    public void addCustomProcessInterceptor(int i9, VideoPreprocessorListenerProxy videoPreprocessorListenerProxy) {
        a aVar = this.mPreprocessor;
        CustomProcessParams customProcessParams = videoPreprocessorListenerProxy.getCustomProcessParams();
        com.tencent.liteav.videobase.videobase.a aVar2 = new com.tencent.liteav.videobase.videobase.a(customProcessParams.width, customProcessParams.height);
        int i10 = a.AnonymousClass1.f33357a[customProcessParams.customProcessType.ordinal()];
        if (i10 == 1) {
            aVar.f33355e.put(Integer.valueOf(i9), videoPreprocessorListenerProxy);
            if (aVar.f33353c == null) {
                aVar.f33353c = new com.tencent.liteav.videoproducer.producer.a(aVar.f33352b);
            }
            aVar.f33353c.a(customProcessParams.formatType, customProcessParams.bufferType, videoPreprocessorListenerProxy);
            aVar.f33351a.a(aVar.f33353c);
        } else if (i10 == 2) {
            aVar.f33355e.put(Integer.valueOf(i9), videoPreprocessorListenerProxy);
            aVar.f33351a.a(i9, aVar2, customProcessParams.bufferType, customProcessParams.formatType, false, videoPreprocessorListenerProxy);
        } else if (i10 == 3) {
            aVar.f33355e.put(Integer.valueOf(i9), videoPreprocessorListenerProxy);
            aVar.f33351a.a(i9, aVar2, customProcessParams.bufferType, customProcessParams.formatType, true, videoPreprocessorListenerProxy);
        } else if (i10 != 4) {
        } else {
            aVar.f33356f.put(Integer.valueOf(i9), videoPreprocessorListenerProxy);
            aVar.f33351a.a(i9, new com.tencent.liteav.videobase.videobase.a(customProcessParams.width, customProcessParams.height), customProcessParams.bufferType, customProcessParams.formatType, true, videoPreprocessorListenerProxy);
        }
    }

    public a getPreprocessor() {
        return this.mPreprocessor;
    }

    @CalledByNative
    public boolean processFrame(PixelFrame pixelFrame) {
        return this.mPreprocessor.a(pixelFrame);
    }

    @CalledByNative
    public void removeCustomProcessInterceptor(int i9) {
        a aVar = this.mPreprocessor;
        if (aVar.f33355e.containsKey(Integer.valueOf(i9)) || aVar.f33356f.containsKey(Integer.valueOf(i9))) {
            VideoPreprocessorListenerProxy videoPreprocessorListenerProxy = aVar.f33355e.get(Integer.valueOf(i9));
            if (videoPreprocessorListenerProxy == null) {
                videoPreprocessorListenerProxy = aVar.f33356f.get(Integer.valueOf(i9));
            }
            CustomProcessParams customProcessParams = videoPreprocessorListenerProxy.getCustomProcessParams();
            com.tencent.liteav.videoproducer.producer.a aVar2 = aVar.f33353c;
            if (aVar2 != null && customProcessParams.customProcessType == CustomProcessParams.a.BEFORE_BEAUTY) {
                aVar2.a(customProcessParams.formatType, customProcessParams.bufferType, null);
            } else {
                aVar.f33351a.a(i9, videoPreprocessorListenerProxy);
            }
            aVar.f33356f.remove(Integer.valueOf(i9));
            aVar.f33355e.remove(Integer.valueOf(i9));
        }
    }

    @CalledByNative
    public void stop() {
        a aVar = this.mPreprocessor;
        LiteavLog.i(TAG, "uninitializeGLComponents");
        aVar.f33351a.a();
    }
}
