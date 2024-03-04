package com.google.android.gms.auth.api.credentials;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.NonNull;
import com.google.android.gms.common.internal.ReflectedParcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
@Deprecated
/* loaded from: classes2.dex */
public final class CredentialPickerConfig extends AbstractSafeParcelable implements ReflectedParcelable {
    @NonNull
    public static final Parcelable.Creator<CredentialPickerConfig> CREATOR = new b();

    /* renamed from: a  reason: collision with root package name */
    final int f7356a;
    private final boolean zbb;
    private final boolean zbc;
    private final int zbd;

    /* loaded from: classes2.dex */
    public static class a {

        /* renamed from: a  reason: collision with root package name */
        private boolean f7357a = false;

        /* renamed from: b  reason: collision with root package name */
        private boolean f7358b = true;

        /* renamed from: c  reason: collision with root package name */
        private int f7359c = 1;

        @NonNull
        public CredentialPickerConfig a() {
            return new CredentialPickerConfig(2, this.f7357a, this.f7358b, false, this.f7359c);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public CredentialPickerConfig(int i9, boolean z10, boolean z11, boolean z12, int i10) {
        this.f7356a = i9;
        this.zbb = z10;
        this.zbc = z11;
        if (i9 < 2) {
            this.zbd = true == z12 ? 3 : 1;
        } else {
            this.zbd = i10;
        }
    }

    @Deprecated
    public boolean I() {
        return this.zbd == 3;
    }

    public boolean K() {
        return this.zbb;
    }

    public boolean L() {
        return this.zbc;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(@NonNull Parcel parcel, int i9) {
        int a10 = x3.a.a(parcel);
        x3.a.c(parcel, 1, K());
        x3.a.c(parcel, 2, L());
        x3.a.c(parcel, 3, I());
        x3.a.k(parcel, 4, this.zbd);
        x3.a.k(parcel, 1000, this.f7356a);
        x3.a.b(parcel, a10);
    }
}
