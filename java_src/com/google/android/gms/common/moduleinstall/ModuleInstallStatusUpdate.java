package com.google.android.gms.common.moduleinstall;

import a4.d;
import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.google.android.gms.common.internal.p;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
/* loaded from: classes2.dex */
public class ModuleInstallStatusUpdate extends AbstractSafeParcelable {
    @NonNull
    public static final Parcelable.Creator<ModuleInstallStatusUpdate> CREATOR = new d();
    private final int zaa;
    private final int zab;
    @Nullable
    private final Long zac;
    @Nullable
    private final Long zad;
    private final int zae;
    @Nullable
    private final a zaf;

    /* loaded from: classes2.dex */
    public static class a {

        /* renamed from: a  reason: collision with root package name */
        private final long f7809a;

        /* renamed from: b  reason: collision with root package name */
        private final long f7810b;

        a(long j10, long j11) {
            p.m(j11);
            this.f7809a = j10;
            this.f7810b = j11;
        }
    }

    public ModuleInstallStatusUpdate(int i9, int i10, @Nullable Long l10, @Nullable Long l11, int i11) {
        this.zaa = i9;
        this.zab = i10;
        this.zac = l10;
        this.zad = l11;
        this.zae = i11;
        this.zaf = (l10 == null || l11 == null || l11.longValue() == 0) ? null : new a(l10.longValue(), l11.longValue());
    }

    public int I() {
        return this.zae;
    }

    public int K() {
        return this.zab;
    }

    public int L() {
        return this.zaa;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(@NonNull Parcel parcel, int i9) {
        int a10 = x3.a.a(parcel);
        x3.a.k(parcel, 1, L());
        x3.a.k(parcel, 2, K());
        x3.a.n(parcel, 3, this.zac, false);
        x3.a.n(parcel, 4, this.zad, false);
        x3.a.k(parcel, 5, I());
        x3.a.b(parcel, a10);
    }
}
