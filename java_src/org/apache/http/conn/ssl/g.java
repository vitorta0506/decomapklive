package org.apache.http.conn.ssl;

import java.security.KeyManagementException;
import java.security.NoSuchAlgorithmException;
import javax.net.ssl.SSLContext;
@Deprecated
/* loaded from: classes7.dex */
public class g {
    public static SSLContext a() throws SSLInitializationException {
        try {
            SSLContext sSLContext = SSLContext.getInstance(SSLSocketFactory.TLS);
            sSLContext.init(null, null, null);
            return sSLContext;
        } catch (KeyManagementException e10) {
            throw new SSLInitializationException(e10.getMessage(), e10);
        } catch (NoSuchAlgorithmException e11) {
            throw new SSLInitializationException(e11.getMessage(), e11);
        }
    }

    public static f b() {
        return new f();
    }
}
