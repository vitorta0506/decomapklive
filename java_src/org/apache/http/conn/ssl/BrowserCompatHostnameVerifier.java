package org.apache.http.conn.ssl;

import javax.net.ssl.SSLException;
@Deprecated
/* loaded from: classes7.dex */
public class BrowserCompatHostnameVerifier extends a {
    public static final BrowserCompatHostnameVerifier INSTANCE = new BrowserCompatHostnameVerifier();

    public final String toString() {
        return "BROWSER_COMPATIBLE";
    }

    @Override // org.apache.http.conn.ssl.X509HostnameVerifier
    public final void verify(String str, String[] strArr, String[] strArr2) throws SSLException {
        verify(str, strArr, strArr2, false);
    }
}