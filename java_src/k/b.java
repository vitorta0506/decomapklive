package k;

import androidx.annotation.NonNull;
import java.io.IOException;
import java.net.HttpURLConnection;
import java.net.URL;
/* loaded from: classes.dex */
public class b implements e {
    @Override // k.e
    @NonNull
    public c a(@NonNull String str) throws IOException {
        HttpURLConnection httpURLConnection = (HttpURLConnection) new URL(str).openConnection();
        httpURLConnection.setRequestMethod("GET");
        httpURLConnection.connect();
        return new a(httpURLConnection);
    }
}
