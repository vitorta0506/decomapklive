package com.xiaomi.push.service;

import android.util.Pair;
import com.xiaomi.push.b3;
import com.xiaomi.push.dc;
import com.xiaomi.push.dd;
import com.xiaomi.push.de;
import com.xiaomi.push.dg;
import com.xiaomi.push.dr;
import com.xiaomi.push.ds;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes5.dex */
public class v {
    public static int a(u uVar, dc dcVar) {
        return uVar.b(dcVar, w.f37377a[dcVar.ordinal()] != 1 ? 0 : 1);
    }

    private static List<Pair<Integer, Object>> b(List<dg> list, boolean z10) {
        if (b3.a(list)) {
            return null;
        }
        ArrayList arrayList = new ArrayList();
        for (dg dgVar : list) {
            int a10 = dgVar.a();
            dd a11 = dd.a(dgVar.b());
            if (a11 != null) {
                if (z10 && dgVar.f48a) {
                    arrayList.add(new Pair(Integer.valueOf(a10), null));
                } else {
                    int i9 = w.f37378b[a11.ordinal()];
                    arrayList.add(i9 != 1 ? i9 != 2 ? i9 != 3 ? i9 != 4 ? null : new Pair(Integer.valueOf(a10), Boolean.valueOf(dgVar.g())) : new Pair(Integer.valueOf(a10), dgVar.m1410a()) : new Pair(Integer.valueOf(a10), Long.valueOf(dgVar.m1409a())) : new Pair(Integer.valueOf(a10), Integer.valueOf(dgVar.c())));
                }
            }
        }
        return arrayList;
    }

    public static void c(u uVar, dr drVar) {
        uVar.i(b(drVar.a(), true));
        uVar.l();
    }

    public static void d(u uVar, ds dsVar) {
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        for (de deVar : dsVar.a()) {
            arrayList.add(new Pair<>(deVar.m1405a(), Integer.valueOf(deVar.a())));
            List<Pair<Integer, Object>> b10 = b(deVar.f40a, false);
            if (!b3.a(b10)) {
                arrayList2.addAll(b10);
            }
        }
        uVar.j(arrayList, arrayList2);
        uVar.l();
    }
}
