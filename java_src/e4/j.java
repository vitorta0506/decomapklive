package e4;

import java.io.Closeable;
import java.io.IOException;
@Deprecated
/* loaded from: classes2.dex */
public final class j {
    public static void a(Closeable closeable) {
        if (closeable != null) {
            try {
                closeable.close();
            } catch (IOException unused) {
            }
        }
    }
}
