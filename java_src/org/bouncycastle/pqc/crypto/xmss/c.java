package org.bouncycastle.pqc.crypto.xmss;

import java.util.Collections;
import java.util.HashMap;
import java.util.Map;
import java.util.Objects;
/* loaded from: classes7.dex */
public final class c implements t {

    /* renamed from: c  reason: collision with root package name */
    private static final Map<String, c> f56137c;

    /* renamed from: a  reason: collision with root package name */
    private final int f56138a;

    /* renamed from: b  reason: collision with root package name */
    private final String f56139b;

    static {
        HashMap hashMap = new HashMap();
        hashMap.put(b("SHA-256", 32, 16, 67, 10), new c(1, "XMSS_SHA2_10_256"));
        hashMap.put(b("SHA-256", 32, 16, 67, 16), new c(2, "XMSS_SHA2_16_256"));
        hashMap.put(b("SHA-256", 32, 16, 67, 20), new c(3, "XMSS_SHA2_20_256"));
        hashMap.put(b("SHA-512", 64, 16, 131, 10), new c(4, "XMSS_SHA2_10_512"));
        hashMap.put(b("SHA-512", 64, 16, 131, 16), new c(5, "XMSS_SHA2_16_512"));
        hashMap.put(b("SHA-512", 64, 16, 131, 20), new c(6, "XMSS_SHA2_20_512"));
        hashMap.put(b("SHAKE128", 32, 16, 67, 10), new c(7, "XMSS_SHAKE_10_256"));
        hashMap.put(b("SHAKE128", 32, 16, 67, 16), new c(8, "XMSS_SHAKE_16_256"));
        hashMap.put(b("SHAKE128", 32, 16, 67, 20), new c(9, "XMSS_SHAKE_20_256"));
        hashMap.put(b("SHAKE256", 64, 16, 131, 10), new c(10, "XMSS_SHAKE_10_512"));
        hashMap.put(b("SHAKE256", 64, 16, 131, 16), new c(11, "XMSS_SHAKE_16_512"));
        hashMap.put(b("SHAKE256", 64, 16, 131, 20), new c(12, "XMSS_SHAKE_20_512"));
        f56137c = Collections.unmodifiableMap(hashMap);
    }

    private c(int i9, String str) {
        this.f56138a = i9;
        this.f56139b = str;
    }

    private static String b(String str, int i9, int i10, int i11, int i12) {
        Objects.requireNonNull(str, "algorithmName == null");
        return str + "-" + i9 + "-" + i10 + "-" + i11 + "-" + i12;
    }

    public static c c(String str, int i9, int i10, int i11, int i12) {
        Objects.requireNonNull(str, "algorithmName == null");
        return f56137c.get(b(str, i9, i10, i11, i12));
    }

    @Override // org.bouncycastle.pqc.crypto.xmss.t
    public int a() {
        return this.f56138a;
    }

    public String toString() {
        return this.f56139b;
    }
}
