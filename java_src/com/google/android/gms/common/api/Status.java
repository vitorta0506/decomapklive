package com.google.android.gms.common.api;

import android.app.Activity;
import android.app.PendingIntent;
import android.content.IntentSender;
import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.internal.ReflectedParcelable;
import com.google.android.gms.common.internal.n;
import com.google.android.gms.common.internal.p;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.huawei.hms.support.hianalytics.HiAnalyticsConstant;
/* loaded from: classes2.dex */
public final class Status extends AbstractSafeParcelable implements i, ReflectedParcelable {

    /* renamed from: a  reason: collision with root package name */
    final int f7467a;
    private final int zzc;
    @Nullable
    private final String zzd;
    @Nullable
    private final PendingIntent zze;
    @Nullable
    private final ConnectionResult zzf;
    @NonNull
    public static final Status RESULT_SUCCESS_CACHE = new Status(-1);
    @NonNull
    public static final Status RESULT_SUCCESS = new Status(0);
    @NonNull
    public static final Status RESULT_INTERRUPTED = new Status(14);
    @NonNull
    public static final Status RESULT_INTERNAL_ERROR = new Status(8);
    @NonNull
    public static final Status RESULT_TIMEOUT = new Status(15);
    @NonNull
    public static final Status RESULT_CANCELED = new Status(16);
    @NonNull
    public static final Status zza = new Status(17);
    @NonNull
    public static final Status RESULT_DEAD_CLIENT = new Status(18);
    @NonNull
    public static final Parcelable.Creator<Status> CREATOR = new o();

    public Status(int i9) {
        this(i9, (String) null);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public Status(int i9, int i10, @Nullable String str, @Nullable PendingIntent pendingIntent, @Nullable ConnectionResult connectionResult) {
        this.f7467a = i9;
        this.zzc = i10;
        this.zzd = str;
        this.zze = pendingIntent;
        this.zzf = connectionResult;
    }

    @Nullable
    public ConnectionResult I() {
        return this.zzf;
    }

    @Nullable
    public PendingIntent K() {
        return this.zze;
    }

    public int L() {
        return this.zzc;
    }

    @Nullable
    public String M() {
        return this.zzd;
    }

    public boolean P() {
        return this.zze != null;
    }

    public boolean R() {
        return this.zzc <= 0;
    }

    public void c0(@NonNull Activity activity, int i9) throws IntentSender.SendIntentException {
        if (P()) {
            PendingIntent pendingIntent = this.zze;
            p.j(pendingIntent);
            activity.startIntentSenderForResult(pendingIntent.getIntentSender(), i9, null, 0, 0, 0);
        }
    }

    public boolean equals(@Nullable Object obj) {
        if (obj instanceof Status) {
            Status status = (Status) obj;
            return this.f7467a == status.f7467a && this.zzc == status.zzc && com.google.android.gms.common.internal.n.b(this.zzd, status.zzd) && com.google.android.gms.common.internal.n.b(this.zze, status.zze) && com.google.android.gms.common.internal.n.b(this.zzf, status.zzf);
        }
        return false;
    }

    @NonNull
    public final String f0() {
        String str = this.zzd;
        return str != null ? str : b.a(this.zzc);
    }

    @Override // com.google.android.gms.common.api.i
    @NonNull
    public Status getStatus() {
        return this;
    }

    public int hashCode() {
        return com.google.android.gms.common.internal.n.c(Integer.valueOf(this.f7467a), Integer.valueOf(this.zzc), this.zzd, this.zze, this.zzf);
    }

    @NonNull
    public String toString() {
        n.a d10 = com.google.android.gms.common.internal.n.d(this);
        d10.a(HiAnalyticsConstant.HaKey.BI_KEY_RESULT, f0());
        d10.a("resolution", this.zze);
        return d10.toString();
    }

    @Override // android.os.Parcelable
    public void writeToParcel(@NonNull Parcel parcel, int i9) {
        int a10 = x3.a.a(parcel);
        x3.a.k(parcel, 1, L());
        x3.a.q(parcel, 2, M(), false);
        x3.a.p(parcel, 3, this.zze, i9, false);
        x3.a.p(parcel, 4, I(), i9, false);
        x3.a.k(parcel, 1000, this.f7467a);
        x3.a.b(parcel, a10);
    }

    public Status(int i9, @Nullable String str) {
        this(1, i9, str, null, null);
    }

    public Status(int i9, @Nullable String str, @Nullable PendingIntent pendingIntent) {
        this(1, i9, str, pendingIntent, null);
    }

    public Status(@NonNull ConnectionResult connectionResult, @NonNull String str) {
        this(connectionResult, str, 17);
    }

    @Deprecated
    public Status(@NonNull ConnectionResult connectionResult, @NonNull String str, int i9) {
        this(1, i9, str, connectionResult.L(), connectionResult);
    }
}
