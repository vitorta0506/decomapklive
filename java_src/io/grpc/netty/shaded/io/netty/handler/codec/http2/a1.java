package io.grpc.netty.shaded.io.netty.handler.codec.http2;

import io.grpc.netty.shaded.io.netty.handler.codec.http2.Http2Headers;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.NoSuchElementException;
/* loaded from: classes5.dex */
public final class a1 implements Http2Headers {

    /* renamed from: a  reason: collision with root package name */
    private final io.grpc.netty.shaded.io.netty.util.c[] f44121a;

    /* renamed from: b  reason: collision with root package name */
    private final io.grpc.netty.shaded.io.netty.util.c[] f44122b;

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes5.dex */
    public final class b implements Map.Entry<CharSequence, CharSequence>, Iterator<Map.Entry<CharSequence, CharSequence>> {

        /* renamed from: a  reason: collision with root package name */
        private int f44123a;

        /* renamed from: b  reason: collision with root package name */
        private io.grpc.netty.shaded.io.netty.util.c[] f44124b;

        /* renamed from: c  reason: collision with root package name */
        private io.grpc.netty.shaded.io.netty.util.c f44125c;

        /* renamed from: d  reason: collision with root package name */
        private io.grpc.netty.shaded.io.netty.util.c f44126d;

        private b() {
            this.f44124b = a1.this.f44121a.length != 0 ? a1.this.f44121a : a1.this.f44122b;
        }

        @Override // java.util.Map.Entry
        /* renamed from: a */
        public CharSequence getKey() {
            return this.f44125c;
        }

        @Override // java.util.Map.Entry
        /* renamed from: b */
        public CharSequence getValue() {
            return this.f44126d;
        }

        @Override // java.util.Iterator
        /* renamed from: c */
        public Map.Entry<CharSequence, CharSequence> next() {
            if (hasNext()) {
                io.grpc.netty.shaded.io.netty.util.c[] cVarArr = this.f44124b;
                int i9 = this.f44123a;
                this.f44125c = cVarArr[i9];
                this.f44126d = cVarArr[i9 + 1];
                int i10 = i9 + 2;
                this.f44123a = i10;
                if (i10 == cVarArr.length && cVarArr == a1.this.f44121a) {
                    this.f44124b = a1.this.f44122b;
                    this.f44123a = 0;
                }
                return this;
            }
            throw new NoSuchElementException();
        }

        @Override // java.util.Map.Entry
        /* renamed from: d */
        public CharSequence setValue(CharSequence charSequence) {
            throw new UnsupportedOperationException("read only");
        }

        @Override // java.util.Iterator
        public boolean hasNext() {
            return this.f44123a != this.f44124b.length;
        }

        @Override // java.util.Iterator
        public void remove() {
            throw new UnsupportedOperationException("read only");
        }

        public String toString() {
            return this.f44125c.toString() + '=' + this.f44126d.toString();
        }
    }

    private a1(boolean z10, io.grpc.netty.shaded.io.netty.util.c[] cVarArr, io.grpc.netty.shaded.io.netty.util.c... cVarArr2) {
        if ((cVarArr2.length & 1) == 0) {
            if (z10) {
                z(cVarArr, cVarArr2);
            }
            this.f44121a = cVarArr;
            this.f44122b = cVarArr2;
            return;
        }
        throw u();
    }

    private io.grpc.netty.shaded.io.netty.util.c m(CharSequence charSequence) {
        int s10 = io.grpc.netty.shaded.io.netty.util.c.s(charSequence);
        int length = this.f44121a.length - 1;
        for (int i9 = 0; i9 < length; i9 += 2) {
            io.grpc.netty.shaded.io.netty.util.c cVar = this.f44121a[i9];
            if (cVar.hashCode() == s10 && cVar.k(charSequence)) {
                return this.f44121a[i9 + 1];
            }
        }
        int length2 = this.f44122b.length - 1;
        for (int i10 = 0; i10 < length2; i10 += 2) {
            io.grpc.netty.shaded.io.netty.util.c cVar2 = this.f44122b[i10];
            if (cVar2.hashCode() == s10 && cVar2.k(charSequence)) {
                return this.f44122b[i10 + 1];
            }
        }
        return null;
    }

