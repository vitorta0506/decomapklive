package org.light;

import android.util.Log;
import com.facebook.internal.ServerProtocol;
import com.tencent.bugly.Bugly;
import java.util.Map;
import org.light.LightConstants;
/* loaded from: classes7.dex */
public class BeautyController {
    static final String LIPS_STRENGTH_DEFULT = "0";
    public static final int MAKEUP_TYPE_BEAUTY_MULTIPLY = 3;
    public static final int MAKEUP_TYPE_LIPS = 1;
    public static final int MAKEUP_TYPE_SOFT_LIGHT = 2;
    static final String MULTIPLY_STRENGTH_DEFAULT = "0";
    static final String SOFTLIGHT_STRENGTH_DEFAULT = "0";
    private static final String TAG = "BeautyController";
    private static final int TIME_SPACING = 100;
    private CameraController cameraController;
    private CameraConfig config;
    private Map<String, String> configData;
    private long currTime = 0;

    public BeautyController(Map<String, String> map) {
        this.configData = map;
    }

    private String formatDecimalValue(int i9) {
        return Float.toString(i9 / 100.0f);
    }

    private boolean isShowTime() {
        if (System.currentTimeMillis() - this.currTime > 100) {
            this.currTime = System.currentTimeMillis();
            return true;
        }
        return false;
    }

    public void enableAssetBeautyMakeup(int i9, boolean z10) {
        String str = ServerProtocol.DIALOG_RETURN_SCOPES_TRUE;
        if (i9 == 1) {
            Map<String, String> map = this.configData;
            if (!z10) {
                str = Bugly.SDK_IS_DEV;
            }
            map.put(LightConstants.BasicSwitchKey.MATERIAL_LIPS_ENABLE, str);
        } else if (i9 == 2) {
            Map<String, String> map2 = this.configData;
            if (!z10) {
                str = Bugly.SDK_IS_DEV;
            }
            map2.put(LightConstants.BasicSwitchKey.MATERIAL_SOFT_LIGHT_ENABLE, str);
        } else if (i9 == 3) {
            Map<String, String> map3 = this.configData;
            if (!z10) {
                str = Bugly.SDK_IS_DEV;
            }
            map3.put(LightConstants.BasicSwitchKey.MATERIAL_MAKEUP_MULTIPLY_ENABLE, str);
        }
        CameraConfig cameraConfig = this.config;
        if (cameraConfig != null) {
            cameraConfig.setConfigData(this.configData);
        }
    }

    public void enableBasicBeautyMakeup(int i9, boolean z10) {
        String str = ServerProtocol.DIALOG_RETURN_SCOPES_TRUE;
        if (z10) {
            this.configData.put("beauty.faceFeature.enable", ServerProtocol.DIALOG_RETURN_SCOPES_TRUE);
        }
        if (i9 == 1) {
            Map<String, String> map = this.configData;
            if (!z10) {
                str = Bugly.SDK_IS_DEV;
            }
            map.put(LightConstants.BasicSwitchKey.BASIC_LIPS_ENABLE, str);
        } else if (i9 == 2) {
            Map<String, String> map2 = this.configData;
            if (!z10) {
                str = Bugly.SDK_IS_DEV;
            }
            map2.put(LightConstants.BasicSwitchKey.BASIC_SOFT_LIGHT_ENABLE, str);
        } else if (i9 == 3) {
            Map<String, String> map3 = this.configData;
            if (!z10) {
                str = Bugly.SDK_IS_DEV;
            }
            map3.put(LightConstants.BasicSwitchKey.BASIC_MAKEUP_MULTIPLY_ENABLE, str);
        }
        CameraConfig cameraConfig = this.config;
        if (cameraConfig != null) {
            cameraConfig.setConfigData(this.configData);
        }
    }

    public boolean isAssetHasMakeUp(int i9) {
        CameraController cameraController = this.cameraController;
        if (cameraController != null) {
            return cameraController.hasSpecificMakeUpType(i9);
        }
        return false;
    }

    public native boolean isBeautyAuthorized(String str);

    public void openAndUpdateBasicLips(String str, int i9, int i10) {
        if (isShowTime()) {
            enableAssetBeautyMakeup(1, false);
            enableBasicBeautyMakeup(1, true);
            this.configData.put("beauty.faceFeatureLipsLut", formatDecimalValue(i9));
            this.configData.put("beauty.lips.lipsMask", str);
            this.configData.put(LightConstants.BeautyConfigKey.BEAUTY_LIPS_LIPS_TYPE, String.valueOf(i10));
            CameraConfig cameraConfig = this.config;
            if (cameraConfig != null) {
                cameraConfig.setConfigData(this.configData);
            }
        }
    }

