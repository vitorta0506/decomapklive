package cn.jiguang.k;

import android.content.Context;
import android.content.SharedPreferences;
import android.text.TextUtils;
import android.util.Base64;
import androidx.webkit.internal.AssetHelper;
import cn.jiguang.bh.d;
import cn.jiguang.net.HttpUtils;
import cn.jiguang.o.c;
import cn.jiguang.o.e;
import cn.jiguang.s.c;
import cn.jiguang.s.f;
import com.guochao.faceshow.utils.HttpFileUtil;
import com.guochao.faceshow.utils.PushUtils;
import com.huawei.hms.framework.common.ContainerUtils;
import java.io.ByteArrayOutputStream;
import java.io.Closeable;
import java.io.InputStream;
import java.io.OutputStream;
import java.net.HttpURLConnection;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import org.json.JSONObject;
/* loaded from: classes.dex */
public class a {

    /* renamed from: g  reason: collision with root package name */
    private static String f2635g;

    /* renamed from: b  reason: collision with root package name */
    private static final String f2630b = cn.jiguang.s.a.b(new byte[]{85, 118, 97, 33, 60, 84, 32, 0, 98, 46, 73, 85, 85, 116, 18, 44});

    /* renamed from: c  reason: collision with root package name */
    private static final String f2631c = cn.jiguang.s.a.b(new byte[]{88, 84, 109, 120, 101, 43, 31, 15, 122, 109, 37, 116, 7, 21, 125, 61, 56, 123, 64, 85, 106, 96, 56, 114, 94, 15, 110, 97, 57, 96, 90, 17, 33, 103, 102});

    /* renamed from: a  reason: collision with root package name */
    public static String f2629a = "";

    /* renamed from: d  reason: collision with root package name */
    private static long f2632d = 0;

    /* renamed from: e  reason: collision with root package name */
    private static long f2633e = 43200;

    /* renamed from: f  reason: collision with root package name */
    private static String f2634f = "";

    /* renamed from: h  reason: collision with root package name */
    private static boolean f2636h = false;

    /* renamed from: cn.jiguang.k.a$a  reason: collision with other inner class name */
    /* loaded from: classes.dex */
    public static class C0040a extends e {

        /* renamed from: a  reason: collision with root package name */
        private Context f2637a;

        C0040a(Context context) {
            this.f2637a = context;
            this.f2707b = "FolderMapConfAction";
        }

        @Override // cn.jiguang.o.e
        public void a() {
            JSONObject c10;
            Context context = this.f2637a;
            if (context == null) {
                cn.jiguang.al.a.d("JActFolderConfManager", "request folder map config, context is null");
            } else if (!a.e(context)) {
                cn.jiguang.al.a.a("JActFolderConfManager", "not config request business time.");
            } else {
                String f10 = a.f(this.f2637a);
                if (TextUtils.isEmpty(f10) || (c10 = a.c(this.f2637a, f10)) == null) {
                    return;
                }
                long optLong = c10.optLong("req_gap");
                String optString = c10.optString("af");
                String optString2 = c10.optString("sign", "");
                a.b(this.f2637a, optLong);
                if (TextUtils.isEmpty(optString) || "null".equals(optString)) {
                    cn.jiguang.al.a.a("JActFolderConfManager", "recv config data is null");
                } else if (PushUtils.CHAT_PUSH_TYPE.equals(optString)) {
                    c.d(this.f2637a, "afm.cache");
                    String unused = a.f2634f = "";
                } else {
                    if (TextUtils.isEmpty(a.f2635g)) {
                        String unused2 = a.f2634f = optString;
                    } else {
                        HashMap<String, List<String>> hashMap = new HashMap<>();
                        if (!a.f2636h) {
                            hashMap = a.a(a.b(this.f2637a));
                        }
                        hashMap.putAll(a.a(optString));
                        String unused3 = a.f2634f = a.b(hashMap);
                    }
                    c.a(this.f2637a, "afm.cache", d.a(a.f2634f));
                    a.d(this.f2637a, optString2);
                }
            }
        }
    }

    private static String a(String str, boolean z10) {
        if (TextUtils.isEmpty(str)) {
            return "";
        }
        try {
            byte[] decode = Base64.decode(str, 2);
            if (z10) {
                decode = f.b(decode);
            }
            String str2 = f2630b;
            return new String(d.a(decode, str2, str2, false));
        } catch (Throwable unused) {
            return "";
        }
    }

