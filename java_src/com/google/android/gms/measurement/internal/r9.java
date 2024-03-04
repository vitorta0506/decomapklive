package com.google.android.gms.measurement.internal;

import androidx.annotation.NonNull;
import androidx.collection.ArrayMap;
import com.google.android.gms.internal.measurement.lc;
import java.util.ArrayList;
import java.util.BitSet;
import java.util.Collections;
import java.util.List;
import java.util.Map;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2.dex */
public final class r9 {

    /* renamed from: a  reason: collision with root package name */
    private String f9820a;

    /* renamed from: b  reason: collision with root package name */
    private boolean f9821b;

    /* renamed from: c  reason: collision with root package name */
    private com.google.android.gms.internal.measurement.b5 f9822c;

    /* renamed from: d  reason: collision with root package name */
    private BitSet f9823d;

    /* renamed from: e  reason: collision with root package name */
    private BitSet f9824e;

    /* renamed from: f  reason: collision with root package name */
    private Map f9825f;

    /* renamed from: g  reason: collision with root package name */
    private Map f9826g;

    /* renamed from: h  reason: collision with root package name */
    final /* synthetic */ b f9827h;

    /* JADX INFO: Access modifiers changed from: package-private */
    public /* synthetic */ r9(b bVar, String str, p4.c0 c0Var) {
        this.f9827h = bVar;
        this.f9820a = str;
        this.f9821b = true;
        this.f9823d = new BitSet();
        this.f9824e = new BitSet();
        this.f9825f = new ArrayMap();
        this.f9826g = new ArrayMap();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* bridge */ /* synthetic */ BitSet b(r9 r9Var) {
        return r9Var.f9823d;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @NonNull
    public final com.google.android.gms.internal.measurement.h4 a(int i9) {
        ArrayList arrayList;
        List list;
        com.google.android.gms.internal.measurement.g4 x10 = com.google.android.gms.internal.measurement.h4.x();
        x10.r(i9);
        x10.t(this.f9821b);
        com.google.android.gms.internal.measurement.b5 b5Var = this.f9822c;
        if (b5Var != null) {
            x10.u(b5Var);
        }
        com.google.android.gms.internal.measurement.a5 B = com.google.android.gms.internal.measurement.b5.B();
        B.s(g9.H(this.f9823d));
        B.u(g9.H(this.f9824e));
        Map map = this.f9825f;
        if (map == null) {
            arrayList = null;
        } else {
            ArrayList arrayList2 = new ArrayList(map.size());
            for (Integer num : this.f9825f.keySet()) {
                int intValue = num.intValue();
                Long l10 = (Long) this.f9825f.get(Integer.valueOf(intValue));
                if (l10 != null) {
                    com.google.android.gms.internal.measurement.i4 y10 = com.google.android.gms.internal.measurement.j4.y();
                    y10.s(intValue);
                    y10.r(l10.longValue());
                    arrayList2.add((com.google.android.gms.internal.measurement.j4) y10.o());
                }
            }
            arrayList = arrayList2;
        }
        if (arrayList != null) {
            B.r(arrayList);
        }
        Map map2 = this.f9826g;
        if (map2 == null) {
            list = Collections.emptyList();
        } else {
            ArrayList arrayList3 = new ArrayList(map2.size());
            for (Integer num2 : this.f9826g.keySet()) {
                com.google.android.gms.internal.measurement.c5 z10 = com.google.android.gms.internal.measurement.d5.z();
                z10.s(num2.intValue());
                List list2 = (List) this.f9826g.get(num2);
                if (list2 != null) {
                    Collections.sort(list2);
                    z10.r(list2);
                }
                arrayList3.add((com.google.android.gms.internal.measurement.d5) z10.o());
            }
            list = arrayList3;
        }
        B.t(list);
        x10.s(B);
        return (com.google.android.gms.internal.measurement.h4) x10.o();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void c(@NonNull u9 u9Var) {
        int a10 = u9Var.a();
        Boolean bool = u9Var.f9903c;
        if (bool != null) {
            this.f9824e.set(a10, bool.booleanValue());
        }
        Boolean bool2 = u9Var.f9904d;
        if (bool2 != null) {
            this.f9823d.set(a10, bool2.booleanValue());
        }
        if (u9Var.f9905e != null) {
            Map map = this.f9825f;
            Integer valueOf = Integer.valueOf(a10);
            Long l10 = (Long) map.get(valueOf);
            long longValue = u9Var.f9905e.longValue() / 1000;
            if (l10 == null || longValue > l10.longValue()) {
                this.f9825f.put(valueOf, Long.valueOf(longValue));
            }
        }
        if (u9Var.f9906f != null) {
            Map map2 = this.f9826g;
            Integer valueOf2 = Integer.valueOf(a10);
            List list = (List) map2.get(valueOf2);
            if (list == null) {
                list = new ArrayList();
                this.f9826g.put(valueOf2, list);
            }
            if (u9Var.c()) {
                list.clear();
            }
            lc.b();
            g z10 = this.f9827h.f9432a.z();
            String str = this.f9820a;
            y2 y2Var = z2.Y;
            if (z10.B(str, y2Var) && u9Var.b()) {
                list.clear();
            }
            lc.b();
            if (this.f9827h.f9432a.z().B(this.f9820a, y2Var)) {
                Long valueOf3 = Long.valueOf(u9Var.f9906f.longValue() / 1000);
                if (list.contains(valueOf3)) {
                    return;
                }
                list.add(valueOf3);
                return;
            }
            list.add(Long.valueOf(u9Var.f9906f.longValue() / 1000));
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public /* synthetic */ r9(b bVar, String str, com.google.android.gms.internal.measurement.b5 b5Var, BitSet bitSet, BitSet bitSet2, Map map, Map map2, p4.c0 c0Var) {
        this.f9827h = bVar;
        this.f9820a = str;
        this.f9823d = bitSet;
        this.f9824e = bitSet2;
        this.f9825f = map;
        this.f9826g = new ArrayMap();
        for (Integer num : map2.keySet()) {
            ArrayList arrayList = new ArrayList();
            arrayList.add((Long) map2.get(num));
            this.f9826g.put(num, arrayList);
        }
        this.f9821b = false;
        this.f9822c = b5Var;
    }
}
