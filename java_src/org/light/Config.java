package org.light;

import android.app.Application;
import android.content.Context;
import android.graphics.SurfaceTexture;
import android.opengl.EGL14;
import android.opengl.EGLSurface;
import android.opengl.GLES20;
import android.opengl.GLES30;
import android.os.Build;
import android.os.Bundle;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.Looper;
import android.os.RemoteException;
import android.util.Log;
import android.view.Surface;
import androidx.annotation.NonNull;
import com.gyailib.library.GYAIDeviceQuery;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.concurrent.Semaphore;
import java.util.concurrent.atomic.AtomicBoolean;
import org.json.JSONException;
import org.json.JSONObject;
import org.light.LightConstants;
import org.light.bean.BodyData;
import org.light.bean.FaceData;
import org.light.bean.HandData;
import org.light.bean.LightAIDataWrapper;
import org.light.bean.LightAgentBundleInfo;
import org.light.bean.LightDelegateAgentRequest;
import org.light.bean.LightFaceData;
import org.light.bean.LightFaceFeature;
import org.light.bean.Texture;
import org.light.callback.AIDLExternalRenderCallback;
import org.light.callback.ExternalRenderCallback;
import org.light.device.LightDeviceUtils;
import org.light.gles.EglCore;
import org.light.listener.AIDLOnAIDataListener;
import org.light.listener.AIDLOnClickWatermarkListener;
import org.light.listener.AIDLOnDelegateAgentRequestListener;
import org.light.listener.AIDLOnLoadAssetListener;
import org.light.listener.AIDLOnTipsStatusListener;
import org.light.listener.AIDLOnWatermarkDataListener;
import org.light.listener.OnAIDataListener;
import org.light.listener.OnClickWatermarkListener;
import org.light.listener.OnDelegateAgentRequestListener;
import org.light.listener.OnLoadAssetListener;
import org.light.listener.OnScriptOutputListener;
import org.light.listener.OnTipsStatusListener;
import org.light.listener.OnWatermarkDataListener;
import org.light.listener.YTDataListener;
import org.light.utils.LightDataUtils;
import org.light.utils.LightGLUtils;
import org.light.utils.LightLogUtil;
import org.light.utils.OESTextureConverter;
import org.light.utils.SimpleRenderer;
/* loaded from: classes7.dex */
public class Config {
    public static final int ERROR_CODE_SET_MODEL_LEVEL_IS_EMPTY = 2;
    public static final int ERROR_CODE_SET_MODEL_LEVEL_NOT_EXIST = 1;
    private static final String ML_AND_MIDDLE = "middle";
    private static final String ML_AND_SMALL = "low";
    private static final String ML_HIGH = "high";
    private static final String ML_LOW = "low";
    private static final String ML_UNKNOWN = "unknown";
    private static final String ML_VERY_HIGH = "veryhigh";
    private static final String ML_VERY_LOW = "verylow";
    private static final String TAG = "Config";
    private static Context appContext = null;
    private static boolean degradeAsset = false;
    protected static ILightSDKServiceInterface lightSDKServiceInterface;
    protected long nativeHandle = 0;
    protected int instanceId = 0;
    protected WeakReference<LightEngine> weakEngine = null;

    /* renamed from: org.light.Config$1  reason: invalid class name */
    /* loaded from: classes7.dex */
    class AnonymousClass1 extends AIDLExternalRenderCallback.Stub {
        private int oesTexInput;
        private SurfaceTexture surfaceTextureInput;
        final /* synthetic */ ExternalRenderCallback val$externalRenderCallback;
        private int texInput = -1;
        private Surface surfaceInput = null;
        private EglCore outputEglCore = null;
        private EGLSurface outputEGLSurface = EGL14.EGL_NO_SURFACE;
        private SimpleRenderer outputRenderer = null;
        private OESTextureConverter inputReader = null;
        private Handler inputGLHandler = null;
        private EglCore inputEglCore = null;
        private EGLSurface inputEglSurface = null;
        private final Semaphore threadLock = new Semaphore(0);
        private final Semaphore inputLock = new Semaphore(0);
        private final AtomicBoolean released = new AtomicBoolean(false);

        /* renamed from: org.light.Config$1$2  reason: invalid class name */
        /* loaded from: classes7.dex */
        class AnonymousClass2 implements Runnable {
            final /* synthetic */ int val$height;
            final /* synthetic */ int val$width;

            AnonymousClass2(int i9, int i10) {
                this.val$width = i9;
                this.val$height = i10;
            }

            @Override // java.lang.Runnable
            public void run() {
                AnonymousClass1.this.inputEglCore = new EglCore(null, 2);
                AnonymousClass1 anonymousClass1 = AnonymousClass1.this;
                anonymousClass1.inputEglSurface = anonymousClass1.inputEglCore.createOffscreenSurface(this.val$width, this.val$height);
                AnonymousClass1.this.inputEglCore.makeCurrent(AnonymousClass1.this.inputEglSurface);
                AnonymousClass1.this.oesTexInput = LightGLUtils.createTexture(36197);
                if (AnonymousClass1.this.surfaceInput == null) {
                    AnonymousClass1.this.surfaceTextureInput = new SurfaceTexture(AnonymousClass1.this.oesTexInput);
                    AnonymousClass1.this.surfaceTextureInput.setDefaultBufferSize(this.val$width, this.val$height);
                    AnonymousClass1.this.surfaceTextureInput.setOnFrameAvailableListener(new SurfaceTexture.OnFrameAvailableListener() { // from class: org.light.Config.1.2.1
                        @Override // android.graphics.SurfaceTexture.OnFrameAvailableListener
                        public void onFrameAvailable(final SurfaceTexture surfaceTexture) {
                            AnonymousClass1.this.inputGLHandler.post(new Runnable() { // from class: org.light.Config.1.2.1.1
                                @Override // java.lang.Runnable
                                public void run() {
                                    AnonymousClass1.this.inputEglCore.makeCurrent(AnonymousClass1.this.inputEglSurface);
                                    surfaceTexture.updateTexImage();
                                    AnonymousClass1.this.inputLock.release();
                                }
                            });
                        }
                    });
                    AnonymousClass1.this.surfaceInput = new Surface(AnonymousClass1.this.surfaceTextureInput);
                }
                AnonymousClass1.this.threadLock.release();
            }
        }

        AnonymousClass1(ExternalRenderCallback externalRenderCallback) {
            this.val$externalRenderCallback = externalRenderCallback;
        }

        @Override // org.light.callback.AIDLExternalRenderCallback
        public void afterRender(final Texture texture, final Surface surface) throws RemoteException {
            this.inputGLHandler.post(new Runnable() { // from class: org.light.Config.1.4
                @Override // java.lang.Runnable
                public void run() {
                    if (AnonymousClass1.this.outputEglCore == null) {
                        AnonymousClass1.this.outputEglCore = new EglCore(AnonymousClass1.this.inputEglCore.getEGLContext(), 2);
                    }
                    if (AnonymousClass1.this.outputEGLSurface == EGL14.EGL_NO_SURFACE) {
                        AnonymousClass1 anonymousClass1 = AnonymousClass1.this;
                        anonymousClass1.outputEGLSurface = anonymousClass1.outputEglCore.createWindowSurface(surface);
                    }
                    long glFenceSync = GLES30.glFenceSync(37143, 0);
                    GLES20.glFlush();
                    AnonymousClass1.this.outputEglCore.makeCurrent(AnonymousClass1.this.outputEGLSurface);
                    if (AnonymousClass1.this.outputRenderer == null) {
                        AnonymousClass1.this.outputRenderer = new SimpleRenderer();
                    }
                    GLES30.glWaitSync(glFenceSync, 0, -1L);
                    GLES30.glDeleteSync(glFenceSync);
                    GLES20.glClearColor(0.0f, 1.0f, 1.0f, 1.0f);
                    GLES20.glClear(16384);
                    SimpleRenderer simpleRenderer = AnonymousClass1.this.outputRenderer;
                    Texture texture2 = texture;
                    simpleRenderer.draw(texture2.f56431id, 0, texture2.width, texture2.height);
                    AnonymousClass1.this.outputEglCore.swapBuffers(AnonymousClass1.this.outputEGLSurface);
                    AnonymousClass1.this.inputEglCore.makeCurrent(AnonymousClass1.this.inputEglSurface);
                    AnonymousClass1.this.threadLock.release();
                }
            });
            try {
                this.threadLock.acquire();
            } catch (InterruptedException e10) {
                e10.printStackTrace();
            }
        }

