package com.google.android.gms.internal.recaptcha;

import android.net.Uri;
import java.io.FilterOutputStream;
import java.io.IOException;
import java.io.OutputStream;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes2.dex */
final class j2 extends k3 {

    /* renamed from: a  reason: collision with root package name */
    private final List<t3> f8769a;

    private j2(OutputStream outputStream, List<t3> list) {
        super(outputStream);
        this.f8769a = list;
    }

    public static j2 a(List<u3> list, Uri uri, OutputStream outputStream) {
        ArrayList arrayList = new ArrayList();
        for (u3 u3Var : list) {
            t3 D = u3Var.D();
            if (D != null) {
                arrayList.add(D);
            }
        }
        if (arrayList.isEmpty()) {
            return null;
        }
        return new j2(outputStream, arrayList);
    }

    @Override // java.io.FilterOutputStream, java.io.OutputStream, java.io.Closeable, java.lang.AutoCloseable
    public final void close() throws IOException {
        for (t3 t3Var : this.f8769a) {
            try {
                t3Var.close();
            } catch (Throwable unused) {
            }
        }
        super.close();
    }

    @Override // java.io.FilterOutputStream, java.io.OutputStream
    public final void write(int i9) throws IOException {
        ((FilterOutputStream) this).out.write(i9);
        for (t3 t3Var : this.f8769a) {
            t3Var.zza();
        }
    }

    @Override // com.google.android.gms.internal.recaptcha.k3, java.io.FilterOutputStream, java.io.OutputStream
    public final void write(byte[] bArr) throws IOException {
        ((FilterOutputStream) this).out.write(bArr);
        for (t3 t3Var : this.f8769a) {
            int length = bArr.length;
            t3Var.zza();
        }
    }

    @Override // com.google.android.gms.internal.recaptcha.k3, java.io.FilterOutputStream, java.io.OutputStream
    public final void write(byte[] bArr, int i9, int i10) throws IOException {
        ((FilterOutputStream) this).out.write(bArr, i9, i10);
        for (t3 t3Var : this.f8769a) {
            t3Var.zza();
        }
    }
}
