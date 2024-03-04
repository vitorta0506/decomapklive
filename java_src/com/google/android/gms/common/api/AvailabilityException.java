package com.google.android.gms.common.api;

import android.text.TextUtils;
import androidx.annotation.NonNull;
import androidx.collection.ArrayMap;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.api.a;
import com.google.android.gms.common.internal.p;
import java.util.ArrayList;
/* loaded from: classes2.dex */
public class AvailabilityException extends Exception {
    private final ArrayMap zaa;

    public AvailabilityException(@NonNull ArrayMap arrayMap) {
        this.zaa = arrayMap;
    }

    @NonNull
    public ConnectionResult getConnectionResult(@NonNull c<? extends a.d> cVar) {
        v3.b<? extends a.d> c10 = cVar.c();
        boolean z10 = this.zaa.get(c10) != 0;
        String b10 = c10.b();
        p.b(z10, "The given API (" + b10 + ") was not part of the availability request.");
        return (ConnectionResult) p.j((ConnectionResult) this.zaa.get(c10));
    }

    @Override // java.lang.Throwable
    @NonNull
    public String getMessage() {
        ArrayList arrayList = new ArrayList();
        boolean z10 = true;
        for (v3.b bVar : this.zaa.keySet()) {
            ConnectionResult connectionResult = (ConnectionResult) p.j((ConnectionResult) this.zaa.get(bVar));
            z10 &= !connectionResult.P();
            String b10 = bVar.b();
            String valueOf = String.valueOf(connectionResult);
            arrayList.add(b10 + ": " + valueOf);
        }
        StringBuilder sb2 = new StringBuilder();
        if (z10) {
            sb2.append("None of the queried APIs are available. ");
        } else {
            sb2.append("Some of the queried APIs are unavailable. ");
        }
        sb2.append(TextUtils.join("; ", arrayList));
        return sb2.toString();
    }

    @NonNull
    public ConnectionResult getConnectionResult(@NonNull e<? extends a.d> eVar) {
        v3.b<? extends a.d> c10 = eVar.c();
        boolean z10 = this.zaa.get(c10) != 0;
        String b10 = c10.b();
        p.b(z10, "The given API (" + b10 + ") was not part of the availability request.");
        return (ConnectionResult) p.j((ConnectionResult) this.zaa.get(c10));
    }
}