        protected void finalize() throws Throwable {
            super.finalize();
            release();
        }

        @Override // org.light.callback.AIDLExternalRenderCallback
        public Surface getInputSurface(int i9, int i10) throws RemoteException {
            if (this.inputGLHandler == null) {
                HandlerThread handlerThread = new HandlerThread("ExternalRenderInputGLThread");
                handlerThread.start();
                Handler handler = new Handler(handlerThread.getLooper());
                this.inputGLHandler = handler;
                handler.post(new AnonymousClass2(i9, i10));
                try {
                    this.threadLock.acquire();
                } catch (InterruptedException e10) {
                    e10.printStackTrace();
                }
            }
            return this.surfaceInput;
        }

        @Override // org.light.callback.AIDLExternalRenderCallback
        public Texture onRender(final Texture texture, final String str, final String str2, final Texture texture2) throws RemoteException {
            try {
                this.inputLock.acquire();
            } catch (InterruptedException e10) {
                e10.printStackTrace();
            }
            this.inputGLHandler.post(new Runnable() { // from class: org.light.Config.1.3
                @Override // java.lang.Runnable
                public void run() {
                    AnonymousClass1.this.inputEglCore.makeCurrent(AnonymousClass1.this.inputEglSurface);
                    if (AnonymousClass1.this.texInput == -1) {
                        AnonymousClass1.this.texInput = LightGLUtils.createTexture(3553);
                    }
                    texture.f56431id = AnonymousClass1.this.texInput;
                    if (AnonymousClass1.this.inputReader == null) {
                        AnonymousClass1.this.inputReader = new OESTextureConverter();
                    }
                    OESTextureConverter oESTextureConverter = AnonymousClass1.this.inputReader;
                    int i9 = AnonymousClass1.this.oesTexInput;
                    Texture texture3 = texture;
                    oESTextureConverter.draw(i9, texture3.f56431id, texture3.width, texture3.height);
                    AnonymousClass1.this.val$externalRenderCallback.onRender(texture, str, str2, texture2);
                    AnonymousClass1.this.threadLock.release();
                }
            });
            try {
                this.threadLock.acquire();
            } catch (InterruptedException e11) {
                e11.printStackTrace();
            }
            return texture2;
        }

        public void release() {
            if (this.released.get()) {
                return;
            }
            this.released.set(true);
            if (this.inputGLHandler != null) {
                final Semaphore semaphore = new Semaphore(0);
                this.inputGLHandler.post(new Runnable() { // from class: org.light.Config.1.1
                    @Override // java.lang.Runnable
                    public void run() {
                        if (AnonymousClass1.this.inputEglCore != null) {
                            AnonymousClass1.this.inputEglCore.makeCurrent(AnonymousClass1.this.inputEglSurface);
                            AnonymousClass1.this.surfaceTextureInput.release();
                            LightGLUtils.deleteTexture(AnonymousClass1.this.texInput);
                            LightGLUtils.deleteTexture(AnonymousClass1.this.oesTexInput);
                            if (AnonymousClass1.this.inputReader != null) {
                                AnonymousClass1.this.inputReader.release();
                                AnonymousClass1.this.inputReader = null;
                            }
                            AnonymousClass1.this.inputEglCore.makeNothingCurrent();
                            AnonymousClass1.this.inputEglCore.releaseSurface(AnonymousClass1.this.inputEglSurface);
                            AnonymousClass1.this.inputEglCore.release();
                            AnonymousClass1.this.inputEglCore = null;
                        }
                        if (AnonymousClass1.this.outputEglCore != null) {
                            AnonymousClass1.this.outputEglCore.makeCurrent(AnonymousClass1.this.outputEGLSurface);
                            if (AnonymousClass1.this.outputRenderer != null) {
                                AnonymousClass1.this.outputRenderer.release();
                                AnonymousClass1.this.outputRenderer = null;
                            }
                            AnonymousClass1.this.outputEglCore.makeNothingCurrent();
                            AnonymousClass1.this.outputEglCore.releaseSurface(AnonymousClass1.this.outputEGLSurface);
                            AnonymousClass1.this.outputEglCore.release();
                            AnonymousClass1.this.outputEglCore = null;
                        }
                        semaphore.release();
                    }
                });
                try {
                    semaphore.acquire();
                } catch (InterruptedException e10) {
                    e10.printStackTrace();
                }
                this.inputGLHandler.getLooper().quit();
            }
        }
    }

    /* renamed from: org.light.Config$2  reason: invalid class name */
    /* loaded from: classes7.dex */
    class AnonymousClass2 extends AIDLExternalRenderCallback.Stub {
        private int oesTexInput;
        private SurfaceTexture surfaceTextureInput;
        final /* synthetic */ ExternalRenderCallback val$externalRenderCallback;
        private int texInput = -1;
        private Surface surfaceInput = null;
        private EglCore outputEglCore = null;
        private EGLSurface outputEGLSurface = EGL14.EGL_NO_SURFACE;
        private SimpleRenderer outputRenderer = null;
        private OESTextureConverter inputReader = null;
        private Handler inputGLHandler = null;
        private EglCore inputEglCore = null;
        private EGLSurface inputEglSurface = null;
        private final Semaphore threadLock = new Semaphore(0);
        private final Semaphore inputLock = new Semaphore(0);
        private final AtomicBoolean released = new AtomicBoolean(false);

        /* renamed from: org.light.Config$2$2  reason: invalid class name and collision with other inner class name */
        /* loaded from: classes7.dex */
        class RunnableC05972 implements Runnable {
            final /* synthetic */ int val$height;
            final /* synthetic */ int val$width;

            RunnableC05972(int i9, int i10) {
                this.val$width = i9;
                this.val$height = i10;
            }

            @Override // java.lang.Runnable
            public void run() {
                AnonymousClass2.this.inputEglCore = new EglCore(null, 2);
                AnonymousClass2 anonymousClass2 = AnonymousClass2.this;
                anonymousClass2.inputEglSurface = anonymousClass2.inputEglCore.createOffscreenSurface(this.val$width, this.val$height);
                AnonymousClass2.this.inputEglCore.makeCurrent(AnonymousClass2.this.inputEglSurface);
                AnonymousClass2.this.oesTexInput = LightGLUtils.createTexture(36197);
                if (AnonymousClass2.this.surfaceInput == null) {
                    AnonymousClass2.this.surfaceTextureInput = new SurfaceTexture(AnonymousClass2.this.oesTexInput);
                    AnonymousClass2.this.surfaceTextureInput.setDefaultBufferSize(this.val$width, this.val$height);
                    AnonymousClass2.this.surfaceTextureInput.setOnFrameAvailableListener(new SurfaceTexture.OnFrameAvailableListener() { // from class: org.light.Config.2.2.1
                        @Override // android.graphics.SurfaceTexture.OnFrameAvailableListener
                        public void onFrameAvailable(final SurfaceTexture surfaceTexture) {
                            AnonymousClass2.this.inputGLHandler.post(new Runnable() { // from class: org.light.Config.2.2.1.1
                                @Override // java.lang.Runnable
                                public void run() {
                                    AnonymousClass2.this.inputEglCore.makeCurrent(AnonymousClass2.this.inputEglSurface);
                                    surfaceTexture.updateTexImage();
                                    AnonymousClass2.this.inputLock.release();
                                }
                            });
                        }
                    });
                    AnonymousClass2.this.surfaceInput = new Surface(AnonymousClass2.this.surfaceTextureInput);
                }
                AnonymousClass2.this.threadLock.release();
            }
        }

