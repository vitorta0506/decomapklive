package cn.jiguang.b;

import android.content.Context;
import cn.jiguang.api.ReportCallBack;
import cn.jiguang.internal.JConstants;
import com.facebook.devicerequests.internal.DeviceRequestsHelper;
import com.tencent.thumbplayer.core.downloadproxy.api.TPDownloadProxyEnum;
import org.json.JSONArray;
import org.json.JSONObject;
/* loaded from: classes.dex */
public class e extends cn.jiguang.bg.b implements ReportCallBack {
    public e() {
        this.f2494h = "ReportCrashLogDirect";
    }

    private JSONObject a(Context context) {
        JSONArray c10 = d.c(context);
        if (c10 == null) {
            return null;
        }
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("crashlogs", c10);
            jSONObject.put(TPDownloadProxyEnum.USER_NETWORK_TYPE, cn.jiguang.f.a.l(context));
            cn.jiguang.d.a.a(context, jSONObject, "crash_log");
            Object a10 = cn.jiguang.c.b.a(context);
            JSONObject jSONObject2 = a10 instanceof JSONObject ? (JSONObject) a10 : null;
            if (jSONObject2 != null && jSONObject2.length() > 0) {
                jSONObject.put(DeviceRequestsHelper.DEVICE_INFO_PARAM, jSONObject2);
            }
        } catch (Exception unused) {
        }
        return jSONObject;
    }

    @Override // cn.jiguang.bg.b
    public void a() {
        try {
            Context appContext = JConstants.getAppContext(null);
            if (appContext == null) {
                cn.jiguang.as.d.g("ReportCrashLogDirect", "ReportDirect context is null");
                return;
            }
            JSONObject a10 = a(appContext);
            if (a10 != null) {
                cn.jiguang.au.f.a(appContext, a10, this);
            }
        } catch (Throwable th2) {
            cn.jiguang.as.d.i("ReportCrashLogDirect", "run report crash e:" + th2);
        }
    }

    @Override // cn.jiguang.api.ReportCallBack
    public void onFinish(int i9) {
        cn.jiguang.as.d.g("ReportCrashLogDirect", "ReportDirect finish : " + i9);
        if (i9 == 0) {
            d.d(JConstants.getAppContext(null));
        }
    }
}
