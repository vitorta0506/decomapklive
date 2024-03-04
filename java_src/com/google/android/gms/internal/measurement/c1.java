package com.google.android.gms.internal.measurement;

import android.os.Bundle;
import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;
/* loaded from: classes2.dex */
public final class c1 extends n0 implements e1 {
    /* JADX INFO: Access modifiers changed from: package-private */
    public c1(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.measurement.api.internal.IAppMeasurementDynamiteService");
    }

    @Override // com.google.android.gms.internal.measurement.e1
    public final void beginAdUnitExposure(String str, long j10) throws RemoteException {
        Parcel f10 = f();
        f10.writeString(str);
        f10.writeLong(j10);
        E0(23, f10);
    }

    @Override // com.google.android.gms.internal.measurement.e1
    public final void clearConditionalUserProperty(String str, String str2, Bundle bundle) throws RemoteException {
        Parcel f10 = f();
        f10.writeString(str);
        f10.writeString(str2);
        p0.e(f10, bundle);
        E0(9, f10);
    }

    @Override // com.google.android.gms.internal.measurement.e1
    public final void endAdUnitExposure(String str, long j10) throws RemoteException {
        Parcel f10 = f();
        f10.writeString(str);
        f10.writeLong(j10);
        E0(24, f10);
    }

    @Override // com.google.android.gms.internal.measurement.e1
    public final void generateEventId(h1 h1Var) throws RemoteException {
        Parcel f10 = f();
        p0.f(f10, h1Var);
        E0(22, f10);
    }

    @Override // com.google.android.gms.internal.measurement.e1
    public final void getCachedAppInstanceId(h1 h1Var) throws RemoteException {
        Parcel f10 = f();
        p0.f(f10, h1Var);
        E0(19, f10);
    }

    @Override // com.google.android.gms.internal.measurement.e1
    public final void getConditionalUserProperties(String str, String str2, h1 h1Var) throws RemoteException {
        Parcel f10 = f();
        f10.writeString(str);
        f10.writeString(str2);
        p0.f(f10, h1Var);
        E0(10, f10);
    }

    @Override // com.google.android.gms.internal.measurement.e1
    public final void getCurrentScreenClass(h1 h1Var) throws RemoteException {
        Parcel f10 = f();
        p0.f(f10, h1Var);
        E0(17, f10);
    }

    @Override // com.google.android.gms.internal.measurement.e1
    public final void getCurrentScreenName(h1 h1Var) throws RemoteException {
        Parcel f10 = f();
        p0.f(f10, h1Var);
        E0(16, f10);
    }

    @Override // com.google.android.gms.internal.measurement.e1
    public final void getGmpAppId(h1 h1Var) throws RemoteException {
        Parcel f10 = f();
        p0.f(f10, h1Var);
        E0(21, f10);
    }

    @Override // com.google.android.gms.internal.measurement.e1
    public final void getMaxUserProperties(String str, h1 h1Var) throws RemoteException {
        Parcel f10 = f();
        f10.writeString(str);
        p0.f(f10, h1Var);
        E0(6, f10);
    }

    @Override // com.google.android.gms.internal.measurement.e1
    public final void getUserProperties(String str, String str2, boolean z10, h1 h1Var) throws RemoteException {
        Parcel f10 = f();
        f10.writeString(str);
        f10.writeString(str2);
        p0.d(f10, z10);
        p0.f(f10, h1Var);
        E0(5, f10);
    }

    @Override // com.google.android.gms.internal.measurement.e1
    public final void initialize(h4.a aVar, zzcl zzclVar, long j10) throws RemoteException {
        Parcel f10 = f();
        p0.f(f10, aVar);
        p0.e(f10, zzclVar);
        f10.writeLong(j10);
        E0(1, f10);
    }

    @Override // com.google.android.gms.internal.measurement.e1
    public final void logEvent(String str, String str2, Bundle bundle, boolean z10, boolean z11, long j10) throws RemoteException {
        Parcel f10 = f();
        f10.writeString(str);
        f10.writeString(str2);
        p0.e(f10, bundle);
        p0.d(f10, z10);
        p0.d(f10, z11);
        f10.writeLong(j10);
        E0(2, f10);
    }

    @Override // com.google.android.gms.internal.measurement.e1
    public final void logHealthData(int i9, String str, h4.a aVar, h4.a aVar2, h4.a aVar3) throws RemoteException {
        Parcel f10 = f();
        f10.writeInt(5);
        f10.writeString(str);
        p0.f(f10, aVar);
        p0.f(f10, aVar2);
        p0.f(f10, aVar3);
        E0(33, f10);
    }

