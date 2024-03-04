package com.google.android.gms.internal.measurement;
/* loaded from: classes2.dex */
final class l9 extends n9 {
    /* JADX INFO: Access modifiers changed from: package-private */
    public /* synthetic */ l9(k9 k9Var) {
        super(null);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.android.gms.internal.measurement.n9
    public final void a(Object obj, long j10) {
        ((d9) lb.k(obj, j10)).D();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.android.gms.internal.measurement.n9
    public final void b(Object obj, Object obj2, long j10) {
        d9 d9Var = (d9) lb.k(obj, j10);
        d9 d9Var2 = (d9) lb.k(obj2, j10);
        int size = d9Var.size();
        int size2 = d9Var2.size();
        if (size > 0 && size2 > 0) {
            if (!d9Var.E()) {
                d9Var = d9Var.j(size2 + size);
            }
            d9Var.addAll(d9Var2);
        }
        if (size > 0) {
            d9Var2 = d9Var;
        }
        lb.x(obj, j10, d9Var2);
    }
}
