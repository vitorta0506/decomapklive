package org.light;

import android.app.Application;
import android.content.Context;
import android.os.Build;
import android.os.Bundle;
import java.util.ArrayList;
import java.util.Map;
import org.light.device.ApiHelper;
import org.light.device.DeviceInstance;
import org.light.device.GpuScopeAttrs;
import org.light.gles.GLCapabilities;
import org.light.service.LightSDKService;
import org.light.utils.LightLogUtil;
/* loaded from: classes7.dex */
public class DeviceSupportUtil {
    public static final String[] DEVICE_ABILITY_ARRAY = {"3d.kapu", "ai.emotion", "ai.hand", "ai.3dmm", "ai", "ai.face3d", "OpenCL", "ai.gan", "ai.segment.gpu", "JavaScript", "ai.segment", "ai.segmentHair", "ai.body", "ai.catFace", "ai.faceStaticFeature", "ai.expression", "shareGLContextError", "render.shadow", "render.fxaa", "render.msaa", "render.ssao", "render.dither", "render.bloom", "render.vignette", "render.color_grading", "ai.InitSegmentHair", "imu.smooth.enable", Constants.DEVICE_IS_STICKER_3D, DeviceConstants.DEVICE_ABILITY_FENCE};
    private static final String TAG = "DeviceSupportUtil";
    private static boolean inited = false;
    private static boolean soLoadSuccess = false;

    public static boolean checkCrossProcessModeAvailable(Bundle bundle) {
        if (isHardwareBufferAvailable()) {
            if (!soLoadSuccess) {
                soLoadSuccess = LightSDKService.loadSo(bundle) != LightSDKService.LoadSOResult.LoadFailed;
            }
            if (!soLoadSuccess) {
                LightLogUtil.e(TAG, "checkCrossProcessModeAvailable so load failed");
                return false;
            } else if (NativeBuffer.isAvailable()) {
                return true;
            } else {
                LightLogUtil.e(TAG, "checkCrossProcessModeAvailable NativeBuffer not Available");
                return false;
            }
        }
        return false;
    }

    private static String[] getDeviceAbilityKeys(LightAsset lightAsset) {
        String[] strArr;
        ArrayList arrayList = new ArrayList();
        if (lightAsset != null) {
            for (String str : DEVICE_ABILITY_ARRAY) {
                if (lightAsset.needRenderAbility(str)) {
                    arrayList.add(str);
                }
            }
        }
        String[] strArr2 = new String[arrayList.size()];
        for (int i9 = 0; i9 < arrayList.size(); i9++) {
            strArr2[i9] = (String) arrayList.get(i9);
        }
        return strArr2;
    }

