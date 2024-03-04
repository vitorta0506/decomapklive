package com.google.android.gms.internal.recaptcha;

import java.util.logging.Logger;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2.dex */
public final class y7 {

    /* renamed from: a  reason: collision with root package name */
    private static final Logger f9201a = Logger.getLogger(y7.class.getName());

    /* renamed from: b  reason: collision with root package name */
    private static final x7 f9202b = new x7(null);

    private y7() {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static String a(String str) {
        if (str == null || str.isEmpty()) {
            return null;
        }
        return str;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static String b(String str) {
        return str == null ? "" : str;
    }
}
