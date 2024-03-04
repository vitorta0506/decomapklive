package org.light.service;

import android.app.Service;
import android.content.Intent;
import android.graphics.PointF;
import android.graphics.RectF;
import android.graphics.SurfaceTexture;
import android.hardware.HardwareBuffer;
import android.opengl.EGL14;
import android.opengl.EGLContext;
import android.opengl.EGLDisplay;
import android.opengl.EGLSurface;
import android.opengl.GLES20;
import android.opengl.GLES30;
import android.os.Bundle;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.IBinder;
import android.os.ParcelFileDescriptor;
import android.os.Parcelable;
import android.os.Process;
import android.os.RemoteException;
import android.util.Log;
import android.view.Surface;
import com.epicgames.ue4.UE4;
import java.io.IOException;
import java.io.RandomAccessFile;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.ConcurrentHashMap;
import org.light.AIDLAudioReader;
import org.light.AIDLClipSourceFactory;
import org.light.AIDLFaceDetectCallback;
import org.light.AIDLIExternalAudioProcessor;
import org.light.AIDLVideoReader;
import org.light.AudioAsset;
import org.light.AudioFrame;
import org.light.AudioOutput;
import org.light.AudioOutputConfig;
import org.light.AudioPlaceHolder;
import org.light.CameraConfig;
import org.light.CameraController;
import org.light.ClipAsset;
import org.light.ClipInfo;
import org.light.ClipInfoArray;
import org.light.ClipPlaceHolder;
import org.light.ClipSourceFactory;
import org.light.Config;
import org.light.Controller;
import org.light.DebugUtils;
import org.light.FontAsset;
import org.light.IExternalAudioProcessor;
import org.light.ILightSDKServiceInterface;
import org.light.LUTAsset;
import org.light.LUTPlaceHolder;
import org.light.LibraryLoadUtils;
import org.light.LightAsset;
import org.light.LightEngine;
import org.light.LightSurface;
import org.light.Lock;
import org.light.MaterialConfig;
import org.light.MovieConfig;
import org.light.MovieController;
import org.light.NativeBuffer;
import org.light.PerformanceData;
import org.light.PerformanceMonitor;
import org.light.RendererConfig;
import org.light.TemplateClip;
import org.light.TemplateConfig;
import org.light.TextAsset;
import org.light.TextPlaceHolder;
import org.light.TimeLine;
import org.light.TimeRange;
import org.light.UEUtil;
import org.light.VideoOutput;
import org.light.VideoOutputConfig;
import org.light.bean.ArFrameInfo;
import org.light.bean.BodyData;
import org.light.bean.FaceData;
import org.light.bean.HandData;
import org.light.bean.LightAIDataWrapper;
import org.light.bean.LightAgentBundleInfo;
import org.light.bean.LightDelegateAgentRequest;
import org.light.bean.LightFaceData;
import org.light.bean.LightFaceFeature;
import org.light.bean.ReadSampleResult;
import org.light.bean.Texture;
import org.light.bean.WMElement;
import org.light.callback.AIDLComponentUpdateCallback;
import org.light.callback.AIDLExternalRenderCallback;
import org.light.callback.AIDLWillReadSampleCallback;
import org.light.callback.ComponentUpdateCallback;
import org.light.callback.ExternalRenderCallback;
import org.light.callback.WillReadSampleCallback;
import org.light.gles.EglCore;
import org.light.lightAssetKit.LightAssetDataContext;
import org.light.lightAssetKit.LightAssetDataMergeType;
import org.light.lightAssetKit.LightAssetDataType;
import org.light.listener.AIDLFilaPositionCallback;
import org.light.listener.AIDLHitTestFilaCallback;
import org.light.listener.AIDLILightLogger;
import org.light.listener.AIDLOnAIDataListener;
import org.light.listener.AIDLOnBindServiceListener;
import org.light.listener.AIDLOnClickWatermarkListener;
import org.light.listener.AIDLOnDelegateAgentRequestListener;
import org.light.listener.AIDLOnLoadAssetListener;
import org.light.listener.AIDLOnTipsStatusListener;
import org.light.listener.AIDLOnUE4EngineInitFInishListener;
import org.light.listener.AIDLOnWatermarkDataListener;
import org.light.listener.OnAIDataListener;
import org.light.listener.OnClickWatermarkListener;
import org.light.listener.OnDelegateAgentRequestListener;
import org.light.listener.OnLoadAssetListener;
import org.light.listener.OnTipsStatusListener;
import org.light.listener.OnWatermarkDataListener;
import org.light.report.LightReportManager;
import org.light.utils.ILightLogger;
import org.light.utils.LightDataUtils;
import org.light.utils.LightGLUtils;
import org.light.utils.LightLogUtil;
import org.light.utils.OESTextureConverter;
import org.light.utils.SimpleRenderer;
/* loaded from: classes7.dex */
public class LightSDKService extends Service {
    public static final String DATA_KEY_NATIVE_SO_PATHS = "DATA_KEY_NATIVE_SO_PATHS";
    public static final String DATA_KEY_SO_PATHS = "DATA_KEY_SO_PATHS";
    private static final String TAG = "LightSDKService";
    private final ConcurrentHashMap<Integer, Object> instanceMap = new ConcurrentHashMap<>();
    private final ConcurrentHashMap<Integer, EGLSurface> renderEglSurfaceMap = new ConcurrentHashMap<>();
    private final ConcurrentHashMap<Integer, NativeBuffer> cameraInputBuffer = new ConcurrentHashMap<>();
    private final ConcurrentHashMap<Integer, NativeBuffer> surfaceOutBuffer = new ConcurrentHashMap<>();
    private final ConcurrentHashMap<Integer, Integer> originTextureMap = new ConcurrentHashMap<>();
    private Handler taskHandler = null;
    private EglCore taskEglCore = null;

    /* loaded from: classes7.dex */
    class LightSDKServiceBinder extends ILightSDKServiceInterface.Stub {
        LightSDKServiceBinder() {
            LightLogUtil.i(LightSDKService.TAG, "LightSDKServiceBinder() start");
            LightReportManager.setCrossProcessMode(true);
            HandlerThread handlerThread = new HandlerThread("SDK process render thread");
            handlerThread.start();
            LightSDKService.this.taskHandler = new Handler(handlerThread.getLooper());
            final Lock lock = new Lock(0);
            LightSDKService.this.taskHandler.post(new Runnable() { // from class: org.light.service.LightSDKService.LightSDKServiceBinder.1
                @Override // java.lang.Runnable
                public void run() {
                    EGLContext currentEglContext = UE4.getCurrentEglContext();
                    LightSDKService.this.taskEglCore = new EglCore(currentEglContext, 2);
                    lock.release();
                }
            });
            lock.acquire();
            LightSDKService.this.checkProcessPriority();
            LightLogUtil.i(LightSDKService.TAG, "LightSDKServiceBinder() end");
        }

        /* JADX INFO: Access modifiers changed from: private */
        public ClipSourceFactory.AudioReader aidlCreateAudioReader(final AIDLAudioReader aIDLAudioReader) {
            return new ClipSourceFactory.AudioReader() { // from class: org.light.service.LightSDKService.LightSDKServiceBinder.182
                @Override // org.light.ClipSourceFactory.AudioReader
                public AudioFrame copyNextFrame() {
                    final AudioFrame[] audioFrameArr = {null};
                    LightSDKService.this.runTaskSync(new Runnable() { // from class: org.light.service.LightSDKService.LightSDKServiceBinder.182.1
                        @Override // java.lang.Runnable
                        public void run() {
                            try {
                                audioFrameArr[0] = aIDLAudioReader.copyNextFrame();
                            } catch (RemoteException e10) {
                                LightLogUtil.e(LightSDKService.TAG, "RemoteException:\n" + e10);
                            }
                        }
                    });
                    return audioFrameArr[0];
                }

                @Override // org.light.ClipSourceFactory.AudioReader
                public AudioFrame copyNextFrameSyncEnable(final boolean z10) {
                    final AudioFrame[] audioFrameArr = {null};
                    LightSDKService.this.runTaskSync(new Runnable() { // from class: org.light.service.LightSDKService.LightSDKServiceBinder.182.2
                        @Override // java.lang.Runnable
                        public void run() {
                            try {
                                audioFrameArr[0] = aIDLAudioReader.copyNextFrameSyncEnable(z10);
                            } catch (RemoteException e10) {
                                LightLogUtil.e(LightSDKService.TAG, "RemoteException:\n" + e10);
                            }
                        }
                    });
                    return audioFrameArr[0];
                }

                @Override // org.light.ClipSourceFactory.AudioReader
                public long duration() {
                    final long[] jArr = {0};
                    LightSDKService.this.runTaskSync(new Runnable() { // from class: org.light.service.LightSDKService.LightSDKServiceBinder.182.5
                        @Override // java.lang.Runnable
                        public void run() {
                            try {
                                jArr[0] = aIDLAudioReader.duration();
                            } catch (RemoteException e10) {
                                LightLogUtil.e(LightSDKService.TAG, "RemoteException:\n" + e10);
                            }
                        }
                    });
                    return jArr[0];
                }

                @Override // org.light.ClipSourceFactory.AudioReader
                public void release() {
                    LightSDKService.this.runTaskSync(new Runnable() { // from class: org.light.service.LightSDKService.LightSDKServiceBinder.182.6
                        @Override // java.lang.Runnable
                        public void run() {
                            try {
                                aIDLAudioReader.release();
                            } catch (RemoteException e10) {
                                LightLogUtil.e(LightSDKService.TAG, "RemoteException:\n" + e10);
                            }
                        }
                    });
                }

                @Override // org.light.ClipSourceFactory.AudioReader
                public void seek(final long j10) {
                    LightSDKService.this.runTaskSync(new Runnable() { // from class: org.light.service.LightSDKService.LightSDKServiceBinder.182.3
                        @Override // java.lang.Runnable
                        public void run() {
                            try {
                                aIDLAudioReader.seek(j10);
                            } catch (RemoteException e10) {
                                LightLogUtil.e(LightSDKService.TAG, "RemoteException:\n" + e10);
                            }
                        }
                    });
                }

                @Override // org.light.ClipSourceFactory.AudioReader
                public void setVolume(final float f10) {
                    LightSDKService.this.runTaskSync(new Runnable() { // from class: org.light.service.LightSDKService.LightSDKServiceBinder.182.4
                        @Override // java.lang.Runnable
                        public void run() {
                            try {
                                aIDLAudioReader.setVolume(f10);
                            } catch (RemoteException e10) {
                                LightLogUtil.e(LightSDKService.TAG, "RemoteException:\n" + e10);
                            }
                        }
                    });
                }
            };
        }

        /* JADX INFO: Access modifiers changed from: private */
        public ClipSourceFactory.VideoReader aidlCreateVideoReader(final AIDLVideoReader aIDLVideoReader) {
            return new ClipSourceFactory.VideoReader() { // from class: org.light.service.LightSDKService.LightSDKServiceBinder.181
                @Override // org.light.ClipSourceFactory.VideoReader
                public long duration() {
                    final long[] jArr = {0};
                    LightSDKService.this.runTaskSync(new Runnable() { // from class: org.light.service.LightSDKService.LightSDKServiceBinder.181.4
                        @Override // java.lang.Runnable
                        public void run() {
                            try {
                                jArr[0] = aIDLVideoReader.duration();
                            } catch (RemoteException e10) {
                                LightLogUtil.e(LightSDKService.TAG, "RemoteException:\n" + e10);
                            }
                        }
                    });
                    return jArr[0];
                }

                @Override // org.light.ClipSourceFactory.VideoReader
                public int height() {
                    final int[] iArr = {0};
                    LightSDKService.this.runTaskSync(new Runnable() { // from class: org.light.service.LightSDKService.LightSDKServiceBinder.181.2
                        @Override // java.lang.Runnable
                        public void run() {
                            try {
                                iArr[0] = aIDLVideoReader.height();
                            } catch (RemoteException e10) {
                                LightLogUtil.e(LightSDKService.TAG, "RemoteException:\n" + e10);
                            }
                        }
                    });
                    return iArr[0];
                }

                @Override // org.light.ClipSourceFactory.VideoReader
                public Texture readSample(final long j10) {
                    final Texture[] textureArr = {null};
                    LightSDKService.this.runTaskSync(new Runnable() { // from class: org.light.service.LightSDKService.LightSDKServiceBinder.181.3
                        @Override // java.lang.Runnable
                        public void run() {
                            try {
                                textureArr[0] = aIDLVideoReader.readSample(j10);
                            } catch (RemoteException e10) {
                                LightLogUtil.e(LightSDKService.TAG, "RemoteException:\n" + e10);
                            }
                        }
                    });
                    return textureArr[0];
                }

                @Override // org.light.ClipSourceFactory.VideoReader
                public void release() {
                    LightSDKService.this.runTaskSync(new Runnable() { // from class: org.light.service.LightSDKService.LightSDKServiceBinder.181.5
                        @Override // java.lang.Runnable
                        public void run() {
                            try {
                                aIDLVideoReader.release();
                            } catch (RemoteException e10) {
                                LightLogUtil.e(LightSDKService.TAG, "RemoteException:\n" + e10);
                            }
                        }
                    });
                }

                @Override // org.light.ClipSourceFactory.VideoReader
                public int width() {
                    final int[] iArr = {0};
                    LightSDKService.this.runTaskSync(new Runnable() { // from class: org.light.service.LightSDKService.LightSDKServiceBinder.181.1
                        @Override // java.lang.Runnable
                        public void run() {
                            try {
                                iArr[0] = aIDLVideoReader.width();
                            } catch (RemoteException e10) {
                                LightLogUtil.e(LightSDKService.TAG, "RemoteException:\n" + e10);
                            }
                        }
                    });
                    return iArr[0];
                }
            };
        }

