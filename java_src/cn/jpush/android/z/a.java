package cn.jpush.android.z;

import android.content.Context;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.text.TextUtils;
import android.util.Base64;
import androidx.webkit.internal.AssetHelper;
import cn.jpush.android.af.d;
import cn.jpush.android.af.i;
import cn.jpush.android.af.j;
import cn.jpush.android.helper.JCoreHelper;
import cn.jpush.android.helper.Logger;
import com.facebook.internal.security.CertificateUtil;
import com.guochao.faceshow.utils.HttpFileUtil;
import java.io.ByteArrayOutputStream;
import java.io.Closeable;
import java.io.InputStream;
import java.io.OutputStream;
import java.net.HttpURLConnection;
import java.net.InetSocketAddress;
import java.net.Proxy;
import java.net.URL;
import java.util.HashMap;
import java.util.Map;
import okio.Utf8;
/* loaded from: classes.dex */
public class a {

    /* renamed from: a  reason: collision with root package name */
    public static final String f3569a = d.b(new byte[]{32, 0, 14, 41, 38, 38, Utf8.REPLACEMENT_BYTE, 1, 23, 43});

    /* renamed from: b  reason: collision with root package name */
    private static final String f3570b = d.b(new byte[]{62, 82, 38, 113, 19, 93, 73, 85, 84, 2, 23, 92, 58, 34, 40, 115, 19, 47, 78, 84, 32, 3, 19, 40, 57, 83, 32, 114, 23, 93, 49, 82});

    public static String a(Context context, String str, String str2, int i9) {
        HttpURLConnection httpURLConnection;
        InputStream inputStream;
        HttpURLConnection a10;
        String str3;
        try {
            HashMap hashMap = new HashMap();
            hashMap.put("Content-Type", AssetHelper.DEFAULT_MIME_TYPE);
            hashMap.put("Accept", "application/json");
            hashMap.put("Charset", "UTF-8");
            hashMap.put("Content-Length", String.valueOf(str2.getBytes().length));
            if (i9 == 1) {
                hashMap.put("Accept-Encoding", "gzip");
                hashMap.put("Authorization", "Basic " + b(context, str2));
            }
            a10 = a(context, str);
            try {
                a10.setConnectTimeout(HttpFileUtil.TIMEOUT);
                a10.setReadTimeout(HttpFileUtil.TIMEOUT);
                a10.setRequestMethod("POST");
                for (Map.Entry entry : hashMap.entrySet()) {
                    a10.setRequestProperty((String) entry.getKey(), (String) entry.getValue());
                }
                OutputStream outputStream = a10.getOutputStream();
                outputStream.write(str2.getBytes());
                outputStream.flush();
                int responseCode = a10.getResponseCode();
                if (responseCode == 200) {
                    inputStream = a10.getInputStream();
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
                        str3 = new String(byteArrayOutputStream.toByteArray());
                    } catch (Throwable th2) {
                        th = th2;
                        Throwable th3 = th;
                        httpURLConnection = a10;
                        th = th3;
                        try {
                            Logger.w("HttpManager", "request config exception:" + th.getMessage());
                            return null;
                        } finally {
                            j.a((Closeable) inputStream);
                            if (httpURLConnection != null) {
                                httpURLConnection.disconnect();
                            }
                        }
                    }
                } else {
                    inputStream = null;
                    str3 = null;
                }
                Logger.d("HttpManager", "request config code:" + responseCode + ", url: " + str);
            } catch (Throwable th4) {
                th = th4;
                inputStream = null;
            }
        } catch (Throwable th5) {
            th = th5;
            httpURLConnection = null;
            inputStream = null;
        }
        if (TextUtils.isEmpty(str3)) {
            j.a((Closeable) inputStream);
            a10.disconnect();
            return null;
        }
        Logger.d("HttpManager", "request config success");
        j.a((Closeable) inputStream);
        a10.disconnect();
        return str3;
    }

    /* JADX WARN: Removed duplicated region for block: B:49:0x00f6  */
    /* JADX WARN: Removed duplicated region for block: B:81:0x00f5 A[SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static java.lang.String a(java.lang.String r10, int r11, long r12) {
        /*
            Method dump skipped, instructions count: 253
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: cn.jpush.android.z.a.a(java.lang.String, int, long):java.lang.String");
    }

    public static HttpURLConnection a(Context context, String str) {
        NetworkInfo activeNetworkInfo;
        String extraInfo;
        URL url = new URL(str);
        if (context != null) {
            try {
                if (context.getPackageManager().checkPermission("android.permission.ACCESS_NETWORK_STATE", context.getPackageName()) == 0 && (activeNetworkInfo = ((ConnectivityManager) context.getSystemService("connectivity")).getActiveNetworkInfo()) != null && activeNetworkInfo.getType() != 1 && (extraInfo = activeNetworkInfo.getExtraInfo()) != null && (extraInfo.equals("cmwap") || extraInfo.equals("3gwap") || extraInfo.equals("uniwap"))) {
                    return (HttpURLConnection) url.openConnection(new Proxy(Proxy.Type.HTTP, new InetSocketAddress(f3569a, 80)));
                }
            } catch (Throwable unused) {
            }
        }
        return (HttpURLConnection) url.openConnection();
    }

    public static byte[] a(InputStream inputStream) {
        return j.b(inputStream);
    }

    /* JADX WARN: Removed duplicated region for block: B:62:0x0128 A[Catch: all -> 0x0130, TRY_ENTER, TryCatch #1 {all -> 0x0130, blocks: (B:52:0x00ff, B:53:0x0102, B:62:0x0128, B:64:0x012d), top: B:79:0x0020 }] */
    /* JADX WARN: Removed duplicated region for block: B:64:0x012d A[Catch: all -> 0x0130, TRY_LEAVE, TryCatch #1 {all -> 0x0130, blocks: (B:52:0x00ff, B:53:0x0102, B:62:0x0128, B:64:0x012d), top: B:79:0x0020 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static byte[] a(java.lang.String r6, int r7) {
        /*
            Method dump skipped, instructions count: 317
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: cn.jpush.android.z.a.a(java.lang.String, int):byte[]");
    }

    public static byte[] a(String str, int i9, int i10) {
        byte[] bArr = null;
        for (int i11 = 0; i11 < i9; i11++) {
            bArr = a(str, i10);
            if (bArr != null) {
                break;
            }
        }
        return bArr;
    }

    public static byte[] a(String str, int i9, long j10, int i10) {
        byte[] bArr = null;
        for (int i11 = 0; i11 < i10; i11++) {
            bArr = b(str, i9, j10);
            if (bArr != null) {
                break;
            }
        }
        return bArr;
    }

    private static String b(Context context, String str) {
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        String appKey = JCoreHelper.getAppKey(context);
        String c10 = i.c(str);
        String c11 = i.c(appKey + f3570b + c10);
        if (TextUtils.isEmpty(c11)) {
            return null;
        }
        try {
            return Base64.encodeToString((appKey + CertificateUtil.DELIMITER + c11).getBytes(), 10);
        } catch (Exception unused) {
            Logger.w("generateAuthForBlackListConfig", "basic authorization encode failed");
            return null;
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:42:0x00b5, code lost:
        if (r8 == null) goto L54;
     */
    /* JADX WARN: Removed duplicated region for block: B:110:0x00e9 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:120:0x0153 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:69:0x0115  */
    /* JADX WARN: Removed duplicated region for block: B:86:0x0154  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static byte[] b(java.lang.String r10, int r11, long r12) {
        /*
            Method dump skipped, instructions count: 363
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: cn.jpush.android.z.a.b(java.lang.String, int, long):byte[]");
    }
}
