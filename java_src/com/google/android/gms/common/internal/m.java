package com.google.android.gms.common.internal;

import androidx.annotation.NonNull;
import java.util.concurrent.ConcurrentHashMap;
@Deprecated
/* loaded from: classes2.dex */
public class m {

    /* renamed from: b  reason: collision with root package name */
    private static final h f7749b = new h("LibraryVersion", "");

    /* renamed from: c  reason: collision with root package name */
    private static m f7750c = new m();

    /* renamed from: a  reason: collision with root package name */
    private ConcurrentHashMap f7751a = new ConcurrentHashMap();

    protected m() {
    }

    @NonNull
    public static m a() {
        return f7750c;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:26:0x0099  */
    /* JADX WARN: Type inference failed for: r4v11 */
    /* JADX WARN: Type inference failed for: r4v14 */
    /* JADX WARN: Type inference failed for: r4v15 */
    /* JADX WARN: Type inference failed for: r4v16 */
    /* JADX WARN: Type inference failed for: r4v5 */
    /* JADX WARN: Type inference failed for: r4v6, types: [java.lang.Object, java.lang.String] */
    /* JADX WARN: Type inference failed for: r4v7, types: [java.lang.String] */
    /* JADX WARN: Type inference failed for: r4v9 */
    @androidx.annotation.NonNull
    @java.lang.Deprecated
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.lang.String b(@androidx.annotation.NonNull java.lang.String r9) {
        /*
            r8 = this;
            java.lang.String r0 = "Failed to get app version for libraryName: "
            java.lang.String r1 = "LibraryVersion"
            java.lang.String r2 = "Please provide a valid libraryName"
            com.google.android.gms.common.internal.p.g(r9, r2)
            java.util.concurrent.ConcurrentHashMap r2 = r8.f7751a
            boolean r2 = r2.containsKey(r9)
            if (r2 == 0) goto L1a
            java.util.concurrent.ConcurrentHashMap r0 = r8.f7751a
            java.lang.Object r9 = r0.get(r9)
            java.lang.String r9 = (java.lang.String) r9
            return r9
        L1a:
            java.util.Properties r2 = new java.util.Properties
            r2.<init>()
            r3 = 1
            r4 = 0
            java.lang.Object[] r3 = new java.lang.Object[r3]     // Catch: java.lang.Throwable -> L79 java.io.IOException -> L7b
            r5 = 0
            r3[r5] = r9     // Catch: java.lang.Throwable -> L79 java.io.IOException -> L7b
            java.lang.Class<com.google.android.gms.common.internal.m> r5 = com.google.android.gms.common.internal.m.class
            java.lang.String r6 = "/%s.properties"
            java.lang.String r3 = java.lang.String.format(r6, r3)     // Catch: java.lang.Throwable -> L79 java.io.IOException -> L7b
            java.io.InputStream r3 = r5.getResourceAsStream(r3)     // Catch: java.lang.Throwable -> L79 java.io.IOException -> L7b
            if (r3 == 0) goto L57
            r2.load(r3)     // Catch: java.lang.Throwable -> L71 java.io.IOException -> L74
            java.lang.String r5 = "version"
            java.lang.String r4 = r2.getProperty(r5, r4)     // Catch: java.lang.Throwable -> L71 java.io.IOException -> L74
            com.google.android.gms.common.internal.h r2 = com.google.android.gms.common.internal.m.f7749b     // Catch: java.lang.Throwable -> L71 java.io.IOException -> L74
            java.lang.StringBuilder r5 = new java.lang.StringBuilder     // Catch: java.lang.Throwable -> L71 java.io.IOException -> L74
            r5.<init>()     // Catch: java.lang.Throwable -> L71 java.io.IOException -> L74
            r5.append(r9)     // Catch: java.lang.Throwable -> L71 java.io.IOException -> L74
            java.lang.String r6 = " version is "
            r5.append(r6)     // Catch: java.lang.Throwable -> L71 java.io.IOException -> L74
            r5.append(r4)     // Catch: java.lang.Throwable -> L71 java.io.IOException -> L74
            java.lang.String r5 = r5.toString()     // Catch: java.lang.Throwable -> L71 java.io.IOException -> L74
            r2.d(r1, r5)     // Catch: java.lang.Throwable -> L71 java.io.IOException -> L74
            goto L6b
        L57:
            com.google.android.gms.common.internal.h r2 = com.google.android.gms.common.internal.m.f7749b     // Catch: java.lang.Throwable -> L71 java.io.IOException -> L74
            java.lang.StringBuilder r5 = new java.lang.StringBuilder     // Catch: java.lang.Throwable -> L71 java.io.IOException -> L74
            r5.<init>()     // Catch: java.lang.Throwable -> L71 java.io.IOException -> L74
            r5.append(r0)     // Catch: java.lang.Throwable -> L71 java.io.IOException -> L74
            r5.append(r9)     // Catch: java.lang.Throwable -> L71 java.io.IOException -> L74
            java.lang.String r5 = r5.toString()     // Catch: java.lang.Throwable -> L71 java.io.IOException -> L74
            r2.e(r1, r5)     // Catch: java.lang.Throwable -> L71 java.io.IOException -> L74
        L6b:
            if (r3 == 0) goto L97
            e4.j.a(r3)
            goto L97
        L71:
            r9 = move-exception
            r4 = r3
            goto La8
        L74:
            r2 = move-exception
            r7 = r4
            r4 = r3
            r3 = r7
            goto L7d
        L79:
            r9 = move-exception
            goto La8
        L7b:
            r2 = move-exception
            r3 = r4
        L7d:
            com.google.android.gms.common.internal.h r5 = com.google.android.gms.common.internal.m.f7749b     // Catch: java.lang.Throwable -> L79
            java.lang.StringBuilder r6 = new java.lang.StringBuilder     // Catch: java.lang.Throwable -> L79
            r6.<init>()     // Catch: java.lang.Throwable -> L79
            r6.append(r0)     // Catch: java.lang.Throwable -> L79
            r6.append(r9)     // Catch: java.lang.Throwable -> L79
            java.lang.String r0 = r6.toString()     // Catch: java.lang.Throwable -> L79
            r5.c(r1, r0, r2)     // Catch: java.lang.Throwable -> L79
            if (r4 == 0) goto L96
            e4.j.a(r4)
        L96:
            r4 = r3
        L97:
            if (r4 != 0) goto La2
            com.google.android.gms.common.internal.h r0 = com.google.android.gms.common.internal.m.f7749b
            java.lang.String r2 = ".properties file is dropped during release process. Failure to read app version is expected during Google internal testing where locally-built libraries are used"
            r0.b(r1, r2)
            java.lang.String r4 = "UNKNOWN"
        La2:
            java.util.concurrent.ConcurrentHashMap r0 = r8.f7751a
            r0.put(r9, r4)
            return r4
        La8:
            if (r4 == 0) goto Lad
            e4.j.a(r4)
        Lad:
            throw r9
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.common.internal.m.b(java.lang.String):java.lang.String");
    }
}
