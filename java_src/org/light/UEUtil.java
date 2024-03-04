package org.light;

import android.content.Context;
import android.graphics.SurfaceTexture;
import android.os.Bundle;
import android.os.Handler;
import android.os.RemoteException;
import android.view.Surface;
import com.epicgames.ue4.GameActivity;
import com.epicgames.ue4.GameActivityBase;
import com.epicgames.ue4.GameActivityNative;
import com.epicgames.ue4.GameActivityThunk;
import com.epicgames.ue4.UE4;
import com.tencent.zplan.IOnRemoteLuaEvent;
import com.tencent.zplan.engine.ZPlanBindServiceListener;
import com.tencent.zplan.engine.ZPlanIPCHelper;
import com.tencent.zplan.engine.ZPlanNormalHelper;
import com.tencent.zplan.engine.ZPlanServiceHelper;
import com.tencent.zplan.luabridge.ILuaCaller;
import org.jetbrains.annotations.Nullable;
import org.light.listener.AIDLOnBindServiceListener;
import org.light.listener.AIDLOnUE4EngineInitFInishListener;
import org.light.utils.LightLogUtil;
/* loaded from: classes7.dex */
public class UEUtil {
    private static final String TAG = "UEUtil";
    private static boolean isUE4Ready = false;
    protected static ILightSDKServiceInterface lightSDKServiceInterface = null;
    private static AIDLUE4Interface mAIDLUE4Interface = null;
    private static AIDLICallLuaInterface mCallLuaInterface = null;
    private static MountPakInterface mMountPakInterface = null;
    private static OpenLevelInterface mOpenLevelInterface = null;
    private static Surface mSurface = null;
    private static SurfaceTexture mSurfaceTexture = null;
    private static boolean mUEMultiProc = true;
    private static Handler mUIHandler;

    public static boolean _checkUE4Ready() {
        return isUE4Ready;
    }

    public static void _initUEInterface(Context context, final AIDLOnBindServiceListener aIDLOnBindServiceListener) {
        nativeInitMethods();
        ZPlanIPCHelper.INSTANCE.initHelper(context, new ZPlanBindServiceListener() { // from class: org.light.UEUtil.5
            public void onBindServiceStatus(boolean z10) {
                try {
                    AIDLOnBindServiceListener.this.onBindServiceStatus(z10);
                } catch (RemoteException e10) {
                    LightLogUtil.e(UEUtil.TAG, "RemoteException:\n" + e10);
                }
            }
        });
    }

    public static void _initUENativeFunctions() {
        nativeInitMethods();
    }

    public static void _setOnUE4InitFinishListener(final AIDLOnUE4EngineInitFInishListener aIDLOnUE4EngineInitFInishListener) {
        UE4.setCMShowEngineInitFinishListener(new GameActivityThunk.CMShowEngineInitFinishListener() { // from class: org.light.UEUtil.1
            public void onEngineInitFinish(boolean z10) {
                try {
                    boolean unused = UEUtil.isUE4Ready = true;
                    AIDLOnUE4EngineInitFInishListener aIDLOnUE4EngineInitFInishListener2 = AIDLOnUE4EngineInitFInishListener.this;
                    if (aIDLOnUE4EngineInitFInishListener2 != null) {
                        aIDLOnUE4EngineInitFInishListener2.run();
                    }
                } catch (RemoteException e10) {
                    e10.printStackTrace();
                }
            }
        });
    }

    public static void _setUEMultiProc(boolean z10) {
        nativeInitMethods();
        mUEMultiProc = z10;
    }

    public static void _startUE4(long j10, Context context, int i9, int i10, AIDLOnUE4EngineInitFInishListener aIDLOnUE4EngineInitFInishListener) {
        UE4.loadLibraries(false, true);
        GameActivityNative.SetEGLShareContext(j10);
        GameActivityBase.singletonListener = new GameActivityBase.SingletonListener() { // from class: org.light.UEUtil.2
            public GameActivityBase create(Context context2) {
                return GameActivity.CreateSingleton(context2);
            }
        };
        UE4.initEngine(context.getApplicationContext(), new Bundle(), false);
        _setOnUE4InitFinishListener(aIDLOnUE4EngineInitFInishListener);
        SurfaceTexture surfaceTexture = new SurfaceTexture(0);
        mSurfaceTexture = surfaceTexture;
        surfaceTexture.setDefaultBufferSize(i9, i10);
        Surface surface = new Surface(mSurfaceTexture);
        mSurface = surface;
        UE4.initWindow(surface);
        UE4.resumeEngine(context.getApplicationContext());
    }

    public static void _stopUE4(Context context) {
        UE4.pauseEngine(context.getApplicationContext());
        UE4.stopEngine(context.getApplicationContext());
        UE4.destroyEngine();
    }

