package com.google.android.play.core.assetpacks;

import java.io.FilterInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.util.Arrays;
/* loaded from: classes2.dex */
final class q0 extends FilterInputStream {

    /* renamed from: a  reason: collision with root package name */
    private final k2 f10377a;

    /* renamed from: b  reason: collision with root package name */
    private byte[] f10378b;

    /* renamed from: c  reason: collision with root package name */
    private long f10379c;

    /* renamed from: d  reason: collision with root package name */
    private boolean f10380d;

    /* renamed from: e  reason: collision with root package name */
    private boolean f10381e;

    /* JADX INFO: Access modifiers changed from: package-private */
    public q0(InputStream inputStream) {
        super(inputStream);
        this.f10377a = new k2();
        this.f10378b = new byte[4096];
        this.f10380d = false;
        this.f10381e = false;
    }

    private final int k(byte[] bArr, int i9, int i10) throws IOException {
        return Math.max(0, super.read(bArr, i9, i10));
    }

    private final boolean o(int i9) throws IOException {
        int k10 = k(this.f10378b, 0, i9);
        if (k10 != i9) {
            int i10 = i9 - k10;
            if (k(this.f10378b, k10, i10) != i10) {
                this.f10377a.b(this.f10378b, 0, k10);
                return false;
            }
        }
        this.f10377a.b(this.f10378b, 0, i9);
        return true;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final long a() {
        return this.f10379c;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final l3 c() throws IOException {
        byte[] bArr;
        if (this.f10379c <= 0) {
            if (this.f10380d) {
            }
            return new m0(null, -1L, -1, false, false, null);
        }
        do {
            bArr = this.f10378b;
        } while (read(bArr, 0, bArr.length) != -1);
        if (this.f10380d && !this.f10381e) {
            if (!o(30)) {
                this.f10380d = true;
                return this.f10377a.c();
            }
            l3 c10 = this.f10377a.c();
            if (c10.d()) {
                this.f10381e = true;
                return c10;
            } else if (c10.b() != 4294967295L) {
                int a10 = this.f10377a.a() - 30;
                long j10 = a10;
                int length = this.f10378b.length;
                if (j10 > length) {
                    do {
                        length += length;
                    } while (length < j10);
                    this.f10378b = Arrays.copyOf(this.f10378b, length);
                }
                if (!o(a10)) {
                    this.f10380d = true;
                    return this.f10377a.c();
                }
                l3 c11 = this.f10377a.c();
                this.f10379c = c11.b();
                return c11;
            } else {
                throw new f1("Files bigger than 4GiB are not supported.");
            }
        }
        return new m0(null, -1L, -1, false, false, null);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final boolean e() {
        return this.f10381e;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final boolean j() {
        return this.f10380d;
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public final int read(byte[] bArr) throws IOException {
        return read(bArr, 0, bArr.length);
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public final int read(byte[] bArr, int i9, int i10) throws IOException {
        long j10 = this.f10379c;
        if (j10 <= 0 || this.f10380d) {
            return -1;
        }
        int k10 = k(bArr, i9, (int) Math.min(j10, i10));
        this.f10379c -= k10;
        if (k10 == 0) {
            this.f10380d = true;
            return 0;
        }
        return k10;
    }
}
