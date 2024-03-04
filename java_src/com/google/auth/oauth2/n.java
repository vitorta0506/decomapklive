package com.google.auth.oauth2;

import androidx.constraintlayout.core.motion.utils.TypedValues;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.math.BigDecimal;
import java.net.URI;
import java.util.Arrays;
import java.util.Collection;
import java.util.HashSet;
import java.util.Map;
import java.util.Set;
/* loaded from: classes2.dex */
class n {

    /* renamed from: a  reason: collision with root package name */
    static final URI f11674a = URI.create("https://oauth2.googleapis.com/token");

    /* renamed from: b  reason: collision with root package name */
    static final URI f11675b = URI.create("https://oauth2.googleapis.com/revoke");

    /* renamed from: c  reason: collision with root package name */
    static final URI f11676c = URI.create("https://accounts.google.com/o/oauth2/auth");

    /* renamed from: d  reason: collision with root package name */
    static final com.google.api.client.http.s f11677d = new e5.e();

    /* renamed from: e  reason: collision with root package name */
    static final s5.b f11678e = new a();

    /* renamed from: f  reason: collision with root package name */
    static final g5.c f11679f = h5.a.m();

    /* renamed from: g  reason: collision with root package name */
    private static String f11680g = "%sExpected value %s not found.";

    /* renamed from: h  reason: collision with root package name */
    private static String f11681h = "%sExpected %s value %s of wrong type.";

    /* renamed from: i  reason: collision with root package name */
    public static final Set<Integer> f11682i = new HashSet(Arrays.asList(500, 503, 408, 429));

    /* loaded from: classes2.dex */
    static class a implements s5.b {
        a() {
        }

        @Override // s5.b
        public com.google.api.client.http.s a() {
            return n.f11677d;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static boolean a(com.google.api.client.http.j jVar, String str, String str2) {
        Object obj = jVar.get(str);
        if (obj instanceof Collection) {
            return ((Collection) obj).contains(str2);
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int b(Map<String, Object> map, String str, String str2) throws IOException {
        Object obj = map.get(str);
        if (obj != null) {
            if (obj instanceof BigDecimal) {
                return ((BigDecimal) obj).intValueExact();
            }
            if (obj instanceof Integer) {
                return ((Integer) obj).intValue();
            }
            throw new IOException(String.format(f11681h, str2, TypedValues.Custom.S_INT, str));
        }
        throw new IOException(String.format(f11680g, str2, str));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static long c(Map<String, Object> map, String str, String str2) throws IOException {
        Object obj = map.get(str);
        if (obj != null) {
            if (obj instanceof BigDecimal) {
                return ((BigDecimal) obj).longValueExact();
            }
            if (obj instanceof Long) {
                return ((Long) obj).longValue();
            }
            throw new IOException(String.format(f11681h, str2, "long", str));
        }
        throw new IOException(String.format(f11680g, str2, str));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static Map<String, Object> d(Map<String, Object> map, String str, String str2) throws IOException {
        Object obj = map.get(str);
        if (obj != null) {
            if (obj instanceof Map) {
                return (Map) obj;
            }
            throw new IOException(String.format(f11681h, str2, "Map", str));
        }
        throw new IOException(String.format(f11680g, str2, str));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static String e(Map<String, Object> map, String str, String str2) throws IOException {
        Object obj = map.get(str);
        if (obj != null) {
            if (obj instanceof String) {
                return (String) obj;
            }
            throw new IOException(String.format(f11681h, str2, TypedValues.Custom.S_STRING, str));
        }
        throw new IOException(String.format(f11680g, str2, str));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void f(InputStream inputStream, String str) throws IOException {
        FileOutputStream fileOutputStream = new FileOutputStream(new File(str));
        try {
            com.google.common.io.c.b(inputStream, fileOutputStream);
        } finally {
            fileOutputStream.close();
        }
    }
}
