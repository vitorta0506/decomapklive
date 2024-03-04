package com.huawei.hms.base.ui;

import android.text.TextUtils;
import android.util.Log;
import java.util.regex.Pattern;
/* loaded from: classes4.dex */
public class a {

    /* renamed from: a  reason: collision with root package name */
    public static final Pattern f27276a = Pattern.compile("[0-9]*[a-z|A-Z]*[一-龥]*");

    public static void a(String str, String str2, boolean z10) {
        if (TextUtils.isEmpty(str2)) {
            return;
        }
        Log.e(str, a(str2, z10));
    }

    public static void a(String str, String str2) {
        if (TextUtils.isEmpty(str2)) {
            return;
        }
        Log.e(str, a(str2, false));
    }

    public static String a(String str, boolean z10) {
        StringBuilder sb2 = new StringBuilder(512);
        if (!TextUtils.isEmpty(str)) {
            if (z10) {
                sb2.append(a(str));
            } else {
                sb2.append(str);
            }
        }
        return sb2.toString();
    }

    public static String a(String str) {
        if (TextUtils.isEmpty(str)) {
            return str;
        }
        int length = str.length();
        int i9 = 1;
        if (1 == length) {
            return String.valueOf('*');
        }
        StringBuilder sb2 = new StringBuilder(length);
        for (int i10 = 0; i10 < length; i10++) {
            char charAt = str.charAt(i10);
            if (f27276a.matcher(String.valueOf(charAt)).matches()) {
                if (i9 % 2 == 0) {
                    charAt = '*';
                }
                i9++;
            }
            sb2.append(charAt);
        }
        return sb2.toString();
    }
}
