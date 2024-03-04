package com.google.android.gms.auth.api.accounttransfer;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.server.response.FastJsonResponse;
import com.google.android.gms.internal.auth.zzbz;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Map;
import java.util.Set;
/* loaded from: classes2.dex */
public final class zzo extends zzbz {
    public static final Parcelable.Creator<zzo> CREATOR = new a();
    private static final HashMap zzc;

    /* renamed from: a  reason: collision with root package name */
    final Set f7349a;

    /* renamed from: b  reason: collision with root package name */
    final int f7350b;
    private ArrayList zzd;
    private int zze;
    private zzs zzf;

    static {
        HashMap hashMap = new HashMap();
        zzc = hashMap;
        hashMap.put("authenticatorData", FastJsonResponse.Field.K("authenticatorData", 2, zzu.class));
        hashMap.put("progress", FastJsonResponse.Field.I("progress", 4, zzs.class));
    }

    public zzo() {
        this.f7349a = new HashSet(1);
        this.f7350b = 1;
    }

    @Override // com.google.android.gms.common.server.response.FastJsonResponse
    public final /* synthetic */ Map a() {
        return zzc;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.gms.common.server.response.FastJsonResponse
    public final Object b(FastJsonResponse.Field field) {
        int R = field.R();
        if (R != 1) {
            if (R != 2) {
                if (R == 4) {
                    return this.zzf;
                }
                int R2 = field.R();
                throw new IllegalStateException("Unknown SafeParcelable id=" + R2);
            }
            return this.zzd;
        }
        return Integer.valueOf(this.f7350b);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.gms.common.server.response.FastJsonResponse
    public final boolean d(FastJsonResponse.Field field) {
        return this.f7349a.contains(Integer.valueOf(field.R()));
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i9) {
        int a10 = x3.a.a(parcel);
        Set set = this.f7349a;
        if (set.contains(1)) {
            x3.a.k(parcel, 1, this.f7350b);
        }
        if (set.contains(2)) {
            x3.a.u(parcel, 2, this.zzd, true);
        }
        if (set.contains(3)) {
            x3.a.k(parcel, 3, this.zze);
        }
        if (set.contains(4)) {
            x3.a.p(parcel, 4, this.zzf, i9, true);
        }
        x3.a.b(parcel, a10);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzo(Set set, int i9, ArrayList arrayList, int i10, zzs zzsVar) {
        this.f7349a = set;
        this.f7350b = i9;
        this.zzd = arrayList;
        this.zze = i10;
        this.zzf = zzsVar;
    }
}