    public void openAndUpdateBasicMultiply(String str, int i9) {
        if (isShowTime()) {
            enableAssetBeautyMakeup(3, false);
            enableBasicBeautyMakeup(3, true);
            this.configData.put("beauty.faceFeature.enable", ServerProtocol.DIALOG_RETURN_SCOPES_TRUE);
            this.configData.put("beauty.faceFeatureRedCheek", formatDecimalValue(i9));
            this.configData.put("beauty.makeupMultiply.multiplyMask", str);
            CameraConfig cameraConfig = this.config;
            if (cameraConfig != null) {
                cameraConfig.setConfigData(this.configData);
            }
        }
    }

    public void openAndUpdateBasicSoftLight(String str, int i9) {
        if (isShowTime()) {
            enableAssetBeautyMakeup(2, false);
            enableBasicBeautyMakeup(2, true);
            this.configData.put("beauty.faceFeature.enable", ServerProtocol.DIALOG_RETURN_SCOPES_TRUE);
            this.configData.put("beauty.faceFeatureSoftlight", formatDecimalValue(i9));
            this.configData.put("beauty.softLight.softLightMask", str);
            CameraConfig cameraConfig = this.config;
            if (cameraConfig != null) {
                cameraConfig.setConfigData(this.configData);
            }
        }
    }

    public void setBeautyLipsLevel(int i9) {
        this.configData.put("beauty.faceFeatureLipsLut", formatDecimalValue(i9));
        CameraConfig cameraConfig = this.config;
        if (cameraConfig != null) {
            cameraConfig.setConfigData(this.configData);
        }
    }

    public void setBeautyMultiplyLevel(int i9) {
        this.configData.put("beauty.faceFeatureRedCheek", formatDecimalValue(i9));
        CameraConfig cameraConfig = this.config;
        if (cameraConfig != null) {
            cameraConfig.setConfigData(this.configData);
        }
    }

    public void setBeautyMultiplyMask(String str) {
        this.configData.put("beauty.faceFeature.enable", ServerProtocol.DIALOG_RETURN_SCOPES_TRUE);
        this.configData.put("beauty.makeupMultiply.multiplyMask", str);
        CameraConfig cameraConfig = this.config;
        if (cameraConfig != null) {
            cameraConfig.setConfigData(this.configData);
        }
    }

    public void setBeautySoftLevel(int i9) {
        this.configData.put("beauty.faceFeatureSoftlight", formatDecimalValue(i9));
        CameraConfig cameraConfig = this.config;
        if (cameraConfig != null) {
            cameraConfig.setConfigData(this.configData);
        }
    }

    public void setCameraConfig(CameraConfig cameraConfig) {
        this.config = cameraConfig;
        cameraConfig.setConfigData(this.configData);
    }

    public void setCameraController(CameraController cameraController) {
        this.cameraController = cameraController;
    }

    public void setLipsLut(String str, int i9) {
        this.configData.put("beauty.lips.lipsMask", str);
        this.configData.put(LightConstants.BeautyConfigKey.BEAUTY_LIPS_LIPS_TYPE, String.valueOf(i9));
        CameraConfig cameraConfig = this.config;
        if (cameraConfig != null) {
            cameraConfig.setConfigData(this.configData);
        }
        Log.d(TAG, "setLipsLut " + str);
    }

    public void setSoftLightMask(String str) {
        this.configData.put("beauty.faceFeature.enable", ServerProtocol.DIALOG_RETURN_SCOPES_TRUE);
        this.configData.put("beauty.softLight.softLightMask", str);
        CameraConfig cameraConfig = this.config;
        if (cameraConfig != null) {
            cameraConfig.setConfigData(this.configData);
        }
    }

    public void setStrength(int i9, float f10) {
        if (i9 == 1) {
            this.configData.put("beauty.faceFeatureLipsLut", String.valueOf(f10));
        } else if (i9 == 2) {
            this.configData.put("beauty.faceFeatureSoftlight", String.valueOf(f10));
        } else if (i9 == 3) {
            this.configData.put("beauty.faceFeatureRedCheek", String.valueOf(f10));
        }
        CameraConfig cameraConfig = this.config;
        if (cameraConfig != null) {
            cameraConfig.setConfigData(this.configData);
        }
    }
}