        /* JADX INFO: Access modifiers changed from: private */
        public <T> T getInstance(int i9) {
            if (!LightSDKService.this.instanceMap.containsKey(Integer.valueOf(i9))) {
                LightLogUtil.e(LightSDKService.TAG, "getInstance() but instanceId does not exists!");
            }
            return (T) LightSDKService.this.instanceMap.get(Integer.valueOf(i9));
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void removeInstance(int i9) {
            LightSDKService.this.instanceMap.remove(Integer.valueOf(i9));
        }

        /* JADX INFO: Access modifiers changed from: private */
        public int saveInstance(Object obj) {
            int hashCode = obj.hashCode();
            LightSDKService.this.instanceMap.put(Integer.valueOf(hashCode), obj);
            return hashCode;
        }

        @Override // org.light.ILightSDKServiceInterface
        public AudioFrame audioOutputCopyNextSample(int i9) throws RemoteException {
            AudioOutput audioOutput = (AudioOutput) getInstance(i9);
            if (audioOutput != null) {
                return audioOutput.copyNextSample();
            }
            return null;
        }

        @Override // org.light.ILightSDKServiceInterface
        public AudioFrame audioOutputCopyNextSampleSyncEnable(final int i9, final boolean z10) throws RemoteException {
            final AudioFrame[] audioFrameArr = {null};
            LightSDKService.this.runTaskSync(new Runnable() { // from class: org.light.service.LightSDKService.LightSDKServiceBinder.119
                @Override // java.lang.Runnable
                public void run() {
                    AudioOutput audioOutput = (AudioOutput) LightSDKServiceBinder.this.getInstance(i9);
                    if (audioOutput != null) {
                        audioFrameArr[0] = audioOutput.copyNextSampleSyncEnable(z10);
                    }
                }
            });
            return audioFrameArr[0];
        }

        @Override // org.light.ILightSDKServiceInterface
        public void audioOutputRelease(final int i9) throws RemoteException {
            LightSDKService.this.runTaskSync(new Runnable() { // from class: org.light.service.LightSDKService.LightSDKServiceBinder.120
                @Override // java.lang.Runnable
                public void run() {
                    AudioOutput audioOutput = (AudioOutput) LightSDKServiceBinder.this.getInstance(i9);
                    if (audioOutput != null) {
                        audioOutput.release();
                        LightSDKServiceBinder.this.removeInstance(i9);
                    }
                }
            });
        }

        @Override // org.light.ILightSDKServiceInterface
        public void audioOutputSeekTo(final int i9, final long j10) throws RemoteException {
            LightSDKService.this.runTaskSync(new Runnable() { // from class: org.light.service.LightSDKService.LightSDKServiceBinder.118
                @Override // java.lang.Runnable
                public void run() {
                    AudioOutput audioOutput = (AudioOutput) LightSDKServiceBinder.this.getInstance(i9);
                    if (audioOutput != null) {
                        audioOutput.seekTo(j10);
                    }
                }
            });
        }

        @Override // org.light.ILightSDKServiceInterface
        public void cameraConfigCameraSwitched(final int i9, final int i10) throws RemoteException {
            LightSDKService.this.runTaskSync(new Runnable() { // from class: org.light.service.LightSDKService.LightSDKServiceBinder.21
                @Override // java.lang.Runnable
                public void run() {
                    ((CameraConfig) LightSDKServiceBinder.this.getInstance(i9)).cameraSwitched(i10);
                }
            });
        }

        @Override // org.light.ILightSDKServiceInterface
        public String cameraConfigGetAbnormalFrameDetectResult(final int i9) throws RemoteException {
            final String[] strArr = {null};
            LightSDKService.this.runTaskSync(new Runnable() { // from class: org.light.service.LightSDKService.LightSDKServiceBinder.24
                @Override // java.lang.Runnable
                public void run() {
                    strArr[0] = ((CameraConfig) LightSDKServiceBinder.this.getInstance(i9)).getAbnormalFrameDetectResult();
                }
            });
            return strArr[0];
        }

        @Override // org.light.ILightSDKServiceInterface
        public InstanceId cameraConfigMake() throws RemoteException {
            final CameraConfig[] cameraConfigArr = {null};
            LightSDKService.this.runTaskSync(new Runnable() { // from class: org.light.service.LightSDKService.LightSDKServiceBinder.15
                @Override // java.lang.Runnable
                public void run() {
                    cameraConfigArr[0] = CameraConfig.make();
                }
            });
            if (cameraConfigArr[0] != null) {
                return new InstanceId(saveInstance(cameraConfigArr[0]));
            }
            return null;
        }

        @Override // org.light.ILightSDKServiceInterface
        public void cameraConfigSensorOrientationChanged(final int i9, final int i10) throws RemoteException {
            LightSDKService.this.runTaskSync(new Runnable() { // from class: org.light.service.LightSDKService.LightSDKServiceBinder.20
                @Override // java.lang.Runnable
                public void run() {
                    ((CameraConfig) LightSDKServiceBinder.this.getInstance(i9)).sensorOrientationChanged(CameraConfig.DeviceCameraOrientation.values()[i10]);
                }
            });
        }

        @Override // org.light.ILightSDKServiceInterface
        public void cameraConfigSetAbnormalFrameDetectFrequency(final int i9, final int i10) throws RemoteException {
            LightSDKService.this.runTaskSync(new Runnable() { // from class: org.light.service.LightSDKService.LightSDKServiceBinder.23
                @Override // java.lang.Runnable
                public void run() {
                    ((CameraConfig) LightSDKServiceBinder.this.getInstance(i9)).setAbnormalFrameDetectFrequency(i10);
                }
            });
        }

        @Override // org.light.ILightSDKServiceInterface
        public void cameraConfigSetAutoTestMode(final int i9, final boolean z10) throws RemoteException {
            LightSDKService.this.runTaskSync(new Runnable() { // from class: org.light.service.LightSDKService.LightSDKServiceBinder.22
                @Override // java.lang.Runnable
                public void run() {
                    ((CameraConfig) LightSDKServiceBinder.this.getInstance(i9)).setAutoTestMode(z10);
                }
            });
        }

        @Override // org.light.ILightSDKServiceInterface
        public void cameraConfigSetCameraTexture(final int i9, final int i10, final int i11, final int i12, final ParcelFileDescriptor parcelFileDescriptor) throws RemoteException {
            LightSDKService.this.runTaskSyncRenderThread(i10, new Runnable() { // from class: org.light.service.LightSDKService.LightSDKServiceBinder.17
                @Override // java.lang.Runnable
                public void run() {
                    NativeBuffer nativeBuffer = (NativeBuffer) LightSDKService.this.cameraInputBuffer.get(Integer.valueOf(i10));
                    ParcelFileDescriptor parcelFileDescriptor2 = parcelFileDescriptor;
                    if (parcelFileDescriptor2 != null) {
                        if (nativeBuffer != null) {
                            nativeBuffer.waitFence(parcelFileDescriptor2);
                        }
                        try {
                            parcelFileDescriptor.close();
                        } catch (IOException e10) {
                            LightLogUtil.e(LightSDKService.TAG, "SetCameraTexture close fence FD Exception:" + e10);
                        }
                    }
                    CameraConfig cameraConfig = (CameraConfig) LightSDKServiceBinder.this.getInstance(i9);
                    if (nativeBuffer == null || cameraConfig == null) {
                        return;
                    }
                    cameraConfig.setCameraTexture(nativeBuffer.getBindTexture(), i11, i12);
                }
            });
        }

        @Override // org.light.ILightSDKServiceInterface
        public void cameraConfigSetRawInputForAR(final int i9, final byte[] bArr, final int i10, final int i11, final long j10) throws RemoteException {
            LightSDKService.this.runTaskSync(new Runnable() { // from class: org.light.service.LightSDKService.LightSDKServiceBinder.19
                @Override // java.lang.Runnable
                public void run() {
                    ((CameraConfig) LightSDKServiceBinder.this.getInstance(i9)).setRawInputForAR(bArr, i10, i11, j10);
                }
            });
        }

        @Override // org.light.ILightSDKServiceInterface
        public void cameraConfigUpdateCameraTexture(final int i9, final int i10, final HardwareBuffer hardwareBuffer, final int i11, final int i12, final int i13) throws RemoteException {
            LightSDKService.this.runTaskSyncRenderThread(i10, new Runnable() { // from class: org.light.service.LightSDKService.LightSDKServiceBinder.16
                @Override // java.lang.Runnable
                public void run() {
                    NativeBuffer nativeBuffer;
                    LightSDKService.this.originTextureMap.put(Integer.valueOf(i9), Integer.valueOf(i13));
                    NativeBuffer nativeBuffer2 = (NativeBuffer) LightSDKService.this.cameraInputBuffer.get(Integer.valueOf(i10));
                    if (nativeBuffer2 == null) {
                        nativeBuffer = new NativeBuffer(hardwareBuffer);
                        nativeBuffer.bindTexture(LightGLUtils.createTexture(3553));
                    } else {
                        int bindTexture = nativeBuffer2.getBindTexture();
                        nativeBuffer2.release();
                        nativeBuffer = new NativeBuffer(hardwareBuffer);
                        nativeBuffer.bindTexture(bindTexture);
                    }
                    LightSDKService.this.cameraInputBuffer.put(Integer.valueOf(i10), nativeBuffer);
                    ((CameraConfig) LightSDKServiceBinder.this.getInstance(i9)).setCameraTexture(nativeBuffer.getBindTexture(), i11, i12);
                }
            });
        }

        @Override // org.light.ILightSDKServiceInterface
        public void cameraControllerGetFilamentAssetPosition(final int i9, final AIDLFilaPositionCallback aIDLFilaPositionCallback) throws RemoteException {
            LightSDKService.this.runTaskSync(new Runnable() { // from class: org.light.service.LightSDKService.LightSDKServiceBinder.164
                @Override // java.lang.Runnable
                public void run() {
                    ((CameraController) LightSDKServiceBinder.this.getInstance(i9)).getFilamentAssetPosition(aIDLFilaPositionCallback == null ? null : new CameraController.FilaPositionCallback() { // from class: org.light.service.LightSDKService.LightSDKServiceBinder.164.1
                        @Override // org.light.CameraController.FilaPositionCallback
                        public void onGetResult(float[] fArr) {
                            try {
                                aIDLFilaPositionCallback.onGetResult(fArr);
                            } catch (RemoteException e10) {
                                LightLogUtil.e(LightSDKService.TAG, "RemoteException:\n" + e10);
                            }
                        }
                    });
                }
            });
        }

        @Override // org.light.ILightSDKServiceInterface
        public void cameraControllerGetHitTestFilamentAssets(final int i9, final float[] fArr, final AIDLHitTestFilaCallback aIDLHitTestFilaCallback) throws RemoteException {
            LightSDKService.this.runTaskSync(new Runnable() { // from class: org.light.service.LightSDKService.LightSDKServiceBinder.163
                @Override // java.lang.Runnable
                public void run() {
                    ((CameraController) LightSDKServiceBinder.this.getInstance(i9)).getHitTestFilamentAssets(fArr, aIDLHitTestFilaCallback == null ? null : new CameraController.HitTestFilaCallback() { // from class: org.light.service.LightSDKService.LightSDKServiceBinder.163.1
                        @Override // org.light.CameraController.HitTestFilaCallback
                        public void onGetResult(long[] jArr) {
                            try {
                                aIDLHitTestFilaCallback.onGetResult(jArr);
                            } catch (RemoteException e10) {
                                LightLogUtil.e(LightSDKService.TAG, "RemoteException:\n" + e10);
                            }
                        }
                    });
                }
            });
        }

        @Override // org.light.ILightSDKServiceInterface
        public void cameraControllerPause3DAnimation(final int i9) throws RemoteException {
            LightSDKService.this.runTaskSync(new Runnable() { // from class: org.light.service.LightSDKService.LightSDKServiceBinder.157
                @Override // java.lang.Runnable
                public void run() {
                    ((CameraController) LightSDKServiceBinder.this.getInstance(i9)).pause3DAnimation();
                }
            });
        }

        @Override // org.light.ILightSDKServiceInterface
        public void cameraControllerRegister3DAnimation(final int i9, final List<String> list) throws RemoteException {
            LightSDKService.this.runTaskSync(new Runnable() { // from class: org.light.service.LightSDKService.LightSDKServiceBinder.159
                @Override // java.lang.Runnable
                public void run() {
                    ((CameraController) LightSDKServiceBinder.this.getInstance(i9)).register3DAnimation(list);
                }
            });
        }

        @Override // org.light.ILightSDKServiceInterface
        public void cameraControllerRelease(final int i9) throws RemoteException {
            LightSDKService.this.runTaskSync(new Runnable() { // from class: org.light.service.LightSDKService.LightSDKServiceBinder.150
                @Override // java.lang.Runnable
                public void run() {
                    CameraController cameraController = (CameraController) LightSDKServiceBinder.this.getInstance(i9);
                    if (cameraController != null) {
                        cameraController.release();
                        LightSDKServiceBinder.this.removeInstance(i9);
                    }
                }
            });
        }

        @Override // org.light.ILightSDKServiceInterface
        public void cameraControllerResume3DAnimation(final int i9) throws RemoteException {
            LightSDKService.this.runTaskSync(new Runnable() { // from class: org.light.service.LightSDKService.LightSDKServiceBinder.158
                @Override // java.lang.Runnable
                public void run() {
                    ((CameraController) LightSDKServiceBinder.this.getInstance(i9)).resume3DAnimation();
                }
            });
        }

        @Override // org.light.ILightSDKServiceInterface
        public void cameraControllerRotateArModelToFront(final int i9, final int i10) throws RemoteException {
            LightSDKService.this.runTaskSync(new Runnable() { // from class: org.light.service.LightSDKService.LightSDKServiceBinder.161
                @Override // java.lang.Runnable
                public void run() {
                    ((CameraController) LightSDKServiceBinder.this.getInstance(i9)).rotateArModelToFront(i10);
                }
            });
        }

        @Override // org.light.ILightSDKServiceInterface
        public void cameraControllerSetARFrameInfo(final int i9, final ArFrameInfo arFrameInfo) throws RemoteException {
            LightSDKService.this.runTaskSync(new Runnable() { // from class: org.light.service.LightSDKService.LightSDKServiceBinder.155
                @Override // java.lang.Runnable
                public void run() {
                    ((CameraController) LightSDKServiceBinder.this.getInstance(i9)).setARFrameInfo(arFrameInfo);
                }
            });
        }

        @Override // org.light.ILightSDKServiceInterface
        public void cameraControllerSetHitTestAfterUnprojection(final int i9, final float[] fArr) throws RemoteException {
            LightSDKService.this.runTaskSync(new Runnable() { // from class: org.light.service.LightSDKService.LightSDKServiceBinder.160
                @Override // java.lang.Runnable
                public void run() {
                    ((CameraController) LightSDKServiceBinder.this.getInstance(i9)).setHitTestAfterUnprojection(fArr);
                }
            });
        }

        @Override // org.light.ILightSDKServiceInterface
        public void cameraControllerSetSegmentationFastMode(final int i9, final boolean z10) throws RemoteException {
            LightSDKService.this.runTaskSync(new Runnable() { // from class: org.light.service.LightSDKService.LightSDKServiceBinder.156
                @Override // java.lang.Runnable
                public void run() {
                    ((CameraController) LightSDKServiceBinder.this.getInstance(i9)).setSegmentationFastMode(z10);
                }
            });
        }

        @Override // org.light.ILightSDKServiceInterface
        public void cameraControllerSetUEFaceStr(final int i9, final String str) throws RemoteException {
            LightSDKService.this.runTaskSync(new Runnable() { // from class: org.light.service.LightSDKService.LightSDKServiceBinder.165
                @Override // java.lang.Runnable
                public void run() {
                    ((CameraController) LightSDKServiceBinder.this.getInstance(i9)).setUEFaceStr(str);
                }
            });
        }

        @Override // org.light.ILightSDKServiceInterface
        public void cameraControllerUpdateTouchEvent(final int i9, final int i10, final long j10, final long j11, final List<PointF> list, final int i11, final int i12) throws RemoteException {
            LightSDKService.this.runTaskSync(new Runnable() { // from class: org.light.service.LightSDKService.LightSDKServiceBinder.151
                @Override // java.lang.Runnable
                public void run() {
                    ((CameraController) LightSDKServiceBinder.this.getInstance(i9)).updateTouchEvent(i10, j10, j11, new ArrayList<>(list), i11, i12);
                }
            });
        }

        @Override // org.light.ILightSDKServiceInterface
        public void cameraControllerUpdateTouchRotate(final int i9, final float[] fArr) throws RemoteException {
            LightSDKService.this.runTaskSync(new Runnable() { // from class: org.light.service.LightSDKService.LightSDKServiceBinder.153
                @Override // java.lang.Runnable
                public void run() {
                    ((CameraController) LightSDKServiceBinder.this.getInstance(i9)).updateTouchRotate(fArr);
                }
            });
        }

        @Override // org.light.ILightSDKServiceInterface
        public void cameraControllerUpdateTouchScale(final int i9, final float f10) throws RemoteException {
            LightSDKService.this.runTaskSync(new Runnable() { // from class: org.light.service.LightSDKService.LightSDKServiceBinder.154
                @Override // java.lang.Runnable
                public void run() {
                    ((CameraController) LightSDKServiceBinder.this.getInstance(i9)).updateTouchScale(f10);
                }
            });
        }

        @Override // org.light.ILightSDKServiceInterface
        public void cameraControllerUpdateViewParams(final int i9, final float[] fArr, final float[] fArr2, final float f10) throws RemoteException {
            LightSDKService.this.runTaskSync(new Runnable() { // from class: org.light.service.LightSDKService.LightSDKServiceBinder.162
                @Override // java.lang.Runnable
                public void run() {
                    ((CameraController) LightSDKServiceBinder.this.getInstance(i9)).updateViewParams(fArr, fArr2, f10);
                }
            });
        }

        @Override // org.light.ILightSDKServiceInterface
        public void cameraControllerUpdateVoiceDecibel(final int i9, final float f10) throws RemoteException {
            LightSDKService.this.runTaskSync(new Runnable() { // from class: org.light.service.LightSDKService.LightSDKServiceBinder.152
                @Override // java.lang.Runnable
                public void run() {
                    ((CameraController) LightSDKServiceBinder.this.getInstance(i9)).updateVoiceDecibel(f10);
                }
            });
        }

        @Override // org.light.ILightSDKServiceInterface
        public void configAddExternalRenderCallback(final int i9, final String str, final AIDLExternalRenderCallback aIDLExternalRenderCallback) throws RemoteException {
            LightSDKService.this.runTaskSync(new Runnable() { // from class: org.light.service.LightSDKService.LightSDKServiceBinder.40

                /* renamed from: org.light.service.LightSDKService$LightSDKServiceBinder$40$1  reason: invalid class name */
                /* loaded from: classes7.dex */
                class AnonymousClass1 implements ExternalRenderCallback {
                    private long fence;
                    private int oesTexOutput;
                    private SurfaceTexture surfaceTextureOutput;
                    private int texOutput = -1;
                    private Surface surfaceOutput = null;
                    private EglCore inputEglCore = null;
                    private EGLSurface inputEGLSurface = EGL14.EGL_NO_SURFACE;
                    private SimpleRenderer inputRenderer = null;
                    private Handler outputGLHandler = null;
                    private EglCore outputEglCore = null;
                    private EGLSurface outputEglSurface = null;
                    private OESTextureConverter outputReader = null;
                    private final Lock outputLock = new Lock(0);

                    AnonymousClass1() {
                    }

                    /* JADX INFO: Access modifiers changed from: private */
                    public void createOutputSurface(final Texture texture) {
                        if (this.surfaceOutput == null) {
                            SurfaceTexture surfaceTexture = new SurfaceTexture(this.oesTexOutput);
                            this.surfaceTextureOutput = surfaceTexture;
                            surfaceTexture.setDefaultBufferSize(texture.width, texture.height);
                            this.surfaceTextureOutput.setOnFrameAvailableListener(new SurfaceTexture.OnFrameAvailableListener() { // from class: org.light.service.LightSDKService.LightSDKServiceBinder.40.1.2
                                @Override // android.graphics.SurfaceTexture.OnFrameAvailableListener
                                public void onFrameAvailable(final SurfaceTexture surfaceTexture2) {
                                    AnonymousClass1.this.outputGLHandler.post(new Runnable() { // from class: org.light.service.LightSDKService.LightSDKServiceBinder.40.1.2.1
                                        @Override // java.lang.Runnable
                                        public void run() {
                                            surfaceTexture2.updateTexImage();
                                            if (AnonymousClass1.this.outputReader == null) {
                                                AnonymousClass1.this.outputReader = new OESTextureConverter();
                                            }
                                            if (AnonymousClass1.this.texOutput == -1) {
                                                AnonymousClass1.this.texOutput = LightGLUtils.createTexture(3553);
                                            }
                                            OESTextureConverter oESTextureConverter = AnonymousClass1.this.outputReader;
                                            int i9 = AnonymousClass1.this.oesTexOutput;
                                            int i10 = AnonymousClass1.this.texOutput;
                                            Texture texture2 = texture;
                                            oESTextureConverter.draw(i9, i10, texture2.width, texture2.height);
                                            AnonymousClass1.this.fence = GLES30.glFenceSync(37143, 0);
                                            GLES20.glFlush();
                                            AnonymousClass1.this.outputLock.release();
                                        }
                                    });
                                }
                            });
                            this.surfaceOutput = new Surface(this.surfaceTextureOutput);
                        }
                    }

                    private void release() {
                        if (this.outputGLHandler != null) {
                            final Lock lock = new Lock(0);
                            this.outputGLHandler.post(new Runnable() { // from class: org.light.service.LightSDKService.LightSDKServiceBinder.40.1.1
                                @Override // java.lang.Runnable
                                public void run() {
                                    if (AnonymousClass1.this.outputEglCore != null) {
                                        AnonymousClass1.this.outputEglCore.makeCurrent(AnonymousClass1.this.outputEglSurface);
                                        AnonymousClass1.this.surfaceTextureOutput.release();
                                        LightGLUtils.deleteTexture(AnonymousClass1.this.oesTexOutput);
                                        LightGLUtils.deleteTexture(AnonymousClass1.this.texOutput);
                                        if (AnonymousClass1.this.outputReader != null) {
                                            AnonymousClass1.this.outputReader.release();
                                            AnonymousClass1.this.outputReader = null;
                                        }
                                        AnonymousClass1.this.outputEglCore.makeNothingCurrent();
                                        AnonymousClass1.this.outputEglCore.releaseSurface(AnonymousClass1.this.outputEglSurface);
                                        AnonymousClass1.this.outputEglCore.release();
                                        AnonymousClass1.this.outputEglCore = null;
                                    }
                                    if (AnonymousClass1.this.inputEglCore != null) {
                                        AnonymousClass1.this.inputEglCore.makeCurrent(AnonymousClass1.this.inputEGLSurface);
                                        if (AnonymousClass1.this.inputRenderer != null) {
                                            AnonymousClass1.this.inputRenderer.release();
                                            AnonymousClass1.this.inputRenderer = null;
                                        }
                                        AnonymousClass1.this.inputEglCore.makeNothingCurrent();
                                        AnonymousClass1.this.inputEglCore.releaseSurface(AnonymousClass1.this.inputEGLSurface);
                                        AnonymousClass1.this.inputEglCore.release();
                                        AnonymousClass1.this.inputEglCore = null;
                                    }
                                    lock.release();
                                }
                            });
                            lock.acquire();
                            this.outputGLHandler.getLooper().quit();
                        }
                    }

                    private void writeToInputSurface(Texture texture, Surface surface, EGLContext eGLContext) {
                        EGLDisplay eglGetCurrentDisplay = EGL14.eglGetCurrentDisplay();
                        EGLSurface eglGetCurrentSurface = EGL14.eglGetCurrentSurface(12378);
                        EGLSurface eglGetCurrentSurface2 = EGL14.eglGetCurrentSurface(12377);
                        if (this.inputEglCore == null) {
                            this.inputEglCore = new EglCore(eGLContext, 2);
                        }
                        if (this.inputEGLSurface == EGL14.EGL_NO_SURFACE) {
                            this.inputEGLSurface = this.inputEglCore.createWindowSurface(surface);
                        }
                        long glFenceSync = GLES30.glFenceSync(37143, 0);
                        GLES20.glFlush();
                        this.inputEglCore.makeCurrent(this.inputEGLSurface);
                        if (this.inputRenderer == null) {
                            this.inputRenderer = new SimpleRenderer();
                        }
                        GLES30.glWaitSync(glFenceSync, 0, -1L);
                        GLES30.glDeleteSync(glFenceSync);
                        GLES20.glClearColor(0.0f, 1.0f, 1.0f, 1.0f);
                        GLES20.glClear(16384);
                        this.inputRenderer.draw(texture.f56431id, 0, texture.width, texture.height);
                        this.inputEglCore.swapBuffers(this.inputEGLSurface);
                        EGL14.eglMakeCurrent(eglGetCurrentDisplay, eglGetCurrentSurface2, eglGetCurrentSurface, eGLContext);
                    }

                    protected void finalize() throws Throwable {
                        super.finalize();
                        release();
                    }

                    @Override // org.light.callback.ExternalRenderCallback
                    public void onRender(Texture texture, String str, String str2, final Texture texture2) {
                        Surface surface;
                        try {
                            surface = aIDLExternalRenderCallback.getInputSurface(texture.width, texture.height);
                        } catch (RemoteException e10) {
                            LightLogUtil.e(LightSDKService.TAG, "RemoteException:\n" + e10);
                            surface = null;
                        }
                        if (surface == null) {
                            LightLogUtil.e(LightSDKService.TAG, "aidlExternalRenderCallback.getInputSurface null");
                            return;
                        }
                        final EGLContext eglGetCurrentContext = EGL14.eglGetCurrentContext();
                        writeToInputSurface(texture, surface, eglGetCurrentContext);
                        try {
                            Texture onRender = aIDLExternalRenderCallback.onRender(texture, str, str2, texture2);
                            texture2.f56431id = onRender.f56431id;
                            texture2.width = onRender.width;
                            texture2.height = onRender.height;
                            if (this.outputGLHandler == null) {
                                HandlerThread handlerThread = new HandlerThread("ExternalRenderOutputGLThread");
                                handlerThread.start();
                                this.outputGLHandler = new Handler(handlerThread.getLooper());
                                final Lock lock = new Lock(0);
                                this.outputGLHandler.post(new Runnable() { // from class: org.light.service.LightSDKService.LightSDKServiceBinder.40.1.3
                                    @Override // java.lang.Runnable
                                    public void run() {
                                        AnonymousClass1.this.outputEglCore = new EglCore(eglGetCurrentContext, 2);
                                        AnonymousClass1 anonymousClass1 = AnonymousClass1.this;
                                        EglCore eglCore = anonymousClass1.outputEglCore;
                                        Texture texture3 = texture2;
                                        anonymousClass1.outputEglSurface = eglCore.createOffscreenSurface(texture3.width, texture3.height);
                                        AnonymousClass1.this.outputEglCore.makeCurrent(AnonymousClass1.this.outputEglSurface);
                                        AnonymousClass1.this.oesTexOutput = LightGLUtils.createTexture(36197);
                                        AnonymousClass1.this.createOutputSurface(texture2);
                                        lock.release();
                                    }
                                });
                                lock.acquire();
                            }
                            try {
                                aIDLExternalRenderCallback.afterRender(texture2, this.surfaceOutput);
                            } catch (RemoteException e11) {
                                LightLogUtil.e(LightSDKService.TAG, "RemoteException:\n" + e11);
                            }
                            this.outputLock.acquire();
                            GLES30.glWaitSync(this.fence, 0, -1L);
                            GLES30.glDeleteSync(this.fence);
                            texture2.f56431id = this.texOutput;
                        } catch (RemoteException e12) {
                            LightLogUtil.e(LightSDKService.TAG, "RemoteException:\n" + e12);
                        }
                    }
                }

                @Override // java.lang.Runnable
                public void run() {
                    ((Config) LightSDKServiceBinder.this.getInstance(i9)).addExternalRenderCallback(str, aIDLExternalRenderCallback == null ? null : new AnonymousClass1());
                }
            });
        }

        @Override // org.light.ILightSDKServiceInterface
        public void configCleanFileCacheForKey(final int i9, final String str) throws RemoteException {
            LightSDKService.this.runTaskSync(new Runnable() { // from class: org.light.service.LightSDKService.LightSDKServiceBinder.70
                @Override // java.lang.Runnable
                public void run() {
                    ((Config) LightSDKServiceBinder.this.getInstance(i9)).CleanFileCacheForKey(str);
                }
            });
        }

        @Override // org.light.ILightSDKServiceInterface
        public void configClearAICachedData(final int i9) throws RemoteException {
            LightSDKService.this.runTaskSync(new Runnable() { // from class: org.light.service.LightSDKService.LightSDKServiceBinder.35
                @Override // java.lang.Runnable
                public void run() {
                    ((Config) LightSDKServiceBinder.this.getInstance(i9)).clearAICachedData();
                }
            });
        }

        @Override // org.light.ILightSDKServiceInterface
        public void configFreeCache(final int i9) throws RemoteException {
            LightSDKService.this.runTaskSync(new Runnable() { // from class: org.light.service.LightSDKService.LightSDKServiceBinder.69
                @Override // java.lang.Runnable
                public void run() {
                    ((Config) LightSDKServiceBinder.this.getInstance(i9)).freeCache();
                }
            });
        }

        @Override // org.light.ILightSDKServiceInterface
        public LightAIDataWrapper configGetAIData(final int i9, final String[] strArr, final int i10) throws RemoteException {
            final LightAIDataWrapper[] lightAIDataWrapperArr = {null};
            LightSDKService.this.runTaskSync(new Runnable() { // from class: org.light.service.LightSDKService.LightSDKServiceBinder.47
                @Override // java.lang.Runnable
                public void run() {
                    lightAIDataWrapperArr[0] = ((Config) LightSDKServiceBinder.this.getInstance(i9)).getAIData(strArr, i10);
                }
            });
            return lightAIDataWrapperArr[0];
        }

        @Override // org.light.ILightSDKServiceInterface
        public boolean configGetAssetDegradeFlag() throws RemoteException {
            final boolean[] zArr = {false};
            LightSDKService.this.runTaskSync(new Runnable() { // from class: org.light.service.LightSDKService.LightSDKServiceBinder.73
                @Override // java.lang.Runnable
                public void run() {
                    zArr[0] = Config.getAssetDegradeFlag();
                }
            });
            return zArr[0];
        }

        @Override // org.light.ILightSDKServiceInterface
        public Bundle configGetConfigData(final int i9) throws RemoteException {
            final Bundle[] bundleArr = {null};
            LightSDKService.this.runTaskSync(new Runnable() { // from class: org.light.service.LightSDKService.LightSDKServiceBinder.44
                @Override // java.lang.Runnable
                public void run() {
                    bundleArr[0] = LightDataUtils.map2Bundle(((Config) LightSDKServiceBinder.this.getInstance(i9)).getConfigData());
                }
            });
            return bundleArr[0];
        }

        @Override // org.light.ILightSDKServiceInterface
        public boolean configGetDisableRendererFlag(final int i9) throws RemoteException {
            final boolean[] zArr = {false};
            LightSDKService.this.runTaskSync(new Runnable() { // from class: org.light.service.LightSDKService.LightSDKServiceBinder.68
                @Override // java.lang.Runnable
                public void run() {
                    zArr[0] = ((Config) LightSDKServiceBinder.this.getInstance(i9)).getDisableRendererFlag();
                }
            });
            return zArr[0];
        }

        @Override // org.light.ILightSDKServiceInterface
        public LightFaceData configGetFaceData(final int i9) throws RemoteException {
            final LightFaceData[] lightFaceDataArr = {null};
            LightSDKService.this.runTaskSync(new Runnable() { // from class: org.light.service.LightSDKService.LightSDKServiceBinder.46
                @Override // java.lang.Runnable
                public void run() {
                    lightFaceDataArr[0] = ((Config) LightSDKServiceBinder.this.getInstance(i9)).getFaceData();
                }
            });
            return lightFaceDataArr[0];
        }

        @Override // org.light.ILightSDKServiceInterface
        public List<LightFaceFeature> configGetFaceFeature(final int i9) throws RemoteException {
            final List<LightFaceFeature>[] listArr = {null};
            LightSDKService.this.runTaskSync(new Runnable() { // from class: org.light.service.LightSDKService.LightSDKServiceBinder.42
                @Override // java.lang.Runnable
                public void run() {
                    listArr[0] = ((Config) LightSDKServiceBinder.this.getInstance(i9)).getFaceFeature();
                }
            });
            return listArr[0];
        }

        @Override // org.light.ILightSDKServiceInterface
        public PerformanceData configGetPerformanceData(final int i9) throws RemoteException {
            final PerformanceData[] performanceDataArr = {null};
            LightSDKService.this.runTaskSync(new Runnable() { // from class: org.light.service.LightSDKService.LightSDKServiceBinder.66
                @Override // java.lang.Runnable
                public void run() {
                    performanceDataArr[0] = ((Config) LightSDKServiceBinder.this.getInstance(i9)).getPerformanceData();
                }
            });
            return performanceDataArr[0];
        }

        @Override // org.light.ILightSDKServiceInterface
        public int configGetPhonePrefLevel() throws RemoteException {
            final int[] iArr = {0};
            LightSDKService.this.runTaskSync(new Runnable() { // from class: org.light.service.LightSDKService.LightSDKServiceBinder.72
                @Override // java.lang.Runnable
                public void run() {
                    iArr[0] = Config.getPhonePrefLevel();
                }
            });
            return iArr[0];
        }

        @Override // org.light.ILightSDKServiceInterface
        public void configOnPause(final int i9) throws RemoteException {
            LightSDKService.this.runTaskSync(new Runnable() { // from class: org.light.service.LightSDKService.LightSDKServiceBinder.57
                @Override // java.lang.Runnable
                public void run() {
                    ((Config) LightSDKServiceBinder.this.getInstance(i9)).onPause();
                }
            });
        }

        @Override // org.light.ILightSDKServiceInterface
        public void configOnResume(final int i9) throws RemoteException {
            LightSDKService.this.runTaskSync(new Runnable() { // from class: org.light.service.LightSDKService.LightSDKServiceBinder.58
                @Override // java.lang.Runnable
                public void run() {
                    ((Config) LightSDKServiceBinder.this.getInstance(i9)).onResume();
                }
            });
        }

        @Override // org.light.ILightSDKServiceInterface
        public void configPerformFinalize(final int i9) throws RemoteException {
            LightSDKService.this.runTaskSync(new Runnable() { // from class: org.light.service.LightSDKService.LightSDKServiceBinder.75
                @Override // java.lang.Runnable
                public void run() {
                    ((Config) LightSDKServiceBinder.this.getInstance(i9)).performFinalize();
                    LightSDKServiceBinder.this.removeInstance(i9);
                }
            });
        }

        @Override // org.light.ILightSDKServiceInterface
        public void configRegisterFont(final FontAsset fontAsset, final String str) throws RemoteException {
            LightSDKService.this.runTaskSync(new Runnable() { // from class: org.light.service.LightSDKService.LightSDKServiceBinder.54
                @Override // java.lang.Runnable
                public void run() {
                    Config.registerFont(fontAsset, str);
                }
            });
        }

        @Override // org.light.ILightSDKServiceInterface
        public void configRemoveExternalRenderCallback(final int i9, final String str) throws RemoteException {
            LightSDKService.this.runTaskSync(new Runnable() { // from class: org.light.service.LightSDKService.LightSDKServiceBinder.41
                @Override // java.lang.Runnable
                public void run() {
                    ((Config) LightSDKServiceBinder.this.getInstance(i9)).removeExternalRenderCallback(str);
                }
            });
        }

        @Override // org.light.ILightSDKServiceInterface
        public void configReplaceAIData(final int i9, final LightAIDataWrapper lightAIDataWrapper) throws RemoteException {
            LightSDKService.this.runTaskSync(new Runnable() { // from class: org.light.service.LightSDKService.LightSDKServiceBinder.48
                @Override // java.lang.Runnable
                public void run() {
                    ((Config) LightSDKServiceBinder.this.getInstance(i9)).replaceAIData(lightAIDataWrapper);
                }
            });
        }

        @Override // org.light.ILightSDKServiceInterface
        public void configSetAIDataListener(final int i9, final AIDLOnAIDataListener aIDLOnAIDataListener) throws RemoteException {
            LightSDKService.this.runTaskSync(new Runnable() { // from class: org.light.service.LightSDKService.LightSDKServiceBinder.53
                @Override // java.lang.Runnable
                public void run() {
                    ((Config) LightSDKServiceBinder.this.getInstance(i9)).setAIDataListener(aIDLOnAIDataListener == null ? null : new OnAIDataListener() { // from class: org.light.service.LightSDKService.LightSDKServiceBinder.53.1
                        @Override // org.light.listener.OnAIDataListener
                        public void onBodyDataUpdated(List<BodyData> list) {
                            try {
                                aIDLOnAIDataListener.onBodyDataUpdated(list);
                            } catch (RemoteException e10) {
                                LightLogUtil.e(LightSDKService.TAG, "RemoteException:\n" + e10);
                            }
                        }

                        @Override // org.light.listener.OnAIDataListener
                        public void onFaceDataUpdated(List<FaceData> list) {
                            try {
                                aIDLOnAIDataListener.onFaceDataUpdated(list);
                            } catch (RemoteException e10) {
                                LightLogUtil.e(LightSDKService.TAG, "RemoteException:\n" + e10);
                            }
                        }

                        @Override // org.light.listener.OnAIDataListener
                        public void onHandDataUpdated(List<HandData> list) {
                            try {
                                aIDLOnAIDataListener.onHandDataUpdated(list);
                            } catch (RemoteException e10) {
                                LightLogUtil.e(LightSDKService.TAG, "RemoteException:\n" + e10);
                            }
                        }
                    });
                }
            });
        }

        @Override // org.light.ILightSDKServiceInterface
        public void configSetAssetDowngradeFlag(final boolean z10) throws RemoteException {
            LightSDKService.this.runTaskSync(new Runnable() { // from class: org.light.service.LightSDKService.LightSDKServiceBinder.74
                @Override // java.lang.Runnable
                public void run() {
                    Config.setAssetDowngradeFlag(z10);
                }
            });
        }

        @Override // org.light.ILightSDKServiceInterface
        public void configSetBGMusicHidden(final int i9, final boolean z10) throws RemoteException {
            LightSDKService.this.runTaskSync(new Runnable() { // from class: org.light.service.LightSDKService.LightSDKServiceBinder.65
                @Override // java.lang.Runnable
                public void run() {
                    ((Config) LightSDKServiceBinder.this.getInstance(i9)).setBGMusicHidden(z10);
                }
            });
        }

        @Override // org.light.ILightSDKServiceInterface
        public void configSetConfigData(final int i9, final Bundle bundle) throws RemoteException {
            LightSDKService.this.runTaskSync(new Runnable() { // from class: org.light.service.LightSDKService.LightSDKServiceBinder.33
                @Override // java.lang.Runnable
                public void run() {
                    ((Config) LightSDKServiceBinder.this.getInstance(i9)).setConfigData(LightDataUtils.bundle2HashMap(bundle));
                }
            });
        }

        @Override // org.light.ILightSDKServiceInterface
        public void configSetDefaultBeautyVersion(final int i9, final String str) throws RemoteException {
            LightSDKService.this.runTaskSync(new Runnable() { // from class: org.light.service.LightSDKService.LightSDKServiceBinder.18
                @Override // java.lang.Runnable
                public void run() {
                    ((Config) LightSDKServiceBinder.this.getInstance(i9)).setDefaultBeautyVersion(str);
                }
            });
        }

        @Override // org.light.ILightSDKServiceInterface
        public void configSetDelegateAgentRequestListener(final int i9, final AIDLOnDelegateAgentRequestListener aIDLOnDelegateAgentRequestListener) throws RemoteException {
            LightSDKService.this.runTaskSync(new Runnable() { // from class: org.light.service.LightSDKService.LightSDKServiceBinder.55
                @Override // java.lang.Runnable
                public void run() {
                    ((Config) LightSDKServiceBinder.this.getInstance(i9)).setDelegateAgentRequestListener(aIDLOnDelegateAgentRequestListener == null ? null : new OnDelegateAgentRequestListener() { // from class: org.light.service.LightSDKService.LightSDKServiceBinder.55.1
                        @Override // org.light.listener.OnDelegateAgentRequestListener
                        public void OnDelegateAgentRequest(LightDelegateAgentRequest lightDelegateAgentRequest) {
                            try {
                                lightDelegateAgentRequest.putDataToSharedMemory();
                                lightDelegateAgentRequest.camera_frame_data_ = null;
                                aIDLOnDelegateAgentRequestListener.OnDelegateAgentRequest(lightDelegateAgentRequest);
                            } catch (RemoteException e10) {
                                LightLogUtil.e(LightSDKService.TAG, "OnDelegateAgentRequest:\n" + e10);
                            }
                        }
                    });
                }
            });
        }

        @Override // org.light.ILightSDKServiceInterface
        public void configSetDelegateAgentResult(final int i9, final LightDelegateAgentRequest lightDelegateAgentRequest, final boolean z10, final String str) throws RemoteException {
            LightSDKService.this.runTaskSync(new Runnable() { // from class: org.light.service.LightSDKService.LightSDKServiceBinder.56
                @Override // java.lang.Runnable
                public void run() {
                    lightDelegateAgentRequest.getDataFromSharedMemory();
                    ((Config) LightSDKServiceBinder.this.getInstance(i9)).setDelegateAgentResult(lightDelegateAgentRequest, z10, str);
                }
            });
        }

        @Override // org.light.ILightSDKServiceInterface
        public void configSetDetectShorterEdgeLength(final int i9, final int i10, final String str) throws RemoteException {
            LightSDKService.this.runTaskSync(new Runnable() { // from class: org.light.service.LightSDKService.LightSDKServiceBinder.63
                @Override // java.lang.Runnable
                public void run() {
                    ((Config) LightSDKServiceBinder.this.getInstance(i9)).setDetectShorterEdgeLength(i10, str);
                }
            });
        }

        @Override // org.light.ILightSDKServiceInterface
        public void configSetDisableRendererFlag(final int i9, final boolean z10) throws RemoteException {
            LightSDKService.this.runTaskSync(new Runnable() { // from class: org.light.service.LightSDKService.LightSDKServiceBinder.67
                @Override // java.lang.Runnable
                public void run() {
                    ((Config) LightSDKServiceBinder.this.getInstance(i9)).setDisableRendererFlag(z10);
                }
            });
        }

        @Override // org.light.ILightSDKServiceInterface
        public void configSetDowngradeStrategy(final int i9, final String str, final int i10) throws RemoteException {
            LightSDKService.this.runTaskSync(new Runnable() { // from class: org.light.service.LightSDKService.LightSDKServiceBinder.64
                @Override // java.lang.Runnable
                public void run() {
                    ((Config) LightSDKServiceBinder.this.getInstance(i9)).setDowngradeStrategy(str, i10);
                }
            });
        }

        @Override // org.light.ILightSDKServiceInterface
        public void configSetExternalFaceData(final int i9, final LightFaceData lightFaceData) throws RemoteException {
            LightSDKService.this.runTaskSync(new Runnable() { // from class: org.light.service.LightSDKService.LightSDKServiceBinder.43
                @Override // java.lang.Runnable
                public void run() {
                    ((Config) LightSDKServiceBinder.this.getInstance(i9)).setExternalFaceData(lightFaceData);
                }
            });
        }

        @Override // org.light.ILightSDKServiceInterface
        public void configSetExternalRenderCallback(final int i9, final AIDLExternalRenderCallback aIDLExternalRenderCallback) throws RemoteException {
            LightSDKService.this.runTaskSync(new Runnable() { // from class: org.light.service.LightSDKService.LightSDKServiceBinder.39

                /* renamed from: org.light.service.LightSDKService$LightSDKServiceBinder$39$1  reason: invalid class name */
                /* loaded from: classes7.dex */
                class AnonymousClass1 implements ExternalRenderCallback {
                    private long fence;
                    private int oesTexOutput;
                    private SurfaceTexture surfaceTextureOutput;
                    private int texOutput = -1;
                    private Surface surfaceOutput = null;
                    private EglCore inputEglCore = null;
                    private EGLSurface inputEGLSurface = EGL14.EGL_NO_SURFACE;
                    private SimpleRenderer inputRenderer = null;
                    private Handler outputGLHandler = null;
                    private EglCore outputEglCore = null;
                    private EGLSurface outputEglSurface = null;
                    private OESTextureConverter outputReader = null;
                    private final Lock outputLock = new Lock(0);

                    AnonymousClass1() {
                    }

                    /* JADX INFO: Access modifiers changed from: private */
                    public void createOutputSurface(final Texture texture) {
                        if (this.surfaceOutput == null) {
                            SurfaceTexture surfaceTexture = new SurfaceTexture(this.oesTexOutput);
                            this.surfaceTextureOutput = surfaceTexture;
                            surfaceTexture.setDefaultBufferSize(texture.width, texture.height);
                            this.surfaceTextureOutput.setOnFrameAvailableListener(new SurfaceTexture.OnFrameAvailableListener() { // from class: org.light.service.LightSDKService.LightSDKServiceBinder.39.1.2
                                @Override // android.graphics.SurfaceTexture.OnFrameAvailableListener
                                public void onFrameAvailable(final SurfaceTexture surfaceTexture2) {
                                    AnonymousClass1.this.outputGLHandler.post(new Runnable() { // from class: org.light.service.LightSDKService.LightSDKServiceBinder.39.1.2.1
                                        @Override // java.lang.Runnable
                                        public void run() {
                                            surfaceTexture2.updateTexImage();
                                            if (AnonymousClass1.this.outputReader == null) {
                                                AnonymousClass1.this.outputReader = new OESTextureConverter();
                                            }
                                            if (AnonymousClass1.this.texOutput == -1) {
                                                AnonymousClass1.this.texOutput = LightGLUtils.createTexture(3553);
                                            }
                                            OESTextureConverter oESTextureConverter = AnonymousClass1.this.outputReader;
                                            int i9 = AnonymousClass1.this.oesTexOutput;
                                            int i10 = AnonymousClass1.this.texOutput;
                                            Texture texture2 = texture;
                                            oESTextureConverter.draw(i9, i10, texture2.width, texture2.height);
                                            AnonymousClass1.this.fence = GLES30.glFenceSync(37143, 0);
                                            GLES20.glFlush();
                                            AnonymousClass1.this.outputLock.release();
                                        }
                                    });
                                }
                            });
                            this.surfaceOutput = new Surface(this.surfaceTextureOutput);
                        }
                    }

                    private void release() {
                        if (this.outputGLHandler != null) {
                            final Lock lock = new Lock(0);
                            this.outputGLHandler.post(new Runnable() { // from class: org.light.service.LightSDKService.LightSDKServiceBinder.39.1.1
                                @Override // java.lang.Runnable
                                public void run() {
                                    if (AnonymousClass1.this.outputEglCore != null) {
                                        AnonymousClass1.this.outputEglCore.makeCurrent(AnonymousClass1.this.outputEglSurface);
                                        AnonymousClass1.this.surfaceTextureOutput.release();
                                        LightGLUtils.deleteTexture(AnonymousClass1.this.oesTexOutput);
                                        LightGLUtils.deleteTexture(AnonymousClass1.this.texOutput);
                                        if (AnonymousClass1.this.outputReader != null) {
                                            AnonymousClass1.this.outputReader.release();
                                            AnonymousClass1.this.outputReader = null;
                                        }
                                        AnonymousClass1.this.outputEglCore.makeNothingCurrent();
                                        AnonymousClass1.this.outputEglCore.releaseSurface(AnonymousClass1.this.outputEglSurface);
                                        AnonymousClass1.this.outputEglCore.release();
                                        AnonymousClass1.this.outputEglCore = null;
                                    }
                                    if (AnonymousClass1.this.inputEglCore != null) {
                                        AnonymousClass1.this.inputEglCore.makeCurrent(AnonymousClass1.this.inputEGLSurface);
                                        if (AnonymousClass1.this.inputRenderer != null) {
                                            AnonymousClass1.this.inputRenderer.release();
                                            AnonymousClass1.this.inputRenderer = null;
                                        }
                                        AnonymousClass1.this.inputEglCore.makeNothingCurrent();
                                        AnonymousClass1.this.inputEglCore.releaseSurface(AnonymousClass1.this.inputEGLSurface);
                                        AnonymousClass1.this.inputEglCore.release();
                                        AnonymousClass1.this.inputEglCore = null;
                                    }
                                    lock.release();
                                }
                            });
                            lock.acquire();
                            this.outputGLHandler.getLooper().quit();
                        }
                    }

                    private void writeToInputSurface(Texture texture, Surface surface, EGLContext eGLContext) {
                        EGLDisplay eglGetCurrentDisplay = EGL14.eglGetCurrentDisplay();
                        EGLSurface eglGetCurrentSurface = EGL14.eglGetCurrentSurface(12378);
                        EGLSurface eglGetCurrentSurface2 = EGL14.eglGetCurrentSurface(12377);
                        if (this.inputEglCore == null) {
                            this.inputEglCore = new EglCore(eGLContext, 2);
                        }
                        if (this.inputEGLSurface == EGL14.EGL_NO_SURFACE) {
                            this.inputEGLSurface = this.inputEglCore.createWindowSurface(surface);
                        }
                        long glFenceSync = GLES30.glFenceSync(37143, 0);
                        GLES20.glFlush();
                        this.inputEglCore.makeCurrent(this.inputEGLSurface);
                        if (this.inputRenderer == null) {
                            this.inputRenderer = new SimpleRenderer();
                        }
                        GLES30.glWaitSync(glFenceSync, 0, -1L);
                        GLES30.glDeleteSync(glFenceSync);
                        GLES20.glClearColor(0.0f, 1.0f, 1.0f, 1.0f);
                        GLES20.glClear(16384);
                        this.inputRenderer.draw(texture.f56431id, 0, texture.width, texture.height);
                        this.inputEglCore.swapBuffers(this.inputEGLSurface);
                        EGL14.eglMakeCurrent(eglGetCurrentDisplay, eglGetCurrentSurface2, eglGetCurrentSurface, eGLContext);
                    }

                    protected void finalize() throws Throwable {
                        super.finalize();
                        release();
                    }

                    @Override // org.light.callback.ExternalRenderCallback
                    public void onRender(Texture texture, String str, String str2, final Texture texture2) {
                        Surface surface;
                        try {
                            surface = aIDLExternalRenderCallback.getInputSurface(texture.width, texture.height);
                        } catch (RemoteException e10) {
                            LightLogUtil.e(LightSDKService.TAG, "RemoteException:\n" + e10);
                            surface = null;
                        }
                        if (surface == null) {
                            LightLogUtil.e(LightSDKService.TAG, "aidlExternalRenderCallback.getInputSurface null");
                            return;
                        }
                        final EGLContext eglGetCurrentContext = EGL14.eglGetCurrentContext();
                        writeToInputSurface(texture, surface, eglGetCurrentContext);
                        try {
                            Texture onRender = aIDLExternalRenderCallback.onRender(texture, str, str2, texture2);
                            texture2.f56431id = onRender.f56431id;
                            texture2.width = onRender.width;
                            texture2.height = onRender.height;
                            if (this.outputGLHandler == null) {
                                HandlerThread handlerThread = new HandlerThread("ExternalRenderOutputGLThread");
                                handlerThread.start();
                                this.outputGLHandler = new Handler(handlerThread.getLooper());
                                final Lock lock = new Lock(0);
                                this.outputGLHandler.post(new Runnable() { // from class: org.light.service.LightSDKService.LightSDKServiceBinder.39.1.3
                                    @Override // java.lang.Runnable
                                    public void run() {
                                        AnonymousClass1.this.outputEglCore = new EglCore(eglGetCurrentContext, 2);
                                        AnonymousClass1 anonymousClass1 = AnonymousClass1.this;
                                        EglCore eglCore = anonymousClass1.outputEglCore;
                                        Texture texture3 = texture2;
                                        anonymousClass1.outputEglSurface = eglCore.createOffscreenSurface(texture3.width, texture3.height);
                                        AnonymousClass1.this.outputEglCore.makeCurrent(AnonymousClass1.this.outputEglSurface);
                                        AnonymousClass1.this.oesTexOutput = LightGLUtils.createTexture(36197);
                                        AnonymousClass1.this.createOutputSurface(texture2);
                                        lock.release();
                                    }
                                });
                                lock.acquire();
                            }
                            try {
                                aIDLExternalRenderCallback.afterRender(texture2, this.surfaceOutput);
                            } catch (RemoteException e11) {
                                LightLogUtil.e(LightSDKService.TAG, "RemoteException:\n" + e11);
                            }
                            this.outputLock.acquire();
                            GLES30.glWaitSync(this.fence, 0, -1L);
                            GLES30.glDeleteSync(this.fence);
                            texture2.f56431id = this.texOutput;
                        } catch (RemoteException e12) {
                            LightLogUtil.e(LightSDKService.TAG, "RemoteException:\n" + e12);
                        }
                    }
                }

                @Override // java.lang.Runnable
                public void run() {
                    ((Config) LightSDKServiceBinder.this.getInstance(i9)).setExternalRenderCallback(aIDLExternalRenderCallback == null ? null : new AnonymousClass1());
                }
            });
        }

        @Override // org.light.ILightSDKServiceInterface
        public void configSetHorizontalFov(final int i9, final float f10) throws RemoteException {
            LightSDKService.this.runTaskSync(new Runnable() { // from class: org.light.service.LightSDKService.LightSDKServiceBinder.45
                @Override // java.lang.Runnable
                public void run() {
                    ((Config) LightSDKServiceBinder.this.getInstance(i9)).setHorizontalFov(f10);
                }
            });
        }

        @Override // org.light.ILightSDKServiceInterface
        public void configSetLightAIModelPath(final int i9, final String str, final String str2) throws RemoteException {
            LightSDKService.this.runTaskSync(new Runnable() { // from class: org.light.service.LightSDKService.LightSDKServiceBinder.36
                @Override // java.lang.Runnable
                public void run() {
                    ((Config) LightSDKServiceBinder.this.getInstance(i9)).setLightAIModelPath(str, Config.getResourceBundleLevelNameByAgentName(str2), str2);
                }
            });
        }

        @Override // org.light.ILightSDKServiceInterface
        public void configSetLightAIModelPathByAgentInfo(final int i9, final String str, final LightAgentBundleInfo lightAgentBundleInfo) throws RemoteException {
            LightSDKService.this.runTaskSync(new Runnable() { // from class: org.light.service.LightSDKService.LightSDKServiceBinder.37
                @Override // java.lang.Runnable
                public void run() {
                    ((Config) LightSDKServiceBinder.this.getInstance(i9)).setLightAIModelPath(str, lightAgentBundleInfo);
                }
            });
        }

        @Override // org.light.ILightSDKServiceInterface
        public void configSetLightAIModelPathWithLevel(final int i9, final String str, final String str2, final String str3) throws RemoteException {
            LightSDKService.this.runTaskSync(new Runnable() { // from class: org.light.service.LightSDKService.LightSDKServiceBinder.38
                @Override // java.lang.Runnable
                public void run() {
                    ((Config) LightSDKServiceBinder.this.getInstance(i9)).setLightAIModelPath(str, str2, str3);
                }
            });
        }

        @Override // org.light.ILightSDKServiceInterface
        public void configSetLoadAssetListener(final int i9, final AIDLOnLoadAssetListener aIDLOnLoadAssetListener) throws RemoteException {
            LightSDKService.this.runTaskSync(new Runnable() { // from class: org.light.service.LightSDKService.LightSDKServiceBinder.52
                @Override // java.lang.Runnable
                public void run() {
                    ((Config) LightSDKServiceBinder.this.getInstance(i9)).setLoadAssetListener(aIDLOnLoadAssetListener == null ? null : new OnLoadAssetListener() { // from class: org.light.service.LightSDKService.LightSDKServiceBinder.52.1
                        @Override // org.light.listener.OnLoadAssetListener
                        public void OnAssetDurationChange(long j10) {
                            try {
                                aIDLOnLoadAssetListener.OnAssetDurationChange(j10);
                            } catch (RemoteException e10) {
                                LightLogUtil.e(LightSDKService.TAG, "RemoteException:\n" + e10);
                            }
                        }

                        @Override // org.light.listener.OnLoadAssetListener
                        public void OnAssetProcessing(HashMap<String, String> hashMap) {
                            try {
                                aIDLOnLoadAssetListener.OnAssetProcessing(LightDataUtils.map2Bundle(hashMap));
                            } catch (RemoteException e10) {
                                LightLogUtil.e(LightSDKService.TAG, "RemoteException:\n" + e10);
                            }
                        }

                        @Override // org.light.listener.OnLoadAssetListener
                        public void OnLoadAssetError(int i10) {
                            try {
                                aIDLOnLoadAssetListener.OnLoadAssetError(i10);
                            } catch (RemoteException e10) {
                                LightLogUtil.e(LightSDKService.TAG, "RemoteException:\n" + e10);
                            }
                        }
                    });
                }
            });
        }

        @Override // org.light.ILightSDKServiceInterface
        public void configSetOnClickWatermarkListener(final int i9, final AIDLOnClickWatermarkListener aIDLOnClickWatermarkListener) throws RemoteException {
            LightSDKService.this.runTaskSync(new Runnable() { // from class: org.light.service.LightSDKService.LightSDKServiceBinder.49
                @Override // java.lang.Runnable
                public void run() {
                    ((Config) LightSDKServiceBinder.this.getInstance(i9)).setOnClickWatermarkListener(aIDLOnClickWatermarkListener == null ? null : new OnClickWatermarkListener() { // from class: org.light.service.LightSDKService.LightSDKServiceBinder.49.1
                        @Override // org.light.listener.OnClickWatermarkListener
                        public void onClickWatermark() {
                            try {
                                aIDLOnClickWatermarkListener.onClickWatermark();
                            } catch (RemoteException e10) {
                                LightLogUtil.e(LightSDKService.TAG, "RemoteException:\n" + e10);
                            }
                        }
                    });
                }
            });
        }

        @Override // org.light.ILightSDKServiceInterface
        public void configSetPreInitAgents(final int i9, final String[] strArr) throws RemoteException {
            LightSDKService.this.runTaskSync(new Runnable() { // from class: org.light.service.LightSDKService.LightSDKServiceBinder.71
                @Override // java.lang.Runnable
                public void run() {
                    ((Config) LightSDKServiceBinder.this.getInstance(i9)).setPreInitAgents(strArr);
                }
            });
        }

        @Override // org.light.ILightSDKServiceInterface
        public void configSetPredictNextFrame(final int i9, final boolean z10) throws RemoteException {
            LightSDKService.this.runTaskSync(new Runnable() { // from class: org.light.service.LightSDKService.LightSDKServiceBinder.61
                @Override // java.lang.Runnable
                public void run() {
                    ((Config) LightSDKServiceBinder.this.getInstance(i9)).setPredictNextFrame(z10);
                }
            });
        }

        @Override // org.light.ILightSDKServiceInterface
        public void configSetPredictNextTime(final int i9, final long j10) throws RemoteException {
            LightSDKService.this.runTaskSync(new Runnable() { // from class: org.light.service.LightSDKService.LightSDKServiceBinder.62
                @Override // java.lang.Runnable
                public void run() {
                    ((Config) LightSDKServiceBinder.this.getInstance(i9)).setPredictNextTime(j10);
                }
            });
        }

        @Override // org.light.ILightSDKServiceInterface
        public void configSetRenderSize(final int i9, final int i10, final int i11) throws RemoteException {
            LightSDKService.this.runTaskSync(new Runnable() { // from class: org.light.service.LightSDKService.LightSDKServiceBinder.34
                @Override // java.lang.Runnable
                public void run() {
                    ((Config) LightSDKServiceBinder.this.getInstance(i9)).setRenderSize(i10, i11);
                }
            });
        }

        @Override // org.light.ILightSDKServiceInterface
        public void configSetSyncInitFlag(final int i9, final boolean z10, final String str) throws RemoteException {
            LightSDKService.this.runTaskSync(new Runnable() { // from class: org.light.service.LightSDKService.LightSDKServiceBinder.60
                @Override // java.lang.Runnable
                public void run() {
                    ((Config) LightSDKServiceBinder.this.getInstance(i9)).setSyncInitFlag(z10, str);
                }
            });
        }

        @Override // org.light.ILightSDKServiceInterface
        public void configSetSyncMode(final int i9, final boolean z10) throws RemoteException {
            LightSDKService.this.runTaskSync(new Runnable() { // from class: org.light.service.LightSDKService.LightSDKServiceBinder.59
                @Override // java.lang.Runnable
                public void run() {
                    ((Config) LightSDKServiceBinder.this.getInstance(i9)).setSyncMode(z10);
                }
            });
        }

        @Override // org.light.ILightSDKServiceInterface
        public void configSetTipsStatusListener(final int i9, final AIDLOnTipsStatusListener aIDLOnTipsStatusListener) throws RemoteException {
            LightSDKService.this.runTaskSync(new Runnable() { // from class: org.light.service.LightSDKService.LightSDKServiceBinder.51
                @Override // java.lang.Runnable
                public void run() {
                    ((Config) LightSDKServiceBinder.this.getInstance(i9)).setTipsStatusListener(aIDLOnTipsStatusListener == null ? null : new OnTipsStatusListener() { // from class: org.light.service.LightSDKService.LightSDKServiceBinder.51.1
                        @Override // org.light.listener.OnTipsStatusListener
                        public void tipsNeedHide(String str, String str2, int i10) {
                            try {
                                aIDLOnTipsStatusListener.tipsNeedHide(str, str2, i10);
                            } catch (RemoteException e10) {
                                LightLogUtil.e(LightSDKService.TAG, "RemoteException:\n" + e10);
                            }
                        }

                        @Override // org.light.listener.OnTipsStatusListener
                        public void tipsNeedShow(String str, String str2, int i10, int i11) {
                            try {
                                aIDLOnTipsStatusListener.tipsNeedShow(str, str2, i10, i11);
                            } catch (RemoteException e10) {
                                LightLogUtil.e(LightSDKService.TAG, "RemoteException:\n" + e10);
                            }
                        }
                    });
                }
            });
        }

        @Override // org.light.ILightSDKServiceInterface
        public void configSetWatermarkDataListener(final int i9, final String str, final AIDLOnWatermarkDataListener aIDLOnWatermarkDataListener) throws RemoteException {
            LightSDKService.this.runTaskSync(new Runnable() { // from class: org.light.service.LightSDKService.LightSDKServiceBinder.50
                @Override // java.lang.Runnable
                public void run() {
                    ((Config) LightSDKServiceBinder.this.getInstance(i9)).setWatermarkDataListener(str, aIDLOnWatermarkDataListener == null ? null : new OnWatermarkDataListener() { // from class: org.light.service.LightSDKService.LightSDKServiceBinder.50.1
                        @Override // org.light.listener.OnWatermarkDataListener
                        public String getData(String str2) {
                            try {
                                return aIDLOnWatermarkDataListener.getData(str2);
                            } catch (RemoteException e10) {
                                LightLogUtil.e(LightSDKService.TAG, "RemoteException:\n" + e10);
                                return "";
                            }
                        }
                    });
                }
            });
        }

        @Override // org.light.ILightSDKServiceInterface
        public void controllerAddComponent(final int i9, final int i10, final String str) throws RemoteException {
            LightSDKService.this.runTaskSync(new Runnable() { // from class: org.light.service.LightSDKService.LightSDKServiceBinder.133
                @Override // java.lang.Runnable
                public void run() {
                    ((Controller) LightSDKServiceBinder.this.getInstance(i9)).addComponent(i10, str);
                }
            });
        }

        @Override // org.light.ILightSDKServiceInterface
        public void controllerAddComponentUpdateMonitor(final int i9, final int i10) throws RemoteException {
            LightSDKService.this.runTaskSync(new Runnable() { // from class: org.light.service.LightSDKService.LightSDKServiceBinder.137
                @Override // java.lang.Runnable
                public void run() {
                    ((Controller) LightSDKServiceBinder.this.getInstance(i9)).addComponentUpdateMonitor(i10);
                }
            });
        }

        @Override // org.light.ILightSDKServiceInterface
        public void controllerAddEntity(final int i9, final int i10, final int i11, final String str) throws RemoteException {
            LightSDKService.this.runTaskSync(new Runnable() { // from class: org.light.service.LightSDKService.LightSDKServiceBinder.142
                @Override // java.lang.Runnable
                public void run() {
                    ((Controller) LightSDKServiceBinder.this.getInstance(i9)).addEntity(i10, i11, str);
                }
            });
        }

        @Override // org.light.ILightSDKServiceInterface
        public String controllerFetchComponent(final int i9, final int i10) throws RemoteException {
            final String[] strArr = {null};
            LightSDKService.this.runTaskSync(new Runnable() { // from class: org.light.service.LightSDKService.LightSDKServiceBinder.135
                @Override // java.lang.Runnable
                public void run() {
                    strArr[0] = ((Controller) LightSDKServiceBinder.this.getInstance(i9)).fetchComponent(i10);
                }
            });
            return strArr[0];
        }

        @Override // org.light.ILightSDKServiceInterface
        public Bundle controllerGetAssetData(final int i9) throws RemoteException {
            final Bundle[] bundleArr = {null};
            LightSDKService.this.runTaskSync(new Runnable() { // from class: org.light.service.LightSDKService.LightSDKServiceBinder.130
                @Override // java.lang.Runnable
                public void run() {
                    bundleArr[0] = LightDataUtils.map2Bundle(((Controller) LightSDKServiceBinder.this.getInstance(i9)).getAssetData());
                }
            });
            return bundleArr[0];
        }

        @Override // org.light.ILightSDKServiceInterface
        public AudioPlaceHolder[] controllerGetAudioPlaceHolders(final int i9) throws RemoteException {
            final AudioPlaceHolder[][] audioPlaceHolderArr = {null};
            LightSDKService.this.runTaskSync(new Runnable() { // from class: org.light.service.LightSDKService.LightSDKServiceBinder.122
                @Override // java.lang.Runnable
                public void run() {
                    audioPlaceHolderArr[0] = ((Controller) LightSDKServiceBinder.this.getInstance(i9)).getAudioPlaceHolders();
                }
            });
            return audioPlaceHolderArr[0];
        }

        @Override // org.light.ILightSDKServiceInterface
        public RectF controllerGetBoundsByKey(final int i9, final String str) throws RemoteException {
            final RectF[] rectFArr = {null};
            LightSDKService.this.runTaskSync(new Runnable() { // from class: org.light.service.LightSDKService.LightSDKServiceBinder.147
                @Override // java.lang.Runnable
                public void run() {
                    rectFArr[0] = ((Controller) LightSDKServiceBinder.this.getInstance(i9)).getBoundsByKey(str);
                }
            });
            return rectFArr[0];
        }

        @Override // org.light.ILightSDKServiceInterface
        public TextPlaceHolder controllerGetEditableTextUnderPoint(final int i9, final float f10, final float f11) throws RemoteException {
            final TextPlaceHolder[] textPlaceHolderArr = {null};
            LightSDKService.this.runTaskSync(new Runnable() { // from class: org.light.service.LightSDKService.LightSDKServiceBinder.126
                @Override // java.lang.Runnable
                public void run() {
                    textPlaceHolderArr[0] = ((Controller) LightSDKServiceBinder.this.getInstance(i9)).getEditableTextUnderPoint(f10, f11);
                }
            });
            return textPlaceHolderArr[0];
        }

        @Override // org.light.ILightSDKServiceInterface
        public WMElement[] controllerGetEditableWMItems(final int i9) throws RemoteException {
            final WMElement[][] wMElementArr = {null};
            LightSDKService.this.runTaskSync(new Runnable() { // from class: org.light.service.LightSDKService.LightSDKServiceBinder.146
                @Override // java.lang.Runnable
                public void run() {
                    WMElement[] wMElementArr2;
                    wMElementArr[0] = ((Controller) LightSDKServiceBinder.this.getInstance(i9)).getEditableWMItems();
                    WMElement[][] wMElementArr3 = wMElementArr;
                    if (wMElementArr3[0] != null) {
                        for (WMElement wMElement : wMElementArr3[0]) {
                            wMElement.setInstanceId(LightSDKServiceBinder.this.saveInstance(wMElement));
                        }
                    }
                }
            });
            return wMElementArr[0];
        }

        @Override // org.light.ILightSDKServiceInterface
        public int[] controllerGetEntitiesUnderPoint(final int i9, final float f10, final float f11) throws RemoteException {
            final int[][] iArr = {null};
            LightSDKService.this.runTaskSync(new Runnable() { // from class: org.light.service.LightSDKService.LightSDKServiceBinder.128
                @Override // java.lang.Runnable
                public void run() {
                    iArr[0] = ((Controller) LightSDKServiceBinder.this.getInstance(i9)).getEntitiesUnderPoint(f10, f11);
                }
            });
            return iArr[0];
        }

        @Override // org.light.ILightSDKServiceInterface
        public String[] controllerGetSoundEffectIDs(final int i9) throws RemoteException {
            final String[][] strArr = {null};
            LightSDKService.this.runTaskSync(new Runnable() { // from class: org.light.service.LightSDKService.LightSDKServiceBinder.121
                @Override // java.lang.Runnable
                public void run() {
                    strArr[0] = ((Controller) LightSDKServiceBinder.this.getInstance(i9)).getSoundEffectIDs();
                }
            });
            return strArr[0];
        }

        @Override // org.light.ILightSDKServiceInterface
        public TextPlaceHolder[] controllerGetTextPlaceHolderByEntityId(final int i9, final int i10) throws RemoteException {
            final TextPlaceHolder[][] textPlaceHolderArr = {null};
            LightSDKService.this.runTaskSync(new Runnable() { // from class: org.light.service.LightSDKService.LightSDKServiceBinder.127
                @Override // java.lang.Runnable
                public void run() {
                    textPlaceHolderArr[0] = ((Controller) LightSDKServiceBinder.this.getInstance(i9)).getTextPlaceHolderByEntityId(i10);
                }
            });
            return textPlaceHolderArr[0];
        }

        @Override // org.light.ILightSDKServiceInterface
        public TextPlaceHolder[] controllerGetTextPlaceHolders(final int i9) throws RemoteException {
            final TextPlaceHolder[][] textPlaceHolderArr = {null};
            LightSDKService.this.runTaskSync(new Runnable() { // from class: org.light.service.LightSDKService.LightSDKServiceBinder.123
                @Override // java.lang.Runnable
                public void run() {
                    textPlaceHolderArr[0] = ((Controller) LightSDKServiceBinder.this.getInstance(i9)).getTextPlaceHolders();
                }
            });
            return textPlaceHolderArr[0];
        }

        @Override // org.light.ILightSDKServiceInterface
        public TimeLine[] controllerGetTimeLines(final int i9) throws RemoteException {
            final TimeLine[][] timeLineArr = {null};
            LightSDKService.this.runTaskSync(new Runnable() { // from class: org.light.service.LightSDKService.LightSDKServiceBinder.140
                @Override // java.lang.Runnable
                public void run() {
                    timeLineArr[0] = ((Controller) LightSDKServiceBinder.this.getInstance(i9)).getTimeLines();
                }
            });
            return timeLineArr[0];
        }

        @Override // org.light.ILightSDKServiceInterface
        public boolean controllerHasAudio(final int i9) throws RemoteException {
            final boolean[] zArr = {false};
            LightSDKService.this.runTaskSync(new Runnable() { // from class: org.light.service.LightSDKService.LightSDKServiceBinder.144
                @Override // java.lang.Runnable
                public void run() {
                    zArr[0] = ((Controller) LightSDKServiceBinder.this.getInstance(i9)).hasAudio();
                }
            });
            return zArr[0];
        }

        @Override // org.light.ILightSDKServiceInterface
        public boolean controllerHasSpecificMakeUpType(final int i9, final int i10) throws RemoteException {
            final boolean[] zArr = {false};
            LightSDKService.this.runTaskSync(new Runnable() { // from class: org.light.service.LightSDKService.LightSDKServiceBinder.149
                @Override // java.lang.Runnable
                public void run() {
                    zArr[0] = ((Controller) LightSDKServiceBinder.this.getInstance(i9)).hasSpecificMakeUpType(i10);
                }
            });
            return zArr[0];
        }

        @Override // org.light.ILightSDKServiceInterface
        public void controllerRemoveComponent(final int i9, final int i10, final String str) throws RemoteException {
            LightSDKService.this.runTaskSync(new Runnable() { // from class: org.light.service.LightSDKService.LightSDKServiceBinder.134
                @Override // java.lang.Runnable
                public void run() {
                    ((Controller) LightSDKServiceBinder.this.getInstance(i9)).removeComponent(i10, str);
                }
            });
        }

        @Override // org.light.ILightSDKServiceInterface
        public void controllerRemoveComponentUpdateMonitor(final int i9, final int i10) throws RemoteException {
            LightSDKService.this.runTaskSync(new Runnable() { // from class: org.light.service.LightSDKService.LightSDKServiceBinder.138
                @Override // java.lang.Runnable
                public void run() {
                    ((Controller) LightSDKServiceBinder.this.getInstance(i9)).removeComponentUpdateMonitor(i10);
                }
            });
        }

        @Override // org.light.ILightSDKServiceInterface
        public void controllerRemoveEntity(final int i9, final int i10) throws RemoteException {
            LightSDKService.this.runTaskSync(new Runnable() { // from class: org.light.service.LightSDKService.LightSDKServiceBinder.143
                @Override // java.lang.Runnable
                public void run() {
                    ((Controller) LightSDKServiceBinder.this.getInstance(i9)).removeEntity(i10);
                }
            });
        }

        @Override // org.light.ILightSDKServiceInterface
        public void controllerReplaceAudioAsset(final int i9, final String str, final AudioAsset audioAsset) throws RemoteException {
            LightSDKService.this.runTaskSync(new Runnable() { // from class: org.light.service.LightSDKService.LightSDKServiceBinder.129
                @Override // java.lang.Runnable
                public void run() {
                    ((Controller) LightSDKServiceBinder.this.getInstance(i9)).replaceAudioAsset(str, audioAsset);
                }
            });
        }

        @Override // org.light.ILightSDKServiceInterface
        public void controllerResetAsset(final int i9) throws RemoteException {
            LightSDKService.this.runTaskSync(new Runnable() { // from class: org.light.service.LightSDKService.LightSDKServiceBinder.145
                @Override // java.lang.Runnable
                public void run() {
                    ((Controller) LightSDKServiceBinder.this.getInstance(i9)).resetAsset();
                }
            });
        }

        @Override // org.light.ILightSDKServiceInterface
        public void controllerSetAssetData(final int i9, final Bundle bundle) throws RemoteException {
            LightSDKService.this.runTaskSync(new Runnable() { // from class: org.light.service.LightSDKService.LightSDKServiceBinder.131
                @Override // java.lang.Runnable
                public void run() {
                    ((Controller) LightSDKServiceBinder.this.getInstance(i9)).setAssetData(LightDataUtils.bundle2HashMap(bundle));
                }
            });
        }

        @Override // org.light.ILightSDKServiceInterface
        public void controllerSetComponentUpdateCallback(final int i9, final AIDLComponentUpdateCallback aIDLComponentUpdateCallback) throws RemoteException {
            LightSDKService.this.runTaskSync(new Runnable() { // from class: org.light.service.LightSDKService.LightSDKServiceBinder.136
                @Override // java.lang.Runnable
                public void run() {
                    ((Controller) LightSDKServiceBinder.this.getInstance(i9)).setComponentUpdateCallback(aIDLComponentUpdateCallback == null ? null : new ComponentUpdateCallback() { // from class: org.light.service.LightSDKService.LightSDKServiceBinder.136.1
                        @Override // org.light.callback.ComponentUpdateCallback
                        public void onComponentUpdated(String str) {
                            try {
                                aIDLComponentUpdateCallback.onComponentUpdate(str);
                            } catch (RemoteException e10) {
                                LightLogUtil.e(LightSDKService.TAG, "RemoteException:\n" + e10);
                            }
                        }
                    });
                }
            });
        }

        @Override // org.light.ILightSDKServiceInterface
        public void controllerSetExternalAudioProcessor(final int i9, final Bundle bundle) throws RemoteException {
            LightSDKService.this.runTaskSync(new Runnable() { // from class: org.light.service.LightSDKService.LightSDKServiceBinder.148
                @Override // java.lang.Runnable
                public void run() {
                    HashMap<String, IExternalAudioProcessor> hashMap;
                    Controller controller = (Controller) LightSDKServiceBinder.this.getInstance(i9);
                    if (bundle != null) {
                        hashMap = new HashMap<>();
                        for (String str : bundle.keySet()) {
                            final AIDLIExternalAudioProcessor aIDLIExternalAudioProcessor = (AIDLIExternalAudioProcessor) bundle.getBinder(str);
                            if (aIDLIExternalAudioProcessor != null) {
                                hashMap.put(str, new IExternalAudioProcessor() { // from class: org.light.service.LightSDKService.LightSDKServiceBinder.148.1
                                    @Override // org.light.IExternalAudioProcessor
                                    public AudioFrame process(String str2, AudioFrame audioFrame) {
                                        try {
                                            return aIDLIExternalAudioProcessor.process(str2, audioFrame);
                                        } catch (RemoteException e10) {
                                            LightLogUtil.e(LightSDKService.TAG, "RemoteException:\n" + e10);
                                            return null;
                                        }
                                    }
                                });
                            }
                        }
                    } else {
                        hashMap = null;
                    }
                    controller.setExternalAudioProcessor(hashMap);
                }
            });
        }

        @Override // org.light.ILightSDKServiceInterface
        public void controllerSetMaterialClipAssets(final int i9, final String str, final Bundle bundle, final AIDLFaceDetectCallback aIDLFaceDetectCallback) throws RemoteException {
            LightSDKService.this.runTaskSync(new Runnable() { // from class: org.light.service.LightSDKService.LightSDKServiceBinder.125
                /* JADX WARN: Removed duplicated region for block: B:13:0x003b  */
                @Override // java.lang.Runnable
                /*
                    Code decompiled incorrectly, please refer to instructions dump.
                    To view partially-correct add '--show-bad-code' argument
                */
                public void run() {
                    /*
                        r7 = this;
                        org.light.service.LightSDKService$LightSDKServiceBinder r0 = org.light.service.LightSDKService.LightSDKServiceBinder.this
                        int r1 = r2
                        java.lang.Object r0 = org.light.service.LightSDKService.LightSDKServiceBinder.access$500(r0, r1)
                        org.light.Controller r0 = (org.light.Controller) r0
                        android.os.Bundle r1 = r3
                        r2 = 0
                        if (r1 == 0) goto L33
                        java.lang.Class r3 = r7.getClass()
                        java.lang.ClassLoader r3 = r3.getClassLoader()
                        r1.setClassLoader(r3)
                        android.os.Bundle r1 = r3
                        java.lang.String r3 = "ClipAsset"
                        android.os.Parcelable[] r1 = r1.getParcelableArray(r3)
                        if (r1 == 0) goto L33
                        int r3 = r1.length
                        org.light.ClipAsset[] r4 = new org.light.ClipAsset[r3]
                        r5 = 0
                    L28:
                        if (r5 >= r3) goto L34
                        r6 = r1[r5]
                        org.light.ClipAsset r6 = (org.light.ClipAsset) r6
                        r4[r5] = r6
                        int r5 = r5 + 1
                        goto L28
                    L33:
                        r4 = r2
                    L34:
                        java.lang.String r1 = r4
                        org.light.AIDLFaceDetectCallback r3 = r5
                        if (r3 != 0) goto L3b
                        goto L40
                    L3b:
                        org.light.service.LightSDKService$LightSDKServiceBinder$125$1 r2 = new org.light.service.LightSDKService$LightSDKServiceBinder$125$1
                        r2.<init>()
                    L40:
                        r0.setMaterialClipAssets(r1, r4, r2)
                        return
                    */
                    throw new UnsupportedOperationException("Method not decompiled: org.light.service.LightSDKService.LightSDKServiceBinder.AnonymousClass125.run():void");
                }
            });
        }

        @Override // org.light.ILightSDKServiceInterface
        public void controllerSetTextAsset(final int i9, final String str, final TextAsset textAsset) throws RemoteException {
            LightSDKService.this.runTaskSync(new Runnable() { // from class: org.light.service.LightSDKService.LightSDKServiceBinder.124
                @Override // java.lang.Runnable
                public void run() {
                    ((Controller) LightSDKServiceBinder.this.getInstance(i9)).setTextAsset(str, textAsset);
                }
            });
        }

        @Override // org.light.ILightSDKServiceInterface
        public void controllerSetWillReadSampleCallback(final int i9, final AIDLWillReadSampleCallback aIDLWillReadSampleCallback) throws RemoteException {
            LightSDKService.this.runTaskSync(new Runnable() { // from class: org.light.service.LightSDKService.LightSDKServiceBinder.139
                @Override // java.lang.Runnable
                public void run() {
                    ((Controller) LightSDKServiceBinder.this.getInstance(i9)).setWillReadSampleCallback(aIDLWillReadSampleCallback == null ? null : new WillReadSampleCallback() { // from class: org.light.service.LightSDKService.LightSDKServiceBinder.139.1
                        @Override // org.light.callback.WillReadSampleCallback
                        public void beforeReadSample() {
                            try {
                                aIDLWillReadSampleCallback.beforeReadSample();
                            } catch (RemoteException e10) {
                                LightLogUtil.e(LightSDKService.TAG, "RemoteException:\n" + e10);
                            }
                        }
                    });
                }
            });
        }

        @Override // org.light.ILightSDKServiceInterface
        public void controllerUpdateComponent(final int i9, final int i10, final String str) throws RemoteException {
            LightSDKService.this.runTaskSync(new Runnable() { // from class: org.light.service.LightSDKService.LightSDKServiceBinder.132
                @Override // java.lang.Runnable
                public void run() {
                    ((Controller) LightSDKServiceBinder.this.getInstance(i9)).updateComponent(i10, str);
                }
            });
        }

        @Override // org.light.ILightSDKServiceInterface
        public void controllerUpdateResource(final int i9, final String str) throws RemoteException {
            LightSDKService.this.runTaskSync(new Runnable() { // from class: org.light.service.LightSDKService.LightSDKServiceBinder.141
                @Override // java.lang.Runnable
                public void run() {
                    ((Controller) LightSDKServiceBinder.this.getInstance(i9)).updateResource(str);
                }
            });
        }

        @Override // org.light.ILightSDKServiceInterface
        public void debugUtilsSetImageDebugInfo(final boolean z10, final String str, final boolean z11, final boolean z12, final boolean z13, final boolean z14, final boolean z15) throws RemoteException {
            LightSDKService.this.runTaskSync(new Runnable() { // from class: org.light.service.LightSDKService.LightSDKServiceBinder.220
                @Override // java.lang.Runnable
                public void run() {
                    DebugUtils.setImageDebugInfo(z10, str, z11, z12, z13, z14, z15);
                }
            });
        }

        @Override // org.light.ILightSDKServiceInterface
        public boolean lightAssetDataContextAddLightAsset(final int i9, final int i10, final int i11) throws RemoteException {
            final boolean[] zArr = {false};
            LightSDKService.this.runTaskSync(new Runnable() { // from class: org.light.service.LightSDKService.LightSDKServiceBinder.108
                @Override // java.lang.Runnable
                public void run() {
                    LightAssetDataContext lightAssetDataContext = (LightAssetDataContext) LightSDKServiceBinder.this.getInstance(i9);
                    int i12 = i10;
                    zArr[0] = lightAssetDataContext.addLightAsset(i12 != 0 ? (LightAsset) LightSDKServiceBinder.this.getInstance(i12) : null, LightAssetDataMergeType.values()[i11]).booleanValue();
                }
            });
            return zArr[0];
        }

        @Override // org.light.ILightSDKServiceInterface
        public String lightAssetDataContextExportEntityTreeJsonString(final int i9) throws RemoteException {
            final String[] strArr = {null};
            LightSDKService.this.runTaskSync(new Runnable() { // from class: org.light.service.LightSDKService.LightSDKServiceBinder.111
                @Override // java.lang.Runnable
                public void run() {
                    strArr[0] = ((LightAssetDataContext) LightSDKServiceBinder.this.getInstance(i9)).exportEntityTreeJsonString();
                }
            });
            return strArr[0];
        }

        @Override // org.light.ILightSDKServiceInterface
        public String lightAssetDataContextExportInputSourcesJsonString(final int i9) throws RemoteException {
            final String[] strArr = {null};
            LightSDKService.this.runTaskSync(new Runnable() { // from class: org.light.service.LightSDKService.LightSDKServiceBinder.113
                @Override // java.lang.Runnable
                public void run() {
                    strArr[0] = ((LightAssetDataContext) LightSDKServiceBinder.this.getInstance(i9)).exportInputSourcesJsonString();
                }
            });
            return strArr[0];
        }

        @Override // org.light.ILightSDKServiceInterface
        public InstanceId lightAssetDataContextExportLightAsset(final int i9) throws RemoteException {
            final LightAsset[] lightAssetArr = {null};
            LightSDKService.this.runTaskSync(new Runnable() { // from class: org.light.service.LightSDKService.LightSDKServiceBinder.109
                @Override // java.lang.Runnable
                public void run() {
                    lightAssetArr[0] = ((LightAssetDataContext) LightSDKServiceBinder.this.getInstance(i9)).doExportLightAsset();
                }
            });
            if (lightAssetArr[0] != null) {
                return new InstanceId(saveInstance(lightAssetArr[0]));
            }
            return null;
        }

        @Override // org.light.ILightSDKServiceInterface
        public String lightAssetDataContextExportPropertiesJsonString(final int i9) throws RemoteException {
            final String[] strArr = {null};
            LightSDKService.this.runTaskSync(new Runnable() { // from class: org.light.service.LightSDKService.LightSDKServiceBinder.115
                @Override // java.lang.Runnable
                public void run() {
                    strArr[0] = ((LightAssetDataContext) LightSDKServiceBinder.this.getInstance(i9)).exportPropertiesJsonString();
                }
            });
            return strArr[0];
        }

        @Override // org.light.ILightSDKServiceInterface
        public InstanceId lightAssetDataContextMake(final int i9, final int i10) throws RemoteException {
            final LightAssetDataContext[] lightAssetDataContextArr = {null};
            LightSDKService.this.runTaskSync(new Runnable() { // from class: org.light.service.LightSDKService.LightSDKServiceBinder.107
                @Override // java.lang.Runnable
                public void run() {
                    int i11 = i9;
                    lightAssetDataContextArr[0] = LightAssetDataContext.make(i11 != 0 ? (LightAsset) LightSDKServiceBinder.this.getInstance(i11) : null, LightAssetDataType.values()[i10]);
                }
            });
            if (lightAssetDataContextArr[0] != null) {
                return new InstanceId(saveInstance(lightAssetDataContextArr[0]));
            }
            return null;
        }

        @Override // org.light.ILightSDKServiceInterface
        public void lightAssetDataContextReplaceEntityTreeJsonString(final int i9, final String str) throws RemoteException {
            LightSDKService.this.runTaskSync(new Runnable() { // from class: org.light.service.LightSDKService.LightSDKServiceBinder.110
                @Override // java.lang.Runnable
                public void run() {
                    ((LightAssetDataContext) LightSDKServiceBinder.this.getInstance(i9)).callNativeReplaceEntityTreeJsonString(str);
                }
            });
        }

        @Override // org.light.ILightSDKServiceInterface
        public void lightAssetDataContextReplaceInputSourcesJsonString(final int i9, final String str) throws RemoteException {
            LightSDKService.this.runTaskSync(new Runnable() { // from class: org.light.service.LightSDKService.LightSDKServiceBinder.112
                @Override // java.lang.Runnable
                public void run() {
                    ((LightAssetDataContext) LightSDKServiceBinder.this.getInstance(i9)).callNativeReplaceInputSourcesJsonString(str);
                }
            });
        }

        @Override // org.light.ILightSDKServiceInterface
        public void lightAssetDataContextReplacePropertiesJsonString(final int i9, final String str) throws RemoteException {
            LightSDKService.this.runTaskSync(new Runnable() { // from class: org.light.service.LightSDKService.LightSDKServiceBinder.114
                @Override // java.lang.Runnable
                public void run() {
                    ((LightAssetDataContext) LightSDKServiceBinder.this.getInstance(i9)).callNativeReplacePropertiesJsonString(str);
                }
            });
        }

        @Override // org.light.ILightSDKServiceInterface
        public boolean lightAssetForbiddenBasicMakeup(final int i9) throws RemoteException {
            final boolean[] zArr = {false};
            LightSDKService.this.runTaskSync(new Runnable() { // from class: org.light.service.LightSDKService.LightSDKServiceBinder.91
                @Override // java.lang.Runnable
                public void run() {
                    zArr[0] = ((LightAsset) LightSDKServiceBinder.this.getInstance(i9)).forbiddenBasicMakeup();
                }
            });
            return zArr[0];
        }

        @Override // org.light.ILightSDKServiceInterface
        public boolean lightAssetForbiddenBasicNonReshapeBeauty(final int i9) throws RemoteException {
            final boolean[] zArr = {false};
            LightSDKService.this.runTaskSync(new Runnable() { // from class: org.light.service.LightSDKService.LightSDKServiceBinder.92
                @Override // java.lang.Runnable
                public void run() {
                    zArr[0] = ((LightAsset) LightSDKServiceBinder.this.getInstance(i9)).forbiddenBasicNonReshapeBeauty();
                }
            });
            return zArr[0];
        }

        @Override // org.light.ILightSDKServiceInterface
        public boolean lightAssetForbiddenBasicReshape(final int i9) throws RemoteException {
            final boolean[] zArr = {false};
            LightSDKService.this.runTaskSync(new Runnable() { // from class: org.light.service.LightSDKService.LightSDKServiceBinder.93
                @Override // java.lang.Runnable
                public void run() {
                    zArr[0] = ((LightAsset) LightSDKServiceBinder.this.getInstance(i9)).forbiddenBasicReshape();
                }
            });
            return zArr[0];
        }

        @Override // org.light.ILightSDKServiceInterface
        public boolean lightAssetForbiddenBasicSmooth(final int i9) throws RemoteException {
            final boolean[] zArr = {false};
            LightSDKService.this.runTaskSync(new Runnable() { // from class: org.light.service.LightSDKService.LightSDKServiceBinder.94
                @Override // java.lang.Runnable
                public void run() {
                    zArr[0] = ((LightAsset) LightSDKServiceBinder.this.getInstance(i9)).forbiddenBasicSmooth();
                }
            });
            return zArr[0];
        }

        @Override // org.light.ILightSDKServiceInterface
        public String[] lightAssetGetBgmMusicIDs(final int i9) throws RemoteException {
            final String[][] strArr = {null};
            LightSDKService.this.runTaskSync(new Runnable() { // from class: org.light.service.LightSDKService.LightSDKServiceBinder.98
                @Override // java.lang.Runnable
                public void run() {
                    strArr[0] = ((LightAsset) LightSDKServiceBinder.this.getInstance(i9)).getBgmMusicIDs();
                }
            });
            return strArr[0];
        }

        @Override // org.light.ILightSDKServiceInterface
        public String[] lightAssetGetBoundsTrackerPlaceHolders(final int i9) throws RemoteException {
            final String[][] strArr = {null};
            LightSDKService.this.runTaskSync(new Runnable() { // from class: org.light.service.LightSDKService.LightSDKServiceBinder.100
                @Override // java.lang.Runnable
                public void run() {
                    strArr[0] = ((LightAsset) LightSDKServiceBinder.this.getInstance(i9)).getBoundsTrackerPlaceHolders();
                }
            });
            return strArr[0];
        }

        @Override // org.light.ILightSDKServiceInterface
        public int lightAssetGetDefaultCameraPosition(final int i9) throws RemoteException {
            final int[] iArr = {0};
            LightSDKService.this.runTaskSync(new Runnable() { // from class: org.light.service.LightSDKService.LightSDKServiceBinder.86
                @Override // java.lang.Runnable
                public void run() {
                    iArr[0] = ((LightAsset) LightSDKServiceBinder.this.getInstance(i9)).getDefaultCameraPosition();
                }
            });
            return iArr[0];
        }

        @Override // org.light.ILightSDKServiceInterface
        public int lightAssetGetErrorCode(final int i9) throws RemoteException {
            final int[] iArr = {0};
            LightSDKService.this.runTaskSync(new Runnable() { // from class: org.light.service.LightSDKService.LightSDKServiceBinder.103
                @Override // java.lang.Runnable
                public void run() {
                    iArr[0] = ((LightAsset) LightSDKServiceBinder.this.getInstance(i9)).getErrorCode();
                }
            });
            return iArr[0];
        }

        @Override // org.light.ILightSDKServiceInterface
        public FontAsset[] lightAssetGetFontAssets(final int i9) throws RemoteException {
            final FontAsset[][] fontAssetArr = {null};
            LightSDKService.this.runTaskSync(new Runnable() { // from class: org.light.service.LightSDKService.LightSDKServiceBinder.99
                @Override // java.lang.Runnable
                public void run() {
                    fontAssetArr[0] = ((LightAsset) LightSDKServiceBinder.this.getInstance(i9)).getFontAssets();
                }
            });
            return fontAssetArr[0];
        }

        @Override // org.light.ILightSDKServiceInterface
        public String lightAssetGetJsonString(final int i9) throws RemoteException {
            final String[] strArr = {""};
            LightSDKService.this.runTaskSync(new Runnable() { // from class: org.light.service.LightSDKService.LightSDKServiceBinder.106
                @Override // java.lang.Runnable
                public void run() {
                    strArr[0] = ((LightAsset) LightSDKServiceBinder.this.getInstance(i9)).getJsonString();
                }
            });
            return strArr[0];
        }

        @Override // org.light.ILightSDKServiceInterface
        public LUTPlaceHolder[] lightAssetGetLUTPlaceHolders(final int i9) throws RemoteException {
            final LUTPlaceHolder[][] lUTPlaceHolderArr = {null};
            LightSDKService.this.runTaskSync(new Runnable() { // from class: org.light.service.LightSDKService.LightSDKServiceBinder.83
                @Override // java.lang.Runnable
                public void run() {
                    lUTPlaceHolderArr[0] = ((LightAsset) LightSDKServiceBinder.this.getInstance(i9)).getLUTPlaceHolders();
                }
            });
            return lUTPlaceHolderArr[0];
        }

        @Override // org.light.ILightSDKServiceInterface
        public MaterialConfig[] lightAssetGetMaterialConfigs(final int i9) throws RemoteException {
            final MaterialConfig[][] materialConfigArr = {null};
            LightSDKService.this.runTaskSync(new Runnable() { // from class: org.light.service.LightSDKService.LightSDKServiceBinder.102
                @Override // java.lang.Runnable
                public void run() {
                    materialConfigArr[0] = ((LightAsset) LightSDKServiceBinder.this.getInstance(i9)).getMaterialConfigs();
                }
            });
            return materialConfigArr[0];
        }

        @Override // org.light.ILightSDKServiceInterface
        public String lightAssetGetMaterialID(final int i9) throws RemoteException {
            final String[] strArr = {""};
            LightSDKService.this.runTaskSync(new Runnable() { // from class: org.light.service.LightSDKService.LightSDKServiceBinder.82
                @Override // java.lang.Runnable
                public void run() {
                    strArr[0] = ((LightAsset) LightSDKServiceBinder.this.getInstance(i9)).getMaterialID();
                }
            });
            return strArr[0];
        }

        @Override // org.light.ILightSDKServiceInterface
        public TemplateConfig lightAssetGetMovieConfig(final int i9) throws RemoteException {
            final TemplateConfig[] templateConfigArr = {null};
            LightSDKService.this.runTaskSync(new Runnable() { // from class: org.light.service.LightSDKService.LightSDKServiceBinder.101
                @Override // java.lang.Runnable
                public void run() {
                    templateConfigArr[0] = ((LightAsset) LightSDKServiceBinder.this.getInstance(i9)).getMovieConfig();
                }
            });
            return templateConfigArr[0];
        }

        @Override // org.light.ILightSDKServiceInterface
        public LightAgentBundleInfo[] lightAssetGetRenderAgentBundleInfos(final int i9) throws RemoteException {
            final LightAgentBundleInfo[][] lightAgentBundleInfoArr = {null};
            LightSDKService.this.runTaskSync(new Runnable() { // from class: org.light.service.LightSDKService.LightSDKServiceBinder.81
                @Override // java.lang.Runnable
                public void run() {
                    lightAgentBundleInfoArr[0] = ((LightAsset) LightSDKServiceBinder.this.getInstance(i9)).getRenderAgentBundleInfos();
                }
            });
            return lightAgentBundleInfoArr[0];
        }

        @Override // org.light.ILightSDKServiceInterface
        public String[] lightAssetGetRenderAgentTypes(final int i9) throws RemoteException {
            final String[][] strArr = {null};
            LightSDKService.this.runTaskSync(new Runnable() { // from class: org.light.service.LightSDKService.LightSDKServiceBinder.80
                @Override // java.lang.Runnable
                public void run() {
                    strArr[0] = ((LightAsset) LightSDKServiceBinder.this.getInstance(i9)).getRenderAgentTypes();
                }
            });
            return strArr[0];
        }

        @Override // org.light.ILightSDKServiceInterface
        public int lightAssetGetSupportCameraPosition(final int i9) throws RemoteException {
            final int[] iArr = {0};
            LightSDKService.this.runTaskSync(new Runnable() { // from class: org.light.service.LightSDKService.LightSDKServiceBinder.87
                @Override // java.lang.Runnable
                public void run() {
                    iArr[0] = ((LightAsset) LightSDKServiceBinder.this.getInstance(i9)).getSupportCameraPosition();
                }
            });
            return iArr[0];
        }

        @Override // org.light.ILightSDKServiceInterface
        public int lightAssetGetVoiceEnvironment(final int i9) throws RemoteException {
            final int[] iArr = {0};
            LightSDKService.this.runTaskSync(new Runnable() { // from class: org.light.service.LightSDKService.LightSDKServiceBinder.85
                @Override // java.lang.Runnable
                public void run() {
                    iArr[0] = ((LightAsset) LightSDKServiceBinder.this.getInstance(i9)).getVoiceEnvironment();
                }
            });
            return iArr[0];
        }

        @Override // org.light.ILightSDKServiceInterface
        public int lightAssetGetVoiceKind(final int i9) throws RemoteException {
            final int[] iArr = {0};
            LightSDKService.this.runTaskSync(new Runnable() { // from class: org.light.service.LightSDKService.LightSDKServiceBinder.84
                @Override // java.lang.Runnable
                public void run() {
                    iArr[0] = ((LightAsset) LightSDKServiceBinder.this.getInstance(i9)).getVoiceKind();
                }
            });
            return iArr[0];
        }

        @Override // org.light.ILightSDKServiceInterface
        public boolean lightAssetHasFactorMakeup(final int i9) throws RemoteException {
            final boolean[] zArr = {false};
            LightSDKService.this.runTaskSync(new Runnable() { // from class: org.light.service.LightSDKService.LightSDKServiceBinder.95
                @Override // java.lang.Runnable
                public void run() {
                    zArr[0] = ((LightAsset) LightSDKServiceBinder.this.getInstance(i9)).hasFactorMakeup();
                }
            });
            return zArr[0];
        }

        @Override // org.light.ILightSDKServiceInterface
        public boolean lightAssetHasLut(final int i9) throws RemoteException {
            final boolean[] zArr = {false};
            LightSDKService.this.runTaskSync(new Runnable() { // from class: org.light.service.LightSDKService.LightSDKServiceBinder.77
                @Override // java.lang.Runnable
                public void run() {
                    zArr[0] = ((LightAsset) LightSDKServiceBinder.this.getInstance(i9)).hasLut();
                }
            });
            return zArr[0];
        }

        @Override // org.light.ILightSDKServiceInterface
        public boolean lightAssetHasMakeup(final int i9) throws RemoteException {
            final boolean[] zArr = {false};
            LightSDKService.this.runTaskSync(new Runnable() { // from class: org.light.service.LightSDKService.LightSDKServiceBinder.90
                @Override // java.lang.Runnable
                public void run() {
                    zArr[0] = ((LightAsset) LightSDKServiceBinder.this.getInstance(i9)).hasMakeup();
                }
            });
            return zArr[0];
        }

        @Override // org.light.ILightSDKServiceInterface
        public boolean lightAssetHasMesh(final int i9) throws RemoteException {
            final boolean[] zArr = {false};
            LightSDKService.this.runTaskSync(new Runnable() { // from class: org.light.service.LightSDKService.LightSDKServiceBinder.89
                @Override // java.lang.Runnable
                public void run() {
                    zArr[0] = ((LightAsset) LightSDKServiceBinder.this.getInstance(i9)).hasMesh();
                }
            });
            return zArr[0];
        }

        @Override // org.light.ILightSDKServiceInterface
        public int lightAssetHeight(final int i9) throws RemoteException {
            final int[] iArr = {0};
            LightSDKService.this.runTaskSync(new Runnable() { // from class: org.light.service.LightSDKService.LightSDKServiceBinder.97
                @Override // java.lang.Runnable
                public void run() {
                    iArr[0] = ((LightAsset) LightSDKServiceBinder.this.getInstance(i9)).height();
                }
            });
            return iArr[0];
        }

        @Override // org.light.ILightSDKServiceInterface
        public InstanceId lightAssetLoad(final String str, final int i9) throws RemoteException {
            final LightAsset[] lightAssetArr = {null};
            LightSDKService.this.runTaskSync(new Runnable() { // from class: org.light.service.LightSDKService.LightSDKServiceBinder.76
                @Override // java.lang.Runnable
                public void run() {
                    lightAssetArr[0] = LightAsset.Load(str, i9);
                }
            });
            if (lightAssetArr[0] != null) {
                return new InstanceId(saveInstance(lightAssetArr[0]));
            }
            return null;
        }

        @Override // org.light.ILightSDKServiceInterface
        public InstanceId lightAssetLoadFromString(final String str, final String str2, final int i9) throws RemoteException {
            final LightAsset[] lightAssetArr = {null};
            LightSDKService.this.runTaskSync(new Runnable() { // from class: org.light.service.LightSDKService.LightSDKServiceBinder.78
                @Override // java.lang.Runnable
                public void run() {
                    lightAssetArr[0] = LightAsset.LoadFromString(str, str2, i9);
                }
            });
            if (lightAssetArr[0] != null) {
                return new InstanceId(saveInstance(lightAssetArr[0]));
            }
            return null;
        }

        @Override // org.light.ILightSDKServiceInterface
        public boolean lightAssetNeedRenderAbility(final int i9, final String str) throws RemoteException {
            final boolean[] zArr = {false};
            LightSDKService.this.runTaskSync(new Runnable() { // from class: org.light.service.LightSDKService.LightSDKServiceBinder.79
                @Override // java.lang.Runnable
                public void run() {
                    zArr[0] = ((LightAsset) LightSDKServiceBinder.this.getInstance(i9)).needRenderAbility(str);
                }
            });
            return zArr[0];
        }

        @Override // org.light.ILightSDKServiceInterface
        public boolean lightAssetNeedResetAssetWhenStartRecord(final int i9) throws RemoteException {
            final boolean[] zArr = {false};
            LightSDKService.this.runTaskSync(new Runnable() { // from class: org.light.service.LightSDKService.LightSDKServiceBinder.104
                @Override // java.lang.Runnable
                public void run() {
                    zArr[0] = ((LightAsset) LightSDKServiceBinder.this.getInstance(i9)).needResetAssetWhenStartRecord();
                }
            });
            return zArr[0];
        }

        @Override // org.light.ILightSDKServiceInterface
        public boolean lightAssetNeedUE4Environment(final int i9) throws RemoteException {
            final boolean[] zArr = {false};
            LightSDKService.this.runTaskSync(new Runnable() { // from class: org.light.service.LightSDKService.LightSDKServiceBinder.88
                @Override // java.lang.Runnable
                public void run() {
                    zArr[0] = ((LightAsset) LightSDKServiceBinder.this.getInstance(i9)).needUE4Environment();
                }
            });
            return zArr[0];
        }

        @Override // org.light.ILightSDKServiceInterface
        public void lightAssetPerformFinalize(final int i9) throws RemoteException {
            LightSDKService.this.runTaskSync(new Runnable() { // from class: org.light.service.LightSDKService.LightSDKServiceBinder.105
                @Override // java.lang.Runnable
                public void run() {
                    ((LightAsset) LightSDKServiceBinder.this.getInstance(i9)).performFinalize();
                    LightSDKServiceBinder.this.removeInstance(i9);
                }
            });
        }

        @Override // org.light.ILightSDKServiceInterface
        public int lightAssetWidth(final int i9) throws RemoteException {
            final int[] iArr = {0};
            LightSDKService.this.runTaskSync(new Runnable() { // from class: org.light.service.LightSDKService.LightSDKServiceBinder.96
                @Override // java.lang.Runnable
                public void run() {
                    iArr[0] = ((LightAsset) LightSDKServiceBinder.this.getInstance(i9)).width();
                }
            });
            return iArr[0];
        }

        @Override // org.light.ILightSDKServiceInterface
        public InstanceId lightEngineAudioOutput(final int i9) throws RemoteException {
            final AudioOutput[] audioOutputArr = {null};
            LightSDKService.this.runTaskSync(new Runnable() { // from class: org.light.service.LightSDKService.LightSDKServiceBinder.14
                @Override // java.lang.Runnable
                public void run() {
                    audioOutputArr[0] = ((LightEngine) LightSDKServiceBinder.this.getInstance(i9)).audioOutput();
                }
            });
            if (audioOutputArr[0] != null) {
                return new InstanceId(saveInstance(audioOutputArr[0]));
            }
            return null;
        }

        @Override // org.light.ILightSDKServiceInterface
        public int lightEngineComponentLevel() throws RemoteException {
            return LightEngine.componentLevel();
        }

        @Override // org.light.ILightSDKServiceInterface
        public int lightEngineGetOriginTexture(final int i9) throws RemoteException {
            final int[] iArr = {0};
            LightSDKService.this.runTaskSync(new Runnable() { // from class: org.light.service.LightSDKService.LightSDKServiceBinder.189
                @Override // java.lang.Runnable
                public void run() {
                    if (LightSDKService.this.originTextureMap.containsKey(Integer.valueOf(i9))) {
                        iArr[0] = ((Integer) LightSDKService.this.originTextureMap.get(Integer.valueOf(i9))).intValue();
                    }
                }
            });
            return iArr[0];
        }

        @Override // org.light.ILightSDKServiceInterface
        public int lightEngineGetResultTexture(final int i9) throws RemoteException {
            final int[] iArr = {0};
            LightSDKService.this.runTaskSync(new Runnable() { // from class: org.light.service.LightSDKService.LightSDKServiceBinder.188
                @Override // java.lang.Runnable
                public void run() {
                    iArr[0] = ((LightEngine) LightSDKServiceBinder.this.getInstance(i9)).getResultTexture();
                }
            });
            return iArr[0];
        }

        @Override // org.light.ILightSDKServiceInterface
        public void lightEngineInit() {
            LightSDKService.this.runTaskSync(new Runnable() { // from class: org.light.service.LightSDKService.LightSDKServiceBinder.186
                @Override // java.lang.Runnable
                public void run() {
                    LightEngine.init();
                }
            });
        }

        @Override // org.light.ILightSDKServiceInterface
        public int lightEngineInitAuth(final String str, final String str2, final String str3) throws RemoteException {
            final int[] iArr = {0};
            LightSDKService.this.runTaskSync(new Runnable() { // from class: org.light.service.LightSDKService.LightSDKServiceBinder.185
                @Override // java.lang.Runnable
                public void run() {
                    iArr[0] = LightEngine.initAuth(LightSDKService.this.getApplicationContext(), str, str2, str3);
                }
            });
            return iArr[0];
        }

        @Override // org.light.ILightSDKServiceInterface
        public void lightEngineInitDeviceConfig(final String str, final String str2) throws RemoteException {
            LightSDKService.this.runTaskAsync(new Runnable() { // from class: org.light.service.LightSDKService.LightSDKServiceBinder.187
                @Override // java.lang.Runnable
                public void run() {
                    LightEngine.initDeviceConfig(str, str2);
                }
            });
        }

        @Override // org.light.ILightSDKServiceInterface
        public boolean lightEngineIsDeviceAbilitySupported(String str) throws RemoteException {
            return LightEngine.isDeviceAbilitySupported(str);
        }

        @Override // org.light.ILightSDKServiceInterface
        public boolean lightEngineLoadLibraryForSDKService(Bundle bundle) throws RemoteException {
            return LightSDKService.loadSo(bundle) == LoadSOResult.LoadSuccess;
        }

        @Override // org.light.ILightSDKServiceInterface
        public InstanceId lightEngineMake(final VideoOutputConfig videoOutputConfig, final AudioOutputConfig audioOutputConfig, final RendererConfig rendererConfig) throws RemoteException {
            final LightEngine[] lightEngineArr = {null};
            LightSDKService.this.runTaskSync(new Runnable() { // from class: org.light.service.LightSDKService.LightSDKServiceBinder.2
                @Override // java.lang.Runnable
                public void run() {
                    lightEngineArr[0] = LightEngine.make(videoOutputConfig, audioOutputConfig, rendererConfig);
                }
            });
            if (lightEngineArr[0] != null) {
                return new InstanceId(saveInstance(lightEngineArr[0]));
            }
            return null;
        }

        @Override // org.light.ILightSDKServiceInterface
        public void lightEngineRelease(final int i9) throws RemoteException {
            LightSDKService.this.runTaskSync(new Runnable() { // from class: org.light.service.LightSDKService.LightSDKServiceBinder.191
                @Override // java.lang.Runnable
                public void run() {
                    LightEngine lightEngine = (LightEngine) LightSDKServiceBinder.this.getInstance(i9);
                    if (lightEngine != null) {
                        lightEngine.release();
                        LightSDKServiceBinder.this.removeInstance(i9);
                    }
                }
            });
        }

        @Override // org.light.ILightSDKServiceInterface
        public InstanceId lightEngineSetAssetForCamera(final int i9, final int i10) throws RemoteException {
            final CameraController[] cameraControllerArr = {null};
            LightSDKService.this.runTaskSync(new Runnable() { // from class: org.light.service.LightSDKService.LightSDKServiceBinder.184
                @Override // java.lang.Runnable
                public void run() {
                    LightEngine lightEngine = (LightEngine) LightSDKServiceBinder.this.getInstance(i9);
                    int i11 = i10;
                    cameraControllerArr[0] = lightEngine.setAssetForCamera(i11 != 0 ? (LightAsset) LightSDKServiceBinder.this.getInstance(i11) : null);
                }
            });
            if (cameraControllerArr[0] != null) {
                return new InstanceId(saveInstance(cameraControllerArr[0]));
            }
            return null;
        }

        @Override // org.light.ILightSDKServiceInterface
        public InstanceId lightEngineSetAssetForMovie(final int i9, final int i10) throws RemoteException {
            final MovieController[] movieControllerArr = {null};
            LightSDKService.this.runTaskSync(new Runnable() { // from class: org.light.service.LightSDKService.LightSDKServiceBinder.183
                @Override // java.lang.Runnable
                public void run() {
                    LightEngine lightEngine = (LightEngine) LightSDKServiceBinder.this.getInstance(i9);
                    int i11 = i10;
                    movieControllerArr[0] = lightEngine.setAssetForMovie(i11 != 0 ? (LightAsset) LightSDKServiceBinder.this.getInstance(i11) : null);
                }
            });
            if (movieControllerArr[0] != null) {
                return new InstanceId(saveInstance(movieControllerArr[0]));
            }
            return null;
        }

        @Override // org.light.ILightSDKServiceInterface
        public void lightEngineSetConfig(final int i9, final int i10) throws RemoteException {
            LightSDKService.this.runTaskSync(new Runnable() { // from class: org.light.service.LightSDKService.LightSDKServiceBinder.12
                @Override // java.lang.Runnable
                public void run() {
                    ((LightEngine) LightSDKServiceBinder.this.getInstance(i9)).setConfig((Config) LightSDKServiceBinder.this.getInstance(i10));
                }
            });
        }

        @Override // org.light.ILightSDKServiceInterface
        public boolean lightEngineSetSurface(final int i9, final int i10) throws RemoteException {
            final boolean[] zArr = {false};
            LightSDKService.this.runTaskSyncRenderThread(i10, new Runnable() { // from class: org.light.service.LightSDKService.LightSDKServiceBinder.11
                @Override // java.lang.Runnable
                public void run() {
                    LightEngine lightEngine = (LightEngine) LightSDKServiceBinder.this.getInstance(i9);
                    int i11 = i10;
                    zArr[0] = lightEngine.setSurface(i11 != 0 ? (LightSurface) LightSDKServiceBinder.this.getInstance(i11) : null);
                }
            });
            return zArr[0];
        }

        @Override // org.light.ILightSDKServiceInterface
        public int[] lightEngineSetTemplateAssets(final int i9, final TemplateClip[] templateClipArr) throws RemoteException {
            final int[][] iArr = {null};
            LightSDKService.this.runTaskSync(new Runnable() { // from class: org.light.service.LightSDKService.LightSDKServiceBinder.190
                @Override // java.lang.Runnable
                public void run() {
                    LightAsset lightAsset;
                    TemplateClip[] templateClipArr2 = templateClipArr;
                    if (templateClipArr2 != null) {
                        for (TemplateClip templateClip : templateClipArr2) {
                            if (templateClip != null && (lightAsset = templateClip.asset) != null) {
                                templateClip.asset = (LightAsset) LightSDKServiceBinder.this.getInstance(lightAsset.getInstanceId());
                            }
                        }
                    }
                    Controller[] templateAssets = ((LightEngine) LightSDKServiceBinder.this.getInstance(i9)).setTemplateAssets(templateClipArr);
                    iArr[0] = new int[templateAssets.length];
                    for (int i10 = 0; i10 < templateAssets.length; i10++) {
                        iArr[0][i10] = LightSDKServiceBinder.this.saveInstance(templateAssets[i10]);
                    }
                }
            });
            return iArr[0];
        }

        @Override // org.light.ILightSDKServiceInterface
        public String lightEngineVersion() throws RemoteException {
            return LightEngine.version();
        }

        @Override // org.light.ILightSDKServiceInterface
        public InstanceId lightEngineVideoOutput(final int i9) throws RemoteException {
            final VideoOutput[] videoOutputArr = {null};
            LightSDKService.this.runTaskSync(new Runnable() { // from class: org.light.service.LightSDKService.LightSDKServiceBinder.13
                @Override // java.lang.Runnable
                public void run() {
                    videoOutputArr[0] = ((LightEngine) LightSDKServiceBinder.this.getInstance(i9)).videoOutput();
                }
            });
            if (videoOutputArr[0] != null) {
                return new InstanceId(saveInstance(videoOutputArr[0]));
            }
            return null;
        }

        @Override // org.light.ILightSDKServiceInterface
        public void lightLogUtilDestroy() throws RemoteException {
            LightSDKService.this.runTaskSync(new Runnable() { // from class: org.light.service.LightSDKService.LightSDKServiceBinder.212
                @Override // java.lang.Runnable
                public void run() {
                    LightLogUtil.destroy();
                }
            });
        }

        @Override // org.light.ILightSDKServiceInterface
        public void lightLogUtilInit() throws RemoteException {
            LightSDKService.this.runTaskSync(new Runnable() { // from class: org.light.service.LightSDKService.LightSDKServiceBinder.209
                @Override // java.lang.Runnable
                public void run() {
                    LightLogUtil.init();
                }
            });
        }

        @Override // org.light.ILightSDKServiceInterface
        public void lightLogUtilSetLightLogger(final AIDLILightLogger aIDLILightLogger) throws RemoteException {
            LightSDKService.this.runTaskSync(new Runnable() { // from class: org.light.service.LightSDKService.LightSDKServiceBinder.210
                @Override // java.lang.Runnable
                public void run() {
                    LightLogUtil.setLightLogger(aIDLILightLogger == null ? null : new ILightLogger() { // from class: org.light.service.LightSDKService.LightSDKServiceBinder.210.1
                        @Override // org.light.utils.ILightLogger
                        public void d(String str, String str2) {
                            try {
                                aIDLILightLogger.d(str, str2);
                            } catch (RemoteException e10) {
                                SDKServiceLogger.e(LightSDKService.TAG, "RemoteException:\n" + e10);
                            }
                        }

                        @Override // org.light.utils.ILightLogger
                        public void d(String str, String str2, Throwable th2) {
                        }

                        @Override // org.light.utils.ILightLogger
                        public void e(String str, String str2) {
                            try {
                                aIDLILightLogger.e(str, str2);
                            } catch (RemoteException e10) {
                                SDKServiceLogger.e(LightSDKService.TAG, "RemoteException:\n" + e10);
                            }
                        }

                        @Override // org.light.utils.ILightLogger
                        public void e(String str, String str2, Throwable th2) {
                        }

                        @Override // org.light.utils.ILightLogger
                        public void i(String str, String str2) {
                            try {
                                aIDLILightLogger.i(str, str2);
                            } catch (RemoteException e10) {
                                SDKServiceLogger.e(LightSDKService.TAG, "RemoteException:\n" + e10);
                            }
                        }

                        @Override // org.light.utils.ILightLogger
                        public void i(String str, String str2, Throwable th2) {
                        }

                        @Override // org.light.utils.ILightLogger
                        public void log(int i9, String str, String str2) {
                            try {
                                aIDLILightLogger.log(i9, str, str2);
                            } catch (RemoteException e10) {
                                SDKServiceLogger.e(LightSDKService.TAG, "RemoteException:\n" + e10);
                            }
                        }

                        @Override // org.light.utils.ILightLogger
                        public void log(int i9, String str, String str2, Throwable th2) {
                        }

                        @Override // org.light.utils.ILightLogger
                        public void v(String str, String str2) {
                            try {
                                aIDLILightLogger.v(str, str2);
                            } catch (RemoteException e10) {
                                SDKServiceLogger.e(LightSDKService.TAG, "RemoteException:\n" + e10);
                            }
                        }

                        @Override // org.light.utils.ILightLogger
                        public void v(String str, String str2, Throwable th2) {
                        }

                        @Override // org.light.utils.ILightLogger
                        public void w(String str, String str2) {
                            try {
                                aIDLILightLogger.w(str, str2);
                            } catch (RemoteException e10) {
                                SDKServiceLogger.e(LightSDKService.TAG, "RemoteException:\n" + e10);
                            }
                        }

                        @Override // org.light.utils.ILightLogger
                        public void w(String str, String str2, Throwable th2) {
                        }
                    });
                }
            });
        }

        @Override // org.light.ILightSDKServiceInterface
        public void lightLogUtilSetMinPriority(final int i9) throws RemoteException {
            LightSDKService.this.runTaskSync(new Runnable() { // from class: org.light.service.LightSDKService.LightSDKServiceBinder.211
                @Override // java.lang.Runnable
                public void run() {
                    LightLogUtil.setMinPriority(i9);
                    SDKServiceLogger.setMinPriority(i9);
                }
            });
        }

        @Override // org.light.ILightSDKServiceInterface
        public String lightReportManagerGetShareKey() throws RemoteException {
            final String[] strArr = {null};
            LightSDKService.this.runTaskSync(new Runnable() { // from class: org.light.service.LightSDKService.LightSDKServiceBinder.206
                @Override // java.lang.Runnable
                public void run() {
                    strArr[0] = LightReportManager.getShareKey();
                }
            });
            return strArr[0];
        }

        @Override // org.light.ILightSDKServiceInterface
        public void lightReportManagerLaunchFromApp(final String str, final String str2) throws RemoteException {
            LightSDKService.this.runTaskSync(new Runnable() { // from class: org.light.service.LightSDKService.LightSDKServiceBinder.208
                @Override // java.lang.Runnable
                public void run() {
                    LightReportManager.LaunchFromApp(str, str2);
                }
            });
        }

        @Override // org.light.ILightSDKServiceInterface
        public void lightReportManagerReportOutsideData(final String str, final Bundle bundle) throws RemoteException {
            LightSDKService.this.runTaskSync(new Runnable() { // from class: org.light.service.LightSDKService.LightSDKServiceBinder.205
                @Override // java.lang.Runnable
                public void run() {
                    LightReportManager.reportOutsideData(str, LightDataUtils.bundle2HashMap(bundle));
                }
            });
        }

        @Override // org.light.ILightSDKServiceInterface
        public void lightReportManagerSetCommonParamsExternal(final Bundle bundle) throws RemoteException {
            LightSDKService.this.runTaskSync(new Runnable() { // from class: org.light.service.LightSDKService.LightSDKServiceBinder.207
                @Override // java.lang.Runnable
                public void run() {
                    LightReportManager.SetCommonParamsExternal(LightDataUtils.bundle2HashMap(bundle));
                }
            });
        }

        @Override // org.light.ILightSDKServiceInterface
        public int lightServicePid() throws RemoteException {
            return Process.myPid();
        }

        @Override // org.light.ILightSDKServiceInterface
        public void lightSurfaceClearRenderCurrent(final int i9) throws RemoteException {
            LightSDKService.this.runTaskSyncRenderThread(i9, new Runnable() { // from class: org.light.service.LightSDKService.LightSDKServiceBinder.30
                @Override // java.lang.Runnable
                public void run() {
                    ((LightSurface) LightSDKServiceBinder.this.getInstance(i9)).clearRenderCurrent();
                }
            });
        }

        @Override // org.light.ILightSDKServiceInterface
        public void lightSurfaceFreeCache(final int i9) throws RemoteException {
            LightSDKService.this.runTaskSyncRenderThread(i9, new Runnable() { // from class: org.light.service.LightSDKService.LightSDKServiceBinder.31
                @Override // java.lang.Runnable
                public void run() {
                    ((LightSurface) LightSDKServiceBinder.this.getInstance(i9)).freeCache();
                }
            });
        }

        @Override // org.light.ILightSDKServiceInterface
        public long lightSurfaceGetRenderCurrentGLContext(final int i9) throws RemoteException {
            final long[] jArr = {0};
            LightSDKService.this.runTaskSyncRenderThread(i9, new Runnable() { // from class: org.light.service.LightSDKService.LightSDKServiceBinder.3
                @Override // java.lang.Runnable
                public void run() {
                    jArr[0] = ((LightSurface) LightSDKServiceBinder.this.getInstance(i9)).getRenderCurrentGLContext();
                }
            });
            return jArr[0];
        }

        @Override // org.light.ILightSDKServiceInterface
        public InstanceId lightSurfaceMakeFromNativeBuffer(final HardwareBuffer hardwareBuffer, final int i9, final int i10, final boolean z10) throws RemoteException {
            final InstanceId[] instanceIdArr = {null};
            LightSDKService.this.runTask(new Runnable() { // from class: org.light.service.LightSDKService.LightSDKServiceBinder.27
                @Override // java.lang.Runnable
                public void run() {
                    EGLSurface createOffscreenSurface = LightSDKService.this.taskEglCore.createOffscreenSurface(i9, i10);
                    LightSDKService.this.taskEglCore.makeCurrent(createOffscreenSurface);
                    NativeBuffer nativeBuffer = new NativeBuffer(hardwareBuffer);
                    nativeBuffer.bindTexture(LightGLUtils.createTexture(3553));
                    LightSurface makeFromNativeTexture = LightSurface.makeFromNativeTexture(nativeBuffer.getBindTexture(), i9, i10, z10, true);
                    instanceIdArr[0] = makeFromNativeTexture != null ? new InstanceId(LightSDKServiceBinder.this.saveInstance(makeFromNativeTexture)) : null;
                    if (instanceIdArr[0] != null) {
                        LightSDKService.this.surfaceOutBuffer.put(Integer.valueOf(instanceIdArr[0].f56459id), nativeBuffer);
                        LightSDKService.this.renderEglSurfaceMap.put(Integer.valueOf(instanceIdArr[0].f56459id), createOffscreenSurface);
                    }
                }
            }, true);
            return instanceIdArr[0];
        }

        @Override // org.light.ILightSDKServiceInterface
        public InstanceId lightSurfaceMakeFromSurface(final Surface surface, final boolean z10) throws RemoteException {
            final InstanceId[] instanceIdArr = {null};
            LightSDKService.this.runTask(new Runnable() { // from class: org.light.service.LightSDKService.LightSDKServiceBinder.26
                @Override // java.lang.Runnable
                public void run() {
                    EGLSurface createOffscreenSurface = LightSDKService.this.taskEglCore.createOffscreenSurface(1, 1);
                    LightSDKService.this.taskEglCore.makeCurrent(createOffscreenSurface);
                    LightSurface makeFromSurface = LightSurface.makeFromSurface(surface, EGL14.eglGetCurrentContext(), z10);
                    instanceIdArr[0] = makeFromSurface != null ? new InstanceId(LightSDKServiceBinder.this.saveInstance(makeFromSurface)) : null;
                    if (instanceIdArr[0] != null) {
                        LightSDKService.this.renderEglSurfaceMap.put(Integer.valueOf(instanceIdArr[0].f56459id), createOffscreenSurface);
                    }
                }
            }, true);
            return instanceIdArr[0];
        }

        @Override // org.light.ILightSDKServiceInterface
        public void lightSurfaceMakeRenderCurrent(final int i9) throws RemoteException {
            LightSDKService.this.runTaskSyncRenderThread(i9, new Runnable() { // from class: org.light.service.LightSDKService.LightSDKServiceBinder.29
                @Override // java.lang.Runnable
                public void run() {
                    ((LightSurface) LightSDKServiceBinder.this.getInstance(i9)).makeRenderCurrent();
                }
            });
        }

        @Override // org.light.ILightSDKServiceInterface
        public void lightSurfaceRelease(final int i9) throws RemoteException {
            LightSDKService.this.runTaskSyncRenderThread(i9, new Runnable() { // from class: org.light.service.LightSDKService.LightSDKServiceBinder.32
                @Override // java.lang.Runnable
                public void run() {
                    LightSurface lightSurface = (LightSurface) LightSDKServiceBinder.this.getInstance(i9);
                    NativeBuffer nativeBuffer = (NativeBuffer) LightSDKService.this.surfaceOutBuffer.get(Integer.valueOf(i9));
                    if (nativeBuffer != null) {
                        LightGLUtils.deleteTexture(nativeBuffer.getBindTexture());
                        nativeBuffer.release();
                    }
                    NativeBuffer nativeBuffer2 = (NativeBuffer) LightSDKService.this.cameraInputBuffer.get(Integer.valueOf(i9));
                    if (nativeBuffer2 != null) {
                        LightGLUtils.deleteTexture(nativeBuffer2.getBindTexture());
                        nativeBuffer2.release();
                    }
                    lightSurface.release();
                    EGLSurface eGLSurface = (EGLSurface) LightSDKService.this.renderEglSurfaceMap.get(Integer.valueOf(i9));
                    if (LightSDKService.this.taskEglCore != null) {
                        LightSDKService.this.taskEglCore.makeNothingCurrent();
                        LightSDKService.this.taskEglCore.releaseSurface(eGLSurface);
                    }
                    LightSDKService.this.renderEglSurfaceMap.remove(Integer.valueOf(i9));
                    LightSDKServiceBinder.this.removeInstance(i9);
                }
            });
        }

        @Override // org.light.ILightSDKServiceInterface
        public void lightSurfaceUpdateSize(final int i9, final HardwareBuffer hardwareBuffer, final int i10, final int i11) throws RemoteException {
            LightSDKService.this.runTaskSyncRenderThread(i9, new Runnable() { // from class: org.light.service.LightSDKService.LightSDKServiceBinder.28
                @Override // java.lang.Runnable
                public void run() {
                    NativeBuffer nativeBuffer = (NativeBuffer) LightSDKService.this.surfaceOutBuffer.get(Integer.valueOf(i9));
                    int bindTexture = nativeBuffer.getBindTexture();
                    nativeBuffer.release();
                    NativeBuffer nativeBuffer2 = new NativeBuffer(hardwareBuffer);
                    nativeBuffer2.bindTexture(bindTexture);
                    LightSDKService.this.surfaceOutBuffer.put(Integer.valueOf(i9), nativeBuffer2);
                    ((LightSurface) LightSDKServiceBinder.this.getInstance(i9)).updateSize(i10, i11);
                }
            });
        }

        @Override // org.light.ILightSDKServiceInterface
        public InstanceId movieConfigMake() throws RemoteException {
            final MovieConfig[] movieConfigArr = {null};
            LightSDKService.this.runTaskSync(new Runnable() { // from class: org.light.service.LightSDKService.LightSDKServiceBinder.25
                @Override // java.lang.Runnable
                public void run() {
                    movieConfigArr[0] = MovieConfig.make();
                }
            });
            if (movieConfigArr[0] != null) {
                return new InstanceId(saveInstance(movieConfigArr[0]));
            }
            return null;
        }

        @Override // org.light.ILightSDKServiceInterface
        public long movieControllerDuration(final int i9) throws RemoteException {
            final long[] jArr = {0};
            LightSDKService.this.runTaskSync(new Runnable() { // from class: org.light.service.LightSDKService.LightSDKServiceBinder.178
                @Override // java.lang.Runnable
                public void run() {
                    jArr[0] = ((MovieController) LightSDKServiceBinder.this.getInstance(i9)).duration();
                }
            });
            return jArr[0];
        }

        @Override // org.light.ILightSDKServiceInterface
        public TimeRange[] movieControllerGetBoundsTrackTimeRanges(final int i9) throws RemoteException {
            final TimeRange[][] timeRangeArr = {null};
            LightSDKService.this.runTaskSync(new Runnable() { // from class: org.light.service.LightSDKService.LightSDKServiceBinder.176
                @Override // java.lang.Runnable
                public void run() {
                    timeRangeArr[0] = ((MovieController) LightSDKServiceBinder.this.getInstance(i9)).getBoundsTrackTimeRanges();
                }
            });
            return timeRangeArr[0];
        }

        @Override // org.light.ILightSDKServiceInterface
        public ClipInfoArray[] movieControllerGetClipInfos(final int i9) throws RemoteException {
            final ClipInfoArray[][] clipInfoArrayArr = {null};
            LightSDKService.this.runTaskSync(new Runnable() { // from class: org.light.service.LightSDKService.LightSDKServiceBinder.174
                @Override // java.lang.Runnable
                public void run() {
                    ClipInfo[][] clipInfos = ((MovieController) LightSDKServiceBinder.this.getInstance(i9)).getClipInfos();
                    if (clipInfos != null) {
                        clipInfoArrayArr[0] = new ClipInfoArray[clipInfos.length];
                        for (int i10 = 0; i10 < clipInfos.length; i10++) {
                            clipInfoArrayArr[0][i10] = new ClipInfoArray();
                            clipInfoArrayArr[0][i10].infoArray = clipInfos[i10];
                        }
                    }
                }
            });
            return clipInfoArrayArr[0];
        }

        @Override // org.light.ILightSDKServiceInterface
        public ClipPlaceHolder[] movieControllerGetClipPlaceHolders(final int i9) throws RemoteException {
            final ClipPlaceHolder[][] clipPlaceHolderArr = {null};
            LightSDKService.this.runTaskSync(new Runnable() { // from class: org.light.service.LightSDKService.LightSDKServiceBinder.167
                @Override // java.lang.Runnable
                public void run() {
                    clipPlaceHolderArr[0] = ((MovieController) LightSDKServiceBinder.this.getInstance(i9)).getClipPlaceHolders();
                }
            });
            return clipPlaceHolderArr[0];
        }

        @Override // org.light.ILightSDKServiceInterface
        public LUTPlaceHolder[] movieControllerGetLUTPlaceHolders(final int i9) throws RemoteException {
            final LUTPlaceHolder[][] lUTPlaceHolderArr = {null};
            LightSDKService.this.runTaskSync(new Runnable() { // from class: org.light.service.LightSDKService.LightSDKServiceBinder.166
                @Override // java.lang.Runnable
                public void run() {
                    lUTPlaceHolderArr[0] = ((MovieController) LightSDKServiceBinder.this.getInstance(i9)).getLUTPlaceHolders();
                }
            });
            return lUTPlaceHolderArr[0];
        }

        @Override // org.light.ILightSDKServiceInterface
        public boolean movieControllerGetMediasTotalDurationLimitationStatus(final int i9) {
            final boolean[] zArr = {false};
            LightSDKService.this.runTaskSync(new Runnable() { // from class: org.light.service.LightSDKService.LightSDKServiceBinder.170
                @Override // java.lang.Runnable
                public void run() {
                    zArr[0] = ((MovieController) LightSDKServiceBinder.this.getInstance(i9)).getMediasTotalDurationLimitationStatus();
                }
            });
            return zArr[0];
        }

        @Override // org.light.ILightSDKServiceInterface
        public float movieControllerGetOriginVolume(final int i9) throws RemoteException {
            final float[] fArr = {1.0f};
            LightSDKService.this.runTaskSync(new Runnable() { // from class: org.light.service.LightSDKService.LightSDKServiceBinder.173
                @Override // java.lang.Runnable
                public void run() {
                    fArr[0] = ((MovieController) LightSDKServiceBinder.this.getInstance(i9)).getOriginVolume();
                }
            });
            return fArr[0];
        }

        @Override // org.light.ILightSDKServiceInterface
        public TimeRange[] movieControllerGetTextTimeRanges(final int i9) throws RemoteException {
            final TimeRange[][] timeRangeArr = {null};
            LightSDKService.this.runTaskSync(new Runnable() { // from class: org.light.service.LightSDKService.LightSDKServiceBinder.175
                @Override // java.lang.Runnable
                public void run() {
                    timeRangeArr[0] = ((MovieController) LightSDKServiceBinder.this.getInstance(i9)).getTextTimeRanges();
                }
            });
            return timeRangeArr[0];
        }

        @Override // org.light.ILightSDKServiceInterface
        public boolean movieControllerHasAudio(final int i9) throws RemoteException {
            final boolean[] zArr = {false};
            LightSDKService.this.runTaskSync(new Runnable() { // from class: org.light.service.LightSDKService.LightSDKServiceBinder.179
                @Override // java.lang.Runnable
                public void run() {
                    zArr[0] = ((MovieController) LightSDKServiceBinder.this.getInstance(i9)).hasAudio();
                }
            });
            return zArr[0];
        }

        @Override // org.light.ILightSDKServiceInterface
        public void movieControllerRegisterClipSourceFactory(final int i9, final AIDLClipSourceFactory aIDLClipSourceFactory) throws RemoteException {
            LightSDKService.this.runTaskSync(new Runnable() { // from class: org.light.service.LightSDKService.LightSDKServiceBinder.180
                @Override // java.lang.Runnable
                public void run() {
                    ((MovieController) LightSDKServiceBinder.this.getInstance(i9)).registerClipSourceFactory(aIDLClipSourceFactory == null ? null : new ClipSourceFactory() { // from class: org.light.service.LightSDKService.LightSDKServiceBinder.180.1
                        @Override // org.light.ClipSourceFactory
                        public ClipSourceFactory.AudioReader createAudioReader(String str) {
                            AIDLAudioReader aIDLAudioReader;
                            try {
                                aIDLAudioReader = aIDLClipSourceFactory.createAudioReader(str);
                            } catch (RemoteException e10) {
                                LightLogUtil.e(LightSDKService.TAG, "RemoteException:\n" + e10);
                                aIDLAudioReader = null;
                            }
                            if (aIDLAudioReader != null) {
                                return LightSDKServiceBinder.this.aidlCreateAudioReader(aIDLAudioReader);
                            }
                            return null;
                        }

                        @Override // org.light.ClipSourceFactory
                        public ClipSourceFactory.VideoReader createVideoReader(String str) {
                            AIDLVideoReader aIDLVideoReader;
                            try {
                                aIDLVideoReader = aIDLClipSourceFactory.createVideoReader(str);
                            } catch (RemoteException e10) {
                                LightLogUtil.e(LightSDKService.TAG, "RemoteException:\n" + e10);
                                aIDLVideoReader = null;
                            }
                            if (aIDLVideoReader != null) {
                                return LightSDKServiceBinder.this.aidlCreateVideoReader(aIDLVideoReader);
                            }
                            return null;
                        }
                    });
                }
            });
        }

        @Override // org.light.ILightSDKServiceInterface
        public void movieControllerReplaceLUTAsset(final int i9, final String str, final LUTAsset lUTAsset) throws RemoteException {
            LightSDKService.this.runTaskSync(new Runnable() { // from class: org.light.service.LightSDKService.LightSDKServiceBinder.177
                @Override // java.lang.Runnable
                public void run() {
                    ((MovieController) LightSDKServiceBinder.this.getInstance(i9)).replaceLUTAsset(str, lUTAsset);
                }
            });
        }

        @Override // org.light.ILightSDKServiceInterface
        public void movieControllerSetClipAssets(final int i9, final Bundle bundle, final String str, final boolean z10) throws RemoteException {
            LightSDKService.this.runTaskSync(new Runnable() { // from class: org.light.service.LightSDKService.LightSDKServiceBinder.171
                @Override // java.lang.Runnable
                public void run() {
                    ClipAsset[] clipAssetArr;
                    MovieController movieController = (MovieController) LightSDKServiceBinder.this.getInstance(i9);
                    Bundle bundle2 = bundle;
                    if (bundle2 != null) {
                        bundle2.setClassLoader(getClass().getClassLoader());
                        Parcelable[] parcelableArray = bundle.getParcelableArray("ClipAsset");
                        if (parcelableArray != null) {
                            int length = parcelableArray.length;
                            clipAssetArr = new ClipAsset[length];
                            for (int i10 = 0; i10 < length; i10++) {
                                clipAssetArr[i10] = (ClipAsset) parcelableArray[i10];
                            }
                            movieController.setClipAssets(clipAssetArr, str, z10);
                        }
                    }
                    clipAssetArr = null;
                    movieController.setClipAssets(clipAssetArr, str, z10);
                }
            });
        }

        @Override // org.light.ILightSDKServiceInterface
        public void movieControllerSetOriginVolume(final int i9, final float f10) throws RemoteException {
            LightSDKService.this.runTaskSync(new Runnable() { // from class: org.light.service.LightSDKService.LightSDKServiceBinder.172
                @Override // java.lang.Runnable
                public void run() {
                    ((MovieController) LightSDKServiceBinder.this.getInstance(i9)).setOriginVolume(f10);
                }
            });
        }

        @Override // org.light.ILightSDKServiceInterface
        public void movieControllerSetRenderMediaSize(final int i9, final int i10, final int i11) throws RemoteException {
            LightSDKService.this.runTaskSync(new Runnable() { // from class: org.light.service.LightSDKService.LightSDKServiceBinder.168
                @Override // java.lang.Runnable
                public void run() {
                    ((MovieController) LightSDKServiceBinder.this.getInstance(i9)).setRenderMediaSize(i10, i11);
                }
            });
        }

        @Override // org.light.ILightSDKServiceInterface
        public void movieControllerSetupMediasTotalDurationLimitationStatus(final int i9, final boolean z10) {
            LightSDKService.this.runTaskSync(new Runnable() { // from class: org.light.service.LightSDKService.LightSDKServiceBinder.169
                @Override // java.lang.Runnable
                public void run() {
                    ((MovieController) LightSDKServiceBinder.this.getInstance(i9)).setupMediasTotalDurationLimitationStatus(z10);
                }
            });
        }

        @Override // org.light.ILightSDKServiceInterface
        public boolean nativeBufferIsEglFenceEnabled() throws RemoteException {
            final boolean[] zArr = {false};
            LightSDKService.this.runTaskSync(new Runnable() { // from class: org.light.service.LightSDKService.LightSDKServiceBinder.221
                @Override // java.lang.Runnable
                public void run() {
                    zArr[0] = NativeBuffer.isFenceEnabled();
                }
            });
            return zArr[0];
        }

        @Override // org.light.ILightSDKServiceInterface
        public void nativeBufferSetEglFenceEnabled(final boolean z10) throws RemoteException {
            LightSDKService.this.runTaskSync(new Runnable() { // from class: org.light.service.LightSDKService.LightSDKServiceBinder.222
                @Override // java.lang.Runnable
                public void run() {
                    NativeBuffer.setFenceEnabled(z10);
                }
            });
        }

        @Override // org.light.ILightSDKServiceInterface
        public String performanceMonitorGetBenchData() throws RemoteException {
            final String[] strArr = {null};
            LightSDKService.this.runTaskSync(new Runnable() { // from class: org.light.service.LightSDKService.LightSDKServiceBinder.200
                @Override // java.lang.Runnable
                public void run() {
                    strArr[0] = PerformanceMonitor.getBenchData();
                }
            });
            return strArr[0];
        }

        @Override // org.light.ILightSDKServiceInterface
        public String performanceMonitorGetPerformanceData() throws RemoteException {
            final String[] strArr = {null};
            LightSDKService.this.runTaskSync(new Runnable() { // from class: org.light.service.LightSDKService.LightSDKServiceBinder.202
                @Override // java.lang.Runnable
                public void run() {
                    strArr[0] = PerformanceMonitor.getPerformanceData();
                }
            });
            return strArr[0];
        }

        @Override // org.light.ILightSDKServiceInterface
        public boolean performanceMonitorSavePerformanceData() throws RemoteException {
            final boolean[] zArr = {false};
            LightSDKService.this.runTaskSync(new Runnable() { // from class: org.light.service.LightSDKService.LightSDKServiceBinder.201
                @Override // java.lang.Runnable
                public void run() {
                    zArr[0] = PerformanceMonitor.savePerformanceData();
                }
            });
            return zArr[0];
        }

        @Override // org.light.ILightSDKServiceInterface
        public void performanceMonitorSetBenchConfig(final String str) throws RemoteException {
            LightSDKService.this.runTaskSync(new Runnable() { // from class: org.light.service.LightSDKService.LightSDKServiceBinder.196
                @Override // java.lang.Runnable
                public void run() {
                    PerformanceMonitor.setBenchConfig(str);
                }
            });
        }

        @Override // org.light.ILightSDKServiceInterface
        public void performanceMonitorSetBenchConfigWithThreshold(final String str, final float f10) throws RemoteException {
            LightSDKService.this.runTaskSync(new Runnable() { // from class: org.light.service.LightSDKService.LightSDKServiceBinder.197
                @Override // java.lang.Runnable
                public void run() {
                    PerformanceMonitor.setBenchConfigWithThreshold(str, f10);
                }
            });
        }

        @Override // org.light.ILightSDKServiceInterface
        public void performanceMonitorSetBenchEnable(final boolean z10) throws RemoteException {
            LightSDKService.this.runTaskSync(new Runnable() { // from class: org.light.service.LightSDKService.LightSDKServiceBinder.198
                @Override // java.lang.Runnable
                public void run() {
                    PerformanceMonitor.setBenchEnable(z10);
                }
            });
        }

        @Override // org.light.ILightSDKServiceInterface
        public void performanceMonitorSetBenchEnableWithThreshold(final boolean z10, final float f10) throws RemoteException {
            LightSDKService.this.runTaskSync(new Runnable() { // from class: org.light.service.LightSDKService.LightSDKServiceBinder.199
                @Override // java.lang.Runnable
                public void run() {
                    PerformanceMonitor.setBenchEnableWithThreshold(z10, f10);
                }
            });
        }

        @Override // org.light.ILightSDKServiceInterface
        public void performanceMonitorSetPerfEnable(final boolean z10, final boolean z11, final boolean z12, final String str) throws RemoteException {
            LightSDKService.this.runTaskSync(new Runnable() { // from class: org.light.service.LightSDKService.LightSDKServiceBinder.204
                @Override // java.lang.Runnable
                public void run() {
                    PerformanceMonitor.setPerfEnable(z10, z11, z12, str);
                }
            });
        }

        @Override // org.light.ILightSDKServiceInterface
        public void performanceMonitorSetPerformanceRunMode(final int i9) throws RemoteException {
            LightSDKService.this.runTaskSync(new Runnable() { // from class: org.light.service.LightSDKService.LightSDKServiceBinder.203
                @Override // java.lang.Runnable
                public void run() {
                    PerformanceMonitor.setPerformanceRunMode(i9);
                }
            });
        }

        @Override // org.light.ILightSDKServiceInterface
        public void removeSdkInstance(final int i9) throws RemoteException {
            LightSDKService.this.runTaskSync(new Runnable() { // from class: org.light.service.LightSDKService.LightSDKServiceBinder.192
                @Override // java.lang.Runnable
                public void run() {
                    LightSDKServiceBinder.this.removeInstance(i9);
                }
            });
        }

        @Override // org.light.ILightSDKServiceInterface
        public boolean ueUtilCheckUE4Ready() throws RemoteException {
            final boolean[] zArr = {false};
            LightSDKService.this.runTaskSync(new Runnable() { // from class: org.light.service.LightSDKService.LightSDKServiceBinder.10
                @Override // java.lang.Runnable
                public void run() {
                    zArr[0] = UEUtil._checkUE4Ready();
                }
            });
            return zArr[0];
        }

        @Override // org.light.ILightSDKServiceInterface
        public void ueUtilClearUEFaceStr() throws RemoteException {
            LightSDKService.this.runTaskSync(new Runnable() { // from class: org.light.service.LightSDKService.LightSDKServiceBinder.193
                @Override // java.lang.Runnable
                public void run() {
                    UEUtil.clearUEFaceStr();
                }
            });
        }

        @Override // org.light.ILightSDKServiceInterface
        public void ueUtilCreateUEPlayer(final String str) throws RemoteException {
            LightSDKService.this.runTaskSync(new Runnable() { // from class: org.light.service.LightSDKService.LightSDKServiceBinder.195
                @Override // java.lang.Runnable
                public void run() {
                    UEUtil.createUEPlayer(str);
                }
            });
        }

        @Override // org.light.ILightSDKServiceInterface
        public void ueUtilInitUEInterface(final AIDLOnBindServiceListener aIDLOnBindServiceListener) throws RemoteException {
            LightSDKService.this.runTaskSync(new Runnable() { // from class: org.light.service.LightSDKService.LightSDKServiceBinder.7
                @Override // java.lang.Runnable
                public void run() {
                    UEUtil._initUEInterface(LightSDKService.this.getApplicationContext(), aIDLOnBindServiceListener);
                }
            });
        }

        @Override // org.light.ILightSDKServiceInterface
        public void ueUtilInitUENativeFunctions() throws RemoteException {
            LightSDKService.this.runTaskSync(new Runnable() { // from class: org.light.service.LightSDKService.LightSDKServiceBinder.8
                @Override // java.lang.Runnable
                public void run() {
                    UEUtil._initUENativeFunctions();
                }
            });
        }

        @Override // org.light.ILightSDKServiceInterface
        public void ueUtilSetMultiProc(final boolean z10) throws RemoteException {
            LightSDKService.this.runTaskSync(new Runnable() { // from class: org.light.service.LightSDKService.LightSDKServiceBinder.9
                @Override // java.lang.Runnable
                public void run() {
                    UEUtil._setUEMultiProc(z10);
                }
            });
        }

        @Override // org.light.ILightSDKServiceInterface
        public void ueUtilSetOnUE4InitFinishListener(final AIDLOnUE4EngineInitFInishListener aIDLOnUE4EngineInitFInishListener) throws RemoteException {
            LightSDKService.this.runTaskSync(new Runnable() { // from class: org.light.service.LightSDKService.LightSDKServiceBinder.6
                @Override // java.lang.Runnable
                public void run() {
                    UEUtil._setOnUE4InitFinishListener(aIDLOnUE4EngineInitFInishListener);
                }
            });
        }

        @Override // org.light.ILightSDKServiceInterface
        public void ueUtilSetUEFaceStr(final String str) throws RemoteException {
            LightSDKService.this.runTaskSync(new Runnable() { // from class: org.light.service.LightSDKService.LightSDKServiceBinder.194
                @Override // java.lang.Runnable
                public void run() {
                    UEUtil.setUEFaceStr(str);
                }
            });
        }

        @Override // org.light.ILightSDKServiceInterface
        public void ueUtilStartUE4(final long j10, final int i9, final int i10, final AIDLOnUE4EngineInitFInishListener aIDLOnUE4EngineInitFInishListener) throws RemoteException {
            LightSDKService.this.runTaskSync(new Runnable() { // from class: org.light.service.LightSDKService.LightSDKServiceBinder.4
                @Override // java.lang.Runnable
                public void run() {
                    UEUtil._startUE4(j10, LightSDKService.this.getApplicationContext(), i9, i10, aIDLOnUE4EngineInitFInishListener);
                }
            });
        }

        @Override // org.light.ILightSDKServiceInterface
        public void ueUtilStopUE4() throws RemoteException {
            LightSDKService.this.runTaskSync(new Runnable() { // from class: org.light.service.LightSDKService.LightSDKServiceBinder.5
                @Override // java.lang.Runnable
                public void run() {
                    UEUtil._stopUE4(LightSDKService.this.getApplicationContext());
                }
            });
        }

        @Override // org.light.ILightSDKServiceInterface
        public ReadSampleResult videoOutputReadSample(final int i9, final int i10, final int i11, final long j10, final long j11) throws RemoteException {
            final ReadSampleResult[] readSampleResultArr = {null};
            LightSDKService.this.runTaskSyncRenderThread(i10, new Runnable() { // from class: org.light.service.LightSDKService.LightSDKServiceBinder.116
                @Override // java.lang.Runnable
                public void run() {
                    CameraController cameraController;
                    int i12 = i11;
                    if (i12 != 0 && j10 > 0 && (cameraController = (CameraController) LightSDKServiceBinder.this.getInstance(i12)) != null) {
                        cameraController.updateCameraTextureTimestamp(j10);
                    }
                    readSampleResultArr[0] = new ReadSampleResult(((VideoOutput) LightSDKServiceBinder.this.getInstance(i9)).readSample(j11));
                    NativeBuffer nativeBuffer = (NativeBuffer) LightSDKService.this.surfaceOutBuffer.get(Integer.valueOf(i10));
                    if (nativeBuffer != null) {
                        readSampleResultArr[0].fenceFd = nativeBuffer.createFence();
                    }
                }
            });
            return readSampleResultArr[0];
        }

        @Override // org.light.ILightSDKServiceInterface
        public void videoOutputRelease(final int i9) throws RemoteException {
            LightSDKService.this.runTaskSync(new Runnable() { // from class: org.light.service.LightSDKService.LightSDKServiceBinder.117
                @Override // java.lang.Runnable
                public void run() {
                    VideoOutput videoOutput = (VideoOutput) LightSDKServiceBinder.this.getInstance(i9);
                    if (videoOutput != null) {
                        videoOutput.release();
                        LightSDKServiceBinder.this.removeInstance(i9);
                    }
                }
            });
        }

        @Override // org.light.ILightSDKServiceInterface
        public int wmElementConstructor(final String str, final String str2, final String str3) throws RemoteException {
            final int[] iArr = {0};
            LightSDKService.this.runTaskSync(new Runnable() { // from class: org.light.service.LightSDKService.LightSDKServiceBinder.213
                @Override // java.lang.Runnable
                public void run() {
                    iArr[0] = LightSDKServiceBinder.this.saveInstance(new WMElement(str, str2, str3));
                }
            });
            return iArr[0];
        }

        @Override // org.light.ILightSDKServiceInterface
        public int wmElementDoCheckIn(final int i9, final String str, final String str2) throws RemoteException {
            final int[] iArr = {0};
            LightSDKService.this.runTaskSync(new Runnable() { // from class: org.light.service.LightSDKService.LightSDKServiceBinder.214
                @Override // java.lang.Runnable
                public void run() {
                    iArr[0] = ((WMElement) LightSDKServiceBinder.this.getInstance(i9)).doCheckIn(str, str2);
                }
            });
            return iArr[0];
        }

        @Override // org.light.ILightSDKServiceInterface
        public String wmElementGetInnerValue(final int i9) throws RemoteException {
            final String[] strArr = {""};
            LightSDKService.this.runTaskSync(new Runnable() { // from class: org.light.service.LightSDKService.LightSDKServiceBinder.218
                @Override // java.lang.Runnable
                public void run() {
                    strArr[0] = ((WMElement) LightSDKServiceBinder.this.getInstance(i9)).getInnerValue();
                }
            });
            return strArr[0];
        }

        @Override // org.light.ILightSDKServiceInterface
        public void wmElementResetCheckIn(final int i9) throws RemoteException {
            LightSDKService.this.runTaskSync(new Runnable() { // from class: org.light.service.LightSDKService.LightSDKServiceBinder.219
                @Override // java.lang.Runnable
                public void run() {
                    ((WMElement) LightSDKServiceBinder.this.getInstance(i9)).resetCheckIn();
                }
            });
        }

        @Override // org.light.ILightSDKServiceInterface
        public void wmElementSetDate(final int i9, final long j10) throws RemoteException {
            LightSDKService.this.runTaskSync(new Runnable() { // from class: org.light.service.LightSDKService.LightSDKServiceBinder.217
                @Override // java.lang.Runnable
                public void run() {
                    ((WMElement) LightSDKServiceBinder.this.getInstance(i9)).setDate(j10);
                }
            });
        }

        @Override // org.light.ILightSDKServiceInterface
        public void wmElementSetLocation(final int i9, final String str) throws RemoteException {
            LightSDKService.this.runTaskSync(new Runnable() { // from class: org.light.service.LightSDKService.LightSDKServiceBinder.216
                @Override // java.lang.Runnable
                public void run() {
                    ((WMElement) LightSDKServiceBinder.this.getInstance(i9)).setLocation(str);
                }
            });
        }

        @Override // org.light.ILightSDKServiceInterface
        public void wmElementSetText(final int i9, final String str) throws RemoteException {
            LightSDKService.this.runTaskSync(new Runnable() { // from class: org.light.service.LightSDKService.LightSDKServiceBinder.215
                @Override // java.lang.Runnable
                public void run() {
                    ((WMElement) LightSDKServiceBinder.this.getInstance(i9)).setText(str);
                }
            });
        }
    }

