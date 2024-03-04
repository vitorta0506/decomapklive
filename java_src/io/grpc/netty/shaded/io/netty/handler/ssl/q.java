package io.grpc.netty.shaded.io.netty.handler.ssl;

import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.List;
import javax.net.ssl.SNIHostName;
import javax.net.ssl.SNIServerName;
import javax.net.ssl.SSLParameters;
/* loaded from: classes5.dex */
final class q {
    /* JADX INFO: Access modifiers changed from: package-private */
    public static List a(byte[] bArr) {
        if (bArr != null && bArr.length != 0) {
            return Collections.singletonList(new SNIHostName(bArr));
        }
        return Collections.emptyList();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static List b(List<String> list) {
        if (list != null && !list.isEmpty()) {
            ArrayList arrayList = new ArrayList(list.size());
            for (String str : list) {
                arrayList.add(new SNIHostName(str));
            }
            return arrayList;
        }
        return Collections.emptyList();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static List<String> c(SSLParameters sSLParameters) {
        List<SNIServerName> serverNames = sSLParameters.getServerNames();
        if (serverNames != null && !serverNames.isEmpty()) {
            ArrayList arrayList = new ArrayList(serverNames.size());
            for (SNIServerName sNIServerName : serverNames) {
                if (sNIServerName instanceof SNIHostName) {
                    arrayList.add(((SNIHostName) sNIServerName).getAsciiName());
                } else {
                    throw new IllegalArgumentException("Only " + SNIHostName.class.getName() + " instances are supported, but found: " + sNIServerName);
                }
            }
            return arrayList;
        }
        return Collections.emptyList();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static boolean d(SSLParameters sSLParameters) {
        return sSLParameters.getUseCipherSuitesOrder();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static boolean e(String str) {
        try {
            new SNIHostName(str);
            return true;
        } catch (IllegalArgumentException unused) {
            return false;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void f(SSLParameters sSLParameters, Collection<?> collection) {
        sSLParameters.setSNIMatchers(collection);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void g(SSLParameters sSLParameters, List<String> list) {
        sSLParameters.setServerNames(b(list));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void h(SSLParameters sSLParameters, boolean z10) {
        sSLParameters.setUseCipherSuitesOrder(z10);
    }
}
