package j3;

import android.net.Uri;
import androidx.annotation.Nullable;
import java.io.IOException;
import java.util.List;
import java.util.Map;
/* loaded from: classes2.dex */
public interface i extends f {

    /* loaded from: classes2.dex */
    public interface a {
        i a();
    }

    long b(l lVar) throws IOException;

    void c(b0 b0Var);

    void close() throws IOException;

    Map<String, List<String>> e();

    @Nullable
    Uri getUri();
}
