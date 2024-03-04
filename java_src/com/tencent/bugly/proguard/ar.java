package com.tencent.bugly.proguard;

import java.util.ArrayList;
import java.util.Collection;
import java.util.HashMap;
import java.util.Map;
/* loaded from: classes4.dex */
public final class ar extends k implements Cloneable {

    /* renamed from: f  reason: collision with root package name */
    private static ArrayList<aq> f30550f;

    /* renamed from: g  reason: collision with root package name */
    private static Map<String, String> f30551g;

    /* renamed from: a  reason: collision with root package name */
    public byte f30552a = 0;

    /* renamed from: b  reason: collision with root package name */
    public String f30553b = "";

    /* renamed from: c  reason: collision with root package name */
    public String f30554c = "";

    /* renamed from: d  reason: collision with root package name */
    public ArrayList<aq> f30555d = null;

    /* renamed from: e  reason: collision with root package name */
    public Map<String, String> f30556e = null;

    @Override // com.tencent.bugly.proguard.k
    public final void a(j jVar) {
        jVar.a(this.f30552a, 0);
        String str = this.f30553b;
        if (str != null) {
            jVar.a(str, 1);
        }
        String str2 = this.f30554c;
        if (str2 != null) {
            jVar.a(str2, 2);
        }
        ArrayList<aq> arrayList = this.f30555d;
        if (arrayList != null) {
            jVar.a((Collection) arrayList, 3);
        }
        Map<String, String> map = this.f30556e;
        if (map != null) {
            jVar.a((Map) map, 4);
        }
    }

    @Override // com.tencent.bugly.proguard.k
    public final void a(StringBuilder sb2, int i9) {
    }

    @Override // com.tencent.bugly.proguard.k
    public final void a(i iVar) {
        this.f30552a = iVar.a(this.f30552a, 0, true);
        this.f30553b = iVar.b(1, false);
        this.f30554c = iVar.b(2, false);
        if (f30550f == null) {
            f30550f = new ArrayList<>();
            f30550f.add(new aq());
        }
        this.f30555d = (ArrayList) iVar.a((i) f30550f, 3, false);
        if (f30551g == null) {
            HashMap hashMap = new HashMap();
            f30551g = hashMap;
            hashMap.put("", "");
        }
        this.f30556e = (Map) iVar.a((i) f30551g, 4, false);
    }
}