    public static void getDeviceSupportAbilities(Map<String, Boolean> map) {
        if (!inited) {
            init();
        }
        map.put(Constants.DEVICE_ABILITY_OPENGL, Boolean.valueOf(isAbilityDeviceSupport(Constants.DEVICE_ABILITY_OPENGL)));
        map.put("3d.kapu", Boolean.valueOf(isAbilityDeviceSupport("3d.kapu")));
        map.put("ai.emotion", Boolean.valueOf(isAbilityDeviceSupport("ai.emotion")));
        map.put("ai.hand", Boolean.valueOf(isAbilityDeviceSupport("ai.hand")));
        map.put("ai.3dmm", Boolean.valueOf(isAbilityDeviceSupport("ai.3dmm")));
        map.put("ai", Boolean.valueOf(isAbilityDeviceSupport("ai")));
        map.put(Constants.DEVICE_IS_STICKER_3D, Boolean.valueOf(isAbilityDeviceSupport(Constants.DEVICE_IS_STICKER_3D)));
        map.put("ai.face3d", Boolean.valueOf(isAbilityDeviceSupport("ai.face3d")));
        map.put("OpenCL", Boolean.valueOf(isAbilityDeviceSupport("OpenCL")));
        map.put("ai.gan", Boolean.valueOf(isAbilityDeviceSupport("ai.gan")));
        map.put("ai.segment.gpu", Boolean.valueOf(isAbilityDeviceSupport("ai.segment.gpu")));
        map.put("JavaScript", Boolean.valueOf(isAbilityDeviceSupport("JavaScript")));
        map.put("ai.segment", Boolean.valueOf(isAbilityDeviceSupport("ai.segment")));
        map.put("ai.segmentHair", Boolean.valueOf(isAbilityDeviceSupport("ai.segmentHair")));
        map.put("ai.body", Boolean.valueOf(isAbilityDeviceSupport("ai.body")));
        map.put("ai.catFace", Boolean.valueOf(isAbilityDeviceSupport("ai.catFace")));
        map.put("ai.gender", Boolean.valueOf(isAbilityDeviceSupport("ai.gender")));
        map.put("ai.expression", Boolean.valueOf(isAbilityDeviceSupport("ai.expression")));
        map.put("shareGLContextError", Boolean.valueOf(isAbilityDeviceSupport("shareGLContextError")));
        map.put("render.shadow", Boolean.valueOf(isAbilityDeviceSupport("render.shadow")));
        map.put("render.fxaa", Boolean.valueOf(isAbilityDeviceSupport("render.fxaa")));
        map.put("render.msaa", Boolean.valueOf(isAbilityDeviceSupport("render.msaa")));
        map.put("render.ssao", Boolean.valueOf(isAbilityDeviceSupport("render.ssao")));
        map.put("render.dither", Boolean.valueOf(isAbilityDeviceSupport("render.dither")));
        map.put("render.bloom", Boolean.valueOf(isAbilityDeviceSupport("render.bloom")));
        map.put("render.vignette", Boolean.valueOf(isAbilityDeviceSupport("render.vignette")));
        map.put("render.color_grading", Boolean.valueOf(isAbilityDeviceSupport("render.color_grading")));
        map.put("ace3d.flush", Boolean.valueOf(isAbilityDeviceSupport("ace3d.flush")));
        map.put("ai.InitSegmentHair", Boolean.valueOf(isAbilityDeviceSupport("ai.InitSegmentHair")));
        map.put("imu.smooth.enable", Boolean.valueOf(isAbilityDeviceSupport("imu.smooth.enable")));
        map.put(DeviceConstants.DEVICE_ABILITY_FENCE, Boolean.valueOf(isAbilityDeviceSupport(DeviceConstants.DEVICE_ABILITY_FENCE)));
    }

    private static synchronized void init() {
        synchronized (DeviceSupportUtil.class) {
            if (inited) {
                return;
            }
            try {
                Context applicationContext = ((Application) Class.forName("android.app.ActivityThread").getMethod("currentApplication", new Class[0]).invoke(null, null)).getApplicationContext();
                DeviceInstance.getInstance().initSettings(applicationContext, "");
                GLCapabilities.init(true);
                if (GpuScopeAttrs.getInstance().getDeviceModel() == null && GpuScopeAttrs.getInstance().getGPuModel() == null) {
                    GpuScopeAttrs.getInstance().init(applicationContext, DeviceInstance.getInstance().getDeviceName(), GLCapabilities.getGPUInfo(), DeviceInstance.getInstance().getDeviceVersion(), "");
                    LightLogUtil.e(TAG, "DeviceName = " + DeviceInstance.getInstance().getDeviceName());
                    LightLogUtil.e(TAG, "SystemVersion = " + DeviceInstance.getInstance().getDeviceVersion());
                    LightLogUtil.e(TAG, "GPUInfo = " + GLCapabilities.getGPUInfo());
                }
                inited = true;
            } catch (Exception e10) {
                LightLogUtil.w(TAG, "init failed: " + e10.getMessage());
            }
        }
    }

    public static boolean isAbilitiesSupported(String[] strArr) {
        if (strArr == null || strArr.length <= 0) {
            return true;
        }
        if (!inited) {
            init();
        }
        for (String str : strArr) {
            if (!isAbilityDeviceSupport(str)) {
                return false;
            }
        }
        return true;
    }

