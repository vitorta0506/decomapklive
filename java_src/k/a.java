package k;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import org.light.utils.IOUtils;
/* loaded from: classes.dex */
public class a implements c {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final HttpURLConnection f53313a;

    public a(@NonNull HttpURLConnection httpURLConnection) {
        this.f53313a = httpURLConnection;
    }

    private String a(HttpURLConnection httpURLConnection) throws IOException {
        BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(httpURLConnection.getErrorStream()));
        StringBuilder sb2 = new StringBuilder();
        while (true) {
            try {
                try {
                    String readLine = bufferedReader.readLine();
                    if (readLine != null) {
                        sb2.append(readLine);
                        sb2.append('\n');
                    } else {
                        try {
                            break;
                        } catch (Exception unused) {
                        }
                    }
                } catch (Exception e10) {
                    throw e10;
                }
            } catch (Throwable th2) {
                try {
                    bufferedReader.close();
                } catch (Exception unused2) {
                }
                throw th2;
            }
        }
        bufferedReader.close();
        return sb2.toString();
    }

    @Override // k.c
    @Nullable
    public String Q() {
        return this.f53313a.getContentType();
    }

    @Override // k.c
    @NonNull
    public InputStream a0() throws IOException {
        return this.f53313a.getInputStream();
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        this.f53313a.disconnect();
    }

    @Override // k.c
    public boolean isSuccessful() {
        try {
            return this.f53313a.getResponseCode() / 100 == 2;
        } catch (IOException unused) {
            return false;
        }
    }

    @Override // k.c
    @Nullable
    public String u() {
        try {
            if (isSuccessful()) {
                return null;
            }
            return "Unable to fetch " + this.f53313a.getURL() + ". Failed with " + this.f53313a.getResponseCode() + IOUtils.LINE_SEPARATOR_UNIX + a(this.f53313a);
        } catch (IOException e10) {
            m.d.d("get error failed ", e10);
            return e10.getMessage();
        }
    }
}
