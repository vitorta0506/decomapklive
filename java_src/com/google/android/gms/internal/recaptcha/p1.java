package com.google.android.gms.internal.recaptcha;

import android.content.Context;
import android.content.SharedPreferences;
/* loaded from: classes2.dex */
public final class p1 {
    public static String a(Context context, String str) {
        SharedPreferences sharedPreferences = context.getSharedPreferences("com.google.android.gms.recaptcha.internal.VERIFICATION_HISTORY_FILE_KEY", 0);
        String b10 = b(str);
        return sharedPreferences.contains(b10) ? sharedPreferences.getString(b10, "") : "";
    }

    private static String b(String str) {
        String valueOf = String.valueOf(str);
        return valueOf.length() != 0 ? "verification_history_token_key:".concat(valueOf) : new String("verification_history_token_key:");
    }
}
