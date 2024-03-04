package cn.jpush.android.ac;

import android.text.TextUtils;
import cn.jpush.android.helper.Logger;
/* loaded from: classes.dex */
public class c {
    public static byte[] a(int i9, byte b10, long j10, String str) {
        e eVar = new e(128);
        eVar.b(i9);
        eVar.a((int) b10);
        eVar.a(j10);
        if (!TextUtils.isEmpty(str)) {
            eVar.a(b(str));
        }
        return eVar.a();
    }

    public static byte[] a(int i9, int i10, int i11, int i12, int i13, int i14, String str, String str2, String str3) {
        e eVar = new e(128);
        eVar.a(i9);
        eVar.a(i10);
        eVar.a(i11);
        eVar.a(i12);
        eVar.a(i13);
        eVar.a(i14);
        eVar.a(str);
        eVar.a(str2);
        eVar.a(str3);
        return eVar.a();
    }

    public static byte[] a(int i9, String str, String str2) {
        e eVar = new e(128);
        eVar.a(i9);
        eVar.a(str);
        eVar.a(str2);
        return eVar.a();
    }

    public static byte[] a(String str) {
        e eVar = new e(128);
        eVar.a(7);
        eVar.a(1);
        eVar.a(str != null ? b(str) : new byte[0]);
        return eVar.a();
    }

    public static byte[] a(String str, byte b10) {
        e eVar = new e(8192);
        eVar.a(TextUtils.isEmpty(str) ? new byte[0] : b(str));
        eVar.a((int) b10);
        return eVar.a();
    }

    public static byte[] a(String str, int i9, String str2) {
        e eVar = new e(8192);
        if (i9 == 10) {
            eVar.a(b(str));
        }
        eVar.a(b(str2));
        return eVar.a();
    }

    public static byte[] b(String str) {
        try {
            return str.getBytes("UTF-8");
        } catch (Throwable th2) {
            Logger.ee("PushPackage", "stringToUtf8Bytes error:" + th2.getMessage());
            return str.getBytes();
        }
    }

    public static byte[] c(String str) {
        e eVar = new e(8192);
        eVar.a(b(str));
        return eVar.a();
    }
}
