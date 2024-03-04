package org.conscrypt;

import java.nio.ByteBuffer;
import javax.net.ssl.SSLEngine;
import javax.net.ssl.SSLEngineResult;
import javax.net.ssl.SSLException;
import javax.net.ssl.SSLSession;
/* loaded from: classes7.dex */
abstract class a extends SSLEngine {
    a() {
    }

    abstract SSLSession a();

    /* JADX INFO: Access modifiers changed from: package-private */
    public abstract int b();

    /* JADX INFO: Access modifiers changed from: package-private */
    public abstract void c(String[] strArr);

    /* JADX INFO: Access modifiers changed from: package-private */
    public abstract void d(c cVar);

    /* JADX INFO: Access modifiers changed from: package-private */
    public abstract void e(m mVar);

    /* JADX INFO: Access modifiers changed from: package-private */
    public abstract SSLEngineResult f(ByteBuffer[] byteBufferArr, ByteBuffer[] byteBufferArr2) throws SSLException;

    @Override // javax.net.ssl.SSLEngine
    public final SSLSession getHandshakeSession() {
        return a();
    }
}
