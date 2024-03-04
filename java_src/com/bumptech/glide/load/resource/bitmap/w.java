package com.bumptech.glide.load.resource.bitmap;

import androidx.annotation.NonNull;
import androidx.annotation.VisibleForTesting;
import java.io.FilterInputStream;
import java.io.IOException;
import java.io.InputStream;
import kotlin.UByte;
/* loaded from: classes.dex */
public class w extends FilterInputStream {

    /* renamed from: a  reason: collision with root package name */
    private volatile byte[] f4565a;

    /* renamed from: b  reason: collision with root package name */
    private int f4566b;

    /* renamed from: c  reason: collision with root package name */
    private int f4567c;

    /* renamed from: d  reason: collision with root package name */
    private int f4568d;

    /* renamed from: e  reason: collision with root package name */
    private int f4569e;

    /* renamed from: f  reason: collision with root package name */
    private final g0.b f4570f;

    /* loaded from: classes.dex */
    static class a extends IOException {
        private static final long serialVersionUID = -4338378848813561757L;

        a(String str) {
            super(str);
        }
    }

    public w(@NonNull InputStream inputStream, @NonNull g0.b bVar) {
        this(inputStream, bVar, 65536);
    }

    private int a(InputStream inputStream, byte[] bArr) throws IOException {
        int i9 = this.f4568d;
        if (i9 != -1) {
            int i10 = this.f4569e - i9;
            int i11 = this.f4567c;
            if (i10 < i11) {
                if (i9 == 0 && i11 > bArr.length && this.f4566b == bArr.length) {
                    int length = bArr.length * 2;
                    if (length <= i11) {
                        i11 = length;
                    }
                    byte[] bArr2 = (byte[]) this.f4570f.c(i11, byte[].class);
                    System.arraycopy(bArr, 0, bArr2, 0, bArr.length);
                    this.f4565a = bArr2;
                    this.f4570f.put(bArr);
                    bArr = bArr2;
                } else if (i9 > 0) {
                    System.arraycopy(bArr, i9, bArr, 0, bArr.length - i9);
                }
                int i12 = this.f4569e - this.f4568d;
                this.f4569e = i12;
                this.f4568d = 0;
                this.f4566b = 0;
                int read = inputStream.read(bArr, i12, bArr.length - i12);
                int i13 = this.f4569e;
                if (read > 0) {
                    i13 += read;
                }
                this.f4566b = i13;
                return read;
            }
        }
        int read2 = inputStream.read(bArr);
        if (read2 > 0) {
            this.f4568d = -1;
            this.f4569e = 0;
            this.f4566b = read2;
        }
        return read2;
    }

