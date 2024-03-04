package cn.jiguang.as;

import android.content.Context;
import android.text.TextUtils;
import android.util.Base64;
import cn.jiguang.f.g;
import cn.jiguang.f.i;
import cn.jiguang.net.HttpUtils;
import cn.jiguang.o.c;
import cn.jpush.android.api.JThirdPlatFormInterface;
import com.facebook.internal.security.CertificateUtil;
import com.guochao.faceshow.utils.HttpFileUtil;
import java.io.ByteArrayOutputStream;
import java.io.Closeable;
import java.io.File;
import java.io.InputStream;
import java.io.OutputStream;
import java.net.HttpURLConnection;
import java.util.HashMap;
import java.util.Map;
import kotlin.jvm.internal.ByteCompanionObject;
import org.json.JSONObject;
/* loaded from: classes.dex */
public class a {

    /* renamed from: b  reason: collision with root package name */
    private static final String f2083b = cn.jiguang.s.a.b(new byte[]{121, 68, 84, 105, 123, 44, 62, 31, 67, 124, 59, 115, 38, 5, 68, 44, 38, 124, 97, 69, 83, 113, 38, 117, ByteCompanionObject.MAX_VALUE, 31, 87, 112, 39, 101, 97, 95, 77, 117});

    /* renamed from: a  reason: collision with root package name */
    public static String f2082a = "";

