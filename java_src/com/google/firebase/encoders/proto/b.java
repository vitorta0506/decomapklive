package com.google.firebase.encoders.proto;

import androidx.annotation.NonNull;
import java.io.OutputStream;
/* loaded from: classes2.dex */
final class b extends OutputStream {

    /* renamed from: a  reason: collision with root package name */
    private long f13843a = 0;

    /* JADX INFO: Access modifiers changed from: package-private */
    public long a() {
        return this.f13843a;
    }

    @Override // java.io.OutputStream
    public void write(int i9) {
        this.f13843a++;
    }

    @Override // java.io.OutputStream
    public void write(byte[] bArr) {
        this.f13843a += bArr.length;
    }

    @Override // java.io.OutputStream
    public void write(@NonNull byte[] bArr, int i9, int i10) {
        int i11;
        if (i9 >= 0 && i9 <= bArr.length && i10 >= 0 && (i11 = i9 + i10) <= bArr.length && i11 >= 0) {
            this.f13843a += i10;
            return;
        }
        throw new IndexOutOfBoundsException();
    }
}
