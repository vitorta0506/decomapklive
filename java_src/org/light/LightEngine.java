package org.light;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
import android.os.Bundle;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.IBinder;
import android.os.RemoteException;
import java.lang.ref.WeakReference;
import java.util.HashSet;
import java.util.Set;
import org.light.ILightSDKServiceInterface;
import org.light.bean.WMElement;
import org.light.lightAssetKit.LightAssetDataContext;
import org.light.report.LightReportManager;
import org.light.service.InstanceId;
import org.light.service.LightSDKService;
import org.light.service.SingleLock;
import org.light.utils.LightLogUtil;
import org.light.utils.ThreadUtils;
/* loaded from: classes7.dex */
public class LightEngine {
    private static final String SERVICE_CONNECTION_STATUS_BINDING_DIED = "SERVICE_CONNECTION_STATUS_BINDING_DIED";
    private static final String SERVICE_CONNECTION_STATUS_CONNTECTED = "SERVICE_CONNECTION_STATUS_CONNTECTED";
    private static final String SERVICE_CONNECTION_STATUS_DISCONNTECTED = "SERVICE_CONNECTION_STATUS_DISCONNTECTED";
    private static final String SERVICE_CONNECTION_STATUS_NULL_BINDING = "SERVICE_CONNECTION_STATUS_NULL_BINDING";
    private static final String TAG = "LightEngine";
    private static final int WAIT_TIMEOUT = 500;
    private static Context appContext;
    private static String appEntry;
    private static String appID;
    private static int lightSDKPid;
    private static ILightSDKServiceInterface lightSDKServiceInterface;
    private static String sdkVersion;
    public static Object lock = new Object();
    private static final Set<SDKServiceRuntimeErrorCallback> serviceCallbacks = new HashSet();
    private static final SingleLock lightSDKServiceLock = new SingleLock();
    private static final IBinder.DeathRecipient deathRecipient = new IBinder.DeathRecipient() { // from class: org.light.LightEngine.1
        @Override // android.os.IBinder.DeathRecipient
        public void binderDied() {
            LightLogUtil.e(LightEngine.TAG, "binderDied");
            if (LightEngine.lightSDKServiceInterface != null) {
                LightEngine.lightSDKServiceInterface.asBinder().unlinkToDeath(this, 0);
            }
            String unused = LightEngine.serviceConnectionStatus = LightEngine.SERVICE_CONNECTION_STATUS_BINDING_DIED;
            synchronized (LightEngine.serviceCallbacks) {
                for (SDKServiceRuntimeErrorCallback sDKServiceRuntimeErrorCallback : LightEngine.serviceCallbacks) {
                    if (sDKServiceRuntimeErrorCallback != null) {
                        sDKServiceRuntimeErrorCallback.onServiceRuntimeError("binder died");
                    }
                }
                LightEngine.serviceCallbacks.clear();
            }
        }
    };
    private static volatile String serviceConnectionStatus = "UNDEFINED";
    private static final ServiceConnection serviceConnection = new ServiceConnection() { // from class: org.light.LightEngine.2
        @Override // android.content.ServiceConnection
        public void onBindingDied(ComponentName componentName) {
        }

        @Override // android.content.ServiceConnection
        public void onNullBinding(ComponentName componentName) {
            LightLogUtil.e(LightEngine.TAG, "onNullBinding()");
            String unused = LightEngine.serviceConnectionStatus = LightEngine.SERVICE_CONNECTION_STATUS_NULL_BINDING;
            LightEngine.lightSDKServiceLock.release();
        }

        @Override // android.content.ServiceConnection
        public void onServiceConnected(ComponentName componentName, IBinder iBinder) {
            LightLogUtil.d(LightEngine.TAG, "onServiceConnected()");
            try {
                iBinder.linkToDeath(LightEngine.deathRecipient, 0);
            } catch (Throwable th2) {
                LightLogUtil.e(LightEngine.TAG, "call linkToDeath exception:" + th2);
            }
            LightEngine.setLightSDKServiceInterfaceForCoreClasses(ILightSDKServiceInterface.Stub.asInterface(iBinder));
            String unused = LightEngine.serviceConnectionStatus = LightEngine.SERVICE_CONNECTION_STATUS_CONNTECTED;
            LightEngine.lightSDKServiceLock.release();
        }

        @Override // android.content.ServiceConnection
        public void onServiceDisconnected(ComponentName componentName) {
            LightLogUtil.e(LightEngine.TAG, "onServiceDisconnected()");
            String unused = LightEngine.serviceConnectionStatus = LightEngine.SERVICE_CONNECTION_STATUS_DISCONNTECTED;
            LightEngine.lightSDKServiceLock.release();
        }
    };
    private long nativeContext = 0;
    private int instanceId = 0;
    private LightSurface selfSurface = null;
    private CameraConfig selfCameraConfig = null;
    private int cameraControllerInstanceId = 0;
    private long cameraTextureTimestamp = -1;

