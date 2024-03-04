package com.xiaomi.push;

import java.util.ArrayList;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
/* loaded from: classes5.dex */
public class x1 {

    /* renamed from: c  reason: collision with root package name */
    private static x1 f37551c;

    /* renamed from: a  reason: collision with root package name */
    private Map<String, Object> f37552a = new ConcurrentHashMap();

    /* renamed from: b  reason: collision with root package name */
    private Map<String, Object> f37553b = new ConcurrentHashMap();

    private x1() {
        d();
    }

    public static synchronized x1 a() {
        x1 x1Var;
        synchronized (x1.class) {
            if (f37551c == null) {
                f37551c = new x1();
            }
            x1Var = f37551c;
        }
        return x1Var;
    }

    private String c(String str, String str2) {
        StringBuilder sb2 = new StringBuilder();
        sb2.append("<");
        sb2.append(str);
        sb2.append("/>");
        if (str != null) {
            sb2.append("<");
            sb2.append(str2);
            sb2.append("/>");
        }
        return sb2.toString();
    }

    private ClassLoader[] f() {
        ClassLoader[] classLoaderArr = {x1.class.getClassLoader(), Thread.currentThread().getContextClassLoader()};
        ArrayList arrayList = new ArrayList();
        for (int i9 = 0; i9 < 2; i9++) {
            ClassLoader classLoader = classLoaderArr[i9];
            if (classLoader != null) {
                arrayList.add(classLoader);
            }
        }
        return (ClassLoader[]) arrayList.toArray(new ClassLoader[arrayList.size()]);
    }

    public Object b(String str, String str2) {
        return this.f37552a.get(c(str, str2));
    }