        AnonymousClass2(ExternalRenderCallback externalRenderCallback) {
            this.val$externalRenderCallback = externalRenderCallback;
        }

        @Override // org.light.callback.AIDLExternalRenderCallback
        public void afterRender(final Texture texture, final Surface surface) throws RemoteException {
            this.inputGLHandler.post(new Runnable() { // from class: org.light.Config.2.4
                @Override // java.lang.Runnable
                public void run() {
                    if (AnonymousClass2.this.outputEglCore == null) {
                        AnonymousClass2.this.outputEglCore = new EglCore(AnonymousClass2.this.inputEglCore.getEGLContext(), 2);
                    }
                    if (AnonymousClass2.this.outputEGLSurface == EGL14.EGL_NO_SURFACE) {
                        AnonymousClass2 anonymousClass2 = AnonymousClass2.this;
                        anonymousClass2.outputEGLSurface = anonymousClass2.outputEglCore.createWindowSurface(surface);
                    }
                    long glFenceSync = GLES30.glFenceSync(37143, 0);
                    GLES20.glFlush();
                    AnonymousClass2.this.outputEglCore.makeCurrent(AnonymousClass2.this.outputEGLSurface);
                    if (AnonymousClass2.this.outputRenderer == null) {
                        AnonymousClass2.this.outputRenderer = new SimpleRenderer();
                    }
                    GLES30.glWaitSync(glFenceSync, 0, -1L);
                    GLES30.glDeleteSync(glFenceSync);
                    GLES20.glClearColor(0.0f, 1.0f, 1.0f, 1.0f);
                    GLES20.glClear(16384);
                    SimpleRenderer simpleRenderer = AnonymousClass2.this.outputRenderer;
                    Texture texture2 = texture;
                    simpleRenderer.draw(texture2.f56431id, 0, texture2.width, texture2.height);
                    AnonymousClass2.this.outputEglCore.swapBuffers(AnonymousClass2.this.outputEGLSurface);
                    AnonymousClass2.this.inputEglCore.makeCurrent(AnonymousClass2.this.inputEglSurface);
                    AnonymousClass2.this.threadLock.release();
                }
            });
            try {
                this.threadLock.acquire();
            } catch (InterruptedException e10) {
                e10.printStackTrace();
            }
        }

        protected void finalize() throws Throwable {
            super.finalize();
            release();
        }

        @Override // org.light.callback.AIDLExternalRenderCallback
        public Surface getInputSurface(int i9, int i10) throws RemoteException {
            if (this.inputGLHandler == null) {
                HandlerThread handlerThread = new HandlerThread("ExternalRenderInputGLThread");
                handlerThread.start();
                Handler handler = new Handler(handlerThread.getLooper());
                this.inputGLHandler = handler;
                handler.post(new RunnableC05972(i9, i10));
                try {
                    this.threadLock.acquire();
                } catch (InterruptedException e10) {
                    e10.printStackTrace();
                }
            }
            return this.surfaceInput;
        }

        @Override // org.light.callback.AIDLExternalRenderCallback
        public Texture onRender(final Texture texture, final String str, final String str2, final Texture texture2) throws RemoteException {
            try {
                this.inputLock.acquire();
            } catch (InterruptedException e10) {
                e10.printStackTrace();
            }
            this.inputGLHandler.post(new Runnable() { // from class: org.light.Config.2.3
                @Override // java.lang.Runnable
                public void run() {
                    AnonymousClass2.this.inputEglCore.makeCurrent(AnonymousClass2.this.inputEglSurface);
                    if (AnonymousClass2.this.texInput == -1) {
                        AnonymousClass2.this.texInput = LightGLUtils.createTexture(3553);
                    }
                    texture.f56431id = AnonymousClass2.this.texInput;
                    if (AnonymousClass2.this.inputReader == null) {
                        AnonymousClass2.this.inputReader = new OESTextureConverter();
                    }
                    OESTextureConverter oESTextureConverter = AnonymousClass2.this.inputReader;
                    int i9 = AnonymousClass2.this.oesTexInput;
                    Texture texture3 = texture;
                    oESTextureConverter.draw(i9, texture3.f56431id, texture3.width, texture3.height);
                    AnonymousClass2.this.val$externalRenderCallback.onRender(texture, str, str2, texture2);
                    AnonymousClass2.this.threadLock.release();
                }
            });
            try {
                this.threadLock.acquire();
            } catch (InterruptedException e11) {
                e11.printStackTrace();
            }
            return texture2;
        }

        public void release() {
            if (this.released.get()) {
                return;
            }
            this.released.set(true);
            if (this.inputGLHandler != null) {
                final Semaphore semaphore = new Semaphore(0);
                this.inputGLHandler.post(new Runnable() { // from class: org.light.Config.2.1
                    @Override // java.lang.Runnable
                    public void run() {
                        if (AnonymousClass2.this.inputEglCore != null) {
                            AnonymousClass2.this.inputEglCore.makeCurrent(AnonymousClass2.this.inputEglSurface);
                            AnonymousClass2.this.surfaceTextureInput.release();
                            LightGLUtils.deleteTexture(AnonymousClass2.this.texInput);
                            LightGLUtils.deleteTexture(AnonymousClass2.this.oesTexInput);
                            if (AnonymousClass2.this.inputReader != null) {
                                AnonymousClass2.this.inputReader.release();
                                AnonymousClass2.this.inputReader = null;
                            }
                            AnonymousClass2.this.inputEglCore.makeNothingCurrent();
                            AnonymousClass2.this.inputEglCore.releaseSurface(AnonymousClass2.this.inputEglSurface);
                            AnonymousClass2.this.inputEglCore.release();
                            AnonymousClass2.this.inputEglCore = null;
                        }
                        if (AnonymousClass2.this.outputEglCore != null) {
                            AnonymousClass2.this.outputEglCore.makeCurrent(AnonymousClass2.this.outputEGLSurface);
                            if (AnonymousClass2.this.outputRenderer != null) {
                                AnonymousClass2.this.outputRenderer.release();
                                AnonymousClass2.this.outputRenderer = null;
                            }
                            AnonymousClass2.this.outputEglCore.makeNothingCurrent();
                            AnonymousClass2.this.outputEglCore.releaseSurface(AnonymousClass2.this.outputEGLSurface);
                            AnonymousClass2.this.outputEglCore.release();
                            AnonymousClass2.this.outputEglCore = null;
                        }
                        semaphore.release();
                    }
                });
                try {
                    semaphore.acquire();
                } catch (InterruptedException e10) {
                    e10.printStackTrace();
                }
                this.inputGLHandler.getLooper().quit();
            }
        }
    }

    /* loaded from: classes7.dex */
    public enum ConfigKeys {
        ResourceDir("resource_dir");
        
        public String val;

        ConfigKeys(String str) {
            this.val = str;
        }

        public String value() {
            return this.val;
        }
    }

    public static void cleanFileCacheFromRoot(String str) {
        nativeCleanFileCacheFromRoot(str);
    }

