package org.light.device;

import android.content.Context;
import com.google.gson.JsonElement;
import com.google.gson.JsonObject;
import java.util.Map;
import org.light.bean.PhoneType;
import org.light.utils.FileUtils;
import org.light.utils.GsonUtils;
import org.light.utils.LightLogUtil;
/* loaded from: classes7.dex */
public class OfflineConfig {
    private static final String BENCHMARK_CPU_INFOS_PATH = "benchmark/cpu_infos.json";
    private static final String BENCHMARK_DEVICE_MODELS_DIR = "benchmark/device_models/";
    private static final float BENCHMARK_LEVEL_HIGH = 1.0f;
    private static final float BENCHMARK_LEVEL_UNKNOWN = -1.0f;
    private static final String BENCHMARK_SOC_MODELS_PATH = "benchmark/soc_models.json";
    private static final String BENCHMARK_STRATEGY_CPU_MAX_FREQ = "CpuMaxFreq";
    private static final String BENCHMARK_STRATEGY_CPU_PART = "CpuPart";
    private static final String BENCHMARK_STRATEGY_CPU_PART_AND_MAX_FREQ = "CpuPartAndMaxFreq";
    private static final String BENCHMARK_STRATEGY_DEFAULT_VALUE = "DefaultValue";
    private static final String BENCHMARK_STRATEGY_DEVICE_MODEL = "DeviceModel";
    private static final String BENCHMARK_STRATEGY_SOC_NAME = "SocName";
    public static final int DEVICE_PERF_LEVEL_HIGH = 4;
    public static final int DEVICE_PERF_LEVEL_LOW = 2;
    public static final int DEVICE_PERF_LEVEL_MIDDLE = 3;
    public static final int DEVICE_PERF_LEVEL_UNKNOWN = -1;
    public static final int DEVICE_PERF_LEVEL_VERYHIGH = 5;
    public static final int DEVICE_PERF_LEVEL_VERYLOW = 1;
    private static final String TAG = "OfflineConfig";
    private static String benchmarkStrategy = "DefaultValue";
    protected static float sGauLowMaxSize = 360.0f;
    protected static int sGauLowPhoneYear = 2014;
    protected static float sGauMidMaxSize = 480.0f;
    protected static int sGauMidderPhoneYear = 2015;
    protected static float sGauSuperMaxSzie = 540.0f;
    protected static int sGauSuperPhoneYear = 2017;
    protected static int sGaussMaxSize = -1;
    protected static float sGaussScale = -1.0f;
    protected static boolean sIsGaussResize = true;
    protected static int sIsPagEncodeBgStaus = 0;
    protected static int sLowDevYearPag = 2015;
    protected static int sLowDevYearRapidnet = 2015;
    protected static boolean sNeedSoftDecoder = false;
    protected static boolean sNotSupportRealTimePag = false;
    protected static int sPagNeedScaleStatus = 0;
    protected static float sPagScaleVaue = 0.5f;
    protected static int sRapidnetSkipMode = 0;
    protected static boolean sUpdateGaussSetting = false;
    public static int useCutoutVersion = CutOutVersion.NEW.value;
    private static int sPhonePerfLevel = -1;
    private static String sAssetsPath = "";

