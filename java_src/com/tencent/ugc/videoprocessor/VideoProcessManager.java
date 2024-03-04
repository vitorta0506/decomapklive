package com.tencent.ugc.videoprocessor;

import android.content.Context;
import android.graphics.Bitmap;
import android.opengl.GLES20;
import androidx.annotation.NonNull;
import com.tencent.liteav.videobase.base.GLConstants;
import com.tencent.liteav.videobase.frame.PixelFrame;
import com.tencent.liteav.videobase.utils.OpenGlUtils;
import com.tencent.liteav.videobase.utils.Rotation;
import com.tencent.liteav.videobase.videobase.IVideoReporter;
import com.tencent.liteav.videoproducer.capture.CaptureSourceInterface;
import com.tencent.liteav.videoproducer.preprocessor.BeautyProcessor;
import com.tencent.liteav.videoproducer.preprocessor.VideoPreprocessor;
import com.tencent.liteav.videoproducer.preprocessor.ah;
import java.nio.FloatBuffer;
/* loaded from: classes4.dex */
public class VideoProcessManager {
    private static final int IDENTITY = 100;
    private static final String TAG = "VideoProcessManager";
    private BeautyProcessor mBeautyProcessor;
    private Context mContext;
    private com.tencent.liteav.videobase.frame.e mGLTexturePool;
    private IVideoProcessorListener mListener;
    private FloatBuffer mNormalCubeVerticesBuffer;
    private FloatBuffer mNormalTextureCoordsBuffer;
    private IVideoReporter mReporter;
    private final VideoTransitionProcessor mTransitionProcessor;
    private final VideoEffectProcessor mVideoEffectProcessor;
    private VideoPreprocessor mVideoPreprocessor;
    private final WatermarkProcessor mWatermarkProcessor;
    private boolean mNeedProcess = false;
    private boolean mIsPreprocessorRegister = false;

    /* loaded from: classes4.dex */
    public interface IVideoProcessorListener {
        int customProcessFrame(PixelFrame pixelFrame);

        void didProcessFrame(PixelFrame pixelFrame);
    }

    public VideoProcessManager(Context context, boolean z10, @NonNull IVideoReporter iVideoReporter) {
        this.mContext = context;
        this.mReporter = iVideoReporter;
        BeautyProcessor beautyProcessor = new BeautyProcessor(this.mContext, z10, this.mReporter);
        this.mBeautyProcessor = beautyProcessor;
        this.mVideoPreprocessor = new VideoPreprocessor(this.mContext, beautyProcessor, iVideoReporter);
        this.mVideoEffectProcessor = new VideoEffectProcessor(this.mContext);
        this.mTransitionProcessor = new VideoTransitionProcessor(this.mContext);
        this.mWatermarkProcessor = new WatermarkProcessor();
        this.mBeautyProcessor.setPerformanceMode(z10);
        this.mNormalCubeVerticesBuffer = OpenGlUtils.createNormalCubeVerticesBuffer();
        this.mNormalTextureCoordsBuffer = OpenGlUtils.createTextureCoordsBuffer(Rotation.NORMAL, false, false);
    }

    private PixelFrame applyMotionFilterChain(PixelFrame pixelFrame) {
        VideoEffectProcessor videoEffectProcessor = this.mVideoEffectProcessor;
        if (videoEffectProcessor != null) {
            return videoEffectProcessor.processFrame(pixelFrame, this.mNormalCubeVerticesBuffer, this.mNormalTextureCoordsBuffer, this.mGLTexturePool);
        }
        return null;
    }

    private PixelFrame applyTransitionFilterChain(PixelFrame pixelFrame) {
        VideoTransitionProcessor videoTransitionProcessor = this.mTransitionProcessor;
        if (videoTransitionProcessor == null) {
            return null;
        }
        return videoTransitionProcessor.applyTransitionFilter(pixelFrame, this.mNormalCubeVerticesBuffer, this.mNormalTextureCoordsBuffer);
    }