    public static String deviceLevelEnumToLevelName(int i9) {
        HashMap hashMap = new HashMap();
        hashMap.put(5, ML_VERY_HIGH);
        hashMap.put(4, ML_HIGH);
        hashMap.put(3, ML_AND_MIDDLE);
        hashMap.put(2, "low");
        hashMap.put(1, ML_VERY_LOW);
        if (i9 > 5) {
            i9 = 5;
        }
        return hashMap.containsKey(Integer.valueOf(i9)) ? (String) hashMap.get(Integer.valueOf(i9)) : "unknown";
    }

    public static LightAgentBundleInfo getAgentBundleInfoByAgentName(String str) {
        return nativeGetAgentBundleInfoByAgentName(str);
    }

    public static boolean getAssetDegradeFlag() {
        ILightSDKServiceInterface iLightSDKServiceInterface = lightSDKServiceInterface;
        if (iLightSDKServiceInterface != null) {
            try {
                return iLightSDKServiceInterface.configGetAssetDegradeFlag();
            } catch (RemoteException e10) {
                LightLogUtil.e(TAG, "RemoteException:\n" + e10);
                return false;
            }
        }
        return degradeAsset;
    }

    public static int getPhonePrefLevel() {
        ILightSDKServiceInterface iLightSDKServiceInterface = lightSDKServiceInterface;
        if (iLightSDKServiceInterface != null) {
            try {
                return iLightSDKServiceInterface.configGetPhonePrefLevel();
            } catch (RemoteException e10) {
                LightLogUtil.e(TAG, "RemoteException:\n" + e10);
                return 0;
            }
        }
        try {
            if (appContext == null) {
                appContext = ((Application) Class.forName("android.app.ActivityThread").getMethod("currentApplication", new Class[0]).invoke(null, null)).getApplicationContext();
            }
            LightLogUtil.i(TAG, "config phoneLevel LEVEL : " + LightDeviceUtils.getPhonePerfLevel(appContext));
            return LightDeviceUtils.getPhonePerfLevel(appContext);
        } catch (Exception e11) {
            LightLogUtil.e(e11);
            return 3;
        }
    }

    public static String getPhonePrefLevelName() {
        return deviceLevelEnumToLevelName(getPhonePrefLevel());
    }

    public static String getResourceBundleLevelNameByAgentName(String str) {
        return (("BG_SEG_AGENT".equals(str) && Build.BRAND.toLowerCase().startsWith("huawei")) || Build.BRAND.toLowerCase().startsWith("honor")) ? "low" : getPhonePrefLevelName();
    }

    public static String getResourceBundleLevelNameByAgentNameWithCV(String str) {
        String resourceBundleLevelNameByAgentName = getResourceBundleLevelNameByAgentName(str);
        try {
            if (LightConstants.AgentType.BODY3D_POINT_AGENT.equals(str)) {
                int phonePrefLevel = getPhonePrefLevel();
                if (phonePrefLevel > 5) {
                    phonePrefLevel = 5;
                }
                if (phonePrefLevel < 1) {
                    phonePrefLevel = 3;
                }
                return new GYAIDeviceQuery().getBundleNameFromLevel(6 - phonePrefLevel);
            }
            return resourceBundleLevelNameByAgentName;
        } catch (Exception e10) {
            LightLogUtil.e(TAG, "Get LightCV Bundle Level Exception:\n" + e10);
            return resourceBundleLevelNameByAgentName;
        }
    }

    private native void nativeAddExternalRenderCallback(String str, ExternalRenderCallback externalRenderCallback);

    private native void nativeCleanFileCacheForKey(String str);

    public static native void nativeCleanFileCacheFromRoot(String str);

    private native void nativeClearAICachedData();

    private native void nativeFinalize();

    private native void nativeFreeCache();

    private native LightAIDataWrapper nativeGetAIData(String[] strArr, int i9);

    private native String nativeGetAbnormalFrameDetectResult();

    public static native LightAgentBundleInfo nativeGetAgentBundleInfoByAgentName(String str);

    private native String nativeGetConfigData();

    private native boolean nativeGetDisableRendererFlag();

    private native LightFaceData nativeGetFaceData();

    private native LightFaceFeature[] nativeGetFaceFeature();

    private native PerformanceData nativeGetPerformanceData();

    private static native String nativeGetResourceBundleLevelNameByAgentName(String str);

    private native void nativeOnPause();

    private native void nativeOnResume();

    private static native void nativeRegisterFont(FontAsset fontAsset, String str);

    private native void nativeRemoveExternalRenderCallback(String str);

    private native void nativeReplaceAIData(LightAIDataWrapper lightAIDataWrapper);

    private native void nativeSetAIDataListener(OnAIDataListener onAIDataListener);

    private native void nativeSetAbnormalFrameDetectFrequency(int i9);

    private native void nativeSetBGMusicHidden(boolean z10);

    private native void nativeSetDefaultBeautyVersion(String str);

    private native void nativeSetDelegateAgentRequestListener(OnDelegateAgentRequestListener onDelegateAgentRequestListener);

    private native void nativeSetDelegateAgentResult(LightDelegateAgentRequest lightDelegateAgentRequest, boolean z10, String str);

    private native void nativeSetDetectShorterEdgeLength(int i9, String str);

    private native void nativeSetDisableRendererFlag(boolean z10);

    private native void nativeSetDowngradeStrategy(String str, int i9);

    private native void nativeSetExternalFaceData(@NonNull LightFaceData lightFaceData);

    private native void nativeSetExternalRenderCallback(ExternalRenderCallback externalRenderCallback);

    private native void nativeSetHorizontalFov(float f10);

    private native void nativeSetLightAIModelPath(String str, String str2, String str3);

    private native void nativeSetLoadAssetListener(OnLoadAssetListener onLoadAssetListener);

    private native void nativeSetOnClickWatermarkListener(OnClickWatermarkListener onClickWatermarkListener);

    private native void nativeSetPreInitAgents(String[] strArr);

    private native void nativeSetPredictNextFrame(boolean z10);

    private native void nativeSetPredictNextTime(long j10);

    private native void nativeSetSyncInitFlag(boolean z10, String str);

    private native void nativeSetSyncMode(boolean z10);

    private native void nativeSetTipsStatusListener(OnTipsStatusListener onTipsStatusListener);

    private native void nativeSetWatermarkDataListener(String str, OnWatermarkDataListener onWatermarkDataListener);

    public static void setAssetDowngradeFlag(boolean z10) {
        ILightSDKServiceInterface iLightSDKServiceInterface = lightSDKServiceInterface;
        if (iLightSDKServiceInterface != null) {
            try {
                iLightSDKServiceInterface.configSetAssetDowngradeFlag(z10);
                return;
            } catch (RemoteException e10) {
                LightLogUtil.e(TAG, "RemoteException:\n" + e10);
                return;
            }
        }
        degradeAsset = z10;
    }

    private native void setConfigData(String str);

    public static void setLightSDKServiceInterface(ILightSDKServiceInterface iLightSDKServiceInterface) {
        lightSDKServiceInterface = iLightSDKServiceInterface;
    }

    public void CleanFileCacheForKey(String str) {
        ILightSDKServiceInterface iLightSDKServiceInterface = lightSDKServiceInterface;
        if (iLightSDKServiceInterface != null) {
            try {
                iLightSDKServiceInterface.configCleanFileCacheForKey(this.instanceId, str);
                return;
            } catch (RemoteException e10) {
                LightLogUtil.e(TAG, "RemoteException:\n" + e10);
                return;
            }
        }
        nativeCleanFileCacheForKey(str);
    }

    public void addExternalRenderCallback(String str, ExternalRenderCallback externalRenderCallback) {
        ILightSDKServiceInterface iLightSDKServiceInterface = lightSDKServiceInterface;
        if (iLightSDKServiceInterface != null) {
            try {
                iLightSDKServiceInterface.configAddExternalRenderCallback(this.instanceId, str, externalRenderCallback == null ? null : new AnonymousClass2(externalRenderCallback));
                return;
            } catch (RemoteException e10) {
                LightLogUtil.e(TAG, "RemoteException:\n" + e10);
                return;
            }
        }
        nativeAddExternalRenderCallback(str, externalRenderCallback);
    }

