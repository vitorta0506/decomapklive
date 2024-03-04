package cn.jiguang.ay;

import java.io.IOException;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.LinkedList;
import java.util.List;
/* loaded from: classes.dex */
public class e implements Cloneable {

    /* renamed from: d  reason: collision with root package name */
    private static i[] f2243d = new i[0];

    /* renamed from: e  reason: collision with root package name */
    private static h[] f2244e = new h[0];

    /* renamed from: a  reason: collision with root package name */
    private d f2245a;

    /* renamed from: b  reason: collision with root package name */
    private List[] f2246b;

    /* renamed from: c  reason: collision with root package name */
    private int f2247c;

    public e() {
        this(new d());
    }

    e(b bVar) {
        this(new d(bVar));
        for (int i9 = 0; i9 < 4; i9++) {
            try {
                int c10 = this.f2245a.c(i9);
                if (c10 > 0) {
                    this.f2246b[i9] = new ArrayList(c10);
                }
                for (int i10 = 0; i10 < c10; i10++) {
                    this.f2246b[i9].add(i.a(bVar, i9));
                }
            } catch (IOException e10) {
                throw e10;
            }
        }
        this.f2247c = bVar.a();
    }

    private e(d dVar) {
        this.f2246b = new List[4];
        this.f2245a = dVar;
    }

    public e(byte[] bArr) {
        this(new b(bArr));
    }

    private int a(c cVar, int i9, a aVar, int i10) {
        int size = this.f2246b[i9].size();
        int a10 = cVar.a();
        i iVar = null;
        int i11 = 0;
        int i12 = 0;
        for (int i13 = 0; i13 < size; i13++) {
            i iVar2 = (i) this.f2246b[i9].get(i13);
            if (i9 == 3) {
                i11++;
            } else {
                if (iVar != null && !a(iVar2, iVar)) {
                    a10 = cVar.a();
                    i12 = i13;
                }
                iVar2.a(cVar, i9, aVar);
                if (cVar.a() > i10) {
                    cVar.a(a10);
                    return (size - i12) + i11;
                }
                iVar = iVar2;
            }
        }
        return i11;
    }

    public static e a(i iVar) {
        e eVar = new e();
        eVar.a(iVar, 0);
        return eVar;
    }

    private boolean a(c cVar, int i9) {
        if (i9 < 12) {
            return false;
        }
        cVar.a();
        this.f2245a.a(cVar);
        a aVar = new a();
        this.f2245a.c();
        for (int i10 = 0; i10 < 4; i10++) {
            if (this.f2246b[i10] != null) {
                a(cVar, i10, aVar, i9);
            }
        }
        return true;
    }

    private static boolean a(i iVar, i iVar2) {
        return iVar.f() == iVar2.f() && iVar.g() == iVar2.g() && iVar.d().equals(iVar2.d());
    }

    public i a() {
        List list = this.f2246b[0];
        if (list == null || list.size() == 0) {
            return null;
        }
        return (i) list.get(0);
    }

    public void a(i iVar, int i9) {
        List[] listArr = this.f2246b;
        if (listArr[i9] == null) {
            listArr[i9] = new LinkedList();
        }
        this.f2245a.b(i9);
        this.f2246b[i9].add(iVar);
    }

    public i[] a(int i9) {
        List[] listArr = this.f2246b;
        if (listArr[i9] == null) {
            return f2243d;
        }
        List list = listArr[i9];
        return (i[]) list.toArray(new i[list.size()]);
    }

    public h[] b(int i9) {
        if (this.f2246b[i9] == null) {
            return f2244e;
        }
        LinkedList linkedList = new LinkedList();
        i[] a10 = a(i9);
        HashSet hashSet = new HashSet();
        for (int i10 = 0; i10 < a10.length; i10++) {
            g d10 = a10[i10].d();
            boolean z10 = true;
            if (hashSet.contains(d10)) {
                int size = linkedList.size() - 1;
                while (true) {
                    if (size < 0) {
                        break;
                    }
                    h hVar = (h) linkedList.get(size);
                    if (hVar.c() == a10[i10].f() && hVar.d() == a10[i10].g() && hVar.b().equals(d10)) {
                        hVar.a(a10[i10]);
                        z10 = false;
                        break;
                    }
                    size--;
                }
            }
            if (z10) {
                linkedList.add(new h(a10[i10]));
                hashSet.add(d10);
            }
        }
        return (h[]) linkedList.toArray(new h[linkedList.size()]);
    }

    public byte[] c(int i9) {
        c cVar = new c();
        a(cVar, i9);
        this.f2247c = cVar.a();
        return cVar.b();
    }

    public Object clone() {
        e eVar = new e();
        int i9 = 0;
        while (true) {
            List[] listArr = this.f2246b;
            if (i9 >= listArr.length) {
                eVar.f2245a = (d) this.f2245a.clone();
                eVar.f2247c = this.f2247c;
                return eVar;
            }
            if (listArr[i9] != null) {
                eVar.f2246b[i9] = new LinkedList(this.f2246b[i9]);
            }
            i9++;
        }
    }
}
