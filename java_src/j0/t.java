package j0;

import android.util.Log;
import androidx.annotation.NonNull;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
/* loaded from: classes.dex */
public class t implements e0.a<InputStream> {

    /* renamed from: a  reason: collision with root package name */
    private final g0.b f52949a;

    public t(g0.b bVar) {
        this.f52949a = bVar;
    }

    @Override // e0.a
    /* renamed from: c */
    public boolean a(@NonNull InputStream inputStream, @NonNull File file, @NonNull e0.e eVar) {
        byte[] bArr = (byte[]) this.f52949a.c(65536, byte[].class);
        boolean z10 = false;
        FileOutputStream fileOutputStream = null;
        try {
            try {
                try {
                    FileOutputStream fileOutputStream2 = new FileOutputStream(file);
                    while (true) {
                        try {
                            int read = inputStream.read(bArr);
                            if (read == -1) {
                                break;
                            }
                            fileOutputStream2.write(bArr, 0, read);
                        } catch (IOException e10) {
                            e = e10;
                            fileOutputStream = fileOutputStream2;
                            if (Log.isLoggable("StreamEncoder", 3)) {
                                Log.d("StreamEncoder", "Failed to encode data onto the OutputStream", e);
                            }
                            if (fileOutputStream != null) {
                                fileOutputStream.close();
                            }
                            this.f52949a.put(bArr);
                            return z10;
                        } catch (Throwable th2) {
                            th = th2;
                            fileOutputStream = fileOutputStream2;
                            if (fileOutputStream != null) {
                                try {
                                    fileOutputStream.close();
                                } catch (IOException unused) {
                                }
                            }
                            this.f52949a.put(bArr);
                            throw th;
                        }
                    }
                    fileOutputStream2.close();
                    z10 = true;
                    fileOutputStream2.close();
                } catch (IOException unused2) {
                }
            } catch (IOException e11) {
                e = e11;
            }
            this.f52949a.put(bArr);
            return z10;
        } catch (Throwable th3) {
            th = th3;
        }
    }
}
