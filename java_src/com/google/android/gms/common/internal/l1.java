package com.google.android.gms.common.internal;

import android.accounts.Account;
import android.os.Bundle;
import android.os.IBinder;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.Feature;
import com.google.android.gms.common.api.Scope;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
/* loaded from: classes2.dex */
public final class l1 implements Parcelable.Creator {
    /* JADX INFO: Access modifiers changed from: package-private */
    public static void a(GetServiceRequest getServiceRequest, Parcel parcel, int i9) {
        int a10 = x3.a.a(parcel);
        x3.a.k(parcel, 1, getServiceRequest.f7661a);
        x3.a.k(parcel, 2, getServiceRequest.f7662b);
        x3.a.k(parcel, 3, getServiceRequest.f7663c);
        x3.a.q(parcel, 4, getServiceRequest.f7664d, false);
        x3.a.j(parcel, 5, getServiceRequest.f7665e, false);
        x3.a.t(parcel, 6, getServiceRequest.f7666f, i9, false);
        x3.a.e(parcel, 7, getServiceRequest.f7667g, false);
        x3.a.p(parcel, 8, getServiceRequest.f7668h, i9, false);
        x3.a.t(parcel, 10, getServiceRequest.f7669i, i9, false);
        x3.a.t(parcel, 11, getServiceRequest.f7670j, i9, false);
        x3.a.c(parcel, 12, getServiceRequest.f7671k);
        x3.a.k(parcel, 13, getServiceRequest.f7672l);
        x3.a.c(parcel, 14, getServiceRequest.f7673m);
        x3.a.q(parcel, 15, getServiceRequest.I(), false);
        x3.a.b(parcel, a10);
    }

    @Override // android.os.Parcelable.Creator
    public final /* bridge */ /* synthetic */ Object createFromParcel(Parcel parcel) {
        int I = SafeParcelReader.I(parcel);
        Scope[] scopeArr = GetServiceRequest.f7659n;
        Bundle bundle = new Bundle();
        Feature[] featureArr = GetServiceRequest.f7660o;
        Feature[] featureArr2 = featureArr;
        String str = null;
        IBinder iBinder = null;
        Account account = null;
        String str2 = null;
        int i9 = 0;
        int i10 = 0;
        int i11 = 0;
        boolean z10 = false;
        int i12 = 0;
        boolean z11 = false;
        while (parcel.dataPosition() < I) {
            int B = SafeParcelReader.B(parcel);
            switch (SafeParcelReader.u(B)) {
                case 1:
                    i9 = SafeParcelReader.D(parcel, B);
                    break;
                case 2:
                    i10 = SafeParcelReader.D(parcel, B);
                    break;
                case 3:
                    i11 = SafeParcelReader.D(parcel, B);
                    break;
                case 4:
                    str = SafeParcelReader.o(parcel, B);
                    break;
                case 5:
                    iBinder = SafeParcelReader.C(parcel, B);
                    break;
                case 6:
                    scopeArr = (Scope[]) SafeParcelReader.r(parcel, B, Scope.CREATOR);
                    break;
                case 7:
                    bundle = SafeParcelReader.f(parcel, B);
                    break;
                case 8:
                    account = (Account) SafeParcelReader.n(parcel, B, Account.CREATOR);
                    break;
                case 9:
                default:
                    SafeParcelReader.H(parcel, B);
                    break;
                case 10:
                    featureArr = (Feature[]) SafeParcelReader.r(parcel, B, Feature.CREATOR);
                    break;
                case 11:
                    featureArr2 = (Feature[]) SafeParcelReader.r(parcel, B, Feature.CREATOR);
                    break;
                case 12:
                    z10 = SafeParcelReader.v(parcel, B);
                    break;
                case 13:
                    i12 = SafeParcelReader.D(parcel, B);
                    break;
                case 14:
                    z11 = SafeParcelReader.v(parcel, B);
                    break;
                case 15:
                    str2 = SafeParcelReader.o(parcel, B);
                    break;
            }
        }
        SafeParcelReader.t(parcel, I);
        return new GetServiceRequest(i9, i10, i11, str, iBinder, scopeArr, bundle, account, featureArr, featureArr2, z10, i12, z11, str2);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ Object[] newArray(int i9) {
        return new GetServiceRequest[i9];
    }
}
