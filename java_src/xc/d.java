package xc;

import androidx.annotation.NonNull;
import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
/* loaded from: classes4.dex */
public class d implements c<String> {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final String f59684a;

    public d() {
        this("UTF-8");
    }

    @Override // xc.c
    @NonNull
    /* renamed from: b */
    public String a(@NonNull InputStream inputStream) throws IOException {
        StringBuilder sb2 = new StringBuilder();
        BufferedReader bufferedReader = null;
        try {
            BufferedReader bufferedReader2 = new BufferedReader(new InputStreamReader(inputStream, this.f59684a));
            while (true) {
                try {
                    String readLine = bufferedReader2.readLine();
                    if (readLine != null) {
                        sb2.append(readLine);
                    } else {
                        bufferedReader2.close();
                        return sb2.toString();
                    }
                } catch (Throwable th2) {
                    th = th2;
                    bufferedReader = bufferedReader2;
                    if (bufferedReader != null) {
                        bufferedReader.close();
                    }
                    throw th;
                }
            }
        } catch (Throwable th3) {
            th = th3;
        }
    }

    public d(@NonNull String str) {
        this.f59684a = str;
    }
}
