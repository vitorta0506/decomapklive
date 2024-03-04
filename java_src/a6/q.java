package a6;

import com.google.firebase.components.DependencyCycleException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.Set;
/* loaded from: classes2.dex */
class q {

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes2.dex */
    public static class b {

        /* renamed from: a  reason: collision with root package name */
        private final d<?> f684a;

        /* renamed from: b  reason: collision with root package name */
        private final Set<b> f685b = new HashSet();

        /* renamed from: c  reason: collision with root package name */
        private final Set<b> f686c = new HashSet();

        b(d<?> dVar) {
            this.f684a = dVar;
        }

        void a(b bVar) {
            this.f685b.add(bVar);
        }

        void b(b bVar) {
            this.f686c.add(bVar);
        }

        d<?> c() {
            return this.f684a;
        }

        Set<b> d() {
            return this.f685b;
        }

        boolean e() {
            return this.f685b.isEmpty();
        }

        boolean f() {
            return this.f686c.isEmpty();
        }

        void g(b bVar) {
            this.f686c.remove(bVar);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes2.dex */
    public static class c {

        /* renamed from: a  reason: collision with root package name */
        private final Class<?> f687a;

        /* renamed from: b  reason: collision with root package name */
        private final boolean f688b;

        public boolean equals(Object obj) {
            if (obj instanceof c) {
                c cVar = (c) obj;
                return cVar.f687a.equals(this.f687a) && cVar.f688b == this.f688b;
            }
            return false;
        }

        public int hashCode() {
            return ((this.f687a.hashCode() ^ 1000003) * 1000003) ^ Boolean.valueOf(this.f688b).hashCode();
        }

        private c(Class<?> cls, boolean z10) {
            this.f687a = cls;
            this.f688b = z10;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void a(List<d<?>> list) {
        Set<b> c10 = c(list);
        Set<b> b10 = b(c10);
        int i9 = 0;
        while (!b10.isEmpty()) {
            b next = b10.iterator().next();
            b10.remove(next);
            i9++;
            for (b bVar : next.d()) {
                bVar.g(next);
                if (bVar.f()) {
                    b10.add(bVar);
                }
            }
        }
        if (i9 == list.size()) {
            return;
        }
        ArrayList arrayList = new ArrayList();
        for (b bVar2 : c10) {
            if (!bVar2.f() && !bVar2.e()) {
                arrayList.add(bVar2.c());
            }
        }
        throw new DependencyCycleException(arrayList);
    }

    private static Set<b> b(Set<b> set) {
        HashSet hashSet = new HashSet();
        for (b bVar : set) {
            if (bVar.f()) {
                hashSet.add(bVar);
            }
        }
        return hashSet;
    }

    private static Set<b> c(List<d<?>> list) {
        Set<b> set;
        HashMap hashMap = new HashMap(list.size());
        for (d<?> dVar : list) {
            b bVar = new b(dVar);
            for (Class<? super Object> cls : dVar.h()) {
                c cVar = new c(cls, !dVar.n());
                if (!hashMap.containsKey(cVar)) {
                    hashMap.put(cVar, new HashSet());
                }
                Set set2 = (Set) hashMap.get(cVar);
                if (!set2.isEmpty() && !cVar.f688b) {
                    throw new IllegalArgumentException(String.format("Multiple components provide %s.", cls));
                }
                set2.add(bVar);
            }
        }
        for (Set<b> set3 : hashMap.values()) {
            for (b bVar2 : set3) {
                for (r rVar : bVar2.c().e()) {
                    if (rVar.d() && (set = (Set) hashMap.get(new c(rVar.b(), rVar.f()))) != null) {
                        for (b bVar3 : set) {
                            bVar2.a(bVar3);
                            bVar3.b(bVar2);
                        }
                    }
                }
            }
        }
        HashSet hashSet = new HashSet();
        for (Set set4 : hashMap.values()) {
            hashSet.addAll(set4);
        }
        return hashSet;
    }
}
