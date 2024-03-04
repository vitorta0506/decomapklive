package com.google.android.gms.common;

import android.app.PendingIntent;
import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.google.android.gms.common.internal.n;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.huawei.hms.framework.network.grs.GrsBaseInfo;
import com.huawei.hms.support.hianalytics.HiAnalyticsConstant;
/* loaded from: classes2.dex */
public final class ConnectionResult extends AbstractSafeParcelable {
    public static final int API_DISABLED = 23;
    public static final int API_DISABLED_FOR_CONNECTION = 24;
    public static final int API_UNAVAILABLE = 16;
    public static final int CANCELED = 13;
    public static final int DEVELOPER_ERROR = 10;
    @Deprecated
    public static final int DRIVE_EXTERNAL_STORAGE_REQUIRED = 1500;
    public static final int INTERNAL_ERROR = 8;
    public static final int INTERRUPTED = 15;
    public static final int INVALID_ACCOUNT = 5;
    public static final int LICENSE_CHECK_FAILED = 11;
    public static final int NETWORK_ERROR = 7;
    public static final int RESOLUTION_ACTIVITY_NOT_FOUND = 22;
    public static final int RESOLUTION_REQUIRED = 6;
    public static final int RESTRICTED_PROFILE = 20;
    public static final int SERVICE_DISABLED = 3;
    public static final int SERVICE_INVALID = 9;
    public static final int SERVICE_MISSING = 1;
    public static final int SERVICE_MISSING_PERMISSION = 19;
    public static final int SERVICE_UPDATING = 18;
    public static final int SERVICE_VERSION_UPDATE_REQUIRED = 2;
    public static final int SIGN_IN_FAILED = 17;
    public static final int SIGN_IN_REQUIRED = 4;
    public static final int SUCCESS = 0;
    public static final int TIMEOUT = 14;
    public static final int UNKNOWN = -1;

    /* renamed from: a  reason: collision with root package name */
    final int f7450a;
    private final int zzb;
    @Nullable
    private final PendingIntent zzc;
    @Nullable
    private final String zzd;
    @NonNull
    public static final ConnectionResult RESULT_SUCCESS = new ConnectionResult(0);
    @NonNull
    public static final Parcelable.Creator<ConnectionResult> CREATOR = new g();

    public ConnectionResult(int i9) {
        this(i9, null, null);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public ConnectionResult(int i9, int i10, @Nullable PendingIntent pendingIntent, @Nullable String str) {
        this.f7450a = i9;
        this.zzb = i10;
        this.zzc = pendingIntent;
        this.zzd = str;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @NonNull
    public static String R(int i9) {
        if (i9 != 99) {
            if (i9 != 1500) {
                switch (i9) {
                    case -1:
                        return GrsBaseInfo.CountryCodeSource.UNKNOWN;
                    case 0:
                        return "SUCCESS";
                    case 1:
                        return "SERVICE_MISSING";
                    case 2:
                        return "SERVICE_VERSION_UPDATE_REQUIRED";
                    case 3:
                        return "SERVICE_DISABLED";
                    case 4:
                        return "SIGN_IN_REQUIRED";
                    case 5:
                        return "INVALID_ACCOUNT";
                    case 6:
                        return "RESOLUTION_REQUIRED";
                    case 7:
                        return "NETWORK_ERROR";
                    case 8:
                        return "INTERNAL_ERROR";
                    case 9:
                        return "SERVICE_INVALID";
                    case 10:
                        return "DEVELOPER_ERROR";
                    case 11:
                        return "LICENSE_CHECK_FAILED";
                    default:
                        switch (i9) {
                            case 13:
                                return "CANCELED";
                            case 14:
                                return "TIMEOUT";
                            case 15:
                                return "INTERRUPTED";
                            case 16:
                                return "API_UNAVAILABLE";
                            case 17:
                                return "SIGN_IN_FAILED";
                            case 18:
                                return "SERVICE_UPDATING";
                            case 19:
                                return "SERVICE_MISSING_PERMISSION";
                            case 20:
                                return "RESTRICTED_PROFILE";
                            case 21:
                                return "API_VERSION_UPDATE_REQUIRED";
                            case 22:
                                return "RESOLUTION_ACTIVITY_NOT_FOUND";
                            case 23:
                                return "API_DISABLED";
                            case 24:
                                return "API_DISABLED_FOR_CONNECTION";
                            default:
                                return "UNKNOWN_ERROR_CODE(" + i9 + ")";
                        }
                }
            }
            return "DRIVE_EXTERNAL_STORAGE_REQUIRED";
        }
        return "UNFINISHED";
    }

    public int I() {
        return this.zzb;
    }

    @Nullable
    public String K() {
        return this.zzd;
    }

    @Nullable
    public PendingIntent L() {
        return this.zzc;
    }

    public boolean M() {
        return (this.zzb == 0 || this.zzc == null) ? false : true;
    }

    public boolean P() {
        return this.zzb == 0;
    }

    public boolean equals(@Nullable Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof ConnectionResult) {
            ConnectionResult connectionResult = (ConnectionResult) obj;
            return this.zzb == connectionResult.zzb && com.google.android.gms.common.internal.n.b(this.zzc, connectionResult.zzc) && com.google.android.gms.common.internal.n.b(this.zzd, connectionResult.zzd);
        }
        return false;
    }

    public int hashCode() {
        return com.google.android.gms.common.internal.n.c(Integer.valueOf(this.zzb), this.zzc, this.zzd);
    }

    @NonNull
    public String toString() {
        n.a d10 = com.google.android.gms.common.internal.n.d(this);
        d10.a(HiAnalyticsConstant.HaKey.BI_KEY_RESULT, R(this.zzb));
        d10.a("resolution", this.zzc);
        d10.a("message", this.zzd);
        return d10.toString();
    }

    @Override // android.os.Parcelable
    public void writeToParcel(@NonNull Parcel parcel, int i9) {
        int a10 = x3.a.a(parcel);
        x3.a.k(parcel, 1, this.f7450a);
        x3.a.k(parcel, 2, I());
        x3.a.p(parcel, 3, L(), i9, false);
        x3.a.q(parcel, 4, K(), false);
        x3.a.b(parcel, a10);
    }

    public ConnectionResult(int i9, @Nullable PendingIntent pendingIntent) {
        this(i9, pendingIntent, null);
    }

    public ConnectionResult(int i9, @Nullable PendingIntent pendingIntent, @Nullable String str) {
        this(1, i9, pendingIntent, str);
    }
}
