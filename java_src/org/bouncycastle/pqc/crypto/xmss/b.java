package org.bouncycastle.pqc.crypto.xmss;

import java.util.Collections;
import java.util.HashMap;
import java.util.Map;
import java.util.Objects;
/* loaded from: classes7.dex */
public final class b implements t {

    /* renamed from: c  reason: collision with root package name */
    private static final Map<String, b> f56134c;

    /* renamed from: a  reason: collision with root package name */
    private final int f56135a;

    /* renamed from: b  reason: collision with root package name */
    private final String f56136b;

    static {
        HashMap hashMap = new HashMap();
        hashMap.put(b("SHA-256", 32, 16, 67, 20, 2), new b(1, "XMSSMT_SHA2_20/2_256"));
        hashMap.put(b("SHA-256", 32, 16, 67, 20, 4), new b(2, "XMSSMT_SHA2_20/4_256"));
        hashMap.put(b("SHA-256", 32, 16, 67, 40, 2), new b(3, "XMSSMT_SHA2_40/2_256"));
        hashMap.put(b("SHA-256", 32, 16, 67, 40, 2), new b(4, "XMSSMT_SHA2_40/4_256"));
        hashMap.put(b("SHA-256", 32, 16, 67, 40, 4), new b(5, "XMSSMT_SHA2_40/8_256"));
        hashMap.put(b("SHA-256", 32, 16, 67, 60, 8), new b(6, "XMSSMT_SHA2_60/3_256"));
        hashMap.put(b("SHA-256", 32, 16, 67, 60, 6), new b(7, "XMSSMT_SHA2_60/6_256"));
        hashMap.put(b("SHA-256", 32, 16, 67, 60, 12), new b(8, "XMSSMT_SHA2_60/12_256"));
        hashMap.put(b("SHA-512", 64, 16, 131, 20, 2), new b(9, "XMSSMT_SHA2_20/2_512"));
        hashMap.put(b("SHA-512", 64, 16, 131, 20, 4), new b(10, "XMSSMT_SHA2_20/4_512"));
        hashMap.put(b("SHA-512", 64, 16, 131, 40, 2), new b(11, "XMSSMT_SHA2_40/2_512"));
        hashMap.put(b("SHA-512", 64, 16, 131, 40, 4), new b(12, "XMSSMT_SHA2_40/4_512"));
        hashMap.put(b("SHA-512", 64, 16, 131, 40, 8), new b(13, "XMSSMT_SHA2_40/8_512"));
        hashMap.put(b("SHA-512", 64, 16, 131, 60, 3), new b(14, "XMSSMT_SHA2_60/3_512"));
        hashMap.put(b("SHA-512", 64, 16, 131, 60, 6), new b(15, "XMSSMT_SHA2_60/6_512"));
        hashMap.put(b("SHA-512", 64, 16, 131, 60, 12), new b(16, "XMSSMT_SHA2_60/12_512"));
        hashMap.put(b("SHAKE128", 32, 16, 67, 20, 2), new b(17, "XMSSMT_SHAKE_20/2_256"));
        hashMap.put(b("SHAKE128", 32, 16, 67, 20, 4), new b(18, "XMSSMT_SHAKE_20/4_256"));
        hashMap.put(b("SHAKE128", 32, 16, 67, 40, 2), new b(19, "XMSSMT_SHAKE_40/2_256"));
        hashMap.put(b("SHAKE128", 32, 16, 67, 40, 4), new b(20, "XMSSMT_SHAKE_40/4_256"));
        hashMap.put(b("SHAKE128", 32, 16, 67, 40, 8), new b(21, "XMSSMT_SHAKE_40/8_256"));
        hashMap.put(b("SHAKE128", 32, 16, 67, 60, 3), new b(22, "XMSSMT_SHAKE_60/3_256"));
        hashMap.put(b("SHAKE128", 32, 16, 67, 60, 6), new b(23, "XMSSMT_SHAKE_60/6_256"));
        hashMap.put(b("SHAKE128", 32, 16, 67, 60, 12), new b(24, "XMSSMT_SHAKE_60/12_256"));
        hashMap.put(b("SHAKE256", 64, 16, 131, 20, 2), new b(25, "XMSSMT_SHAKE_20/2_512"));
        hashMap.put(b("SHAKE256", 64, 16, 131, 20, 4), new b(26, "XMSSMT_SHAKE_20/4_512"));
        hashMap.put(b("SHAKE256", 64, 16, 131, 40, 2), new b(27, "XMSSMT_SHAKE_40/2_512"));
        hashMap.put(b("SHAKE256", 64, 16, 131, 40, 4), new b(28, "XMSSMT_SHAKE_40/4_512"));
        hashMap.put(b("SHAKE256", 64, 16, 131, 40, 8), new b(29, "XMSSMT_SHAKE_40/8_512"));
        hashMap.put(b("SHAKE256", 64, 16, 131, 60, 3), new b(30, "XMSSMT_SHAKE_60/3_512"));
        hashMap.put(b("SHAKE256", 64, 16, 131, 60, 6), new b(31, "XMSSMT_SHAKE_60/6_512"));
        hashMap.put(b("SHAKE256", 64, 16, 131, 60, 12), new b(32, "XMSSMT_SHAKE_60/12_512"));
        f56134c = Collections.unmodifiableMap(hashMap);
    }

    private b(int i9, String str) {
        this.f56135a = i9;
        this.f56136b = str;
    }

    private static String b(String str, int i9, int i10, int i11, int i12, int i13) {
        Objects.requireNonNull(str, "algorithmName == null");
        return str + "-" + i9 + "-" + i10 + "-" + i11 + "-" + i12 + "-" + i13;
    }

    public static b c(String str, int i9, int i10, int i11, int i12, int i13) {
        Objects.requireNonNull(str, "algorithmName == null");
        return f56134c.get(b(str, i9, i10, i11, i12, i13));
    }

    @Override // org.bouncycastle.pqc.crypto.xmss.t
    public int a() {
        return this.f56135a;
    }

    public String toString() {
        return this.f56136b;
    }
}
