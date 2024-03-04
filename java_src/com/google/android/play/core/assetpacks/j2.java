package com.google.android.play.core.assetpacks;

import androidx.annotation.Nullable;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.util.Enumeration;
import java.util.Objects;
/* loaded from: classes2.dex */
public final class j2 extends InputStream {

    /* renamed from: a  reason: collision with root package name */
    private final Enumeration f10306a;
    @Nullable

    /* renamed from: b  reason: collision with root package name */
    private InputStream f10307b;

    public j2(Enumeration enumeration) throws IOException {
        this.f10306a = enumeration;
        zza();
    }

    @Override // java.io.InputStream, java.io.Closeable, java.lang.AutoCloseable
    public final void close() throws IOException {
        super.close();
        InputStream inputStream = this.f10307b;
        if (inputStream != null) {
            inputStream.close();
            this.f10307b = null;
        }
    }

    @Override // java.io.InputStream
    public final int read() throws IOException {
        while (true) {
            InputStream inputStream = this.f10307b;
            if (inputStream == null) {
                return -1;
            }
            int read = inputStream.read();
            if (read != -1) {
                return read;
            }
            zza();
        }
    }

    final void zza() throws IOException {
        InputStream inputStream = this.f10307b;
        if (inputStream != null) {
            inputStream.close();
        }
        this.f10307b = this.f10306a.hasMoreElements() ? new FileInputStream((File) this.f10306a.nextElement()) : null;
    }

    @Override // java.io.InputStream
    public final int read(byte[] bArr, int i9, int i10) throws IOException {
        if (this.f10307b == null) {
            return -1;
        }
        Objects.requireNonNull(bArr);
        if (i9 < 0 || i10 < 0 || i10 > bArr.length - i9) {
            throw new IndexOutOfBoundsException();
        }
        if (i10 != 0) {
            do {
                int read = this.f10307b.read(bArr, i9, i10);
                if (read > 0) {
                    return read;
                }
                zza();
            } while (this.f10307b != null);
            return -1;
        }
        return 0;
    }
}
