package com.google.auth.oauth2;

import java.util.ArrayList;
import java.util.List;
/* loaded from: classes2.dex */
public final class h {

    /* renamed from: a  reason: collision with root package name */
    private final List<a> f11661a;

    /* loaded from: classes2.dex */
    public static final class a {

        /* renamed from: a  reason: collision with root package name */
        private final String f11662a;

        /* renamed from: b  reason: collision with root package name */
        private final List<String> f11663b;

        /* renamed from: com.google.auth.oauth2.h$a$a  reason: collision with other inner class name */
        /* loaded from: classes2.dex */
        public static final class C0097a {
        }

        public C0097a a() {
            return null;
        }

        public List<String> b() {
            return this.f11663b;
        }

        public String c() {
            return this.f11662a;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public String a() {
        ArrayList arrayList = new ArrayList();
        for (a aVar : this.f11661a) {
            g5.b bVar = new g5.b();
            bVar.h(n.f11679f);
            bVar.put("availableResource", aVar.c());
            bVar.put("availablePermissions", aVar.b());
            aVar.a();
            arrayList.add(bVar);
        }
        g5.b bVar2 = new g5.b();
        g5.c cVar = n.f11679f;
        bVar2.h(cVar);
        bVar2.put("accessBoundaryRules", arrayList);
        g5.b bVar3 = new g5.b();
        bVar3.h(cVar);
        bVar3.put("accessBoundary", bVar2);
        return bVar3.toString();
    }
}
