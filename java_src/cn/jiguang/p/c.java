package cn.jiguang.p;

import android.content.Context;
import android.os.Build;
import android.text.TextUtils;
import androidx.webkit.internal.AssetHelper;
import cn.jiguang.bh.d;
import cn.jiguang.net.HttpUtils;
import cn.jiguang.o.c;
import cn.jiguang.o.e;
import com.facebook.devicerequests.internal.DeviceRequestsHelper;
import com.guochao.faceshow.utils.HttpFileUtil;
import com.meizu.cloud.pushsdk.notification.model.BrightRemindSetting;
import java.io.ByteArrayOutputStream;
import java.io.InputStream;
import java.io.OutputStream;
import java.net.HttpURLConnection;
import java.util.HashMap;
import java.util.Locale;
import java.util.Map;
import java.util.concurrent.Callable;
import java.util.concurrent.FutureTask;
import java.util.concurrent.TimeUnit;
import org.json.JSONArray;
import org.json.JSONObject;
/* loaded from: classes.dex */
public class c {

    /* renamed from: a  reason: collision with root package name */
    public static String f2717a = "";

    /* renamed from: c  reason: collision with root package name */
    private static volatile c f2718c;

    /* renamed from: b  reason: collision with root package name */
    private Context f2719b;

    /* renamed from: d  reason: collision with root package name */
    private int f2720d = 0;

    /* renamed from: e  reason: collision with root package name */
    private String f2721e = "";

    /* renamed from: f  reason: collision with root package name */
    private String f2722f = "I8iQemLpVcDAL0AS";

    /* renamed from: g  reason: collision with root package name */
    private String f2723g = "RTDdJXgDDVXH8Tbv";

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public class a implements Callable<Integer> {

        /* renamed from: b  reason: collision with root package name */
        private Context f2728b;

        public a(Context context) {
            this.f2728b = context;
        }

        @Override // java.util.concurrent.Callable
        /* renamed from: a */
        public Integer call() {
            c.this.a(this.f2728b);
            return 0;
        }
    }

    private int a(Context context, String str) {
        if (TextUtils.isEmpty(str)) {
            cn.jiguang.al.a.a("JDataConfigManager", "[refreshConfig] data config is null");
        } else {
            try {
                String str2 = new String(d.a(str, this.f2722f, this.f2723g), "UTF-8");
                a("JDataConfigManager", "serverConfig:" + str2);
                JSONObject jSONObject = new JSONObject(str2);
                int optInt = jSONObject.optInt("code");
                String optString = jSONObject.optString("message");
                if (optInt == 2000) {
                    JSONObject optJSONObject = jSONObject.optJSONObject("data");
                    if (optJSONObject != null) {
                        cn.jiguang.i.a.a().b();
                        int optInt2 = optJSONObject.optInt("status");
                        this.f2721e = optJSONObject.optString("sign");
                        if (optInt2 == 0) {
                            JSONArray optJSONArray = optJSONObject.optJSONArray("rt");
                            if (optJSONArray != null) {
                                for (int i9 = 0; i9 < optJSONArray.length(); i9++) {
                                    String optString2 = optJSONArray.optString(i9);
                                    if (!TextUtils.isEmpty(optString2)) {
                                        String[] split = optString2.split("-");
                                        cn.jiguang.i.a.a().f2607b.add(new String[]{split[0], split[1]});
                                    }
                                }
                            }
                            JSONArray optJSONArray2 = optJSONObject.optJSONArray("pl");
                            if (optJSONArray2 != null) {
                                for (int i10 = 0; i10 < optJSONArray2.length(); i10++) {
                                    JSONObject optJSONObject2 = optJSONArray2.optJSONObject(i10);
                                    if (optJSONObject2 != null) {
                                        cn.jiguang.p.a aVar = new cn.jiguang.p.a();
                                        aVar.a(true);
                                        aVar.a(optJSONObject2.optInt("ci"));
                                        aVar.b(optJSONObject2.optInt("sc"));
                                        aVar.d(optJSONObject2.optInt("bc"));
                                        aVar.c(optJSONObject2.optInt("sr"));
                                        aVar.e(optJSONObject2.optInt(BrightRemindSetting.BRIGHT_REMIND));
                                        aVar.f(optJSONObject2.optInt("bg"));
                                        aVar.g(optJSONObject2.optInt("md"));
                                        cn.jiguang.i.a.a().a(aVar);
                                    }
                                }
                            }
                        } else {
                            cn.jiguang.al.a.a("JDataConfigManager", "parse data config , config status is no");
                        }
                        JSONObject optJSONObject3 = optJSONObject.optJSONObject("in_app");
                        if (optJSONObject3 != null) {
                            String optString3 = optJSONObject3.optString("rule_file_md5");
                            cn.jiguang.al.a.a("JDataConfigManager", "recv inapp file md5: " + optString3);
                            if (!TextUtils.isEmpty(optString3) && !"null".equals(optString3)) {
                                cn.jiguang.o.d.e(context, optString3);
                            }
                        }
                    }
                } else {
                    cn.jiguang.al.a.a("JDataConfigManager", "[refreshConfig] data config code:" + optInt + " msg:" + optString);
                }
                return optInt;
            } catch (Throwable th2) {
                cn.jiguang.al.a.d("JDataConfigManager", "[refreshConfig] refreshConfig failed, errMsg: " + th2.getMessage());
            }
        }
        return 0;
    }

