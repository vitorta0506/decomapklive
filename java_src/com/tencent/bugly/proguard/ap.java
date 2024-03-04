package com.tencent.bugly.proguard;

import java.util.HashMap;
import java.util.Map;
/* loaded from: classes4.dex */
public final class ap extends k implements Cloneable {

    /* renamed from: n  reason: collision with root package name */
    private static Map<String, String> f30527n;

    /* renamed from: o  reason: collision with root package name */
    private static /* synthetic */ boolean f30528o = true;

    /* renamed from: m  reason: collision with root package name */
    private static ao f30526m = new ao();

    /* renamed from: a  reason: collision with root package name */
    public boolean f30529a = true;

    /* renamed from: b  reason: collision with root package name */
    public boolean f30530b = true;

    /* renamed from: c  reason: collision with root package name */
    public boolean f30531c = true;

    /* renamed from: d  reason: collision with root package name */
    public String f30532d = "";

    /* renamed from: e  reason: collision with root package name */
    public String f30533e = "";

    /* renamed from: f  reason: collision with root package name */
    public ao f30534f = null;

    /* renamed from: g  reason: collision with root package name */
    public Map<String, String> f30535g = null;

    /* renamed from: h  reason: collision with root package name */
    public long f30536h = 0;

    /* renamed from: j  reason: collision with root package name */
    private String f30538j = "";

    /* renamed from: k  reason: collision with root package name */
    private String f30539k = "";

    /* renamed from: l  reason: collision with root package name */
    private int f30540l = 0;

    /* renamed from: i  reason: collision with root package name */
    public int f30537i = 0;

    static {
        HashMap hashMap = new HashMap();
        f30527n = hashMap;
        hashMap.put("", "");
    }

    @Override // com.tencent.bugly.proguard.k
    public final void a(j jVar) {
        jVar.a(this.f30529a, 0);
        jVar.a(this.f30530b, 1);
        jVar.a(this.f30531c, 2);
        String str = this.f30532d;
        if (str != null) {
            jVar.a(str, 3);
        }
        String str2 = this.f30533e;
        if (str2 != null) {
            jVar.a(str2, 4);
        }
        ao aoVar = this.f30534f;
        if (aoVar != null) {
            jVar.a((k) aoVar, 5);
        }
        Map<String, String> map = this.f30535g;
        if (map != null) {
            jVar.a((Map) map, 6);
        }
        jVar.a(this.f30536h, 7);
        String str3 = this.f30538j;
        if (str3 != null) {
            jVar.a(str3, 8);
        }
        String str4 = this.f30539k;
        if (str4 != null) {
            jVar.a(str4, 9);
        }
        jVar.a(this.f30540l, 10);
        jVar.a(this.f30537i, 11);
    }

    public final Object clone() {
        try {
            return super.clone();
        } catch (CloneNotSupportedException unused) {
            if (f30528o) {
                return null;
            }
            throw new AssertionError();
        }
    }

    public final boolean equals(Object obj) {
        if (obj == null) {
            return false;
        }
        ap apVar = (ap) obj;
        return l.a(this.f30529a, apVar.f30529a) && l.a(this.f30530b, apVar.f30530b) && l.a(this.f30531c, apVar.f30531c) && l.a(this.f30532d, apVar.f30532d) && l.a(this.f30533e, apVar.f30533e) && l.a(this.f30534f, apVar.f30534f) && l.a(this.f30535g, apVar.f30535g) && l.a(this.f30536h, apVar.f30536h) && l.a(this.f30538j, apVar.f30538j) && l.a(this.f30539k, apVar.f30539k) && l.a(this.f30540l, apVar.f30540l) && l.a(this.f30537i, apVar.f30537i);
    }

    public final int hashCode() {
        try {
            throw new Exception("Need define key first!");
        } catch (Exception e10) {
            e10.printStackTrace();
            return 0;
        }
    }

    @Override // com.tencent.bugly.proguard.k
    public final void a(i iVar) {
        this.f30529a = iVar.a(0, true);
        this.f30530b = iVar.a(1, true);
        this.f30531c = iVar.a(2, true);
        this.f30532d = iVar.b(3, false);
        this.f30533e = iVar.b(4, false);
        this.f30534f = (ao) iVar.a((k) f30526m, 5, false);
        this.f30535g = (Map) iVar.a((i) f30527n, 6, false);
        this.f30536h = iVar.a(this.f30536h, 7, false);
        this.f30538j = iVar.b(8, false);
        this.f30539k = iVar.b(9, false);
        this.f30540l = iVar.a(this.f30540l, 10, false);
        this.f30537i = iVar.a(this.f30537i, 11, false);
    }

    @Override // com.tencent.bugly.proguard.k
    public final void a(StringBuilder sb2, int i9) {
        h hVar = new h(sb2, i9);
        hVar.a(this.f30529a, "enable");
        hVar.a(this.f30530b, "enableUserInfo");
        hVar.a(this.f30531c, "enableQuery");
        hVar.a(this.f30532d, "url");
        hVar.a(this.f30533e, "expUrl");
        hVar.a((k) this.f30534f, "security");
        hVar.a((Map) this.f30535g, "valueMap");
        hVar.a(this.f30536h, "strategylastUpdateTime");
        hVar.a(this.f30538j, "httpsUrl");
        hVar.a(this.f30539k, "httpsExpUrl");
        hVar.a(this.f30540l, "eventRecordCount");
        hVar.a(this.f30537i, "eventTimeInterval");
    }
}
