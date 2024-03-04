package k;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import java.io.Closeable;
import java.io.IOException;
import java.io.InputStream;
/* loaded from: classes.dex */
public interface c extends Closeable {
    @Nullable
    String Q();

    @NonNull
    InputStream a0() throws IOException;

    boolean isSuccessful();

    @Nullable
    String u();
}
