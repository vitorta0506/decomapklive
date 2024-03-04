package cn.jpush.android.webview.bridge;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.graphics.Bitmap;
import android.text.TextUtils;
import android.text.format.DateFormat;
import android.util.Base64;
import android.util.DisplayMetrics;
import android.webkit.JavascriptInterface;
import android.widget.Toast;
import cn.jiguang.api.JCoreManager;
import cn.jpush.android.af.j;
import cn.jpush.android.api.JPushInterface;
import cn.jpush.android.helper.Logger;
import cn.jpush.android.helper.h;
import cn.jpush.android.local.JPushConstants;
import cn.jpush.android.ui.PopWinActivity;
import cn.jpush.android.ui.PushActivity;
import cn.jpush.android.x.e;
import com.facebook.devicerequests.internal.DeviceRequestsHelper;
import com.huawei.hms.push.constant.RemoteMessageConst;
import com.huawei.hms.support.hianalytics.HiAnalyticsConstant;
import com.meizu.cloud.pushsdk.constants.PushConstants;
import com.tencent.thumbplayer.core.downloadproxy.api.TPDownloadProxyEnum;
import com.unity3d.services.ads.adunit.AdUnitActivity;
import java.io.ByteArrayOutputStream;
import java.lang.ref.WeakReference;
import org.json.JSONObject;
/* loaded from: classes.dex */
public class d {

    /* renamed from: f  reason: collision with root package name */
    private static String f3458f;

    /* renamed from: a  reason: collision with root package name */
    private final WeakReference<Activity> f3459a;

    /* renamed from: b  reason: collision with root package name */
    private final cn.jpush.android.d.d f3460b;

    /* renamed from: c  reason: collision with root package name */
    private e f3461c;

    /* renamed from: d  reason: collision with root package name */
    private boolean f3462d = false;

    /* renamed from: e  reason: collision with root package name */
    private int f3463e = 0;

    public d(Context context, cn.jpush.android.d.d dVar) {
        this.f3459a = new WeakReference<>((Activity) context);
        this.f3460b = dVar;
    }

    private JSONObject a(Context context) {
        String str;
        String str2;
        String str3;
        Object onEvent = JCoreManager.onEvent(context, JPushConstants.SDK_TYPE, 86, null, null, new Object[0]);
        String str4 = "";
        if (onEvent instanceof JSONObject) {
            JSONObject jSONObject = (JSONObject) onEvent;
            str4 = jSONObject.optString("manufacturer", " ");
            str2 = jSONObject.optString(DeviceRequestsHelper.DEVICE_INFO_MODEL, " ");
            str3 = h.a();
            str = jSONObject.optString(TPDownloadProxyEnum.USER_OS_VERSION, " ");
        } else {
            str = "";
            str2 = str;
            str3 = str2;
        }
        if (f3458f == null) {
            f3458f = context.getResources().getConfiguration().locale.toString();
            Logger.d("WebViewHelper", "device info language: " + f3458f);
        }
        DisplayMetrics a10 = j.a(context);
        int i9 = a10.widthPixels;
        int i10 = a10.heightPixels;
        float f10 = a10.scaledDensity;
        int i11 = context.getResources().getConfiguration().orientation;
        String str5 = i11 == 2 ? "landscape" : "portrait";
        this.f3463e = i11;
        int i12 = (context.getResources().getConfiguration().uiMode & 48) == 32 ? 1 : 0;
        boolean is24HourFormat = DateFormat.is24HourFormat(context);
        long currentTimeMillis = System.currentTimeMillis();
        JSONObject jSONObject2 = new JSONObject();
        jSONObject2.put("manufacturer", str4);
        jSONObject2.put(DeviceRequestsHelper.DEVICE_INFO_MODEL, str2);
        jSONObject2.put("romUIVersion", str3);
        jSONObject2.put("osVersion", str);
        jSONObject2.put("language", f3458f);
        jSONObject2.put("screenW", i9);
        jSONObject2.put("screenH", i10);
        jSONObject2.put("scaledDensity", f10);
        jSONObject2.put(AdUnitActivity.EXTRA_ORIENTATION, str5);
        jSONObject2.put("currentTime", currentTimeMillis);
        jSONObject2.put("nightMode", i12);
        jSONObject2.put("is24Hour", is24HourFormat ? 1 : 0);
        Logger.d("WebViewHelper", "device info: " + jSONObject2.toString());
        return jSONObject2;
    }

