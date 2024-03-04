package a5;

import android.util.Log;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.util.Set;
import java.util.zip.ZipEntry;
import java.util.zip.ZipFile;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2.dex */
public final class j implements l {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ Set f621a;

    /* renamed from: b  reason: collision with root package name */
    final /* synthetic */ t f622b;

    /* renamed from: c  reason: collision with root package name */
    final /* synthetic */ ZipFile f623c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public j(n nVar, Set set, t tVar, ZipFile zipFile) {
        this.f621a = set;
        this.f622b = tVar;
        this.f623c = zipFile;
    }

    @Override // a5.l
    public final void a(m mVar, File file, boolean z10) throws IOException {
        this.f621a.add(file);
        if (z10) {
            return;
        }
        Log.i("SplitCompat", String.format("NativeLibraryExtractor: split '%s' has native library '%s' that does not exist; extracting from '%s!%s' to '%s'", this.f622b.b(), mVar.f624a, this.f622b.a().getAbsolutePath(), mVar.f625b.getName(), file.getAbsolutePath()));
        ZipFile zipFile = this.f623c;
        ZipEntry zipEntry = mVar.f625b;
        byte[] bArr = new byte[4096];
        if (file.exists()) {
            file.delete();
        }
        InputStream inputStream = zipFile.getInputStream(zipEntry);
        try {
            FileOutputStream fileOutputStream = new FileOutputStream(file);
            f.m(file);
            while (true) {
                int read = inputStream.read(bArr);
                if (read > 0) {
                    fileOutputStream.write(bArr, 0, read);
                } else {
                    fileOutputStream.close();
                    inputStream.close();
                    return;
                }
            }
        } catch (Throwable th2) {
            if (inputStream != null) {
                try {
                    inputStream.close();
                } catch (Throwable unused) {
                }
            }
            throw th2;
        }
    }
}
