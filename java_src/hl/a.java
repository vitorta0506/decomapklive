package hl;

import java.io.Closeable;
/* loaded from: classes7.dex */
public final class a {
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
