package org.bouncycastle.pqc.crypto.xmss;

import java.util.Collections;
import java.util.HashMap;
import java.util.Map;
import java.util.Objects;
/* loaded from: classes7.dex */
final class j implements t {

    /* renamed from: c  reason: collision with root package name */
    private static final Map<String, j> f56165c;

    /* renamed from: a  reason: collision with root package name */
    private final int f56166a;

    /* renamed from: b  reason: collision with root package name */
    private final String f56167b;

    static {
        HashMap hashMap = new HashMap();
        hashMap.put(b("SHA-256", 32, 16, 67), new j(16777217, "WOTSP_SHA2-256_W16"));
        hashMap.put(b("SHA-512", 64, 16, 131), new j(33554434, "WOTSP_SHA2-512_W16"));
        hashMap.put(b("SHAKE128", 32, 16, 67), new j(50331651, "WOTSP_SHAKE128_W16"));
        hashMap.put(b("SHAKE256", 64, 16, 131), new j(67108868, "WOTSP_SHAKE256_W16"));
        f56165c = Collections.unmodifiableMap(hashMap);
    }

    private j(int i9, String str) {
        this.f56166a = i9;
        this.f56167b = str;
    }

    private static String b(String str, int i9, int i10, int i11) {
        Objects.requireNonNull(str, "algorithmName == null");
        return str + "-" + i9 + "-" + i10 + "-" + i11;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public static j c(String str, int i9, int i10, int i11) {
        Objects.requireNonNull(str, "algorithmName == null");
        return f56165c.get(b(str, i9, i10, i11));
    }

    @Override // org.bouncycastle.pqc.crypto.xmss.t
    public int a() {
        return this.f56166a;
    }

    public String toString() {
        return this.f56167b;
    }
}
