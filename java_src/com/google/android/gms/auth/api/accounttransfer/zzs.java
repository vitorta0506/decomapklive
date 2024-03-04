package com.google.android.gms.auth.api.accounttransfer;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.Nullable;
import androidx.collection.ArrayMap;
import com.facebook.GraphResponse;
import com.google.android.gms.common.server.response.FastJsonResponse;
import com.google.android.gms.internal.auth.zzbz;
import java.util.List;
import java.util.Map;
/* loaded from: classes2.dex */
public final class zzs extends zzbz {
    public static final Parcelable.Creator<zzs> CREATOR = new b();
    private static final ArrayMap zzb;

    /* renamed from: a  reason: collision with root package name */
    final int f7351a;
    private List zzc;
    private List zzd;
    private List zze;
    private List zzf;
    private List zzg;

    static {
        ArrayMap arrayMap = new ArrayMap();
        zzb = arrayMap;
        arrayMap.put("registered", FastJsonResponse.Field.P("registered", 2));
        arrayMap.put("in_progress", FastJsonResponse.Field.P("in_progress", 3));
        arrayMap.put(GraphResponse.SUCCESS_KEY, FastJsonResponse.Field.P(GraphResponse.SUCCESS_KEY, 4));
        arrayMap.put("failed", FastJsonResponse.Field.P("failed", 5));
        arrayMap.put("escrowed", FastJsonResponse.Field.P("escrowed", 6));
    }

    public zzs() {
        this.f7351a = 1;
    }

    @Override // com.google.android.gms.common.server.response.FastJsonResponse
    public final Map a() {
        return zzb;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.gms.common.server.response.FastJsonResponse
    public final Object b(FastJsonResponse.Field field) {
        switch (field.R()) {
            case 1:
                return Integer.valueOf(this.f7351a);
            case 2:
                return this.zzc;
            case 3:
                return this.zzd;
            case 4:
                return this.zze;
            case 5:
                return this.zzf;
            case 6:
                return this.zzg;
            default:
                int R = field.R();
                throw new IllegalStateException("Unknown SafeParcelable id=" + R);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.gms.common.server.response.FastJsonResponse
    public final boolean d(FastJsonResponse.Field field) {
        return true;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i9) {
        int a10 = x3.a.a(parcel);
        x3.a.k(parcel, 1, this.f7351a);
        x3.a.s(parcel, 2, this.zzc, false);
        x3.a.s(parcel, 3, this.zzd, false);
        x3.a.s(parcel, 4, this.zze, false);
        x3.a.s(parcel, 5, this.zzf, false);
        x3.a.s(parcel, 6, this.zzg, false);
        x3.a.b(parcel, a10);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzs(int i9, @Nullable List list, @Nullable List list2, @Nullable List list3, @Nullable List list4, @Nullable List list5) {
        this.f7351a = i9;
        this.zzc = list;
        this.zzd = list2;
        this.zze = list3;
        this.zzf = list4;
        this.zzg = list5;
    }
}
