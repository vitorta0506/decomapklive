package com.google.android.gms.internal.measurement;

import androidx.annotation.Nullable;
import java.lang.reflect.Method;
/* loaded from: classes2.dex */
public final class u0 {
    @Nullable

    /* renamed from: a  reason: collision with root package name */
    private static final Method f8356a;
    @Nullable

    /* renamed from: b  reason: collision with root package name */
    private static final Method f8357b;

    /* JADX WARN: Removed duplicated region for block: B:22:0x003b A[EXC_TOP_SPLITTER, SYNTHETIC] */
    static {
        /*
            java.lang.Class<java.lang.String> r0 = java.lang.String.class
            int r1 = android.os.Build.VERSION.SDK_INT
            r2 = 6
            r3 = 0
            r4 = 24
            java.lang.String r5 = "JobSchedulerCompat"
            r6 = 0
            if (r1 < r4) goto L34
            r1 = 4
            java.lang.Class[] r1 = new java.lang.Class[r1]     // Catch: java.lang.NoSuchMethodException -> L28
            java.lang.Class<android.app.job.JobInfo> r7 = android.app.job.JobInfo.class
            r1[r3] = r7     // Catch: java.lang.NoSuchMethodException -> L28
            r7 = 1
            r1[r7] = r0     // Catch: java.lang.NoSuchMethodException -> L28
            r7 = 2
            java.lang.Class r8 = java.lang.Integer.TYPE     // Catch: java.lang.NoSuchMethodException -> L28
            r1[r7] = r8     // Catch: java.lang.NoSuchMethodException -> L28
            r7 = 3
            r1[r7] = r0     // Catch: java.lang.NoSuchMethodException -> L28
            java.lang.Class<android.app.job.JobScheduler> r0 = android.app.job.JobScheduler.class
            java.lang.String r7 = "scheduleAsPackage"
            java.lang.reflect.Method r0 = r0.getDeclaredMethod(r7, r1)     // Catch: java.lang.NoSuchMethodException -> L28
            goto L35
        L28:
            boolean r0 = android.util.Log.isLoggable(r5, r2)
            if (r0 == 0) goto L34
            java.lang.String r0 = "No scheduleAsPackage method available, falling back to schedule"
            android.util.Log.e(r5, r0)
        L34:
            r0 = r6
        L35:
            com.google.android.gms.internal.measurement.u0.f8356a = r0
            int r0 = android.os.Build.VERSION.SDK_INT
            if (r0 < r4) goto L52
            java.lang.Class<android.os.UserHandle> r0 = android.os.UserHandle.class
            java.lang.String r1 = "myUserId"
            java.lang.Class[] r3 = new java.lang.Class[r3]     // Catch: java.lang.NoSuchMethodException -> L46
            java.lang.reflect.Method r6 = r0.getDeclaredMethod(r1, r3)     // Catch: java.lang.NoSuchMethodException -> L46
            goto L52
        L46:
            boolean r0 = android.util.Log.isLoggable(r5, r2)
            if (r0 == 0) goto L52
            java.lang.String r0 = "No myUserId method available"
            android.util.Log.e(r5, r0)
        L52:
            com.google.android.gms.internal.measurement.u0.f8357b = r6
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.measurement.u0.<clinit>():void");
    }

    /* JADX WARN: Removed duplicated region for block: B:22:0x0048  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static int a(android.content.Context r5, android.app.job.JobInfo r6, java.lang.String r7, java.lang.String r8) {
        /*
            java.lang.String r7 = "jobscheduler"
            java.lang.Object r7 = r5.getSystemService(r7)
            android.app.job.JobScheduler r7 = (android.app.job.JobScheduler) r7
            java.util.Objects.requireNonNull(r7)
            java.lang.reflect.Method r8 = com.google.android.gms.internal.measurement.u0.f8356a
            if (r8 == 0) goto L74
            java.lang.String r8 = "android.permission.UPDATE_DEVICE_STATS"
            int r5 = r5.checkSelfPermission(r8)
            if (r5 == 0) goto L18
            goto L74
        L18:
            java.lang.reflect.Method r5 = com.google.android.gms.internal.measurement.u0.f8357b
            r8 = 0
            if (r5 == 0) goto L3f
            java.lang.Class<android.os.UserHandle> r0 = android.os.UserHandle.class
            java.lang.Object[] r1 = new java.lang.Object[r8]     // Catch: java.lang.reflect.InvocationTargetException -> L2e java.lang.IllegalAccessException -> L30
            java.lang.Object r5 = r5.invoke(r0, r1)     // Catch: java.lang.reflect.InvocationTargetException -> L2e java.lang.IllegalAccessException -> L30
            java.lang.Integer r5 = (java.lang.Integer) r5     // Catch: java.lang.reflect.InvocationTargetException -> L2e java.lang.IllegalAccessException -> L30
            if (r5 == 0) goto L3f
            int r5 = r5.intValue()     // Catch: java.lang.reflect.InvocationTargetException -> L2e java.lang.IllegalAccessException -> L30
            goto L40
        L2e:
            r5 = move-exception
            goto L31
        L30:
            r5 = move-exception
        L31:
            r0 = 6
            java.lang.String r1 = "JobSchedulerCompat"
            boolean r0 = android.util.Log.isLoggable(r1, r0)
            if (r0 == 0) goto L3f
            java.lang.String r0 = "myUserId invocation illegal"
            android.util.Log.e(r1, r0, r5)
        L3f:
            r5 = 0
        L40:
            java.lang.reflect.Method r0 = com.google.android.gms.internal.measurement.u0.f8356a
            java.lang.String r1 = "com.google.android.gms"
            java.lang.String r2 = "UploadAlarm"
            if (r0 == 0) goto L6f
            r3 = 4
            java.lang.Object[] r3 = new java.lang.Object[r3]     // Catch: java.lang.reflect.InvocationTargetException -> L67 java.lang.IllegalAccessException -> L69
            r3[r8] = r6     // Catch: java.lang.reflect.InvocationTargetException -> L67 java.lang.IllegalAccessException -> L69
            r4 = 1
            r3[r4] = r1     // Catch: java.lang.reflect.InvocationTargetException -> L67 java.lang.IllegalAccessException -> L69
            r1 = 2
            java.lang.Integer r5 = java.lang.Integer.valueOf(r5)     // Catch: java.lang.reflect.InvocationTargetException -> L67 java.lang.IllegalAccessException -> L69
            r3[r1] = r5     // Catch: java.lang.reflect.InvocationTargetException -> L67 java.lang.IllegalAccessException -> L69
            r5 = 3
            r3[r5] = r2     // Catch: java.lang.reflect.InvocationTargetException -> L67 java.lang.IllegalAccessException -> L69
            java.lang.Object r5 = r0.invoke(r7, r3)     // Catch: java.lang.reflect.InvocationTargetException -> L67 java.lang.IllegalAccessException -> L69
            java.lang.Integer r5 = (java.lang.Integer) r5     // Catch: java.lang.reflect.InvocationTargetException -> L67 java.lang.IllegalAccessException -> L69
            if (r5 == 0) goto L73
            int r8 = r5.intValue()     // Catch: java.lang.reflect.InvocationTargetException -> L67 java.lang.IllegalAccessException -> L69
            goto L73
        L67:
            r5 = move-exception
            goto L6a
        L69:
            r5 = move-exception
        L6a:
            java.lang.String r8 = "error calling scheduleAsPackage"
            android.util.Log.e(r2, r8, r5)
        L6f:
            int r8 = r7.schedule(r6)
        L73:
            return r8
        L74:
            int r5 = r7.schedule(r6)
            return r5
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.measurement.u0.a(android.content.Context, android.app.job.JobInfo, java.lang.String, java.lang.String):int");
    }
}
