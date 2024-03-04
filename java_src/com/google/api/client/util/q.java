package com.google.api.client.util;

import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.text.NumberFormat;
import java.util.logging.Level;
import java.util.logging.Logger;
/* loaded from: classes2.dex */
public class q extends ByteArrayOutputStream {

    /* renamed from: a  reason: collision with root package name */
    private int f11167a;

    /* renamed from: b  reason: collision with root package name */
    private final int f11168b;

    /* renamed from: c  reason: collision with root package name */
    private boolean f11169c;

    /* renamed from: d  reason: collision with root package name */
    private final Level f11170d;

    /* renamed from: e  reason: collision with root package name */
    private final Logger f11171e;

    public q(Logger logger, Level level, int i9) {
        this.f11171e = (Logger) z.d(logger);
        this.f11170d = (Level) z.d(level);
        z.a(i9 >= 0);
        this.f11168b = i9;
    }

    private static void a(StringBuilder sb2, int i9) {
        if (i9 == 1) {
            sb2.append("1 byte");
            return;
        }
        sb2.append(NumberFormat.getInstance().format(i9));
        sb2.append(" bytes");
    }

    @Override // java.io.ByteArrayOutputStream, java.io.OutputStream, java.io.Closeable, java.lang.AutoCloseable
    public synchronized void close() throws IOException {
        if (!this.f11169c) {
            if (this.f11167a != 0) {
                StringBuilder sb2 = new StringBuilder();
                sb2.append("Total: ");
                a(sb2, this.f11167a);
                int i9 = ((ByteArrayOutputStream) this).count;
                if (i9 != 0 && i9 < this.f11167a) {
                    sb2.append(" (logging first ");
                    a(sb2, ((ByteArrayOutputStream) this).count);
                    sb2.append(")");
                }
                this.f11171e.config(sb2.toString());
                if (((ByteArrayOutputStream) this).count != 0) {
                    this.f11171e.log(this.f11170d, toString("UTF-8").replaceAll("[\\x00-\\x09\\x0B\\x0C\\x0E-\\x1F\\x7F]", " "));
                }
            }
            this.f11169c = true;
        }
    }

    @Override // java.io.ByteArrayOutputStream, java.io.OutputStream
    public synchronized void write(int i9) {
        z.a(!this.f11169c);
        this.f11167a++;
        if (((ByteArrayOutputStream) this).count < this.f11168b) {
            super.write(i9);
        }
    }

    @Override // java.io.ByteArrayOutputStream, java.io.OutputStream
    public synchronized void write(byte[] bArr, int i9, int i10) {
        z.a(!this.f11169c);
        this.f11167a += i10;
        int i11 = ((ByteArrayOutputStream) this).count;
        int i12 = this.f11168b;
        if (i11 < i12) {
            int i13 = i11 + i10;
            if (i13 > i12) {
                i10 += i12 - i13;
            }
            super.write(bArr, i9, i10);
        }
    }
}
