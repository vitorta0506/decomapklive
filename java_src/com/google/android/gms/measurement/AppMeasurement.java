package com.google.android.gms.measurement;

import android.os.Bundle;
import androidx.annotation.Keep;
import androidx.annotation.NonNull;
import androidx.annotation.Size;
import androidx.annotation.WorkerThread;
import com.google.android.gms.common.internal.p;
import com.google.android.gms.measurement.internal.n4;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import p4.o;
import p4.t;
import p4.v;
@Deprecated
/* loaded from: classes2.dex */
public class AppMeasurement {

    /* renamed from: b  reason: collision with root package name */
    private static volatile AppMeasurement f9246b;

    /* renamed from: a  reason: collision with root package name */
    private final d f9247a;

    /* loaded from: classes2.dex */
    public static class ConditionalUserProperty {
        @Keep
        public boolean mActive;
        @NonNull
        @Keep
        public String mAppId;
        @Keep
        public long mCreationTimestamp;
        @NonNull
        @Keep
        public String mExpiredEventName;
        @NonNull
        @Keep
        public Bundle mExpiredEventParams;
        @NonNull
        @Keep
        public String mName;
        @NonNull
        @Keep
        public String mOrigin;
        @Keep
        public long mTimeToLive;
        @NonNull
        @Keep
        public String mTimedOutEventName;
        @NonNull
        @Keep
        public Bundle mTimedOutEventParams;
        @NonNull
        @Keep
        public String mTriggerEventName;
        @Keep
        public long mTriggerTimeout;
        @NonNull
        @Keep
        public String mTriggeredEventName;
        @NonNull
        @Keep
        public Bundle mTriggeredEventParams;
        @Keep
        public long mTriggeredTimestamp;
        @NonNull
        @Keep
        public Object mValue;

        public ConditionalUserProperty() {
        }

        ConditionalUserProperty(@NonNull Bundle bundle) {
            p.j(bundle);
            this.mAppId = (String) o.a(bundle, "app_id", String.class, null);
            this.mOrigin = (String) o.a(bundle, "origin", String.class, null);
            this.mName = (String) o.a(bundle, "name", String.class, null);
            this.mValue = o.a(bundle, "value", Object.class, null);
            this.mTriggerEventName = (String) o.a(bundle, "trigger_event_name", String.class, null);
            this.mTriggerTimeout = ((Long) o.a(bundle, "trigger_timeout", Long.class, 0L)).longValue();
            this.mTimedOutEventName = (String) o.a(bundle, "timed_out_event_name", String.class, null);
            this.mTimedOutEventParams = (Bundle) o.a(bundle, "timed_out_event_params", Bundle.class, null);
            this.mTriggeredEventName = (String) o.a(bundle, "triggered_event_name", String.class, null);
            this.mTriggeredEventParams = (Bundle) o.a(bundle, "triggered_event_params", Bundle.class, null);
            this.mTimeToLive = ((Long) o.a(bundle, "time_to_live", Long.class, 0L)).longValue();
            this.mExpiredEventName = (String) o.a(bundle, "expired_event_name", String.class, null);
            this.mExpiredEventParams = (Bundle) o.a(bundle, "expired_event_params", Bundle.class, null);
            this.mActive = ((Boolean) o.a(bundle, "active", Boolean.class, Boolean.FALSE)).booleanValue();
            this.mCreationTimestamp = ((Long) o.a(bundle, "creation_timestamp", Long.class, 0L)).longValue();
            this.mTriggeredTimestamp = ((Long) o.a(bundle, "triggered_timestamp", Long.class, 0L)).longValue();
        }
    }

    /* loaded from: classes2.dex */
    public interface a extends t {
    }

    public AppMeasurement(n4 n4Var) {
        this.f9247a = new com.google.android.gms.measurement.a(n4Var);
    }

