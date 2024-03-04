package com.twitter.sdk.android.tweetui;
/* loaded from: classes4.dex */
final class f0 {
    static CharSequence a(CharSequence charSequence, CharSequence charSequence2) {
        return charSequence != null ? charSequence : charSequence2;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static CharSequence b(CharSequence charSequence) {
        return a(charSequence, "");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static Long c(String str, long j10) {
        try {
            return Long.valueOf(Long.parseLong(str));
        } catch (NumberFormatException unused) {
            return Long.valueOf(j10);
        }
    }

    static String d(String str, String str2) {
        return str != null ? str : str2;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static String e(String str) {
        return d(str, "");
    }
}
