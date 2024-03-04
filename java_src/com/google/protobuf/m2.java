package com.google.protobuf;

import androidx.constraintlayout.core.motion.utils.TypedValues;
import com.google.protobuf.ByteString;
import java.io.IOException;
import java.io.InputStream;
import java.io.InvalidObjectException;
import java.io.ObjectInputStream;
import java.io.OutputStream;
import java.nio.ByteBuffer;
import java.nio.charset.Charset;
import java.util.ArrayDeque;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;
import java.util.NoSuchElementException;
import java.util.Objects;
import kotlin.UByte;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes3.dex */
public final class m2 extends ByteString {

    /* renamed from: f  reason: collision with root package name */
    static final int[] f15065f = {1, 1, 2, 3, 5, 8, 13, 21, 34, 55, 89, 144, 233, 377, TypedValues.MotionType.TYPE_QUANTIZE_MOTIONSTEPS, 987, 1597, 2584, 4181, 6765, 10946, 17711, 28657, 46368, 75025, 121393, 196418, 317811, 514229, 832040, 1346269, 2178309, 3524578, 5702887, 9227465, 14930352, 24157817, 39088169, 63245986, 102334155, 165580141, 267914296, 433494437, 701408733, 1134903170, 1836311903, Integer.MAX_VALUE};
    private static final long serialVersionUID = 1;

    /* renamed from: a  reason: collision with root package name */
    private final int f15066a;

    /* renamed from: b  reason: collision with root package name */
    private final ByteString f15067b;

    /* renamed from: c  reason: collision with root package name */
    private final ByteString f15068c;

    /* renamed from: d  reason: collision with root package name */
    private final int f15069d;

