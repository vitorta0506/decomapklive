package com.google.protobuf;

import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;
import java.util.Iterator;
import kotlin.UByte;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes3.dex */
public class v0 extends InputStream {

    /* renamed from: a  reason: collision with root package name */
    private Iterator<ByteBuffer> f15291a;

    /* renamed from: b  reason: collision with root package name */
    private ByteBuffer f15292b;

    /* renamed from: c  reason: collision with root package name */
    private int f15293c = 0;

    /* renamed from: d  reason: collision with root package name */
    private int f15294d;

    /* renamed from: e  reason: collision with root package name */
    private int f15295e;

    /* renamed from: f  reason: collision with root package name */
    private boolean f15296f;

    /* renamed from: g  reason: collision with root package name */
    private byte[] f15297g;

    /* renamed from: h  reason: collision with root package name */
    private int f15298h;

    /* renamed from: i  reason: collision with root package name */
    private long f15299i;

    /* JADX INFO: Access modifiers changed from: package-private */
    public v0(Iterable<ByteBuffer> iterable) {
        this.f15291a = iterable.iterator();
        for (ByteBuffer byteBuffer : iterable) {
            this.f15293c++;
        }
        this.f15294d = -1;
        if (a()) {
            return;
        }
        this.f15292b = u0.f15287e;
        this.f15294d = 0;
        this.f15295e = 0;
        this.f15299i = 0L;
    }

    private boolean a() {
        this.f15294d++;
        if (this.f15291a.hasNext()) {
            ByteBuffer next = this.f15291a.next();
            this.f15292b = next;
            this.f15295e = next.position();
            if (this.f15292b.hasArray()) {
                this.f15296f = true;
                this.f15297g = this.f15292b.array();
                this.f15298h = this.f15292b.arrayOffset();
            } else {
                this.f15296f = false;
                this.f15299i = m3.k(this.f15292b);
                this.f15297g = null;
            }
            return true;
        }
        return false;
    }

    private void b(int i9) {
        int i10 = this.f15295e + i9;
        this.f15295e = i10;
        if (i10 == this.f15292b.limit()) {
            a();
        }
    }

    @Override // java.io.InputStream
    public int read() throws IOException {
        if (this.f15294d == this.f15293c) {
            return -1;
        }
        if (this.f15296f) {
            int i9 = this.f15297g[this.f15295e + this.f15298h] & UByte.MAX_VALUE;
            b(1);
            return i9;
        }
        int w6 = m3.w(this.f15295e + this.f15299i) & UByte.MAX_VALUE;
        b(1);
        return w6;
    }

    @Override // java.io.InputStream
    public int read(byte[] bArr, int i9, int i10) throws IOException {
        if (this.f15294d == this.f15293c) {
            return -1;
        }
        int limit = this.f15292b.limit();
        int i11 = this.f15295e;
        int i12 = limit - i11;
        if (i10 > i12) {
            i10 = i12;
        }
        if (this.f15296f) {
            System.arraycopy(this.f15297g, i11 + this.f15298h, bArr, i9, i10);
            b(i10);
        } else {
            int position = this.f15292b.position();
            this.f15292b.position(this.f15295e);
            this.f15292b.get(bArr, i9, i10);
            this.f15292b.position(position);
            b(i10);
        }
        return i10;
    }
}
