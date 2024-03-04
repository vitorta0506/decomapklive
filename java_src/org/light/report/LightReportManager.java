package org.light.report;

import android.os.Environment;
import android.os.RemoteException;
import android.util.Log;
import com.facebook.internal.ServerProtocol;
import com.tencent.bugly.Bugly;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import org.json.JSONException;
import org.json.JSONObject;
import org.light.ILightSDKServiceInterface;
import org.light.LightEngine;
import org.light.utils.LightDataUtils;
import org.light.utils.LightLogUtil;
/* loaded from: classes7.dex */
public class LightReportManager {
    private static final String TAG = "LightReportManager";
    private static boolean isCrossProcessMode = false;
    private static ILightSDKServiceInterface lightSDKServiceInterface;
    private static LightReportInterface mLightReporter;
    private int instanceId = 0;

    public static boolean GeneratePerfReport(final String str) {
        new JSONObject();
        try {
            final String string = new JSONObject(str).getString("MaterialID");
            Log.d("GeneratePerfReport", str);
            string = (string == null || string.isEmpty()) ? "perf" : "perf";
            new Thread(new Runnable() { // from class: org.light.report.LightReportManager.1
                @Override // java.lang.Runnable
                public void run() {
                    if (!Environment.getExternalStorageState().equals("mounted")) {
                        LightLogUtil.e(LightReportManager.TAG, "没有SDCARD");
                    }
                    File externalStorageDirectory = Environment.getExternalStorageDirectory();
                    externalStorageDirectory.toString();
                    LightLogUtil.e(LightReportManager.TAG, "得到的根目录路径:" + externalStorageDirectory);
                    String str2 = externalStorageDirectory + File.separator + string + ".txt";
                    LightLogUtil.i(LightReportManager.TAG, "GeneratePerfReport path:" + str2);
                    try {
                        FileOutputStream fileOutputStream = new FileOutputStream(new File(str2));
                        fileOutputStream.write(str.getBytes());
                        fileOutputStream.close();
                        LightLogUtil.i(LightReportManager.TAG, "GeneratePerfReport write compeletly.");
                    } catch (FileNotFoundException unused) {
                        LightLogUtil.i(LightReportManager.TAG, "GeneratePerfReport exception:FileNotFoundException");
                    } catch (IOException unused2) {
                        LightLogUtil.i(LightReportManager.TAG, "GeneratePerfReport exception:IOException");
                    }
                }
            }).start();
            return true;
        } catch (JSONException e10) {
            e10.printStackTrace();
            return false;
        }
    }

    public static void LaunchFromApp(String str, String str2) {
        ILightSDKServiceInterface iLightSDKServiceInterface = lightSDKServiceInterface;
        if (iLightSDKServiceInterface != null) {
            try {
                iLightSDKServiceInterface.lightReportManagerLaunchFromApp(str, str2);
                return;
            } catch (RemoteException e10) {
                LightLogUtil.e(TAG, "RemoteException:\n" + e10);
                return;
            }
        }
        nativeLaunchFromApp(str, str2);
    }

    public static void SetCommonParamsExternal(HashMap<String, String> hashMap) {
        ILightSDKServiceInterface iLightSDKServiceInterface = lightSDKServiceInterface;
        if (iLightSDKServiceInterface != null) {
            try {
                iLightSDKServiceInterface.lightReportManagerSetCommonParamsExternal(LightDataUtils.map2Bundle(hashMap));
                return;
            } catch (RemoteException e10) {
                LightLogUtil.e(TAG, "RemoteException:\n" + e10);
                return;
            }
        }
        nativeSetCommonParamsExternal(hashMap);
    }

    public static String getShareKey() {
        ILightSDKServiceInterface iLightSDKServiceInterface = lightSDKServiceInterface;
        if (iLightSDKServiceInterface != null) {
            try {
                return iLightSDKServiceInterface.lightReportManagerGetShareKey();
            } catch (RemoteException e10) {
                LightLogUtil.e(TAG, "RemoteException:\n" + e10);
                return null;
            }
        }
        return nativeGetShareKey();
    }

    public static boolean lightReport(String str, HashMap<String, String> hashMap) throws IOException {
        if (hashMap != null && hashMap.size() != 0) {
            hashMap.put("cross_process_mode", isCrossProcessMode ? ServerProtocol.DIALOG_RETURN_SCOPES_TRUE : Bugly.SDK_IS_DEV);
            Iterator<Map.Entry<String, String>> it = hashMap.entrySet().iterator();
            while (it != null && it.hasNext()) {
                Map.Entry<String, String> next = it.next();
                LightLogUtil.i("greatgao", str + "-" + next.getKey() + "-" + next.getValue());
            }
            LightReportInterface lightReportInterface = mLightReporter;
            if (lightReportInterface != null) {
                lightReportInterface.report(str, hashMap);
                return true;
            }
            LightLogUtil.i(TAG, "LightReporter is null!");
        }
        return false;
    }

    private static native String nativeGetShareKey();

    private static native void nativeLaunchFromApp(String str, String str2);

    private static native void nativeReportOutsideData(String str, HashMap<String, String> hashMap);

    private static native void nativeSetCommonParamsExternal(HashMap<String, String> hashMap);

    public static void reportOutsideData(String str, HashMap<String, String> hashMap) {
        ILightSDKServiceInterface iLightSDKServiceInterface = lightSDKServiceInterface;
        if (iLightSDKServiceInterface != null) {
            try {
                iLightSDKServiceInterface.lightReportManagerReportOutsideData(str, LightDataUtils.map2Bundle(hashMap));
                return;
            } catch (RemoteException e10) {
                LightLogUtil.e(TAG, "RemoteException:\n" + e10);
                return;
            }
        }
        nativeReportOutsideData(str, hashMap);
    }

    public static void setCrossProcessMode(boolean z10) {
        isCrossProcessMode = z10;
    }

    public static void setLightSDKServiceInterface(ILightSDKServiceInterface iLightSDKServiceInterface) {
        lightSDKServiceInterface = iLightSDKServiceInterface;
    }

    public static void setReportEntry(String str) {
        LightEngine.setAppEntry(str);
    }

    public static void setReporter(LightReportInterface lightReportInterface) {
        mLightReporter = lightReportInterface;
    }

    public static float string2Float(String str) {
        try {
            return Float.parseFloat(str);
        } catch (Exception unused) {
            LightLogUtil.e(TAG, "string2Float exception:" + str);
            return -1.0f;
        }
    }

    public static int string2Int(String str, float f10, boolean z10) {
        if (z10) {
            return (int) (string2Float(str) * f10);
        }
        try {
            return (int) (Integer.parseInt(str) * f10);
        } catch (NumberFormatException unused) {
            LightLogUtil.e(TAG, "string2Int exception:" + str);
            return -1;
        }
    }

    public static long string2Long(String str) {
        try {
            return Long.parseLong(str);
        } catch (NumberFormatException unused) {
            LightLogUtil.e(TAG, "string2Long exception:" + str);
            return -1L;
        }
    }

    public int getInstanceId() {
        return this.instanceId;
    }

    public void setInstanceId(int i9) {
        this.instanceId = i9;
    }
}
