package com.tencent.xmagic;

import android.content.Context;
import android.graphics.PointF;
import android.media.AudioTrack;
import android.opengl.GLES20;
import android.opengl.GLES30;
import android.os.SystemClock;
import android.text.TextUtils;
import androidx.annotation.RequiresApi;
import java.io.File;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Set;
import org.light.AudioFrame;
import org.light.AudioOutput;
import org.light.BeautyController;
import org.light.CameraConfig;
import org.light.CameraController;
import org.light.Config;
import org.light.DeviceCameraConfig;
import org.light.DeviceSupportUtil;
import org.light.LightAsset;
import org.light.LightConstants;
import org.light.LightEngine;
import org.light.LightSurface;
import org.light.MaterialConfig;
import org.light.PerformanceData;
import org.light.PerformanceMonitor;
import org.light.PhotoClip;
import org.light.RendererConfig;
import org.light.VideoOutput;
import org.light.bean.WMElement;
import org.light.callback.ExternalRenderCallback;
import org.light.device.LightDeviceUtils;
import org.light.listener.OnAIDataListener;
import org.light.listener.OnClickWatermarkListener;
import org.light.listener.OnLoadAssetListener;
import org.light.listener.OnTipsStatusListener;
import org.light.listener.YTDataListener;
import org.light.utils.LightLogUtil;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes4.dex */
public class LightNode {
    private static final int FRAME_INTERN_TIME = 80000;
    public static final String TAG = "LightNode";
    private static HashMap<String, String> sAgentPath = null;
    private static boolean sIsDeviceSupportUtilInited = false;
    private OnLoadAssetListener OnLoadAssetListener;
    private OnAIDataListener aiDataListener;
    private LightAsset asset;
    private String assetsDir;
    private OnAssetsLoadErrorListener assetsLoadErrorListener;
    private AudioFrame audioFrame;
    private AudioOutput audioReader;
    private AudioTrack audioTrack;
    private CameraConfig cameraConfig;
    public CameraController cameraController;
    private DeviceCameraConfig deviceCameraConfig;
    private boolean disableRenderer;
    private String emptyMaterialPath;
    private OnLoadAssetListener lightAssetListener;
    private LightEngine lightEngine;
    private LightSurface lightSurface;
    private BeautyController mBeautyController;
    private Context mContext;
    private String segmentBgName;
    private int segmentBgType;
    private int timeOffset;
    private OnTipsStatusListener tipsListener;
    public boolean trace_open;
    private VideoOutput videoOutput;
    private Thread writePCMThread;
    private YTDataListener ytDataListener;
    int[] outTexs = new int[2];
    private long startTime = 0;
    private String assetPath = "";
    private int previewWidth = 0;
    private int previewHeight = 0;
    private int mFrameIndex = 0;
    private boolean mAutoTest = false;
    private boolean mImageDebug = false;
    private String mImageDebugResDir = "";
    private boolean mImageOnlyDebugRendererTree = true;
    private boolean mImageDebugFileNameIncludeTimestamp = false;
    private boolean mIsApplied = false;

    /* loaded from: classes4.dex */
    public interface OnAssetsLoadErrorListener {
        void onAssetsLoadError(int i9);
    }

    public LightNode(Context context, String str, String str2) {
        this.mContext = context.getApplicationContext();
        if (new File(str).exists()) {
            if (new File(str2).exists()) {
                this.assetsDir = str;
                this.emptyMaterialPath = str2;
                if (!sIsDeviceSupportUtilInited) {
                    sIsDeviceSupportUtilInited = true;
                    DeviceSupportUtil.init(str);
                }
                this.mBeautyController = new BeautyController(new HashMap());
                return;
            }
            throw new RuntimeException("Dir not exists: " + str2);
        }
        throw new RuntimeException("Dir not exists: " + str);
    }

    public static void appendAgentPath(String str, String str2) {
        if (str == null) {
            return;
        }
        if (sAgentPath == null) {
            sAgentPath = new HashMap<>();
        }
        sAgentPath.put(str, str2);
    }

    private void destroyAudio() {
        Thread thread = this.writePCMThread;
        if (thread != null) {
            thread.interrupt();
            this.writePCMThread = null;
        }
        AudioTrack audioTrack = this.audioTrack;
        if (audioTrack != null) {
            audioTrack.release();
            this.audioTrack = null;
        }
        AudioOutput audioOutput = this.audioReader;
        if (audioOutput != null) {
            audioOutput.release();
            this.audioReader = null;
        }
    }