    /* loaded from: classes7.dex */
    public enum LoadSOResult {
        LoadSuccess,
        LoadFailed,
        NotNeedToLoad
    }

    /* loaded from: classes7.dex */
    private static class SDKServiceLogger {
        private static int minPriority;

        private SDKServiceLogger() {
        }

        public static void e(String str, String str2) {
            if (6 < minPriority) {
                return;
            }
            Log.e(str, str2);
        }

        public static void setMinPriority(int i9) {
            minPriority = i9;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean checkProcessPriority() {
        try {
            int myPid = Process.myPid();
            RandomAccessFile randomAccessFile = new RandomAccessFile("/proc/" + myPid + "/oom_adj", "r");
            String readLine = randomAccessFile.readLine();
            randomAccessFile.close();
            LightLogUtil.w(TAG, "process pid:" + myPid + ",oom_adj:" + readLine);
            return "0".equals(readLine);
        } catch (Throwable th2) {
            LightLogUtil.e(TAG, "read process oom_adj exception:" + th2);
            return false;
        }
    }

    public static LoadSOResult loadSo(Bundle bundle) {
        ArrayList<String> arrayList;
        ArrayList<String> arrayList2 = null;
        if (bundle != null) {
            arrayList2 = bundle.getStringArrayList(DATA_KEY_SO_PATHS);
            arrayList = bundle.getStringArrayList(DATA_KEY_NATIVE_SO_PATHS);
        } else {
            arrayList = null;
        }
        if (bundle != null && ((arrayList2 != null && !arrayList2.isEmpty()) || (arrayList != null && !arrayList.isEmpty()))) {
            if (arrayList2 != null && !arrayList2.isEmpty()) {
                Iterator<String> it = arrayList2.iterator();
                while (it.hasNext()) {
                    if (!loadSoInternal(it.next(), false)) {
                        return LoadSOResult.LoadFailed;
                    }
                }
            }
            if (arrayList != null && !arrayList.isEmpty()) {
                Iterator<String> it2 = arrayList.iterator();
                while (it2.hasNext()) {
                    if (!loadSoInternal(it2.next(), true)) {
                        return LoadSOResult.LoadFailed;
                    }
                }
            }
            LightLogUtil.e(TAG, "loadSo success");
            return LoadSOResult.LoadSuccess;
        }
        return LoadSOResult.NotNeedToLoad;
    }

    private static boolean loadSoInternal(String str, boolean z10) {
        LightLogUtil.i(TAG, "loadSoInternal(), loadNativeSo = " + z10 + ", path = " + str);
        try {
            if (z10) {
                return LibraryLoadUtils.loadLibrary(str);
            }
            System.load(str);
            return true;
        } catch (NullPointerException | SecurityException | UnsatisfiedLinkError e10) {
            LightLogUtil.e(TAG, "loadSoInternal() failed:\n" + e10);
            return false;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void runTask(Runnable runnable, boolean z10) {
        runTask(runnable, z10, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void runTaskAsync(Runnable runnable) {
        runTask(runnable, false);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void runTaskSync(Runnable runnable) {
        runTask(runnable, true);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void runTaskSyncRenderThread(int i9, Runnable runnable) {
        runTask(runnable, true, this.renderEglSurfaceMap.get(Integer.valueOf(i9)));
    }

    @Override // android.app.Service
    public IBinder onBind(Intent intent) {
        if (loadSo(intent.getExtras()) != LoadSOResult.LoadFailed) {
            return new LightSDKServiceBinder();
        }
        return null;
    }

    @Override // android.app.Service
    public void onCreate() {
        LightLogUtil.d(TAG, "onCreate");
        super.onCreate();
    }

    @Override // android.app.Service
    public void onDestroy() {
        LightLogUtil.d(TAG, "onDestroy");
        if (this.taskHandler != null) {
            EglCore eglCore = this.taskEglCore;
            if (eglCore != null) {
                eglCore.release();
            }
            this.taskHandler.getLooper().quit();
        }
        super.onDestroy();
    }

    private void runTask(final Runnable runnable, final boolean z10, final EGLSurface eGLSurface) {
        Lock lock = z10 ? new Lock(0) : null;
        final Lock lock2 = lock;
        this.taskHandler.post(new Runnable() { // from class: org.light.service.LightSDKService.1
            @Override // java.lang.Runnable
            public void run() {
                try {
                    if (LightSDKService.this.taskEglCore != null && eGLSurface != null) {
                        LightSDKService.this.taskEglCore.makeCurrent(eGLSurface);
                    }
                    runnable.run();
                } catch (Throwable th2) {
                    LightLogUtil.e(LightSDKService.TAG, "runTask Exception:\n" + th2);
                }
                if (z10) {
                    lock2.release();
                }
            }
        });
        if (z10) {
            lock.acquire();
        }
    }
}
