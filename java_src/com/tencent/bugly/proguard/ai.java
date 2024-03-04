package com.tencent.bugly.proguard;

import java.util.ArrayList;
import java.util.Collection;
/* loaded from: classes4.dex */
public final class ai extends k implements Cloneable {

    /* renamed from: c  reason: collision with root package name */
    private static ArrayList<String> f30453c;

    /* renamed from: a  reason: collision with root package name */
    private String f30454a = "";

    /* renamed from: b  reason: collision with root package name */
    private ArrayList<String> f30455b = null;

    @Override // com.tencent.bugly.proguard.k
    public final void a(j jVar) {
        jVar.a(this.f30454a, 0);
        ArrayList<String> arrayList = this.f30455b;
        if (arrayList != null) {
            jVar.a((Collection) arrayList, 1);
        }
    }

    @Override // com.tencent.bugly.proguard.k
    public final void a(StringBuilder sb2, int i9) {
    }

    @Override // com.tencent.bugly.proguard.k
    public final void a(i iVar) {
        this.f30454a = iVar.b(0, true);
        if (f30453c == null) {
            ArrayList<String> arrayList = new ArrayList<>();
            f30453c = arrayList;
            arrayList.add("");
        }
        this.f30455b = (ArrayList) iVar.a((i) f30453c, 1, false);
    }
}
