package ig;

import io.grpc.netty.shaded.io.netty.handler.codec.http2.Http2Headers;
import java.util.Iterator;
import java.util.Map;
import java.util.NoSuchElementException;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes5.dex */
public final class n extends ig.a {

    /* renamed from: c  reason: collision with root package name */
    private static final io.grpc.netty.shaded.io.netty.util.c[] f41239c = new io.grpc.netty.shaded.io.netty.util.c[0];

    /* renamed from: a  reason: collision with root package name */
    private final io.grpc.netty.shaded.io.netty.util.c[] f41240a;

    /* renamed from: b  reason: collision with root package name */
    private final io.grpc.netty.shaded.io.netty.util.c[] f41241b;

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes5.dex */
    public class b implements Map.Entry<CharSequence, CharSequence>, Iterator<Map.Entry<CharSequence, CharSequence>> {

        /* renamed from: a  reason: collision with root package name */
        private int f41242a;

        /* renamed from: b  reason: collision with root package name */
        private io.grpc.netty.shaded.io.netty.util.c[] f41243b;

        /* renamed from: c  reason: collision with root package name */
        private io.grpc.netty.shaded.io.netty.util.c f41244c;

        /* renamed from: d  reason: collision with root package name */
        private io.grpc.netty.shaded.io.netty.util.c f41245d;

        private b() {
            this.f41243b = n.this.f41241b.length != 0 ? n.this.f41241b : n.this.f41240a;
        }

        @Override // java.util.Map.Entry
        /* renamed from: a */
        public CharSequence getKey() {
            return this.f41244c;
        }

        @Override // java.util.Map.Entry
        /* renamed from: b */
        public CharSequence getValue() {
            return this.f41245d;
        }

        @Override // java.util.Iterator
        /* renamed from: c */
        public Map.Entry<CharSequence, CharSequence> next() {
            if (hasNext()) {
                io.grpc.netty.shaded.io.netty.util.c[] cVarArr = this.f41243b;
                int i9 = this.f41242a;
                this.f41244c = cVarArr[i9];
                this.f41245d = cVarArr[i9 + 1];
                int i10 = i9 + 2;
                this.f41242a = i10;
                if (i10 >= cVarArr.length && cVarArr == n.this.f41241b) {
                    this.f41243b = n.this.f41240a;
                    this.f41242a = 0;
                }
                return this;
            }
            throw new NoSuchElementException();
        }

        @Override // java.util.Map.Entry
        /* renamed from: d */
        public CharSequence setValue(CharSequence charSequence) {
            throw new UnsupportedOperationException();
        }

        @Override // java.util.Iterator
        public boolean hasNext() {
            return this.f41242a < this.f41243b.length;
        }

        @Override // java.util.Iterator
        public void remove() {
            throw new UnsupportedOperationException();
        }
    }

    private n(io.grpc.netty.shaded.io.netty.util.c[] cVarArr, byte[][] bArr) {
        this.f41240a = new io.grpc.netty.shaded.io.netty.util.c[bArr.length];
        int i9 = 0;
        while (true) {
            io.grpc.netty.shaded.io.netty.util.c[] cVarArr2 = this.f41240a;
            if (i9 < cVarArr2.length) {
                cVarArr2[i9] = new io.grpc.netty.shaded.io.netty.util.c(bArr[i9], false);
                i9++;
            } else {
                this.f41241b = cVarArr;
                return;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static n u(byte[][] bArr, io.grpc.netty.shaded.io.netty.util.c cVar, io.grpc.netty.shaded.io.netty.util.c cVar2, io.grpc.netty.shaded.io.netty.util.c cVar3, io.grpc.netty.shaded.io.netty.util.c cVar4, io.grpc.netty.shaded.io.netty.util.c cVar5) {
        return new n(new io.grpc.netty.shaded.io.netty.util.c[]{Http2Headers.PseudoHeaderName.AUTHORITY.value(), cVar, Http2Headers.PseudoHeaderName.PATH.value(), cVar2, Http2Headers.PseudoHeaderName.METHOD.value(), cVar3, Http2Headers.PseudoHeaderName.SCHEME.value(), cVar4, m0.f41215g, m0.f41216h, m0.f41217i, m0.f41218j, m0.f41219k, cVar5}, bArr);
    }

    @Override // ig.a, io.grpc.netty.shaded.io.netty.handler.codec.http2.Http2Headers, pg.i, java.lang.Iterable
    public Iterator<Map.Entry<CharSequence, CharSequence>> iterator() {
        return new b();
    }

    @Override // pg.i
    public int size() {
        return (this.f41240a.length + this.f41241b.length) / 2;
    }

    @Override // io.grpc.netty.shaded.io.netty.handler.codec.http2.Http2Headers
    public CharSequence t() {
        io.grpc.netty.shaded.io.netty.util.c[] cVarArr = this.f41241b;
        if (cVarArr.length < 2 || cVarArr[0] != Http2Headers.PseudoHeaderName.STATUS.value()) {
            return null;
        }
        return this.f41241b[1];
    }

    public String toString() {
        StringBuilder sb2 = new StringBuilder(n.class.getSimpleName());
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
}