    /* loaded from: classes7.dex */
    public interface SDKServiceCallback extends SDKServiceRuntimeErrorCallback {
        void onServiceCreateError(String str, boolean z10);

        void onServiceStarted(int i9);
    }

    /* loaded from: classes7.dex */
    public interface SDKServiceRuntimeErrorCallback {
        void onServiceRuntimeError(String str);
    }

    static {
        try {
            nativeInit();
        } catch (Error e10) {
            e10.printStackTrace();
        }
    }

    public static void addSDKServiceRuntimeErrorCallback(SDKServiceRuntimeErrorCallback sDKServiceRuntimeErrorCallback) {
        if (sDKServiceRuntimeErrorCallback != null) {
            Set<SDKServiceRuntimeErrorCallback> set = serviceCallbacks;
            synchronized (set) {
                set.add(sDKServiceRuntimeErrorCallback);
            }
        }
    }

    public static String appEntry() {
        return appEntry;
    }

    public static String appID() {
        return appID;
    }

    private static native int auth(Context context, String str, String str2, String str3);

    public static int componentLevel() {
        ILightSDKServiceInterface iLightSDKServiceInterface = lightSDKServiceInterface;
        if (iLightSDKServiceInterface != null) {
            try {
                return iLightSDKServiceInterface.lightEngineComponentLevel();
            } catch (RemoteException e10) {
                LightLogUtil.e(TAG, "RemoteException:\n" + e10);
                return 0;
            }
        }
        return nativeComponentLevel();
    }

