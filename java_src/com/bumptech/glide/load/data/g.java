package com.bumptech.glide.load.data;

import androidx.annotation.NonNull;
import java.io.FilterInputStream;
import java.io.IOException;
import java.io.InputStream;
import kotlin.UByte;
/* loaded from: classes.dex */
public final class g extends FilterInputStream {

    /* renamed from: c  reason: collision with root package name */
    private static final byte[] f4229c;

    /* renamed from: d  reason: collision with root package name */
    private static final int f4230d;

    /* renamed from: e  reason: collision with root package name */
    private static final int f4231e;

    /* renamed from: a  reason: collision with root package name */
    private final byte f4232a;

    /* renamed from: b  reason: collision with root package name */
    private int f4233b;

    static {
        byte[] bArr = {-1, -31, 0, 28, 69, 120, 105, 102, 0, 0, 77, 77, 0, 0, 0, 0, 0, 8, 0, 1, 1, 18, 0, 2, 0, 0, 0, 1, 0};
        f4229c = bArr;
        int length = bArr.length;
        f4230d = length;
        f4231e = length + 2;
    }

    public g(InputStream inputStream, int i9) {
        super(inputStream);
        if (i9 >= -1 && i9 <= 8) {
            this.f4232a = (byte) i9;
            return;
        }
        throw new IllegalArgumentException("Cannot add invalid orientation: " + i9);
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public void mark(int i9) {
        throw new UnsupportedOperationException();
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public boolean markSupported() {
        return false;
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public int read() throws IOException {
        int read;
        int i9;
        int i10 = this.f4233b;
        if (i10 < 2 || i10 > (i9 = f4231e)) {
            read = super.read();
        } else if (i10 == i9) {
            read = this.f4232a;
        } else {
            read = f4229c[i10 - 2] & UByte.MAX_VALUE;
        }
        if (read != -1) {
            this.f4233b++;
        }
        return read;
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public void reset() throws IOException {
        throw new UnsupportedOperationException();
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public long skip(long j10) throws IOException {
        long skip = super.skip(j10);
        if (skip > 0) {
            this.f4233b = (int) (this.f4233b + skip);
        }
        return skip;
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public int read(@NonNull byte[] bArr, int i9, int i10) throws IOException {
        int i11;
        int i12 = this.f4233b;
        int i13 = f4231e;
        if (i12 > i13) {
            i11 = super.read(bArr, i9, i10);
        } else if (i12 == i13) {
            bArr[i9] = this.f4232a;
            i11 = 1;
        } else if (i12 < 2) {
            i11 = super.read(bArr, i9, 2 - i12);
        } else {
            int min = Math.min(i13 - i12, i10);
            System.arraycopy(f4229c, this.f4233b - 2, bArr, i9, min);
            i11 = min;
        }
        if (i11 > 0) {
            this.f4233b += i11;
        }
        return i11;
    }
}
