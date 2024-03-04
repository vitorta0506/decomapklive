package com.google.android.datatransport.cct;
/* loaded from: classes.dex */
public final class e {
    /* JADX INFO: Access modifiers changed from: package-private */
    public static String a(String str, String str2) {
        int length = str.length() - str2.length();
        if (length >= 0 && length <= 1) {
            StringBuilder sb2 = new StringBuilder(str.length() + str2.length());
            for (int i9 = 0; i9 < str.length(); i9++) {
                sb2.append(str.charAt(i9));
                if (str2.length() > i9) {
                    sb2.append(str2.charAt(i9));
                }
            }
            return sb2.toString();
        }
        throw new IllegalArgumentException("Invalid input received");
    }
}
