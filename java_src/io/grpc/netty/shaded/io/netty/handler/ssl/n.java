package io.grpc.netty.shaded.io.netty.handler.ssl;

import java.util.Collections;
import java.util.HashMap;
import java.util.Map;
/* loaded from: classes5.dex */
final class n {

    /* renamed from: a  reason: collision with root package name */
    private static final Map<String, String> f44708a;

    static {
        HashMap hashMap = new HashMap();
        hashMap.put("secp224r1", "P-224");
        hashMap.put("prime256v1", "P-256");
        hashMap.put("secp256r1", "P-256");
        hashMap.put("secp384r1", "P-384");
        hashMap.put("secp521r1", "P-521");
        hashMap.put("x25519", "X25519");
        f44708a = Collections.unmodifiableMap(hashMap);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static String a(String str) {
        String str2 = f44708a.get(str);
        return str2 == null ? str : str2;
    }
}
