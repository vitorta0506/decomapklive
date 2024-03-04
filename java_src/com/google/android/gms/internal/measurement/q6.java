package com.google.android.gms.internal.measurement;

import android.util.Log;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2.dex */
public final class q6 extends w6 {
    /* JADX INFO: Access modifiers changed from: package-private */
    public q6(s6 s6Var, String str, Double d10, boolean z10) {
        super(s6Var, "measurement.test.double_flag", d10, true, null);
    }

    @Override // com.google.android.gms.internal.measurement.w6
    final /* bridge */ /* synthetic */ Object a(Object obj) {
        try {
            return Double.valueOf(Double.parseDouble((String) obj));
        } catch (NumberFormatException unused) {
            String c10 = super.c();
            Log.e("PhenotypeFlag", "Invalid double value for " + c10 + ": " + ((String) obj));
            return null;
        }
    }
}
