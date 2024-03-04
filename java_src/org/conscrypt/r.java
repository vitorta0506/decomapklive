package org.conscrypt;

import com.facebook.internal.security.OidcSecurityUtil;
import java.util.HashMap;
import java.util.Map;
/* loaded from: classes7.dex */
final class r {

    /* renamed from: a  reason: collision with root package name */
    private static final Map<String, String> f56410a;

    static {
        HashMap hashMap = new HashMap();
        f56410a = hashMap;
        hashMap.put("1.2.840.113549.1.1.2", "MD2withRSA");
        hashMap.put("1.2.840.113549.1.1.4", "MD5withRSA");
        hashMap.put("1.2.840.113549.1.1.5", "SHA1withRSA");
        hashMap.put("1.2.840.10040.4.3", "SHA1withDSA");
        hashMap.put("1.2.840.10045.4.1", "SHA1withECDSA");
        hashMap.put("1.2.840.113549.1.1.14", "SHA224withRSA");
        hashMap.put("1.2.840.113549.1.1.11", OidcSecurityUtil.SIGNATURE_ALGORITHM_SHA256);
        hashMap.put("1.2.840.113549.1.1.12", "SHA384withRSA");
        hashMap.put("1.2.840.113549.1.1.13", "SHA512withRSA");
        hashMap.put("2.16.840.1.101.3.4.3.1", "SHA224withDSA");
        hashMap.put("2.16.840.1.101.3.4.3.2", "SHA256withDSA");
        hashMap.put("1.2.840.10045.4.3.1", "SHA224withECDSA");
        hashMap.put("1.2.840.10045.4.3.2", "SHA256withECDSA");
        hashMap.put("1.2.840.10045.4.3.3", "SHA384withECDSA");
        hashMap.put("1.2.840.10045.4.3.4", "SHA512withECDSA");
    }

    public static String a(String str) {
        return f56410a.get(str);
    }
}