    public void clearAICachedData() {
        ILightSDKServiceInterface iLightSDKServiceInterface = lightSDKServiceInterface;
        if (iLightSDKServiceInterface != null) {
            try {
                iLightSDKServiceInterface.configClearAICachedData(this.instanceId);
                return;
            } catch (RemoteException e10) {
                LightLogUtil.e(TAG, "RemoteException:\n" + e10);
                return;
            }
        }
        nativeClearAICachedData();
    }

    public int deviceLevelNameToLevelEnum(String str) {
        HashMap hashMap = new HashMap();
        hashMap.put(ML_VERY_HIGH, 5);
        hashMap.put(ML_HIGH, 4);
        hashMap.put(ML_AND_MIDDLE, 3);
        hashMap.put("low", 2);
        hashMap.put(ML_VERY_LOW, 1);
        if (hashMap.containsKey(str)) {
            return ((Integer) hashMap.get(str)).intValue();
        }
        return -1;
    }

    protected void finalize() throws Throwable {
        super.finalize();
    }

    public void freeCache() {
        ILightSDKServiceInterface iLightSDKServiceInterface = lightSDKServiceInterface;
        if (iLightSDKServiceInterface != null) {
            try {
                iLightSDKServiceInterface.configFreeCache(this.instanceId);
                return;
            } catch (RemoteException e10) {
                LightLogUtil.e(TAG, "RemoteException:\n" + e10);
                return;
            }
        }
        nativeFreeCache();
    }

    public LightAIDataWrapper getAIData(String[] strArr, int i9) {
        ILightSDKServiceInterface iLightSDKServiceInterface = lightSDKServiceInterface;
        if (iLightSDKServiceInterface != null) {
            try {
                return iLightSDKServiceInterface.configGetAIData(this.instanceId, strArr, i9);
            } catch (RemoteException e10) {
                LightLogUtil.e(TAG, "RemoteException:\n" + e10);
                return null;
            }
        }
        return nativeGetAIData(strArr, i9);
    }

    public String getAbnormalFrameDetectResult() {
        ILightSDKServiceInterface iLightSDKServiceInterface = lightSDKServiceInterface;
        if (iLightSDKServiceInterface != null) {
            try {
                return iLightSDKServiceInterface.cameraConfigGetAbnormalFrameDetectResult(this.instanceId);
            } catch (RemoteException e10) {
                LightLogUtil.e(TAG, "RemoteException:\n" + e10);
                return null;
            }
        }
        return nativeGetAbnormalFrameDetectResult();
    }

    public HashMap<String, String> getConfigData() {
        HashMap<String, String> hashMap = new HashMap<>();
        ILightSDKServiceInterface iLightSDKServiceInterface = lightSDKServiceInterface;
        if (iLightSDKServiceInterface != null) {
            try {
                return LightDataUtils.bundle2HashMap(iLightSDKServiceInterface.configGetConfigData(this.instanceId));
            } catch (RemoteException e10) {
                LightLogUtil.e(TAG, "RemoteException:\n" + e10);
                return hashMap;
            }
        }
        try {
            JSONObject jSONObject = new JSONObject(nativeGetConfigData());
            Iterator<String> keys = jSONObject.keys();
            while (keys.hasNext()) {
                String next = keys.next();
                hashMap.put(next, jSONObject.getString(next));
            }
            return hashMap;
        } catch (JSONException e11) {
            e11.printStackTrace();
            return hashMap;
        }
    }

    public boolean getDisableRendererFlag() {
        ILightSDKServiceInterface iLightSDKServiceInterface = lightSDKServiceInterface;
        if (iLightSDKServiceInterface != null) {
            try {
                return iLightSDKServiceInterface.configGetDisableRendererFlag(this.instanceId);
            } catch (RemoteException e10) {
                LightLogUtil.e(TAG, "RemoteException:\n" + e10);
                return false;
            }
        }
        return nativeGetDisableRendererFlag();
    }

    public LightFaceData getFaceData() {
        ILightSDKServiceInterface iLightSDKServiceInterface = lightSDKServiceInterface;
        if (iLightSDKServiceInterface != null) {
            try {
                return iLightSDKServiceInterface.configGetFaceData(this.instanceId);
            } catch (RemoteException e10) {
                LightLogUtil.e(TAG, "RemoteException:\n" + e10);
                return null;
            }
        }
        return nativeGetFaceData();
    }

    public List<LightFaceFeature> getFaceFeature() {
        ILightSDKServiceInterface iLightSDKServiceInterface = lightSDKServiceInterface;
        if (iLightSDKServiceInterface != null) {
            try {
                return iLightSDKServiceInterface.configGetFaceFeature(this.instanceId);
            } catch (RemoteException e10) {
                LightLogUtil.e(TAG, "RemoteException:\n" + e10);
                return new ArrayList();
            }
        }
        ArrayList arrayList = new ArrayList();
        LightFaceFeature[] nativeGetFaceFeature = nativeGetFaceFeature();
        return nativeGetFaceFeature != null ? Arrays.asList(nativeGetFaceFeature) : arrayList;
    }

    public int getInstanceId() {
        return this.instanceId;
    }

    public PerformanceData getPerformanceData() {
        ILightSDKServiceInterface iLightSDKServiceInterface = lightSDKServiceInterface;
        if (iLightSDKServiceInterface != null) {
            try {
                return iLightSDKServiceInterface.configGetPerformanceData(this.instanceId);
            } catch (RemoteException e10) {
                LightLogUtil.e(TAG, "RemoteException:\n" + e10);
                return null;
            }
        }
        return nativeGetPerformanceData();
    }

    public native void nativeSetLightAIModelPathInfo(String str, LightAgentBundleInfo lightAgentBundleInfo);

    public native void nativeSetRenderSize(int i9, int i10);

    public void onPause() {
        ILightSDKServiceInterface iLightSDKServiceInterface = lightSDKServiceInterface;
        if (iLightSDKServiceInterface != null) {
            try {
                iLightSDKServiceInterface.configOnPause(this.instanceId);
                return;
            } catch (RemoteException e10) {
                LightLogUtil.e(TAG, "RemoteException:\n" + e10);
                return;
            }
        }
        nativeOnPause();
    }

    public void onResume() {
        ILightSDKServiceInterface iLightSDKServiceInterface = lightSDKServiceInterface;
        if (iLightSDKServiceInterface != null) {
            try {
                iLightSDKServiceInterface.configOnResume(this.instanceId);
                return;
            } catch (RemoteException e10) {
                LightLogUtil.e(TAG, "RemoteException:\n" + e10);
                return;
            }
        }
        nativeOnResume();
    }

    public void performFinalize() {
        ILightSDKServiceInterface iLightSDKServiceInterface = lightSDKServiceInterface;
        if (iLightSDKServiceInterface != null) {
            try {
                iLightSDKServiceInterface.configPerformFinalize(this.instanceId);
            } catch (RemoteException e10) {
                e10.printStackTrace();
            }
        } else if (this.nativeHandle != 0) {
            nativeFinalize();
        }
    }

    public void registerFont(String str, String str2, String str3) {
        registerFont(new FontAsset(str, str2), str3);
    }

    public void removeExternalRenderCallback(String str) {
        ILightSDKServiceInterface iLightSDKServiceInterface = lightSDKServiceInterface;
        if (iLightSDKServiceInterface != null) {
            try {
                iLightSDKServiceInterface.configRemoveExternalRenderCallback(this.instanceId, str);
                return;
            } catch (RemoteException e10) {
                LightLogUtil.e(TAG, "RemoteException:\n" + e10);
                return;
            }
        }
        nativeRemoveExternalRenderCallback(str);
    }

