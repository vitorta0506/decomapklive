package com.google.android.gms.auth.api.proxy;

import android.app.PendingIntent;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.NonNull;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
/* loaded from: classes2.dex */
public class ProxyResponse extends AbstractSafeParcelable {
    @NonNull
    public static final Parcelable.Creator<ProxyResponse> CREATOR = new b();
    public static final int STATUS_CODE_NO_CONNECTION = -1;

    /* renamed from: a  reason: collision with root package name */
    final int f7364a;

    /* renamed from: b  reason: collision with root package name */
    final Bundle f7365b;
    @NonNull
    public final byte[] body;
    public final int googlePlayServicesStatusCode;
    @NonNull
    public final PendingIntent recoveryAction;
    public final int statusCode;

    /* JADX INFO: Access modifiers changed from: package-private */
    public ProxyResponse(int i9, int i10, PendingIntent pendingIntent, int i11, Bundle bundle, byte[] bArr) {
        this.f7364a = i9;
        this.googlePlayServicesStatusCode = i10;
        this.statusCode = i11;
        this.f7365b = bundle;
        this.body = bArr;
        this.recoveryAction = pendingIntent;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(@NonNull Parcel parcel, int i9) {
        int a10 = x3.a.a(parcel);
        x3.a.k(parcel, 1, this.googlePlayServicesStatusCode);
        x3.a.p(parcel, 2, this.recoveryAction, i9, false);
        x3.a.k(parcel, 3, this.statusCode);
        x3.a.e(parcel, 4, this.f7365b, false);
        x3.a.f(parcel, 5, this.body, false);
        x3.a.k(parcel, 1000, this.f7364a);
        x3.a.b(parcel, a10);
    }
}
