package com.tencent.liteav.videoproducer2.preprocessor;

import android.graphics.Bitmap;
import com.tencent.liteav.base.annotations.CalledByNative;
import com.tencent.liteav.base.annotations.JNINamespace;
import com.tencent.liteav.base.system.LiteavSystemInfo;
import com.tencent.liteav.base.util.LiteavLog;
import com.tencent.liteav.videoproducer.preprocessor.BeautyProcessor;
@JNINamespace("liteav::video")
/* loaded from: classes4.dex */
public class VideoEffectManager {
    private final BeautyProcessor mBeautyProcessor;
    private float mLookupMixLevel = 0.5f;
    private final a mPreprocessor;

    @CalledByNative
    public VideoEffectManager(VideoPreprocessor2Proxy videoPreprocessor2Proxy) {
        a preprocessor = videoPreprocessor2Proxy.getPreprocessor();
        this.mPreprocessor = preprocessor;
        this.mBeautyProcessor = preprocessor.f33351a.f33046c;
    }

    @CalledByNative
    public void setBeautyLevel(float f10) {
        this.mBeautyProcessor.setBeautyLevel(f10);
    }

    @CalledByNative
    public void setBeautyStyle(int i9) {
        this.mBeautyProcessor.setBeautyStyle(i9);
    }

    @CalledByNative
    public void setFilter(Bitmap bitmap) {
        a aVar = this.mPreprocessor;
        aVar.f33351a.a(1.0f, bitmap, this.mLookupMixLevel, null, 0.0f);
    }

    @CalledByNative
    public void setFilterStrength(float f10) {
        a aVar = this.mPreprocessor;
        LiteavLog.i("VideoPreprocessor2", "setFilterMixLevel: ".concat(String.valueOf(f10)));
        aVar.f33354d = f10;
        aVar.f33351a.a(f10);
    }

    @CalledByNative
    public void setGreenScreenFile(String str) {
        a aVar = this.mPreprocessor;
        if (LiteavSystemInfo.getSystemOSVersionInt() >= 18) {
            LiteavLog.i("VideoPreprocessor2", "setGreenScreenFile: path=" + str + ", isLoop=false");
            aVar.f33351a.a(str, false);
        }
    }

    @CalledByNative
    public void setRuddyLevel(float f10) {
        this.mBeautyProcessor.setRuddyLevel(f10);
    }

    @CalledByNative
    public void setSharpenLevel(float f10) {
        this.mBeautyProcessor.setSharpenLevel(f10);
    }

    @CalledByNative
    public void setWatermark(Bitmap bitmap, float f10, float f11, float f12) {
        this.mPreprocessor.f33351a.a(bitmap, f10, f11, f12);
    }

    @CalledByNative
    public void setWhitenessLevel(float f10) {
        this.mBeautyProcessor.setWhitenessLevel(f10);
    }
}