    public void replaceAIData(LightAIDataWrapper lightAIDataWrapper) {
        ILightSDKServiceInterface iLightSDKServiceInterface = lightSDKServiceInterface;
        if (iLightSDKServiceInterface != null) {
            try {
                iLightSDKServiceInterface.configReplaceAIData(this.instanceId, lightAIDataWrapper);
                return;
            } catch (RemoteException e10) {
                LightLogUtil.e(TAG, "RemoteException:\n" + e10);
                return;
            }
        }
        nativeReplaceAIData(lightAIDataWrapper);
    }

    public void setAIDataListener(final OnAIDataListener onAIDataListener) {
        ILightSDKServiceInterface iLightSDKServiceInterface = lightSDKServiceInterface;
        if (iLightSDKServiceInterface != null) {
            try {
                iLightSDKServiceInterface.configSetAIDataListener(this.instanceId, onAIDataListener == null ? null : new AIDLOnAIDataListener.Stub() { // from class: org.light.Config.7
                    @Override // org.light.listener.AIDLOnAIDataListener
                    public void onBodyDataUpdated(List<BodyData> list) throws RemoteException {
                        try {
                            onAIDataListener.onBodyDataUpdated(list);
                        } catch (Throwable th2) {
                            LightLogUtil.e(Config.TAG, "onBodyDataUpdated:\n" + th2);
                        }
                    }

                    @Override // org.light.listener.AIDLOnAIDataListener
                    public void onFaceDataUpdated(List<FaceData> list) throws RemoteException {
                        try {
                            onAIDataListener.onFaceDataUpdated(list);
                        } catch (Throwable th2) {
                            LightLogUtil.e(Config.TAG, "onFaceDataUpdated:\n" + th2);
                        }
                    }

                    @Override // org.light.listener.AIDLOnAIDataListener
                    public void onHandDataUpdated(List<HandData> list) throws RemoteException {
                        try {
                            onAIDataListener.onHandDataUpdated(list);
                        } catch (Throwable th2) {
                            LightLogUtil.e(Config.TAG, "onHandDataUpdated:\n" + th2);
                        }
                    }
                });
                return;
            } catch (RemoteException e10) {
                LightLogUtil.e(TAG, "RemoteException:\n" + e10);
                return;
            }
        }
        nativeSetAIDataListener(onAIDataListener);
    }

    public void setAbnormalFrameDetectFrequency(int i9) {
        ILightSDKServiceInterface iLightSDKServiceInterface = lightSDKServiceInterface;
        if (iLightSDKServiceInterface != null) {
            try {
                iLightSDKServiceInterface.cameraConfigSetAbnormalFrameDetectFrequency(this.instanceId, i9);
                return;
            } catch (RemoteException e10) {
                LightLogUtil.e(TAG, "RemoteException:\n" + e10);
                return;
            }
        }
        nativeSetAbnormalFrameDetectFrequency(i9);
    }

    public void setBGMusicHidden(boolean z10) {
        ILightSDKServiceInterface iLightSDKServiceInterface = lightSDKServiceInterface;
        if (iLightSDKServiceInterface != null) {
            try {
                iLightSDKServiceInterface.configSetBGMusicHidden(this.instanceId, z10);
                return;
            } catch (RemoteException e10) {
                LightLogUtil.e(TAG, "RemoteException:\n" + e10);
                return;
            }
        }
        nativeSetBGMusicHidden(z10);
    }

    public void setConfigData(Map<String, String> map) {
        ILightSDKServiceInterface iLightSDKServiceInterface = lightSDKServiceInterface;
        if (iLightSDKServiceInterface != null) {
            try {
                iLightSDKServiceInterface.configSetConfigData(this.instanceId, LightDataUtils.map2Bundle(map));
                return;
            } catch (RemoteException e10) {
                LightLogUtil.e(TAG, "RemoteException:\n" + e10);
                return;
            }
        }
        long currentTimeMillis = System.currentTimeMillis();
        JSONObject jSONObject = new JSONObject();
        long currentTimeMillis2 = System.currentTimeMillis();
        synchronized (map) {
            for (Map.Entry<String, String> entry : map.entrySet()) {
                try {
                    jSONObject.put(entry.getKey(), entry.getValue());
                } catch (JSONException e11) {
                    e11.printStackTrace();
                }
            }
        }
        long currentTimeMillis3 = System.currentTimeMillis();
        String jSONObject2 = jSONObject.toString();
        long currentTimeMillis4 = System.currentTimeMillis();
        setConfigData(jSONObject2);
        LightLogUtil.d(TAG, "setConfigData, json data:" + map);
        long currentTimeMillis5 = System.currentTimeMillis();
        LightLogUtil.i(TAG, "[performance] setConfigData cost time:" + (currentTimeMillis5 - currentTimeMillis) + "\n[performance]setConfigData new JSONObject cost time:" + (currentTimeMillis2 - currentTimeMillis) + "\n[performance]setConfigData entryset cost time:" + (currentTimeMillis3 - currentTimeMillis2) + "\n[performance]setConfigData json2string cost time:" + (currentTimeMillis4 - currentTimeMillis3) + "\n[performance]setConfigData  nativeSetConfigData cost time:" + (currentTimeMillis5 - currentTimeMillis4));
    }

    public void setDefaultBeautyVersion(String str) {
        ILightSDKServiceInterface iLightSDKServiceInterface = lightSDKServiceInterface;
        if (iLightSDKServiceInterface != null) {
            try {
                iLightSDKServiceInterface.configSetDefaultBeautyVersion(this.instanceId, str);
                return;
            } catch (RemoteException e10) {
                LightLogUtil.e(TAG, "RemoteException:\n" + e10);
                return;
            }
        }
        nativeSetDefaultBeautyVersion(str);
    }

    public void setDelegateAgentRequestListener(final OnDelegateAgentRequestListener onDelegateAgentRequestListener) {
        if (lightSDKServiceInterface != null) {
            if (Build.VERSION.SDK_INT < 27) {
                Log.e(TAG, "Android 8.1以下暂不支持共享内存, 跨进程模式下无法传输大数据AgentResult");
                return;
            }
            final Handler handler = new Handler(Looper.getMainLooper());
            try {
                lightSDKServiceInterface.configSetDelegateAgentRequestListener(this.instanceId, onDelegateAgentRequestListener == null ? null : new AIDLOnDelegateAgentRequestListener.Stub() { // from class: org.light.Config.8
                    @Override // org.light.listener.AIDLOnDelegateAgentRequestListener
                    public void OnDelegateAgentRequest(final LightDelegateAgentRequest lightDelegateAgentRequest) throws RemoteException {
                        try {
                            handler.post(new Runnable() { // from class: org.light.Config.8.1
                                @Override // java.lang.Runnable
                                public void run() {
                                    lightDelegateAgentRequest.getDataFromSharedMemory();
                                    onDelegateAgentRequestListener.OnDelegateAgentRequest(lightDelegateAgentRequest);
                                }
                            });
                        } catch (Throwable th2) {
                            LightLogUtil.e(Config.TAG, "OnDelegateAgentRequest:\n" + th2);
                        }
                    }
                });
                return;
            } catch (RemoteException e10) {
                LightLogUtil.e(TAG, "RemoteException:\n" + e10);
                return;
            }
        }
        nativeSetDelegateAgentRequestListener(onDelegateAgentRequestListener);
    }

