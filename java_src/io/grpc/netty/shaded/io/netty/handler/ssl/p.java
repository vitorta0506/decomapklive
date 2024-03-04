package io.grpc.netty.shaded.io.netty.handler.ssl;

import java.security.AlgorithmConstraints;
import javax.net.ssl.SSLParameters;
/* loaded from: classes5.dex */
final class p {
    /* JADX INFO: Access modifiers changed from: package-private */
    public static void a(SSLParameters sSLParameters, Object obj) {
        sSLParameters.setAlgorithmConstraints((AlgorithmConstraints) obj);
    }
}
