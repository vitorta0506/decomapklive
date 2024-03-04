package com.google.android.gms.common.internal;

import android.accounts.Account;
import android.os.Bundle;
import android.os.IBinder;
import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.google.android.gms.common.Feature;
import com.google.android.gms.common.api.Scope;
import com.google.android.gms.common.internal.i;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
/* loaded from: classes2.dex */
public class GetServiceRequest extends AbstractSafeParcelable {
    @NonNull
    public static final Parcelable.Creator<GetServiceRequest> CREATOR = new l1();

    /* renamed from: n  reason: collision with root package name */
    static final Scope[] f7659n = new Scope[0];

    /* renamed from: o  reason: collision with root package name */
    static final Feature[] f7660o = new Feature[0];

    /* renamed from: a  reason: collision with root package name */
    final int f7661a;

    /* renamed from: b  reason: collision with root package name */
    final int f7662b;

    /* renamed from: c  reason: collision with root package name */
    int f7663c;

    /* renamed from: d  reason: collision with root package name */
    String f7664d;
    @Nullable

    /* renamed from: e  reason: collision with root package name */
    IBinder f7665e;

    /* renamed from: f  reason: collision with root package name */
    Scope[] f7666f;

    /* renamed from: g  reason: collision with root package name */
    Bundle f7667g;
    @Nullable

    /* renamed from: h  reason: collision with root package name */
    Account f7668h;

    /* renamed from: i  reason: collision with root package name */
    Feature[] f7669i;

    /* renamed from: j  reason: collision with root package name */
    Feature[] f7670j;

    /* renamed from: k  reason: collision with root package name */
    boolean f7671k;

    /* renamed from: l  reason: collision with root package name */
    int f7672l;

    /* renamed from: m  reason: collision with root package name */
    boolean f7673m;
    @Nullable
    private String zzp;

    /* JADX INFO: Access modifiers changed from: package-private */
    public GetServiceRequest(int i9, int i10, int i11, String str, @Nullable IBinder iBinder, Scope[] scopeArr, Bundle bundle, @Nullable Account account, Feature[] featureArr, Feature[] featureArr2, boolean z10, int i12, boolean z11, @Nullable String str2) {
        scopeArr = scopeArr == null ? f7659n : scopeArr;
        bundle = bundle == null ? new Bundle() : bundle;
        featureArr = featureArr == null ? f7660o : featureArr;
        featureArr2 = featureArr2 == null ? f7660o : featureArr2;
        this.f7661a = i9;
        this.f7662b = i10;
        this.f7663c = i11;
        if ("com.google.android.gms".equals(str)) {
            this.f7664d = "com.google.android.gms";
        } else {
            this.f7664d = str;
        }
        if (i9 < 2) {
            this.f7668h = iBinder != null ? a.D0(i.a.f(iBinder)) : null;
        } else {
            this.f7665e = iBinder;
            this.f7668h = account;
        }
        this.f7666f = scopeArr;
        this.f7667g = bundle;
        this.f7669i = featureArr;
        this.f7670j = featureArr2;
        this.f7671k = z10;
        this.f7672l = i12;
        this.f7673m = z11;
        this.zzp = str2;
    }

    @Nullable
    public final String I() {
        return this.zzp;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(@NonNull Parcel parcel, int i9) {
        l1.a(this, parcel, i9);
    }
}