    private void initAudioTrack() {
        AudioTrack audioTrack = new AudioTrack(3, 44100, 12, 2, AudioTrack.getMinBufferSize(44100, 12, 2) * 2, 1);
        this.audioTrack = audioTrack;
        audioTrack.setStereoVolume(1.0f, 1.0f);
    }

    private void initWritePCMThread() {
        if (this.writePCMThread == null) {
            Thread thread = new Thread(new Runnable() { // from class: com.tencent.xmagic.LightNode.2
                @Override // java.lang.Runnable
                @RequiresApi(api = 21)
                public void run() {
                    try {
                        if (LightNode.this.audioReader != null) {
                            AudioFrame copyNextSample = LightNode.this.audioReader.copyNextSample();
                            while (copyNextSample != null && !Thread.interrupted()) {
                                LightNode.this.audioTrack.play();
                                LightNode.this.audioTrack.write(copyNextSample.data, (int) copyNextSample.length, 0);
                                copyNextSample = LightNode.this.audioReader.copyNextSample();
                            }
                            if (LightNode.this.audioTrack != null && LightNode.this.audioTrack.getState() == 1) {
                                LightNode.this.audioTrack.stop();
                            }
                        } else {
                            LightLogUtil.w(LightNode.TAG, "audioReader is null!");
                        }
                    } catch (Exception e10) {
                        e10.printStackTrace();
                    }
                    LightLogUtil.d(LightNode.TAG, "Audio Thread Quitted");
                }
            });
            this.writePCMThread = thread;
            thread.start();
        }
    }

    private void setBundleToLightEngine(String str, Set<String> set) {
        if (str == null || set == null) {
            return;
        }
        for (String str2 : set) {
            LightLogUtil.i(TAG, "setBundleToLightEngine " + str2);
            this.cameraConfig.setLightAIModelPath(str, str2);
        }
    }

    public void clear() {
        int[] iArr = this.outTexs;
        GLES20.glDeleteTextures(iArr.length, iArr, 0);
        VideoOutput videoOutput = this.videoOutput;
        if (videoOutput != null) {
            videoOutput.release();
            this.videoOutput = null;
        }
        destroyAudio();
        CameraController cameraController = this.cameraController;
        if (cameraController != null) {
            cameraController.release();
            this.cameraController = null;
        }
        LightEngine lightEngine = this.lightEngine;
        if (lightEngine != null) {
            lightEngine.release();
            this.lightEngine = null;
        }
        LightSurface lightSurface = this.lightSurface;
        if (lightSurface != null) {
            lightSurface.release();
            this.lightSurface = null;
        }
        CameraConfig cameraConfig = this.cameraConfig;
        if (cameraConfig != null) {
            cameraConfig.performFinalize();
            this.cameraConfig = null;
        }
        this.mIsApplied = false;
    }

    public LightAsset getAsset() {
        return this.asset;
    }

    public AudioOutput getAudioReader() {
        return this.audioReader;
    }

    public String getCurrentPef() {
        return PerformanceMonitor.getPerformanceData();
    }

    public Map<String, Boolean> getDeviceSupportAbilities() {
        HashMap hashMap = new HashMap();
        DeviceSupportUtil.getDeviceSupportAbilities(hashMap);
        return hashMap;
    }

    public List<WMElement> getEditableWMElement() {
        CameraController cameraController = this.cameraController;
        if (cameraController != null) {
            return cameraController.getEditableWMElement();
        }
        return null;
    }

    public PerformanceData getLightPerformanceData() {
        CameraConfig cameraConfig = this.cameraConfig;
        if (cameraConfig == null) {
            return null;
        }
        return cameraConfig.getPerformanceData();
    }

    public OnLoadAssetListener getOnLoadAssetListener() {
        return this.OnLoadAssetListener;
    }

    public String getPerformanJson() {
        return PerformanceMonitor.getBenchData();
    }

    public OnTipsStatusListener getTipsListener() {
        return this.tipsListener;
    }

    public BeautyController getmBeautyController() {
        return this.mBeautyController;
    }

