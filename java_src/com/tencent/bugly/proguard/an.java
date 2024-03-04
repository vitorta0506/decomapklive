package com.tencent.bugly.proguard;

import java.util.HashMap;
import java.util.Map;
/* loaded from: classes4.dex */
public final class an extends k {

    /* renamed from: i  reason: collision with root package name */
    private static byte[] f30514i;

    /* renamed from: j  reason: collision with root package name */
    private static Map<String, String> f30515j;

    /* renamed from: a  reason: collision with root package name */
    public byte f30516a = 0;

    /* renamed from: b  reason: collision with root package name */
    public int f30517b = 0;

    /* renamed from: c  reason: collision with root package name */
    public byte[] f30518c = null;

    /* renamed from: f  reason: collision with root package name */
    private String f30521f = "";

    /* renamed from: d  reason: collision with root package name */
    public long f30519d = 0;

    /* renamed from: g  reason: collision with root package name */
    private String f30522g = "";

    /* renamed from: e  reason: collision with root package name */
    public String f30520e = "";

    /* renamed from: h  reason: collision with root package name */
    private Map<String, String> f30523h = null;

    static {
        f30514i = r0;
        byte[] bArr = {0};
        HashMap hashMap = new HashMap();
        f30515j = hashMap;
        hashMap.put("", "");
    }

    @Override // com.tencent.bugly.proguard.k
    public final void a(j jVar) {
        jVar.a(this.f30516a, 0);
        jVar.a(this.f30517b, 1);
        byte[] bArr = this.f30518c;
        if (bArr != null) {
            jVar.a(bArr, 2);
        }
        String str = this.f30521f;
        if (str != null) {
            jVar.a(str, 3);
        }
        jVar.a(this.f30519d, 4);
        String str2 = this.f30522g;
        if (str2 != null) {
            jVar.a(str2, 5);
        }
        String str3 = this.f30520e;
        if (str3 != null) {
            jVar.a(str3, 6);
        }
        Map<String, String> map = this.f30523h;
        if (map != null) {
            jVar.a((Map) map, 7);
        }
    }

    @Override // com.tencent.bugly.proguard.k
    public final void a(i iVar) {
        this.f30516a = iVar.a(this.f30516a, 0, true);
        this.f30517b = iVar.a(this.f30517b, 1, true);
        this.f30518c = iVar.c(2, false);
        this.f30521f = iVar.b(3, false);
        this.f30519d = iVar.a(this.f30519d, 4, false);
        this.f30522g = iVar.b(5, false);
        this.f30520e = iVar.b(6, false);
        this.f30523h = (Map) iVar.a((i) f30515j, 7, false);
    }
}