    private void a(String str) {
        int i9;
        try {
            try {
                i9 = Integer.parseInt(str);
            } catch (Exception unused) {
                Logger.e("WebViewHelper", "Invalid actionId from Web - " + str);
                i9 = 1100;
            }
            cn.jpush.android.helper.c.a(this.f3460b.f3017c, i9, JPushConstants.mApplicationContext);
        } catch (Throwable unused2) {
        }
    }

    public int a() {
        return this.f3463e;
    }

    public void a(e eVar) {
        this.f3461c = eVar;
        this.f3462d = false;
    }

    @JavascriptInterface
    public void click(String str, String str2, String str3) {
        Logger.d("WebViewHelper", "Web callback:click - actionId:" + str + ", shouldClose:" + str2 + ", shouldCancelNotification:" + str3);
        try {
            a(str);
            boolean parseBoolean = Boolean.parseBoolean(str2);
            if (Boolean.parseBoolean(str3)) {
                cn.jpush.android.aa.c.e(JPushConstants.mApplicationContext, this.f3460b);
            }
            if (!parseBoolean || this.f3459a.get() == null) {
                return;
            }
            this.f3459a.get().finish();
        } catch (Throwable unused) {
        }
    }

    @JavascriptInterface
    public void close() {
        if (this.f3459a.get() != null) {
            Logger.d("WebViewHelper", "Web callback:close");
            this.f3459a.get().finish();
        }
    }

    @JavascriptInterface
    public void createShortcut(String str, String str2, String str3) {
    }

    @JavascriptInterface
    public void download(String str) {
        if (this.f3459a.get() == null) {
            return;
        }
        Logger.d("WebViewHelper", "Web callback:download - " + str);
    }

    @JavascriptInterface
    public void download(String str, String str2) {
        if (this.f3459a.get() == null) {
            return;
        }
        a(str);
        download(str2);
        cn.jpush.android.aa.c.e(JPushConstants.mApplicationContext, this.f3460b);
        this.f3459a.get().finish();
    }

    @JavascriptInterface
    public void download(String str, String str2, String str3) {
        Logger.v("WebViewHelper", "msgType from web: " + str3);
        download(str, str2);
    }

    @JavascriptInterface
    public void executeMsgMessage(String str) {
    }

    @JavascriptInterface
    public String getDevInfo() {
        String str;
        String str2;
        String str3;
        String str4;
        String str5;
        try {
            Context context = JPushConstants.mApplicationContext;
            if (context == null) {
                return "";
            }
            Object onEvent = JCoreManager.onEvent(context, JPushConstants.SDK_TYPE, 86, null, null, new Object[0]);
            if (onEvent instanceof JSONObject) {
                JSONObject jSONObject = (JSONObject) onEvent;
                str2 = jSONObject.optString("manufacturer", " ");
                str3 = jSONObject.optString(DeviceRequestsHelper.DEVICE_INFO_MODEL, " ");
                str4 = h.a();
                str5 = jSONObject.optString(TPDownloadProxyEnum.USER_OS_VERSION, " ");
                str = jSONObject.optString("language", " ");
            } else {
                str = "";
                str2 = str;
                str3 = str2;
                str4 = str3;
                str5 = str4;
            }
            DisplayMetrics a10 = j.a(context);
            int i9 = a10.widthPixels;
            int i10 = a10.heightPixels;
            float f10 = a10.scaledDensity;
            String str6 = context.getResources().getConfiguration().orientation == 2 ? "landscape" : "portrait";
            int i11 = (context.getResources().getConfiguration().uiMode & 48) == 32 ? 1 : 0;
            int i12 = DateFormat.is24HourFormat(context) ? 1 : 0;
            long currentTimeMillis = System.currentTimeMillis();
            JSONObject jSONObject2 = new JSONObject();
            jSONObject2.put("manufacturer", str2);
            jSONObject2.put(DeviceRequestsHelper.DEVICE_INFO_MODEL, str3);
            jSONObject2.put("romUIVersion", str4);
            jSONObject2.put("osVersion", str5);
            jSONObject2.put("language", str);
            jSONObject2.put("screenW", i9);
            jSONObject2.put("screenH", i10);
            jSONObject2.put("scaledDensity", f10);
            jSONObject2.put(AdUnitActivity.EXTRA_ORIENTATION, str6);
            jSONObject2.put("currentTime", currentTimeMillis);
            jSONObject2.put("nightMode", i11);
            jSONObject2.put("is24Hour", i12);
            Logger.d("WebViewHelper", "[getDevInfo] device info, " + jSONObject2.toString());
            return jSONObject2.toString();
        } catch (Throwable unused) {
            return "";
        }
    }

