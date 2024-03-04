package com.google.android.gms.common.server.converter;

import android.os.Parcel;
import android.os.Parcelable;
import android.util.SparseArray;
import androidx.annotation.NonNull;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.server.response.FastJsonResponse;
import java.util.ArrayList;
import java.util.HashMap;
/* loaded from: classes2.dex */
public final class StringToIntConverter extends AbstractSafeParcelable implements FastJsonResponse.a<String, Integer> {
    @NonNull
    public static final Parcelable.Creator<StringToIntConverter> CREATOR = new b();

    /* renamed from: a  reason: collision with root package name */
    final int f7824a;
    private final HashMap zab;
    private final SparseArray zac;

    public StringToIntConverter() {
        this.f7824a = 1;
        this.zab = new HashMap();
        this.zac = new SparseArray();
    }

    @Override // com.google.android.gms.common.server.response.FastJsonResponse.a
    @NonNull
    public final /* bridge */ /* synthetic */ Object c(@NonNull Object obj) {
        String str = (String) this.zac.get(((Integer) obj).intValue());
        return (str == null && this.zab.containsKey("gms_unknown")) ? "gms_unknown" : str;
    }

    @NonNull
    public StringToIntConverter d(@NonNull String str, int i9) {
        this.zab.put(str, Integer.valueOf(i9));
        this.zac.put(i9, str);
        return this;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(@NonNull Parcel parcel, int i9) {
        int a10 = x3.a.a(parcel);
        x3.a.k(parcel, 1, this.f7824a);
        ArrayList arrayList = new ArrayList();
        for (String str : this.zab.keySet()) {
            arrayList.add(new zac(str, ((Integer) this.zab.get(str)).intValue()));
        }
        x3.a.u(parcel, 2, arrayList, false);
        x3.a.b(parcel, a10);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public StringToIntConverter(int i9, ArrayList arrayList) {
        this.f7824a = i9;
        this.zab = new HashMap();
        this.zac = new SparseArray();
        int size = arrayList.size();
        for (int i10 = 0; i10 < size; i10++) {
            zac zacVar = (zac) arrayList.get(i10);
            d(zacVar.f7827b, zacVar.f7828c);
        }
    }
}
