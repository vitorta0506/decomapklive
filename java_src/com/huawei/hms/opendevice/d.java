package com.huawei.hms.opendevice;

import android.content.Context;
import android.text.TextUtils;
import com.huawei.hms.support.log.HMSLog;
import java.io.BufferedInputStream;
import java.io.BufferedOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.net.HttpURLConnection;
import java.net.URL;
import java.net.URLEncoder;
import java.security.GeneralSecurityException;
import java.security.KeyStoreException;
import java.security.NoSuchAlgorithmException;
import java.util.Map;
import javax.net.ssl.HttpsURLConnection;
/* loaded from: classes4.dex */
public abstract class d {

    /* loaded from: classes4.dex */
    private enum a {
        GET("GET"),
        POST("POST");
        

        /* renamed from: d  reason: collision with root package name */
        public String f27633d;

        a(String str) {
            this.f27633d = str;
        }

        public String a() {
            return this.f27633d;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r10v1 */
    /* JADX WARN: Type inference failed for: r10v10 */
    /* JADX WARN: Type inference failed for: r10v13 */
    /* JADX WARN: Type inference failed for: r10v16 */
    /* JADX WARN: Type inference failed for: r10v21 */
    /* JADX WARN: Type inference failed for: r10v5, types: [java.io.InputStream] */
    /* JADX WARN: Type inference failed for: r2v2 */
    /* JADX WARN: Type inference failed for: r8v1 */
    /* JADX WARN: Type inference failed for: r8v10 */
    /* JADX WARN: Type inference failed for: r8v11, types: [java.io.OutputStream] */
    /* JADX WARN: Type inference failed for: r8v12 */
    /* JADX WARN: Type inference failed for: r8v13 */
    /* JADX WARN: Type inference failed for: r8v15 */
    /* JADX WARN: Type inference failed for: r8v17 */
    /* JADX WARN: Type inference failed for: r8v21, types: [java.io.OutputStream, java.io.FilterOutputStream, java.io.BufferedOutputStream] */
    /* JADX WARN: Type inference failed for: r8v25 */
    /* JADX WARN: Type inference failed for: r8v26 */
    /* JADX WARN: Type inference failed for: r8v27 */
    /* JADX WARN: Type inference failed for: r8v28 */
    /* JADX WARN: Type inference failed for: r8v29 */
    /* JADX WARN: Type inference failed for: r8v30 */
    /* JADX WARN: Type inference failed for: r8v31 */
    /* JADX WARN: Type inference failed for: r8v32 */
    /* JADX WARN: Type inference failed for: r8v33 */
    /* JADX WARN: Type inference failed for: r8v8 */
    /* JADX WARN: Type inference failed for: r8v9 */
    /* JADX WARN: Type inference failed for: r9v31 */
    public static String a(Context context, String str, String str2, Map<String, String> map) {
        ?? r82;
        InputStream inputStream;
        ?? r10;
        HttpURLConnection httpURLConnection;
        InputStream inputStream2;
        InputStream inputStream3;
        InputStream inputStream4;
        InputStream inputStream5;
        ?? r83;
        InputStream inputStream6;
        InputStream inputStream7;
        OutputStream outputStream;
        HttpURLConnection httpURLConnection2 = null;
        if (str2 == null || TextUtils.isEmpty(str) || TextUtils.isEmpty(str2)) {
            return null;
        }
        int i9 = -1;
        try {
            try {
                httpURLConnection = a(context, str, map, a.POST.a());
                if (httpURLConnection == null) {
                    fc.a.c(null);
                    fc.a.b(null);
                    fc.a.b(null);
                    s.a(httpURLConnection);
                    HMSLog.i("PushHttpClient", "close connection");
                    return null;
                }
                try {
                    r83 = new BufferedOutputStream(httpURLConnection.getOutputStream());
                } catch (IOException unused) {
                    inputStream4 = null;
                    inputStream5 = inputStream4;
                    r83 = inputStream4;
                    inputStream6 = inputStream5;
                    StringBuilder sb2 = new StringBuilder();
                    sb2.append("http execute encounter IOException - http code:");
                    sb2.append(i9);
                    HMSLog.w("PushHttpClient", sb2.toString());
                    outputStream = r83;
                    inputStream7 = inputStream5;
                    fc.a.c(outputStream);
                    fc.a.b(inputStream7);
                    fc.a.b(inputStream6);
                    s.a(httpURLConnection);
                    HMSLog.i("PushHttpClient", "close connection");
                    return null;
                } catch (RuntimeException unused2) {
                    inputStream3 = null;
                    inputStream5 = inputStream3;
                    r83 = inputStream3;
                    inputStream6 = inputStream5;
                    StringBuilder sb3 = new StringBuilder();
                    sb3.append("http execute encounter RuntimeException - http code:");
                    sb3.append(i9);
                    HMSLog.w("PushHttpClient", sb3.toString());
                    outputStream = r83;
                    inputStream7 = inputStream5;
                    fc.a.c(outputStream);
                    fc.a.b(inputStream7);
                    fc.a.b(inputStream6);
                    s.a(httpURLConnection);
                    HMSLog.i("PushHttpClient", "close connection");
                    return null;
                } catch (Exception unused3) {
                    inputStream2 = null;
                    inputStream5 = inputStream2;
                    r83 = inputStream2;
                    inputStream6 = inputStream5;
                    StringBuilder sb4 = new StringBuilder();
                    sb4.append("http execute encounter unknown exception - http code:");
                    sb4.append(i9);
                    HMSLog.w("PushHttpClient", sb4.toString());
                    outputStream = r83;
                    inputStream7 = inputStream5;
                    fc.a.c(outputStream);
                    fc.a.b(inputStream7);
                    fc.a.b(inputStream6);
                    s.a(httpURLConnection);
                    HMSLog.i("PushHttpClient", "close connection");
                    return null;
                } catch (Throwable th2) {
                    inputStream = null;
                    r10 = 0;
                    httpURLConnection2 = httpURLConnection;
                    th = th2;
                    r82 = 0;
                }
                try {
                    r83.write(str2.getBytes("UTF-8"));
                    r83.flush();
                    i9 = httpURLConnection.getResponseCode();
                    StringBuilder sb5 = new StringBuilder();
                    sb5.append("http post response code: ");
                    sb5.append(i9);
                    HMSLog.d("PushHttpClient", sb5.toString());
                    if (i9 >= 400) {
                        inputStream5 = httpURLConnection.getErrorStream();
                    } else {
                        inputStream5 = httpURLConnection.getInputStream();
                    }
                    try {
                        inputStream6 = new BufferedInputStream(inputStream5);
                        try {
                            String a10 = s.a(inputStream6);
                            fc.a.c(r83);
                            fc.a.b(inputStream5);
                            fc.a.b(inputStream6);
                            s.a(httpURLConnection);
                            HMSLog.i("PushHttpClient", "close connection");
                            return a10;
                        } catch (IOException unused4) {
                            StringBuilder sb22 = new StringBuilder();
                            sb22.append("http execute encounter IOException - http code:");
                            sb22.append(i9);
                            HMSLog.w("PushHttpClient", sb22.toString());
                            outputStream = r83;
                            inputStream7 = inputStream5;
                            fc.a.c(outputStream);
                            fc.a.b(inputStream7);
                            fc.a.b(inputStream6);
                            s.a(httpURLConnection);
                            HMSLog.i("PushHttpClient", "close connection");
                            return null;
                        } catch (RuntimeException unused5) {
                            StringBuilder sb32 = new StringBuilder();
                            sb32.append("http execute encounter RuntimeException - http code:");
                            sb32.append(i9);
                            HMSLog.w("PushHttpClient", sb32.toString());
                            outputStream = r83;
                            inputStream7 = inputStream5;
                            fc.a.c(outputStream);
                            fc.a.b(inputStream7);
                            fc.a.b(inputStream6);
                            s.a(httpURLConnection);
                            HMSLog.i("PushHttpClient", "close connection");
                            return null;
                        } catch (Exception unused6) {
                            StringBuilder sb42 = new StringBuilder();
                            sb42.append("http execute encounter unknown exception - http code:");
                            sb42.append(i9);
                            HMSLog.w("PushHttpClient", sb42.toString());
                            outputStream = r83;
                            inputStream7 = inputStream5;
                            fc.a.c(outputStream);
                            fc.a.b(inputStream7);
                            fc.a.b(inputStream6);
                            s.a(httpURLConnection);
                            HMSLog.i("PushHttpClient", "close connection");
                            return null;
                        }
                    } catch (IOException unused7) {
                        inputStream6 = null;
                    } catch (RuntimeException unused8) {
                        inputStream6 = null;
                    } catch (Exception unused9) {
                        inputStream6 = null;
                    } catch (Throwable th3) {
                        httpURLConnection2 = httpURLConnection;
                        th = th3;
                        r10 = 0;
                        r82 = r83;
                        inputStream = inputStream5;
                        fc.a.c(r82);
                        fc.a.b(inputStream);
                        fc.a.b(r10);
                        s.a(httpURLConnection2);
                        HMSLog.i("PushHttpClient", "close connection");
                        throw th;
                    }
                } catch (IOException unused10) {
                    inputStream5 = null;
                    r83 = r83;
                    inputStream6 = inputStream5;
                    StringBuilder sb222 = new StringBuilder();
                    sb222.append("http execute encounter IOException - http code:");
                    sb222.append(i9);
                    HMSLog.w("PushHttpClient", sb222.toString());
                    outputStream = r83;
                    inputStream7 = inputStream5;
                    fc.a.c(outputStream);
                    fc.a.b(inputStream7);
                    fc.a.b(inputStream6);
                    s.a(httpURLConnection);
                    HMSLog.i("PushHttpClient", "close connection");
                    return null;
                } catch (RuntimeException unused11) {
                    inputStream5 = null;
                    r83 = r83;
                    inputStream6 = inputStream5;
                    StringBuilder sb322 = new StringBuilder();
                    sb322.append("http execute encounter RuntimeException - http code:");
                    sb322.append(i9);
                    HMSLog.w("PushHttpClient", sb322.toString());
                    outputStream = r83;
                    inputStream7 = inputStream5;
                    fc.a.c(outputStream);
                    fc.a.b(inputStream7);
                    fc.a.b(inputStream6);
                    s.a(httpURLConnection);
                    HMSLog.i("PushHttpClient", "close connection");
                    return null;
                } catch (Exception unused12) {
                    inputStream5 = null;
                    r83 = r83;
                    inputStream6 = inputStream5;
                    StringBuilder sb422 = new StringBuilder();
                    sb422.append("http execute encounter unknown exception - http code:");
                    sb422.append(i9);
                    HMSLog.w("PushHttpClient", sb422.toString());
                    outputStream = r83;
                    inputStream7 = inputStream5;
                    fc.a.c(outputStream);
                    fc.a.b(inputStream7);
                    fc.a.b(inputStream6);
                    s.a(httpURLConnection);
                    HMSLog.i("PushHttpClient", "close connection");
                    return null;
                } catch (Throwable th4) {
                    r10 = 0;
                    httpURLConnection2 = httpURLConnection;
                    th = th4;
                    inputStream = null;
                    r82 = r83;
                }
            } catch (Throwable th5) {
                httpURLConnection2 = context;
                th = th5;
                r82 = str;
                inputStream = str2;
                r10 = map;
            }
        } catch (IOException unused13) {
            httpURLConnection = null;
            inputStream4 = null;
        } catch (RuntimeException unused14) {
            httpURLConnection = null;
            inputStream3 = null;
        } catch (Exception unused15) {
            httpURLConnection = null;
            inputStream2 = null;
        } catch (Throwable th6) {
            th = th6;
            r82 = 0;
            inputStream = null;
            r10 = 0;
        }
    }

    public static HttpURLConnection a(Context context, String str, Map<String, String> map, String str2) throws Exception {
        HttpURLConnection httpURLConnection = (HttpURLConnection) new URL(str).openConnection();
        a(context, httpURLConnection);
        httpURLConnection.setRequestMethod(str2);
        httpURLConnection.setConnectTimeout(15000);
        httpURLConnection.setReadTimeout(15000);
        httpURLConnection.setDoOutput(true);
        httpURLConnection.setDoInput(true);
        httpURLConnection.setRequestProperty("Content-type", "application/json; charset=UTF-8");
        httpURLConnection.setRequestProperty("Connection", "close");
        if (map != null && map.size() >= 1) {
            for (Map.Entry<String, String> entry : map.entrySet()) {
                String key = entry.getKey();
                if (key != null && !TextUtils.isEmpty(key)) {
                    httpURLConnection.setRequestProperty(key, URLEncoder.encode(entry.getValue() == null ? "" : entry.getValue(), "UTF-8"));
                }
            }
        }
        return httpURLConnection;
    }

    public static void a(Context context, HttpURLConnection httpURLConnection) throws Exception {
        if (httpURLConnection instanceof HttpsURLConnection) {
            HttpsURLConnection httpsURLConnection = (HttpsURLConnection) httpURLConnection;
            cc.b bVar = null;
            try {
                bVar = cc.b.b(context);
            } catch (IOException unused) {
                HMSLog.w("PushHttpClient", "Get SocketFactory IO Exception.");
            } catch (IllegalAccessException unused2) {
                HMSLog.w("PushHttpClient", "Get SocketFactory Illegal Access Exception.");
            } catch (IllegalArgumentException unused3) {
                HMSLog.w("PushHttpClient", "Get SocketFactory Illegal Argument Exception.");
            } catch (KeyStoreException unused4) {
                HMSLog.w("PushHttpClient", "Get SocketFactory Key Store exception.");
            } catch (NoSuchAlgorithmException unused5) {
                HMSLog.w("PushHttpClient", "Get SocketFactory Algorithm Exception.");
            } catch (GeneralSecurityException unused6) {
                HMSLog.w("PushHttpClient", "Get SocketFactory General Security Exception.");
            }
            if (bVar != null) {
                httpsURLConnection.setSSLSocketFactory(bVar);
                httpsURLConnection.setHostnameVerifier(cc.b.f1686j);
                return;
            }
            throw new Exception("No ssl socket factory set.");
        }
    }
}
