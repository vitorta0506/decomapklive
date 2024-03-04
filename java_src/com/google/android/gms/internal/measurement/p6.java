package com.google.android.gms.internal.measurement;

import android.util.Log;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2.dex */
public final class p6 extends w6 {
    /* JADX INFO: Access modifiers changed from: package-private */
    public p6(s6 s6Var, String str, Boolean bool, boolean z10) {
        super(s6Var, str, bool, true, null);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.android.gms.internal.measurement.w6
    final /* bridge */ /* synthetic */ Object a(Object obj) {
        if (t5.f8340c.matcher(obj).matches()) {
            return Boolean.TRUE;
        }
        if (t5.f8341d.matcher(obj).matches()) {
            return Boolean.FALSE;
        }
        String c10 = super.c();
        Log.e("PhenotypeFlag", "Invalid boolean value for " + c10 + ": " + ((String) obj));
        return null;
    }
}
