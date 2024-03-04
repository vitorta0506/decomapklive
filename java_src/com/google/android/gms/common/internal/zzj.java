package com.google.android.gms.common.internal;

import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.Nullable;
import com.google.android.gms.common.Feature;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
/* loaded from: classes2.dex */
public final class zzj extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzj> CREATOR = new j1();

    /* renamed from: a  reason: collision with root package name */
    Bundle f7805a;

    /* renamed from: b  reason: collision with root package name */
    Feature[] f7806b;

    /* renamed from: c  reason: collision with root package name */
    int f7807c;
    @Nullable

    /* renamed from: d  reason: collision with root package name */
    ConnectionTelemetryConfiguration f7808d;

    public zzj() {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzj(Bundle bundle, Feature[] featureArr, int i9, @Nullable ConnectionTelemetryConfiguration connectionTelemetryConfiguration) {
        this.f7805a = bundle;
        this.f7806b = featureArr;
        this.f7807c = i9;
        this.f7808d = connectionTelemetryConfiguration;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i9) {
        int a10 = x3.a.a(parcel);
        x3.a.e(parcel, 1, this.f7805a, false);
        x3.a.t(parcel, 2, this.f7806b, i9, false);
        x3.a.k(parcel, 3, this.f7807c);
        x3.a.p(parcel, 4, this.f7808d, i9, false);
        x3.a.b(parcel, a10);
    }
}