    @JavascriptInterface
    public String getNotificationInfo() {
        try {
            Context context = JPushConstants.mApplicationContext;
            if (context == null) {
                return "";
            }
            JSONObject a10 = a(context);
            Bitmap c10 = cn.jpush.android.aa.c.c(context, context.getPackageName());
            ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
            c10.compress(Bitmap.CompressFormat.PNG, 100, byteArrayOutputStream);
            String str = new String(Base64.encode(byteArrayOutputStream.toByteArray(), 0));
            String charSequence = context.getApplicationInfo().loadLabel(context.getPackageManager()).toString();
            JSONObject jSONObject = new JSONObject();
            jSONObject.put("appName", charSequence);
            jSONObject.put(RemoteMessageConst.Notification.ICON, str);
            Logger.d("WebViewHelper", "appInfo:" + jSONObject.toString());
            JSONObject b10 = cn.jpush.android.w.a.b(context);
            String c11 = cn.jpush.android.w.a.c(context);
            Logger.d("WebViewHelper", "containerJSON h5Extras:" + c11);
            Logger.d("WebViewHelper", "containerJSON devInfo:" + a10);
            Logger.d("WebViewHelper", "containerJSON appInfo:" + jSONObject);
            JSONObject jSONObject2 = new JSONObject();
            jSONObject2.put(DeviceRequestsHelper.DEVICE_INFO_DEVICE, a10);
            jSONObject2.put(PushConstants.EXTRA_APPLICATION_PENDING_INTENT, jSONObject);
            jSONObject2.put("container", b10);
            jSONObject2.put("h5_extras", c11);
            Logger.d("WebViewHelper", "containerJSON:" + jSONObject2.toString());
            return jSONObject2.toString();
        } catch (Throwable unused) {
            return "";
        }
    }

    @JavascriptInterface
    public String getTplData() {
        e eVar = this.f3461c;
        if (eVar != null) {
            String s10 = eVar.s();
            Logger.d("WebViewHelper", "[getTplData] js get template data: " + s10);
            return s10;
        }
        return "";
    }

    @JavascriptInterface
    public void inAppClick(String str) {
        try {
            JSONObject jSONObject = new JSONObject(str);
            int optInt = jSONObject.optInt("actionType");
            String optString = jSONObject.optString(RemoteMessageConst.MessageBody.PARAM);
            Logger.d("WebViewHelper", "h5 click, actionType: " + optInt + ", actionKey: " + optString + ", param: " + str);
            cn.jpush.android.p.a.a().a(this.f3461c, optInt, optString);
        } catch (Throwable th2) {
            Logger.w("WebViewHelper", "h5 click failed, " + th2.getMessage());
        }
    }