    /*  JADX ERROR: JadxRuntimeException in pass: BlockProcessor
        jadx.core.utils.exceptions.JadxRuntimeException: Unreachable block: B:13:0x002e
        	at jadx.core.dex.visitors.blocks.BlockProcessor.checkForUnreachableBlocks(BlockProcessor.java:81)
        	at jadx.core.dex.visitors.blocks.BlockProcessor.processBlocksTree(BlockProcessor.java:47)
        	at jadx.core.dex.visitors.blocks.BlockProcessor.visit(BlockProcessor.java:39)
        */
    @androidx.annotation.NonNull
    @androidx.annotation.Keep
    @java.lang.Deprecated
    @androidx.annotation.RequiresPermission(allOf = {"android.permission.INTERNET", "android.permission.ACCESS_NETWORK_STATE", "android.permission.WAKE_LOCK"})
    public static com.google.android.gms.measurement.AppMeasurement getInstance(@androidx.annotation.NonNull android.content.Context r14) {
        /*
            com.google.android.gms.measurement.AppMeasurement r0 = com.google.android.gms.measurement.AppMeasurement.f9246b
            if (r0 != 0) goto L59
            java.lang.Class<com.google.android.gms.measurement.AppMeasurement> r0 = com.google.android.gms.measurement.AppMeasurement.class
            monitor-enter(r0)
            com.google.android.gms.measurement.AppMeasurement r1 = com.google.android.gms.measurement.AppMeasurement.f9246b     // Catch: java.lang.Throwable -> L56
            if (r1 != 0) goto L54
            r1 = 0
            java.lang.Class<com.google.firebase.analytics.FirebaseAnalytics> r2 = com.google.firebase.analytics.FirebaseAnalytics.class
            r3 = 2
            java.lang.Class[] r4 = new java.lang.Class[r3]     // Catch: java.lang.Throwable -> L56
            java.lang.Class<android.content.Context> r5 = android.content.Context.class
            r6 = 0
            r4[r6] = r5     // Catch: java.lang.Throwable -> L56
            java.lang.Class<android.os.Bundle> r5 = android.os.Bundle.class
            r7 = 1
            r4[r7] = r5     // Catch: java.lang.Throwable -> L56
            java.lang.String r5 = "getScionFrontendApiImplementation"
            java.lang.reflect.Method r2 = r2.getDeclaredMethod(r5, r4)     // Catch: java.lang.Throwable -> L56
            java.lang.Object[] r3 = new java.lang.Object[r3]     // Catch: java.lang.Throwable -> L56
            r3[r6] = r14     // Catch: java.lang.Throwable -> L56
            r3[r7] = r1     // Catch: java.lang.Throwable -> L56
            java.lang.Object r2 = r2.invoke(r1, r3)     // Catch: java.lang.Throwable -> L56
            p4.v r2 = (p4.v) r2     // Catch: java.lang.Throwable -> L56
            goto L2f
        L2e:
            r2 = r1
        L2f:
            if (r2 == 0) goto L39
            com.google.android.gms.measurement.AppMeasurement r14 = new com.google.android.gms.measurement.AppMeasurement     // Catch: java.lang.Throwable -> L56
            r14.<init>(r2)     // Catch: java.lang.Throwable -> L56
            com.google.android.gms.measurement.AppMeasurement.f9246b = r14     // Catch: java.lang.Throwable -> L56
            goto L54
        L39:
            com.google.android.gms.internal.measurement.zzcl r13 = new com.google.android.gms.internal.measurement.zzcl     // Catch: java.lang.Throwable -> L56
            r3 = 0
            r5 = 0
            r7 = 1
            r8 = 0
            r9 = 0
            r10 = 0
            r11 = 0
            r12 = 0
            r2 = r13
            r2.<init>(r3, r5, r7, r8, r9, r10, r11, r12)     // Catch: java.lang.Throwable -> L56
            com.google.android.gms.measurement.internal.n4 r14 = com.google.android.gms.measurement.internal.n4.H(r14, r13, r1)     // Catch: java.lang.Throwable -> L56
            com.google.android.gms.measurement.AppMeasurement r1 = new com.google.android.gms.measurement.AppMeasurement     // Catch: java.lang.Throwable -> L56
            r1.<init>(r14)     // Catch: java.lang.Throwable -> L56
            com.google.android.gms.measurement.AppMeasurement.f9246b = r1     // Catch: java.lang.Throwable -> L56
        L54:
            monitor-exit(r0)     // Catch: java.lang.Throwable -> L56
            goto L59
        L56:
            r14 = move-exception
            monitor-exit(r0)     // Catch: java.lang.Throwable -> L56
            throw r14
        L59:
            com.google.android.gms.measurement.AppMeasurement r14 = com.google.android.gms.measurement.AppMeasurement.f9246b
            return r14
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.measurement.AppMeasurement.getInstance(android.content.Context):com.google.android.gms.measurement.AppMeasurement");
    }

    @Keep
    public void beginAdUnitExposure(@NonNull @Size(min = 1) String str) {
        this.f9247a.h(str);
    }

    @Keep
    public void clearConditionalUserProperty(@NonNull @Size(max = 24, min = 1) String str, @NonNull String str2, @NonNull Bundle bundle) {
        this.f9247a.m(str, str2, bundle);
    }

    @Keep
    public void endAdUnitExposure(@NonNull @Size(min = 1) String str) {
        this.f9247a.i(str);
    }

    @Keep
    public long generateEventId() {
        return this.f9247a.D();
    }

    @NonNull
    @Keep
    public String getAppInstanceId() {
        return this.f9247a.a();
    }

    @NonNull
    @Keep
    @WorkerThread
    public List<ConditionalUserProperty> getConditionalUserProperties(@NonNull String str, @NonNull @Size(max = 23, min = 1) String str2) {
        List<Bundle> j10 = this.f9247a.j(str, str2);
        ArrayList arrayList = new ArrayList(j10 == null ? 0 : j10.size());
        for (Bundle bundle : j10) {
            arrayList.add(new ConditionalUserProperty(bundle));
        }
        return arrayList;
    }

    @NonNull
    @Keep
    public String getCurrentScreenClass() {
        return this.f9247a.d();
    }

    @NonNull
    @Keep
    public String getCurrentScreenName() {
        return this.f9247a.G();
    }

    @NonNull
    @Keep
    public String getGmpAppId() {
        return this.f9247a.e();
    }

    @Keep
    @WorkerThread
    public int getMaxUserProperties(@NonNull @Size(min = 1) String str) {
        return this.f9247a.b(str);
    }

    @NonNull
    @Keep
    @WorkerThread
    protected Map<String, Object> getUserProperties(@NonNull String str, @NonNull @Size(max = 24, min = 1) String str2, boolean z10) {
        return this.f9247a.k(str, str2, z10);
    }

    @Keep
    public void logEventInternal(@NonNull String str, @NonNull String str2, @NonNull Bundle bundle) {
        this.f9247a.f(str, str2, bundle);
    }

    public void registerOnMeasurementEventListener(@NonNull a aVar) {
        this.f9247a.g(aVar);
    }

    @Keep
    public void setConditionalUserProperty(@NonNull ConditionalUserProperty conditionalUserProperty) {
        p.j(conditionalUserProperty);
        d dVar = this.f9247a;
        Bundle bundle = new Bundle();
        String str = conditionalUserProperty.mAppId;
        if (str != null) {
            bundle.putString("app_id", str);
        }
        String str2 = conditionalUserProperty.mOrigin;
        if (str2 != null) {
            bundle.putString("origin", str2);
        }
        String str3 = conditionalUserProperty.mName;
        if (str3 != null) {
            bundle.putString("name", str3);
        }
        Object obj = conditionalUserProperty.mValue;
        if (obj != null) {
            o.b(bundle, obj);
        }
        String str4 = conditionalUserProperty.mTriggerEventName;
        if (str4 != null) {
            bundle.putString("trigger_event_name", str4);
        }
        bundle.putLong("trigger_timeout", conditionalUserProperty.mTriggerTimeout);
        String str5 = conditionalUserProperty.mTimedOutEventName;
        if (str5 != null) {
            bundle.putString("timed_out_event_name", str5);
        }
        Bundle bundle2 = conditionalUserProperty.mTimedOutEventParams;
        if (bundle2 != null) {
            bundle.putBundle("timed_out_event_params", bundle2);
        }
        String str6 = conditionalUserProperty.mTriggeredEventName;
        if (str6 != null) {
            bundle.putString("triggered_event_name", str6);
        }
        Bundle bundle3 = conditionalUserProperty.mTriggeredEventParams;
        if (bundle3 != null) {
            bundle.putBundle("triggered_event_params", bundle3);
        }
        bundle.putLong("time_to_live", conditionalUserProperty.mTimeToLive);
        String str7 = conditionalUserProperty.mExpiredEventName;
        if (str7 != null) {
            bundle.putString("expired_event_name", str7);
        }
        Bundle bundle4 = conditionalUserProperty.mExpiredEventParams;
        if (bundle4 != null) {
            bundle.putBundle("expired_event_params", bundle4);
        }
        bundle.putLong("creation_timestamp", conditionalUserProperty.mCreationTimestamp);
        bundle.putBoolean("active", conditionalUserProperty.mActive);
        bundle.putLong("triggered_timestamp", conditionalUserProperty.mTriggeredTimestamp);
        dVar.l(bundle);
    }

    public void unregisterOnMeasurementEventListener(@NonNull a aVar) {
        this.f9247a.c(aVar);
    }

    public AppMeasurement(v vVar) {
        this.f9247a = new b(vVar);
    }
}
