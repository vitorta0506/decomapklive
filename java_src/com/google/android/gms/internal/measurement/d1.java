package com.google.android.gms.internal.measurement;

import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import h4.a;
import java.util.HashMap;
/* loaded from: classes2.dex */
public abstract class d1 extends o0 implements e1 {
    public d1() {
        super("com.google.android.gms.measurement.api.internal.IAppMeasurementDynamiteService");
    }

    public static e1 asInterface(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.measurement.api.internal.IAppMeasurementDynamiteService");
        return queryLocalInterface instanceof e1 ? (e1) queryLocalInterface : new c1(iBinder);
    }

    @Override // com.google.android.gms.internal.measurement.o0
    protected final boolean b(int i9, Parcel parcel, Parcel parcel2, int i10) throws RemoteException {
        h1 f1Var;
        h1 h1Var = null;
        h1 h1Var2 = null;
        h1 h1Var3 = null;
        k1 k1Var = null;
        k1 k1Var2 = null;
        k1 k1Var3 = null;
        h1 h1Var4 = null;
        h1 h1Var5 = null;
        h1 h1Var6 = null;
        h1 h1Var7 = null;
        h1 h1Var8 = null;
        h1 h1Var9 = null;
        m1 m1Var = null;
        h1 h1Var10 = null;
        h1 h1Var11 = null;
        h1 h1Var12 = null;
        h1 h1Var13 = null;
        switch (i9) {
            case 1:
                long readLong = parcel.readLong();
                p0.c(parcel);
                initialize(a.AbstractBinderC0438a.f(parcel.readStrongBinder()), (zzcl) p0.a(parcel, zzcl.CREATOR), readLong);
                break;
            case 2:
                boolean g10 = p0.g(parcel);
                boolean g11 = p0.g(parcel);
                long readLong2 = parcel.readLong();
                p0.c(parcel);
                logEvent(parcel.readString(), parcel.readString(), (Bundle) p0.a(parcel, Bundle.CREATOR), g10, g11, readLong2);
                break;
            case 3:
                String readString = parcel.readString();
                String readString2 = parcel.readString();
                Bundle bundle = (Bundle) p0.a(parcel, Bundle.CREATOR);
                IBinder readStrongBinder = parcel.readStrongBinder();
                if (readStrongBinder == null) {
                    f1Var = null;
                } else {
                    IInterface queryLocalInterface = readStrongBinder.queryLocalInterface("com.google.android.gms.measurement.api.internal.IBundleReceiver");
                    f1Var = queryLocalInterface instanceof h1 ? (h1) queryLocalInterface : new f1(readStrongBinder);
                }
                long readLong3 = parcel.readLong();
                p0.c(parcel);
                logEventAndBundle(readString, readString2, bundle, f1Var, readLong3);
                break;
            case 4:
                String readString3 = parcel.readString();
                String readString4 = parcel.readString();
                h4.a f10 = a.AbstractBinderC0438a.f(parcel.readStrongBinder());
                boolean g12 = p0.g(parcel);
                long readLong4 = parcel.readLong();
                p0.c(parcel);
                setUserProperty(readString3, readString4, f10, g12, readLong4);
                break;
            case 5:
                String readString5 = parcel.readString();
                String readString6 = parcel.readString();
                boolean g13 = p0.g(parcel);
                IBinder readStrongBinder2 = parcel.readStrongBinder();
                if (readStrongBinder2 != null) {
                    IInterface queryLocalInterface2 = readStrongBinder2.queryLocalInterface("com.google.android.gms.measurement.api.internal.IBundleReceiver");
                    h1Var = queryLocalInterface2 instanceof h1 ? (h1) queryLocalInterface2 : new f1(readStrongBinder2);
                }
                p0.c(parcel);
                getUserProperties(readString5, readString6, g13, h1Var);
                break;
            case 6:
                String readString7 = parcel.readString();
                IBinder readStrongBinder3 = parcel.readStrongBinder();
                if (readStrongBinder3 != null) {
                    IInterface queryLocalInterface3 = readStrongBinder3.queryLocalInterface("com.google.android.gms.measurement.api.internal.IBundleReceiver");
                    h1Var13 = queryLocalInterface3 instanceof h1 ? (h1) queryLocalInterface3 : new f1(readStrongBinder3);
                }
                p0.c(parcel);
                getMaxUserProperties(readString7, h1Var13);
                break;
            case 7:
                String readString8 = parcel.readString();
                long readLong5 = parcel.readLong();
                p0.c(parcel);
                setUserId(readString8, readLong5);
                break;
            case 8:
                long readLong6 = parcel.readLong();
                p0.c(parcel);
                setConditionalUserProperty((Bundle) p0.a(parcel, Bundle.CREATOR), readLong6);
                break;
            case 9:
                p0.c(parcel);
                clearConditionalUserProperty(parcel.readString(), parcel.readString(), (Bundle) p0.a(parcel, Bundle.CREATOR));
                break;
            case 10:
                String readString9 = parcel.readString();
                String readString10 = parcel.readString();
                IBinder readStrongBinder4 = parcel.readStrongBinder();
                if (readStrongBinder4 != null) {
                    IInterface queryLocalInterface4 = readStrongBinder4.queryLocalInterface("com.google.android.gms.measurement.api.internal.IBundleReceiver");
                    h1Var12 = queryLocalInterface4 instanceof h1 ? (h1) queryLocalInterface4 : new f1(readStrongBinder4);
                }
                p0.c(parcel);
                getConditionalUserProperties(readString9, readString10, h1Var12);
                break;
            case 11:
                boolean g14 = p0.g(parcel);
                long readLong7 = parcel.readLong();
                p0.c(parcel);
                setMeasurementEnabled(g14, readLong7);
                break;
            case 12:
                long readLong8 = parcel.readLong();
                p0.c(parcel);
                resetAnalyticsData(readLong8);
                break;
            case 13:
                long readLong9 = parcel.readLong();
                p0.c(parcel);
                setMinimumSessionDuration(readLong9);
                break;
            case 14:
                long readLong10 = parcel.readLong();
                p0.c(parcel);
                setSessionTimeoutDuration(readLong10);
                break;
            case 15:
                h4.a f11 = a.AbstractBinderC0438a.f(parcel.readStrongBinder());
                String readString11 = parcel.readString();
                String readString12 = parcel.readString();
                long readLong11 = parcel.readLong();
                p0.c(parcel);
                setCurrentScreen(f11, readString11, readString12, readLong11);
                break;
            case 16:
                IBinder readStrongBinder5 = parcel.readStrongBinder();
                if (readStrongBinder5 != null) {
                    IInterface queryLocalInterface5 = readStrongBinder5.queryLocalInterface("com.google.android.gms.measurement.api.internal.IBundleReceiver");
                    h1Var11 = queryLocalInterface5 instanceof h1 ? (h1) queryLocalInterface5 : new f1(readStrongBinder5);
                }
                p0.c(parcel);
                getCurrentScreenName(h1Var11);
                break;
            case 17:
                IBinder readStrongBinder6 = parcel.readStrongBinder();
                if (readStrongBinder6 != null) {
                    IInterface queryLocalInterface6 = readStrongBinder6.queryLocalInterface("com.google.android.gms.measurement.api.internal.IBundleReceiver");
                    h1Var10 = queryLocalInterface6 instanceof h1 ? (h1) queryLocalInterface6 : new f1(readStrongBinder6);
                }
                p0.c(parcel);
                getCurrentScreenClass(h1Var10);
                break;
            case 18:
                IBinder readStrongBinder7 = parcel.readStrongBinder();
                if (readStrongBinder7 != null) {
                    IInterface queryLocalInterface7 = readStrongBinder7.queryLocalInterface("com.google.android.gms.measurement.api.internal.IStringProvider");
                    m1Var = queryLocalInterface7 instanceof m1 ? (m1) queryLocalInterface7 : new l1(readStrongBinder7);
                }
                p0.c(parcel);
                setInstanceIdProvider(m1Var);
                break;
            case 19:
                IBinder readStrongBinder8 = parcel.readStrongBinder();
                if (readStrongBinder8 != null) {
                    IInterface queryLocalInterface8 = readStrongBinder8.queryLocalInterface("com.google.android.gms.measurement.api.internal.IBundleReceiver");
                    h1Var9 = queryLocalInterface8 instanceof h1 ? (h1) queryLocalInterface8 : new f1(readStrongBinder8);
                }
                p0.c(parcel);
                getCachedAppInstanceId(h1Var9);
                break;
            case 20:
                IBinder readStrongBinder9 = parcel.readStrongBinder();
                if (readStrongBinder9 != null) {
                    IInterface queryLocalInterface9 = readStrongBinder9.queryLocalInterface("com.google.android.gms.measurement.api.internal.IBundleReceiver");
                    h1Var8 = queryLocalInterface9 instanceof h1 ? (h1) queryLocalInterface9 : new f1(readStrongBinder9);
                }
                p0.c(parcel);
                getAppInstanceId(h1Var8);
                break;
            case 21:
                IBinder readStrongBinder10 = parcel.readStrongBinder();
                if (readStrongBinder10 != null) {
                    IInterface queryLocalInterface10 = readStrongBinder10.queryLocalInterface("com.google.android.gms.measurement.api.internal.IBundleReceiver");
                    h1Var7 = queryLocalInterface10 instanceof h1 ? (h1) queryLocalInterface10 : new f1(readStrongBinder10);
                }
                p0.c(parcel);
                getGmpAppId(h1Var7);
                break;
            case 22:
                IBinder readStrongBinder11 = parcel.readStrongBinder();
                if (readStrongBinder11 != null) {
                    IInterface queryLocalInterface11 = readStrongBinder11.queryLocalInterface("com.google.android.gms.measurement.api.internal.IBundleReceiver");
                    h1Var6 = queryLocalInterface11 instanceof h1 ? (h1) queryLocalInterface11 : new f1(readStrongBinder11);
                }
                p0.c(parcel);
                generateEventId(h1Var6);
                break;
            case 23:
                String readString13 = parcel.readString();
                long readLong12 = parcel.readLong();
                p0.c(parcel);
                beginAdUnitExposure(readString13, readLong12);
                break;
            case 24:
                String readString14 = parcel.readString();
                long readLong13 = parcel.readLong();
                p0.c(parcel);
                endAdUnitExposure(readString14, readLong13);
                break;
            case 25:
                h4.a f12 = a.AbstractBinderC0438a.f(parcel.readStrongBinder());
                long readLong14 = parcel.readLong();
                p0.c(parcel);
                onActivityStarted(f12, readLong14);
                break;
            case 26:
                h4.a f13 = a.AbstractBinderC0438a.f(parcel.readStrongBinder());
                long readLong15 = parcel.readLong();
                p0.c(parcel);
                onActivityStopped(f13, readLong15);
                break;
            case 27:
                long readLong16 = parcel.readLong();
                p0.c(parcel);
                onActivityCreated(a.AbstractBinderC0438a.f(parcel.readStrongBinder()), (Bundle) p0.a(parcel, Bundle.CREATOR), readLong16);
                break;
            case 28:
                h4.a f14 = a.AbstractBinderC0438a.f(parcel.readStrongBinder());
                long readLong17 = parcel.readLong();
                p0.c(parcel);
                onActivityDestroyed(f14, readLong17);
                break;
            case 29:
                h4.a f15 = a.AbstractBinderC0438a.f(parcel.readStrongBinder());
                long readLong18 = parcel.readLong();
                p0.c(parcel);
                onActivityPaused(f15, readLong18);
                break;
            case 30:
                h4.a f16 = a.AbstractBinderC0438a.f(parcel.readStrongBinder());
                long readLong19 = parcel.readLong();
                p0.c(parcel);
                onActivityResumed(f16, readLong19);
                break;
            case 31:
                h4.a f17 = a.AbstractBinderC0438a.f(parcel.readStrongBinder());
                IBinder readStrongBinder12 = parcel.readStrongBinder();
                if (readStrongBinder12 != null) {
                    IInterface queryLocalInterface12 = readStrongBinder12.queryLocalInterface("com.google.android.gms.measurement.api.internal.IBundleReceiver");
                    h1Var5 = queryLocalInterface12 instanceof h1 ? (h1) queryLocalInterface12 : new f1(readStrongBinder12);
                }
                long readLong20 = parcel.readLong();
                p0.c(parcel);
                onActivitySaveInstanceState(f17, h1Var5, readLong20);
                break;
            case 32:
                Bundle bundle2 = (Bundle) p0.a(parcel, Bundle.CREATOR);
                IBinder readStrongBinder13 = parcel.readStrongBinder();
                if (readStrongBinder13 != null) {
                    IInterface queryLocalInterface13 = readStrongBinder13.queryLocalInterface("com.google.android.gms.measurement.api.internal.IBundleReceiver");
                    h1Var4 = queryLocalInterface13 instanceof h1 ? (h1) queryLocalInterface13 : new f1(readStrongBinder13);
                }
                long readLong21 = parcel.readLong();
                p0.c(parcel);
                performAction(bundle2, h1Var4, readLong21);
                break;
            case 33:
                int readInt = parcel.readInt();
                String readString15 = parcel.readString();
                h4.a f18 = a.AbstractBinderC0438a.f(parcel.readStrongBinder());
                h4.a f19 = a.AbstractBinderC0438a.f(parcel.readStrongBinder());
                h4.a f20 = a.AbstractBinderC0438a.f(parcel.readStrongBinder());
                p0.c(parcel);
                logHealthData(readInt, readString15, f18, f19, f20);
                break;
            case 34:
                IBinder readStrongBinder14 = parcel.readStrongBinder();
                if (readStrongBinder14 != null) {
                    IInterface queryLocalInterface14 = readStrongBinder14.queryLocalInterface("com.google.android.gms.measurement.api.internal.IEventHandlerProxy");
                    k1Var3 = queryLocalInterface14 instanceof k1 ? (k1) queryLocalInterface14 : new i1(readStrongBinder14);
                }
                p0.c(parcel);
                setEventInterceptor(k1Var3);
                break;
            case 35:
                IBinder readStrongBinder15 = parcel.readStrongBinder();
                if (readStrongBinder15 != null) {
                    IInterface queryLocalInterface15 = readStrongBinder15.queryLocalInterface("com.google.android.gms.measurement.api.internal.IEventHandlerProxy");
                    k1Var2 = queryLocalInterface15 instanceof k1 ? (k1) queryLocalInterface15 : new i1(readStrongBinder15);
                }
                p0.c(parcel);
                registerOnMeasurementEventListener(k1Var2);
                break;
            case 36:
                IBinder readStrongBinder16 = parcel.readStrongBinder();
                if (readStrongBinder16 != null) {
                    IInterface queryLocalInterface16 = readStrongBinder16.queryLocalInterface("com.google.android.gms.measurement.api.internal.IEventHandlerProxy");
                    k1Var = queryLocalInterface16 instanceof k1 ? (k1) queryLocalInterface16 : new i1(readStrongBinder16);
                }
                p0.c(parcel);
                unregisterOnMeasurementEventListener(k1Var);
                break;
            case 37:
                HashMap b10 = p0.b(parcel);
                p0.c(parcel);
                initForTests(b10);
                break;
            case 38:
                IBinder readStrongBinder17 = parcel.readStrongBinder();
                if (readStrongBinder17 != null) {
                    IInterface queryLocalInterface17 = readStrongBinder17.queryLocalInterface("com.google.android.gms.measurement.api.internal.IBundleReceiver");
                    h1Var3 = queryLocalInterface17 instanceof h1 ? (h1) queryLocalInterface17 : new f1(readStrongBinder17);
                }
                int readInt2 = parcel.readInt();
                p0.c(parcel);
                getTestFlag(h1Var3, readInt2);
                break;
            case 39:
                boolean g15 = p0.g(parcel);
                p0.c(parcel);
                setDataCollectionEnabled(g15);
                break;
            case 40:
                IBinder readStrongBinder18 = parcel.readStrongBinder();
                if (readStrongBinder18 != null) {
                    IInterface queryLocalInterface18 = readStrongBinder18.queryLocalInterface("com.google.android.gms.measurement.api.internal.IBundleReceiver");
                    h1Var2 = queryLocalInterface18 instanceof h1 ? (h1) queryLocalInterface18 : new f1(readStrongBinder18);
                }
                p0.c(parcel);
                isDataCollectionEnabled(h1Var2);
                break;
            case 41:
            default:
                return false;
            case 42:
                p0.c(parcel);
                setDefaultEventParameters((Bundle) p0.a(parcel, Bundle.CREATOR));
                break;
            case 43:
                long readLong22 = parcel.readLong();
                p0.c(parcel);
                clearMeasurementEnabled(readLong22);
                break;
            case 44:
                long readLong23 = parcel.readLong();
                p0.c(parcel);
                setConsent((Bundle) p0.a(parcel, Bundle.CREATOR), readLong23);
                break;
            case 45:
                long readLong24 = parcel.readLong();
                p0.c(parcel);
                setConsentThirdParty((Bundle) p0.a(parcel, Bundle.CREATOR), readLong24);
                break;
        }
        parcel2.writeNoException();
        return true;
    }
}
