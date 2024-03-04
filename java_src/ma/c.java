package ma;

import java.io.Closeable;
/* loaded from: classes3.dex */
public class c {
    public static void a(Closeable closeable) {
        if (closeable != null) {
            try {
                closeable.close();
            } catch (RuntimeException e10) {
                throw e10;
            } catch (Exception unused) {
            }
        }
    }
}
