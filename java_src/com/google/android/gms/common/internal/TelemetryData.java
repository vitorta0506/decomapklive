package com.google.android.gms.common.internal;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes2.dex */
public class TelemetryData extends AbstractSafeParcelable {
    @NonNull
    public static final Parcelable.Creator<TelemetryData> CREATOR = new w();
    private final int zaa;
    private List zab;

    public TelemetryData(int i9, List list) {
        this.zaa = i9;
        this.zab = list;
    }

    public final int I() {
        return this.zaa;
    }

    @Nullable
    public final List K() {
        return this.zab;
    }

    public final void L(@NonNull MethodInvocation methodInvocation) {
        if (this.zab == null) {
            this.zab = new ArrayList();
        }
        this.zab.add(methodInvocation);
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(@NonNull Parcel parcel, int i9) {
        int a10 = x3.a.a(parcel);
        x3.a.k(parcel, 1, this.zaa);
        x3.a.u(parcel, 2, this.zab, false);
        x3.a.b(parcel, a10);
    }
}
