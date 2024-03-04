package com.google.android.exoplayer2;

import java.util.HashSet;
/* loaded from: classes.dex */
public final class i1 {

    /* renamed from: a  reason: collision with root package name */
    private static final HashSet<String> f6002a = new HashSet<>();

    /* renamed from: b  reason: collision with root package name */
    private static String f6003b = "goog.exo.core";

    public static synchronized void a(String str) {
        synchronized (i1.class) {
            if (f6002a.add(str)) {
                f6003b += ", " + str;
            }
        }
    }

    public static synchronized String b() {
        String str;
        synchronized (i1.class) {
            str = f6003b;
        }
        return str;
    }
}
