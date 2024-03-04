package org.light.device;

import android.app.Application;
import android.content.Context;
import android.os.Build;
import android.provider.Settings;
import android.text.TextUtils;
import com.google.android.exoplayer2.PlaybackException;
import com.google.gson.Gson;
import com.meizu.cloud.pushsdk.constants.PushConstants;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import org.light.utils.FileUtils;
import org.light.utils.LightLogUtil;
/* loaded from: classes7.dex */
public final class DeviceInstance {
    public static final String BRAND_HUAWEI = "HUAWEI";
    public static final String BRAND_MEIZU = "MEIZU";
    public static final String BRAND_OPPO = "OPPO";
    public static final String BRAND_VIVO = "VIVO";
    public static final String BRAND_XIAOMI = "XIAOMI";
    public static final String MODEL_COOLPAD_8150 = "8150";
    public static final String MODEL_K_TOUCH_W619 = "K-Touch W619";
    public static final String MODEL_NEXUS_6 = "MOTOROLA_Nexus_6";
    public static final String MODEL_NEXUS_6P = "HUAWEI_Nexus_6P";
    public static final String MODEL_OPPO_X909 = "OPPO_X909";
    public static final String MODEL_VIVO_Y23L = "VIVO_vivo_Y23L";
    public static final String NUBIA_NX511J = "NUBIA_NX511J";
    private static String TAG = "DeviceInstance";
    private String deviceId;
    private String mDeviceName;
    private String mDeviceVersion;
    private ConcurrentHashMap<String, String> mModelMap;
    private ConcurrentHashMap<String, String> mSocMap;

    /* loaded from: classes7.dex */
    public static class BrandNames {
        public Map<String, String> BRAND_NAMES;
    }

    /* loaded from: classes7.dex */
    private enum DEVICE_MEM {
        GN9010("GN9010", 81920),
        vivo_Y23L("vivo_Y23L", 81920),
        vivo_Y27("vivo_Y27", 81920),
        HUAWEI_PLK("HUAWEI_PLK-AL10", 81920);
        
        private final String device;
        private final int sizeInKB;

