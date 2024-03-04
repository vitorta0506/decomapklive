package com.tencent.bugly.proguard;

import java.util.ArrayList;
import java.util.Collection;
import java.util.HashMap;
import java.util.Map;
/* loaded from: classes4.dex */
public final class ak extends k {
    private static ArrayList<aj> A;
    private static Map<String, String> B;
    private static Map<String, String> C;

    /* renamed from: v  reason: collision with root package name */
    private static Map<String, String> f30460v;

    /* renamed from: w  reason: collision with root package name */
    private static ai f30461w;

    /* renamed from: x  reason: collision with root package name */
    private static ah f30462x;

    /* renamed from: y  reason: collision with root package name */
    private static ArrayList<ah> f30463y;

    /* renamed from: z  reason: collision with root package name */
    private static ArrayList<ah> f30464z;

    /* renamed from: a  reason: collision with root package name */
    public String f30465a = "";

    /* renamed from: b  reason: collision with root package name */
    public long f30466b = 0;

    /* renamed from: c  reason: collision with root package name */
    public String f30467c = "";

    /* renamed from: d  reason: collision with root package name */
    public String f30468d = "";

    /* renamed from: e  reason: collision with root package name */
    public String f30469e = "";

    /* renamed from: f  reason: collision with root package name */
    public String f30470f = "";

    /* renamed from: g  reason: collision with root package name */
    public String f30471g = "";

    /* renamed from: h  reason: collision with root package name */
    public Map<String, String> f30472h = null;

    /* renamed from: i  reason: collision with root package name */
    public String f30473i = "";

    /* renamed from: j  reason: collision with root package name */
    public ai f30474j = null;

    /* renamed from: k  reason: collision with root package name */
    public int f30475k = 0;

    /* renamed from: l  reason: collision with root package name */
    public String f30476l = "";

    /* renamed from: m  reason: collision with root package name */
    public String f30477m = "";

    /* renamed from: n  reason: collision with root package name */
    public ah f30478n = null;

    /* renamed from: o  reason: collision with root package name */
    public ArrayList<ah> f30479o = null;

    /* renamed from: p  reason: collision with root package name */
    public ArrayList<ah> f30480p = null;

    /* renamed from: q  reason: collision with root package name */
    public ArrayList<aj> f30481q = null;

    /* renamed from: r  reason: collision with root package name */
    public Map<String, String> f30482r = null;

    /* renamed from: s  reason: collision with root package name */
    public Map<String, String> f30483s = null;

    /* renamed from: t  reason: collision with root package name */
    private String f30484t = "";

    /* renamed from: u  reason: collision with root package name */
    private boolean f30485u = true;

    static {
        HashMap hashMap = new HashMap();
        f30460v = hashMap;
        hashMap.put("", "");
        f30461w = new ai();
        f30462x = new ah();
        f30463y = new ArrayList<>();
        f30463y.add(new ah());
        f30464z = new ArrayList<>();
        f30464z.add(new ah());
        A = new ArrayList<>();
        A.add(new aj());
        HashMap hashMap2 = new HashMap();
        B = hashMap2;
        hashMap2.put("", "");
        HashMap hashMap3 = new HashMap();
        C = hashMap3;
        hashMap3.put("", "");
    }

    @Override // com.tencent.bugly.proguard.k
    public final void a(j jVar) {
        jVar.a(this.f30465a, 0);
        jVar.a(this.f30466b, 1);
        jVar.a(this.f30467c, 2);
        String str = this.f30468d;
        if (str != null) {
            jVar.a(str, 3);
        }
        String str2 = this.f30469e;
        if (str2 != null) {
            jVar.a(str2, 4);
        }
        String str3 = this.f30470f;
        if (str3 != null) {
            jVar.a(str3, 5);
        }
        String str4 = this.f30471g;
        if (str4 != null) {
            jVar.a(str4, 6);
        }
        Map<String, String> map = this.f30472h;
        if (map != null) {
            jVar.a((Map) map, 7);
        }
        String str5 = this.f30473i;
        if (str5 != null) {
            jVar.a(str5, 8);
        }
        ai aiVar = this.f30474j;
        if (aiVar != null) {
            jVar.a((k) aiVar, 9);
        }
        jVar.a(this.f30475k, 10);
        String str6 = this.f30476l;
        if (str6 != null) {
            jVar.a(str6, 11);
        }
        String str7 = this.f30477m;
        if (str7 != null) {
            jVar.a(str7, 12);
        }
        ah ahVar = this.f30478n;
        if (ahVar != null) {
            jVar.a((k) ahVar, 13);
        }
        ArrayList<ah> arrayList = this.f30479o;
        if (arrayList != null) {
            jVar.a((Collection) arrayList, 14);
        }
        ArrayList<ah> arrayList2 = this.f30480p;
        if (arrayList2 != null) {
            jVar.a((Collection) arrayList2, 15);
        }
        ArrayList<aj> arrayList3 = this.f30481q;
        if (arrayList3 != null) {
            jVar.a((Collection) arrayList3, 16);
        }
        Map<String, String> map2 = this.f30482r;
        if (map2 != null) {
            jVar.a((Map) map2, 17);
        }
        Map<String, String> map3 = this.f30483s;
        if (map3 != null) {
            jVar.a((Map) map3, 18);
        }
        String str8 = this.f30484t;
        if (str8 != null) {
            jVar.a(str8, 19);
        }
        jVar.a(this.f30485u, 20);
    }

    @Override // com.tencent.bugly.proguard.k
    public final void a(i iVar) {
        this.f30465a = iVar.b(0, true);
        this.f30466b = iVar.a(this.f30466b, 1, true);
        this.f30467c = iVar.b(2, true);
        this.f30468d = iVar.b(3, false);
        this.f30469e = iVar.b(4, false);
        this.f30470f = iVar.b(5, false);
        this.f30471g = iVar.b(6, false);
        this.f30472h = (Map) iVar.a((i) f30460v, 7, false);
        this.f30473i = iVar.b(8, false);
        this.f30474j = (ai) iVar.a((k) f30461w, 9, false);
        this.f30475k = iVar.a(this.f30475k, 10, false);
        this.f30476l = iVar.b(11, false);
        this.f30477m = iVar.b(12, false);
        this.f30478n = (ah) iVar.a((k) f30462x, 13, false);
        this.f30479o = (ArrayList) iVar.a((i) f30463y, 14, false);
        this.f30480p = (ArrayList) iVar.a((i) f30464z, 15, false);
        this.f30481q = (ArrayList) iVar.a((i) A, 16, false);
        this.f30482r = (Map) iVar.a((i) B, 17, false);
        this.f30483s = (Map) iVar.a((i) C, 18, false);
        this.f30484t = iVar.b(19, false);
        this.f30485u = iVar.a(20, false);
    }
}