    public static boolean isAbilityDeviceSupport(String str) {
        if (!inited) {
            init();
        }
        str.hashCode();
        char c10 = 65535;
        switch (str.hashCode()) {
            case -2147478675:
                if (str.equals("ai.segment")) {
                    c10 = 0;
                    break;
                }
                break;
            case -1926713261:
                if (str.equals("OpenCL")) {
                    c10 = 1;
                    break;
                }
                break;
            case -1926713137:
                if (str.equals(Constants.DEVICE_ABILITY_OPENGL)) {
                    c10 = 2;
                    break;
                }
                break;
            case -1848308053:
                if (str.equals("ai.segment.gpu")) {
                    c10 = 3;
                    break;
                }
                break;
            case -1847539473:
                if (str.equals("ai.segmentHair")) {
                    c10 = 4;
                    break;
                }
                break;
            case -1716838530:
                if (str.equals("render.dither")) {
                    c10 = 5;
                    break;
                }
                break;
            case -1673219638:
                if (str.equals("render.fxaa")) {
                    c10 = 6;
                    break;
                }
                break;
            case -1673015906:
                if (str.equals("render.msaa")) {
                    c10 = 7;
                    break;
                }
                break;
            case -1672837146:
                if (str.equals("render.ssao")) {
                    c10 = '\b';
                    break;
                }
                break;
            case -1450994539:
                if (str.equals("ai.emotion")) {
                    c10 = '\t';
                    break;
                }
                break;
            case -1419497458:
                if (str.equals("ai.gan")) {
                    c10 = '\n';
                    break;
                }
                break;
            case -1288894344:
                if (str.equals("render.shadow")) {
                    c10 = 11;
                    break;
                }
                break;
            case -1056294409:
                if (str.equals("ai.3dmm")) {
                    c10 = '\f';
                    break;
                }
                break;
            case -1054883928:
                if (str.equals("ai.body")) {
                    c10 = '\r';
                    break;
                }
                break;
            case -1054718347:
                if (str.equals("ai.hand")) {
                    c10 = 14;
                    break;
                }
                break;
            case -835779680:
                if (str.equals("render.color_grading")) {
                    c10 = 15;
                    break;
                }
                break;
            case -577373154:
                if (str.equals("ai.expression")) {
                    c10 = 16;
                    break;
                }
                break;
            case -334238805:
                if (str.equals("render.bloom")) {
                    c10 = 17;
                    break;
                }
                break;
            case -280244012:
                if (str.equals(DeviceConstants.DEVICE_GLEXT_FRAMEBUFFER_FETCH)) {
                    c10 = 18;
                    break;
                }
                break;
            case -73197307:
                if (str.equals("ai.faceStaticFeature")) {
                    c10 = 19;
                    break;
                }
                break;
            case -29632972:
                if (str.equals("ai.face3d")) {
                    c10 = 20;
                    break;
                }
                break;
            case 3112:
                if (str.equals("ai")) {
                    c10 = 21;
                    break;
                }
                break;
            case 47868039:
                if (str.equals(Constants.DEVICE_IS_STICKER_3D)) {
                    c10 = 22;
                    break;
                }
                break;
            case 97316913:
                if (str.equals(DeviceConstants.DEVICE_ABILITY_FENCE)) {
                    c10 = 23;
                    break;
                }
                break;
            case 304644842:
                if (str.equals("ace3d.flush")) {
                    c10 = 24;
                    break;
                }
                break;
            case 324797074:
                if (str.equals("render.vignette")) {
                    c10 = 25;
                    break;
                }
                break;
            case 728654733:
                if (str.equals("ai.catFace")) {
                    c10 = 26;
                    break;
                }
                break;
            case 926728984:
                if (str.equals("3d.kapu")) {
                    c10 = 27;
                    break;
                }
                break;
            case 1088081055:
                if (str.equals("ai.InitSegmentHair")) {
                    c10 = 28;
                    break;
                }
                break;
            case 1155171942:
                if (str.equals("imu.smooth.enable")) {
                    c10 = 29;
                    break;
                }
                break;
            case 1266327981:
                if (str.equals("JavaScript")) {
                    c10 = 30;
                    break;
                }
                break;
            case 1946725565:
                if (str.equals("shareGLContextError")) {
                    c10 = 31;
                    break;
                }
                break;
        }
        switch (c10) {
            case 0:
            case 4:
                return true ^ isShareGLContextError();
            case 1:
            case 3:
            case '\n':
                return supportOpenCL();
            case 2:
                return supportOpenGL();
            case 5:
            case 6:
            case 7:
            case '\b':
            case 11:
            case 15:
            case 17:
            case 25:
                return supportFilamentFeature(str);
            case '\t':
            case '\f':
            case 14:
            case 21:
                return supportAiAbility();
            case '\r':
            case 16:
            case 19:
            case 26:
                return true;
            case 18:
                return supportGLExtension(str);
            case 20:
                return supportAceEngine();
            case 22:
                return supportAceEngine();
            case 23:
                return supportFence();
            case 24:
                return supportAce3dFLush();
            case 27:
                return supportKapu();
            case 28:
                return isHairSegPreLoadSupportedDevice();
            case 29:
                return isImuSmoothEnable();
            case 30:
                return supportJavaScript();
            case 31:
                return isShareGLContextError();
            default:
                LightLogUtil.w(TAG, "isAbilityDeviceSupport - key \"" + str + "\" not found");
                return true;
        }
    }

