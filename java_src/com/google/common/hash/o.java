package com.google.common.hash;

import com.google.common.hash.r;
import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
/* loaded from: classes2.dex */
final class o extends r implements m {
    private static final long serialVersionUID = 7249069246863182397L;

    private void readObject(ObjectInputStream objectInputStream) throws IOException, ClassNotFoundException {
        objectInputStream.defaultReadObject();
        this.f13549c = 0;
        this.f13547a = null;
        this.f13548b = objectInputStream.readLong();
    }

    private void writeObject(ObjectOutputStream objectOutputStream) throws IOException {
        objectOutputStream.defaultWriteObject();
        objectOutputStream.writeLong(a());
    }

    @Override // com.google.common.hash.m
    public long a() {
        long j10 = this.f13548b;
        r.b[] bVarArr = this.f13547a;
        if (bVarArr != null) {
            for (r.b bVar : bVarArr) {
                if (bVar != null) {
                    j10 += bVar.f13552a;
                }
            }
        }
        return j10;
    }

    @Override // com.google.common.hash.m
    public void add(long j10) {
        int length;
        r.b bVar;
        r.b[] bVarArr = this.f13547a;
        if (bVarArr == null) {
            long j11 = this.f13548b;
            if (c(j11, j11 + j10)) {
                return;
            }
        }
        int[] iArr = r.f13541d.get();
        boolean z10 = true;
        if (iArr != null && bVarArr != null && (length = bVarArr.length) >= 1 && (bVar = bVarArr[(length - 1) & iArr[0]]) != null) {
            long j12 = bVar.f13552a;
            z10 = bVar.a(j12, j12 + j10);
            if (z10) {
                return;
            }
        }
        g(j10, iArr, z10);
    }

    @Override // java.lang.Number
    public double doubleValue() {
        return a();
    }

    @Override // com.google.common.hash.r
    final long e(long j10, long j11) {
        return j10 + j11;
    }

    @Override // java.lang.Number
    public float floatValue() {
        return (float) a();
    }

    @Override // com.google.common.hash.m
    public void increment() {
        add(1L);
    }

    @Override // java.lang.Number
    public int intValue() {
        return (int) a();
    }

    @Override // java.lang.Number
    public long longValue() {
        return a();
    }

    public String toString() {
        return Long.toString(a());
    }
}
