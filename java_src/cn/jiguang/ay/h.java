package cn.jiguang.ay;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
/* loaded from: classes.dex */
public class h implements Serializable {

    /* renamed from: a  reason: collision with root package name */
    private List f2266a;

    /* renamed from: b  reason: collision with root package name */
    private short f2267b;

    /* renamed from: c  reason: collision with root package name */
    private short f2268c;

    public h() {
        this.f2266a = new ArrayList(1);
        this.f2267b = (short) 0;
        this.f2268c = (short) 0;
    }

    public h(i iVar) {
        this();
        b(iVar);
    }

    private String a(Iterator it) {
        StringBuffer stringBuffer = new StringBuffer();
        while (it.hasNext()) {
            stringBuffer.append("[");
            stringBuffer.append(((i) it.next()).c());
            stringBuffer.append("]");
            if (it.hasNext()) {
                stringBuffer.append(" ");
            }
        }
        return stringBuffer.toString();
    }

    private synchronized Iterator a(boolean z10, boolean z11) {
        int i9;
        List subList;
        int size = this.f2266a.size();
        int i10 = z10 ? size - this.f2267b : this.f2267b;
        if (i10 == 0) {
            return Collections.EMPTY_LIST.iterator();
        }
        if (!z10) {
            i9 = size - this.f2267b;
        } else if (z11) {
            if (this.f2268c >= i10) {
                this.f2268c = (short) 0;
            }
            i9 = this.f2268c;
            this.f2268c = (short) (i9 + 1);
        } else {
            i9 = 0;
        }
        ArrayList arrayList = new ArrayList(i10);
        if (z10) {
            arrayList.addAll(this.f2266a.subList(i9, i10));
            if (i9 != 0) {
                subList = this.f2266a.subList(0, i9);
            }
            return arrayList.iterator();
        }
        subList = this.f2266a.subList(i9, size);
        arrayList.addAll(subList);
        return arrayList.iterator();
    }

    private void b(i iVar) {
        if (this.f2267b == 0) {
            this.f2266a.add(iVar);
            return;
        }
        List list = this.f2266a;
        list.add(list.size() - this.f2267b, iVar);
    }

    public synchronized Iterator a() {
        return a(true, true);
    }

    public synchronized void a(i iVar) {
        if (this.f2266a.size() == 0) {
            b(iVar);
            return;
        }
        i f10 = f();
        if (!iVar.a(f10)) {
            throw new IllegalArgumentException("record does not match rrset");
        }
        if (iVar.h() != f10.h()) {
            if (iVar.h() > f10.h()) {
                iVar = iVar.i();
                iVar.a(f10.h());
            } else {
                for (int i9 = 0; i9 < this.f2266a.size(); i9++) {
                    i i10 = ((i) this.f2266a.get(i9)).i();
                    i10.a(iVar.h());
                    this.f2266a.set(i9, i10);
                }
            }
        }
        if (!this.f2266a.contains(iVar)) {
            b(iVar);
        }
    }

    public g b() {
        return f().d();
    }

    public int c() {
        return f().f();
    }

    public int d() {
        return f().g();
    }

    public synchronized long e() {
        return f().h();
    }

    public synchronized i f() {
        if (this.f2266a.size() == 0) {
            throw new IllegalStateException("rrset is empty");
        }
        return (i) this.f2266a.get(0);
    }

    public String toString() {
        if (this.f2266a.size() == 0) {
            return "{empty}";
        }
        StringBuffer stringBuffer = new StringBuffer();
        stringBuffer.append("{ ");
        stringBuffer.append(b() + " ");
        stringBuffer.append(e() + " ");
        stringBuffer.append(a(a(true, false)));
        if (this.f2267b > 0) {
            stringBuffer.append(" sigs: ");
            stringBuffer.append(a(a(false, false)));
        }
        stringBuffer.append(" }");
        return stringBuffer.toString();
    }
}
