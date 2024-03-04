package com.google.android.gms.common.moduleinstall.internal;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import b4.b;
import com.google.android.gms.common.Feature;
import com.google.android.gms.common.internal.n;
import com.google.android.gms.common.internal.p;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.moduleinstall.internal.ApiFeatureRequest;
import java.util.Comparator;
import java.util.List;
import x3.a;
/* loaded from: classes2.dex */
public class ApiFeatureRequest extends AbstractSafeParcelable {
    @NonNull
    public static final Parcelable.Creator<ApiFeatureRequest> CREATOR = new b();
    private static final Comparator zaa = new Comparator() { // from class: b4.a
        @Override // java.util.Comparator
        public final int compare(Object obj, Object obj2) {
            Feature feature = (Feature) obj;
            Feature feature2 = (Feature) obj2;
            Parcelable.Creator<ApiFeatureRequest> creator = ApiFeatureRequest.CREATOR;
            if (!feature.I().equals(feature2.I())) {
                return feature.I().compareTo(feature2.I());
            }
            return (feature.K() > feature2.K() ? 1 : (feature.K() == feature2.K() ? 0 : -1));
        }
    };
    private final List zab;
    private final boolean zac;
    @Nullable
    private final String zad;
    @Nullable
    private final String zae;

    public ApiFeatureRequest(@NonNull List list, boolean z10, @Nullable String str, @Nullable String str2) {
        p.j(list);
        this.zab = list;
        this.zac = z10;
        this.zad = str;
        this.zae = str2;
    }

    @NonNull
    public List<Feature> I() {
        return this.zab;
    }

    public final boolean equals(@Nullable Object obj) {
        if (obj != null && (obj instanceof ApiFeatureRequest)) {
            ApiFeatureRequest apiFeatureRequest = (ApiFeatureRequest) obj;
            return this.zac == apiFeatureRequest.zac && n.b(this.zab, apiFeatureRequest.zab) && n.b(this.zad, apiFeatureRequest.zad) && n.b(this.zae, apiFeatureRequest.zae);
        }
        return false;
    }

    public final int hashCode() {
        return n.c(Boolean.valueOf(this.zac), this.zab, this.zad, this.zae);
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(@NonNull Parcel parcel, int i9) {
        int a10 = a.a(parcel);
        a.u(parcel, 1, I(), false);
        a.c(parcel, 2, this.zac);
        a.q(parcel, 3, this.zad, false);
        a.q(parcel, 4, this.zae, false);
        a.b(parcel, a10);
    }
}
