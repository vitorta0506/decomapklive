package com.tencent.liteav.videoproducer.capture;

import android.content.Context;
import android.graphics.SurfaceTexture;
import androidx.annotation.NonNull;
import com.tencent.liteav.base.ContextUtils;
import com.tencent.liteav.base.annotations.CalledByNative;
import com.tencent.liteav.base.annotations.JNINamespace;
import com.tencent.liteav.base.system.LiteavSystemInfo;
import com.tencent.liteav.base.util.LiteavLog;
import com.tencent.liteav.base.util.TimeUtil;
import com.tencent.liteav.videobase.base.GLConstants;
import com.tencent.liteav.videobase.frame.FrameMetaData;
import com.tencent.liteav.videobase.frame.PixelFrame;
import com.tencent.liteav.videobase.frame.l;
import com.tencent.liteav.videobase.utils.OpenGlUtils;
import com.tencent.liteav.videobase.utils.Rotation;
import com.tencent.liteav.videoproducer.capture.CaptureSourceInterface;
import com.tencent.liteav.videoproducer.capture.aj;
import com.tencent.liteav.videoproducer.producer.ServerVideoProducerConfig;
import java.util.concurrent.atomic.AtomicBoolean;
@JNINamespace("liteav::video")
/* loaded from: classes4.dex */
public class CameraCaptureSingleton extends CaptureSourceInterface implements SurfaceTexture.OnFrameAvailableListener, ai {
    private static final int DELAY_FOR_RESTART_CAMERA = 2000;
    private static final int DELAY_FOR_SWITCH_TO_CAMERA1 = 1000;
    private static final int HOLD_POOL_MAX_SIZE = 1;
    private static final String TAG = "CameraCaptureSingleton";
    private static final boolean USE_DEFAULT_FRONT_CAMERA = true;
    private static volatile CameraCaptureSingleton sInstance;
    private ah mCameraController;
    private volatile Rotation mCameraRotation;
    private CaptureCloudConfig mCloudConfig;
    protected com.tencent.liteav.videobase.b.e mEGLCore;
    private boolean mEnableTapToFocus;
    private boolean mEnableZoom;
    private final AtomicBoolean mExpectFrontCamera;
    private float mExposureCompensation;
    protected com.tencent.liteav.videobase.frame.e mGLTexturePool;
    private boolean mIsCameraAutoFocusFaceModeSupported;
    private boolean mIsCameraInRestarting;
    private boolean mIsCameraInSwitching;
    private boolean mIsFirstFrameCaptured;
    private boolean mIsFocusPositionInPreviewSupported;
    private boolean mIsTorchSupported;
    private boolean mIsZoomSupported;
    private int mMaxZoomLevel;
    private int mOESTextureId;
    private PixelFrame mPixelFrame;
    private final Runnable mRestartCameraRunnable;
    private final com.tencent.liteav.base.util.j mSequenceTaskRunner;
    private ServerVideoProducerConfig mServerConfig;
    private Object mSharedContext;
    private SurfaceTexture mSurfaceTexture;
    private final Runnable mSwitchToCamera1Runnable;
    private com.tencent.liteav.videobase.frame.l mTextureHolderPool;
    private float mZoomPercent;
    private final com.tencent.liteav.base.b.b mThrottlers = new com.tencent.liteav.base.b.b();
    private final float[] mMatrix = new float[16];
    private boolean mNeedNotifyStartFinish = true;
    private final au mListenerManager = new au();
    private final aj mCameraSupervisor = new aj();
    protected int mPausedCount = 0;
    protected CameraCaptureParams mCurrentCaptureParams = null;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.tencent.liteav.videoproducer.capture.CameraCaptureSingleton$3  reason: invalid class name */
    /* loaded from: classes4.dex */
    public static /* synthetic */ class AnonymousClass3 {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ int[] f32479a;

        static {
            int[] iArr = new int[aj.a.values().length];
            f32479a = iArr;
            try {
                iArr[aj.a.MOCK.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f32479a[aj.a.CAMERA_2.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f32479a[aj.a.CAMERA_1.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
        }
    }

    private CameraCaptureSingleton(Context context) {
        AtomicBoolean atomicBoolean = new AtomicBoolean();
        this.mExpectFrontCamera = atomicBoolean;
        this.mOESTextureId = -1;
        this.mEnableTapToFocus = false;
        this.mEnableZoom = false;
        this.mZoomPercent = 0.0f;
        this.mExposureCompensation = 0.0f;
        this.mCameraRotation = Rotation.NORMAL;
        this.mIsFirstFrameCaptured = false;
        this.mIsZoomSupported = false;
        this.mIsTorchSupported = false;
        this.mIsFocusPositionInPreviewSupported = false;
        this.mIsCameraAutoFocusFaceModeSupported = false;
        this.mMaxZoomLevel = 0;
        this.mIsCameraInRestarting = false;
        this.mIsCameraInSwitching = false;
        this.mServerConfig = null;
        this.mCloudConfig = null;
        this.mRestartCameraRunnable = new Runnable() { // from class: com.tencent.liteav.videoproducer.capture.CameraCaptureSingleton.1
            /* JADX WARN: Removed duplicated region for block: B:12:0x002f  */
            /* JADX WARN: Removed duplicated region for block: B:14:? A[RETURN, SYNTHETIC] */
            @Override // java.lang.Runnable
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct add '--show-bad-code' argument
            */
            public final void run() {
                /*
                    r4 = this;
                    java.lang.String r0 = "CameraCaptureSingleton"
                    java.lang.String r1 = "restart camera runnable."
                    com.tencent.liteav.base.util.LiteavLog.i(r0, r1)
                    com.tencent.liteav.videoproducer.capture.CameraCaptureSingleton r1 = com.tencent.liteav.videoproducer.capture.CameraCaptureSingleton.this
                    r2 = 1
                    com.tencent.liteav.videoproducer.capture.CameraCaptureSingleton.access$002(r1, r2)
                    int r1 = com.tencent.liteav.base.system.LiteavSystemInfo.getAppBackgroundState()
                    if (r1 != r2) goto L19
                    java.lang.String r1 = "not in Foreground"
                    com.tencent.liteav.base.util.LiteavLog.i(r0, r1)
                    goto L2c
                L19:
                    com.tencent.liteav.videoproducer.capture.CameraCaptureSingleton r0 = com.tencent.liteav.videoproducer.capture.CameraCaptureSingleton.this
                    com.tencent.liteav.videoproducer.capture.ah r0 = com.tencent.liteav.videoproducer.capture.CameraCaptureSingleton.access$100(r0)
                    if (r0 != 0) goto L2c
                    com.tencent.liteav.videoproducer.capture.CameraCaptureSingleton r0 = com.tencent.liteav.videoproducer.capture.CameraCaptureSingleton.this
                    com.tencent.liteav.videoproducer.capture.CameraCaptureParams r1 = r0.mCurrentCaptureParams
                    if (r1 == 0) goto L2c
                    boolean r0 = com.tencent.liteav.videoproducer.capture.CameraCaptureSingleton.access$200(r0, r1)
                    goto L2d
                L2c:
                    r0 = 0
                L2d:
                    if (r0 != 0) goto L40
                    com.tencent.liteav.videoproducer.capture.CameraCaptureSingleton r0 = com.tencent.liteav.videoproducer.capture.CameraCaptureSingleton.this
                    com.tencent.liteav.base.util.j r0 = com.tencent.liteav.videoproducer.capture.CameraCaptureSingleton.access$400(r0)
                    com.tencent.liteav.videoproducer.capture.CameraCaptureSingleton r1 = com.tencent.liteav.videoproducer.capture.CameraCaptureSingleton.this
                    java.lang.Runnable r1 = com.tencent.liteav.videoproducer.capture.CameraCaptureSingleton.access$300(r1)
                    r2 = 2000(0x7d0, double:9.88E-321)
                    r0.a(r1, r2)
                L40:
                    return
                */
                throw new UnsupportedOperationException("Method not decompiled: com.tencent.liteav.videoproducer.capture.CameraCaptureSingleton.AnonymousClass1.run():void");
            }
        };
        this.mSwitchToCamera1Runnable = new Runnable() { // from class: com.tencent.liteav.videoproducer.capture.CameraCaptureSingleton.2
            @Override // java.lang.Runnable
            public final void run() {
                boolean openCamera;
                LiteavLog.i(CameraCaptureSingleton.TAG, "switch to camera1 runnable.");
                CameraCaptureSingleton.this.mIsCameraInSwitching = true;
                if (LiteavSystemInfo.getAppBackgroundState() == 1) {
                    LiteavLog.i(CameraCaptureSingleton.TAG, "not in Foreground");
                    openCamera = false;
                } else {
                    CameraCaptureSingleton cameraCaptureSingleton = CameraCaptureSingleton.this;
                    openCamera = cameraCaptureSingleton.openCamera(cameraCaptureSingleton.mCurrentCaptureParams);
                }
                if (openCamera) {
                    return;
                }
                CameraCaptureSingleton.this.mSequenceTaskRunner.a(CameraCaptureSingleton.this.mSwitchToCamera1Runnable, 1000L);
            }
        };
        this.mSequenceTaskRunner = new com.tencent.liteav.base.util.j();
        atomicBoolean.set(true);
    }

    private void checkFirstFrameCaptured() {
        if (this.mIsFirstFrameCaptured) {
            return;
        }
        this.mIsFirstFrameCaptured = true;
        LiteavLog.d(TAG, "camera capture first frame.");
    }

    private void closeCamera() {
        LiteavLog.i(TAG, "closeCamera");
        try {
            try {
                ah ahVar = this.mCameraController;
                if (ahVar != null) {
                    ahVar.a();
                }
            } catch (Exception e10) {
                LiteavLog.e(TAG, "closeCamera fail, Exception:".concat(String.valueOf(e10)));
            }
            SurfaceTexture surfaceTexture = this.mSurfaceTexture;
            if (surfaceTexture != null) {
                surfaceTexture.release();
                this.mSurfaceTexture = null;
            }
            OpenGlUtils.deleteTexture(this.mOESTextureId);
            this.mOESTextureId = -1;
            this.mPixelFrame = null;
            this.mIsFirstFrameCaptured = false;
        } finally {
            this.mCameraRotation = Rotation.NORMAL;
            this.mCameraController = null;
            this.mMaxZoomLevel = 0;
        }
    }

    private ah createCameraController(aj.a aVar) {
        ah ahVar;
        int i9 = AnonymousClass3.f32479a[aVar.ordinal()];
        if (i9 == 1) {
            Object obj = null;
            try {
                obj = Class.forName("com.tencent.liteav.videoengine.demo.mock.camera.MockCameraController").getConstructor(new Class[0]).newInstance(new Object[0]);
            } catch (Exception e10) {
                e10.printStackTrace();
            }
            ahVar = (ah) obj;
        } else if (i9 != 2) {
            ahVar = new com.tencent.liteav.videoproducer.capture.a.a();
        } else {
            ahVar = new com.tencent.liteav.videoproducer.capture.b.a(this.mSequenceTaskRunner);
        }
        if (ahVar != null) {
            ahVar.a(this.mServerConfig);
            ahVar.a(this.mCloudConfig);
        }
        LiteavLog.i(TAG, "createCameraController, CameraAPIType:" + aVar + ", return camera controller: " + ahVar);
        return ahVar;
    }

    @CalledByNative
    public static CameraCaptureSingleton getInstance() {
        if (sInstance == null) {
            synchronized (CameraCaptureSingleton.class) {
                if (sInstance == null) {
                    sInstance = new CameraCaptureSingleton(ContextUtils.getApplicationContext());
                }
            }
        }
        return sInstance;
    }

    private void getMockCameraMatrix(float[] fArr) {
        try {
            this.mCameraController.getClass().getDeclaredMethod("getTransformMatrix", float[].class).invoke(this.mCameraController, fArr);
        } catch (Exception e10) {
            LiteavLog.e(TAG, "getMockCameraMatrix with exception: ".concat(String.valueOf(e10)));
        }
    }

    private void handleCameraStartFailed() {
        LiteavLog.e(TAG, "camera start failed. params: %s", this.mCurrentCaptureParams);
        ah ahVar = this.mCameraController;
        if (ahVar != null) {
            ahVar.a();
        }
        this.mCameraController = null;
        if (this.mIsCameraInRestarting) {
            this.mSequenceTaskRunner.a(this.mRestartCameraRunnable, 2000L);
        } else if (this.mIsCameraInSwitching) {
            this.mSequenceTaskRunner.a(this.mSwitchToCamera1Runnable, 1000L);
        } else {
            aj.a a10 = this.mCameraSupervisor.a();
            aj ajVar = this.mCameraSupervisor;
            if (ajVar.f32554a == aj.a.CAMERA_2) {
                ajVar.f32555b = true;
            }
            if (a10 != ajVar.a()) {
                LiteavLog.w(TAG, "camera switch from " + a10 + " to " + this.mCameraSupervisor.a());
                this.mSequenceTaskRunner.a(this.mSwitchToCamera1Runnable, 1000L);
            } else if (this.mNeedNotifyStartFinish) {
                this.mNeedNotifyStartFinish = false;
                this.mListenerManager.onStartFinish(false);
            }
        }
    }

    private void handleCameraStartSuccess() {
        if (this.mCameraController != null && this.mSurfaceTexture != null) {
            LiteavLog.i(TAG, "camera start success. params: %s", this.mCurrentCaptureParams);
            this.mCameraRotation = this.mCameraController.b();
            this.mIsZoomSupported = this.mCameraController.e();
            this.mIsTorchSupported = this.mCameraController.f();
            this.mIsCameraAutoFocusFaceModeSupported = this.mCameraController.g();
            this.mIsFocusPositionInPreviewSupported = this.mCameraController.h();
            this.mMaxZoomLevel = this.mCameraController.c();
            com.tencent.liteav.base.util.q d10 = this.mCameraController.d();
            Rotation rotation = this.mCameraRotation;
            Object obj = this.mSharedContext;
            if (obj == null) {
                obj = this.mEGLCore.d();
            }
            this.mPixelFrame = initOutputPixelFrame(d10, rotation, obj, this.mOESTextureId);
            this.mSurfaceTexture.setOnFrameAvailableListener(this);
            if (this.mNeedNotifyStartFinish) {
                this.mNeedNotifyStartFinish = false;
                this.mListenerManager.onStartFinish(true);
            }
            this.mIsCameraInRestarting = false;
            this.mIsCameraInSwitching = false;
            return;
        }
        LiteavLog.e(TAG, "camera start success, but mCameraController or mSurfaceTexture is null.");
    }

    private void initGLComponents(Object obj) {
        if (this.mEGLCore != null) {
            return;
        }
        this.mEGLCore = new com.tencent.liteav.videobase.b.e();
        if (this.mTextureHolderPool == null) {
            this.mTextureHolderPool = new com.tencent.liteav.videobase.frame.l();
        }
        try {
            this.mEGLCore.a(obj, null, 128, 128);
            this.mEGLCore.a();
            this.mSharedContext = obj;
        } catch (com.tencent.liteav.videobase.b.g e10) {
            LiteavLog.e(this.mThrottlers.a("initGL"), TAG, "initializeEGL failed.", e10);
            this.mListenerManager.onCaptureError();
            this.mEGLCore = null;
        }
        if (this.mEGLCore != null) {
            this.mGLTexturePool = new com.tencent.liteav.videobase.frame.e();
        }
    }

    private static PixelFrame initOutputPixelFrame(com.tencent.liteav.base.util.q qVar, Rotation rotation, Object obj, int i9) {
        PixelFrame pixelFrame = new PixelFrame();
        if (rotation != Rotation.ROTATION_90 && rotation != Rotation.ROTATION_270) {
            pixelFrame.setWidth(qVar.f31029a);
            pixelFrame.setHeight(qVar.f31030b);
        } else {
            pixelFrame.setWidth(qVar.f31030b);
            pixelFrame.setHeight(qVar.f31029a);
        }
        pixelFrame.setPixelBufferType(GLConstants.PixelBufferType.TEXTURE_OES);
        pixelFrame.setPixelFormatType(GLConstants.PixelFormatType.RGBA);
        pixelFrame.setRotation(Rotation.NORMAL);
        pixelFrame.setGLContext(obj);
        pixelFrame.setTextureId(i9);
        return pixelFrame;
    }

    private boolean isNeedRestartCamera(CameraCaptureParams cameraCaptureParams) {
        boolean a10;
        boolean z10;
        Boolean bool = cameraCaptureParams.f32476a;
        CameraCaptureParams cameraCaptureParams2 = this.mCurrentCaptureParams;
        if (bool != cameraCaptureParams2.f32476a) {
            cameraCaptureParams2.f32476a = bool;
            cameraCaptureParams2.f32482c = cameraCaptureParams.f32482c;
            cameraCaptureParams2.f32483d = cameraCaptureParams.f32483d;
            a10 = true;
            z10 = true;
        } else {
            ah ahVar = this.mCameraController;
            if (ahVar == null) {
                a10 = false;
            } else {
                a10 = ahVar.a(cameraCaptureParams.f32482c, cameraCaptureParams.f32483d, this.mListenerManager.a() <= 1);
            }
            if (!a10) {
                CameraCaptureParams cameraCaptureParams3 = this.mCurrentCaptureParams;
                cameraCaptureParams3.f32482c = cameraCaptureParams.f32482c;
                cameraCaptureParams3.f32483d = cameraCaptureParams.f32483d;
            }
            z10 = false;
        }
        if ((this.mListenerManager.a() <= 1 && this.mCurrentCaptureParams.f32481b != cameraCaptureParams.f32481b) || (this.mListenerManager.a() > 1 && this.mCurrentCaptureParams.f32481b < cameraCaptureParams.f32481b)) {
            this.mCurrentCaptureParams.f32481b = cameraCaptureParams.f32481b;
            z10 = true;
        }
        return z10 || !a10;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ void lambda$enableCameraZoom$7(CameraCaptureSingleton cameraCaptureSingleton, boolean z10) {
        cameraCaptureSingleton.mEnableZoom = z10;
        cameraCaptureSingleton.mListenerManager.onCameraZoomEnable(z10);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ void lambda$enableTapToFocus$5(CameraCaptureSingleton cameraCaptureSingleton, boolean z10) {
        cameraCaptureSingleton.mEnableTapToFocus = z10;
        ah ahVar = cameraCaptureSingleton.mCameraController;
        if (ahVar != null) {
            ahVar.b(z10);
        }
        cameraCaptureSingleton.mListenerManager.onCameraTouchEnable(z10);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ void lambda$onCameraError$11(CameraCaptureSingleton cameraCaptureSingleton, ah ahVar) {
        ah ahVar2 = cameraCaptureSingleton.mCameraController;
        if (ahVar2 == null || ahVar2 != ahVar) {
            return;
        }
        LiteavLog.w(TAG, "VideoCapture: camera error");
        cameraCaptureSingleton.closeCamera();
        cameraCaptureSingleton.mSequenceTaskRunner.a(cameraCaptureSingleton.mRestartCameraRunnable, 2000L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ void lambda$onFrameAvailable$12(CameraCaptureSingleton cameraCaptureSingleton, SurfaceTexture surfaceTexture) {
        SurfaceTexture surfaceTexture2 = cameraCaptureSingleton.mSurfaceTexture;
        if (surfaceTexture2 != null && surfaceTexture == surfaceTexture2 && cameraCaptureSingleton.makeCurrent()) {
            cameraCaptureSingleton.checkFirstFrameCaptured();
            cameraCaptureSingleton.onCaptureFrameAvailable();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ void lambda$setCaptureCloudConfig$2(CameraCaptureSingleton cameraCaptureSingleton, CaptureCloudConfig captureCloudConfig) {
        cameraCaptureSingleton.mCloudConfig = captureCloudConfig;
        cameraCaptureSingleton.mCameraSupervisor.a(captureCloudConfig.getCamera2SupportMinApiLevel());
        LiteavLog.i(TAG, "setCaptureCloudConfig minApiLevel:" + captureCloudConfig.getCamera2SupportMinApiLevel());
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ void lambda$setExposureCompensation$10(CameraCaptureSingleton cameraCaptureSingleton, float f10) {
        cameraCaptureSingleton.mExposureCompensation = f10;
        ah ahVar = cameraCaptureSingleton.mCameraController;
        if (ahVar != null) {
            ahVar.b(f10);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ void lambda$setServerConfig$1(CameraCaptureSingleton cameraCaptureSingleton, ServerVideoProducerConfig serverVideoProducerConfig) {
        cameraCaptureSingleton.mServerConfig = serverVideoProducerConfig;
        cameraCaptureSingleton.mCameraSupervisor.a(serverVideoProducerConfig.getCamera2SupportMinApiLevel());
        LiteavLog.i(TAG, "setServerConfig minApiLevel:" + serverVideoProducerConfig.getCamera2SupportMinApiLevel());
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ void lambda$setZoomLevel$8(CameraCaptureSingleton cameraCaptureSingleton, float f10) {
        int i9 = cameraCaptureSingleton.mMaxZoomLevel;
        if (i9 <= 0) {
            LiteavLog.w(TAG, "setZoomLevel maxZoomLevel=".concat(String.valueOf(i9)));
        } else {
            cameraCaptureSingleton.setZoomInternal(f10 / i9);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ void lambda$start$13(CameraCaptureSingleton cameraCaptureSingleton, CaptureSourceInterface.CaptureSourceListener captureSourceListener, CameraCaptureParams cameraCaptureParams) {
        cameraCaptureSingleton.mListenerManager.a(captureSourceListener);
        if (cameraCaptureSingleton.mEGLCore != null && cameraCaptureSingleton.mCurrentCaptureParams != null) {
            LiteavLog.i(TAG, "capture source has already started!");
            cameraCaptureSingleton.updateParamsInternal(cameraCaptureParams);
            return;
        }
        cameraCaptureSingleton.initGLComponents(ay.a().b());
        cameraCaptureSingleton.openCamera(cameraCaptureParams);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ void lambda$startAutoFocusAtPosition$6(CameraCaptureSingleton cameraCaptureSingleton, int i9, int i10) {
        ah ahVar;
        if (cameraCaptureSingleton.mEnableTapToFocus && (ahVar = cameraCaptureSingleton.mCameraController) != null) {
            ahVar.a(i9, i10);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ void lambda$stop$14(CameraCaptureSingleton cameraCaptureSingleton) {
        LiteavLog.i(TAG, "stop listener count: " + cameraCaptureSingleton.mListenerManager.a());
        if (cameraCaptureSingleton.mListenerManager.a() == 0) {
            cameraCaptureSingleton.closeCamera();
            cameraCaptureSingleton.mZoomPercent = 0.0f;
            cameraCaptureSingleton.mNeedNotifyStartFinish = true;
            cameraCaptureSingleton.mCurrentCaptureParams = null;
            cameraCaptureSingleton.uninitGLComponents();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ void lambda$switchCamera$3(CameraCaptureSingleton cameraCaptureSingleton) {
        boolean z10 = cameraCaptureSingleton.mExpectFrontCamera.get();
        CameraCaptureParams cameraCaptureParams = cameraCaptureSingleton.mCurrentCaptureParams;
        if (cameraCaptureParams == null || cameraCaptureParams.f32476a.booleanValue() == z10) {
            return;
        }
        cameraCaptureSingleton.closeCamera();
        cameraCaptureSingleton.mZoomPercent = 0.0f;
        cameraCaptureSingleton.mNeedNotifyStartFinish = true;
        cameraCaptureSingleton.mCurrentCaptureParams.f32476a = Boolean.valueOf(z10);
        cameraCaptureSingleton.openCamera(cameraCaptureSingleton.mCurrentCaptureParams);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ void lambda$turnOnTorch$4(CameraCaptureSingleton cameraCaptureSingleton, boolean z10) {
        ah ahVar = cameraCaptureSingleton.mCameraController;
        if (ahVar != null) {
            ahVar.a(z10);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ void lambda$updateParams$16(CameraCaptureSingleton cameraCaptureSingleton, CameraCaptureParams cameraCaptureParams) {
        if (cameraCaptureSingleton.mEGLCore == null || cameraCaptureSingleton.mCurrentCaptureParams == null) {
            return;
        }
        LiteavLog.i(TAG, "capture source has already started!");
        cameraCaptureSingleton.updateParamsInternal(cameraCaptureParams);
    }

    private void onCaptureFrameAvailable() {
        com.tencent.liteav.videobase.frame.l lVar;
        if (this.mGLTexturePool != null && (lVar = this.mTextureHolderPool) != null) {
            l.b bVar = null;
            try {
                bVar = lVar.a();
            } catch (InterruptedException unused) {
            }
            if (this.mPixelFrame.getMatrix() == null) {
                this.mPixelFrame.setMatrix(this.mMatrix);
            }
            try {
                this.mSurfaceTexture.updateTexImage();
                this.mSurfaceTexture.getTransformMatrix(this.mMatrix);
            } catch (Exception e10) {
                LiteavLog.w(this.mThrottlers.a("updateTexImage"), TAG, "updateTexImage exception: ".concat(String.valueOf(e10)), new Object[0]);
            }
            if (this.mCameraSupervisor.a() == aj.a.MOCK) {
                getMockCameraMatrix(this.mMatrix);
            }
            bVar.a(36197, this.mOESTextureId, this.mPixelFrame.getWidth(), this.mPixelFrame.getHeight());
            PixelFrame a10 = bVar.a(this.mPixelFrame.getGLContext());
            a10.setMirrorHorizontal(isFrontCamera());
            a10.setMatrix(this.mMatrix);
            a10.setTimestamp(TimeUtil.c());
            FrameMetaData frameMetaData = new FrameMetaData();
            frameMetaData.setCaptureMetaData(isFrontCamera(), false, 0, isFrontCamera(), a10.getWidth(), a10.getHeight());
            a10.setMetaData(frameMetaData);
            if (a10.getGLContext() == null) {
                a10.setGLContext(this.mEGLCore.d());
            }
            this.mListenerManager.onFrameAvailable(this, a10);
            bVar.release();
            a10.release();
            return;
        }
        LiteavLog.w(TAG, "onCaptureFrameAvailable mGLTexturePool:" + this.mGLTexturePool + " mTextureHolderPool:" + this.mTextureHolderPool);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean openCamera(@NonNull CameraCaptureParams cameraCaptureParams) {
        if (this.mCameraController != null) {
            LiteavLog.e(TAG, "camera is opened, you should Stop it first.");
            return true;
        }
        boolean openCameraInternal = openCameraInternal(cameraCaptureParams);
        if (openCameraInternal) {
            handleCameraStartSuccess();
        } else {
            handleCameraStartFailed();
        }
        return openCameraInternal;
    }

    private boolean openCameraInternal(@NonNull CameraCaptureParams cameraCaptureParams) {
        if (!makeCurrent()) {
            LiteavLog.e(TAG, "openCameraInternal: set opengl context fail.");
            return false;
        }
        this.mOESTextureId = OpenGlUtils.generateTextureOES();
        this.mSurfaceTexture = new SurfaceTexture(this.mOESTextureId);
        this.mCameraController = createCameraController(this.mCameraSupervisor.a());
        if (cameraCaptureParams.f32476a == null) {
            cameraCaptureParams.f32476a = Boolean.valueOf(this.mExpectFrontCamera.get());
            LiteavLog.w(TAG, "openCameraInternal frontCamera not set, use expect front camera:" + cameraCaptureParams.f32476a);
        }
        this.mCurrentCaptureParams = cameraCaptureParams;
        this.mCameraController.b(this.mEnableTapToFocus);
        this.mCameraController.b(this.mExposureCompensation);
        this.mCameraController.a(this.mZoomPercent);
        this.mListenerManager.onCameraTouchEnable(this.mEnableTapToFocus);
        this.mListenerManager.onCameraZoomEnable(this.mEnableZoom);
        return this.mCameraController.a(this.mCurrentCaptureParams, this.mSurfaceTexture, this);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setZoomInternal(float f10) {
        ah ahVar;
        LiteavLog.i(TAG, "setZoomInternal ".concat(String.valueOf(f10)));
        if (Math.abs(this.mZoomPercent - f10) >= 0.001d && (ahVar = this.mCameraController) != null) {
            this.mZoomPercent = f10;
            ahVar.a(f10);
        }
    }

    private void updateParamsInternal(CameraCaptureParams cameraCaptureParams) {
        if (cameraCaptureParams.f32476a == null) {
            cameraCaptureParams.f32476a = this.mCurrentCaptureParams.f32476a;
            LiteavLog.i(TAG, "params not set frontCamera, use mCurrentCaptureParams frontCamera:" + this.mCurrentCaptureParams.f32476a);
        }
        if (isNeedRestartCamera(cameraCaptureParams)) {
            LiteavLog.i(TAG, "reopen camera params: ".concat(String.valueOf(cameraCaptureParams)));
            updateCamera(cameraCaptureParams);
        }
    }

    @CalledByNative
    public void enableCameraZoom(boolean z10) {
        LiteavLog.i(TAG, "enableCameraZoom ".concat(String.valueOf(z10)));
        runInGLThread(r.a(this, z10));
    }

    @CalledByNative
    public void enableMockCamera(boolean z10) {
        this.mCameraSupervisor.f32556c = z10;
    }

    @CalledByNative
    public void enableTapToFocus(boolean z10) {
        LiteavLog.i(TAG, "enableTapToFocus ".concat(String.valueOf(z10)));
        runInGLThread(p.a(this, z10));
    }

    public aj.a getCameraAPIType() {
        return this.mCameraSupervisor.a();
    }

    public Rotation getCameraRotation() {
        return this.mCameraRotation;
    }

    @CalledByNative
    public int getMaxZoomLevel() {
        return this.mMaxZoomLevel;
    }

    @CalledByNative
    public boolean isAutoFocusEnabled() {
        return !this.mEnableTapToFocus;
    }

    @CalledByNative
    public boolean isCameraAutoFocusFaceModeSupported() {
        return this.mIsCameraAutoFocusFaceModeSupported;
    }

    @CalledByNative
    public boolean isCameraFocusPositionInPreviewSupported() {
        return this.mIsFocusPositionInPreviewSupported;
    }

    @CalledByNative
    public boolean isFrontCamera() {
        Boolean bool;
        CameraCaptureParams cameraCaptureParams = this.mCurrentCaptureParams;
        if (cameraCaptureParams == null || (bool = cameraCaptureParams.f32476a) == null) {
            return false;
        }
        return bool.booleanValue();
    }

    @CalledByNative
    public boolean isTorchSupported() {
        return this.mIsTorchSupported;
    }

    @CalledByNative
    public boolean isZoomSupported() {
        return this.mIsZoomSupported;
    }

    protected boolean makeCurrent() {
        com.tencent.liteav.videobase.b.e eVar = this.mEGLCore;
        if (eVar == null) {
            LiteavLog.e(this.mThrottlers.a("makeCurrentNull"), TAG, "makeCurrent on mEGLCore is null", new Object[0]);
            return false;
        }
        try {
            eVar.a();
            return true;
        } catch (com.tencent.liteav.videobase.b.g e10) {
            LiteavLog.e(this.mThrottlers.a("makeCurrentError"), TAG, "make current failed.", e10);
            this.mListenerManager.onCaptureError();
            return false;
        }
    }

    @Override // com.tencent.liteav.videoproducer.capture.ai
    public void onCameraError(ah ahVar) {
        runInGLThread(e.a(this, ahVar));
    }

    @Override // android.graphics.SurfaceTexture.OnFrameAvailableListener
    public void onFrameAvailable(SurfaceTexture surfaceTexture) {
        runInGLThread(f.a(this, surfaceTexture));
    }

    @Override // com.tencent.liteav.videoproducer.capture.CaptureSourceInterface
    public void pause() {
        LiteavLog.i(TAG, "pause");
        runInGLThread(i.a(this));
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void pauseInternal() {
        this.mPausedCount++;
        int a10 = this.mListenerManager.a();
        LiteavLog.i(TAG, "pauseInternal paused cnt= " + this.mPausedCount + " , listener cnt=" + a10);
        if (this.mPausedCount > a10) {
            this.mPausedCount = a10;
        }
        if (a10 != this.mPausedCount) {
            LiteavLog.i(TAG, "pauseInternal listeners is not zero.");
        } else {
            closeCamera();
        }
    }

    public void removeListener(CaptureSourceInterface.CaptureSourceListener captureSourceListener) {
        runInGLThread(b.a(this, captureSourceListener));
    }

    @Override // com.tencent.liteav.videoproducer.capture.CaptureSourceInterface
    public void resume() {
        LiteavLog.i(TAG, "resume");
        runInGLThread(j.a(this));
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void resumeInternal(CameraCaptureParams cameraCaptureParams) {
        LiteavLog.i(TAG, "resumeInternal pausedCount %d, listeners size = %d", Integer.valueOf(this.mPausedCount), Integer.valueOf(this.mListenerManager.a()));
        if (this.mListenerManager.a() == this.mPausedCount) {
            openCamera(cameraCaptureParams);
        }
        int i9 = this.mPausedCount - 1;
        this.mPausedCount = i9;
        if (i9 < 0) {
            this.mPausedCount = 0;
        }
    }

    protected void runInGLThread(Runnable runnable) {
        this.mSequenceTaskRunner.a(runnable);
    }

    @Override // com.tencent.liteav.videoproducer.capture.CaptureSourceInterface
    public void setCaptureCloudConfig(CaptureCloudConfig captureCloudConfig) {
        runInGLThread(m.a(this, captureCloudConfig));
    }

    public void setExposureCompensation(float f10) {
        LiteavLog.i(TAG, "setExposureCompensation ".concat(String.valueOf(f10)));
        runInGLThread(d.a(this, f10));
    }

    public void setPercentOfMaxZoomLevel(float f10) {
        runInGLThread(c.a(this, f10));
    }

    public void setServerConfig(ServerVideoProducerConfig serverVideoProducerConfig) {
        runInGLThread(l.a(this, serverVideoProducerConfig));
    }

    @CalledByNative
    public void setZoomLevel(float f10) {
        LiteavLog.i(TAG, "setZoomLevel ".concat(String.valueOf(f10)));
        runInGLThread(s.a(this, f10));
    }

    @Override // com.tencent.liteav.videoproducer.capture.CaptureSourceInterface
    public void start(Object obj, CaptureSourceInterface.CaptureParams captureParams, CaptureSourceInterface.CaptureSourceListener captureSourceListener) {
        LiteavLog.i(TAG, "Start ".concat(String.valueOf(obj)));
        runInGLThread(g.a(this, captureSourceListener, new CameraCaptureParams((CameraCaptureParams) captureParams)));
    }

    @CalledByNative
    public void startAutoFocusAtPosition(int i9, int i10) {
        LiteavLog.i(TAG, "startAutoFocusAtPosition " + i9 + ", " + i10);
        runInGLThread(q.a(this, i9, i10));
    }

    @Override // com.tencent.liteav.videoproducer.capture.CaptureSourceInterface
    public void stop() {
        LiteavLog.i(TAG, "Stop");
        runInGLThread(h.a(this));
    }

    @CalledByNative
    public void switchCamera(boolean z10) {
        LiteavLog.i(TAG, "switchCamera ".concat(String.valueOf(z10)));
        this.mExpectFrontCamera.set(z10);
        runInGLThread(n.a(this));
    }

    @CalledByNative
    public void turnOnTorch(boolean z10) {
        LiteavLog.i(TAG, "turnOnTorch ".concat(String.valueOf(z10)));
        runInGLThread(o.a(this, z10));
    }

    protected void uninitGLComponents() {
        if (this.mEGLCore == null) {
            return;
        }
        com.tencent.liteav.videobase.frame.l lVar = this.mTextureHolderPool;
        if (lVar != null) {
            lVar.b();
            this.mTextureHolderPool = null;
        }
        try {
            this.mEGLCore.a();
            com.tencent.liteav.videobase.frame.e eVar = this.mGLTexturePool;
            if (eVar != null) {
                eVar.b();
                this.mGLTexturePool = null;
            }
        } catch (com.tencent.liteav.videobase.b.g e10) {
            LiteavLog.e(this.mThrottlers.a("uninitGL"), TAG, "EGLCore destroy failed.", e10);
        }
        this.mSharedContext = null;
        com.tencent.liteav.videobase.b.e.a(this.mEGLCore);
        this.mEGLCore = null;
        this.mSequenceTaskRunner.c(this.mRestartCameraRunnable);
        this.mSequenceTaskRunner.c(this.mSwitchToCamera1Runnable);
    }

    protected void updateCamera(@NonNull CameraCaptureParams cameraCaptureParams) {
        closeCamera();
        this.mNeedNotifyStartFinish = true;
        openCamera(cameraCaptureParams);
    }

    @Override // com.tencent.liteav.videoproducer.capture.CaptureSourceInterface
    public void updateParams(CaptureSourceInterface.CaptureParams captureParams) {
        CameraCaptureParams cameraCaptureParams = new CameraCaptureParams((CameraCaptureParams) captureParams);
        LiteavLog.i(TAG, "updateParams");
        runInGLThread(k.a(this, cameraCaptureParams));
    }
}