    private PixelFrame processByVideoEffectInner(PixelFrame pixelFrame) {
        PixelFrame applyTransitionFilterChain;
        pixelFrame.retain();
        VideoEffectProcessor videoEffectProcessor = this.mVideoEffectProcessor;
        if (videoEffectProcessor != null && videoEffectProcessor.getCurrentMotionType(pixelFrame.getTimestamp()) == 1) {
            PixelFrame applyTransitionFilterChain2 = applyTransitionFilterChain(pixelFrame);
            if (applyTransitionFilterChain2 != null) {
                pixelFrame.release();
                pixelFrame = applyTransitionFilterChain2;
            }
            applyTransitionFilterChain = applyMotionFilterChain(pixelFrame);
            if (applyTransitionFilterChain != null) {
                pixelFrame.release();
                pixelFrame = applyTransitionFilterChain;
            }
        } else {
            PixelFrame applyMotionFilterChain = applyMotionFilterChain(pixelFrame);
            if (applyMotionFilterChain != null) {
                pixelFrame.release();
                pixelFrame = applyMotionFilterChain;
            }
            applyTransitionFilterChain = applyTransitionFilterChain(pixelFrame);
            if (applyTransitionFilterChain != null) {
                pixelFrame.release();
                pixelFrame = applyTransitionFilterChain;
            }
        }
        PixelFrame process = this.mWatermarkProcessor.process(pixelFrame, this.mNormalCubeVerticesBuffer, this.mNormalTextureCoordsBuffer);
        if (process != null) {
            pixelFrame.release();
            return process;
        }
        return pixelFrame;
    }

    public void destroyFilter(ah ahVar) {
        unInitialize(ahVar);
        VideoPreprocessor videoPreprocessor = this.mVideoPreprocessor;
        if (videoPreprocessor != null) {
            videoPreprocessor.uninitialize();
            this.mVideoPreprocessor = null;
        }
    }

    public VideoEffectProcessor getEffectProcessor() {
        this.mNeedProcess = true;
        return this.mVideoEffectProcessor;
    }

    public VideoTransitionProcessor getTransitionProcessor() {
        this.mNeedProcess = true;
        return this.mTransitionProcessor;
    }

    public WatermarkProcessor getWatermarkProcessor() {
        this.mNeedProcess = true;
        return this.mWatermarkProcessor;
    }

    public void initialize(com.tencent.liteav.videobase.frame.e eVar, int i9, int i10, ah ahVar) {
        this.mGLTexturePool = eVar;
        this.mVideoPreprocessor.initialize();
        this.mVideoPreprocessor.setSourceType(CaptureSourceInterface.SourceType.CUSTOM);
        this.mWatermarkProcessor.initialize(this.mGLTexturePool, i9, i10);
        this.mVideoPreprocessor.registerVideoProcessedListener(100, new com.tencent.liteav.videobase.videobase.a(i9, i10), GLConstants.PixelBufferType.TEXTURE_2D, GLConstants.PixelFormatType.RGBA, false, ahVar);
        this.mIsPreprocessorRegister = true;
        this.mTransitionProcessor.init(this.mGLTexturePool);
    }

    public void processByVideoEffect(PixelFrame pixelFrame) {
        IVideoProcessorListener iVideoProcessorListener;
        PixelFrame processByVideoEffectInner = processByVideoEffectInner(pixelFrame);
        if (processByVideoEffectInner == null || (iVideoProcessorListener = this.mListener) == null) {
            return;
        }
        iVideoProcessorListener.didProcessFrame(processByVideoEffectInner);
        processByVideoEffectInner.release();
    }