    /* JADX WARN: Removed duplicated region for block: B:53:0x00f6 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    protected void d() {
        /*
            r10 = this;
            java.lang.ClassLoader[] r0 = r10.f()     // Catch: java.lang.Exception -> L104
            int r1 = r0.length     // Catch: java.lang.Exception -> L104
            r2 = 0
        L6:
            if (r2 >= r1) goto L108
            r3 = r0[r2]     // Catch: java.lang.Exception -> L104
            java.lang.String r4 = "META-INF/smack.providers"
            java.util.Enumeration r3 = r3.getResources(r4)     // Catch: java.lang.Exception -> L104
        L10:
            boolean r4 = r3.hasMoreElements()     // Catch: java.lang.Exception -> L104
            if (r4 == 0) goto L100
            java.lang.Object r4 = r3.nextElement()     // Catch: java.lang.Exception -> L104
            java.net.URL r4 = (java.net.URL) r4     // Catch: java.lang.Exception -> L104
            r5 = 0
            java.io.InputStream r5 = r4.openStream()     // Catch: java.lang.Throwable -> Lfb
            org.xmlpull.v1.XmlPullParserFactory r4 = org.xmlpull.v1.XmlPullParserFactory.newInstance()     // Catch: java.lang.Throwable -> Lfb
            org.xmlpull.v1.XmlPullParser r4 = r4.newPullParser()     // Catch: java.lang.Throwable -> Lfb
            java.lang.String r6 = "http://xmlpull.org/v1/doc/features.html#process-namespaces"
            r7 = 1
            r4.setFeature(r6, r7)     // Catch: java.lang.Throwable -> Lfb
            java.lang.String r6 = "UTF-8"
            r4.setInput(r5, r6)     // Catch: java.lang.Throwable -> Lfb
            int r6 = r4.getEventType()     // Catch: java.lang.Throwable -> Lfb
        L38:
            r8 = 2
            if (r6 != r8) goto Lf0
            java.lang.String r6 = r4.getName()     // Catch: java.lang.Throwable -> Lfb
            java.lang.String r8 = "iqProvider"
            boolean r6 = r6.equals(r8)     // Catch: java.lang.Throwable -> Lfb
            if (r6 == 0) goto L97
            r4.next()     // Catch: java.lang.Throwable -> Lfb
            r4.next()     // Catch: java.lang.Throwable -> Lfb
            java.lang.String r6 = r4.nextText()     // Catch: java.lang.Throwable -> Lfb
            r4.next()     // Catch: java.lang.Throwable -> Lfb
            r4.next()     // Catch: java.lang.Throwable -> Lfb
            java.lang.String r8 = r4.nextText()     // Catch: java.lang.Throwable -> Lfb
            r4.next()     // Catch: java.lang.Throwable -> Lfb
            r4.next()     // Catch: java.lang.Throwable -> Lfb
            java.lang.String r9 = r4.nextText()     // Catch: java.lang.Throwable -> Lfb
            java.lang.String r6 = r10.c(r6, r8)     // Catch: java.lang.Throwable -> Lfb
            java.util.Map<java.lang.String, java.lang.Object> r8 = r10.f37553b     // Catch: java.lang.Throwable -> Lfb
            boolean r8 = r8.containsKey(r6)     // Catch: java.lang.Throwable -> Lfb
            if (r8 != 0) goto Lf0
            java.lang.Class r8 = java.lang.Class.forName(r9)     // Catch: java.lang.ClassNotFoundException -> L92 java.lang.Throwable -> Lfb
            java.lang.Class<com.xiaomi.push.v1> r9 = com.xiaomi.push.v1.class
            boolean r9 = r9.isAssignableFrom(r8)     // Catch: java.lang.ClassNotFoundException -> L92 java.lang.Throwable -> Lfb
            if (r9 == 0) goto L87
            java.util.Map<java.lang.String, java.lang.Object> r9 = r10.f37553b     // Catch: java.lang.ClassNotFoundException -> L92 java.lang.Throwable -> Lfb
            java.lang.Object r8 = r8.newInstance()     // Catch: java.lang.ClassNotFoundException -> L92 java.lang.Throwable -> Lfb
        L83:
            r9.put(r6, r8)     // Catch: java.lang.ClassNotFoundException -> L92 java.lang.Throwable -> Lfb
            goto Lf0
        L87:
            java.lang.Class<com.xiaomi.push.p1> r9 = com.xiaomi.push.p1.class
            boolean r9 = r9.isAssignableFrom(r8)     // Catch: java.lang.ClassNotFoundException -> L92 java.lang.Throwable -> Lfb
            if (r9 == 0) goto Lf0
            java.util.Map<java.lang.String, java.lang.Object> r9 = r10.f37553b     // Catch: java.lang.ClassNotFoundException -> L92 java.lang.Throwable -> Lfb
            goto L83
        L92:
            r6 = move-exception
        L93:
            r6.printStackTrace()     // Catch: java.lang.Throwable -> Lfb
            goto Lf0
        L97:
            java.lang.String r6 = r4.getName()     // Catch: java.lang.Throwable -> Lfb
            java.lang.String r8 = "extensionProvider"
            boolean r6 = r6.equals(r8)     // Catch: java.lang.Throwable -> Lfb
            if (r6 == 0) goto Lf0
            r4.next()     // Catch: java.lang.Throwable -> Lfb
            r4.next()     // Catch: java.lang.Throwable -> Lfb
            java.lang.String r6 = r4.nextText()     // Catch: java.lang.Throwable -> Lfb
            r4.next()     // Catch: java.lang.Throwable -> Lfb
            r4.next()     // Catch: java.lang.Throwable -> Lfb
            java.lang.String r8 = r4.nextText()     // Catch: java.lang.Throwable -> Lfb
            r4.next()     // Catch: java.lang.Throwable -> Lfb
            r4.next()     // Catch: java.lang.Throwable -> Lfb
            java.lang.String r9 = r4.nextText()     // Catch: java.lang.Throwable -> Lfb
            java.lang.String r6 = r10.c(r6, r8)     // Catch: java.lang.Throwable -> Lfb
            java.util.Map<java.lang.String, java.lang.Object> r8 = r10.f37552a     // Catch: java.lang.Throwable -> Lfb
            boolean r8 = r8.containsKey(r6)     // Catch: java.lang.Throwable -> Lfb
            if (r8 != 0) goto Lf0
            java.lang.Class r8 = java.lang.Class.forName(r9)     // Catch: java.lang.ClassNotFoundException -> Lee java.lang.Throwable -> Lfb
            java.lang.Class<com.xiaomi.push.w1> r9 = com.xiaomi.push.w1.class
            boolean r9 = r9.isAssignableFrom(r8)     // Catch: java.lang.ClassNotFoundException -> Lee java.lang.Throwable -> Lfb
            if (r9 == 0) goto Le3
            java.util.Map<java.lang.String, java.lang.Object> r9 = r10.f37552a     // Catch: java.lang.ClassNotFoundException -> Lee java.lang.Throwable -> Lfb
            java.lang.Object r8 = r8.newInstance()     // Catch: java.lang.ClassNotFoundException -> Lee java.lang.Throwable -> Lfb
        Ldf:
            r9.put(r6, r8)     // Catch: java.lang.ClassNotFoundException -> Lee java.lang.Throwable -> Lfb
            goto Lf0
        Le3:
            java.lang.Class<com.xiaomi.push.s1> r9 = com.xiaomi.push.s1.class
            boolean r9 = r9.isAssignableFrom(r8)     // Catch: java.lang.ClassNotFoundException -> Lee java.lang.Throwable -> Lfb
            if (r9 == 0) goto Lf0
            java.util.Map<java.lang.String, java.lang.Object> r9 = r10.f37552a     // Catch: java.lang.ClassNotFoundException -> Lee java.lang.Throwable -> Lfb
            goto Ldf
        Lee:
            r6 = move-exception
            goto L93
        Lf0:
            int r6 = r4.next()     // Catch: java.lang.Throwable -> Lfb
            if (r6 != r7) goto L38
            r5.close()     // Catch: java.lang.Exception -> L10
            goto L10
        Lfb:
            r0 = move-exception
            r5.close()     // Catch: java.lang.Exception -> Lff
        Lff:
            throw r0     // Catch: java.lang.Exception -> L104
        L100:
            int r2 = r2 + 1
            goto L6
        L104:
            r0 = move-exception
            r0.printStackTrace()
        L108:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.xiaomi.push.x1.d():void");
    }

    public void e(String str, String str2, Object obj) {
        if (!(obj instanceof w1) && !(obj instanceof Class)) {
            throw new IllegalArgumentException("Provider must be a PacketExtensionProvider or a Class instance.");
        }
        this.f37552a.put(c(str, str2), obj);
    }
}
