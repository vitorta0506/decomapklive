package com.google.android.gms.auth.api.accounttransfer;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.server.response.FastJsonResponse;
import com.google.android.gms.internal.auth.zzbz;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Map;
import java.util.Set;
/* loaded from: classes2.dex */
public final class zzu extends zzbz {
    public static final Parcelable.Creator<zzu> CREATOR = new c();
    private static final HashMap zzc;

    /* renamed from: a  reason: collision with root package name */
    final Set f7352a;

    /* renamed from: b  reason: collision with root package name */
    final int f7353b;
    private zzw zzd;
    private String zze;
    private String zzf;
    private String zzg;

    static {
        HashMap hashMap = new HashMap();
        zzc = hashMap;
        hashMap.put("authenticatorInfo", FastJsonResponse.Field.I("authenticatorInfo", 2, zzw.class));
        hashMap.put("signature", FastJsonResponse.Field.M("signature", 3));
        hashMap.put("package", FastJsonResponse.Field.M("package", 4));
    }

    public zzu() {
        this.f7352a = new HashSet(3);
        this.f7353b = 1;
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
                if (R != 3) {
                    if (R == 4) {
                        return this.zzf;
                    }
                    int R2 = field.R();
                    throw new IllegalStateException("Unknown SafeParcelable id=" + R2);
                }
                return this.zze;
            }
            return this.zzd;
        }
        return Integer.valueOf(this.f7353b);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.gms.common.server.response.FastJsonResponse
    public final boolean d(FastJsonResponse.Field field) {
        return this.f7352a.contains(Integer.valueOf(field.R()));
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i9) {
        int a10 = x3.a.a(parcel);
        Set set = this.f7352a;
        if (set.contains(1)) {
            x3.a.k(parcel, 1, this.f7353b);
        }
        if (set.contains(2)) {
            x3.a.p(parcel, 2, this.zzd, i9, true);
        }
        if (set.contains(3)) {
            x3.a.q(parcel, 3, this.zze, true);
        }
        if (set.contains(4)) {
            x3.a.q(parcel, 4, this.zzf, true);
        }
        if (set.contains(5)) {
            x3.a.q(parcel, 5, this.zzg, true);
        }
        x3.a.b(parcel, a10);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzu(Set set, int i9, zzw zzwVar, String str, String str2, String str3) {
        this.f7352a = set;
        this.f7353b = i9;
        this.zzd = zzwVar;
        this.zze = str;
        this.zzf = str2;
        this.zzg = str3;
    }
}
