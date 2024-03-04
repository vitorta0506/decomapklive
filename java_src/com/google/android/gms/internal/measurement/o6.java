package com.google.android.gms.internal.measurement;

import android.util.Log;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2.dex */
public final class o6 extends w6 {
    /* JADX INFO: Access modifiers changed from: package-private */
    public o6(s6 s6Var, String str, Long l10, boolean z10) {
        super(s6Var, str, l10, true, null);
    }

    @Override // com.google.android.gms.internal.measurement.w6
    final /* bridge */ /* synthetic */ Object a(Object obj) {
        try {
            return Long.valueOf(Long.parseLong((String) obj));
        } catch (NumberFormatException unused) {
            String c10 = super.c();
            Log.e("PhenotypeFlag", "Invalid long value for " + c10 + ": " + ((String) obj));
            return null;
        }
    }
}
