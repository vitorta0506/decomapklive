package cn.jiguang.ax;

import android.content.Context;
import java.security.SecureRandom;
import java.util.Collection;
import java.util.Comparator;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.LinkedList;
/* loaded from: classes.dex */
public class e {

    /* renamed from: a  reason: collision with root package name */
    private static final Comparator<d> f2157a = new Comparator<d>() { // from class: cn.jiguang.ax.e.1
        @Override // java.util.Comparator
        /* renamed from: a */
        public int compare(d dVar, d dVar2) {
            if (dVar.equals(dVar2)) {
                return 0;
            }
            int i9 = dVar.f2153b;
            int i10 = dVar2.f2153b;
            if (i9 > i10) {
                return -1;
            }
            if (i9 < i10) {
                return 1;
            }
            int i11 = dVar.f2156e;
            int i12 = dVar2.f2156e;
            if (i11 > i12) {
                return -1;
            }
            if (i11 < i12) {
                return 1;
            }
            long j10 = dVar.f2155d;
            if (j10 != 0) {
                long j11 = dVar2.f2155d;
                if (j11 != 0) {
                    if (j10 < j11) {
                        return -1;
                    }
                    if (j10 > j11) {
                        return 1;
                    }
                }
            }
            long j12 = dVar.f2154c;
            if (j12 != 0) {
                long j13 = dVar2.f2154c;
                if (j13 != 0) {
                    if (j12 > j13 + 180000) {
                        return -1;
                    }
                    if (j12 < j13 - 180000) {
                        return 1;
                    }
                }
            }
            return 0;
        }
    };

    public static LinkedHashSet<g> a(Context context, LinkedHashSet<g> linkedHashSet, long j10) {
        if ((linkedHashSet != null ? linkedHashSet.size() : 0) == 0) {
            return new LinkedHashSet<>();
        }
        LinkedList linkedList = new LinkedList();
        Iterator<g> it = linkedHashSet.iterator();
        boolean z10 = true;
        while (it.hasNext()) {
            g next = it.next();
            if (next.a()) {
                cn.jiguang.g.a<String> f10 = cn.jiguang.g.a.f(next.toString());
                d a10 = d.a((String) cn.jiguang.g.b.a(context, f10));
                if (a10 == null) {
                    a10 = new d(next);
                }
                if (z10) {
                    a10.f2156e = 1;
                    z10 = false;
                }
                if (j10 > 0) {
                    a10.f2154c = j10;
                    cn.jiguang.g.b.a(context, f10.a((cn.jiguang.g.a<String>) a10.a()));
                }
                linkedList.add(a10);
            }
        }
        LinkedList a11 = a(linkedList, f2157a);
        LinkedHashSet<g> linkedHashSet2 = new LinkedHashSet<>();
        Iterator it2 = a11.iterator();
        while (it2.hasNext()) {
            Iterator it3 = ((LinkedList) it2.next()).iterator();
            while (it3.hasNext()) {
                linkedHashSet2.add(((d) it3.next()).f2152a);
            }
        }
        return linkedHashSet2;
    }

    private static <T> LinkedList<LinkedList<T>> a(Collection<T> collection, Comparator<T> comparator) {
        boolean z10;
        int size = collection != null ? collection.size() : 0;
        if (size == 0) {
            return new LinkedList<>();
        }
        LinkedList<LinkedList<T>> linkedList = new LinkedList<>();
        if (size == 1) {
            linkedList.add(new LinkedList<>(collection));
            return linkedList;
        }
        SecureRandom secureRandom = new SecureRandom();
        for (T t10 : collection) {
            for (int i9 = 0; i9 < linkedList.size(); i9++) {
                LinkedList<T> linkedList2 = linkedList.get(i9);
                int compare = comparator.compare(t10, linkedList2.getFirst());
                if (compare == 0) {
                    linkedList2.add(secureRandom.nextInt(linkedList2.size() + 1), t10);
                } else if (compare < 0) {
                    LinkedList<T> linkedList3 = new LinkedList<>();
                    linkedList3.add(t10);
                    linkedList.add(i9, linkedList3);
                }
                z10 = true;
            }
            z10 = false;
            if (!z10) {
                LinkedList<T> linkedList4 = new LinkedList<>();
                linkedList4.add(t10);
                linkedList.add(linkedList4);
            }
        }
        return linkedList;
    }

    public static void a(Context context, g gVar, int i9, long j10) {
        if (gVar != null) {
            cn.jiguang.g.a<String> f10 = cn.jiguang.g.a.f(gVar.toString());
            d a10 = d.a((String) cn.jiguang.g.b.a(context, f10));
            if (a10 == null) {
                a10 = new d(gVar);
            }
            a10.f2155d = j10;
            a10.f2153b = i9;
            cn.jiguang.g.b.a(context, f10.a((cn.jiguang.g.a<String>) a10.a()));
        }
    }
}