    public void init() {
        if (this.mIsApplied) {
            return;
        }
        long currentTimeMillis = System.currentTimeMillis();
        int[] iArr = this.outTexs;
        GLES20.glGenTextures(iArr.length, iArr, 0);
        GLES20.glBindTexture(3553, this.outTexs[0]);
        GLES20.glTexParameterf(3553, 10241, 9729.0f);
        GLES20.glTexParameterf(3553, 10240, 9729.0f);
        GLES20.glBindTexture(3553, 0);
        this.lightSurface = LightSurface.makeFromTexture(this.outTexs[0], this.previewWidth, this.previewHeight, false);
        LightEngine.initContext(this.mContext);
        LightEngine make = LightEngine.make(null, null, new RendererConfig(this.assetsDir));
        this.lightEngine = make;
        make.setSurface(this.lightSurface);
        CameraConfig make2 = CameraConfig.make();
        this.cameraConfig = make2;
        this.lightEngine.setConfig(make2);
        this.cameraConfig.setDefaultBeautyVersion(LightConstants.DefaultBeautyVersion.DEFAULT_BEAUTY_VERSION_V7);
        this.videoOutput = this.lightEngine.videoOutput();
        this.audioReader = this.lightEngine.audioOutput();
        this.mBeautyController.setCameraConfig(this.cameraConfig);
        initAudioTrack();
        initWritePCMThread();
        HashMap hashMap = new HashMap();
        hashMap.put(Config.ConfigKeys.ResourceDir.value(), this.assetsDir);
        this.cameraConfig.setConfigData(hashMap);
        this.cameraConfig.setRenderSize(this.previewWidth, this.previewHeight);
        this.cameraConfig.setLoadAssetListener(new OnLoadAssetListener() { // from class: com.tencent.xmagic.LightNode.1
            @Override // org.light.listener.OnLoadAssetListener
            public void OnAssetDurationChange(long j10) {
            }

            @Override // org.light.listener.OnLoadAssetListener
            public void OnAssetProcessing(HashMap<String, String> hashMap2) {
            }

            @Override // org.light.listener.OnLoadAssetListener
            public void OnLoadAssetError(int i9) {
                if (LightNode.this.assetsLoadErrorListener != null) {
                    LightNode.this.assetsLoadErrorListener.onAssetsLoadError(i9);
                }
                LightLogUtil.e(LightNode.TAG, "load assets error, code=" + i9);
            }
        });
        OnAIDataListener onAIDataListener = this.aiDataListener;
        if (onAIDataListener != null) {
            this.cameraConfig.setAIDataListener(onAIDataListener);
        }
        YTDataListener yTDataListener = this.ytDataListener;
        if (yTDataListener != null) {
            this.cameraConfig.setYTDataListener(yTDataListener);
        }
        OnTipsStatusListener onTipsStatusListener = this.tipsListener;
        if (onTipsStatusListener != null) {
            this.cameraConfig.setTipsStatusListener(onTipsStatusListener);
        }
        OnLoadAssetListener onLoadAssetListener = this.OnLoadAssetListener;
        if (onLoadAssetListener != null) {
            this.cameraConfig.setLoadAssetListener(onLoadAssetListener);
        }
        this.cameraConfig.setDowngradeStrategy("smooth", LightDeviceUtils.getPhonePerfLevel(this.mContext));
        LightAsset Load = LightAsset.Load(this.emptyMaterialPath, 0, LightAsset.ASSETS_TEMPLATE_TYPE_DEFAULT, null, 0, 0);
        this.asset = Load;
        this.cameraController = this.lightEngine.setAssetForCamera(Load);
        this.startTime = System.nanoTime();
        this.cameraConfig.setDisableRendererFlag(this.disableRenderer);
        HashMap<String, String> hashMap2 = sAgentPath;
        if (hashMap2 != null && hashMap2.size() > 0) {
            for (Map.Entry<String, String> entry : sAgentPath.entrySet()) {
                this.cameraConfig.setLightAIModelPath(entry.getValue(), entry.getKey());
            }
        }
        this.mIsApplied = true;
        long currentTimeMillis2 = System.currentTimeMillis();
        LightLogUtil.i("[launchTime]", "LightNode time:" + (currentTimeMillis2 - currentTimeMillis));
    }

    public void initPreviewSize(int i9, int i10) {
        this.previewWidth = i9;
        this.previewHeight = i10;
    }

    public boolean isAbilityOn(String str) {
        CameraConfig cameraConfig = this.cameraConfig;
        if (cameraConfig == null || cameraConfig.getConfigData() == null) {
            return false;
        }
        return Boolean.parseBoolean(this.cameraConfig.getConfigData().get(str));
    }

    public boolean isInited() {
        return this.mIsApplied;
    }