    public static boolean isDeviceSupportAsset(LightAsset lightAsset) {
        return isAbilitiesSupported(getDeviceAbilityKeys(lightAsset));
    }

    public static boolean isHairSegPreLoadSupportedDevice() {
        return GLCapabilities.isDeviceSupportHairSegPreLoad();
    }

    public static boolean isHardwareBufferAvailable() {
        return Build.VERSION.SDK_INT >= 26;
    }

    private static boolean isImuSmoothEnable() {
        return GLCapabilities.isImuSmoothEnable();
    }

    public static boolean isMaterialDeviceSupport(String str) {
        LightLogUtil.d(TAG, "isMaterialDeviceSupport");
        return true;
    }

    public static boolean isShareGLContextError() {
        return GLCapabilities.isShareGLContextError();
    }

    public static boolean isSoLoadSuccess() {
        return soLoadSuccess;
    }

    public static void setSoLoadSuccess(boolean z10) {
        soLoadSuccess = z10;
    }

    private static boolean supportAce3dFLush() {
        return supportAceEngine() && GLCapabilities.isDeviceSupportAce3dFlush();
    }

    private static boolean supportAceEngine() {
        return GLCapabilities.getGlesVersion().contains("3.") && GLCapabilities.isFilamentShaderCompileSucceed() && GLCapabilities.isDeviceSupportAceEngine();
    }

    private static boolean supportAiAbility() {
        return GLCapabilities.isDeviceSupportAiAbility();
    }

    public static boolean supportFence() {
        return GLCapabilities.isDeviceSupportFence();
    }

    private static boolean supportFilamentFeature(String str) {
        return supportAceEngine() && GLCapabilities.isDeviceSupportFilamentFeature(str);
    }

    private static boolean supportGLExtension(String str) {
        return supportAceEngine() && GLCapabilities.isDeviceSupportGLExtension(str);
    }

    private static boolean supportJavaScript() {
        return ApiHelper.hasLollipop();
    }

    private static boolean supportKapu() {
        return supportAceEngine() && GLCapabilities.isDeviceSupportKapu();
    }

    private static boolean supportOpenCL() {
        return ApiHelper.hasMarshmallow() && GLCapabilities.isDeviceSupportOpenCL();
    }

    private static boolean supportOpenGL() {
        return GLCapabilities.getGlesVersion().contains("3.");
    }

    public static synchronized void init(String str) {
        synchronized (DeviceSupportUtil.class) {
            try {
                Context applicationContext = ((Application) Class.forName("android.app.ActivityThread").getMethod("currentApplication", new Class[0]).invoke(null, null)).getApplicationContext();
                DeviceInstance.getInstance().initSettings(applicationContext, str);
                GLCapabilities.init(true);
                GpuScopeAttrs.getInstance().init(applicationContext, DeviceInstance.getInstance().getDeviceName(), GLCapabilities.getGPUInfo(), DeviceInstance.getInstance().getDeviceVersion(), str);
                LightLogUtil.e(TAG, "DeviceName = " + DeviceInstance.getInstance().getDeviceName());
                LightLogUtil.e(TAG, "SystemVersion = " + DeviceInstance.getInstance().getDeviceVersion());
                LightLogUtil.e(TAG, "GPUInfo = " + GLCapabilities.getGPUInfo());
                inited = true;
            } catch (Exception e10) {
                LightLogUtil.w(TAG, "init failed: " + e10.getMessage());
            }
        }
    }
}
