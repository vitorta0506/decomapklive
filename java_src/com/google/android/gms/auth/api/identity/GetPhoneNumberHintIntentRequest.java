package com.google.android.gms.auth.api.identity;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.google.android.gms.common.internal.n;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
/* loaded from: classes2.dex */
public class GetPhoneNumberHintIntentRequest extends AbstractSafeParcelable {
    @NonNull
    public static final Parcelable.Creator<GetPhoneNumberHintIntentRequest> CREATOR = new b();
    private final int zba;

    /* JADX INFO: Access modifiers changed from: package-private */
    public GetPhoneNumberHintIntentRequest(int i9) {
        this.zba = i9;
    }

    public boolean equals(@Nullable Object obj) {
        if (obj instanceof GetPhoneNumberHintIntentRequest) {
            return n.b(Integer.valueOf(this.zba), Integer.valueOf(((GetPhoneNumberHintIntentRequest) obj).zba));
        }
        return false;
    }

    public int hashCode() {
        return n.c(Integer.valueOf(this.zba));
    }

    @Override // android.os.Parcelable
    public void writeToParcel(@NonNull Parcel parcel, int i9) {
        int a10 = x3.a.a(parcel);
        x3.a.k(parcel, 1, this.zba);
        x3.a.b(parcel, a10);
    }
}
