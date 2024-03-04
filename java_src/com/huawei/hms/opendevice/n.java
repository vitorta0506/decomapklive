package com.huawei.hms.opendevice;

import android.content.Context;
import android.text.TextUtils;
import cn.jpush.android.api.JThirdPlatFormInterface;
import com.facebook.appevents.UserDataStore;
import com.guochao.component.mvp.activity.MVPActivity;
import com.guochao.faceshow.aaspring.modulars.push.ThirdPushHelper;
import com.guochao.faceshow.utils.ReportController;
import com.huawei.hms.android.HwBuildEx;
import com.huawei.hms.android.SystemUtils;
import com.huawei.hms.support.log.HMSLog;
import com.huawei.hms.utils.PackageManagerHelper;
import com.huawei.hms.utils.Util;
import com.tencent.thumbplayer.core.downloadproxy.api.TPDownloadProxyEnum;
import java.util.TimeZone;
import java.util.UUID;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes4.dex */
public class n {

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes4.dex */
    public enum a {
        MOBILE("1"),
        PC("2"),
        TABLET("3"),
        TV("4"),
        SOUNDBOX("5"),
        GLASS(MVPActivity.FROM_BAG_BADGE),
        WATCH("7"),
        VEHICLE(ReportController.REPORT_TYPE_ONE_V_ONE),
        OFFICE_DEVICE("9"),
        IOT_DEVICES(ThirdPushHelper.TYPE_XIAOMI_CHINA),
        HEALTHY(ThirdPushHelper.TYPE_XIAOMI_INTERNATIONAL),
        ENTERTAINMENT("12"),
        TRANSPORT_DEVICES(ReportController.REPORT_TYPE_DYNAMIC_COMMENT);
        

        /* renamed from: o  reason: collision with root package name */
        public String f27661o;

        a(String str) {
            this.f27661o = str;
        }

        public String a() {
            return this.f27661o;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes4.dex */
    public enum b {
        IOS("ios"),
        ANDROID("android"),
        HARMONY("harmony"),
        WINDOWS("windows"),
        EMBED("embed"),
        OTHERS("others");
        

        /* renamed from: h  reason: collision with root package name */
        public String f27669h;

        b(String str) {
            this.f27669h = str;
        }

        public String a() {
            return this.f27669h;
        }
    }

    public static String c(Context context, String str, String str2) {
        try {
            JSONObject jSONObject = new JSONObject();
            JSONObject jSONObject2 = new JSONObject();
            jSONObject2.put("timezone", TimeZone.getDefault().getID());
            jSONObject2.put(UserDataStore.COUNTRY, SystemUtils.getLocalCountry());
            JSONObject jSONObject3 = new JSONObject();
            jSONObject3.put("agent_version", new PackageManagerHelper(context).getPackageVersionName("com.huawei.android.pushagent"));
            jSONObject3.put("hms_version", String.valueOf(Util.getHmsVersion(context)));
            JSONObject jSONObject4 = new JSONObject();
            jSONObject4.put("dev_type", a.MOBILE.a());
            jSONObject4.put("dev_sub_type", "phone");
            jSONObject4.put("os_type", b.ANDROID.a());
            jSONObject4.put(TPDownloadProxyEnum.USER_OS_VERSION, String.valueOf(HwBuildEx.VERSION.EMUI_SDK_INT));
            jSONObject.put("id", UUID.randomUUID().toString());
            jSONObject.put("global", jSONObject2);
            jSONObject.put("push_agent", jSONObject3);
            jSONObject.put("hardware", jSONObject4);
            jSONObject.put("aaid", str);
            jSONObject.put(JThirdPlatFormInterface.KEY_TOKEN, str2);
            jSONObject.put("app_id", sb.a.d(context).b("client/app_id"));
            jSONObject.put("region", sb.a.d(context).b("region"));
            return jSONObject.toString();
        } catch (JSONException unused) {
            HMSLog.e("ReportAaidToken", "Catch JSONException.");
            return null;
        }
    }

    public static boolean d(Context context, String str, String str2) {
        i a10 = i.a(context);
        if (!a10.containsKey("reportAaidAndToken")) {
            HMSLog.d("ReportAaidToken", "It hasn't been reported, this time needs report.");
            return true;
        }
        String string = a10.getString("reportAaidAndToken");
        if (TextUtils.isEmpty(string)) {
            HMSLog.e("ReportAaidToken", "It has been reported, but sp file is empty, this time needs report.");
            return true;
        }
        return !string.equals(r.a(str2 + str, "SHA-256"));
    }

    public static boolean b(Context context) {
        int packageVersionCode = new PackageManagerHelper(context).getPackageVersionCode("com.huawei.android.pushagent");
        HMSLog.d("ReportAaidToken", "NC version code: " + packageVersionCode);
        return (90101400 <= packageVersionCode && packageVersionCode < 100000000) || packageVersionCode >= 100001301;
    }

    public static void a(Context context, String str) {
        new m(context, str).start();
    }

    public static void b(Context context, String str, String str2, String str3) {
        if (TextUtils.isEmpty(str)) {
            HMSLog.e("ReportAaidToken", "Https response is empty.");
            return;
        }
        try {
            JSONObject jSONObject = new JSONObject(str);
            int optInt = jSONObject.optInt("ret", 256);
            if (optInt == 0) {
                boolean saveString = i.a(context).saveString("reportAaidAndToken", r.a(str3 + str2, "SHA-256"));
                StringBuilder sb2 = new StringBuilder();
                sb2.append("Report success ");
                sb2.append(saveString ? "and save success." : "but save failure.");
                HMSLog.d("ReportAaidToken", sb2.toString());
                return;
            }
            StringBuilder sb3 = new StringBuilder();
            sb3.append("Https response body's ret code: ");
            sb3.append(optInt);
            sb3.append(", error message: ");
            sb3.append(jSONObject.optString("msg"));
            HMSLog.e("ReportAaidToken", sb3.toString());
        } catch (JSONException unused) {
            HMSLog.e("ReportAaidToken", "Has JSONException.");
        } catch (Exception unused2) {
            HMSLog.e("ReportAaidToken", "Exception occur.");
        }
    }
}