    public void setDelegateAgentResult(LightDelegateAgentRequest lightDelegateAgentRequest, boolean z10, String str) {
        if (lightSDKServiceInterface != null) {
            if (Build.VERSION.SDK_INT < 27) {
                Log.e(TAG, "Android 8.1以下暂不支持共享内存, 跨进程模式下无法传输大数据AgentResult");
                return;
            }
            lightDelegateAgentRequest.putDataToSharedMemory();
            lightDelegateAgentRequest.camera_frame_data_ = null;
            try {
                lightSDKServiceInterface.configSetDelegateAgentResult(this.instanceId, lightDelegateAgentRequest, z10, str);
                return;
            } catch (RemoteException e10) {
                e10.printStackTrace();
                return;
            }
        }
        nativeSetDelegateAgentResult(lightDelegateAgentRequest, z10, str);
    }

    public void setDetectShorterEdgeLength(int i9, String str) {
        ILightSDKServiceInterface iLightSDKServiceInterface = lightSDKServiceInterface;
        if (iLightSDKServiceInterface != null) {
            try {
                iLightSDKServiceInterface.configSetDetectShorterEdgeLength(this.instanceId, i9, str);
                return;
            } catch (RemoteException e10) {
                LightLogUtil.e(TAG, "RemoteException:\n" + e10);
                return;
            }
        }
        nativeSetDetectShorterEdgeLength(i9, str);
    }

    public void setDisableRendererFlag(boolean z10) {
        ILightSDKServiceInterface iLightSDKServiceInterface = lightSDKServiceInterface;
        if (iLightSDKServiceInterface != null) {
            try {
                iLightSDKServiceInterface.configSetDisableRendererFlag(this.instanceId, z10);
                return;
            } catch (RemoteException e10) {
                LightLogUtil.e(TAG, "RemoteException:\n" + e10);
                return;
            }
        }
        nativeSetDisableRendererFlag(z10);
    }

    public void setDowngradeStrategy(String str, int i9) {
        ILightSDKServiceInterface iLightSDKServiceInterface = lightSDKServiceInterface;
        if (iLightSDKServiceInterface != null) {
            try {
                iLightSDKServiceInterface.configSetDowngradeStrategy(this.instanceId, str, i9);
                return;
            } catch (RemoteException e10) {
                LightLogUtil.e(TAG, "RemoteException:\n" + e10);
                return;
            }
        }
        nativeSetDowngradeStrategy(str, i9);
    }

    public void setExternalFaceData(LightFaceData lightFaceData) {
        if (lightFaceData != null) {
            ILightSDKServiceInterface iLightSDKServiceInterface = lightSDKServiceInterface;
            if (iLightSDKServiceInterface != null) {
                try {
                    iLightSDKServiceInterface.configSetExternalFaceData(this.instanceId, lightFaceData);
                    return;
                } catch (RemoteException e10) {
                    LightLogUtil.e(TAG, "RemoteException:\n" + e10);
                    return;
                }
            }
            nativeSetExternalFaceData(lightFaceData);
        }
    }

    public void setExternalRenderCallback(ExternalRenderCallback externalRenderCallback) {
        ILightSDKServiceInterface iLightSDKServiceInterface = lightSDKServiceInterface;
        if (iLightSDKServiceInterface != null) {
            try {
                iLightSDKServiceInterface.configSetExternalRenderCallback(this.instanceId, externalRenderCallback == null ? null : new AnonymousClass1(externalRenderCallback));
                return;
            } catch (RemoteException e10) {
                LightLogUtil.e(TAG, "RemoteException:\n" + e10);
                return;
            }
        }
        nativeSetExternalRenderCallback(externalRenderCallback);
    }

    public void setHorizontalFov(float f10) {
        ILightSDKServiceInterface iLightSDKServiceInterface = lightSDKServiceInterface;
        if (iLightSDKServiceInterface != null) {
            try {
                iLightSDKServiceInterface.configSetHorizontalFov(this.instanceId, f10);
                return;
            } catch (RemoteException e10) {
                LightLogUtil.e(TAG, "RemoteException:\n" + e10);
                return;
            }
        }
        nativeSetHorizontalFov(f10);
    }

    public void setInstanceId(int i9) {
        this.instanceId = i9;
    }

    public void setLightAIModelPath(String str, LightAgentBundleInfo lightAgentBundleInfo) {
        if (lightAgentBundleInfo == null || lightAgentBundleInfo.notValid()) {
            return;
        }
        ILightSDKServiceInterface iLightSDKServiceInterface = lightSDKServiceInterface;
        if (iLightSDKServiceInterface != null) {
            try {
                iLightSDKServiceInterface.configSetLightAIModelPathByAgentInfo(this.instanceId, str, lightAgentBundleInfo);
                return;
            } catch (RemoteException e10) {
                LightLogUtil.e(TAG, "RemoteException:\n" + e10);
                return;
            }
        }
        nativeSetLightAIModelPathInfo(str, lightAgentBundleInfo);
    }

    public void setLightEngine(WeakReference<LightEngine> weakReference) {
        this.weakEngine = weakReference;
    }

    public void setLoadAssetListener(final OnLoadAssetListener onLoadAssetListener) {
        if (lightSDKServiceInterface != null) {
            try {
                final Handler handler = new Handler(Looper.getMainLooper());
                lightSDKServiceInterface.configSetLoadAssetListener(this.instanceId, onLoadAssetListener == null ? null : new AIDLOnLoadAssetListener.Stub() { // from class: org.light.Config.6
                    @Override // org.light.listener.AIDLOnLoadAssetListener
                    public void OnAssetDurationChange(final long j10) throws RemoteException {
                        handler.post(new Runnable() { // from class: org.light.Config.6.3
                            @Override // java.lang.Runnable
                            public void run() {
                                try {
                                    onLoadAssetListener.OnAssetDurationChange(j10);
                                } catch (Throwable th2) {
                                    LightLogUtil.e(Config.TAG, "OnAssetDurationChange:\n" + th2);
                                }
                            }
                        });
                    }

                    @Override // org.light.listener.AIDLOnLoadAssetListener
                    public void OnAssetProcessing(final Bundle bundle) throws RemoteException {
                        handler.post(new Runnable() { // from class: org.light.Config.6.2
                            @Override // java.lang.Runnable
                            public void run() {
                                try {
                                    onLoadAssetListener.OnAssetProcessing(LightDataUtils.bundle2HashMap(bundle));
                                } catch (Throwable th2) {
                                    LightLogUtil.e(Config.TAG, "OnAssetProcessing:\n" + th2);
                                }
                            }
                        });
                    }

                    @Override // org.light.listener.AIDLOnLoadAssetListener
                    public void OnLoadAssetError(final int i9) throws RemoteException {
                        handler.post(new Runnable() { // from class: org.light.Config.6.1
                            @Override // java.lang.Runnable
                            public void run() {
                                try {
                                    onLoadAssetListener.OnLoadAssetError(i9);
                                } catch (Throwable th2) {
                                    LightLogUtil.e(Config.TAG, "OnLoadAssetError:\n" + th2);
                                }
                            }
                        });
                    }
                });
                return;
            } catch (RemoteException e10) {
                LightLogUtil.e(TAG, "RemoteException:\n" + e10);
                return;
            }
        }
        nativeSetLoadAssetListener(onLoadAssetListener);
    }

    public void setOnClickWatermarkListener(final OnClickWatermarkListener onClickWatermarkListener) {
        ILightSDKServiceInterface iLightSDKServiceInterface = lightSDKServiceInterface;
        if (iLightSDKServiceInterface != null) {
            try {
                iLightSDKServiceInterface.configSetOnClickWatermarkListener(this.instanceId, onClickWatermarkListener == null ? null : new AIDLOnClickWatermarkListener.Stub() { // from class: org.light.Config.3
                    @Override // org.light.listener.AIDLOnClickWatermarkListener
                    public void onClickWatermark() throws RemoteException {
                        try {
                            onClickWatermarkListener.onClickWatermark();
                        } catch (Throwable th2) {
                            LightLogUtil.e(Config.TAG, "onClickWatermark:\n" + th2);
                        }
                    }
                });
                return;
            } catch (RemoteException e10) {
                LightLogUtil.e(TAG, "RemoteException:\n" + e10);
                return;
            }
        }
        nativeSetOnClickWatermarkListener(onClickWatermarkListener);
    }

