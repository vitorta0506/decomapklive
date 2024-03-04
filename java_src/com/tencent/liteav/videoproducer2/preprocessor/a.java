package com.tencent.liteav.videoproducer2.preprocessor;

import android.os.SystemClock;
import com.tencent.liteav.base.ContextUtils;
import com.tencent.liteav.base.util.q;
import com.tencent.liteav.videobase.base.GLConstants;
import com.tencent.liteav.videobase.frame.FrameMetaData;
import com.tencent.liteav.videobase.frame.PixelFrame;
import com.tencent.liteav.videobase.utils.Rotation;
import com.tencent.liteav.videobase.videobase.IVideoReporter;
import com.tencent.liteav.videobase.videobase.e;
import com.tencent.liteav.videobase.videobase.i;
import com.tencent.liteav.videoproducer.preprocessor.BeautyProcessor;
import com.tencent.liteav.videoproducer.preprocessor.h;
import com.tencent.liteav.videoproducer2.preprocessor.CustomProcessParams;
import java.util.HashMap;
import java.util.Map;
/* loaded from: classes4.dex */
public final class a implements BeautyProcessor.a {

    /* renamed from: a  reason: collision with root package name */
    final h f33351a;

    /* renamed from: b  reason: collision with root package name */
    final IVideoReporter f33352b;

    /* renamed from: c  reason: collision with root package name */
    com.tencent.liteav.videoproducer.producer.a f33353c;

    /* renamed from: d  reason: collision with root package name */
    float f33354d = 0.5f;

    /* renamed from: e  reason: collision with root package name */
    final Map<Integer, VideoPreprocessorListenerProxy> f33355e;

    /* renamed from: f  reason: collision with root package name */
    final Map<Integer, VideoPreprocessorListenerProxy> f33356f;

    /* renamed from: com.tencent.liteav.videoproducer2.preprocessor.a$1  reason: invalid class name */
    /* loaded from: classes4.dex */
    static /* synthetic */ class AnonymousClass1 {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ int[] f33357a;

        static {
            int[] iArr = new int[CustomProcessParams.a.values().length];
            f33357a = iArr;
            try {
                iArr[CustomProcessParams.a.BEFORE_BEAUTY.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f33357a[CustomProcessParams.a.BEFORE_WATERMARK.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f33357a[CustomProcessParams.a.AFTER_WATERMARK.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f33357a[CustomProcessParams.a.OUTPUT.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
        }
    }

    public a() {
        e eVar = new e();
        this.f33352b = eVar;
        BeautyProcessor beautyProcessor = new BeautyProcessor(ContextUtils.getApplicationContext(), false, new e());
        this.f33351a = new h(ContextUtils.getApplicationContext(), beautyProcessor, eVar);
        beautyProcessor.setBeautyManagerStatusListener(this);
        com.tencent.liteav.beauty.a.a(eVar);
        this.f33355e = new HashMap();
        this.f33356f = new HashMap();
    }

    public final boolean a(PixelFrame pixelFrame) {
        int i9;
        long elapsedRealtime = SystemClock.elapsedRealtime();
        pixelFrame.retain();
        GLConstants.GLScaleType gLScaleType = GLConstants.GLScaleType.CENTER_CROP;
        FrameMetaData metaData = pixelFrame.getMetaData();
        if (metaData != null) {
            q renderSize = metaData.getRenderSize();
            int i10 = renderSize.f31029a;
            if (i10 != 0 && (i9 = renderSize.f31030b) != 0) {
                this.f33351a.a(i10, i9);
            }
            pixelFrame.setMirrorHorizontal(metaData.isPreprocessorMirrorHorizontal());
            pixelFrame.setMirrorVertical(metaData.isPreprocessorMirrorVertical());
            pixelFrame.setRotation(Rotation.a((pixelFrame.getRotation().mValue + metaData.getPreprocessorRotation().mValue) % 360));
            if (pixelFrame.getRotation() == Rotation.ROTATION_90 || pixelFrame.getRotation() == Rotation.ROTATION_270) {
                pixelFrame.swapWidthHeight();
            }
            gLScaleType = metaData.getPreprocessorScaleType();
            for (Map.Entry<Integer, VideoPreprocessorListenerProxy> entry : this.f33356f.entrySet()) {
                VideoPreprocessorListenerProxy value = entry.getValue();
                Integer key = entry.getKey();
                CustomProcessParams customProcessParams = value.getCustomProcessParams();
                if (customProcessParams.frameRotation != metaData.getEncodeRotation()) {
                    customProcessParams.frameRotation = metaData.getEncodeRotation();
                    this.f33351a.a(key.intValue(), value);
                    this.f33351a.a(key.intValue(), new com.tencent.liteav.videobase.videobase.a(customProcessParams.width, customProcessParams.height, customProcessParams.frameRotation), customProcessParams.bufferType, customProcessParams.formatType, true, value);
                }
            }
        }
        this.f33351a.a(pixelFrame, gLScaleType);
        this.f33352b.updateStatus(i.STATUS_VIDEO_PREPROCESS_TIME, Long.valueOf(SystemClock.elapsedRealtime() - elapsedRealtime));
        pixelFrame.release();
        return true;
    }

    @Override // com.tencent.liteav.videoproducer.preprocessor.BeautyProcessor.a
    public final void onBeautyStatsChanged(String str) {
        this.f33352b.updateStatus(i.STATUS_VIDEO_PREPROCESS_BEAUTY_SETTINGS, str);
    }
}