    private static void bindUERenderTexture(int i9, int i10, int i11) {
        if (mUEMultiProc) {
            ZPlanIPCHelper.INSTANCE.bindUERenderTexture(i9, i10, i11);
        } else {
            ZPlanNormalHelper.INSTANCE.bindUERenderTexture(i9, i10, i11);
        }
    }

    private static void callLua(String str, String str2, final long j10, boolean z10) {
        ILuaCaller luaCaller;
        if (mUEMultiProc) {
            luaCaller = ZPlanIPCHelper.INSTANCE.getLuaCaller();
        } else {
            luaCaller = ZPlanNormalHelper.INSTANCE.getLuaCaller();
        }
        if (luaCaller != null) {
            luaCaller.callLua(str, str2, new ILuaCaller.IOnLuaResult() { // from class: org.light.UEUtil.3
                public void onExecuteLua() {
                }

                public void onLuaResult(boolean z11, @Nullable String str3) {
                    UEUtil.nativeRunCallback(j10, z11, str3);
                }
            }, z10);
        }
    }

    public static boolean checkUE4Ready() {
        ILightSDKServiceInterface iLightSDKServiceInterface = lightSDKServiceInterface;
        if (iLightSDKServiceInterface != null) {
            try {
                return iLightSDKServiceInterface.ueUtilCheckUE4Ready();
            } catch (RemoteException e10) {
                LightLogUtil.e(TAG, "RemoteException:\n" + e10);
                return false;
            }
        }
        return isUE4Ready;
    }

    public static void clearUEFaceStr() {
        ILightSDKServiceInterface iLightSDKServiceInterface = lightSDKServiceInterface;
        if (iLightSDKServiceInterface != null) {
            try {
                iLightSDKServiceInterface.ueUtilClearUEFaceStr();
                return;
            } catch (RemoteException e10) {
                LightLogUtil.e(TAG, "RemoteException:\n" + e10);
                return;
            }
        }
        nativeClearUEFaceStr();
    }

    public static void createUEPlayer(String str) {
        ILightSDKServiceInterface iLightSDKServiceInterface = lightSDKServiceInterface;
        if (iLightSDKServiceInterface != null) {
            try {
                iLightSDKServiceInterface.ueUtilCreateUEPlayer(str);
                return;
            } catch (RemoteException e10) {
                LightLogUtil.e(TAG, "RemoteException:\n" + e10);
                return;
            }
        }
        nativeCreateUEPlayer(str);
    }

    public static void debugSaveInUETexture(int i9, String str, String str2) {
        if (mUEMultiProc) {
            ZPlanIPCHelper.INSTANCE.debugSaveInUETexture(i9, str, str2, (String) null);
        } else {
            ZPlanNormalHelper.INSTANCE.debugSaveInUETexture(i9, str, (String) null);
        }
    }

    public static void debugSaveOutUERenderTexture(String str, String str2) {
        if (mUEMultiProc) {
            ZPlanIPCHelper.INSTANCE.debugSaveOutUETexture(str, str2);
        } else {
            ZPlanNormalHelper.INSTANCE.debugSaveOutUETexture(str);
        }
    }

    public static void initUE4(long j10, Context context, int i9, int i10, AIDLOnUE4EngineInitFInishListener aIDLOnUE4EngineInitFInishListener) {
        ILightSDKServiceInterface iLightSDKServiceInterface = lightSDKServiceInterface;
        if (iLightSDKServiceInterface != null) {
            try {
                iLightSDKServiceInterface.ueUtilStartUE4(j10, i9, i10, aIDLOnUE4EngineInitFInishListener);
                return;
            } catch (RemoteException e10) {
                LightLogUtil.e(TAG, "RemoteException:\n" + e10);
                return;
            }
        }
        _startUE4(j10, context, i9, i10, aIDLOnUE4EngineInitFInishListener);
    }

    public static void initUEAIDLInterface(Context context, final UEBindServiceListener uEBindServiceListener) {
        AIDLOnBindServiceListener.Stub stub = new AIDLOnBindServiceListener.Stub() { // from class: org.light.UEUtil.6
            @Override // org.light.listener.AIDLOnBindServiceListener
            public void onBindServiceStatus(boolean z10) throws RemoteException {
                UEBindServiceListener.this.onBindServiceStatus(z10);
            }
        };
        ILightSDKServiceInterface iLightSDKServiceInterface = lightSDKServiceInterface;
        if (iLightSDKServiceInterface != null) {
            try {
                iLightSDKServiceInterface.ueUtilInitUEInterface(stub);
                return;
            } catch (RemoteException e10) {
                LightLogUtil.e(TAG, "RemoteException:\n" + e10);
                return;
            }
        }
        _initUEInterface(context, stub);
    }

