package com.google.api.client.util;

import java.nio.charset.StandardCharsets;
/* loaded from: classes2.dex */
public class e0 {

    /* renamed from: a  reason: collision with root package name */
    public static final String f11107a = System.getProperty("line.separator");

    public static byte[] a(String str) {
        if (str == null) {
            return null;
        }
        return str.getBytes(StandardCharsets.UTF_8);
    }
}