    public static c a() {
        if (f2718c == null) {
            synchronized (c.class) {
                if (f2718c == null) {
                    f2718c = new c();
                }
            }
        }
        return f2718c;
    }

    private String a(String str) {
        HttpURLConnection httpURLConnection;
        InputStream inputStream;
        String b10;
        String str2;
        try {
            b10 = cn.jiguang.o.d.b(this.f2719b);
        } catch (Throwable th2) {
            th = th2;
            httpURLConnection = null;
            inputStream = null;
        }
        if (TextUtils.isEmpty(b10)) {
            cn.jiguang.al.a.d("JDataConfigManager", "request data config failed because can't get appKey");
            return null;
        }
        String str3 = "https://ce3e75d5.jpush.cn/wi/op8jdu";
        if (c.a.f2699a && !TextUtils.isEmpty(f2717a)) {
            str3 = f2717a;
        }
        HashMap hashMap = new HashMap();
        JSONObject jSONObject = new JSONObject();
        jSONObject.put("ak", b10);
        jSONObject.put("p", "a");
        jSONObject.put("av", "2");
        jSONObject.put("sign", str);
        String p10 = cn.jiguang.o.d.p(this.f2719b);
        String str4 = "";
        if (TextUtils.isEmpty(p10)) {
            p10 = "";
        }
        jSONObject.put("file_version", p10);
        String str5 = c.a.f2700b;
        if (!TextUtils.isEmpty(str5)) {
            str4 = str5.trim();
        }
        jSONObject.put("manufacturer", str4);
        jSONObject.put("rom", cn.jiguang.r.d.a());
        jSONObject.put(DeviceRequestsHelper.DEVICE_INFO_MODEL, Build.MODEL);
        jSONObject.put("osversion", Build.VERSION.SDK_INT);
        String format = String.format(Locale.ENGLISH, Build.VERSION.RELEASE, new Object[0]);
        if (!TextUtils.isEmpty(format)) {
            jSONObject.put("android_ver", format);
        }
        String a10 = cn.jiguang.o.d.a();
        if (!TextUtils.isEmpty(a10)) {
            jSONObject.put("jcore_ver", a10);
        }
        String b11 = cn.jiguang.o.d.b(0);
        if (!TextUtils.isEmpty(b11)) {
            jSONObject.put("jpush_ver", b11);
        }
        cn.jiguang.al.a.a("JDataConfigManager", "url:" + str3 + ", param json:" + jSONObject.toString());
        hashMap.put("Content-Type", AssetHelper.DEFAULT_MIME_TYPE);
        hashMap.put("Accept", "application/json");
        hashMap.put("Charset", "UTF-8");
        HttpURLConnection httpURLConnectionWithProxy = HttpUtils.getHttpURLConnectionWithProxy(this.f2719b, str3);
        try {
            httpURLConnectionWithProxy.setConnectTimeout(HttpFileUtil.TIMEOUT);
            httpURLConnectionWithProxy.setReadTimeout(HttpFileUtil.TIMEOUT);
            httpURLConnectionWithProxy.setRequestMethod("POST");
            for (Map.Entry entry : hashMap.entrySet()) {
                httpURLConnectionWithProxy.setRequestProperty((String) entry.getKey(), (String) entry.getValue());
            }
            OutputStream outputStream = httpURLConnectionWithProxy.getOutputStream();
            String a11 = d.a(jSONObject.toString().getBytes(), this.f2722f, this.f2723g);
            cn.jiguang.al.a.a("JDataConfigManager", "encryptStr:" + a11 + ", paramJson: " + jSONObject);
            outputStream.write(a11.getBytes("UTF-8"));
            outputStream.flush();
            int responseCode = httpURLConnectionWithProxy.getResponseCode();
            if (responseCode == 200) {
                inputStream = httpURLConnectionWithProxy.getInputStream();
                try {
                    ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
                    byte[] bArr = new byte[1024];
                    while (true) {
                        int read = inputStream.read(bArr);
                        if (read == -1) {
                            break;
                        }
                        byteArrayOutputStream.write(bArr, 0, read);
                    }
                    str2 = new String(byteArrayOutputStream.toByteArray());
                } catch (Throwable th3) {
                    th = th3;
                    Throwable th4 = th;
                    httpURLConnection = httpURLConnectionWithProxy;
                    th = th4;
                    try {
                        cn.jiguang.al.a.d("JDataConfigManager", "request data config exception:" + th.getMessage());
                        return null;
                    } finally {
                        if (inputStream != null) {
                            try {
                                inputStream.close();
                            } catch (Exception e10) {
                                cn.jiguang.al.a.d("JDataConfigManager", "request data config exception:" + e10.getMessage());
                            }
                        }
                        if (httpURLConnection != null) {
                            httpURLConnection.disconnect();
                        }
                    }
                }
            } else {
                inputStream = null;
                str2 = null;
            }
            cn.jiguang.al.a.a("JDataConfigManager", "request data config code:" + responseCode + ", body:" + str2);
        } catch (Throwable th5) {
            th = th5;
            inputStream = null;
        }
        if (TextUtils.isEmpty(str2)) {
            if (inputStream != null) {
                try {
                    inputStream.close();
                } catch (Exception e11) {
                    cn.jiguang.al.a.d("JDataConfigManager", "request data config exception:" + e11.getMessage());
                }
            }
            httpURLConnectionWithProxy.disconnect();
            return null;
        }
        cn.jiguang.al.a.a("JDataConfigManager", "request data config success");
        if (inputStream != null) {
            try {
                inputStream.close();
            } catch (Exception e12) {
                cn.jiguang.al.a.d("JDataConfigManager", "request data config exception:" + e12.getMessage());
            }
        }
        httpURLConnectionWithProxy.disconnect();
        return str2;
    }