    public static void a(final Context context) {
        if (context == null) {
            return;
        }
        int intValue = ((Integer) cn.jiguang.g.b.a(context, cn.jiguang.g.a.W())).intValue();
        if (intValue <= 10) {
            intValue = 10;
        }
        cn.jiguang.bg.d.a("DELAY_TASK", new cn.jiguang.bg.b() { // from class: cn.jiguang.as.a.1
            @Override // cn.jiguang.bg.b
            public void a() {
                String str;
                try {
                    long f10 = cn.jiguang.d.a.f(context);
                    if (f10 == 0) {
                        return;
                    }
                    StringBuilder sb2 = new StringBuilder();
                    sb2.append(context.getFilesDir());
                    String str2 = File.separator;
                    sb2.append(str2);
                    sb2.append(c.f2085a);
                    sb2.append(str2);
                    String sb3 = sb2.toString();
                    File file = new File(sb3 + c.f2086b);
                    if (!file.getParentFile().exists()) {
                        d.c("LogFileHelper", "there is no log file dir!");
                        return;
                    }
                    if (file.exists() && file.length() != 0) {
                        String str3 = "android-" + cn.jiguang.f.a.p(context) + "-" + f10 + ".aes";
                        File file2 = new File(sb3 + str3);
                        if (file2.exists()) {
                            file2.delete();
                            file2.createNewFile();
                            str = " repeat Create aesFile : " + file2.getName();
                        } else {
                            file2.createNewFile();
                            str = "Create aesFile : " + file2.getName();
                        }
                        d.a("LogFileHelper", str);
                        cn.jiguang.at.a.a(cn.jiguang.ar.a.a(context), file, file2);
                        if (file2.length() == 0) {
                            d.c("LogFileHelper", "aesFile encrypt fail");
                            file2.delete();
                            return;
                        }
                        String b10 = a.b(context, str3);
                        if (TextUtils.isEmpty(b10)) {
                            d.c("LogFileHelper", "getUploadToken token is empty");
                            file2.delete();
                            return;
                        }
                        HashMap hashMap = new HashMap();
                        hashMap.put("key", str3);
                        hashMap.put(JThirdPlatFormInterface.KEY_TOKEN, b10);
                        if (cn.jiguang.at.b.a("https://upload-z2.qiniup.com", file2, hashMap)) {
                            file.delete();
                        }
                        file2.delete();
                        return;
                    }
                    d.c("LogFileHelper", "there is no log file to upload!");
                } catch (Throwable th2) {
                    d.g("LogFileHelper", "startUpload error is " + th2.getMessage());
                }
            }
        }, intValue * 1000);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static String b(Context context, String str) {
        HttpURLConnection httpURLConnection;
        String a10;
        InputStream inputStream;
        InputStream inputStream2 = null;
        String str2 = null;
        inputStream2 = null;
        try {
            a10 = cn.jiguang.ar.a.a(context);
        } catch (Throwable th2) {
            th = th2;
            httpURLConnection = null;
        }
        if (TextUtils.isEmpty(a10)) {
            d.g("LogFileHelper", "request upload token failed because can't get appKey");
            i.a((Closeable) null);
            return "";
        }
        String str3 = f2083b;
        if (c.a.f2699a && !TextUtils.isEmpty(f2082a)) {
            str3 = f2082a;
        }
        long f10 = cn.jiguang.d.a.f(context);
        if (f10 == 0) {
            d.g("LogFileHelper", "request l config failed because can't get uid");
            i.a((Closeable) null);
            return null;
        }
        String i9 = cn.jiguang.d.a.i(context);
        if (TextUtils.isEmpty(i9)) {
            d.g("LogFileHelper", "request l config failed because need register first");
            i.a((Closeable) null);
            return null;
        }
        HashMap hashMap = new HashMap();
        JSONObject jSONObject = new JSONObject();
        jSONObject.put("appkey", a10);
        jSONObject.put("uid", f10);
        jSONObject.put("platform", "a");
        jSONObject.put("key", str);
        hashMap.put("Content-Type", "application/json");
        hashMap.put("Accept", "application/json");
        hashMap.put("X-Http-Platform", "android");
        hashMap.put("X-Http-Appkey", a10);
        String upperCase = g.e(f10 + g.e(i9).toUpperCase()).toUpperCase();
        if (TextUtils.isEmpty(upperCase)) {
            i.a((Closeable) null);
            return null;
        }
        String encodeToString = Base64.encodeToString((f10 + CertificateUtil.DELIMITER + upperCase).getBytes(), 10);
        if (TextUtils.isEmpty(encodeToString)) {
            i.a((Closeable) null);
            return null;
        }
        hashMap.put("Authorization", "Basic " + encodeToString);
        hashMap.put("Charset", "UTF-8");
        d.c("LogFileHelper", "url:" + str3 + ", param json:" + jSONObject.toString() + ", header is : " + hashMap.toString());
        httpURLConnection = HttpUtils.getHttpURLConnectionWithProxy(context, str3);
        try {
            httpURLConnection.setConnectTimeout(HttpFileUtil.TIMEOUT);
            httpURLConnection.setReadTimeout(HttpFileUtil.TIMEOUT);
            httpURLConnection.setRequestMethod("POST");
            for (Map.Entry entry : hashMap.entrySet()) {
                httpURLConnection.setRequestProperty((String) entry.getKey(), (String) entry.getValue());
            }
            OutputStream outputStream = httpURLConnection.getOutputStream();
            outputStream.write(jSONObject.toString().getBytes("UTF-8"));
            outputStream.flush();
            if (httpURLConnection.getResponseCode() == 200) {
                inputStream2 = httpURLConnection.getInputStream();
                ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
                byte[] bArr = new byte[1024];
                while (true) {
                    int read = inputStream2.read(bArr);
                    if (read == -1) {
                        break;
                    }
                    byteArrayOutputStream.write(bArr, 0, read);
                }
                String str4 = new String(byteArrayOutputStream.toByteArray());
                inputStream = inputStream2;
                str2 = str4;
            } else {
                inputStream = null;
            }
            try {
                d.c("LogFileHelper", "responseBody:" + str2);
                if (!TextUtils.isEmpty(str2)) {
                    d.c("LogFileHelper", "request upload token success,response body:" + str2);
                    JSONObject jSONObject2 = new JSONObject(str2);
                    if (jSONObject2.optInt("code") == 2000) {
                        String optString = jSONObject2.optJSONObject("data") != null ? jSONObject2.optJSONObject("data").optString(JThirdPlatFormInterface.KEY_TOKEN) : "";
                        i.a((Closeable) inputStream);
                        httpURLConnection.disconnect();
                        return optString;
                    }
                }
                i.a((Closeable) inputStream);
            } catch (Throwable th3) {
                th = th3;
                inputStream2 = inputStream;
                try {
                    d.g("LogFileHelper", "getUploadToken error is " + th.getMessage());
                } finally {
                    i.a((Closeable) inputStream2);
                    if (httpURLConnection != null) {
                        httpURLConnection.disconnect();
                    }
                }
            }
        } catch (Throwable th4) {
            th = th4;
        }
        return "";
    }
}