    public void setPreInitAgents(String[] strArr) {
        ILightSDKServiceInterface iLightSDKServiceInterface = lightSDKServiceInterface;
        if (iLightSDKServiceInterface != null) {
            try {
                iLightSDKServiceInterface.configSetPreInitAgents(this.instanceId, strArr);
                return;
            } catch (RemoteException e10) {
                LightLogUtil.e(TAG, "RemoteException:\n" + e10);
                return;
            }
        }
        nativeSetPreInitAgents(strArr);
    }

    public void setPredictNextFrame(boolean z10) {
        ILightSDKServiceInterface iLightSDKServiceInterface = lightSDKServiceInterface;
        if (iLightSDKServiceInterface != null) {
            try {
                iLightSDKServiceInterface.configSetPredictNextFrame(this.instanceId, z10);
                return;
            } catch (RemoteException e10) {
                LightLogUtil.e(TAG, "RemoteException:\n" + e10);
                return;
            }
        }
        nativeSetPredictNextFrame(z10);
    }

    public void setPredictNextTime(long j10) {
        ILightSDKServiceInterface iLightSDKServiceInterface = lightSDKServiceInterface;
        if (iLightSDKServiceInterface != null) {
            try {
                iLightSDKServiceInterface.configSetPredictNextTime(this.instanceId, j10);
                return;
            } catch (RemoteException e10) {
                LightLogUtil.e(TAG, "RemoteException:\n" + e10);
                return;
            }
        }
        nativeSetPredictNextTime(j10);
    }

    public void setRenderSize(int i9, int i10) {
        ILightSDKServiceInterface iLightSDKServiceInterface = lightSDKServiceInterface;
        if (iLightSDKServiceInterface != null) {
            try {
                iLightSDKServiceInterface.configSetRenderSize(this.instanceId, i9, i10);
                return;
            } catch (RemoteException e10) {
                LightLogUtil.e(TAG, "RemoteException:\n" + e10);
                return;
            }
        }
        nativeSetRenderSize(i9, i10);
    }

    public native void setScriptOutputListener(OnScriptOutputListener onScriptOutputListener);

    public void setSyncInitFlag(boolean z10, String str) {
        ILightSDKServiceInterface iLightSDKServiceInterface = lightSDKServiceInterface;
        if (iLightSDKServiceInterface != null) {
            try {
                iLightSDKServiceInterface.configSetSyncInitFlag(this.instanceId, z10, str);
                return;
            } catch (RemoteException e10) {
                LightLogUtil.e(TAG, "RemoteException:\n" + e10);
                return;
            }
        }
        nativeSetSyncInitFlag(z10, str);
    }

    public void setSyncMode(boolean z10) {
        ILightSDKServiceInterface iLightSDKServiceInterface = lightSDKServiceInterface;
        if (iLightSDKServiceInterface != null) {
            try {
                iLightSDKServiceInterface.configSetSyncMode(this.instanceId, z10);
                return;
            } catch (RemoteException e10) {
                LightLogUtil.e(TAG, "RemoteException:\n" + e10);
                return;
            }
        }
        nativeSetSyncMode(z10);
    }

    public void setTipsStatusListener(final OnTipsStatusListener onTipsStatusListener) {
        ILightSDKServiceInterface iLightSDKServiceInterface = lightSDKServiceInterface;
        if (iLightSDKServiceInterface != null) {
            try {
                iLightSDKServiceInterface.configSetTipsStatusListener(this.instanceId, onTipsStatusListener == null ? null : new AIDLOnTipsStatusListener.Stub() { // from class: org.light.Config.5
                    @Override // org.light.listener.AIDLOnTipsStatusListener
                    public void tipsNeedHide(String str, String str2, int i9) throws RemoteException {
                        try {
                            onTipsStatusListener.tipsNeedHide(str, str2, i9);
                        } catch (Throwable th2) {
                            LightLogUtil.e(Config.TAG, "tipsNeedHide:\n" + th2);
                        }
                    }

                    @Override // org.light.listener.AIDLOnTipsStatusListener
                    public void tipsNeedShow(String str, String str2, int i9, int i10) throws RemoteException {
                        try {
                            onTipsStatusListener.tipsNeedShow(str, str2, i9, i10);
                        } catch (Throwable th2) {
                            LightLogUtil.e(Config.TAG, "tipsNeedShow:\n" + th2);
                        }
                    }
                });
                return;
            } catch (RemoteException e10) {
                LightLogUtil.e(TAG, "RemoteException:\n" + e10);
                return;
            }
        }
        nativeSetTipsStatusListener(onTipsStatusListener);
    }

    public void setWatermarkDataListener(String str, final OnWatermarkDataListener onWatermarkDataListener) {
        ILightSDKServiceInterface iLightSDKServiceInterface = lightSDKServiceInterface;
        if (iLightSDKServiceInterface != null) {
            try {
                iLightSDKServiceInterface.configSetWatermarkDataListener(this.instanceId, str, onWatermarkDataListener == null ? null : new AIDLOnWatermarkDataListener.Stub() { // from class: org.light.Config.4
                    @Override // org.light.listener.AIDLOnWatermarkDataListener
                    public String getData(String str2) throws RemoteException {
                        try {
                            return onWatermarkDataListener.getData(str2);
                        } catch (Throwable th2) {
                            LightLogUtil.e(Config.TAG, "OnWatermarkDataListener.getData:\n" + th2);
                            return null;
                        }
                    }
                });
                return;
            } catch (RemoteException e10) {
                LightLogUtil.e(TAG, "RemoteException:\n" + e10);
                return;
            }
        }
        nativeSetWatermarkDataListener(str, onWatermarkDataListener);
    }

    public native void setYTDataListener(YTDataListener yTDataListener);

    public static void registerFont(FontAsset fontAsset, String str) {
        ILightSDKServiceInterface iLightSDKServiceInterface = lightSDKServiceInterface;
        if (iLightSDKServiceInterface != null) {
            try {
                iLightSDKServiceInterface.configRegisterFont(fontAsset, str);
                return;
            } catch (RemoteException e10) {
                LightLogUtil.e(TAG, "RemoteException:\n" + e10);
                return;
            }
        }
        nativeRegisterFont(fontAsset, str);
    }

    public void setLightAIModelPath(String str, String str2) {
        ILightSDKServiceInterface iLightSDKServiceInterface = lightSDKServiceInterface;
        if (iLightSDKServiceInterface != null) {
            try {
                iLightSDKServiceInterface.configSetLightAIModelPath(this.instanceId, str, str2);
                return;
            } catch (RemoteException e10) {
                LightLogUtil.e(TAG, "RemoteException:\n" + e10);
                return;
            }
        }
        setLightAIModelPath(str, getResourceBundleLevelNameByAgentName(str2), str2);
    }

    public void setLightAIModelPath(String str, String str2, String str3) {
        ILightSDKServiceInterface iLightSDKServiceInterface = lightSDKServiceInterface;
        if (iLightSDKServiceInterface != null) {
            try {
                iLightSDKServiceInterface.configSetLightAIModelPathWithLevel(this.instanceId, str, str2, str3);
                return;
            } catch (RemoteException e10) {
                LightLogUtil.e(TAG, "RemoteException:\n" + e10);
                return;
            }
        }
        nativeSetLightAIModelPath(str, str2, str3);
    }
}