    @JavascriptInterface
    public void onLoadCallback(String str) {
        try {
            Logger.d("WebViewHelper", "onLoadCallback : " + str);
            if (this.f3462d) {
                Logger.d("WebViewHelper", "js callback already, param: " + str);
                return;
            }
            this.f3462d = true;
            Context context = JPushConstants.mApplicationContext;
            if (context == null && this.f3459a.get() != null) {
                context = this.f3459a.get().getApplicationContext();
            }
            JSONObject jSONObject = new JSONObject(str);
            int optInt = jSONObject.optInt(HiAnalyticsConstant.HaKey.BI_KEY_RESULT);
            String optString = jSONObject.optString("msg");
            if (optInt != 0) {
                Logger.ww("WebViewHelper", "msg tpl load failed, code: " + optInt + ", errMsg: " + optString);
            }
            cn.jpush.android.p.a.a().a(context, this.f3461c, optInt);
        } catch (Throwable th2) {
            Logger.w("WebViewHelper", "[onLoadCallback] parse param error. " + th2.getMessage());
        }
    }

    @JavascriptInterface
    public void reportData(String str) {
        try {
            Context context = JPushConstants.mApplicationContext;
            if (context == null && this.f3459a.get() != null) {
                context = this.f3459a.get().getApplicationContext();
            }
            Logger.d("WebViewHelper", "[reportData] report data: " + str);
            String optString = new JSONObject(str).optString("content");
            if (TextUtils.isEmpty(optString) || this.f3461c == null) {
                return;
            }
            cn.jpush.android.p.a.a().a(context, this.f3461c, optString);
        } catch (Throwable th2) {
            Logger.w("WebViewHelper", "[reportData] report data failed. " + th2.getMessage());
        }
    }

    @JavascriptInterface
    public void showTitleBar() {
        try {
            if (this.f3459a.get() == null || !(this.f3459a.get() instanceof PushActivity)) {
                return;
            }
            ((PushActivity) this.f3459a.get()).showTitleBar();
        } catch (Throwable unused) {
        }
    }

    @JavascriptInterface
    public void showToast(String str) {
        if (this.f3459a.get() != null) {
            Logger.d("WebViewHelper", "Web callback:showToast - " + str);
            Toast.makeText(this.f3459a.get(), str, 1).show();
        }
    }

    @JavascriptInterface
    public void startActivityByIntent(String str, String str2) {
        Context context = JPushConstants.mApplicationContext;
        if (context == null) {
            return;
        }
        try {
            Intent intent = new Intent(str);
            intent.addCategory(context.getPackageName());
            intent.putExtra(JPushInterface.EXTRA_EXTRA, str2);
            intent.setFlags(268435456);
            context.startActivity(intent);
        } catch (Throwable unused) {
            Logger.ee("WebViewHelper", "Unhandle intent : " + str);
        }
    }

    @JavascriptInterface
    public void startActivityByName(String str, String str2) {
        Logger.d("WebViewHelper", "activityName = " + str);
        try {
            if (TextUtils.isEmpty(str)) {
                Logger.ee("WebViewHelper", "The activity name is null or empty, Give up..");
            }
            Context context = JPushConstants.mApplicationContext;
            if (context == null) {
                return;
            }
            try {
                Intent intent = new Intent(context, Class.forName(str));
                intent.putExtra(JPushInterface.EXTRA_ACTIVITY_PARAM, str2);
                intent.setFlags(268435456);
                context.startActivity(intent);
            } catch (Exception unused) {
                Logger.ee("WebViewHelper", "The activity name is invalid, Give up..");
            }
        } catch (Throwable unused2) {
        }
    }

    @JavascriptInterface
    public void startMainActivity(String str) {
        Activity activity = this.f3459a.get();
        if (activity == null) {
            return;
        }
        try {
            activity.finish();
            cn.jpush.android.af.a.c(activity, str);
        } catch (Exception unused) {
            Logger.ee("WebViewHelper", "startMainActivity failed");
        }
    }

    @JavascriptInterface
    public void startPushActivity(String str) {
        try {
            Logger.d("WebViewHelper", "[startPushActivity]:" + str + ",activity:" + this.f3459a.get());
            if (this.f3459a.get() == null || !(this.f3459a.get() instanceof PopWinActivity)) {
                return;
            }
            ((PopWinActivity) this.f3459a.get()).startPushActivity(str);
        } catch (Throwable unused) {
        }
    }

    @JavascriptInterface
    public void triggerNativeAction(String str) {
        this.f3459a.get();
    }
}
