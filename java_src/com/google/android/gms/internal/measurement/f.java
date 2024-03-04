package com.google.android.gms.internal.measurement;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.SortedMap;
import java.util.TreeMap;
/* loaded from: classes2.dex */
public final class f implements Iterable, q, m {

    /* renamed from: a  reason: collision with root package name */
    final SortedMap f8064a;

    /* renamed from: b  reason: collision with root package name */
    final Map f8065b;

    public f() {
        this.f8064a = new TreeMap();
        this.f8065b = new TreeMap();
    }

    public final q B(int i9) {
        q qVar;
        if (i9 < z()) {
            return (!M(i9) || (qVar = (q) this.f8064a.get(Integer.valueOf(i9))) == null) ? q.U : qVar;
        }
        throw new IndexOutOfBoundsException("Attempting to get element outside of current array");
    }

    public final String F(String str) {
        if (str == null) {
            str = "";
        }
        StringBuilder sb2 = new StringBuilder();
        if (!this.f8064a.isEmpty()) {
            for (int i9 = 0; i9 < z(); i9++) {
                q B = B(i9);
                sb2.append(str);
                if (!(B instanceof v) && !(B instanceof o)) {
                    sb2.append(B.d());
                }
            }
            sb2.delete(0, str.length());
        }
        return sb2.toString();
    }

    public final Iterator G() {
        return this.f8064a.keySet().iterator();
    }

    public final List H() {
        ArrayList arrayList = new ArrayList(z());
        for (int i9 = 0; i9 < z(); i9++) {
            arrayList.add(B(i9));
        }
        return arrayList;
    }

    public final void I() {
        this.f8064a.clear();
    }

    public final void J(int i9, q qVar) {
        if (i9 >= 0) {
            if (i9 >= z()) {
                L(i9, qVar);
                return;
            }
            for (int intValue = ((Integer) this.f8064a.lastKey()).intValue(); intValue >= i9; intValue--) {
                SortedMap sortedMap = this.f8064a;
                Integer valueOf = Integer.valueOf(intValue);
                q qVar2 = (q) sortedMap.get(valueOf);
                if (qVar2 != null) {
                    L(intValue + 1, qVar2);
                    this.f8064a.remove(valueOf);
                }
            }
            L(i9, qVar);
            return;
        }
        throw new IllegalArgumentException("Invalid value index: " + i9);
    }

    public final void K(int i9) {
        int intValue = ((Integer) this.f8064a.lastKey()).intValue();
        if (i9 > intValue || i9 < 0) {
            return;
        }
        this.f8064a.remove(Integer.valueOf(i9));
        if (i9 == intValue) {
            SortedMap sortedMap = this.f8064a;
            int i10 = i9 - 1;
            Integer valueOf = Integer.valueOf(i10);
            if (sortedMap.containsKey(valueOf) || i10 < 0) {
                return;
            }
            this.f8064a.put(valueOf, q.U);
            return;
        }
        while (true) {
            i9++;
            if (i9 > ((Integer) this.f8064a.lastKey()).intValue()) {
                return;
            }
            SortedMap sortedMap2 = this.f8064a;
            Integer valueOf2 = Integer.valueOf(i9);
            q qVar = (q) sortedMap2.get(valueOf2);
            if (qVar != null) {
                this.f8064a.put(Integer.valueOf(i9 - 1), qVar);
                this.f8064a.remove(valueOf2);
            }
        }
    }

    public final void L(int i9, q qVar) {
        if (i9 > 32468) {
            throw new IllegalStateException("Array too large");
        }
        if (i9 < 0) {
            throw new IndexOutOfBoundsException("Out of bounds index: " + i9);
        } else if (qVar == null) {
            this.f8064a.remove(Integer.valueOf(i9));
        } else {
            this.f8064a.put(Integer.valueOf(i9), qVar);
        }
    }

    public final boolean M(int i9) {
        if (i9 >= 0 && i9 <= ((Integer) this.f8064a.lastKey()).intValue()) {
            return this.f8064a.containsKey(Integer.valueOf(i9));
        }
        throw new IndexOutOfBoundsException("Out of bounds index: " + i9);
    }