    public static String getSdkVersion() {
        if (sdkVersion == null) {
            sdkVersion = version();
        }
        return sdkVersion;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void handleStartSdkService(Context context, Bundle bundle, SDKServiceCallback sDKServiceCallback) {
        if (serviceConnectionStatus.equals(SERVICE_CONNECTION_STATUS_CONNTECTED)) {
            LightLogUtil.d(TAG, "LightSDKService already connected");
            if (sDKServiceCallback != null) {
                sDKServiceCallback.onServiceStarted(lightSDKPid);
            }
        } else if (context == null) {
            if (sDKServiceCallback != null) {
                sDKServiceCallback.onServiceCreateError("startSDKService but context == null", true);
                LightLogUtil.e(TAG, "startSDKService but context == null");
            }
        } else {
            Intent intent = new Intent(context, LightSDKService.class);
            if (bundle != null) {
                intent.putExtras(bundle);
            }
            if (sDKServiceCallback != null) {
                Set<SDKServiceRuntimeErrorCallback> set = serviceCallbacks;
                synchronized (set) {
                    set.add(sDKServiceCallback);
                }
            }
            if (context.bindService(intent, serviceConnection, 65)) {
                waitBinderConnect(sDKServiceCallback);
                return;
            }
            LightLogUtil.e(TAG, "bindService failed");
            if (sDKServiceCallback != null) {
                sDKServiceCallback.onServiceCreateError("bindService failed", true);
            }
        }
    }

    public static void init() {
        ILightSDKServiceInterface iLightSDKServiceInterface = lightSDKServiceInterface;
        if (iLightSDKServiceInterface != null) {
            try {
                iLightSDKServiceInterface.lightEngineInit();
                return;
            } catch (RemoteException e10) {
                LightLogUtil.e(TAG, "RemoteException:\n" + e10);
                return;
            }
        }
        LightSurface.init();
        VideoOutput.init();
    }

    public static int initAuth(Context context, String str, String str2, String str3) {
        appContext = context;
        appID = str2;
        appEntry = str3;
        ILightSDKServiceInterface iLightSDKServiceInterface = lightSDKServiceInterface;
        if (iLightSDKServiceInterface != null) {
            try {
                return iLightSDKServiceInterface.lightEngineInitAuth(str, str2, str3);
            } catch (RemoteException e10) {
                LightLogUtil.e(TAG, "RemoteException:\n" + e10);
                return -2000;
            }
        }
        return auth(context, context != null ? context.getPackageName() : "", str, str2);
    }

    public static void initContext(Context context) {
        appContext = context;
    }

    public static void initDeviceConfig(String str) {
        initDeviceConfig(str, "");
    }

    public static boolean isDeviceAbilitySupported(String str) {
        ILightSDKServiceInterface iLightSDKServiceInterface = lightSDKServiceInterface;
        if (iLightSDKServiceInterface != null) {
            try {
                return iLightSDKServiceInterface.lightEngineIsDeviceAbilitySupported(str);
            } catch (RemoteException e10) {
                LightLogUtil.e(TAG, "RemoteException:\n" + e10);
                return false;
            }
        }
        return nativeIsDeviceAbilitySupported(str);
    }

    public static boolean loadLibraryForSDKService(Bundle bundle) {
        if (lightSDKServiceInterface != null) {
            if (!DeviceSupportUtil.checkCrossProcessModeAvailable(bundle)) {
                DeviceSupportUtil.setSoLoadSuccess(LightSDKService.loadSo(bundle) != LightSDKService.LoadSOResult.LoadFailed);
            }
            if (!DeviceSupportUtil.isSoLoadSuccess()) {
                LightLogUtil.e(TAG, "loadLibraryForSDKService failed");
                return false;
            }
            try {
                return lightSDKServiceInterface.lightEngineLoadLibraryForSDKService(bundle);
            } catch (RemoteException e10) {
                e10.printStackTrace();
            }
        }
        return false;
    }

    public static LightEngine make(VideoOutputConfig videoOutputConfig, AudioOutputConfig audioOutputConfig, RendererConfig rendererConfig) {
        ILightSDKServiceInterface iLightSDKServiceInterface = lightSDKServiceInterface;
        LightEngine lightEngine = null;
        if (iLightSDKServiceInterface != null) {
            try {
                InstanceId lightEngineMake = iLightSDKServiceInterface.lightEngineMake(videoOutputConfig, audioOutputConfig, rendererConfig);
                if (lightEngineMake != null) {
                    LightEngine lightEngine2 = new LightEngine();
                    try {
                        lightEngine2.setInstanceId(lightEngineMake.f56459id);
                        lightEngine = lightEngine2;
                    } catch (RemoteException e10) {
                        e = e10;
                        lightEngine = lightEngine2;
                        LightLogUtil.e(TAG, "RemoteException:\n" + e);
                        LightLogUtil.e(TAG, String.format("LightEngine:%x init success", Integer.valueOf(System.identityHashCode(lightEngine))));
                        return lightEngine;
                    }
                }
            } catch (RemoteException e11) {
                e = e11;
            }
            LightLogUtil.e(TAG, String.format("LightEngine:%x init success", Integer.valueOf(System.identityHashCode(lightEngine))));
            return lightEngine;
        } else if (appContext == null) {
            return null;
        } else {
            LightEngine makeEngine = makeEngine(videoOutputConfig, audioOutputConfig, rendererConfig);
            ThreadUtils.executeTask(new Runnable() { // from class: org.light.LightEngine.3
                @Override // java.lang.Runnable
                public void run() {
                    DeviceSupportUtil.isAbilityDeviceSupport("");
                }
            });
            LightLogUtil.e(TAG, String.format("LightEngine:%x init success", Integer.valueOf(System.identityHashCode(makeEngine))));
            return makeEngine;
        }
    }

    private static native LightEngine makeEngine(VideoOutputConfig videoOutputConfig, AudioOutputConfig audioOutputConfig, RendererConfig rendererConfig);

    private native AudioOutput nativeAudioOutput();

    private static native int nativeComponentLevel();

    private native void nativeFinalize();

    private native int nativeGetOriginTexture();

    private native int nativeGetResultTexture();

    private static native void nativeInit();

    private static native void nativeInitDeviceConfig(String str, String str2);

    private static native boolean nativeIsDeviceAbilitySupported(String str);

    private native void nativeRelease();

    private native CameraController nativeSetAssetForCamera(LightAsset lightAsset);

    private native MovieController nativeSetAssetForMovie(LightAsset lightAsset);

    private native boolean nativeSetSurface(LightSurface lightSurface);

    private native Controller[] nativeSetTemplateAssets(TemplateClip[] templateClipArr);

    private static native String nativeVersion();

    private native VideoOutput nativeVideoOutput();

    public static void removeSDKServiceRuntimeErrorCallback(SDKServiceRuntimeErrorCallback sDKServiceRuntimeErrorCallback) {
        if (sDKServiceRuntimeErrorCallback != null) {
            Set<SDKServiceRuntimeErrorCallback> set = serviceCallbacks;
            synchronized (set) {
                set.remove(sDKServiceRuntimeErrorCallback);
            }
        }
    }

    public static void setAppEntry(String str) {
        appEntry = str;
    }

    public static void setCrossProcessModeEnabled(boolean z10) {
        if (z10) {
            ILightSDKServiceInterface iLightSDKServiceInterface = lightSDKServiceInterface;
            if (iLightSDKServiceInterface == null) {
                LightLogUtil.e(LightEngine.class.getSimpleName(), "enable cross process mode but lightSDKServiceInterface == null, please call startSDKService() first");
                return;
            } else {
                setLightSDKServiceInterfaceForCoreClasses(iLightSDKServiceInterface);
                return;
            }
        }
        setLightSDKServiceInterfaceForCoreClasses(null);
    }

    public static void setLightSDKServiceInterface(ILightSDKServiceInterface iLightSDKServiceInterface) {
        lightSDKServiceInterface = iLightSDKServiceInterface;
        if (iLightSDKServiceInterface != null) {
            try {
                lightSDKPid = iLightSDKServiceInterface.lightServicePid();
                LightLogUtil.d(TAG, "lightSDKPid:" + lightSDKPid);
                return;
            } catch (RemoteException e10) {
                LightLogUtil.e(TAG, "RemoteException:\n" + e10);
                return;
            }
        }
        lightSDKPid = 0;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void setLightSDKServiceInterfaceForCoreClasses(ILightSDKServiceInterface iLightSDKServiceInterface) {
        setLightSDKServiceInterface(iLightSDKServiceInterface);
        LightSurface.setLightSDKServiceInterface(iLightSDKServiceInterface);
        LightAsset.setLightSDKServiceInterface(iLightSDKServiceInterface);
        Config.setLightSDKServiceInterface(iLightSDKServiceInterface);
        Controller.setLightSDKServiceInterface(iLightSDKServiceInterface);
        VideoOutput.setLightSDKServiceInterface(iLightSDKServiceInterface);
        AudioOutput.setLightSDKServiceInterface(iLightSDKServiceInterface);
        PerformanceMonitor.setLightSDKServiceInterface(iLightSDKServiceInterface);
        LightReportManager.setLightSDKServiceInterface(iLightSDKServiceInterface);
        LightLogUtil.setLightSDKServiceInterface(iLightSDKServiceInterface);
        DebugUtils.setLightSDKServiceInterface(iLightSDKServiceInterface);
        WMElement.setLightSDKServiceInterface(iLightSDKServiceInterface);
        LightAssetDataContext.setLightSDKServiceInterface(iLightSDKServiceInterface);
        NativeBuffer.setLightSDKServiceInterface(iLightSDKServiceInterface);
    }

    public static void startSDKService(final Context context, final Bundle bundle, final SDKServiceCallback sDKServiceCallback) {
        LightLogUtil.d(TAG, "startSDKService");
        HandlerThread handlerThread = new HandlerThread("SDKServiceStartHT");
        handlerThread.start();
        final Handler handler = new Handler(handlerThread.getLooper());
        handler.post(new Runnable() { // from class: org.light.LightEngine.4
            @Override // java.lang.Runnable
            public void run() {
                Bundle bundle2 = bundle;
                if (bundle2 != null && !DeviceSupportUtil.checkCrossProcessModeAvailable(bundle2)) {
                    LightLogUtil.e(LightEngine.TAG, "startSDKService NativeBuffer not Available");
                    SDKServiceCallback sDKServiceCallback2 = sDKServiceCallback;
                    if (sDKServiceCallback2 != null) {
                        sDKServiceCallback2.onServiceCreateError("NativeBuffer not Available", false);
                        return;
                    }
                    return;
                }
                LightEngine.handleStartSdkService(context, bundle, sDKServiceCallback);
                handler.getLooper().quit();
            }
        });
    }

    public static void stopSDKService(Context context) {
        LightLogUtil.d(TAG, "stopSDKService");
        Set<SDKServiceRuntimeErrorCallback> set = serviceCallbacks;
        synchronized (set) {
            set.clear();
        }
        ServiceConnection serviceConnection2 = serviceConnection;
        if (serviceConnection2 != null) {
            try {
                context.unbindService(serviceConnection2);
            } catch (Throwable th2) {
                LightLogUtil.e(TAG, "stopSDKService failed:" + th2);
            }
        }
        serviceConnectionStatus = SERVICE_CONNECTION_STATUS_DISCONNTECTED;
    }

    public static String version() {
        ILightSDKServiceInterface iLightSDKServiceInterface = lightSDKServiceInterface;
        if (iLightSDKServiceInterface != null) {
            try {
                return iLightSDKServiceInterface.lightEngineVersion();
            } catch (RemoteException e10) {
                LightLogUtil.e(TAG, "RemoteException:\n" + e10);
                return "";
            }
        }
        return nativeVersion();
    }

    private static void waitBinderConnect(SDKServiceCallback sDKServiceCallback) {
        try {
            SingleLock singleLock = lightSDKServiceLock;
            synchronized (singleLock) {
                if (!serviceConnectionStatus.equals(SERVICE_CONNECTION_STATUS_CONNTECTED)) {
                    singleLock.acquire();
                }
            }
            if (sDKServiceCallback != null) {
                if (serviceConnectionStatus.equals(SERVICE_CONNECTION_STATUS_CONNTECTED)) {
                    sDKServiceCallback.onServiceStarted(lightSDKPid);
                } else {
                    sDKServiceCallback.onServiceCreateError(serviceConnectionStatus, true);
                }
            }
        } catch (InterruptedException e10) {
            String str = "lightSDKServiceLock acquire failed:" + e10;
            LightLogUtil.e(TAG, str);
            if (sDKServiceCallback != null) {
                sDKServiceCallback.onServiceCreateError(str, true);
            }
        }
    }

    public AudioOutput audioOutput() {
        ILightSDKServiceInterface iLightSDKServiceInterface = lightSDKServiceInterface;
        if (iLightSDKServiceInterface != null) {
            AudioOutput audioOutput = null;
            try {
                InstanceId lightEngineAudioOutput = iLightSDKServiceInterface.lightEngineAudioOutput(this.instanceId);
                if (lightEngineAudioOutput != null) {
                    AudioOutput audioOutput2 = new AudioOutput();
                    try {
                        audioOutput2.setInstanceId(lightEngineAudioOutput.f56459id);
                        audioOutput = audioOutput2;
                    } catch (RemoteException e10) {
                        e = e10;
                        audioOutput = audioOutput2;
                        LightLogUtil.e(TAG, "RemoteException:\n" + e);
                        LightLogUtil.e(TAG, String.format("audioOutput:%x init success", Integer.valueOf(System.identityHashCode(audioOutput))));
                        return audioOutput;
                    }
                }
            } catch (RemoteException e11) {
                e = e11;
            }
            LightLogUtil.e(TAG, String.format("audioOutput:%x init success", Integer.valueOf(System.identityHashCode(audioOutput))));
            return audioOutput;
        }
        return nativeAudioOutput();
    }

    protected void finalize() throws Throwable {
        ILightSDKServiceInterface iLightSDKServiceInterface;
        super.finalize();
        int i9 = this.instanceId;
        if (i9 != 0 && (iLightSDKServiceInterface = lightSDKServiceInterface) != null) {
            try {
                iLightSDKServiceInterface.removeSdkInstance(i9);
            } catch (RemoteException e10) {
                e10.printStackTrace();
            }
        } else if (this.nativeContext != 0) {
            nativeFinalize();
        }
    }

    public CameraConfig getCameraConfig() {
        return this.selfCameraConfig;
    }

    public int getCameraControllerInstanceId() {
        return this.cameraControllerInstanceId;
    }

    public long getCameraTextureTimestamp() {
        return this.cameraTextureTimestamp;
    }

    public LightSurface getLightSurface() {
        return this.selfSurface;
    }

    public int getOriginTexture() {
        ILightSDKServiceInterface iLightSDKServiceInterface = lightSDKServiceInterface;
        if (iLightSDKServiceInterface != null) {
            try {
                CameraConfig cameraConfig = this.selfCameraConfig;
                if (cameraConfig != null) {
                    return iLightSDKServiceInterface.lightEngineGetOriginTexture(cameraConfig.getInstanceId());
                }
                return 0;
            } catch (RemoteException e10) {
                LightLogUtil.e(TAG, "RemoteException:\n" + e10);
                return 0;
            }
        }
        return nativeGetOriginTexture();
    }

    public int getResultTexture() {
        ILightSDKServiceInterface iLightSDKServiceInterface = lightSDKServiceInterface;
        if (iLightSDKServiceInterface != null) {
            try {
                return iLightSDKServiceInterface.lightEngineGetResultTexture(this.instanceId);
            } catch (RemoteException e10) {
                LightLogUtil.e(TAG, "RemoteException:\n" + e10);
                return 0;
            }
        }
        return nativeGetResultTexture();
    }

    public native void nativeSetConfig(Config config);

    public final void release() {
        ILightSDKServiceInterface iLightSDKServiceInterface = lightSDKServiceInterface;
        if (iLightSDKServiceInterface != null) {
            try {
                iLightSDKServiceInterface.lightEngineRelease(this.instanceId);
                return;
            } catch (RemoteException e10) {
                LightLogUtil.e(TAG, "RemoteException:\n" + e10);
                return;
            }
        }
        nativeRelease();
    }

    /* JADX WARN: Removed duplicated region for block: B:20:0x0043  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public org.light.CameraController setAssetForCamera(org.light.LightAsset r6) {
        /*
            r5 = this;
            org.light.ILightSDKServiceInterface r0 = org.light.LightEngine.lightSDKServiceInterface
            r1 = 0
            java.lang.String r2 = "LightEngine"
            if (r0 == 0) goto L3d
            r3 = 0
            int r4 = r5.instanceId     // Catch: android.os.RemoteException -> L27
            if (r6 != 0) goto Le
            r6 = 0
            goto L12
        Le:
            int r6 = r6.getInstanceId()     // Catch: android.os.RemoteException -> L27
        L12:
            org.light.service.InstanceId r6 = r0.lightEngineSetAssetForCamera(r4, r6)     // Catch: android.os.RemoteException -> L27
            if (r6 == 0) goto L41
            org.light.CameraController r0 = new org.light.CameraController     // Catch: android.os.RemoteException -> L27
            r0.<init>()     // Catch: android.os.RemoteException -> L27
            int r6 = r6.f56459id     // Catch: android.os.RemoteException -> L24
            r0.setInstanceId(r6)     // Catch: android.os.RemoteException -> L24
            r3 = r0
            goto L41
        L24:
            r6 = move-exception
            r3 = r0
            goto L28
        L27:
            r6 = move-exception
        L28:
            java.lang.StringBuilder r0 = new java.lang.StringBuilder
            r0.<init>()
            java.lang.String r4 = "RemoteException:\n"
            r0.append(r4)
            r0.append(r6)
            java.lang.String r6 = r0.toString()
            org.light.utils.LightLogUtil.e(r2, r6)
            goto L41
        L3d:
            org.light.CameraController r3 = r5.nativeSetAssetForCamera(r6)
        L41:
            if (r3 == 0) goto L61
            java.lang.ref.WeakReference r6 = new java.lang.ref.WeakReference
            r6.<init>(r5)
            r3.setLightEngine(r6)
            r6 = 1
            java.lang.Object[] r6 = new java.lang.Object[r6]
            int r0 = java.lang.System.identityHashCode(r3)
            java.lang.Integer r0 = java.lang.Integer.valueOf(r0)
            r6[r1] = r0
            java.lang.String r0 = "cameraController:%x init success"
            java.lang.String r6 = java.lang.String.format(r0, r6)
            org.light.utils.LightLogUtil.e(r2, r6)
        L61:
            return r3
        */
        throw new UnsupportedOperationException("Method not decompiled: org.light.LightEngine.setAssetForCamera(org.light.LightAsset):org.light.CameraController");
    }

    /* JADX WARN: Removed duplicated region for block: B:20:0x0043  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public org.light.MovieController setAssetForMovie(org.light.LightAsset r6) {
        /*
            r5 = this;
            org.light.ILightSDKServiceInterface r0 = org.light.LightEngine.lightSDKServiceInterface
            r1 = 0
            java.lang.String r2 = "LightEngine"
            if (r0 == 0) goto L3d
            r3 = 0
            int r4 = r5.instanceId     // Catch: android.os.RemoteException -> L27
            if (r6 != 0) goto Le
            r6 = 0
            goto L12
        Le:
            int r6 = r6.getInstanceId()     // Catch: android.os.RemoteException -> L27
        L12:
            org.light.service.InstanceId r6 = r0.lightEngineSetAssetForMovie(r4, r6)     // Catch: android.os.RemoteException -> L27
            if (r6 == 0) goto L41
            org.light.MovieController r0 = new org.light.MovieController     // Catch: android.os.RemoteException -> L27
            r0.<init>()     // Catch: android.os.RemoteException -> L27
            int r6 = r6.f56459id     // Catch: android.os.RemoteException -> L24
            r0.setInstanceId(r6)     // Catch: android.os.RemoteException -> L24
            r3 = r0
            goto L41
        L24:
            r6 = move-exception
            r3 = r0
            goto L28
        L27:
            r6 = move-exception
        L28:
            java.lang.StringBuilder r0 = new java.lang.StringBuilder
            r0.<init>()
            java.lang.String r4 = "RemoteException:\n"
            r0.append(r4)
            r0.append(r6)
            java.lang.String r6 = r0.toString()
            org.light.utils.LightLogUtil.e(r2, r6)
            goto L41
        L3d:
            org.light.MovieController r3 = r5.nativeSetAssetForMovie(r6)
        L41:
            if (r3 == 0) goto L4b
            java.lang.ref.WeakReference r6 = new java.lang.ref.WeakReference
            r6.<init>(r5)
            r3.setLightEngine(r6)
        L4b:
            r6 = 1
            java.lang.Object[] r6 = new java.lang.Object[r6]
            int r0 = java.lang.System.identityHashCode(r3)
            java.lang.Integer r0 = java.lang.Integer.valueOf(r0)
            r6[r1] = r0
            java.lang.String r0 = "movieController:%x init success"
            java.lang.String r6 = java.lang.String.format(r0, r6)
            org.light.utils.LightLogUtil.e(r2, r6)
            return r3
        */
        throw new UnsupportedOperationException("Method not decompiled: org.light.LightEngine.setAssetForMovie(org.light.LightAsset):org.light.MovieController");
    }

