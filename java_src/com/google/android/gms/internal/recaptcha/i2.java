package com.google.android.gms.internal.recaptcha;

import android.net.Uri;
import java.io.FilterInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes2.dex */
final class i2 extends i3 {

    /* renamed from: a  reason: collision with root package name */
    private final List<s3> f8749a;

    private i2(InputStream inputStream, List<s3> list) {
        super(inputStream);
        this.f8749a = list;
    }

    public static i2 a(List<u3> list, Uri uri, InputStream inputStream) {
        ArrayList arrayList = new ArrayList();
        for (u3 u3Var : list) {
            s3 zza = u3Var.zza();
            if (zza != null) {
                arrayList.add(zza);
            }
        }
        if (arrayList.isEmpty()) {
            return null;
        }
        return new i2(inputStream, arrayList);
    }

    @Override // java.io.FilterInputStream, java.io.InputStream, java.io.Closeable, java.lang.AutoCloseable
    public final void close() throws IOException {
        for (s3 s3Var : this.f8749a) {
            try {
                s3Var.close();
            } catch (Throwable unused) {
            }
        }
        super.close();
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public final int read() throws IOException {
        int read = ((FilterInputStream) this).in.read();
        if (read != -1) {
            for (s3 s3Var : this.f8749a) {
                s3Var.zza();
            }
        }
        return read;
    }

    @Override // com.google.android.gms.internal.recaptcha.i3, java.io.FilterInputStream, java.io.InputStream
    public final int read(byte[] bArr) throws IOException {
        int read = ((FilterInputStream) this).in.read(bArr);
        if (read != -1) {
            for (s3 s3Var : this.f8749a) {
                s3Var.zza();
            }
        }
        return read;
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public final int read(byte[] bArr, int i9, int i10) throws IOException {
        int read = ((FilterInputStream) this).in.read(bArr, i9, i10);
        if (read != -1) {
            for (s3 s3Var : this.f8749a) {
                s3Var.zza();
            }
        }
        return read;
    }
}
