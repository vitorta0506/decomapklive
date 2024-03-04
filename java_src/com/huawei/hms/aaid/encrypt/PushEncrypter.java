package com.huawei.hms.aaid.encrypt;

import android.content.Context;
import android.text.TextUtils;
import com.huawei.hms.opendevice.c;
import yb.a;
/* loaded from: classes4.dex */
public class PushEncrypter {
    public static String decrypter(Context context, String str) {
        return TextUtils.isEmpty(str) ? "" : a.f(str, c.b(context));
    }

    public static String encrypter(Context context, String str) {
        return TextUtils.isEmpty(str) ? "" : a.j(str, c.b(context));
    }

    public static String encrypterOld(Context context, String str) {
        return TextUtils.isEmpty(str) ? "" : a.k(str, c.a(context));
    }
}
