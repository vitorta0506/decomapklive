package com.xiaomi.push;

import android.content.Context;
import android.net.ConnectivityManager;
import android.net.NetworkCapabilities;
import android.net.NetworkInfo;
import android.os.Build;
import android.text.TextUtils;
import com.facebook.internal.security.CertificateUtil;
import com.huawei.hms.framework.common.ContainerUtils;
import java.io.BufferedReader;
import java.io.FilterInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.OutputStream;
import java.io.UnsupportedEncodingException;
import java.net.HttpURLConnection;
import java.net.URL;
import java.net.URLEncoder;
import java.util.Map;
import java.util.regex.Pattern;
import java.util.zip.GZIPOutputStream;
/* loaded from: classes5.dex */
public class p3 {

    /* renamed from: a  reason: collision with root package name */
    public static final Pattern f37031a = Pattern.compile("([^\\s;]+)(.*)");

    /* renamed from: b  reason: collision with root package name */
    public static final Pattern f37032b = Pattern.compile("(.*?charset\\s*=[^a-zA-Z0-9]*)([-a-zA-Z0-9]+)(.*)", 2);

    /* renamed from: c  reason: collision with root package name */
    public static final Pattern f37033c = Pattern.compile("(\\<\\?xml\\s+.*?encoding\\s*=[^a-zA-Z0-9]*)([-a-zA-Z0-9]+)(.*)", 2);

    /* loaded from: classes5.dex */
    public static final class a extends FilterInputStream {

        /* renamed from: a  reason: collision with root package name */
        private boolean f37034a;

        public a(InputStream inputStream) {
            super(inputStream);
        }

        @Override // java.io.FilterInputStream, java.io.InputStream
        public int read(byte[] bArr, int i9, int i10) {
            int read;
            if (this.f37034a || (read = super.read(bArr, i9, i10)) == -1) {
                this.f37034a = true;
                return -1;
            }
            return read;
        }
    }

    /* loaded from: classes5.dex */
    public static class b {
    }

