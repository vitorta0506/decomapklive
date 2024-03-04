package com.bumptech.glide.load.data;

import androidx.annotation.NonNull;
import androidx.annotation.VisibleForTesting;
import java.io.IOException;
import java.io.OutputStream;
/* loaded from: classes.dex */
public final class c extends OutputStream {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final OutputStream f4222a;

    /* renamed from: b  reason: collision with root package name */
    private byte[] f4223b;

    /* renamed from: c  reason: collision with root package name */
    private g0.b f4224c;

    /* renamed from: d  reason: collision with root package name */
    private int f4225d;

    public c(@NonNull OutputStream outputStream, @NonNull g0.b bVar) {
        this(outputStream, bVar, 65536);
    }

    private void a() throws IOException {
        int i9 = this.f4225d;
        if (i9 > 0) {
            this.f4222a.write(this.f4223b, 0, i9);
            this.f4225d = 0;
        }
    }

    private void c() throws IOException {
        if (this.f4225d == this.f4223b.length) {
            a();
        }
    }

    private void e() {
        byte[] bArr = this.f4223b;
        if (bArr != null) {
            this.f4224c.put(bArr);
            this.f4223b = null;
        }
    }

    @Override // java.io.OutputStream, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        try {
            flush();
            this.f4222a.close();
            e();
        } catch (Throwable th2) {
            this.f4222a.close();
            throw th2;
        }
    }

    @Override // java.io.OutputStream, java.io.Flushable
    public void flush() throws IOException {
        a();
        this.f4222a.flush();
    }

    @Override // java.io.OutputStream
    public void write(int i9) throws IOException {
        byte[] bArr = this.f4223b;
        int i10 = this.f4225d;
        this.f4225d = i10 + 1;
        bArr[i10] = (byte) i9;
        c();
    }

    @VisibleForTesting
    c(@NonNull OutputStream outputStream, g0.b bVar, int i9) {
        this.f4222a = outputStream;
        this.f4224c = bVar;
        this.f4223b = (byte[]) bVar.c(i9, byte[].class);
    }

    @Override // java.io.OutputStream
    public void write(@NonNull byte[] bArr) throws IOException {
        write(bArr, 0, bArr.length);
    }

    @Override // java.io.OutputStream
    public void write(@NonNull byte[] bArr, int i9, int i10) throws IOException {
        int i11 = 0;
        do {
            int i12 = i10 - i11;
            int i13 = i9 + i11;
            int i14 = this.f4225d;
            if (i14 == 0 && i12 >= this.f4223b.length) {
                this.f4222a.write(bArr, i13, i12);
                return;
            }
            int min = Math.min(i12, this.f4223b.length - i14);
            System.arraycopy(bArr, i13, this.f4223b, this.f4225d, min);
            this.f4225d += min;
            i11 += min;
            c();
        } while (i11 < i10);
    }
}
