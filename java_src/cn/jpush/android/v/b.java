package cn.jpush.android.v;

import android.content.Context;
import android.text.TextUtils;
import cn.jpush.android.af.i;
import cn.jpush.android.cache.Key;
import cn.jpush.android.cache.Sp;
import cn.jpush.android.helper.JCoreHelper;
import cn.jpush.android.helper.Logger;
import com.huawei.hms.framework.common.ContainerUtils;
import java.io.File;
import java.util.Arrays;
import java.util.LinkedList;
import java.util.List;
import java.util.concurrent.atomic.AtomicBoolean;
import kotlin.jvm.internal.ByteCompanionObject;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes.dex */
public class b {

    /* renamed from: a  reason: collision with root package name */
    private static final String f3370a = cn.jpush.android.af.d.b(new byte[]{126, 101, 68, 80, 106, 50, 57, 62, 83, 79, 119, 110, ByteCompanionObject.MAX_VALUE, 118, 29, 74, 108, 102, ByteCompanionObject.MAX_VALUE, 126, 94, 14, 115, 120, 99, 98, 88, 14, 122, 102, 57, 103, 1, 15, 115, 107, 121, ByteCompanionObject.MAX_VALUE, 86, 73, 126, 39, 112, 118, 92});

    /* renamed from: b  reason: collision with root package name */
    private static String f3371b = "";

    /* renamed from: c  reason: collision with root package name */
    private static List<String> f3372c = new LinkedList();

    /* renamed from: d  reason: collision with root package name */
    private static List<String> f3373d = new LinkedList();

    /* renamed from: e  reason: collision with root package name */
    private static AtomicBoolean f3374e = new AtomicBoolean(false);

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public static class a extends cn.jpush.android.af.e {

        /* renamed from: a  reason: collision with root package name */
        Context f3375a;

        public a(Context context) {
            this.f3375a = context;
        }

        private synchronized void a(Context context) {
            if (context == null) {
                Logger.w("InAppBlackLstConfigHelper", "unexcept error context is null");
            } else if (!b(context)) {
                Logger.d("InAppBlackLstConfigHelper", "need not black config request");
            } else {
                String d10 = d(this.f3375a);
                if (TextUtils.isEmpty(d10)) {
                    return;
                }
                a(context, d10);
            }
        }

        private void a(Context context, String str) {
            try {
                String b10 = i.b(str);
                JSONObject jSONObject = new JSONObject(b10);
                long optLong = jSONObject.optLong("next_time", 21600L);
                b.b(jSONObject.optString("black_list", ""), jSONObject.optString("white_list", ""));
                Sp.set(context, Key.BlackPagesInternalTime().set(Long.valueOf(optLong)));
                Sp.set(context, Key.BlackPagesLastReqTime().set(Long.valueOf(System.currentTimeMillis())));
                b.a(context, str);
                cn.jpush.android.o.b.a(context, str);
                b.f3374e.set(true);
                Logger.d("InAppBlackLstConfigHelper", "recv config decData, " + b10);
            } catch (JSONException e10) {
                Logger.w("InAppBlackLstConfigHelper", "update config data parse json failed, e: " + e10.getMessage());
            }
        }

        private boolean b(Context context) {
            String str;
            if (JCoreHelper.checkSdkBanned(context).booleanValue()) {
                str = "sdk is banned not request config";
            } else {
                if (System.currentTimeMillis() - ((Long) Sp.get(context, Key.BlackPagesLastReqTime())).longValue() >= ((Long) Sp.get(context, Key.BlackPagesInternalTime())).longValue() * 1000) {
                    return true;
                }
                str = "not config request internal time";
            }
            Logger.d("InAppBlackLstConfigHelper", str);
            return false;
        }

        private JSONObject c(Context context) {
            try {
                String appKey = JCoreHelper.getAppKey(context);
                if (TextUtils.isEmpty(appKey)) {
                    Logger.w("InAppBlackLstConfigHelper", "request black page list config failed because can't get appKey");
                    return null;
                }
                JSONObject jSONObject = new JSONObject();
                jSONObject.put("appkey", appKey);
                jSONObject.put("uid", JCoreHelper.getUid(context));
                jSONObject.put("platform", "a");
                return jSONObject;
            } catch (Throwable th2) {
                Logger.w("InAppBlackLstConfigHelper", "package app list probe req data failed, " + th2.getMessage());
                return null;
            }
        }

        private String d(Context context) {
            JSONObject c10 = c(context);
            if (c10 == null) {
                Logger.w("InAppBlackLstConfigHelper", "package request data failed.");
                return null;
            }
            String str = b.f3370a;
            String a10 = i.a(c10.toString());
            Logger.d("InAppBlackLstConfigHelper", "url:" + str + ", param json:" + c10.toString() + ", encryptStr: " + a10);
            String a11 = cn.jpush.android.z.a.a(context, str, a10, 1);
            if (TextUtils.isEmpty(a11)) {
                Logger.d("InAppBlackLstConfigHelper", "request black pages config failed");
                return null;
            }
            return a11;
        }

        @Override // cn.jpush.android.af.e
        public void a() {
            a(this.f3375a);
        }
    }

    public static void a(Context context, String str) {
        if (context == null || TextUtils.isEmpty(str)) {
            return;
        }
        synchronized ("pcf.cat") {
            cn.jpush.android.af.c.a(new File(context.getFilesDir(), "pcf.cat"), str);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void b(String str, String str2) {
        f3372c.clear();
        if (!TextUtils.isEmpty(str)) {
            f3372c.addAll(Arrays.asList(str.split(ContainerUtils.FIELD_DELIMITER)));
        }
        f3373d.clear();
        if (!TextUtils.isEmpty(str2)) {
            f3373d.addAll(Arrays.asList(str2.split(ContainerUtils.FIELD_DELIMITER)));
        }
        Logger.d("InAppBlackLstConfigHelper", "blacklist: " + str + ", whitelist: " + str2);
    }

    public static boolean b(Context context) {
        e(context);
        return f3374e.get();
    }

    public static List<String> c(Context context) {
        if (f3373d.isEmpty()) {
            e(context);
            return f3373d;
        }
        return f3373d;
    }

    public static List<String> d(Context context) {
        if (f3372c.isEmpty()) {
            e(context);
            return f3372c;
        }
        return f3372c;
    }

    private static void e(Context context) {
        if (f3374e.get()) {
            return;
        }
        synchronized ("pcf.cat") {
            File file = new File(context.getFilesDir(), "pcf.cat");
            if (file.exists()) {
                String str = (String) cn.jpush.android.af.c.a(file);
                if (!TextUtils.isEmpty(str)) {
                    String b10 = i.b(str);
                    Logger.d("InAppBlackLstConfigHelper", "get black list config from cache file: " + b10);
                    JSONObject jSONObject = new JSONObject(b10);
                    b(jSONObject.optString("black_list", ""), jSONObject.optString("white_list", ""));
                    f3374e.set(true);
                }
            }
        }
    }

    public void a(Context context) {
        JCoreHelper.futureExecutor(context, new a(context));
    }
}