    public void processFrame(PixelFrame pixelFrame) {
        GLES20.glFinish();
        if (pixelFrame == null) {
            return;
        }
        IVideoProcessorListener iVideoProcessorListener = this.mListener;
        int customProcessFrame = iVideoProcessorListener != null ? iVideoProcessorListener.customProcessFrame(pixelFrame) : -1;
        if (customProcessFrame > 0) {
            PixelFrame pixelFrame2 = new PixelFrame(pixelFrame);
            pixelFrame2.setTextureId(customProcessFrame);
            pixelFrame = pixelFrame2;
        }
        VideoPreprocessor videoPreprocessor = this.mVideoPreprocessor;
        if (videoPreprocessor != null && this.mNeedProcess) {
            WatermarkProcessor watermarkProcessor = this.mWatermarkProcessor;
            if (watermarkProcessor != null) {
                videoPreprocessor.setGaussianBlurLevel(watermarkProcessor.getBlurLevel() * 4.0f);
            } else {
                videoPreprocessor.setGaussianBlurLevel(0.0f);
            }
            this.mVideoPreprocessor.processFrame(pixelFrame);
        } else {
            IVideoProcessorListener iVideoProcessorListener2 = this.mListener;
            if (iVideoProcessorListener2 != null) {
                iVideoProcessorListener2.didProcessFrame(pixelFrame);
            }
        }
        if (customProcessFrame > 0) {
            pixelFrame.release();
        }
    }

    public void reInitFilter(com.tencent.liteav.videobase.frame.e eVar, int i9, int i10, ah ahVar) {
        this.mGLTexturePool = eVar;
        this.mWatermarkProcessor.initialize(eVar, i9, i10);
        this.mTransitionProcessor.init(this.mGLTexturePool);
        if (this.mIsPreprocessorRegister) {
            return;
        }
        this.mVideoPreprocessor.registerVideoProcessedListener(100, new com.tencent.liteav.videobase.videobase.a(i9, i10), GLConstants.PixelBufferType.TEXTURE_2D, GLConstants.PixelFormatType.RGBA, false, ahVar);
        this.mIsPreprocessorRegister = true;
    }

    public void setBeautyFilter(int i9, int i10) {
        this.mNeedProcess = true;
        BeautyProcessor beautyProcessor = this.mVideoPreprocessor.getBeautyProcessor();
        if (beautyProcessor != null) {
            beautyProcessor.setBeautyLevel(i9);
            beautyProcessor.setWhitenessLevel(i10);
        }
    }

    public void setFilter(Bitmap bitmap, float f10, Bitmap bitmap2, float f11, float f12) {
        this.mNeedProcess = true;
        this.mVideoPreprocessor.setFilterGroupImages(f12, bitmap, f10, bitmap2, f11);
    }

    public void setListener(IVideoProcessorListener iVideoProcessorListener) {
        this.mListener = iVideoProcessorListener;
    }

    public void setOutputSize(int i9, int i10) {
        WatermarkProcessor watermarkProcessor = this.mWatermarkProcessor;
        if (watermarkProcessor != null) {
            watermarkProcessor.setRenderTargetSize(i9, i10);
        }
    }

    public void setScaleType(GLConstants.GLScaleType gLScaleType) {
        if (gLScaleType == GLConstants.GLScaleType.FIT_CENTER) {
            this.mWatermarkProcessor.setRenderMode(2);
        }
    }

    public void setSpecialRatio(float f10) {
        this.mNeedProcess = true;
        this.mVideoPreprocessor.setFilterMixLevel(f10);
    }

    public void unInitialize(ah ahVar) {
        VideoEffectProcessor videoEffectProcessor = this.mVideoEffectProcessor;
        if (videoEffectProcessor != null) {
            videoEffectProcessor.destroy();
        }
        VideoTransitionProcessor videoTransitionProcessor = this.mTransitionProcessor;
        if (videoTransitionProcessor != null) {
            videoTransitionProcessor.destroy();
        }
        if (this.mIsPreprocessorRegister) {
            this.mVideoPreprocessor.unregisterVideoProcessedListener(100, ahVar);
            this.mIsPreprocessorRegister = false;
        }
    }
}
