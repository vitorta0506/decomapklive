package com.meizu.cloud.pushsdk.a.a;

import android.content.Context;
import android.text.TextUtils;
import com.facebook.internal.ServerProtocol;
import com.meizu.cloud.pushinternal.DebugLogger;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.net.HttpURLConnection;
import java.net.URLConnection;
import java.util.HashMap;
import java.util.Map;
import java.util.zip.GZIPOutputStream;
/* loaded from: classes4.dex */
public class b {

    /* renamed from: a  reason: collision with root package name */
    private static final String f28168a = "b";

    /* renamed from: b  reason: collision with root package name */
    private static final Object f28169b = new Object();

    /* renamed from: c  reason: collision with root package name */
    private static b f28170c;

    private b(Context context) {
        try {
            System.setProperty("sun.net.http.allowRestrictedHeaders", ServerProtocol.DIALOG_RETURN_SCOPES_TRUE);
        } catch (Exception e10) {
            e10.printStackTrace();
        }
        a.a(context);
    }

    public static b a(Context context) {
        if (f28170c == null) {
            synchronized (f28169b) {
                if (f28170c == null) {
                    f28170c = new b(context);
                }
            }
        }
        return f28170c;
    }

    private Map<String, String> a(Map<String, String> map) {
        if (map == null) {
            map = new HashMap<>(2);
        }
        byte[] c10 = a.a().c();
        if (c10 == null || c10.length <= 0) {
            byte[] b10 = a.a().b();
            if (b10 != null && b10.length > 0) {
                String str = new String(a.a().b());
                String str2 = f28168a;
                DebugLogger.d(str2, "attach x_a_key: " + str);
                map.put("X-A-Key", str);
            }
        } else {
            String str3 = new String(c10);
            String str4 = f28168a;
            DebugLogger.d(str4, "attach x_s_key: " + str3);
            map.put("X-S-Key", str3);
        }
        return map;
    }

    private void a(HttpURLConnection httpURLConnection, byte[] bArr) throws IOException {
        GZIPOutputStream gZIPOutputStream = null;
        try {
            GZIPOutputStream gZIPOutputStream2 = new GZIPOutputStream(httpURLConnection.getOutputStream());
            try {
                gZIPOutputStream2.write(bArr);
                gZIPOutputStream2.flush();
                try {
                    gZIPOutputStream2.close();
                } catch (Exception unused) {
                }
            } catch (Throwable th2) {
                th = th2;
                gZIPOutputStream = gZIPOutputStream2;
                if (gZIPOutputStream != null) {
                    try {
                        gZIPOutputStream.close();
                    } catch (Exception unused2) {
                    }
                }
                throw th;
            }
        } catch (Throwable th3) {
            th = th3;
        }
    }

    private void a(URLConnection uRLConnection) {
        try {
            String headerField = uRLConnection.getHeaderField("X-S-Key");
            String str = f28168a;
            DebugLogger.d(str, "get x_s_key = " + headerField);
            if (TextUtils.isEmpty(headerField)) {
                return;
            }
            a.a().a(headerField);
        } catch (NullPointerException unused) {
        }
    }

    private byte[] a(InputStream inputStream) throws IOException {
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        while (true) {
            try {
                int read = inputStream.read();
                if (read == -1) {
                    break;
                }
                byteArrayOutputStream.write(read);
            } finally {
                try {
                    byteArrayOutputStream.close();
                } catch (IOException unused) {
                }
            }
        }
        return byteArrayOutputStream.toByteArray();
    }

    /* JADX WARN: Code restructure failed: missing block: B:35:0x00fc, code lost:
        if (r1 != null) goto L26;
     */
    /* JADX WARN: Code restructure failed: missing block: B:36:0x00fe, code lost:
        r1.close();
     */
    /* JADX WARN: Code restructure failed: missing block: B:43:0x0123, code lost:
        if (r1 != null) goto L26;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v2 */
    /* JADX WARN: Type inference failed for: r0v3, types: [java.io.InputStream] */
    /* JADX WARN: Type inference failed for: r0v8 */
    /* JADX WARN: Type inference failed for: r6v0, types: [com.meizu.cloud.pushsdk.a.a.b] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private com.meizu.cloud.pushsdk.a.a.c b(java.lang.String r7, java.util.Map<java.lang.String, java.lang.String> r8, java.lang.String r9) throws java.lang.Exception {
        /*
            Method dump skipped, instructions count: 310
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.meizu.cloud.pushsdk.a.a.b.b(java.lang.String, java.util.Map, java.lang.String):com.meizu.cloud.pushsdk.a.a.c");
    }

    private void b(URLConnection uRLConnection) {
        try {
            String headerField = uRLConnection.getHeaderField("Key-Timeout");
            String str = f28168a;
            DebugLogger.d(str, "get keyTimeout = " + headerField);
        } catch (NullPointerException unused) {
        }
    }

    public c a(String str, Map<String, String> map, String str2) {
        try {
            return b(str, a(map), str2);
        } catch (Exception e10) {
            e10.printStackTrace();
            return null;
        }
    }
}
