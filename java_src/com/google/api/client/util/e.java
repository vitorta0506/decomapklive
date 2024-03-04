package com.google.api.client.util;

import com.google.common.io.BaseEncoding;
@Deprecated
/* loaded from: classes2.dex */
public class e {
    public static byte[] a(String str) {
        if (str == null) {
            return null;
        }
        try {
            return BaseEncoding.b().d(str);
        } catch (IllegalArgumentException e10) {
            if (e10.getCause() instanceof BaseEncoding.DecodingException) {
                return BaseEncoding.c().d(str.trim());
            }
            throw e10;
        }
    }

    public static String b(byte[] bArr) {
        if (bArr == null) {
            return null;
        }
        return BaseEncoding.c().n().g(bArr);
    }
}
