package com.tencent.bugly.proguard;

import java.util.HashMap;
import java.util.Map;
/* loaded from: classes4.dex */
public final class am extends k {

    /* renamed from: y  reason: collision with root package name */
    private static byte[] f30488y;

    /* renamed from: z  reason: collision with root package name */
    private static Map<String, String> f30489z;

    /* renamed from: a  reason: collision with root package name */
    public int f30490a = 0;

    /* renamed from: b  reason: collision with root package name */
    public String f30491b = "";

    /* renamed from: c  reason: collision with root package name */
    public String f30492c = "";

    /* renamed from: d  reason: collision with root package name */
    public String f30493d = "";

    /* renamed from: e  reason: collision with root package name */
    public String f30494e = "";

    /* renamed from: f  reason: collision with root package name */
    public String f30495f = "";

    /* renamed from: g  reason: collision with root package name */
    public int f30496g = 0;

    /* renamed from: h  reason: collision with root package name */
    public byte[] f30497h = null;

    /* renamed from: i  reason: collision with root package name */
    public String f30498i = "";

    /* renamed from: j  reason: collision with root package name */
    public String f30499j = "";

    /* renamed from: k  reason: collision with root package name */
    public Map<String, String> f30500k = null;

    /* renamed from: l  reason: collision with root package name */
    public String f30501l = "";

    /* renamed from: m  reason: collision with root package name */
    public long f30502m = 0;

    /* renamed from: n  reason: collision with root package name */
    public String f30503n = "";

    /* renamed from: o  reason: collision with root package name */
    public String f30504o = "";

    /* renamed from: p  reason: collision with root package name */
    public String f30505p = "";

    /* renamed from: q  reason: collision with root package name */
    public long f30506q = 0;

    /* renamed from: u  reason: collision with root package name */
    private String f30510u = "";

    /* renamed from: r  reason: collision with root package name */
    public String f30507r = "";

    /* renamed from: v  reason: collision with root package name */
    private String f30511v = "";

    /* renamed from: w  reason: collision with root package name */
    private String f30512w = "";

    /* renamed from: s  reason: collision with root package name */
    public String f30508s = "";

    /* renamed from: t  reason: collision with root package name */
    public String f30509t = "";

    /* renamed from: x  reason: collision with root package name */
    private String f30513x = "";

    static {
        f30488y = r0;
        byte[] bArr = {0};
        HashMap hashMap = new HashMap();
        f30489z = hashMap;
        hashMap.put("", "");
    }

    @Override // com.tencent.bugly.proguard.k
    public final void a(j jVar) {
        jVar.a(this.f30490a, 0);
        jVar.a(this.f30491b, 1);
        jVar.a(this.f30492c, 2);
        jVar.a(this.f30493d, 3);
        String str = this.f30494e;
        if (str != null) {
            jVar.a(str, 4);
        }
        jVar.a(this.f30495f, 5);
        jVar.a(this.f30496g, 6);
        jVar.a(this.f30497h, 7);
        String str2 = this.f30498i;
        if (str2 != null) {
            jVar.a(str2, 8);
        }
        String str3 = this.f30499j;
        if (str3 != null) {
            jVar.a(str3, 9);
        }
        Map<String, String> map = this.f30500k;
        if (map != null) {
            jVar.a((Map) map, 10);
        }
        String str4 = this.f30501l;
        if (str4 != null) {
            jVar.a(str4, 11);
        }
        jVar.a(this.f30502m, 12);
        String str5 = this.f30503n;
        if (str5 != null) {
            jVar.a(str5, 13);
        }
        String str6 = this.f30504o;
        if (str6 != null) {
            jVar.a(str6, 14);
        }
        String str7 = this.f30505p;
        if (str7 != null) {
            jVar.a(str7, 15);
        }
        jVar.a(this.f30506q, 16);
        String str8 = this.f30510u;
        if (str8 != null) {
            jVar.a(str8, 17);
        }
        String str9 = this.f30507r;
        if (str9 != null) {
            jVar.a(str9, 18);
        }
        String str10 = this.f30511v;
        if (str10 != null) {
            jVar.a(str10, 19);
        }
        String str11 = this.f30512w;
        if (str11 != null) {
            jVar.a(str11, 20);
        }
        String str12 = this.f30508s;
        if (str12 != null) {
            jVar.a(str12, 21);
        }
        String str13 = this.f30509t;
        if (str13 != null) {
            jVar.a(str13, 22);
        }
        String str14 = this.f30513x;
        if (str14 != null) {
            jVar.a(str14, 23);
        }
    }

    @Override // com.tencent.bugly.proguard.k
    public final void a(i iVar) {
        this.f30490a = iVar.a(this.f30490a, 0, true);
        this.f30491b = iVar.b(1, true);
        this.f30492c = iVar.b(2, true);
        this.f30493d = iVar.b(3, true);
        this.f30494e = iVar.b(4, false);
        this.f30495f = iVar.b(5, true);
        this.f30496g = iVar.a(this.f30496g, 6, true);
        this.f30497h = iVar.c(7, true);
        this.f30498i = iVar.b(8, false);
        this.f30499j = iVar.b(9, false);
        this.f30500k = (Map) iVar.a((i) f30489z, 10, false);
        this.f30501l = iVar.b(11, false);
        this.f30502m = iVar.a(this.f30502m, 12, false);
        this.f30503n = iVar.b(13, false);
        this.f30504o = iVar.b(14, false);
        this.f30505p = iVar.b(15, false);
        this.f30506q = iVar.a(this.f30506q, 16, false);
        this.f30510u = iVar.b(17, false);
        this.f30507r = iVar.b(18, false);
        this.f30511v = iVar.b(19, false);
        this.f30512w = iVar.b(20, false);
        this.f30508s = iVar.b(21, false);
        this.f30509t = iVar.b(22, false);
        this.f30513x = iVar.b(23, false);
    }
}
