package com.google.android.gms.auth.api.accounttransfer;

import android.app.PendingIntent;
import android.os.Parcel;
import android.os.Parcelable;
import androidx.collection.ArraySet;
import com.google.android.gms.common.server.response.FastJsonResponse;
import com.google.android.gms.internal.auth.zzbz;
import java.util.HashMap;
import java.util.Map;
import java.util.Set;
/* loaded from: classes2.dex */
public final class zzw extends zzbz {
    public static final Parcelable.Creator<zzw> CREATOR = new d();
    private static final HashMap zzc;

    /* renamed from: a  reason: collision with root package name */
    final Set f7354a;

    /* renamed from: b  reason: collision with root package name */
    final int f7355b;
    private String zzd;
    private int zze;
    private byte[] zzf;
    private PendingIntent zzg;
    private DeviceMetaData zzh;

    static {
        HashMap hashMap = new HashMap();
        zzc = hashMap;
        hashMap.put("accountType", FastJsonResponse.Field.M("accountType", 2));
        hashMap.put("status", FastJsonResponse.Field.L("status", 3));
        hashMap.put("transferBytes", FastJsonResponse.Field.d("transferBytes", 4));
    }

    public zzw() {
        this.f7354a = new ArraySet(3);
        this.f7355b = 1;
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
                return Integer.valueOf(this.zze);
            }
            return this.zzd;
        }
        return Integer.valueOf(this.f7355b);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.gms.common.server.response.FastJsonResponse
    public final boolean d(FastJsonResponse.Field field) {
        return this.f7354a.contains(Integer.valueOf(field.R()));
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i9) {
        int a10 = x3.a.a(parcel);
        Set set = this.f7354a;
        if (set.contains(1)) {
            x3.a.k(parcel, 1, this.f7355b);
        }
        if (set.contains(2)) {
            x3.a.q(parcel, 2, this.zzd, true);
        }
        if (set.contains(3)) {
            x3.a.k(parcel, 3, this.zze);
        }
        if (set.contains(4)) {
            x3.a.f(parcel, 4, this.zzf, true);
        }
        if (set.contains(5)) {
            x3.a.p(parcel, 5, this.zzg, i9, true);
        }
        if (set.contains(6)) {
            x3.a.p(parcel, 6, this.zzh, i9, true);
        }
        x3.a.b(parcel, a10);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzw(Set set, int i9, String str, int i10, byte[] bArr, PendingIntent pendingIntent, DeviceMetaData deviceMetaData) {
        this.f7354a = set;
        this.f7355b = i9;
        this.zzd = str;
        this.zze = i10;
        this.zzf = bArr;
        this.zzg = pendingIntent;
        this.zzh = deviceMetaData;
    }
}
