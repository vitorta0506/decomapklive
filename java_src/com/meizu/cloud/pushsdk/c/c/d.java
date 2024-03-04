package com.meizu.cloud.pushsdk.c.c;
/* loaded from: classes4.dex */
public class d {
    public static boolean a(String str) {
        return "POST".equals(str) || "PUT".equals(str) || "PATCH".equals(str) || "PROPPATCH".equals(str) || "REPORT".equals(str);
    }

    public static boolean b(String str) {
        return a(str) || "OPTIONS".equals(str) || "DELETE".equals(str) || "PROPFIND".equals(str) || "MKCOL".equals(str) || "LOCK".equals(str);
    }
}