    @Override // com.google.android.gms.internal.measurement.e1
    public final void onActivityCreated(h4.a aVar, Bundle bundle, long j10) throws RemoteException {
        Parcel f10 = f();
        p0.f(f10, aVar);
        p0.e(f10, bundle);
        f10.writeLong(j10);
        E0(27, f10);
    }

    @Override // com.google.android.gms.internal.measurement.e1
    public final void onActivityDestroyed(h4.a aVar, long j10) throws RemoteException {
        Parcel f10 = f();
        p0.f(f10, aVar);
        f10.writeLong(j10);
        E0(28, f10);
    }

    @Override // com.google.android.gms.internal.measurement.e1
    public final void onActivityPaused(h4.a aVar, long j10) throws RemoteException {
        Parcel f10 = f();
        p0.f(f10, aVar);
        f10.writeLong(j10);
        E0(29, f10);
    }

    @Override // com.google.android.gms.internal.measurement.e1
    public final void onActivityResumed(h4.a aVar, long j10) throws RemoteException {
        Parcel f10 = f();
        p0.f(f10, aVar);
        f10.writeLong(j10);
        E0(30, f10);
    }

    @Override // com.google.android.gms.internal.measurement.e1
    public final void onActivitySaveInstanceState(h4.a aVar, h1 h1Var, long j10) throws RemoteException {
        Parcel f10 = f();
        p0.f(f10, aVar);
        p0.f(f10, h1Var);
        f10.writeLong(j10);
        E0(31, f10);
    }

    @Override // com.google.android.gms.internal.measurement.e1
    public final void onActivityStarted(h4.a aVar, long j10) throws RemoteException {
        Parcel f10 = f();
        p0.f(f10, aVar);
        f10.writeLong(j10);
        E0(25, f10);
    }

    @Override // com.google.android.gms.internal.measurement.e1
    public final void onActivityStopped(h4.a aVar, long j10) throws RemoteException {
        Parcel f10 = f();
        p0.f(f10, aVar);
        f10.writeLong(j10);
        E0(26, f10);
    }

    @Override // com.google.android.gms.internal.measurement.e1
    public final void registerOnMeasurementEventListener(k1 k1Var) throws RemoteException {
        Parcel f10 = f();
        p0.f(f10, k1Var);
        E0(35, f10);
    }

    @Override // com.google.android.gms.internal.measurement.e1
    public final void setConditionalUserProperty(Bundle bundle, long j10) throws RemoteException {
        Parcel f10 = f();
        p0.e(f10, bundle);
        f10.writeLong(j10);
        E0(8, f10);
    }

    @Override // com.google.android.gms.internal.measurement.e1
    public final void setConsentThirdParty(Bundle bundle, long j10) throws RemoteException {
        Parcel f10 = f();
        p0.e(f10, bundle);
        f10.writeLong(j10);
        E0(45, f10);
    }

    @Override // com.google.android.gms.internal.measurement.e1
    public final void setCurrentScreen(h4.a aVar, String str, String str2, long j10) throws RemoteException {
        Parcel f10 = f();
        p0.f(f10, aVar);
        f10.writeString(str);
        f10.writeString(str2);
        f10.writeLong(j10);
        E0(15, f10);
    }

    @Override // com.google.android.gms.internal.measurement.e1
    public final void setDataCollectionEnabled(boolean z10) throws RemoteException {
        Parcel f10 = f();
        p0.d(f10, z10);
        E0(39, f10);
    }

    @Override // com.google.android.gms.internal.measurement.e1
    public final void setUserId(String str, long j10) throws RemoteException {
        Parcel f10 = f();
        f10.writeString(str);
        f10.writeLong(j10);
        E0(7, f10);
    }

    @Override // com.google.android.gms.internal.measurement.e1
    public final void setUserProperty(String str, String str2, h4.a aVar, boolean z10, long j10) throws RemoteException {
        Parcel f10 = f();
        f10.writeString(str);
        f10.writeString(str2);
        p0.f(f10, aVar);
        p0.d(f10, z10);
        f10.writeLong(j10);
        E0(4, f10);
    }

    @Override // com.google.android.gms.internal.measurement.e1
    public final void unregisterOnMeasurementEventListener(k1 k1Var) throws RemoteException {
        Parcel f10 = f();
        p0.f(f10, k1Var);
        E0(36, f10);
    }
}
