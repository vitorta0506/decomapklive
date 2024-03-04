package org.apache.commons.logging;

import java.net.URL;
import java.security.PrivilegedAction;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes7.dex */
public final class f implements PrivilegedAction {

    /* renamed from: a  reason: collision with root package name */
    private final /* synthetic */ URL f55856a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public f(URL url) {
        this.f55856a = url;
    }

    /* JADX WARN: Removed duplicated region for block: B:43:0x0078 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    @Override // java.security.PrivilegedAction
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.lang.Object run() {
        /*
            r6 = this;
            java.lang.String r0 = "Unable to close stream for URL "
            r1 = 0
            java.net.URL r2 = r6.f55856a     // Catch: java.lang.Throwable -> L40 java.io.IOException -> L45
            java.net.URLConnection r2 = r2.openConnection()     // Catch: java.lang.Throwable -> L40 java.io.IOException -> L45
            r3 = 0
            r2.setUseCaches(r3)     // Catch: java.lang.Throwable -> L40 java.io.IOException -> L45
            java.io.InputStream r2 = r2.getInputStream()     // Catch: java.lang.Throwable -> L40 java.io.IOException -> L45
            if (r2 == 0) goto L1f
            java.util.Properties r3 = new java.util.Properties     // Catch: java.io.IOException -> L46 java.lang.Throwable -> L75
            r3.<init>()     // Catch: java.io.IOException -> L46 java.lang.Throwable -> L75
            r3.load(r2)     // Catch: java.io.IOException -> L46 java.lang.Throwable -> L75
            r2.close()     // Catch: java.io.IOException -> L46 java.lang.Throwable -> L75
            return r3
        L1f:
            if (r2 == 0) goto L74
            r2.close()     // Catch: java.io.IOException -> L25
            goto L74
        L25:
            boolean r2 = org.apache.commons.logging.h.u()
            if (r2 == 0) goto L74
            java.lang.StringBuffer r2 = new java.lang.StringBuffer
            r2.<init>()
        L30:
            r2.append(r0)
            java.net.URL r0 = r6.f55856a
            r2.append(r0)
            java.lang.String r0 = r2.toString()
            org.apache.commons.logging.h.a(r0)
            goto L74
        L40:
            r2 = move-exception
            r5 = r2
            r2 = r1
            r1 = r5
            goto L76
        L45:
            r2 = r1
        L46:
            boolean r3 = org.apache.commons.logging.h.u()     // Catch: java.lang.Throwable -> L75
            if (r3 == 0) goto L62
            java.lang.StringBuffer r3 = new java.lang.StringBuffer     // Catch: java.lang.Throwable -> L75
            r3.<init>()     // Catch: java.lang.Throwable -> L75
            java.lang.String r4 = "Unable to read URL "
            r3.append(r4)     // Catch: java.lang.Throwable -> L75
            java.net.URL r4 = r6.f55856a     // Catch: java.lang.Throwable -> L75
            r3.append(r4)     // Catch: java.lang.Throwable -> L75
            java.lang.String r3 = r3.toString()     // Catch: java.lang.Throwable -> L75
            org.apache.commons.logging.h.a(r3)     // Catch: java.lang.Throwable -> L75
        L62:
            if (r2 == 0) goto L74
            r2.close()     // Catch: java.io.IOException -> L68
            goto L74
        L68:
            boolean r2 = org.apache.commons.logging.h.u()
            if (r2 == 0) goto L74
            java.lang.StringBuffer r2 = new java.lang.StringBuffer
            r2.<init>()
            goto L30
        L74:
            return r1
        L75:
            r1 = move-exception
        L76:
            if (r2 == 0) goto L96
            r2.close()     // Catch: java.io.IOException -> L7c
            goto L96
        L7c:
            boolean r2 = org.apache.commons.logging.h.u()
            if (r2 == 0) goto L96
            java.lang.StringBuffer r2 = new java.lang.StringBuffer
            r2.<init>()
            r2.append(r0)
            java.net.URL r0 = r6.f55856a
            r2.append(r0)
            java.lang.String r0 = r2.toString()
            org.apache.commons.logging.h.a(r0)
        L96:
            throw r1
        */
        throw new UnsupportedOperationException("Method not decompiled: org.apache.commons.logging.f.run():java.lang.Object");
    }
}
