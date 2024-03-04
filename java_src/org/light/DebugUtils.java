package org.light;

import android.os.RemoteException;
import org.light.utils.LightLogUtil;
/* loaded from: classes7.dex */
public class DebugUtils {
    private static final String TAG = "DebugUtils";
    protected static ILightSDKServiceInterface lightSDKServiceInterface;
    protected int instanceId = 0;

    private static native void nativeSetImageDebugInfo(boolean z10, String str, boolean z11, boolean z12, boolean z13, boolean z14, boolean z15);

    public static void setImageDebugInfo(boolean z10, String str, boolean z11, boolean z12, boolean z13, boolean z14, boolean z15) {
        ILightSDKServiceInterface iLightSDKServiceInterface = lightSDKServiceInterface;
        if (iLightSDKServiceInterface != null) {
            try {
                iLightSDKServiceInterface.debugUtilsSetImageDebugInfo(z10, str, z11, z12, z13, z14, z15);
                return;
            } catch (RemoteException e10) {
                LightLogUtil.e(TAG, "RemoteException:\n" + e10);
                return;
            }
        }
        nativeSetImageDebugInfo(z10, str, z11, z12, z13, z14, z15);
    }

    public static void setLightSDKServiceInterface(ILightSDKServiceInterface iLightSDKServiceInterface) {
        lightSDKServiceInterface = iLightSDKServiceInterface;
    }
}