    /* renamed from: org.light.device.OfflineConfig$1  reason: invalid class name */
    /* loaded from: classes7.dex */
    static /* synthetic */ class AnonymousClass1 {
        static final /* synthetic */ int[] $SwitchMap$org$light$bean$PhoneType;

        static {
            int[] iArr = new int[PhoneType.values().length];
            $SwitchMap$org$light$bean$PhoneType = iArr;
            try {
                iArr[PhoneType.SUPER_PHONE.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$org$light$bean$PhoneType[PhoneType.MIDDER_PHONE.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$org$light$bean$PhoneType[PhoneType.LOW_PHONE.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
        }
    }

    /* loaded from: classes7.dex */
    public enum CutOutVersion {
        OLD(1),
        NEW(2);
        
        public final int value;

        CutOutVersion(int i9) {
            this.value = i9;
        }
    }

    private static int convertBenchmarkLevelToPerfLevel(int i9) {
        int i10 = (5 - i9) + 1;
        if (i10 < 1) {
            return 1;
        }
        if (i10 > 5) {
            return 5;
        }
        return i10;
    }

    private static float getBenchmarkLevelByCpuFreq(JsonObject jsonObject) {
        JsonObject asJsonObject;
        int maxCpuFreq = LightDeviceUtils.getMaxCpuFreq();
        if (maxCpuFreq > 0 && (asJsonObject = jsonObject.getAsJsonObject("cpuFreq")) != null) {
            float f10 = (float) (maxCpuFreq * 1.0E-6d);
            float f11 = 0.0f;
            for (Map.Entry<String, JsonElement> entry : asJsonObject.entrySet()) {
                String[] split = entry.getKey().replaceAll("[]\\s\\(]+", "").split(",");
                if (split.length == 2) {
                    float parseFloat = Float.parseFloat(split[0]);
                    float parseFloat2 = Float.parseFloat(split[1]);
                    if (parseFloat < f10 && f10 <= parseFloat2) {
                        return entry.getValue().getAsFloat();
                    }
                    f11 = parseFloat2;
                }
            }
            if (f10 > f11) {
                return 1.0f;
            }
            return BENCHMARK_LEVEL_UNKNOWN;
        }
        return BENCHMARK_LEVEL_UNKNOWN;
    }

    private static float getBenchmarkLevelByCpuPart(JsonObject jsonObject) {
        JsonObject asJsonObject;
        String lowerCase = LightDeviceUtils.getLastCpuPart().toLowerCase();
        return (lowerCase.isEmpty() || (asJsonObject = jsonObject.getAsJsonObject("cpuPart")) == null || !asJsonObject.has(lowerCase)) ? BENCHMARK_LEVEL_UNKNOWN : asJsonObject.get(lowerCase).getAsFloat();
    }

    public static String getBenchmarkStrategy() {
        return benchmarkStrategy;
    }

    public static int getGauMaxSize() {
        return sGaussMaxSize;
    }

    public static PhoneType getGauPhoneType(int i9) {
        return i9 >= sGauSuperPhoneYear ? PhoneType.SUPER_PHONE : i9 >= sGauMidderPhoneYear ? PhoneType.MIDDER_PHONE : PhoneType.LOW_PHONE;
    }

    public static float getGauScaleFromPhoneYear(int i9) {
        int i10 = AnonymousClass1.$SwitchMap$org$light$bean$PhoneType[getGauPhoneType(i9).ordinal()];
        if (i10 != 1) {
            if (i10 != 2) {
                return i10 != 3 ? BENCHMARK_LEVEL_UNKNOWN : sGauLowMaxSize;
            }
            return sGauMidMaxSize;
        }
        return sGauSuperMaxSzie;
    }

    public static float getGauScaleValue() {
        return sGaussScale;
    }

    private static JsonObject getJsonObjectFromBenchmarkFile(Context context, String str) {
        String readStringFromAssets;
        if (sAssetsPath.isEmpty()) {
            readStringFromAssets = FileOfflineUtil.readStringFromAssets(context, str);
        } else {
            String readJsonStringFromFile = FileOfflineUtil.readJsonStringFromFile(sAssetsPath + str);
            readStringFromAssets = readJsonStringFromFile == null ? FileOfflineUtil.readStringFromAssets(context, str) : readJsonStringFromFile;
        }
        if (readStringFromAssets == null) {
            return null;
        }
        return GsonUtils.json2JsonObject(readStringFromAssets);
    }

    public static int getPagLowDeviceYear() {
        return sLowDevYearPag;
    }

    public static int getPagNeedScaleStatus() {
        return sPagNeedScaleStatus;
    }

    public static float getPagPlayScale() {
        return sPagScaleVaue;
    }

    private static int getPerfLevelByCpuInfo(Context context) {
        JsonObject jsonObjectFromBenchmarkFile = getJsonObjectFromBenchmarkFile(context, BENCHMARK_CPU_INFOS_PATH);
        if (jsonObjectFromBenchmarkFile == null) {
            return -1;
        }
        float benchmarkLevelByCpuPart = getBenchmarkLevelByCpuPart(jsonObjectFromBenchmarkFile);
        float benchmarkLevelByCpuFreq = getBenchmarkLevelByCpuFreq(jsonObjectFromBenchmarkFile);
        int i9 = (benchmarkLevelByCpuPart > 0.0f ? 1 : (benchmarkLevelByCpuPart == 0.0f ? 0 : -1));
        if (i9 >= 0 || benchmarkLevelByCpuFreq >= 0.0f) {
            if (benchmarkLevelByCpuFreq < 0.0f) {
                benchmarkStrategy = BENCHMARK_STRATEGY_CPU_PART;
                int convertBenchmarkLevelToPerfLevel = convertBenchmarkLevelToPerfLevel(Math.round(benchmarkLevelByCpuPart));
                sPhonePerfLevel = convertBenchmarkLevelToPerfLevel;
                return convertBenchmarkLevelToPerfLevel;
            } else if (i9 < 0) {
                benchmarkStrategy = BENCHMARK_STRATEGY_CPU_MAX_FREQ;
                int convertBenchmarkLevelToPerfLevel2 = convertBenchmarkLevelToPerfLevel(Math.round(benchmarkLevelByCpuFreq));
                sPhonePerfLevel = convertBenchmarkLevelToPerfLevel2;
                return convertBenchmarkLevelToPerfLevel2;
            } else {
                benchmarkStrategy = BENCHMARK_STRATEGY_CPU_PART_AND_MAX_FREQ;
                float asFloat = jsonObjectFromBenchmarkFile.get("cpuPartRatio").getAsFloat();
                int convertBenchmarkLevelToPerfLevel3 = convertBenchmarkLevelToPerfLevel(Math.round((benchmarkLevelByCpuPart * asFloat) + (benchmarkLevelByCpuFreq * (1.0f - asFloat))));
                sPhonePerfLevel = convertBenchmarkLevelToPerfLevel3;
                return convertBenchmarkLevelToPerfLevel3;
            }
        }
        return -1;
    }

    private static int getPerfLevelByDeviceModel(Context context) {
        String lowerCase = LightDeviceUtils.getBuildModel().trim().toLowerCase();
        if (lowerCase.isEmpty()) {
            return -1;
        }
        JsonObject jsonObjectFromBenchmarkFile = getJsonObjectFromBenchmarkFile(context, BENCHMARK_DEVICE_MODELS_DIR + lowerCase.charAt(0) + ".json");
        if (jsonObjectFromBenchmarkFile == null || !jsonObjectFromBenchmarkFile.has(lowerCase)) {
            return -1;
        }
        benchmarkStrategy = BENCHMARK_STRATEGY_DEVICE_MODEL;
        int convertBenchmarkLevelToPerfLevel = convertBenchmarkLevelToPerfLevel(jsonObjectFromBenchmarkFile.get(lowerCase).getAsInt());
        sPhonePerfLevel = convertBenchmarkLevelToPerfLevel;
        return convertBenchmarkLevelToPerfLevel;
    }

    private static int getPerfLevelBySocModel(Context context) {
        JsonObject jsonObjectFromBenchmarkFile;
        String lowerCase = LightDeviceUtils.getSocName().toLowerCase();
        if (lowerCase.isEmpty() || (jsonObjectFromBenchmarkFile = getJsonObjectFromBenchmarkFile(context, BENCHMARK_SOC_MODELS_PATH)) == null) {
            return -1;
        }
        for (Map.Entry<String, JsonElement> entry : jsonObjectFromBenchmarkFile.entrySet()) {
            if (lowerCase.contains(entry.getKey())) {
                benchmarkStrategy = BENCHMARK_STRATEGY_SOC_NAME;
                int convertBenchmarkLevelToPerfLevel = convertBenchmarkLevelToPerfLevel(entry.getValue().getAsInt());
                sPhonePerfLevel = convertBenchmarkLevelToPerfLevel;
                return convertBenchmarkLevelToPerfLevel;
            }
        }
        return -1;
    }

    public static int getPhonePerfLevel(Context context) {
        int i9 = sPhonePerfLevel;
        if (i9 != -1) {
            return i9;
        }
        if (context == null) {
            LightLogUtil.e(TAG, "getPhonePerfLevel: context is null");
            sPhonePerfLevel = 3;
            return 3;
        } else if (getPerfLevelByDeviceModel(context) != -1) {
            return sPhonePerfLevel;
        } else {
            if (getPerfLevelBySocModel(context) != -1) {
                return sPhonePerfLevel;
            }
            if (getPerfLevelByCpuInfo(context) != -1) {
                return sPhonePerfLevel;
            }
            sPhonePerfLevel = 3;
            return 3;
        }
    }

    public static int getPhoneType(int i9) {
        if (i9 >= sGauSuperPhoneYear) {
            return 5;
        }
        if (i9 >= sGauMidderPhoneYear) {
            return 3;
        }
        return i9 >= sGauLowPhoneYear ? 2 : 1;
    }

    public static int isEncodeBackGround() {
        return sIsPagEncodeBgStaus;
    }

    public static boolean isGausResize() {
        return sIsGaussResize;
    }

    public static boolean isGaussSettingUpdate() {
        return sUpdateGaussSetting;
    }

    public static boolean isNeedScale() {
        return (sPagNeedScaleStatus == 0 && YearClass.get(null) <= sLowDevYearPag) || sPagNeedScaleStatus == 1;
    }

    public static boolean isNeedSkipRapidnet(Context context) {
        return (sRapidnetSkipMode == 0 && YearClass.get(context) <= sLowDevYearRapidnet) || sRapidnetSkipMode == 1;
    }

    public static boolean isNeedSoftDecode() {
        return sNeedSoftDecoder;
    }

    public static boolean isNotSuptPagRealTime() {
        return sNotSupportRealTimePag;
    }

    public static void setAssetsPath(String str) {
        if (!str.endsWith(FileUtils.RES_PREFIX_STORAGE)) {
            sAssetsPath = str + FileUtils.RES_PREFIX_STORAGE;
            return;
        }
        sAssetsPath = str;
    }
}