    public LightAsset makeLightAssetByPath(String str) {
        return LightAsset.Load(str, 0, LightAsset.ASSETS_TEMPLATE_TYPE_MOTION, this.segmentBgName, this.segmentBgType, this.timeOffset);
    }

    public void needSyncInitProcessor(boolean z10, String str) {
        this.cameraConfig.setSyncInitFlag(z10, str);
    }

    public void onPerfTest(int i9) {
    }

    public void pauseAudio() {
        destroyAudio();
    }

    public int render(int i9, int i10, int i11) {
        this.cameraConfig.setCameraTexture(i9, this.previewWidth, this.previewHeight, CameraConfig.DeviceCameraOrientation.ROTATION_0, CameraConfig.ImageOrigin.TopLeft);
        long nanoTime = (System.nanoTime() - this.startTime) / 1000;
        if (this.mAutoTest) {
            nanoTime = this.mFrameIndex * FRAME_INTERN_TIME;
        }
        CameraController cameraController = this.cameraController;
        if (cameraController != null) {
            cameraController.updateCameraTextureTimestamp(SystemClock.elapsedRealtimeNanos() / 1000000);
        }
        this.videoOutput.readSample(nanoTime);
        GLES30.glBindVertexArray(0);
        return this.outTexs[0];
    }

    public void resetAsset() {
        this.startTime = System.nanoTime();
        CameraController cameraController = this.cameraController;
        if (cameraController != null) {
            cameraController.resetAsset();
        }
    }

    public void resumeAudio() {
        LightEngine lightEngine = this.lightEngine;
        if (lightEngine != null) {
            this.audioReader = lightEngine.audioOutput();
            initAudioTrack();
            initWritePCMThread();
        }
    }

    public void setAIDataListener(OnAIDataListener onAIDataListener) {
        this.aiDataListener = onAIDataListener;
    }

    public void setAssetsLoadErrorListener(OnAssetsLoadErrorListener onAssetsLoadErrorListener) {
        this.assetsLoadErrorListener = onAssetsLoadErrorListener;
    }

    public void setAutoTest(boolean z10) {
        this.mAutoTest = z10;
        this.cameraConfig.setAutoTestMode(z10);
    }

    public void setCustomMaterial(String str) {
        LightAsset lightAsset;
        MaterialConfig[] materialConfigs;
        if (TextUtils.isEmpty(str) || (lightAsset = this.asset) == null || (materialConfigs = lightAsset.getMaterialConfigs()) == null || materialConfigs.length < 1) {
            return;
        }
        MaterialConfig materialConfig = materialConfigs[0];
        PhotoClip photoClip = new PhotoClip();
        photoClip.path = str;
        photoClip.duration = 0L;
        this.cameraController.setMaterialClipAssets(materialConfig.key, new PhotoClip[]{photoClip});
    }

    public void setDefaultBeautyVersion(String str) {
        if (str != null && !str.isEmpty()) {
            this.cameraConfig.setDefaultBeautyVersion(str);
        } else {
            this.cameraConfig.setDefaultBeautyVersion("");
        }
    }

    public void setDisableRenderer(boolean z10) {
        this.disableRenderer = z10;
    }

    public void setExternalRenderCallback(ExternalRenderCallback externalRenderCallback) {
        this.cameraConfig.setExternalRenderCallback(externalRenderCallback);
    }

    public void setFrameIndex(int i9) {
        this.mFrameIndex = i9;
    }

    public void setImageDebugInfo(boolean z10, String str, boolean z11, boolean z12) {
        this.mImageDebug = z10;
        this.mImageDebugResDir = str;
        this.mImageOnlyDebugRendererTree = z11;
        this.mImageDebugFileNameIncludeTimestamp = z12;
    }

    public void setOnClickWatermarkListener(OnClickWatermarkListener onClickWatermarkListener) {
        CameraConfig cameraConfig = this.cameraConfig;
        if (cameraConfig != null) {
            cameraConfig.setOnClickWatermarkListener(onClickWatermarkListener);
        }
    }

    public void setOnLoadAssetListener(OnLoadAssetListener onLoadAssetListener) {
        if (onLoadAssetListener != null) {
            this.OnLoadAssetListener = onLoadAssetListener;
        }
    }

    public void setPreInitAgents(String[] strArr) {
        this.cameraConfig.setPreInitAgents(strArr);
    }

    public void setPresetData(String str, String str2) {
        if (str == null || this.cameraController == null) {
            return;
        }
        HashMap<String, String> hashMap = new HashMap<>();
        hashMap.put(str, str2);
        this.cameraController.setAssetData(hashMap);
    }

