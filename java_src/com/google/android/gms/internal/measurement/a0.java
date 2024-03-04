package com.google.android.gms.internal.measurement;

import java.util.ArrayList;
import java.util.List;
/* loaded from: classes2.dex */
public final class a0 extends x {
    /* JADX INFO: Access modifiers changed from: protected */
    public a0() {
        this.f8419a.add(zzbl.APPLY);
        this.f8419a.add(zzbl.BLOCK);
        this.f8419a.add(zzbl.BREAK);
        this.f8419a.add(zzbl.CASE);
        this.f8419a.add(zzbl.DEFAULT);
        this.f8419a.add(zzbl.CONTINUE);
        this.f8419a.add(zzbl.DEFINE_FUNCTION);
        this.f8419a.add(zzbl.FN);
        this.f8419a.add(zzbl.IF);
        this.f8419a.add(zzbl.QUOTE);
        this.f8419a.add(zzbl.RETURN);
        this.f8419a.add(zzbl.SWITCH);
        this.f8419a.add(zzbl.TERNARY);
    }

    private static q c(t4 t4Var, List list) {
        u5.i(zzbl.FN.name(), 2, list);
        q b10 = t4Var.b((q) list.get(0));
        q b11 = t4Var.b((q) list.get(1));
        if (b11 instanceof f) {
            List H = ((f) b11).H();
            List arrayList = new ArrayList();
            if (list.size() > 2) {
                arrayList = list.subList(2, list.size());
            }
            return new p(b10.d(), H, arrayList, t4Var);
        }
        throw new IllegalArgumentException(String.format("FN requires an ArrayValue of parameter names found %s", b11.getClass().getCanonicalName()));
    }

    /* JADX WARN: Code restructure failed: missing block: B:61:0x0129, code lost:
        if (r8.equals("continue") == false) goto L67;
     */
    @Override // com.google.android.gms.internal.measurement.x
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final com.google.android.gms.internal.measurement.q a(java.lang.String r8, com.google.android.gms.internal.measurement.t4 r9, java.util.List r10) {
        /*
            Method dump skipped, instructions count: 636
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.measurement.a0.a(java.lang.String, com.google.android.gms.internal.measurement.t4, java.util.List):com.google.android.gms.internal.measurement.q");
    }
}
