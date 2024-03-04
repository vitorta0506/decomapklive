package cn.jpush.android.helper;

import android.content.Context;
import android.os.Bundle;
import android.text.TextUtils;
import cn.jiguang.api.JCoreManager;
import cn.jpush.android.api.JThirdPlatFormInterface;
import cn.jpush.android.local.JPushConstants;
import com.huawei.hms.framework.common.hianalytics.HianalyticsBaseData;
import org.json.JSONObject;
/* loaded from: classes.dex */
public class c {
    public static void a(Context context, int i9, String str, JSONObject jSONObject) {
        if (context == null) {
            throw new IllegalArgumentException("NULL context");
        }
        Logger.d("JPushReportHelper", "reportPushAnylysis code:" + i9 + ", msg:" + str + ", jsonExtra:" + jSONObject);
        Bundle bundle = new Bundle();
        bundle.putInt("code", i9);
        bundle.putString("msg", str);
        JCoreManager.onEvent(context, JPushConstants.SDK_TYPE, 87, null, bundle, jSONObject);
    }

    public static void a(Context context, String str, byte b10, String str2) {
        if (!TextUtils.isEmpty(str)) {
            a(str, "", b10, 1000, context, str2);
            return;
        }
        Logger.ee("JPushReportHelper", "The msgId is not valid - " + str);
    }

    public static void a(Context context, JSONObject jSONObject) {
        if (context == null) {
            throw new IllegalArgumentException("NULL context");
        }
        if (jSONObject == null || jSONObject.length() <= 0) {
            return;
        }
        Logger.d("JPushReportHelper", "action:reportOperation - content:" + jSONObject.toString());
        JCoreManager.onEvent(context, JPushConstants.SDK_TYPE, 14, null, null, jSONObject);
    }

    public static void a(String str, int i9, Context context) {
        a(str, i9, (String) null, context);
    }

    public static void a(String str, int i9, String str2, Context context) {
        if (context == null) {
            Logger.d("JPushReportHelper", "context did not init, return");
            return;
        }
        StringBuffer stringBuffer = new StringBuffer();
        stringBuffer.append("action:reportActionResult - messageId: " + str + ", code: " + i9 + "-" + f.a(i9));
        if (!TextUtils.isEmpty(str2)) {
            stringBuffer.append("， report content: " + str2);
        }
        String c10 = cn.jpush.android.d.d.c(str);
        if (!TextUtils.isEmpty(c10)) {
            stringBuffer.append("， report jData:" + c10);
        }
        String b10 = cn.jpush.android.d.d.b(str);
        if (!TextUtils.isEmpty(b10)) {
            stringBuffer.append(", report jAdPosData: " + b10);
        }
        Logger.d("JPushReportHelper", stringBuffer.toString());
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put(JThirdPlatFormInterface.KEY_MSG_ID, str);
            jSONObject.put("result", i9);
            if (!TextUtils.isEmpty(str2)) {
                jSONObject.put("data", str2);
            }
            if (!TextUtils.isEmpty(c10)) {
                jSONObject.put("_j_data_", c10);
            }
            if (!TextUtils.isEmpty(b10)) {
                jSONObject.put("position", b10);
            }
            JSONObject fillBase = JCoreHelper.fillBase(context, jSONObject, "msg_status");
            if (fillBase != null) {
                fillBase.put("type", "msg_status");
                a(context, fillBase);
                return;
            }
            Logger.ww("JPushReportHelper", "report msg json is null, code: " + i9);
        } catch (Throwable unused) {
        }
    }

    public static void a(String str, String str2, byte b10, int i9, Context context) {
        a(str, str2, b10, i9, context, null);
    }

    public static void a(String str, String str2, byte b10, int i9, Context context, String str3) {
        if (context == null) {
            Logger.d("JPushReportHelper", "context did not init, return");
            return;
        }
        StringBuffer stringBuffer = new StringBuffer();
        stringBuffer.append("action:reportThirdSDKMsgActionResult - messageId: " + str + ", code: " + i9);
        String c10 = cn.jpush.android.d.d.c(str);
        if (TextUtils.isEmpty(c10) && !TextUtils.isEmpty(str3)) {
            try {
                c10 = new JSONObject(str3).optString("_j_data_", "");
                Logger.d("JPushReportHelper", "get jdata from third push msg:" + c10);
            } catch (Throwable th2) {
                Logger.d("JPushReportHelper", "get jdata from third push msg error:" + th2.getMessage());
            }
        }
        if (!TextUtils.isEmpty(c10)) {
            stringBuffer.append("， report jData:" + c10);
        }
        Logger.d("JPushReportHelper", stringBuffer.toString());
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put(JThirdPlatFormInterface.KEY_MSG_ID, str);
            jSONObject.put("tmsg_id", str2);
            jSONObject.put("result", i9);
            jSONObject.put(HianalyticsBaseData.SDK_TYPE, (int) b10);
            if (!TextUtils.isEmpty(c10)) {
                jSONObject.put("_j_data_", c10);
            }
            JSONObject fillBase = JCoreHelper.fillBase(context, jSONObject, "third_msg_status");
            if (fillBase != null) {
                fillBase.put("type", "third_msg_status");
                a(context, fillBase);
                return;
            }
            Logger.ww("JPushReportHelper", "report third sdk msg json is null, code: " + i9);
        } catch (Throwable unused) {
        }
    }
}
