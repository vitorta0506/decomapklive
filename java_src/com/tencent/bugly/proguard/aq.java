package com.tencent.bugly.proguard;

import java.util.HashMap;
import java.util.Map;
/* loaded from: classes4.dex */
public final class aq extends k {

    /* renamed from: i  reason: collision with root package name */
    private static Map<String, String> f30541i;

    /* renamed from: a  reason: collision with root package name */
    public long f30542a = 0;

    /* renamed from: b  reason: collision with root package name */
    public byte f30543b = 0;

    /* renamed from: c  reason: collision with root package name */
    public String f30544c = "";

    /* renamed from: d  reason: collision with root package name */
    public String f30545d = "";

    /* renamed from: e  reason: collision with root package name */
    public String f30546e = "";

    /* renamed from: f  reason: collision with root package name */
    public Map<String, String> f30547f = null;

    /* renamed from: h  reason: collision with root package name */
    private String f30549h = "";

    /* renamed from: g  reason: collision with root package name */
    public boolean f30548g = true;

    static {
        HashMap hashMap = new HashMap();
        f30541i = hashMap;
        hashMap.put("", "");
    }

    @Override // com.tencent.bugly.proguard.k
    public final void a(j jVar) {
        jVar.a(this.f30542a, 0);
        jVar.a(this.f30543b, 1);
        String str = this.f30544c;
        if (str != null) {
            jVar.a(str, 2);
        }
        String str2 = this.f30545d;
        if (str2 != null) {
            jVar.a(str2, 3);
        }
        String str3 = this.f30546e;
        if (str3 != null) {
            jVar.a(str3, 4);
        }
        Map<String, String> map = this.f30547f;
        if (map != null) {
            jVar.a((Map) map, 5);
        }
        String str4 = this.f30549h;
        if (str4 != null) {
            jVar.a(str4, 6);
        }
        jVar.a(this.f30548g, 7);
    }

    @Override // com.tencent.bugly.proguard.k
    public final void a(i iVar) {
        this.f30542a = iVar.a(this.f30542a, 0, true);
        this.f30543b = iVar.a(this.f30543b, 1, true);
        this.f30544c = iVar.b(2, false);
        this.f30545d = iVar.b(3, false);
        this.f30546e = iVar.b(4, false);
        this.f30547f = (Map) iVar.a((i) f30541i, 5, false);
        this.f30549h = iVar.b(6, false);
        this.f30548g = iVar.a(7, false);
    }
}
