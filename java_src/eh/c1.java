package eh;

import java.net.InetAddress;
import java.net.UnknownHostException;
/* loaded from: classes5.dex */
abstract class c1 {
    /* JADX INFO: Access modifiers changed from: package-private */
    public static c1 b(String str, int i9) throws UnknownHostException {
        return new k(InetAddress.getByName(str), i9);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public abstract InetAddress a();

    /* JADX INFO: Access modifiers changed from: package-private */
    public abstract int c();
}