    public static int a(Context context) {
        try {
            ConnectivityManager connectivityManager = (ConnectivityManager) context.getSystemService("connectivity");
            if (connectivityManager == null) {
                return -1;
            }
            NetworkInfo activeNetworkInfo = connectivityManager.getActiveNetworkInfo();
            if (activeNetworkInfo == null) {
                return -1;
            }
            return activeNetworkInfo.getType();
        } catch (Exception unused) {
            return -1;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    private static n3 b(Context context, String str, String str2, Map<String, String> map, String str3) {
        boolean z10;
        BufferedReader bufferedReader;
        n3 n3Var = new n3();
        try {
            try {
                try {
                    HttpURLConnection k10 = k(context, l(str));
                    k10.setConnectTimeout(10000);
                    k10.setReadTimeout(15000);
                    String str4 = str2;
                    if (str2 == 0) {
                        str4 = "GET";
                    }
                    k10.setRequestMethod(str4);
                    int i9 = 0;
                    if (map != null) {
                        z10 = "gzip".equalsIgnoreCase(map.get("Content-Encoding"));
                        for (String str5 : map.keySet()) {
                            k10.setRequestProperty(str5, map.get(str5));
                        }
                    } else {
                        z10 = false;
                    }
                    if (!TextUtils.isEmpty(str3)) {
                        k10.setDoOutput(true);
                        byte[] bytes = str3.getBytes();
                        OutputStream gZIPOutputStream = z10 ? new GZIPOutputStream(k10.getOutputStream()) : k10.getOutputStream();
                        try {
                            gZIPOutputStream.write(bytes, 0, bytes.length);
                            gZIPOutputStream.flush();
                            gZIPOutputStream.close();
                        } catch (IOException e10) {
                            e = e10;
                            throw new IOException("err while request " + str + CertificateUtil.DELIMITER + e.getClass().getSimpleName());
                        } catch (Throwable th2) {
                            th = th2;
                            throw new IOException(th.getMessage());
                        }
                    }
                    n3Var.f37003a = k10.getResponseCode();
                    tf.c.l("Http POST Response Code: " + n3Var.f37003a);
                    while (true) {
                        String headerFieldKey = k10.getHeaderFieldKey(i9);
                        String headerField = k10.getHeaderField(i9);
                        if (headerFieldKey == null && headerField == null) {
                            try {
                                break;
                            } catch (IOException unused) {
                                bufferedReader = new BufferedReader(new InputStreamReader(new a(k10.getErrorStream())));
                            }
                        } else {
                            n3Var.f37004b.put(headerFieldKey, headerField);
                            i9 = i9 + 1 + 1;
                        }
                    }
                    bufferedReader = new BufferedReader(new InputStreamReader(new a(k10.getInputStream())));
                } catch (IOException e11) {
                    e = e11;
                }
            } catch (Throwable th3) {
                th = th3;
            }
            try {
                StringBuffer stringBuffer = new StringBuffer();
                String property = System.getProperty("line.separator");
                for (String readLine = bufferedReader.readLine(); readLine != null; readLine = bufferedReader.readLine()) {
                    stringBuffer.append(readLine);
                    stringBuffer.append(property);
                }
                n3Var.f37005c = stringBuffer.toString();
                bufferedReader.close();
                y2.b(null);
                y2.b(null);
                return n3Var;
            } catch (IOException e12) {
                e = e12;
                throw new IOException("err while request " + str + CertificateUtil.DELIMITER + e.getClass().getSimpleName());
            } catch (Throwable th4) {
                th = th4;
                throw new IOException(th.getMessage());
            }
        } catch (Throwable th5) {
            y2.b(null);
            y2.b(str2);
            throw th5;
        }
    }

    public static n3 c(Context context, String str, Map<String, String> map) {
        return b(context, str, "POST", null, j(map));
    }

    public static InputStream d(Context context, URL url, boolean z10, String str, String str2) {
        return e(context, url, z10, str, str2, null, null);
    }

    public static InputStream e(Context context, URL url, boolean z10, String str, String str2, Map<String, String> map, b bVar) {
        if (context != null) {
            if (url != null) {
                if (!z10) {
                    url = new URL(i(url.toString()));
                }
                try {
                    HttpURLConnection.setFollowRedirects(true);
                    HttpURLConnection k10 = k(context, url);
                    k10.setConnectTimeout(10000);
                    k10.setReadTimeout(15000);
                    if (!TextUtils.isEmpty(str)) {
                        k10.setRequestProperty("User-Agent", str);
                    }
                    if (str2 != null) {
                        k10.setRequestProperty("Cookie", str2);
                    }
                    if (map != null) {
                        for (String str3 : map.keySet()) {
                            k10.setRequestProperty(str3, map.get(str3));
                        }
                    }
                    return new a(k10.getInputStream());
                } catch (IOException e10) {
                    throw new IOException("IOException:" + e10.getClass().getSimpleName());
                } catch (Throwable th2) {
                    throw new IOException(th2.getMessage());
                }
            }
            throw new IllegalArgumentException("url");
        }
        throw new IllegalArgumentException("context");
    }

    public static String f(Context context) {
        if (p(context)) {
            return "wifi";
        }
        try {
            ConnectivityManager connectivityManager = (ConnectivityManager) context.getSystemService("connectivity");
            if (connectivityManager == null) {
                return "";
            }
            NetworkInfo activeNetworkInfo = connectivityManager.getActiveNetworkInfo();
            if (activeNetworkInfo == null) {
                return "";
            }
            return (activeNetworkInfo.getTypeName() + "-" + activeNetworkInfo.getSubtypeName() + "-" + activeNetworkInfo.getExtraInfo()).toLowerCase();
        } catch (Exception unused) {
            return "";
        }
    }

    public static String g(Context context, URL url) {
        return h(context, url, false, null, "UTF-8", null);
    }

    public static String h(Context context, URL url, boolean z10, String str, String str2, String str3) {
        InputStream inputStream;
        try {
            inputStream = d(context, url, z10, str, str3);
            try {
                StringBuilder sb2 = new StringBuilder(1024);
                BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(inputStream, str2));
                char[] cArr = new char[4096];
                while (true) {
                    int read = bufferedReader.read(cArr);
                    if (-1 == read) {
                        y2.b(inputStream);
                        return sb2.toString();
                    }
                    sb2.append(cArr, 0, read);
                }
            } catch (Throwable th2) {
                th = th2;
                y2.b(inputStream);
                throw th;
            }
        } catch (Throwable th3) {
            th = th3;
            inputStream = null;
        }
    }

    public static String i(String str) {
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        new String();
        return String.format("%s&key=%s", str, f.b(String.format("%sbe988a6134bc8254465424e5a70ef037", str)));
    }

    public static String j(Map<String, String> map) {
        if (map == null || map.size() <= 0) {
            return null;
        }
        StringBuffer stringBuffer = new StringBuffer();
        for (Map.Entry<String, String> entry : map.entrySet()) {
            if (entry.getKey() != null && entry.getValue() != null) {
                try {
                    stringBuffer.append(URLEncoder.encode(entry.getKey(), "UTF-8"));
                    stringBuffer.append(ContainerUtils.KEY_VALUE_DELIMITER);
                    stringBuffer.append(URLEncoder.encode(entry.getValue(), "UTF-8"));
                    stringBuffer.append(ContainerUtils.FIELD_DELIMITER);
                } catch (UnsupportedEncodingException e10) {
                    tf.c.l("Failed to convert from params map to string: " + e10);
                    tf.c.l("map: " + map.toString());
                    return null;
                }
            }
        }
        if (stringBuffer.length() > 0) {
            stringBuffer = stringBuffer.deleteCharAt(stringBuffer.length() - 1);
        }
        return stringBuffer.toString();
    }

    public static HttpURLConnection k(Context context, URL url) {
        "http".equals(url.getProtocol());
        return (HttpURLConnection) url.openConnection();
    }

    private static URL l(String str) {
        return new URL(str);
    }

    public static boolean m(Context context) {
        return a(context) >= 0;
    }

    public static boolean n(Context context) {
        boolean z10;
        ConnectivityManager connectivityManager = (ConnectivityManager) context.getSystemService("connectivity");
        if (connectivityManager != null) {
            if (Build.VERSION.SDK_INT >= 23) {
                try {
                    NetworkCapabilities networkCapabilities = connectivityManager.getNetworkCapabilities(connectivityManager.getActiveNetwork());
                    if (networkCapabilities != null) {
                        z10 = networkCapabilities.hasCapability(16);
                    }
                } catch (Exception unused) {
                }
            } else {
                z10 = m(context);
            }
            return z10 && o(context);
        }
        z10 = false;
        if (z10) {
            return false;
        }
    }

    public static boolean o(Context context) {
        NetworkInfo networkInfo;
        try {
            networkInfo = ((ConnectivityManager) context.getSystemService("connectivity")).getActiveNetworkInfo();
        } catch (Exception unused) {
            networkInfo = null;
        }
        return networkInfo != null && networkInfo.isConnected();
    }

    public static boolean p(Context context) {
        try {
            ConnectivityManager connectivityManager = (ConnectivityManager) context.getSystemService("connectivity");
            if (connectivityManager == null) {
                return false;
            }
            NetworkInfo activeNetworkInfo = connectivityManager.getActiveNetworkInfo();
            return activeNetworkInfo != null && 1 == activeNetworkInfo.getType();
        } catch (Exception unused) {
            return false;
        }
    }
}