    private static IllegalArgumentException u() {
        return new IllegalArgumentException("pseudoHeaders and otherHeaders must be arrays of [name, value] pairs");
    }

    public static a1 x(boolean z10, io.grpc.netty.shaded.io.netty.util.c cVar, io.grpc.netty.shaded.io.netty.util.c... cVarArr) {
        return new a1(z10, new io.grpc.netty.shaded.io.netty.util.c[]{Http2Headers.PseudoHeaderName.STATUS.value(), cVar}, cVarArr);
    }

    private static void z(io.grpc.netty.shaded.io.netty.util.c[] cVarArr, io.grpc.netty.shaded.io.netty.util.c... cVarArr2) {
        for (int i9 = 1; i9 < cVarArr.length; i9 += 2) {
            io.grpc.netty.shaded.io.netty.util.internal.s.i(cVarArr[i9], i9, "pseudoHeaders");
        }
        int length = cVarArr2.length - 1;
        boolean z10 = false;
        for (int i10 = 0; i10 < length; i10 += 2) {
            io.grpc.netty.shaded.io.netty.util.c cVar = cVarArr2[i10];
            i.f44317i.a(cVar);
            if (!z10 && !cVar.v() && cVar.d(0) != 58) {
                z10 = true;
            } else if (z10 && !cVar.v() && cVar.d(0) == 58) {
                throw new IllegalArgumentException("otherHeaders name at index " + i10 + " is a pseudo header that appears after non-pseudo headers.");
            }
            int i11 = i10 + 1;
            io.grpc.netty.shaded.io.netty.util.internal.s.i(cVarArr2[i11], i11, "otherHeaders");
        }
    }

    @Override // pg.i
    /* renamed from: f */
    public Http2Headers Z0(CharSequence charSequence, CharSequence charSequence2) {
        throw new UnsupportedOperationException("read only");
    }

    @Override // pg.i
    /* renamed from: g */
    public CharSequence get(CharSequence charSequence) {
        return m(charSequence);
    }

    @Override // io.grpc.netty.shaded.io.netty.handler.codec.http2.Http2Headers, pg.i, java.lang.Iterable
    public Iterator<Map.Entry<CharSequence, CharSequence>> iterator() {
        return new b();
    }

    @Override // pg.i
    /* renamed from: n */
    public List<CharSequence> d0(CharSequence charSequence) {
        int s10 = io.grpc.netty.shaded.io.netty.util.c.s(charSequence);
        ArrayList arrayList = new ArrayList();
        int length = this.f44121a.length - 1;
        for (int i9 = 0; i9 < length; i9 += 2) {
            io.grpc.netty.shaded.io.netty.util.c cVar = this.f44121a[i9];
            if (cVar.hashCode() == s10 && cVar.k(charSequence)) {
                arrayList.add(this.f44121a[i9 + 1]);
            }
        }
        int length2 = this.f44122b.length - 1;
        for (int i10 = 0; i10 < length2; i10 += 2) {
            io.grpc.netty.shaded.io.netty.util.c cVar2 = this.f44122b[i10];
            if (cVar2.hashCode() == s10 && cVar2.k(charSequence)) {
                arrayList.add(this.f44122b[i10 + 1]);
            }
        }
        return arrayList;
    }

    @Override // pg.i
    public int size() {
        return (this.f44121a.length + this.f44122b.length) >>> 1;
    }

    @Override // io.grpc.netty.shaded.io.netty.handler.codec.http2.Http2Headers
    public CharSequence t() {
        return get(Http2Headers.PseudoHeaderName.STATUS.value());
    }

    public String toString() {
        StringBuilder sb2 = new StringBuilder(a1.class.getSimpleName());
        sb2.append('[');
        Iterator<Map.Entry<CharSequence, CharSequence>> it = iterator();
        String str = "";
        while (it.hasNext()) {
            Map.Entry<CharSequence, CharSequence> next = it.next();
            sb2.append(str);
            sb2.append(next.getKey());
            sb2.append(": ");
            sb2.append(next.getValue());
            str = ", ";
        }
        sb2.append(']');
        return sb2.toString();
    }

    @Override // pg.i
    /* renamed from: y */
    public Http2Headers K0(CharSequence charSequence, long j10) {
        throw new UnsupportedOperationException("read only");
    }
}
