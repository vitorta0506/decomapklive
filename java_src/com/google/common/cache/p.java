package com.google.common.cache;

import com.google.common.cache.s;
import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
/* loaded from: classes2.dex */
final class p extends s implements n {
    private static final long serialVersionUID = 7249069246863182397L;

    private void readObject(ObjectInputStream objectInputStream) throws IOException, ClassNotFoundException {
        objectInputStream.defaultReadObject();
        this.f12603c = 0;
        this.f12601a = null;
        this.f12602b = objectInputStream.readLong();
    }

    private void writeObject(ObjectOutputStream objectOutputStream) throws IOException {
        objectOutputStream.defaultWriteObject();
        objectOutputStream.writeLong(g());
    }

    @Override // com.google.common.cache.n
    public void add(long j10) {
        int length;
        s.b bVar;
        s.b[] bVarArr = this.f12601a;
        if (bVarArr == null) {
            long j11 = this.f12602b;
            if (b(j11, j11 + j10)) {
                return;
            }
        }
        int[] iArr = s.f12595d.get();
        boolean z10 = true;
        if (iArr != null && bVarArr != null && (length = bVarArr.length) >= 1 && (bVar = bVarArr[(length - 1) & iArr[0]]) != null) {
            long j12 = bVar.f12606a;
            z10 = bVar.a(j12, j12 + j10);
            if (z10) {
                return;
            }
        }
        f(j10, iArr, z10);
    }

    @Override // com.google.common.cache.s
    final long d(long j10, long j11) {
        return j10 + j11;
    }

    @Override // java.lang.Number
    public double doubleValue() {
        return g();
    }

    @Override // java.lang.Number
    public float floatValue() {
        return (float) g();
    }

    public long g() {
        long j10 = this.f12602b;
        s.b[] bVarArr = this.f12601a;
        if (bVarArr != null) {
            for (s.b bVar : bVarArr) {
                if (bVar != null) {
                    j10 += bVar.f12606a;
                }
            }
        }
        return j10;
    }

    @Override // com.google.common.cache.n
    public void increment() {
        add(1L);
    }

    @Override // java.lang.Number
    public int intValue() {
        return (int) g();
    }

    @Override // java.lang.Number
    public long longValue() {
        return g();
    }

    public String toString() {
        return Long.toString(g());
    }
}