    /* renamed from: e  reason: collision with root package name */
    private final int f15070e;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class a extends ByteString.c {

        /* renamed from: a  reason: collision with root package name */
        final c f15071a;

        /* renamed from: b  reason: collision with root package name */
        ByteString.g f15072b = b();

        a() {
            this.f15071a = new c(m2.this, null);
        }

        /* JADX WARN: Type inference failed for: r0v5, types: [com.google.protobuf.ByteString$g] */
        private ByteString.g b() {
            if (this.f15071a.hasNext()) {
                return this.f15071a.next().iterator2();
            }
            return null;
        }

        @Override // java.util.Iterator
        public boolean hasNext() {
            return this.f15072b != null;
        }

        @Override // com.google.protobuf.ByteString.g
        public byte nextByte() {
            ByteString.g gVar = this.f15072b;
            if (gVar != null) {
                byte nextByte = gVar.nextByte();
                if (!this.f15072b.hasNext()) {
                    this.f15072b = b();
                }
                return nextByte;
            }
            throw new NoSuchElementException();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes3.dex */
    public static final class c implements Iterator<ByteString.i> {

        /* renamed from: a  reason: collision with root package name */
        private final ArrayDeque<m2> f15075a;

        /* renamed from: b  reason: collision with root package name */
        private ByteString.i f15076b;

        /* synthetic */ c(ByteString byteString, a aVar) {
            this(byteString);
        }

        private ByteString.i a(ByteString byteString) {
            while (byteString instanceof m2) {
                m2 m2Var = (m2) byteString;
                this.f15075a.push(m2Var);
                byteString = m2Var.f15067b;
            }
            return (ByteString.i) byteString;
        }

        private ByteString.i b() {
            ByteString.i a10;
            do {
                ArrayDeque<m2> arrayDeque = this.f15075a;
                if (arrayDeque == null || arrayDeque.isEmpty()) {
                    return null;
                }
                a10 = a(this.f15075a.pop().f15068c);
            } while (a10.isEmpty());
            return a10;
        }

        @Override // java.util.Iterator
        /* renamed from: c */
        public ByteString.i next() {
            ByteString.i iVar = this.f15076b;
            if (iVar != null) {
                this.f15076b = b();
                return iVar;
            }
            throw new NoSuchElementException();
        }

        @Override // java.util.Iterator
        public boolean hasNext() {
            return this.f15076b != null;
        }

        @Override // java.util.Iterator
        public void remove() {
            throw new UnsupportedOperationException();
        }

        private c(ByteString byteString) {
            if (byteString instanceof m2) {
                m2 m2Var = (m2) byteString;
                ArrayDeque<m2> arrayDeque = new ArrayDeque<>(m2Var.getTreeDepth());
                this.f15075a = arrayDeque;
                arrayDeque.push(m2Var);
                this.f15076b = a(m2Var.f15067b);
                return;
            }
            this.f15075a = null;
            this.f15076b = (ByteString.i) byteString;
        }
    }

    /* synthetic */ m2(ByteString byteString, ByteString byteString2, a aVar) {
        this(byteString, byteString2);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static ByteString f(ByteString byteString, ByteString byteString2) {
        if (byteString2.size() == 0) {
            return byteString;
        }
        if (byteString.size() == 0) {
            return byteString2;
        }
        int size = byteString.size() + byteString2.size();
        if (size < 128) {
            return g(byteString, byteString2);
        }
        if (byteString instanceof m2) {
            m2 m2Var = (m2) byteString;
            if (m2Var.f15068c.size() + byteString2.size() < 128) {
                return new m2(m2Var.f15067b, g(m2Var.f15068c, byteString2));
            } else if (m2Var.f15067b.getTreeDepth() > m2Var.f15068c.getTreeDepth() && m2Var.getTreeDepth() > byteString2.getTreeDepth()) {
                return new m2(m2Var.f15067b, new m2(m2Var.f15068c, byteString2));
            }
        }
        if (size >= n(Math.max(byteString.getTreeDepth(), byteString2.getTreeDepth()) + 1)) {
            return new m2(byteString, byteString2);
        }
        return new b(null).b(byteString, byteString2);
    }

    private static ByteString g(ByteString byteString, ByteString byteString2) {
        int size = byteString.size();
        int size2 = byteString2.size();
        byte[] bArr = new byte[size + size2];
        byteString.copyTo(bArr, 0, 0, size);
        byteString2.copyTo(bArr, 0, size, size2);
        return ByteString.wrap(bArr);
    }

    private boolean m(ByteString byteString) {
        boolean c10;
        c cVar = new c(this, null);
        ByteString.i next = cVar.next();
        c cVar2 = new c(byteString, null);
        ByteString.i next2 = cVar2.next();
        int i9 = 0;
        int i10 = 0;
        int i11 = 0;
        while (true) {
            int size = next.size() - i9;
            int size2 = next2.size() - i10;
            int min = Math.min(size, size2);
            if (i9 == 0) {
                c10 = next.c(next2, i10, min);
            } else {
                c10 = next2.c(next, i9, min);
            }
            if (!c10) {
                return false;
            }
            i11 += min;
            int i12 = this.f15066a;
            if (i11 >= i12) {
                if (i11 == i12) {
                    return true;
                }
                throw new IllegalStateException();
            }
            if (min == size) {
                i9 = 0;
                next = cVar.next();
            } else {
                i9 += min;
                next = next;
            }
            if (min == size2) {
                next2 = cVar2.next();
                i10 = 0;
            } else {
                i10 += min;
            }
        }
    }

    static int n(int i9) {
        int[] iArr = f15065f;
        if (i9 >= iArr.length) {
            return Integer.MAX_VALUE;
        }
        return iArr[i9];
    }

    private void readObject(ObjectInputStream objectInputStream) throws IOException {
        throw new InvalidObjectException("RopeByteStream instances are not to be serialized directly");
    }

    @Override // com.google.protobuf.ByteString
    public ByteBuffer asReadOnlyByteBuffer() {
        return ByteBuffer.wrap(toByteArray()).asReadOnlyBuffer();
    }

    @Override // com.google.protobuf.ByteString
    public List<ByteBuffer> asReadOnlyByteBufferList() {
        ArrayList arrayList = new ArrayList();
        c cVar = new c(this, null);
        while (cVar.hasNext()) {
            arrayList.add(cVar.next().asReadOnlyByteBuffer());
        }
        return arrayList;
    }

    @Override // com.google.protobuf.ByteString
    public byte byteAt(int i9) {
        ByteString.checkIndex(i9, this.f15066a);
        return internalByteAt(i9);
    }

    @Override // com.google.protobuf.ByteString
    public void copyTo(ByteBuffer byteBuffer) {
        this.f15067b.copyTo(byteBuffer);
        this.f15068c.copyTo(byteBuffer);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.protobuf.ByteString
    public void copyToInternal(byte[] bArr, int i9, int i10, int i11) {
        int i12 = i9 + i11;
        int i13 = this.f15069d;
        if (i12 <= i13) {
            this.f15067b.copyToInternal(bArr, i9, i10, i11);
        } else if (i9 >= i13) {
            this.f15068c.copyToInternal(bArr, i9 - i13, i10, i11);
        } else {
            int i14 = i13 - i9;
            this.f15067b.copyToInternal(bArr, i9, i10, i14);
            this.f15068c.copyToInternal(bArr, 0, i10 + i14, i11 - i14);
        }
    }

    @Override // com.google.protobuf.ByteString
    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof ByteString) {
            ByteString byteString = (ByteString) obj;
            if (this.f15066a != byteString.size()) {
                return false;
            }
            if (this.f15066a == 0) {
                return true;
            }
            int peekCachedHashCode = peekCachedHashCode();
            int peekCachedHashCode2 = byteString.peekCachedHashCode();
            if (peekCachedHashCode == 0 || peekCachedHashCode2 == 0 || peekCachedHashCode == peekCachedHashCode2) {
                return m(byteString);
            }
            return false;
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.protobuf.ByteString
    public int getTreeDepth() {
        return this.f15070e;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.protobuf.ByteString
    public byte internalByteAt(int i9) {
        int i10 = this.f15069d;
        if (i9 < i10) {
            return this.f15067b.internalByteAt(i9);
        }
        return this.f15068c.internalByteAt(i9 - i10);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.protobuf.ByteString
    public boolean isBalanced() {
        return this.f15066a >= n(this.f15070e);
    }

    @Override // com.google.protobuf.ByteString
    public boolean isValidUtf8() {
        int partialIsValidUtf8 = this.f15067b.partialIsValidUtf8(0, 0, this.f15069d);
        ByteString byteString = this.f15068c;
        return byteString.partialIsValidUtf8(partialIsValidUtf8, 0, byteString.size()) == 0;
    }

    @Override // com.google.protobuf.ByteString
    public p newCodedInput() {
        return p.j(asReadOnlyByteBufferList(), true);
    }

    @Override // com.google.protobuf.ByteString
    public InputStream newInput() {
        return new d();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.protobuf.ByteString
    public int partialHash(int i9, int i10, int i11) {
        int i12 = i10 + i11;
        int i13 = this.f15069d;
        if (i12 <= i13) {
            return this.f15067b.partialHash(i9, i10, i11);
        }
        if (i10 >= i13) {
            return this.f15068c.partialHash(i9, i10 - i13, i11);
        }
        int i14 = i13 - i10;
        return this.f15068c.partialHash(this.f15067b.partialHash(i9, i10, i14), 0, i11 - i14);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.protobuf.ByteString
    public int partialIsValidUtf8(int i9, int i10, int i11) {
        int i12 = i10 + i11;
        int i13 = this.f15069d;
        if (i12 <= i13) {
            return this.f15067b.partialIsValidUtf8(i9, i10, i11);
        }
        if (i10 >= i13) {
            return this.f15068c.partialIsValidUtf8(i9, i10 - i13, i11);
        }
        int i14 = i13 - i10;
        return this.f15068c.partialIsValidUtf8(this.f15067b.partialIsValidUtf8(i9, i10, i14), 0, i11 - i14);
    }

    @Override // com.google.protobuf.ByteString
    public int size() {
        return this.f15066a;
    }

    @Override // com.google.protobuf.ByteString
    public ByteString substring(int i9, int i10) {
        int checkRange = ByteString.checkRange(i9, i10, this.f15066a);
        if (checkRange == 0) {
            return ByteString.EMPTY;
        }
        if (checkRange == this.f15066a) {
            return this;
        }
        int i11 = this.f15069d;
        if (i10 <= i11) {
            return this.f15067b.substring(i9, i10);
        }
        if (i9 >= i11) {
            return this.f15068c.substring(i9 - i11, i10 - i11);
        }
        return new m2(this.f15067b.substring(i9), this.f15068c.substring(0, i10 - this.f15069d));
    }

    @Override // com.google.protobuf.ByteString
    protected String toStringInternal(Charset charset) {
        return new String(toByteArray(), charset);
    }

    Object writeReplace() {
        return ByteString.wrap(toByteArray());
    }

    @Override // com.google.protobuf.ByteString
    public void writeTo(OutputStream outputStream) throws IOException {
        this.f15067b.writeTo(outputStream);
        this.f15068c.writeTo(outputStream);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.protobuf.ByteString
    public void writeToInternal(OutputStream outputStream, int i9, int i10) throws IOException {
        int i11 = i9 + i10;
        int i12 = this.f15069d;
        if (i11 <= i12) {
            this.f15067b.writeToInternal(outputStream, i9, i10);
        } else if (i9 >= i12) {
            this.f15068c.writeToInternal(outputStream, i9 - i12, i10);
        } else {
            int i13 = i12 - i9;
            this.f15067b.writeToInternal(outputStream, i9, i13);
            this.f15068c.writeToInternal(outputStream, 0, i10 - i13);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.protobuf.ByteString
    public void writeToReverse(o oVar) throws IOException {
        this.f15068c.writeToReverse(oVar);
        this.f15067b.writeToReverse(oVar);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes3.dex */
    public static class b {

        /* renamed from: a  reason: collision with root package name */
        private final ArrayDeque<ByteString> f15074a;

        private b() {
            this.f15074a = new ArrayDeque<>();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public ByteString b(ByteString byteString, ByteString byteString2) {
            c(byteString);
            c(byteString2);
            ByteString pop = this.f15074a.pop();
            while (!this.f15074a.isEmpty()) {
                pop = new m2(this.f15074a.pop(), pop, null);
            }
            return pop;
        }

        private void c(ByteString byteString) {
            if (byteString.isBalanced()) {
                e(byteString);
            } else if (byteString instanceof m2) {
                m2 m2Var = (m2) byteString;
                c(m2Var.f15067b);
                c(m2Var.f15068c);
            } else {
                throw new IllegalArgumentException("Has a new type of ByteString been created? Found " + byteString.getClass());
            }
        }

        private int d(int i9) {
            int binarySearch = Arrays.binarySearch(m2.f15065f, i9);
            return binarySearch < 0 ? (-(binarySearch + 1)) - 1 : binarySearch;
        }

        private void e(ByteString byteString) {
            int d10 = d(byteString.size());
            int n9 = m2.n(d10 + 1);
            if (!this.f15074a.isEmpty() && this.f15074a.peek().size() < n9) {
                int n10 = m2.n(d10);
                ByteString pop = this.f15074a.pop();
                while (!this.f15074a.isEmpty() && this.f15074a.peek().size() < n10) {
                    pop = new m2(this.f15074a.pop(), pop, null);
                }
                m2 m2Var = new m2(pop, byteString, null);
                while (!this.f15074a.isEmpty()) {
                    if (this.f15074a.peek().size() >= m2.n(d(m2Var.size()) + 1)) {
                        break;
                    }
                    m2Var = new m2(this.f15074a.pop(), m2Var, null);
                }
                this.f15074a.push(m2Var);
                return;
            }
            this.f15074a.push(byteString);
        }

        /* synthetic */ b(a aVar) {
            this();
        }
    }

    private m2(ByteString byteString, ByteString byteString2) {
        this.f15067b = byteString;
        this.f15068c = byteString2;
        int size = byteString.size();
        this.f15069d = size;
        this.f15066a = size + byteString2.size();
        this.f15070e = Math.max(byteString.getTreeDepth(), byteString2.getTreeDepth()) + 1;
    }

    @Override // com.google.protobuf.ByteString, java.lang.Iterable
    /* renamed from: iterator */
    public Iterator<Byte> iterator2() {
        return new a();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.protobuf.ByteString
    public void writeTo(o oVar) throws IOException {
        this.f15067b.writeTo(oVar);
        this.f15068c.writeTo(oVar);
    }

    /* loaded from: classes3.dex */
    private class d extends InputStream {

        /* renamed from: a  reason: collision with root package name */
        private c f15077a;

        /* renamed from: b  reason: collision with root package name */
        private ByteString.i f15078b;

        /* renamed from: c  reason: collision with root package name */
        private int f15079c;

        /* renamed from: d  reason: collision with root package name */
        private int f15080d;

        /* renamed from: e  reason: collision with root package name */
        private int f15081e;

        /* renamed from: f  reason: collision with root package name */
        private int f15082f;

        public d() {
            e();
        }

        private void a() {
            if (this.f15078b != null) {
                int i9 = this.f15080d;
                int i10 = this.f15079c;
                if (i9 == i10) {
                    this.f15081e += i10;
                    this.f15080d = 0;
                    if (this.f15077a.hasNext()) {
                        ByteString.i next = this.f15077a.next();
                        this.f15078b = next;
                        this.f15079c = next.size();
                        return;
                    }
                    this.f15078b = null;
                    this.f15079c = 0;
                }
            }
        }

        private int c() {
            return m2.this.size() - (this.f15081e + this.f15080d);
        }

        private void e() {
            c cVar = new c(m2.this, null);
            this.f15077a = cVar;
            ByteString.i next = cVar.next();
            this.f15078b = next;
            this.f15079c = next.size();
            this.f15080d = 0;
            this.f15081e = 0;
        }

        private int h(byte[] bArr, int i9, int i10) {
            int i11 = i10;
            while (i11 > 0) {
                a();
                if (this.f15078b == null) {
                    break;
                }
                int min = Math.min(this.f15079c - this.f15080d, i11);
                if (bArr != null) {
                    this.f15078b.copyTo(bArr, this.f15080d, i9, min);
                    i9 += min;
                }
                this.f15080d += min;
                i11 -= min;
            }
            return i10 - i11;
        }

        @Override // java.io.InputStream
        public int available() throws IOException {
            return c();
        }

        @Override // java.io.InputStream
        public void mark(int i9) {
            this.f15082f = this.f15081e + this.f15080d;
        }

        @Override // java.io.InputStream
        public boolean markSupported() {
            return true;
        }

        @Override // java.io.InputStream
        public int read(byte[] bArr, int i9, int i10) {
            Objects.requireNonNull(bArr);
            if (i9 >= 0 && i10 >= 0 && i10 <= bArr.length - i9) {
                int h10 = h(bArr, i9, i10);
                if (h10 == 0) {
                    if (i10 > 0 || c() == 0) {
                        return -1;
                    }
                    return h10;
                }
                return h10;
            }
            throw new IndexOutOfBoundsException();
        }

        @Override // java.io.InputStream
        public synchronized void reset() {
            e();
            h(null, 0, this.f15082f);
        }

        @Override // java.io.InputStream
        public long skip(long j10) {
            if (j10 >= 0) {
                if (j10 > 2147483647L) {
                    j10 = 2147483647L;
                }
                return h(null, 0, (int) j10);
            }
            throw new IndexOutOfBoundsException();
        }

        @Override // java.io.InputStream
        public int read() throws IOException {
            a();
            ByteString.i iVar = this.f15078b;
            if (iVar == null) {
                return -1;
            }
            int i9 = this.f15080d;
            this.f15080d = i9 + 1;
            return iVar.byteAt(i9) & UByte.MAX_VALUE;
        }
    }
}
