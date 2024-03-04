package com.tencent.bugly.proguard;

import java.util.ArrayList;
import java.util.Collection;
/* loaded from: classes4.dex */
public final class al extends k implements Cloneable {

    /* renamed from: b  reason: collision with root package name */
    private static ArrayList<ak> f30486b;

    /* renamed from: a  reason: collision with root package name */
    public ArrayList<ak> f30487a = null;

    @Override // com.tencent.bugly.proguard.k
    public final void a(j jVar) {
        jVar.a((Collection) this.f30487a, 0);
    }

    @Override // com.tencent.bugly.proguard.k
    public final void a(StringBuilder sb2, int i9) {
    }

    @Override // com.tencent.bugly.proguard.k
    public final void a(i iVar) {
        if (f30486b == null) {
            f30486b = new ArrayList<>();
            f30486b.add(new ak());
        }
        this.f30487a = (ArrayList) iVar.a((i) f30486b, 0, true);
    }
}
