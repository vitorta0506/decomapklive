package com.google.android.gms.measurement.internal;

import android.content.Context;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Looper;
import androidx.annotation.NonNull;
import com.google.android.gms.common.internal.d;
/* loaded from: classes2.dex */
public final class f3 extends com.google.android.gms.common.internal.d {
    public f3(Context context, Looper looper, d.a aVar, d.b bVar) {
        super(context, looper, 93, aVar, bVar, null);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.gms.common.internal.d
    @NonNull
    public final String B() {
        return "com.google.android.gms.measurement.internal.IMeasurementService";
    }

    @Override // com.google.android.gms.common.internal.d
    @NonNull
    protected final String C() {
        return "com.google.android.gms.measurement.START";
    }

    @Override // com.google.android.gms.common.internal.d, com.google.android.gms.common.api.a.f
    public final int k() {
        return com.google.android.gms.common.d.f7626a;
    }

    @Override // com.google.android.gms.common.internal.d
    public final /* synthetic */ IInterface p(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.measurement.internal.IMeasurementService");
        return queryLocalInterface instanceof p4.e ? (p4.e) queryLocalInterface : new a3(iBinder);
    }
}