    public void setSegmentBg(String str, int i9, int i10) {
        this.segmentBgName = str;
        this.segmentBgType = i9;
        this.timeOffset = i10;
    }

    public void setSyncMode(boolean z10) {
        CameraConfig cameraConfig = this.cameraConfig;
        if (cameraConfig != null) {
            cameraConfig.setSyncMode(z10);
            this.cameraConfig.cameraSwitched(this.deviceCameraConfig.cameraIndex);
        }
    }

    public void setTipsListener(OnTipsStatusListener onTipsStatusListener) {
        this.tipsListener = onTipsStatusListener;
    }

    public void setYTDataListener(YTDataListener yTDataListener) {
        this.ytDataListener = yTDataListener;
    }

    public void updateAsset(String str, boolean z10) {
        if (str != null) {
            if (!str.equals(this.assetPath) || z10) {
                this.assetPath = str;
                LightLogUtil.i(TAG, "LightAsset Path: " + str);
                updateAsset(LightAsset.Load(str, 0, LightAsset.ASSETS_TEMPLATE_TYPE_MOTION, this.segmentBgName, this.segmentBgType, this.timeOffset));
            }
        }
    }

    public void updateCameraConfigData(Map<String, String> map) {
        CameraConfig cameraConfig;
        if (map == null || (cameraConfig = this.cameraConfig) == null) {
            return;
        }
        cameraConfig.setConfigData(map);
    }

    public void updateDeviceCameraConfig(DeviceCameraConfig deviceCameraConfig) {
        LightEngine lightEngine;
        CameraConfig cameraConfig;
        CameraConfig cameraConfig2;
        if (deviceCameraConfig == null) {
            return;
        }
        boolean z10 = false;
        if (this.deviceCameraConfig == null) {
            this.deviceCameraConfig = new DeviceCameraConfig();
        }
        CameraConfig.DeviceCameraOrientation deviceCameraOrientation = deviceCameraConfig.deviceCameraOrientation;
        if (deviceCameraOrientation != this.deviceCameraConfig.deviceCameraOrientation && (cameraConfig2 = this.cameraConfig) != null) {
            cameraConfig2.sensorOrientationChanged(deviceCameraOrientation);
            z10 = true;
            this.deviceCameraConfig.deviceCameraOrientation = deviceCameraConfig.deviceCameraOrientation;
        }
        if (!z10 || (lightEngine = this.lightEngine) == null || (cameraConfig = this.cameraConfig) == null) {
            return;
        }
        lightEngine.setConfig(cameraConfig);
    }

    public void updatePreviewSize(int i9, int i10) {
        initPreviewSize(i9, i10);
        CameraConfig cameraConfig = this.cameraConfig;
        if (cameraConfig != null) {
            cameraConfig.setRenderSize(i9, i10);
        }
        LightSurface lightSurface = this.lightSurface;
        if (lightSurface != null) {
            lightSurface.updateSize(i9, i10);
        }
    }

    public void updateTouchEvent(int i9, long j10, long j11, ArrayList<PointF> arrayList, int i10, int i11) {
        CameraController cameraController = this.cameraController;
        if (cameraController != null) {
            cameraController.updateTouchEvent(i9, j10, j11, arrayList, i10, i11);
        }
    }

    public void updateCameraConfigData(String str, String str2) {
        if (str == null || this.cameraConfig == null) {
            return;
        }
        HashMap hashMap = new HashMap();
        hashMap.put(str, str2);
        this.cameraConfig.setConfigData(hashMap);
    }

    public void setBundleToLightEngine(Map<String, String> map) {
        if (map == null || map.size() <= 0 || this.cameraConfig == null) {
            return;
        }
        for (Map.Entry<String, String> entry : map.entrySet()) {
            this.cameraConfig.setLightAIModelPath(entry.getValue(), entry.getKey());
        }
    }

    public void updateAsset(LightAsset lightAsset) {
        LightAsset lightAsset2;
        if (lightAsset == null || (lightAsset2 = this.asset) == lightAsset) {
            return;
        }
        if (lightAsset2 != null) {
            lightAsset2.performFinalize();
            this.asset = null;
        }
        this.asset = lightAsset;
        this.cameraController = this.lightEngine.setAssetForCamera(lightAsset);
        this.cameraConfig.setBGMusicHidden(false);
        this.startTime = System.nanoTime();
    }
}
