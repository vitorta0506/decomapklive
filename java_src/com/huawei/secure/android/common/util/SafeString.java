package com.huawei.secure.android.common.util;

import android.util.Log;
/* loaded from: classes4.dex */
public class SafeString {

    /* renamed from: a  reason: collision with root package name */
    private static final String f27897a = "SafeString";

    public static String replace(String str, CharSequence charSequence, CharSequence charSequence2) {
        if (str != null && charSequence != null && charSequence2 != null) {
            try {
                return str.replace(charSequence, charSequence2);
            } catch (Exception e10) {
                String str2 = f27897a;
                Log.e(str2, "replace: " + e10.getMessage());
            }
        }
        return str;
    }

    public static String substring(String str, int i9) {
        if (str != null && str.length() >= i9 && i9 >= 0) {
            try {
                return str.substring(i9);
            } catch (Exception e10) {
                String str2 = f27897a;
                Log.e(str2, "substring exception: " + e10.getMessage());
            }
        }
        return "";
    }

    public static String substring(String str, int i9, int i10) {
        if (str != null && i9 >= 0 && i10 <= str.length() && i10 >= i9) {
            try {
                return str.substring(i9, i10);
            } catch (Exception e10) {
                String str2 = f27897a;
                Log.e(str2, "substring: " + e10.getMessage());
            }
        }
        return "";
    }
}
