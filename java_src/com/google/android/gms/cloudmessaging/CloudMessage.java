package com.google.android.gms.cloudmessaging;

import android.content.Intent;
import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.NonNull;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import java.util.Map;
/* loaded from: classes2.dex */
public final class CloudMessage extends AbstractSafeParcelable {
    @NonNull
    public static final Parcelable.Creator<CloudMessage> CREATOR = new c();
    public static final int PRIORITY_HIGH = 1;
    public static final int PRIORITY_NORMAL = 2;
    public static final int PRIORITY_UNKNOWN = 0;
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    Intent f7392a;
    private Map<String, String> zzb;

    public CloudMessage(@NonNull Intent intent) {
        this.f7392a = intent;
    }

    @NonNull
    public Intent I() {
        return this.f7392a;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(@NonNull Parcel parcel, int i9) {
        int a10 = x3.a.a(parcel);
        x3.a.p(parcel, 1, this.f7392a, i9, false);
        x3.a.b(parcel, a10);
    }
}
