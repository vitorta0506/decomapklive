package com.xiaomi.push.service;

import android.text.TextUtils;
/* loaded from: classes5.dex */
public class x {

    /* renamed from: a  reason: collision with root package name */
    private static long f37395a = 0;

    /* renamed from: b  reason: collision with root package name */
    private static String f37396b = "";

    public static String a() {
        if (TextUtils.isEmpty(f37396b)) {
            f37396b = com.xiaomi.push.g.a(4);
        }
        StringBuilder sb2 = new StringBuilder();
        sb2.append(f37396b);
        long j10 = f37395a;
        f37395a = 1 + j10;
        sb2.append(j10);
        return sb2.toString();
    }

    public static String b(String str) {
        if (TextUtils.isEmpty(str) || str.length() < 32) {
            return str;
        }
        try {
            return "BlockId_" + str.substring(8);
        } catch (Exception e10) {
            tf.c.u("Exception occurred when filtering registration packet id for log. " + e10);
            return "UnexpectedId";
        }
    }

    public static String c() {
        return com.xiaomi.push.g.a(32);
    }
}
