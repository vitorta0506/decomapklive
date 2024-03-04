package e4;

import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import android.os.Process;
import android.os.WorkSource;
import android.util.Log;
import androidx.annotation.NonNull;
import java.lang.reflect.Method;
/* loaded from: classes2.dex */
public class q {

    /* renamed from: a  reason: collision with root package name */
    private static final int f38448a = Process.myUid();

    /* renamed from: b  reason: collision with root package name */
    private static final Method f38449b;

    /* renamed from: c  reason: collision with root package name */
    private static final Method f38450c;

    /* renamed from: d  reason: collision with root package name */
    private static final Method f38451d;

    /* renamed from: e  reason: collision with root package name */
    private static final Method f38452e;

    /* renamed from: f  reason: collision with root package name */
    private static final Method f38453f;

    /* renamed from: g  reason: collision with root package name */
    private static final Method f38454g;

    /* renamed from: h  reason: collision with root package name */
    private static final Method f38455h;

    /* renamed from: i  reason: collision with root package name */
    private static final Method f38456i;

    /* JADX WARN: Can't wrap try/catch for region: R(25:1|2|3|4|(21:49|50|7|8|9|10|11|12|13|(12:41|42|16|(9:36|37|19|(6:31|32|22|(2:27|28)|24|25)|21|22|(0)|24|25)|18|19|(0)|21|22|(0)|24|25)|15|16|(0)|18|19|(0)|21|22|(0)|24|25)|6|7|8|9|10|11|12|13|(0)|15|16|(0)|18|19|(0)|21|22|(0)|24|25) */
    /* JADX WARN: Code restructure failed: missing block: B:14:0x0041, code lost:
        r1 = null;
     */
    /* JADX WARN: Code restructure failed: missing block: B:18:0x0053, code lost:
        r1 = null;
     */
    /* JADX WARN: Removed duplicated region for block: B:46:0x005c A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:50:0x0090 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:56:0x00b4 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:58:0x0076 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    static {
        /*
            java.lang.Class<java.lang.String> r0 = java.lang.String.class
            java.lang.String r1 = "add"
            int r2 = android.os.Process.myUid()
            e4.q.f38448a = r2
            r2 = 1
            r3 = 0
            r4 = 0
            java.lang.Class[] r5 = new java.lang.Class[r2]     // Catch: java.lang.Exception -> L1a
            java.lang.Class r6 = java.lang.Integer.TYPE     // Catch: java.lang.Exception -> L1a
            r5[r3] = r6     // Catch: java.lang.Exception -> L1a
            java.lang.Class<android.os.WorkSource> r6 = android.os.WorkSource.class
            java.lang.reflect.Method r5 = r6.getMethod(r1, r5)     // Catch: java.lang.Exception -> L1a
            goto L1b
        L1a:
            r5 = r4
        L1b:
            e4.q.f38449b = r5
            boolean r5 = e4.m.c()
            r6 = 2
            if (r5 == 0) goto L33
            java.lang.Class[] r5 = new java.lang.Class[r6]     // Catch: java.lang.Exception -> L33
            java.lang.Class r7 = java.lang.Integer.TYPE     // Catch: java.lang.Exception -> L33
            r5[r3] = r7     // Catch: java.lang.Exception -> L33
            r5[r2] = r0     // Catch: java.lang.Exception -> L33
            java.lang.Class<android.os.WorkSource> r7 = android.os.WorkSource.class
            java.lang.reflect.Method r1 = r7.getMethod(r1, r5)     // Catch: java.lang.Exception -> L33
            goto L34
        L33:
            r1 = r4
        L34:
            e4.q.f38450c = r1
            java.lang.Class<android.os.WorkSource> r1 = android.os.WorkSource.class
            java.lang.String r5 = "size"
            java.lang.Class[] r7 = new java.lang.Class[r3]     // Catch: java.lang.Exception -> L41
            java.lang.reflect.Method r1 = r1.getMethod(r5, r7)     // Catch: java.lang.Exception -> L41
            goto L42
        L41:
            r1 = r4
        L42:
            e4.q.f38451d = r1
            java.lang.Class[] r1 = new java.lang.Class[r2]     // Catch: java.lang.Exception -> L53
            java.lang.Class r5 = java.lang.Integer.TYPE     // Catch: java.lang.Exception -> L53
            r1[r3] = r5     // Catch: java.lang.Exception -> L53
            java.lang.Class<android.os.WorkSource> r5 = android.os.WorkSource.class
            java.lang.String r7 = "get"
            java.lang.reflect.Method r1 = r5.getMethod(r7, r1)     // Catch: java.lang.Exception -> L53
            goto L54
        L53:
            r1 = r4
        L54:
            e4.q.f38452e = r1
            boolean r1 = e4.m.c()
            if (r1 == 0) goto L6b
            java.lang.Class[] r1 = new java.lang.Class[r2]     // Catch: java.lang.Exception -> L6b
            java.lang.Class r5 = java.lang.Integer.TYPE     // Catch: java.lang.Exception -> L6b
            r1[r3] = r5     // Catch: java.lang.Exception -> L6b
            java.lang.Class<android.os.WorkSource> r5 = android.os.WorkSource.class
            java.lang.String r7 = "getName"
            java.lang.reflect.Method r1 = r5.getMethod(r7, r1)     // Catch: java.lang.Exception -> L6b
            goto L6c
        L6b:
            r1 = r4
        L6c:
            e4.q.f38453f = r1
            boolean r1 = e4.m.i()
            java.lang.String r5 = "WorkSourceUtil"
            if (r1 == 0) goto L87
            java.lang.Class<android.os.WorkSource> r1 = android.os.WorkSource.class
            java.lang.String r7 = "createWorkChain"
            java.lang.Class[] r8 = new java.lang.Class[r3]     // Catch: java.lang.Exception -> L81
            java.lang.reflect.Method r1 = r1.getMethod(r7, r8)     // Catch: java.lang.Exception -> L81
            goto L88
        L81:
            r1 = move-exception
            java.lang.String r7 = "Missing WorkChain API createWorkChain"
            android.util.Log.w(r5, r7, r1)
        L87:
            r1 = r4
        L88:
            e4.q.f38454g = r1
            boolean r1 = e4.m.i()
            if (r1 == 0) goto Lab
            java.lang.String r1 = "android.os.WorkSource$WorkChain"
            java.lang.Class r1 = java.lang.Class.forName(r1)     // Catch: java.lang.Exception -> La5
            java.lang.Class[] r6 = new java.lang.Class[r6]     // Catch: java.lang.Exception -> La5
            java.lang.Class r7 = java.lang.Integer.TYPE     // Catch: java.lang.Exception -> La5
            r6[r3] = r7     // Catch: java.lang.Exception -> La5
            r6[r2] = r0     // Catch: java.lang.Exception -> La5
            java.lang.String r0 = "addNode"
            java.lang.reflect.Method r0 = r1.getMethod(r0, r6)     // Catch: java.lang.Exception -> La5
            goto Lac
        La5:
            r0 = move-exception
            java.lang.String r1 = "Missing WorkChain class"
            android.util.Log.w(r5, r1, r0)
        Lab:
            r0 = r4
        Lac:
            e4.q.f38455h = r0
            boolean r0 = e4.m.i()
            if (r0 == 0) goto Lc1
            java.lang.Class<android.os.WorkSource> r0 = android.os.WorkSource.class
            java.lang.String r1 = "isEmpty"
            java.lang.Class[] r3 = new java.lang.Class[r3]     // Catch: java.lang.Exception -> Lc1
            java.lang.reflect.Method r4 = r0.getMethod(r1, r3)     // Catch: java.lang.Exception -> Lc1
            r4.setAccessible(r2)     // Catch: java.lang.Exception -> Lc1
        Lc1:
            e4.q.f38456i = r4
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: e4.q.<clinit>():void");
    }

    public static void a(@NonNull WorkSource workSource, int i9, @NonNull String str) {
        Method method = f38450c;
        if (method != null) {
            if (str == null) {
                str = "";
            }
            try {
                method.invoke(workSource, Integer.valueOf(i9), str);
                return;
            } catch (Exception e10) {
                Log.wtf("WorkSourceUtil", "Unable to assign blame through WorkSource", e10);
                return;
            }
        }
        Method method2 = f38449b;
        if (method2 != null) {
            try {
                method2.invoke(workSource, Integer.valueOf(i9));
            } catch (Exception e11) {
                Log.wtf("WorkSourceUtil", "Unable to assign blame through WorkSource", e11);
            }
        }
    }

    @NonNull
    public static WorkSource b(@NonNull Context context, @NonNull String str) {
        if (context != null && context.getPackageManager() != null && str != null) {
            try {
                ApplicationInfo c10 = g4.c.a(context).c(str, 0);
                if (c10 == null) {
                    Log.e("WorkSourceUtil", "Could not get applicationInfo from package: ".concat(str));
                    return null;
                }
                int i9 = c10.uid;
                WorkSource workSource = new WorkSource();
                a(workSource, i9, str);
                return workSource;
            } catch (PackageManager.NameNotFoundException unused) {
                Log.e("WorkSourceUtil", "Could not find package: ".concat(str));
            }
        }
        return null;
    }

    public static boolean c(@NonNull Context context) {
        return (context == null || context.getPackageManager() == null || g4.c.a(context).b("android.permission.UPDATE_DEVICE_STATS", context.getPackageName()) != 0) ? false : true;
    }
}