    public void setCameraTextureTimestamp(int i9, long j10) {
        this.cameraControllerInstanceId = i9;
        this.cameraTextureTimestamp = j10;
    }

    public void setConfig(Config config) {
        if (lightSDKServiceInterface == null) {
            nativeSetConfig(config);
        } else if (config == null) {
        } else {
            config.setLightEngine(new WeakReference<>(this));
            if (config instanceof CameraConfig) {
                this.selfCameraConfig = (CameraConfig) config;
            }
            try {
                lightSDKServiceInterface.lightEngineSetConfig(this.instanceId, config.getInstanceId());
            } catch (RemoteException e10) {
                LightLogUtil.e(TAG, "RemoteException:\n" + e10);
            }
        }
    }

    public void setInstanceId(int i9) {
        this.instanceId = i9;
    }

    public boolean setSurface(LightSurface lightSurface) {
        ILightSDKServiceInterface iLightSDKServiceInterface = lightSDKServiceInterface;
        if (iLightSDKServiceInterface != null) {
            this.selfSurface = lightSurface;
            try {
                return iLightSDKServiceInterface.lightEngineSetSurface(this.instanceId, lightSurface == null ? 0 : lightSurface.getInstanceId());
            } catch (RemoteException e10) {
                LightLogUtil.e(TAG, "RemoteException:\n" + e10);
                return false;
            }
        }
        return nativeSetSurface(lightSurface);
    }

