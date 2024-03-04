package n1;

import android.content.Context;
import java.io.Closeable;
import java.io.IOException;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public abstract class u implements Closeable {

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public interface a {
        a a(Context context);

        u build();
    }

    abstract w1.d a();

    /* JADX INFO: Access modifiers changed from: package-private */
    public abstract t c();

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        a().close();
    }
}
