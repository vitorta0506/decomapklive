package com.huawei.hms.hatool;

import android.util.Pair;
import java.nio.charset.Charset;
/* loaded from: classes4.dex */
public class d {

    /* renamed from: a  reason: collision with root package name */
    public static final Charset f27441a = Charset.forName("UTF-8");

    public static Pair<byte[], String> a(String str) {
        if (str == null || str.length() < 32) {
            return new Pair<>(new byte[0], str);
        }
        String substring = str.substring(0, 32);
        return new Pair<>(bc.c.b(substring), str.substring(32));
    }

    public static String a(String str, String str2) {
        Pair<byte[], String> a10 = a(str);
        return new String(yb.a.i(bc.c.b((String) a10.second), bc.c.b(str2), (byte[]) a10.first), f27441a);
    }

    public static String a(byte[] bArr, String str) {
        String str2;
        if (bArr == null || bArr.length == 0 || str == null) {
            str2 = "cbc encrypt(byte) param is not right";
        } else {
            byte[] b10 = bc.c.b(str);
            if (b10.length >= 16) {
                return bc.c.a(yb.a.l(bArr, b10));
            }
            str2 = "key length is not right";
        }
        y.b("AesCipher", str2);
        return "";
    }

    public static String b(String str, String str2) {
        return bc.c.a(yb.a.l(str.getBytes(f27441a), bc.c.b(str2)));
    }
}