    public Controller[] setTemplateAssets(TemplateClip[] templateClipArr) {
        ILightSDKServiceInterface iLightSDKServiceInterface = lightSDKServiceInterface;
        if (iLightSDKServiceInterface != null) {
            Controller[] controllerArr = null;
            try {
                int[] lightEngineSetTemplateAssets = iLightSDKServiceInterface.lightEngineSetTemplateAssets(this.instanceId, templateClipArr);
                int length = lightEngineSetTemplateAssets.length;
                controllerArr = new Controller[length];
                for (int i9 = 0; i9 < length; i9++) {
                    controllerArr[i9] = new MovieController();
                    controllerArr[i9].setInstanceId(lightEngineSetTemplateAssets[i9]);
                }
            } catch (RemoteException e10) {
                LightLogUtil.e(TAG, "RemoteException:\n" + e10);
            }
            return controllerArr;
        }
        return nativeSetTemplateAssets(templateClipArr);
    }

    /* JADX WARN: Removed duplicated region for block: B:16:0x003a  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public org.light.VideoOutput videoOutput() {
        /*
            r5 = this;
            org.light.ILightSDKServiceInterface r0 = org.light.LightEngine.lightSDKServiceInterface
            java.lang.String r1 = "LightEngine"
            if (r0 == 0) goto L34
            r2 = 0
            int r3 = r5.instanceId     // Catch: android.os.RemoteException -> L1e
            org.light.service.InstanceId r0 = r0.lightEngineVideoOutput(r3)     // Catch: android.os.RemoteException -> L1e
            if (r0 == 0) goto L38
            org.light.VideoOutput r3 = new org.light.VideoOutput     // Catch: android.os.RemoteException -> L1e
            r3.<init>()     // Catch: android.os.RemoteException -> L1e
            int r0 = r0.f56459id     // Catch: android.os.RemoteException -> L1b
            r3.setInstanceId(r0)     // Catch: android.os.RemoteException -> L1b
            r2 = r3
            goto L38
        L1b:
            r0 = move-exception
            r2 = r3
            goto L1f
        L1e:
            r0 = move-exception
        L1f:
            java.lang.StringBuilder r3 = new java.lang.StringBuilder
            r3.<init>()
            java.lang.String r4 = "RemoteException:\n"
            r3.append(r4)
            r3.append(r0)
            java.lang.String r0 = r3.toString()
            org.light.utils.LightLogUtil.e(r1, r0)
            goto L38
        L34:
            org.light.VideoOutput r2 = r5.nativeVideoOutput()
        L38:
            if (r2 == 0) goto L59
            java.lang.ref.WeakReference r0 = new java.lang.ref.WeakReference
            r0.<init>(r5)
            r2.setLightEngine(r0)
            r0 = 1
            java.lang.Object[] r0 = new java.lang.Object[r0]
            r3 = 0
            int r4 = java.lang.System.identityHashCode(r2)
            java.lang.Integer r4 = java.lang.Integer.valueOf(r4)
            r0[r3] = r4
            java.lang.String r3 = "videoOutput:%x init success"
            java.lang.String r0 = java.lang.String.format(r3, r0)
            org.light.utils.LightLogUtil.e(r1, r0)
        L59:
            return r2
        */
        throw new UnsupportedOperationException("Method not decompiled: org.light.LightEngine.videoOutput():org.light.VideoOutput");
    }

    public static void initDeviceConfig(String str, String str2) {
        ILightSDKServiceInterface iLightSDKServiceInterface = lightSDKServiceInterface;
        if (iLightSDKServiceInterface != null) {
            try {
                iLightSDKServiceInterface.lightEngineInitDeviceConfig(str, str2);
                return;
            } catch (RemoteException e10) {
                LightLogUtil.e(TAG, "RemoteException:\n" + e10);
                return;
            }
        }
        nativeInitDeviceConfig(str, str2);
    }

    public void setCameraTextureTimestamp(long j10) {
        this.cameraTextureTimestamp = j10;
    }
}
