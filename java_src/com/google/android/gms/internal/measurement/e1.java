package com.google.android.gms.internal.measurement;

import android.os.Bundle;
import android.os.IInterface;
import android.os.RemoteException;
import java.util.Map;
/* loaded from: classes2.dex */
public interface e1 extends IInterface {
    void beginAdUnitExposure(String str, long j10) throws RemoteException;

    void clearConditionalUserProperty(String str, String str2, Bundle bundle) throws RemoteException;

    void clearMeasurementEnabled(long j10) throws RemoteException;

    void endAdUnitExposure(String str, long j10) throws RemoteException;

    void generateEventId(h1 h1Var) throws RemoteException;

    void getAppInstanceId(h1 h1Var) throws RemoteException;

    void getCachedAppInstanceId(h1 h1Var) throws RemoteException;

    void getConditionalUserProperties(String str, String str2, h1 h1Var) throws RemoteException;

    void getCurrentScreenClass(h1 h1Var) throws RemoteException;

    void getCurrentScreenName(h1 h1Var) throws RemoteException;

    void getGmpAppId(h1 h1Var) throws RemoteException;

    void getMaxUserProperties(String str, h1 h1Var) throws RemoteException;

    void getTestFlag(h1 h1Var, int i9) throws RemoteException;

    void getUserProperties(String str, String str2, boolean z10, h1 h1Var) throws RemoteException;

    void initForTests(Map map) throws RemoteException;

    void initialize(h4.a aVar, zzcl zzclVar, long j10) throws RemoteException;

    void isDataCollectionEnabled(h1 h1Var) throws RemoteException;

    void logEvent(String str, String str2, Bundle bundle, boolean z10, boolean z11, long j10) throws RemoteException;

    void logEventAndBundle(String str, String str2, Bundle bundle, h1 h1Var, long j10) throws RemoteException;

    void logHealthData(int i9, String str, h4.a aVar, h4.a aVar2, h4.a aVar3) throws RemoteException;

    void onActivityCreated(h4.a aVar, Bundle bundle, long j10) throws RemoteException;

    void onActivityDestroyed(h4.a aVar, long j10) throws RemoteException;

    void onActivityPaused(h4.a aVar, long j10) throws RemoteException;

    void onActivityResumed(h4.a aVar, long j10) throws RemoteException;

    void onActivitySaveInstanceState(h4.a aVar, h1 h1Var, long j10) throws RemoteException;

    void onActivityStarted(h4.a aVar, long j10) throws RemoteException;

    void onActivityStopped(h4.a aVar, long j10) throws RemoteException;

    void performAction(Bundle bundle, h1 h1Var, long j10) throws RemoteException;

    void registerOnMeasurementEventListener(k1 k1Var) throws RemoteException;

    void resetAnalyticsData(long j10) throws RemoteException;

    void setConditionalUserProperty(Bundle bundle, long j10) throws RemoteException;

    void setConsent(Bundle bundle, long j10) throws RemoteException;

    void setConsentThirdParty(Bundle bundle, long j10) throws RemoteException;

    void setCurrentScreen(h4.a aVar, String str, String str2, long j10) throws RemoteException;

    void setDataCollectionEnabled(boolean z10) throws RemoteException;

    void setDefaultEventParameters(Bundle bundle) throws RemoteException;

    void setEventInterceptor(k1 k1Var) throws RemoteException;

    void setInstanceIdProvider(m1 m1Var) throws RemoteException;

    void setMeasurementEnabled(boolean z10, long j10) throws RemoteException;

    void setMinimumSessionDuration(long j10) throws RemoteException;

    void setSessionTimeoutDuration(long j10) throws RemoteException;

    void setUserId(String str, long j10) throws RemoteException;

    void setUserProperty(String str, String str2, h4.a aVar, boolean z10, long j10) throws RemoteException;

    void unregisterOnMeasurementEventListener(k1 k1Var) throws RemoteException;
}