    private static String a(List<String> list) {
        StringBuilder sb2 = new StringBuilder();
        for (int i9 = 0; i9 < list.size(); i9++) {
            sb2.append(list.get(i9));
            if (i9 != list.size() - 1) {
                sb2.append(ContainerUtils.FIELD_DELIMITER);
            }
        }
        return sb2.toString();
    }

    public static HashMap<String, List<String>> a(String str) {
        HashMap<String, List<String>> hashMap = new HashMap<>();
        try {
        } catch (Throwable th2) {
            cn.jiguang.al.a.d("JActFolderConfManager", "parse package folder map data config failed, " + th2.getMessage());
        }
        if (TextUtils.isEmpty(str)) {
            return hashMap;
        }
        for (String str2 : str.split("&&")) {
            String[] split = str2.split(ContainerUtils.FIELD_DELIMITER);
            String str3 = split[0];
            String str4 = split[1];
            if (!TextUtils.isEmpty(str3)) {
                hashMap.put(str4, Arrays.asList(str3.split("@")));
            }
        }
        cn.jiguang.al.a.a("JActFolderConfManager", "parse package folder config, data: " + str + ", folder size: " + hashMap.size());
        return hashMap;
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0018 A[Catch: all -> 0x005b, TryCatch #0 {all -> 0x005b, blocks: (B:2:0x0000, B:4:0x000a, B:10:0x0018, B:12:0x0027, B:15:0x002e), top: B:20:0x0000 }] */
    /* JADX WARN: Removed duplicated region for block: B:11:0x0025  */
    /* JADX WARN: Removed duplicated region for block: B:14:0x002d  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static org.json.JSONObject a(android.content.Context r5, java.lang.String r6, long r7) {
        /*
            java.lang.String r0 = "android.permission.READ_EXTERNAL_STORAGE"
            boolean r0 = cn.jiguang.o.d.a(r5, r0)     // Catch: java.lang.Throwable -> L5b
            r1 = 0
            r2 = 1
            if (r0 != 0) goto L15
            java.lang.String r0 = "android.permission.WRITE_EXTERNAL_STORAGE"
            boolean r0 = cn.jiguang.o.d.a(r5, r0)     // Catch: java.lang.Throwable -> L5b
            if (r0 == 0) goto L13
            goto L15
        L13:
            r0 = 0
            goto L16
        L15:
            r0 = 1
        L16:
            if (r2 != r0) goto L25
            cn.jiguang.common.app.helper.a r3 = cn.jiguang.common.app.helper.a.a()     // Catch: java.lang.Throwable -> L5b
            java.util.List r3 = r3.a(r5)     // Catch: java.lang.Throwable -> L5b
            java.lang.String r3 = a(r3)     // Catch: java.lang.Throwable -> L5b
            goto L27
        L25:
            java.lang.String r3 = ""
        L27:
            boolean r4 = android.text.TextUtils.isEmpty(r3)     // Catch: java.lang.Throwable -> L5b
            if (r4 != 0) goto L2e
            r1 = 1
        L2e:
            cn.jiguang.k.a.f2636h = r1     // Catch: java.lang.Throwable -> L5b
            g(r5)     // Catch: java.lang.Throwable -> L5b
            org.json.JSONObject r5 = new org.json.JSONObject     // Catch: java.lang.Throwable -> L5b
            r5.<init>()     // Catch: java.lang.Throwable -> L5b
            java.lang.String r1 = "appkey"
            r5.put(r1, r6)     // Catch: java.lang.Throwable -> L5b
            java.lang.String r6 = "uid"
            r5.put(r6, r7)     // Catch: java.lang.Throwable -> L5b
            java.lang.String r6 = "can_read"
            r5.put(r6, r0)     // Catch: java.lang.Throwable -> L5b
            java.lang.String r6 = "sign"
            java.lang.String r7 = cn.jiguang.k.a.f2635g     // Catch: java.lang.Throwable -> L5b
            r5.put(r6, r7)     // Catch: java.lang.Throwable -> L5b
            java.lang.String r6 = "al"
            r5.put(r6, r3)     // Catch: java.lang.Throwable -> L5b
            java.lang.String r6 = "ver"
            r7 = 2
            r5.put(r6, r7)     // Catch: java.lang.Throwable -> L5b
            return r5
        L5b:
            r5 = move-exception
            java.lang.StringBuilder r6 = new java.lang.StringBuilder
            r6.<init>()
            java.lang.String r7 = "package app list probe req data failed, "
            r6.append(r7)
            java.lang.String r5 = r5.getMessage()
            r6.append(r5)
            java.lang.String r5 = r6.toString()
            java.lang.String r6 = "JActFolderConfManager"
            cn.jiguang.al.a.d(r6, r5)
            r5 = 0
            return r5
        */
        throw new UnsupportedOperationException("Method not decompiled: cn.jiguang.k.a.a(android.content.Context, java.lang.String, long):org.json.JSONObject");
    }

    public static void a(Context context) {
        cn.jiguang.o.d.b(new C0040a(context));
    }

    public static synchronized String b(Context context) {
        synchronized (a.class) {
            if (!TextUtils.isEmpty(f2634f)) {
                return f2634f;
            }
            String c10 = c.c(context, "afm.cache");
            if (!TextUtils.isEmpty(c10)) {
                f2634f = d.b(c10);
            }
            return f2634f;
        }
    }

    private static String b(String str, boolean z10) {
        try {
            byte[] bytes = str.getBytes("UTF-8");
            if (z10) {
                bytes = f.a(bytes);
            }
            String str2 = f2630b;
            return Base64.encodeToString(d.a(bytes, str2, str2, true), 2);
        } catch (Throwable th2) {
            throw new RuntimeException(th2);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static String b(HashMap<String, List<String>> hashMap) {
        StringBuilder sb2 = new StringBuilder();
        ArrayList arrayList = new ArrayList(hashMap.keySet());
        for (int i9 = 0; i9 < arrayList.size(); i9++) {
            String str = (String) arrayList.get(i9);
            List<String> list = hashMap.get(str);
            if (list != null && !list.isEmpty()) {
                for (int i10 = 0; i10 < list.size(); i10++) {
                    sb2.append(list.get(i10));
                    if (i10 != list.size() - 1) {
                        sb2.append("@");
                    }
                }
                sb2.append(ContainerUtils.FIELD_DELIMITER);
                sb2.append(str);
                if (i9 != arrayList.size() - 1) {
                    sb2.append("&&");
                }
            }
        }
        return sb2.toString();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void b(Context context, long j10) {
        f2632d = System.currentTimeMillis();
        long max = Math.max(600L, j10);
        SharedPreferences sharedPreferences = context.getSharedPreferences("cn.jiguang.common", 0);
        if (sharedPreferences != null) {
            sharedPreferences.edit().putLong("fd_last_time", f2632d).putLong("fd_internal_time", max).apply();
        }
        f2633e = max;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static JSONObject c(Context context, String str) {
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        try {
            String a10 = a(str, true);
            JSONObject jSONObject = new JSONObject(a10);
            cn.jiguang.al.a.a("JActFolderConfManager", "decode success, server active Config:" + a10);
            int optInt = jSONObject.optInt("code");
            String optString = jSONObject.optString("message");
            if (optInt != 2000) {
                cn.jiguang.al.a.a("JActFolderConfManager", "[refreshConfigData] data config code:" + optInt + " msg:" + optString);
                return null;
            }
            JSONObject optJSONObject = jSONObject.optJSONObject("data");
            if (optJSONObject != null) {
                long optLong = optJSONObject.optLong("req_gap");
                String optString2 = optJSONObject.optString("af");
                String optString3 = optJSONObject.optString("sign", "");
                cn.jiguang.al.a.a("JActFolderConfManager", "server folder config, internal: " + optLong + ", content: " + optString2 + ", sign: " + optString3);
                return optJSONObject;
            }
            return null;
        } catch (Throwable unused) {
            cn.jiguang.al.a.d("JActFolderConfManager", "[refreshConfigData] refreshConfigData failed, errMsg: " + str);
            return null;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void d(Context context, String str) {
        SharedPreferences sharedPreferences = context.getSharedPreferences("cn.jiguang.common", 0);
        if (sharedPreferences != null) {
            sharedPreferences.edit().putString("req_sign", str).apply();
        }
        f2635g = str;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static boolean e(Context context) {
        SharedPreferences sharedPreferences;
        if (f2632d == 0 && (sharedPreferences = context.getSharedPreferences("cn.jiguang.common", 0)) != null) {
            f2632d = sharedPreferences.getLong("fd_last_time", 0L);
            f2633e = sharedPreferences.getLong("fd_internal_time", 43200L);
        }
        return System.currentTimeMillis() - f2632d >= f2633e * 1000;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static String f(Context context) {
        HttpURLConnection httpURLConnection;
        InputStream inputStream;
        String b10;
        String str;
        try {
            b10 = cn.jiguang.o.d.b(context);
        } catch (Throwable th2) {
            th = th2;
            httpURLConnection = null;
            inputStream = null;
        }
        if (TextUtils.isEmpty(b10)) {
            cn.jiguang.al.a.d("JActFolderConfManager", "request folder data config failed because can't get appKey");
            f.a((Closeable) null);
            return null;
        }
        long c10 = cn.jiguang.o.d.c(context);
        if (c10 == 0) {
            cn.jiguang.al.a.d("JActFolderConfManager", "request folder data config failed because can't get uid");
            f.a((Closeable) null);
            return null;
        } else if (cn.jiguang.o.d.r(context)) {
            cn.jiguang.al.a.a("JActFolderConfManager", "sdk is banned, not request data config");
            f.a((Closeable) null);
            return null;
        } else {
            JSONObject a10 = a(context, b10, c10);
            if (a10 == null) {
                cn.jiguang.al.a.d("JActFolderConfManager", "package request data failed.");
                f.a((Closeable) null);
                return null;
            }
            String str2 = f2631c;
            if (c.a.f2699a && !TextUtils.isEmpty(f2629a)) {
                cn.jiguang.al.a.a("JActFolderConfManager", "use folder data config url :" + f2629a);
                str2 = f2629a;
            }
            HashMap hashMap = new HashMap();
            cn.jiguang.al.a.a("JActFolderConfManager", "url:" + str2 + ", param json:" + a10.toString());
            hashMap.put("Content-Type", AssetHelper.DEFAULT_MIME_TYPE);
            hashMap.put("Accept", "application/json");
            hashMap.put("Charset", "UTF-8");
            HttpURLConnection httpURLConnectionWithProxy = HttpUtils.getHttpURLConnectionWithProxy(context, str2);
            try {
                httpURLConnectionWithProxy.setConnectTimeout(HttpFileUtil.TIMEOUT);
                httpURLConnectionWithProxy.setReadTimeout(HttpFileUtil.TIMEOUT);
                httpURLConnectionWithProxy.setRequestMethod("POST");
                for (Map.Entry entry : hashMap.entrySet()) {
                    httpURLConnectionWithProxy.setRequestProperty((String) entry.getKey(), (String) entry.getValue());
                }
                OutputStream outputStream = httpURLConnectionWithProxy.getOutputStream();
                String b11 = b(a10.toString(), true);
                cn.jiguang.al.a.a("JActFolderConfManager", "encryptStr:" + b11 + ", zip length: " + b11.length() + ", length: " + a10.toString().length());
                outputStream.write(b11.getBytes("UTF-8"));
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
                        str = new String(byteArrayOutputStream.toByteArray());
                    } catch (Throwable th3) {
                        th = th3;
                        Throwable th4 = th;
                        httpURLConnection = httpURLConnectionWithProxy;
                        th = th4;
                        try {
                            cn.jiguang.al.a.d("JActFolderConfManager", "request folder data config exception:" + th.getMessage());
                            return null;
                        } finally {
                            f.a(inputStream);
                            if (httpURLConnection != null) {
                                httpURLConnection.disconnect();
                            }
                        }
                    }
                } else {
                    inputStream = null;
                    str = null;
                }
                cn.jiguang.al.a.a("JActFolderConfManager", "request folder data config code:" + responseCode + ", body:" + str);
            } catch (Throwable th5) {
                th = th5;
                inputStream = null;
            }
            if (TextUtils.isEmpty(str)) {
                f.a(inputStream);
                httpURLConnectionWithProxy.disconnect();
                return null;
            }
            cn.jiguang.al.a.a("JActFolderConfManager", "request folder data config success");
            f.a(inputStream);
            httpURLConnectionWithProxy.disconnect();
            return str;
        }
    }

    private static void g(Context context) {
        SharedPreferences sharedPreferences;
        if (TextUtils.isEmpty(f2635g) && (sharedPreferences = context.getSharedPreferences("cn.jiguang.common", 0)) != null) {
            f2635g = sharedPreferences.getString("req_sign", "");
        }
    }
}