    @Override // com.google.android.gms.internal.measurement.q
    public final Double a() {
        if (this.f8064a.size() == 1) {
            return B(0).a();
        }
        if (this.f8064a.size() <= 0) {
            return Double.valueOf(0.0d);
        }
        return Double.valueOf(Double.NaN);
    }

    @Override // com.google.android.gms.internal.measurement.q
    public final q c() {
        f fVar = new f();
        for (Map.Entry entry : this.f8064a.entrySet()) {
            if (entry.getValue() instanceof m) {
                fVar.f8064a.put((Integer) entry.getKey(), (q) entry.getValue());
            } else {
                fVar.f8064a.put((Integer) entry.getKey(), ((q) entry.getValue()).c());
            }
        }
        return fVar;
    }

    @Override // com.google.android.gms.internal.measurement.q
    public final String d() {
        return F(",");
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof f) {
            f fVar = (f) obj;
            if (z() != fVar.z()) {
                return false;
            }
            if (this.f8064a.isEmpty()) {
                return fVar.f8064a.isEmpty();
            }
            for (int intValue = ((Integer) this.f8064a.firstKey()).intValue(); intValue <= ((Integer) this.f8064a.lastKey()).intValue(); intValue++) {
                if (!B(intValue).equals(fVar.B(intValue))) {
                    return false;
                }
            }
            return true;
        }
        return false;
    }

    @Override // com.google.android.gms.internal.measurement.q
    public final Boolean f() {
        return Boolean.TRUE;
    }

    @Override // com.google.android.gms.internal.measurement.q
    public final Iterator g() {
        return new d(this, this.f8064a.keySet().iterator(), this.f8065b.keySet().iterator());
    }

    public final int hashCode() {
        return this.f8064a.hashCode() * 31;
    }

    @Override // java.lang.Iterable
    public final Iterator iterator() {
        return new e(this);
    }

    @Override // com.google.android.gms.internal.measurement.m
    public final boolean m(String str) {
        return "length".equals(str) || this.f8065b.containsKey(str);
    }

    @Override // com.google.android.gms.internal.measurement.m
    public final void n(String str, q qVar) {
        if (qVar == null) {
            this.f8065b.remove(str);
        } else {
            this.f8065b.put(str, qVar);
        }
    }

    public final String toString() {
        return F(",");
    }

    @Override // com.google.android.gms.internal.measurement.q
    public final q u(String str, t4 t4Var, List list) {
        if (!"concat".equals(str) && !"every".equals(str) && !"filter".equals(str) && !"forEach".equals(str) && !"indexOf".equals(str) && !"join".equals(str) && !"lastIndexOf".equals(str) && !"map".equals(str) && !"pop".equals(str) && !"push".equals(str) && !"reduce".equals(str) && !"reduceRight".equals(str) && !"reverse".equals(str) && !"shift".equals(str) && !"slice".equals(str) && !"some".equals(str) && !"sort".equals(str) && !"splice".equals(str) && !"toString".equals(str) && !"unshift".equals(str)) {
            return k.a(this, new u(str), t4Var, list);
        }
        return d0.a(str, this, t4Var, list);
    }

    @Override // com.google.android.gms.internal.measurement.m
    public final q x(String str) {
        q qVar;
        if ("length".equals(str)) {
            return new i(Double.valueOf(z()));
        }
        return (!m(str) || (qVar = (q) this.f8065b.get(str)) == null) ? q.U : qVar;
    }

    public final int y() {
        return this.f8064a.size();
    }

    public final int z() {
        if (this.f8064a.isEmpty()) {
            return 0;
        }
        return ((Integer) this.f8064a.lastKey()).intValue() + 1;
    }

    public f(List list) {
        this();
        if (list != null) {
            for (int i9 = 0; i9 < list.size(); i9++) {
                L(i9, (q) list.get(i9));
            }
        }
    }
}