        DEVICE_MEM(String str, int i9) {
            this.device = str;
            this.sizeInKB = i9;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes7.dex */
    public static class InstanceHolder {
        private static final DeviceInstance INSTANCE = new DeviceInstance();

        private InstanceHolder() {
        }
    }

    /* loaded from: classes7.dex */
    public static class SOCPhones {
        public Map<String, String> SOC_SCORE;
    }

    /* loaded from: classes7.dex */
    public enum SOC_CLASS {
        NULL(-1, -1, "Class_Null"),
        V_HIGH(0, PlaybackException.ERROR_CODE_DRM_UNSPECIFIED, "Class_V_High"),
        HIGH(1, 4500, "Class_High"),
        NORMAL(2, 3500, "Class_Normal"),
        LOW(3, PushConstants.BROADCAST_MESSAGE_ARRIVE, "Class_Low"),
        V_LOW(4, 0, "Class_V_Low");
        
        public String desc;
        public int score;
        public int value;

        SOC_CLASS(int i9, int i10, String str) {
            this.value = i9;
            this.score = i10;
            this.desc = str;
        }

        @Override // java.lang.Enum
        public String toString() {
            return "SOC_CLASS{value=" + this.value + ", score=" + this.score + ", desc=" + this.desc + '}';
        }
    }

    private String getHuaweiEMUIVersion() {
        return getOSVersion("ro.build.version.emui");
    }

    public static DeviceInstance getInstance() {
        return InstanceHolder.INSTANCE;
    }

    private String getOSVersion(String str) {
        try {
            Class<?> cls = Class.forName("android.os.SystemProperties");
            return (String) cls.getDeclaredMethod("get", String.class).invoke(cls, str);
        } catch (Exception unused) {
            return "";
        }
    }

    private String getOppoColorOSVersion() {
        return getOSVersion("ro.build.version.opporom");
    }

    private String getVivoOSVersion() {
        return getOSVersion("ro.vivo.os.version");
    }

    private String getXiaomiMIUIVersion() {
        return getOSVersion("ro.miui.ui.version.name");
    }

    private void initModels(Context context, String str) {
        Map<String, String> map;
        String str2 = FileUtils.genSeperateFileDir(str) + "brand_name.json";
        if (!FileUtils.isFileExist(str2)) {
            str2 = FileUtils.load(context, "assets://brand_name.json");
            if (!FileUtils.isFileExist(str2)) {
                return;
            }
        }
        String load = FileUtils.load(context, str2);
        BrandNames brandNames = null;
        try {
            brandNames = (BrandNames) new Gson().fromJson(load, (Class<Object>) BrandNames.class);
        } catch (NoSuchMethodError e10) {
            LightLogUtil.e(TAG, e10.toString());
        }
        if (brandNames == null || (map = brandNames.BRAND_NAMES) == null || (r3 = map.entrySet().iterator()) == null) {
            return;
        }
        this.mModelMap.clear();
        for (Map.Entry<String, String> entry : map.entrySet()) {
            this.mModelMap.put(entry.getKey().toUpperCase(), entry.getValue());
        }
    }

    private void initSOCs(Context context, String str) {
        Map<String, String> map;
        String str2 = FileUtils.genSeperateFileDir(str) + "score_phone.json";
        if (!FileUtils.isFileExist(str2)) {
            str2 = FileUtils.load(context, "assets://score_phone.json");
            if (!FileUtils.isFileExist(str2)) {
                return;
            }
        }
        SOCPhones sOCPhones = (SOCPhones) new Gson().fromJson(FileUtils.load(context, str2), (Class<Object>) SOCPhones.class);
        this.mSocMap.clear();
        if (sOCPhones == null || (map = sOCPhones.SOC_SCORE) == null) {
            return;
        }
        this.mSocMap.putAll(map);
    }

    private void showDeviceInfo() {
        LightLogUtil.d(TAG, "****** DeviceInfo  (+) *****");
        String str = TAG;
        LightLogUtil.d(str, "DeviceName = " + getDeviceName());
        String str2 = TAG;
        StringBuilder sb2 = new StringBuilder();
        sb2.append("SubName = ");
        sb2.append(getDeviceName());
        sb2.append("_");
        String str3 = Build.DISPLAY;
        sb2.append(str3.replace(" ", "_").toUpperCase());
        LightLogUtil.d(str2, sb2.toString());
        String str4 = TAG;
        LightLogUtil.d(str4, "MODEL = " + LightDeviceUtils.getBuildModel());
        String str5 = TAG;
        LightLogUtil.d(str5, "SDK_INT = " + Build.VERSION.SDK_INT);
        String str6 = TAG;
        LightLogUtil.d(str6, "BRAND = " + Build.BRAND);
        String str7 = TAG;
        LightLogUtil.d(str7, "DEVICE = " + Build.DEVICE);
        String str8 = TAG;
        LightLogUtil.d(str8, "DISPLAY = " + str3);
        String str9 = TAG;
        LightLogUtil.d(str9, "HARDWARE = " + Build.HARDWARE);
        String str10 = TAG;
        LightLogUtil.d(str10, "MANUFACTURER = " + Build.MANUFACTURER);
        String str11 = TAG;
        LightLogUtil.d(str11, "PRODUCT = " + Build.PRODUCT);
        String str12 = TAG;
        LightLogUtil.d(str12, "TAGS = " + Build.TAGS);
        String str13 = TAG;
        LightLogUtil.d(str13, "USER = " + Build.USER);
        String str14 = TAG;
        LightLogUtil.d(str14, "TYPE = " + Build.TYPE);
        String str15 = TAG;
        LightLogUtil.d(str15, "BOARD = " + Build.BOARD);
        LightLogUtil.d(TAG, "****** DeviceInfo (-) *****");
    }

    public static String staticGetDeviceId() {
        return getInstance().getDeviceId();
    }

    public static String staticGetDeviceName() {
        return getInstance().getDeviceName();
    }

    public static String staticGetDeviceVersion() {
        return getInstance().getDeviceVersion();
    }

    public String getDeviceId() {
        if (this.deviceId == null) {
            try {
                this.deviceId = Settings.Secure.getString(((Application) Class.forName("android.app.ActivityThread").getMethod("currentApplication", new Class[0]).invoke(null, null)).getApplicationContext().getContentResolver(), "android_id");
            } catch (Exception e10) {
                e10.printStackTrace();
                this.deviceId = "0";
            }
        }
        return this.deviceId;
    }

    public String getDeviceName() {
        if (TextUtils.isEmpty(this.mDeviceName)) {
            String buildModel = LightDeviceUtils.getBuildModel();
            if (buildModel.equalsIgnoreCase(MODEL_K_TOUCH_W619)) {
                this.mDeviceName = this.mModelMap.get("TIANYU") + " " + buildModel;
            } else if (buildModel.equalsIgnoreCase(MODEL_COOLPAD_8150) && Build.BRAND.equalsIgnoreCase("COOLPAD")) {
                this.mDeviceName = this.mModelMap.get("COOLPAD") + " " + buildModel;
            } else {
                ConcurrentHashMap<String, String> concurrentHashMap = this.mModelMap;
                String str = Build.MANUFACTURER;
                String str2 = concurrentHashMap.get(str.toUpperCase());
                if (TextUtils.isEmpty(str2) || "null".equalsIgnoreCase(str2)) {
                    str2 = str.toUpperCase();
                }
                if (TextUtils.isEmpty(str2) || "null".equalsIgnoreCase(str2)) {
                    str2 = Build.BRAND.toUpperCase();
                }
                this.mDeviceName = str2 + " " + buildModel;
            }
            this.mDeviceName = this.mDeviceName.replace(" ", "_").replace("+", "").replace("(t)", "");
        }
        return this.mDeviceName;
    }

    /* JADX WARN: Code restructure failed: missing block: B:25:0x0074, code lost:
        if (r4 > r1.score) goto L12;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public org.light.device.DeviceInstance.SOC_CLASS getDeviceSocClass(java.lang.String r4) {
        /*
            r3 = this;
            java.lang.String r0 = org.light.device.DeviceInstance.TAG
            java.lang.StringBuilder r1 = new java.lang.StringBuilder
            r1.<init>()
            java.lang.String r2 = "[getDeviceSocClass] + BEGIN, socInfo = "
            r1.append(r2)
            r1.append(r4)
            java.lang.String r1 = r1.toString()
            org.light.utils.LightLogUtil.d(r0, r1)
            boolean r0 = android.text.TextUtils.isEmpty(r4)
            if (r0 != 0) goto L2f
            java.util.concurrent.ConcurrentHashMap<java.lang.String, java.lang.String> r0 = r3.mSocMap
            if (r0 == 0) goto L2f
            boolean r0 = r0.containsKey(r4)
            if (r0 == 0) goto L2f
            java.util.concurrent.ConcurrentHashMap<java.lang.String, java.lang.String> r0 = r3.mSocMap
            java.lang.Object r4 = r0.get(r4)
            java.lang.String r4 = (java.lang.String) r4
            goto L31
        L2f:
            java.lang.String r4 = ""
        L31:
            java.lang.String r0 = org.light.device.DeviceInstance.TAG
            java.lang.StringBuilder r1 = new java.lang.StringBuilder
            r1.<init>()
            java.lang.String r2 = "[getDeviceSocClass] scoreValue = "
            r1.append(r2)
            r1.append(r4)
            java.lang.String r1 = r1.toString()
            org.light.utils.LightLogUtil.d(r0, r1)
            org.light.device.DeviceInstance$SOC_CLASS r0 = org.light.device.DeviceInstance.SOC_CLASS.NULL
            boolean r1 = android.text.TextUtils.isEmpty(r4)
            if (r1 != 0) goto L77
            int r4 = java.lang.Integer.parseInt(r4)
            org.light.device.DeviceInstance$SOC_CLASS r1 = org.light.device.DeviceInstance.SOC_CLASS.V_HIGH
            int r2 = r1.score
            if (r4 < r2) goto L5b
        L59:
            r0 = r1
            goto L77
        L5b:
            org.light.device.DeviceInstance$SOC_CLASS r1 = org.light.device.DeviceInstance.SOC_CLASS.HIGH
            int r2 = r1.score
            if (r4 < r2) goto L62
            goto L59
        L62:
            org.light.device.DeviceInstance$SOC_CLASS r1 = org.light.device.DeviceInstance.SOC_CLASS.NORMAL
            int r2 = r1.score
            if (r4 < r2) goto L69
            goto L59
        L69:
            org.light.device.DeviceInstance$SOC_CLASS r1 = org.light.device.DeviceInstance.SOC_CLASS.LOW
            int r2 = r1.score
            if (r4 < r2) goto L70
            goto L59
        L70:
            org.light.device.DeviceInstance$SOC_CLASS r1 = org.light.device.DeviceInstance.SOC_CLASS.V_LOW
            int r2 = r1.score
            if (r4 <= r2) goto L77
            goto L59
        L77:
            java.lang.String r4 = org.light.device.DeviceInstance.TAG
            java.lang.StringBuilder r1 = new java.lang.StringBuilder
            r1.<init>()
            java.lang.String r2 = "[getDeviceSocClass] + END, socClass = "
            r1.append(r2)
            r1.append(r0)
            java.lang.String r1 = r1.toString()
            org.light.utils.LightLogUtil.d(r4, r1)
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: org.light.device.DeviceInstance.getDeviceSocClass(java.lang.String):org.light.device.DeviceInstance$SOC_CLASS");
    }

    public String getDeviceVersion() {
        if (TextUtils.isEmpty(this.mDeviceVersion)) {
            if (isHuaweiDevice()) {
                this.mDeviceVersion = getHuaweiEMUIVersion();
            } else if (isOppoDevice()) {
                this.mDeviceVersion = "ColorOS_" + getOppoColorOSVersion();
            } else if (isXiaoMiDevice()) {
                this.mDeviceVersion = "MIUI_" + getXiaomiMIUIVersion();
            } else if (isViVoDevice()) {
                this.mDeviceVersion = "VivoOS_" + getVivoOSVersion();
            }
        }
        return this.mDeviceVersion;
    }

    public int getMaxMemorySizeInKB() {
        DEVICE_MEM[] values;
        String trim = getDeviceName().toLowerCase().trim();
        for (DEVICE_MEM device_mem : DEVICE_MEM.values()) {
            if (trim.endsWith(device_mem.device.toLowerCase())) {
                return device_mem.sizeInKB;
            }
        }
        return Integer.MAX_VALUE;
    }

    public void initSettings(Context context, String str) {
        initModels(context, str);
        initSOCs(context, str);
    }

    public boolean isHuaweiDevice() {
        String deviceName = getDeviceName();
        return !TextUtils.isEmpty(deviceName) && deviceName.startsWith(BRAND_HUAWEI);
    }

    public boolean isMeiZuDevice() {
        String deviceName = getDeviceName();
        return !TextUtils.isEmpty(deviceName) && deviceName.startsWith(BRAND_MEIZU);
    }

    public boolean isOppoDevice() {
        String deviceName = getDeviceName();
        return !TextUtils.isEmpty(deviceName) && deviceName.startsWith(BRAND_OPPO);
    }

    public boolean isViVoDevice() {
        String deviceName = getDeviceName();
        return !TextUtils.isEmpty(deviceName) && deviceName.startsWith(BRAND_VIVO);
    }

    public boolean isXiaoMiDevice() {
        String deviceName = getDeviceName();
        return !TextUtils.isEmpty(deviceName) && deviceName.startsWith(BRAND_XIAOMI);
    }

    private DeviceInstance() {
        this.mModelMap = new ConcurrentHashMap<>();
        this.mSocMap = new ConcurrentHashMap<>();
        this.mDeviceVersion = "";
        this.mDeviceName = "";
        this.deviceId = null;
        showDeviceInfo();
    }
}