    public static void a(String str, String str2) {
        int length = 4000 - str.length();
        while (str2.length() > length) {
            cn.jiguang.al.a.a(str, str2.substring(0, length));
            str2 = str2.substring(length);
        }
        cn.jiguang.al.a.a(str, str2);
    }

    private void b(Context context) {
        if (TextUtils.isEmpty(this.f2721e)) {
            String c10 = cn.jiguang.s.c.c(context, "bac.catch");
            if (TextUtils.isEmpty(c10)) {
                return;
            }
            a(context, c10);
        }
    }

    public synchronized void a(Context context) {
        if (this.f2720d >= 3) {
            cn.jiguang.al.a.a("JDataConfigManager", "try more than 3 times,won't try again");
            cn.jiguang.o.b.e(context, "JDataConfigManager");
            this.f2720d = 0;
            return;
        }
        if (cn.jiguang.o.b.a(context, "JDataConfigManager")) {
            b(context);
            String a10 = a(this.f2721e);
            if (TextUtils.isEmpty(a10)) {
                this.f2720d++;
            } else {
                if (a(context, a10) == 2000) {
                    cn.jiguang.s.c.a(context, "bac.catch", a10);
                }
                cn.jiguang.o.b.e(context, "JDataConfigManager");
                this.f2720d = 0;
            }
        } else {
            b(context);
        }
    }

    public void a(Context context, int i9) {
        try {
            FutureTask futureTask = new FutureTask(new a(context));
            cn.jiguang.o.d.a(futureTask);
            futureTask.get(i9, TimeUnit.SECONDS);
        } catch (Throwable unused) {
            cn.jiguang.al.a.a("JDataConfigManager", "requestConfigSync timeout");
        }
    }

    public void a(final Context context, final b bVar) {
        cn.jiguang.o.d.a(new e() { // from class: cn.jiguang.p.c.1
            @Override // cn.jiguang.o.e
            public void a() {
                try {
                    c.this.a(context);
                } catch (Throwable th2) {
                    cn.jiguang.al.a.a("JDataConfigManager", "request config error:" + th2);
                }
                b bVar2 = bVar;
                if (bVar2 != null) {
                    bVar2.a();
                }
            }
        });
    }
}
