package vb;

import android.content.Context;
import android.util.Log;
import java.lang.reflect.Constructor;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
/* loaded from: classes4.dex */
public final class d {

    /* renamed from: c  reason: collision with root package name */
    private static Map<Class<?>, ub.a> f59085c = new HashMap();

    /* renamed from: d  reason: collision with root package name */
    private static Map<Class<?>, Object> f59086d = new HashMap();

    /* renamed from: a  reason: collision with root package name */
    private Map<Class<?>, ub.a> f59087a = new HashMap();

    /* renamed from: b  reason: collision with root package name */
    private Map<Class<?>, Object> f59088b = new HashMap();

    /* JADX INFO: Access modifiers changed from: package-private */
    public d(List<ub.a> list, Context context) {
        c(list, context);
    }

    private static Constructor a(Class cls, Class... clsArr) {
        Constructor<?>[] declaredConstructors;
        boolean z10 = false;
        for (Constructor<?> constructor : cls.getDeclaredConstructors()) {
            Class<?>[] parameterTypes = constructor.getParameterTypes();
            if (parameterTypes.length == clsArr.length) {
                for (int i9 = 0; i9 < clsArr.length; i9++) {
                    z10 = parameterTypes[i9] == clsArr[i9];
                }
                if (z10) {
                    return constructor;
                }
            }
        }
        return null;
    }

    private void b(String str, Exception exc) {
        Log.e("ServiceRepository", "Instantiate shared service " + str + exc.getLocalizedMessage());
        StringBuilder sb2 = new StringBuilder();
        sb2.append("cause message:");
        sb2.append(exc.getCause() != null ? exc.getCause().getMessage() : "");
        Log.e("ServiceRepository", sb2.toString());
    }

    /* JADX WARN: Removed duplicated region for block: B:22:0x005b A[Catch: InvocationTargetException -> 0x0076, InstantiationException -> 0x007a, IllegalAccessException -> 0x007e, TryCatch #2 {IllegalAccessException -> 0x007e, InstantiationException -> 0x007a, InvocationTargetException -> 0x0076, blocks: (B:20:0x0049, B:22:0x005b, B:24:0x006c, B:23:0x0064), top: B:34:0x0049 }] */
    /* JADX WARN: Removed duplicated region for block: B:23:0x0064 A[Catch: InvocationTargetException -> 0x0076, InstantiationException -> 0x007a, IllegalAccessException -> 0x007e, TryCatch #2 {IllegalAccessException -> 0x007e, InstantiationException -> 0x007a, InvocationTargetException -> 0x0076, blocks: (B:20:0x0049, B:22:0x005b, B:24:0x006c, B:23:0x0064), top: B:34:0x0049 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void c(java.util.List<ub.a> r7, android.content.Context r8) {
        /*
            r6 = this;
            if (r7 != 0) goto L3
            return
        L3:
            java.util.Iterator r7 = r7.iterator()
        L7:
            boolean r0 = r7.hasNext()
            if (r0 == 0) goto L85
            java.lang.Object r0 = r7.next()
            ub.a r0 = (ub.a) r0
            boolean r1 = r0.d()
            if (r1 == 0) goto L28
            java.util.Map<java.lang.Class<?>, ub.a> r1 = vb.d.f59085c
            java.lang.Class r2 = r0.a()
            boolean r1 = r1.containsKey(r2)
            if (r1 != 0) goto L31
            java.util.Map<java.lang.Class<?>, ub.a> r1 = vb.d.f59085c
            goto L2a
        L28:
            java.util.Map<java.lang.Class<?>, ub.a> r1 = r6.f59087a
        L2a:
            java.lang.Class r2 = r0.a()
            r1.put(r2, r0)
        L31:
            boolean r1 = r0.c()
            if (r1 == 0) goto L7
            java.lang.Class r1 = r0.b()
            if (r1 == 0) goto L7
            java.util.Map<java.lang.Class<?>, java.lang.Object> r1 = vb.d.f59086d
            java.lang.Class r2 = r0.a()
            boolean r1 = r1.containsKey(r2)
            if (r1 != 0) goto L7
            java.lang.Class r1 = r0.b()     // Catch: java.lang.reflect.InvocationTargetException -> L76 java.lang.InstantiationException -> L7a java.lang.IllegalAccessException -> L7e
            r2 = 1
            java.lang.Class[] r3 = new java.lang.Class[r2]     // Catch: java.lang.reflect.InvocationTargetException -> L76 java.lang.InstantiationException -> L7a java.lang.IllegalAccessException -> L7e
            java.lang.Class<android.content.Context> r4 = android.content.Context.class
            r5 = 0
            r3[r5] = r4     // Catch: java.lang.reflect.InvocationTargetException -> L76 java.lang.InstantiationException -> L7a java.lang.IllegalAccessException -> L7e
            java.lang.reflect.Constructor r1 = a(r1, r3)     // Catch: java.lang.reflect.InvocationTargetException -> L76 java.lang.InstantiationException -> L7a java.lang.IllegalAccessException -> L7e
            if (r1 == 0) goto L64
            java.lang.Object[] r2 = new java.lang.Object[r2]     // Catch: java.lang.reflect.InvocationTargetException -> L76 java.lang.InstantiationException -> L7a java.lang.IllegalAccessException -> L7e
            r2[r5] = r8     // Catch: java.lang.reflect.InvocationTargetException -> L76 java.lang.InstantiationException -> L7a java.lang.IllegalAccessException -> L7e
            java.lang.Object r1 = r1.newInstance(r2)     // Catch: java.lang.reflect.InvocationTargetException -> L76 java.lang.InstantiationException -> L7a java.lang.IllegalAccessException -> L7e
            goto L6c
        L64:
            java.lang.Class r1 = r0.b()     // Catch: java.lang.reflect.InvocationTargetException -> L76 java.lang.InstantiationException -> L7a java.lang.IllegalAccessException -> L7e
            java.lang.Object r1 = r1.newInstance()     // Catch: java.lang.reflect.InvocationTargetException -> L76 java.lang.InstantiationException -> L7a java.lang.IllegalAccessException -> L7e
        L6c:
            java.util.Map<java.lang.Class<?>, java.lang.Object> r2 = vb.d.f59086d     // Catch: java.lang.reflect.InvocationTargetException -> L76 java.lang.InstantiationException -> L7a java.lang.IllegalAccessException -> L7e
            java.lang.Class r0 = r0.a()     // Catch: java.lang.reflect.InvocationTargetException -> L76 java.lang.InstantiationException -> L7a java.lang.IllegalAccessException -> L7e
            r2.put(r0, r1)     // Catch: java.lang.reflect.InvocationTargetException -> L76 java.lang.InstantiationException -> L7a java.lang.IllegalAccessException -> L7e
            goto L7
        L76:
            r0 = move-exception
            java.lang.String r1 = "TargetException"
            goto L81
        L7a:
            r0 = move-exception
            java.lang.String r1 = "InstantiationException"
            goto L81
        L7e:
            r0 = move-exception
            java.lang.String r1 = "AccessException"
        L81:
            r6.b(r1, r0)
            goto L7
        L85:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: vb.d.c(java.util.List, android.content.Context):void");
    }
}