    public static void initUENativeFunctions() {
        ILightSDKServiceInterface iLightSDKServiceInterface = lightSDKServiceInterface;
        if (iLightSDKServiceInterface != null) {
            try {
                iLightSDKServiceInterface.ueUtilInitUENativeFunctions();
                return;
            } catch (RemoteException e10) {
                LightLogUtil.e(TAG, "RemoteException:\n" + e10);
                return;
            }
        }
        _initUENativeFunctions();
    }

    public static boolean isUE4ServiceReady() {
        return ZPlanServiceHelper.INSTANCE.isEngineReady();
    }

    private static void mountPak(String str, boolean z10) {
        if (mUEMultiProc) {
            ZPlanIPCHelper.INSTANCE.mountPak(str, z10);
        } else {
            ZPlanNormalHelper.INSTANCE.mountPak(str, z10);
        }
    }

    private static native void nativeClearUEFaceStr();

    private static native void nativeCreateUEPlayer(String str);

    private static native void nativeInitMethods();

    /* JADX INFO: Access modifiers changed from: private */
    public static native void nativeRunCallback(long j10, boolean z10, String str);

    /* JADX INFO: Access modifiers changed from: private */
    public static native void nativeRunEvent(long j10, String str);

    private static native void nativeSetUEFaceStr(String str);

    private static void openLevel(String str) {
        if (mUEMultiProc) {
            ZPlanIPCHelper.INSTANCE.openLevel(str);
        } else {
            ZPlanNormalHelper.INSTANCE.openLevel(str);
        }
    }

    private static void registerLuaEvent(String str, final long j10) {
        IOnRemoteLuaEvent.Stub stub = new IOnRemoteLuaEvent.Stub() { // from class: org.light.UEUtil.4
            public String onLuaEvent(String str2, String str3, int i9) {
                UEUtil.nativeRunEvent(j10, str3);
                return "";
            }
        };
        if (mUEMultiProc) {
            ZPlanIPCHelper.INSTANCE.observeLuaEvent(str, stub);
        } else {
            ZPlanNormalHelper.INSTANCE.observeLuaEvent(str, stub);
        }
    }

    private static void releaseGraphicBuffers() {
        if (mUEMultiProc) {
            ZPlanIPCHelper.INSTANCE.releaseGraphicBuffers();
        } else {
            ZPlanNormalHelper.INSTANCE.releaseGraphicBuffers();
        }
    }

    private static void setExternalTexture(int i9, int i10, int i11, int i12) {
        if (mUEMultiProc) {
            ZPlanIPCHelper.INSTANCE.setExternalTexture(i9, i10, i11, i12);
        } else {
            ZPlanNormalHelper.INSTANCE.setExternalTexture(i9, i10, i11, i12);
        }
    }

    public static void setLightSDKServiceInterface(ILightSDKServiceInterface iLightSDKServiceInterface) {
        lightSDKServiceInterface = iLightSDKServiceInterface;
    }

    public static void setOnUE4InitFinishListener(AIDLOnUE4EngineInitFInishListener aIDLOnUE4EngineInitFInishListener) {
        ILightSDKServiceInterface iLightSDKServiceInterface = lightSDKServiceInterface;
        if (iLightSDKServiceInterface != null) {
            try {
                iLightSDKServiceInterface.ueUtilSetOnUE4InitFinishListener(aIDLOnUE4EngineInitFInishListener);
                return;
            } catch (RemoteException e10) {
                LightLogUtil.e(TAG, "RemoteException:\n" + e10);
                return;
            }
        }
        _setOnUE4InitFinishListener(aIDLOnUE4EngineInitFInishListener);
    }

    public static void setUEFaceStr(String str) {
        ILightSDKServiceInterface iLightSDKServiceInterface = lightSDKServiceInterface;
        if (iLightSDKServiceInterface != null) {
            try {
                iLightSDKServiceInterface.ueUtilSetUEFaceStr(str);
                return;
            } catch (RemoteException e10) {
                LightLogUtil.e(TAG, "RemoteException:\n" + e10);
                return;
            }
        }
        nativeSetUEFaceStr(str);
    }

    public static void setUEMultiProc(boolean z10) {
        ILightSDKServiceInterface iLightSDKServiceInterface = lightSDKServiceInterface;
        if (iLightSDKServiceInterface != null) {
            try {
                iLightSDKServiceInterface.ueUtilSetMultiProc(z10);
                return;
            } catch (RemoteException e10) {
                LightLogUtil.e(TAG, "RemoteException:\n" + e10);
                return;
            }
        }
        _setUEMultiProc(z10);
    }

    public static void stopUE4(Context context) {
        ILightSDKServiceInterface iLightSDKServiceInterface = lightSDKServiceInterface;
        if (iLightSDKServiceInterface != null) {
            try {
                iLightSDKServiceInterface.ueUtilStopUE4();
                return;
            } catch (RemoteException e10) {
                LightLogUtil.e(TAG, "RemoteException:\n" + e10);
                return;
            }
        }
        _stopUE4(context);
    }
}
