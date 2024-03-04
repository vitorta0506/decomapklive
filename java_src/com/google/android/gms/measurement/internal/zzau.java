package com.google.android.gms.measurement.internal;

import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import java.util.Iterator;
/* loaded from: classes2.dex */
public final class zzau extends AbstractSafeParcelable implements Iterable<String> {
    public static final Parcelable.Creator<zzau> CREATOR = new s();
    private final Bundle zza;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzau(Bundle bundle) {
        this.zza = bundle;
    }

    public final int I() {
        return this.zza.size();
    }

    public final Bundle L() {
        return new Bundle(this.zza);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final Double M(String str) {
        return Double.valueOf(this.zza.getDouble("value"));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final Long P(String str) {
        return Long.valueOf(this.zza.getLong("value"));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final Object R(String str) {
        return this.zza.get(str);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final String c0(String str) {
        return this.zza.getString(str);
    }

    @Override // java.lang.Iterable
    public final Iterator<String> iterator() {
        return new r(this);
    }

    public final String toString() {
        return this.zza.toString();
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i9) {
        int a10 = x3.a.a(parcel);
        x3.a.e(parcel, 2, L(), false);
        x3.a.b(parcel, a10);
    }
}