    private static IOException j() throws IOException {
        throw new IOException("BufferedInputStream is closed");
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public synchronized int available() throws IOException {
        InputStream inputStream;
        inputStream = ((FilterInputStream) this).in;
        if (this.f4565a != null && inputStream != null) {
        } else {
            throw j();
        }
        return (this.f4566b - this.f4569e) + inputStream.available();
    }

    public synchronized void c() {
        this.f4567c = this.f4565a.length;
    }

    @Override // java.io.FilterInputStream, java.io.InputStream, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        if (this.f4565a != null) {
            this.f4570f.put(this.f4565a);
            this.f4565a = null;
        }
        InputStream inputStream = ((FilterInputStream) this).in;
        ((FilterInputStream) this).in = null;
        if (inputStream != null) {
            inputStream.close();
        }
    }

    public synchronized void e() {
        if (this.f4565a != null) {
            this.f4570f.put(this.f4565a);
            this.f4565a = null;
        }
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public synchronized void mark(int i9) {
        this.f4567c = Math.max(this.f4567c, i9);
        this.f4568d = this.f4569e;
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public boolean markSupported() {
        return true;
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public synchronized int read() throws IOException {
        byte[] bArr = this.f4565a;
        InputStream inputStream = ((FilterInputStream) this).in;
        if (bArr != null && inputStream != null) {
            if (this.f4569e < this.f4566b || a(inputStream, bArr) != -1) {
                if (bArr != this.f4565a && (bArr = this.f4565a) == null) {
                    throw j();
                }
                int i9 = this.f4566b;
                int i10 = this.f4569e;
                if (i9 - i10 > 0) {
                    this.f4569e = i10 + 1;
                    return bArr[i10] & UByte.MAX_VALUE;
                }
                return -1;
            }
            return -1;
        }
        throw j();
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public synchronized void reset() throws IOException {
        if (this.f4565a != null) {
            int i9 = this.f4568d;
            if (-1 != i9) {
                this.f4569e = i9;
            } else {
                throw new a("Mark has been invalidated, pos: " + this.f4569e + " markLimit: " + this.f4567c);
            }
        } else {
            throw new IOException("Stream is closed");
        }
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public synchronized long skip(long j10) throws IOException {
        if (j10 < 1) {
            return 0L;
        }
        byte[] bArr = this.f4565a;
        if (bArr != null) {
            InputStream inputStream = ((FilterInputStream) this).in;
            if (inputStream != null) {
                int i9 = this.f4566b;
                int i10 = this.f4569e;
                if (i9 - i10 >= j10) {
                    this.f4569e = (int) (i10 + j10);
                    return j10;
                }
                long j11 = i9 - i10;
                this.f4569e = i9;
                if (this.f4568d != -1 && j10 <= this.f4567c) {
                    if (a(inputStream, bArr) == -1) {
                        return j11;
                    }
                    int i11 = this.f4566b;
                    int i12 = this.f4569e;
                    if (i11 - i12 >= j10 - j11) {
                        this.f4569e = (int) ((i12 + j10) - j11);
                        return j10;
                    }
                    long j12 = (j11 + i11) - i12;
                    this.f4569e = i11;
                    return j12;
                }
                long skip = inputStream.skip(j10 - j11);
                if (skip > 0) {
                    this.f4568d = -1;
                }
                return j11 + skip;
            }
            throw j();
        }
        throw j();
    }

    @VisibleForTesting
    w(@NonNull InputStream inputStream, @NonNull g0.b bVar, int i9) {
        super(inputStream);
        this.f4568d = -1;
        this.f4570f = bVar;
        this.f4565a = (byte[]) bVar.c(i9, byte[].class);
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public synchronized int read(@NonNull byte[] bArr, int i9, int i10) throws IOException {
        int i11;
        int i12;
        byte[] bArr2 = this.f4565a;
        if (bArr2 == null) {
            throw j();
        }
        if (i10 == 0) {
            return 0;
        }
        InputStream inputStream = ((FilterInputStream) this).in;
        if (inputStream != null) {
            int i13 = this.f4569e;
            int i14 = this.f4566b;
            if (i13 < i14) {
                int i15 = i14 - i13 >= i10 ? i10 : i14 - i13;
                System.arraycopy(bArr2, i13, bArr, i9, i15);
                this.f4569e += i15;
                if (i15 == i10 || inputStream.available() == 0) {
                    return i15;
                }
                i9 += i15;
                i11 = i10 - i15;
            } else {
                i11 = i10;
            }
            while (true) {
                if (this.f4568d == -1 && i11 >= bArr2.length) {
                    i12 = inputStream.read(bArr, i9, i11);
                    if (i12 == -1) {
                        return i11 != i10 ? i10 - i11 : -1;
                    }
                } else if (a(inputStream, bArr2) == -1) {
                    return i11 != i10 ? i10 - i11 : -1;
                } else {
                    if (bArr2 != this.f4565a && (bArr2 = this.f4565a) == null) {
                        throw j();
                    }
                    int i16 = this.f4566b;
                    int i17 = this.f4569e;
                    i12 = i16 - i17 >= i11 ? i11 : i16 - i17;
                    System.arraycopy(bArr2, i17, bArr, i9, i12);
                    this.f4569e += i12;
                }
                i11 -= i12;
                if (i11 == 0) {
                    return i10;
                }
                if (inputStream.available() == 0) {
                    return i10 - i11;
                }
                i9 += i12;
            }
        } else {
            throw j();
        }
    }
}
