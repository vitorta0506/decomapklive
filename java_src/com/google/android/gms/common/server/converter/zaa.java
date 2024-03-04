package com.google.android.gms.common.server.converter;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.server.response.FastJsonResponse;
/* loaded from: classes2.dex */
public final class zaa extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zaa> CREATOR = new a();

    /* renamed from: a  reason: collision with root package name */
    final int f7825a;
    private final StringToIntConverter zab;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zaa(int i9, StringToIntConverter stringToIntConverter) {
        this.f7825a = i9;
        this.zab = stringToIntConverter;
    }

    public static zaa d(FastJsonResponse.a aVar) {
        if (aVar instanceof StringToIntConverter) {
            return new zaa((StringToIntConverter) aVar);
        }
        throw new IllegalArgumentException("Unsupported safe parcelable field converter class.");
    }

    public final FastJsonResponse.a I() {
        StringToIntConverter stringToIntConverter = this.zab;
        if (stringToIntConverter != null) {
            return stringToIntConverter;
        }
        throw new IllegalStateException("There was no converter wrapped in this ConverterWrapper.");
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i9) {
        int a10 = x3.a.a(parcel);
        x3.a.k(parcel, 1, this.f7825a);
        x3.a.p(parcel, 2, this.zab, i9, false);
        x3.a.b(parcel, a10);
    }

    private zaa(StringToIntConverter stringToIntConverter) {
        this.f7825a = 1;
        this.zab = stringToIntConverter;
    }
}
