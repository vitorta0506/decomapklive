package com.google.protobuf;

import java.io.ByteArrayInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.InvalidObjectException;
import java.io.ObjectInputStream;
import java.io.OutputStream;
import java.io.Serializable;
import java.io.UnsupportedEncodingException;
import java.nio.ByteBuffer;
import java.nio.charset.Charset;
import java.nio.charset.UnsupportedCharsetException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Collections;
import java.util.Comparator;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.NoSuchElementException;
import java.util.Objects;
import kotlin.UByte;
/* loaded from: classes3.dex */
public abstract class ByteString implements Iterable<Byte>, Serializable {
    static final int CONCATENATE_BY_COPY_SIZE = 128;
    public static final ByteString EMPTY = new j(u0.f15286d);
    static final int MAX_READ_FROM_CHUNK_SIZE = 8192;
    static final int MIN_READ_FROM_CHUNK_SIZE = 256;
    private static final int UNSIGNED_BYTE_MASK = 255;
    private static final Comparator<ByteString> UNSIGNED_LEXICOGRAPHICAL_COMPARATOR;
    private static final f byteArrayCopier;
    private int hash = 0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class a extends c {

        /* renamed from: a  reason: collision with root package name */
        private int f14288a = 0;

        /* renamed from: b  reason: collision with root package name */
        private final int f14289b;

        a() {
            this.f14289b = ByteString.this.size();
        }

        @Override // java.util.Iterator
        public boolean hasNext() {
            return this.f14288a < this.f14289b;
        }

        @Override // com.google.protobuf.ByteString.g
        public byte nextByte() {
            int i9 = this.f14288a;
            if (i9 < this.f14289b) {
                this.f14288a = i9 + 1;
                return ByteString.this.internalByteAt(i9);
            }
            throw new NoSuchElementException();
        }
    }

    /* loaded from: classes3.dex */
    static class b implements Comparator<ByteString> {
        b() {
        }

        /* JADX WARN: Type inference failed for: r0v0, types: [java.util.Iterator, com.google.protobuf.ByteString$g] */
        /* JADX WARN: Type inference failed for: r1v0, types: [java.util.Iterator, com.google.protobuf.ByteString$g] */
        @Override // java.util.Comparator
        /* renamed from: a */
        public int compare(ByteString byteString, ByteString byteString2) {
            ?? iterator2 = byteString.iterator2();
            ?? iterator22 = byteString2.iterator2();
            while (iterator2.hasNext() && iterator22.hasNext()) {
                int compare = Integer.compare(ByteString.toInt(iterator2.nextByte()), ByteString.toInt(iterator22.nextByte()));
                if (compare != 0) {
                    return compare;
                }
            }
            return Integer.compare(byteString.size(), byteString2.size());
        }
    }

    /* loaded from: classes3.dex */
    static abstract class c implements g {
        @Override // java.util.Iterator
        /* renamed from: a */
        public final Byte next() {
            return Byte.valueOf(nextByte());
        }

        @Override // java.util.Iterator
        public final void remove() {
            throw new UnsupportedOperationException();
        }
    }

    /* loaded from: classes3.dex */
    private static final class d implements f {
        private d() {
        }

        /* synthetic */ d(a aVar) {
            this();
        }

        @Override // com.google.protobuf.ByteString.f
        public byte[] a(byte[] bArr, int i9, int i10) {
            return Arrays.copyOfRange(bArr, i9, i10 + i9);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes3.dex */
    public static final class e extends j {
        private static final long serialVersionUID = 1;

        /* renamed from: b  reason: collision with root package name */
        private final int f14291b;

        /* renamed from: c  reason: collision with root package name */
        private final int f14292c;

        e(byte[] bArr, int i9, int i10) {
            super(bArr);
            ByteString.checkRange(i9, i9 + i10, bArr.length);
            this.f14291b = i9;
            this.f14292c = i10;
        }

        private void readObject(ObjectInputStream objectInputStream) throws IOException {
            throw new InvalidObjectException("BoundedByteStream instances are not to be serialized directly");
        }

        @Override // com.google.protobuf.ByteString.j, com.google.protobuf.ByteString
        public byte byteAt(int i9) {
            ByteString.checkIndex(i9, size());
            return this.f14295a[this.f14291b + i9];
        }

        @Override // com.google.protobuf.ByteString.j, com.google.protobuf.ByteString
        protected void copyToInternal(byte[] bArr, int i9, int i10, int i11) {
            System.arraycopy(this.f14295a, d() + i9, bArr, i10, i11);
        }

        @Override // com.google.protobuf.ByteString.j
        protected int d() {
            return this.f14291b;
        }

        @Override // com.google.protobuf.ByteString.j, com.google.protobuf.ByteString
        byte internalByteAt(int i9) {
            return this.f14295a[this.f14291b + i9];
        }

        @Override // com.google.protobuf.ByteString.j, com.google.protobuf.ByteString
        public int size() {
            return this.f14292c;
        }

        Object writeReplace() {
            return ByteString.wrap(toByteArray());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes3.dex */
    public interface f {
        byte[] a(byte[] bArr, int i9, int i10);
    }

    /* loaded from: classes3.dex */
    public interface g extends Iterator<Byte> {
        byte nextByte();
    }

    /* loaded from: classes3.dex */
    static final class h {

        /* renamed from: a  reason: collision with root package name */
        private final CodedOutputStream f14293a;

        /* renamed from: b  reason: collision with root package name */
        private final byte[] f14294b;

        /* synthetic */ h(int i9, a aVar) {
            this(i9);
        }

        public ByteString a() {
            this.f14293a.d();
            return new j(this.f14294b);
        }

        public CodedOutputStream b() {
            return this.f14293a;
        }

        private h(int i9) {
            byte[] bArr = new byte[i9];
            this.f14294b = bArr;
            this.f14293a = CodedOutputStream.j0(bArr);
        }
    }

    /* loaded from: classes3.dex */
    static abstract class i extends ByteString {
        /* JADX INFO: Access modifiers changed from: package-private */
        public abstract boolean c(ByteString byteString, int i9, int i10);

        @Override // com.google.protobuf.ByteString
        protected final int getTreeDepth() {
            return 0;
        }

        @Override // com.google.protobuf.ByteString
        protected final boolean isBalanced() {
            return true;
        }

        @Override // com.google.protobuf.ByteString, java.lang.Iterable
        public /* bridge */ /* synthetic */ Iterator<Byte> iterator() {
            return super.iterator2();
        }

        @Override // com.google.protobuf.ByteString
        void writeToReverse(o oVar) throws IOException {
            writeTo(oVar);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes3.dex */
    public static class j extends i {
        private static final long serialVersionUID = 1;

        /* renamed from: a  reason: collision with root package name */
        protected final byte[] f14295a;

        j(byte[] bArr) {
            Objects.requireNonNull(bArr);
            this.f14295a = bArr;
        }

        @Override // com.google.protobuf.ByteString
        public final ByteBuffer asReadOnlyByteBuffer() {
            return ByteBuffer.wrap(this.f14295a, d(), size()).asReadOnlyBuffer();
        }

        @Override // com.google.protobuf.ByteString
        public final List<ByteBuffer> asReadOnlyByteBufferList() {
            return Collections.singletonList(asReadOnlyByteBuffer());
        }

        @Override // com.google.protobuf.ByteString
        public byte byteAt(int i9) {
            return this.f14295a[i9];
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // com.google.protobuf.ByteString.i
        public final boolean c(ByteString byteString, int i9, int i10) {
            if (i10 <= byteString.size()) {
                int i11 = i9 + i10;
                if (i11 <= byteString.size()) {
                    if (byteString instanceof j) {
                        j jVar = (j) byteString;
                        byte[] bArr = this.f14295a;
                        byte[] bArr2 = jVar.f14295a;
                        int d10 = d() + i10;
                        int d11 = d();
                        int d12 = jVar.d() + i9;
                        while (d11 < d10) {
                            if (bArr[d11] != bArr2[d12]) {
                                return false;
                            }
                            d11++;
                            d12++;
                        }
                        return true;
                    }
                    return byteString.substring(i9, i11).equals(substring(0, i10));
                }
                throw new IllegalArgumentException("Ran off end of other: " + i9 + ", " + i10 + ", " + byteString.size());
            }
            throw new IllegalArgumentException("Length too large: " + i10 + size());
        }

        @Override // com.google.protobuf.ByteString
        public final void copyTo(ByteBuffer byteBuffer) {
            byteBuffer.put(this.f14295a, d(), size());
        }

        @Override // com.google.protobuf.ByteString
        protected void copyToInternal(byte[] bArr, int i9, int i10, int i11) {
            System.arraycopy(this.f14295a, i9, bArr, i10, i11);
        }

        protected int d() {
            return 0;
        }

        @Override // com.google.protobuf.ByteString
        public final boolean equals(Object obj) {
            if (obj == this) {
                return true;
            }
            if ((obj instanceof ByteString) && size() == ((ByteString) obj).size()) {
                if (size() == 0) {
                    return true;
                }
                if (obj instanceof j) {
                    j jVar = (j) obj;
                    int peekCachedHashCode = peekCachedHashCode();
                    int peekCachedHashCode2 = jVar.peekCachedHashCode();
                    if (peekCachedHashCode == 0 || peekCachedHashCode2 == 0 || peekCachedHashCode == peekCachedHashCode2) {
                        return c(jVar, 0, size());
                    }
                    return false;
                }
                return obj.equals(this);
            }
            return false;
        }

        @Override // com.google.protobuf.ByteString
        byte internalByteAt(int i9) {
            return this.f14295a[i9];
        }

        @Override // com.google.protobuf.ByteString
        public final boolean isValidUtf8() {
            int d10 = d();
            return n3.t(this.f14295a, d10, size() + d10);
        }

        @Override // com.google.protobuf.ByteString
        public final p newCodedInput() {
            return p.o(this.f14295a, d(), size(), true);
        }

        @Override // com.google.protobuf.ByteString
        public final InputStream newInput() {
            return new ByteArrayInputStream(this.f14295a, d(), size());
        }

        @Override // com.google.protobuf.ByteString
        protected final int partialHash(int i9, int i10, int i11) {
            return u0.l(i9, this.f14295a, d() + i10, i11);
        }

        @Override // com.google.protobuf.ByteString
        protected final int partialIsValidUtf8(int i9, int i10, int i11) {
            int d10 = d() + i10;
            return n3.v(i9, this.f14295a, d10, i11 + d10);
        }

        @Override // com.google.protobuf.ByteString
        public int size() {
            return this.f14295a.length;
        }

        @Override // com.google.protobuf.ByteString
        public final ByteString substring(int i9, int i10) {
            int checkRange = ByteString.checkRange(i9, i10, size());
            if (checkRange == 0) {
                return ByteString.EMPTY;
            }
            return new e(this.f14295a, d() + i9, checkRange);
        }

        @Override // com.google.protobuf.ByteString
        protected final String toStringInternal(Charset charset) {
            return new String(this.f14295a, d(), size(), charset);
        }

        @Override // com.google.protobuf.ByteString
        public final void writeTo(OutputStream outputStream) throws IOException {
            outputStream.write(toByteArray());
        }

        @Override // com.google.protobuf.ByteString
        final void writeToInternal(OutputStream outputStream, int i9, int i10) throws IOException {
            outputStream.write(this.f14295a, d() + i9, i10);
        }

        @Override // com.google.protobuf.ByteString
        final void writeTo(o oVar) throws IOException {
            oVar.b(this.f14295a, d(), size());
        }
    }

    /* loaded from: classes3.dex */
    private static final class l implements f {
        private l() {
        }

        /* synthetic */ l(a aVar) {
            this();
        }

        @Override // com.google.protobuf.ByteString.f
        public byte[] a(byte[] bArr, int i9, int i10) {
            byte[] bArr2 = new byte[i10];
            System.arraycopy(bArr, i9, bArr2, 0, i10);
            return bArr2;
        }
    }

    static {
        byteArrayCopier = com.google.protobuf.e.c() ? new l(null) : new d(null);
        UNSIGNED_LEXICOGRAPHICAL_COMPARATOR = new b();
    }

    private static ByteString balancedConcat(Iterator<ByteString> it, int i9) {
        if (i9 >= 1) {
            if (i9 == 1) {
                return it.next();
            }
            int i10 = i9 >>> 1;
            return balancedConcat(it, i10).concat(balancedConcat(it, i9 - i10));
        }
        throw new IllegalArgumentException(String.format("length (%s) must be >= 1", Integer.valueOf(i9)));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void checkIndex(int i9, int i10) {
        if (((i10 - (i9 + 1)) | i9) < 0) {
            if (i9 < 0) {
                throw new ArrayIndexOutOfBoundsException("Index < 0: " + i9);
            }
            throw new ArrayIndexOutOfBoundsException("Index > length: " + i9 + ", " + i10);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int checkRange(int i9, int i10, int i11) {
        int i12 = i10 - i9;
        if ((i9 | i10 | i12 | (i11 - i10)) < 0) {
            if (i9 < 0) {
                throw new IndexOutOfBoundsException("Beginning index: " + i9 + " < 0");
            } else if (i10 < i9) {
                throw new IndexOutOfBoundsException("Beginning index larger than ending index: " + i9 + ", " + i10);
            } else {
                throw new IndexOutOfBoundsException("End index: " + i10 + " >= " + i11);
            }
        }
        return i12;
    }

    public static ByteString copyFrom(byte[] bArr, int i9, int i10) {
        checkRange(i9, i9 + i10, bArr.length);
        return new j(byteArrayCopier.a(bArr, i9, i10));
    }

    public static ByteString copyFromUtf8(String str) {
        return new j(str.getBytes(u0.f15284b));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static h newCodedBuilder(int i9) {
        return new h(i9, null);
    }

    public static k newOutput(int i9) {
        return new k(i9);
    }

    private static ByteString readChunk(InputStream inputStream, int i9) throws IOException {
        byte[] bArr = new byte[i9];
        int i10 = 0;
        while (i10 < i9) {
            int read = inputStream.read(bArr, i10, i9 - i10);
            if (read == -1) {
                break;
            }
            i10 += read;
        }
        if (i10 == 0) {
            return null;
        }
        return copyFrom(bArr, 0, i10);
    }

    public static ByteString readFrom(InputStream inputStream) throws IOException {
        return readFrom(inputStream, 256, 8192);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static int toInt(byte b10) {
        return b10 & UByte.MAX_VALUE;
    }

    private String truncateAndEscapeForDisplay() {
        if (size() <= 50) {
            return x2.a(this);
        }
        return x2.a(substring(0, 47)) + "...";
    }

    public static Comparator<ByteString> unsignedLexicographicalComparator() {
        return UNSIGNED_LEXICOGRAPHICAL_COMPARATOR;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static ByteString wrap(ByteBuffer byteBuffer) {
        if (byteBuffer.hasArray()) {
            return wrap(byteBuffer.array(), byteBuffer.arrayOffset() + byteBuffer.position(), byteBuffer.remaining());
        }
        return new b2(byteBuffer);
    }

    public abstract ByteBuffer asReadOnlyByteBuffer();

    public abstract List<ByteBuffer> asReadOnlyByteBufferList();

    public abstract byte byteAt(int i9);

    public final ByteString concat(ByteString byteString) {
        if (Integer.MAX_VALUE - size() >= byteString.size()) {
            return m2.f(this, byteString);
        }
        throw new IllegalArgumentException("ByteString would be too long: " + size() + "+" + byteString.size());
    }

    public abstract void copyTo(ByteBuffer byteBuffer);

    public void copyTo(byte[] bArr, int i9) {
        copyTo(bArr, 0, i9, size());
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public abstract void copyToInternal(byte[] bArr, int i9, int i10, int i11);

    public final boolean endsWith(ByteString byteString) {
        return size() >= byteString.size() && substring(size() - byteString.size()).equals(byteString);
    }

    public abstract boolean equals(Object obj);

    /* JADX INFO: Access modifiers changed from: protected */
    public abstract int getTreeDepth();

    public final int hashCode() {
        int i9 = this.hash;
        if (i9 == 0) {
            int size = size();
            i9 = partialHash(size, 0, size);
            if (i9 == 0) {
                i9 = 1;
            }
            this.hash = i9;
        }
        return i9;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public abstract byte internalByteAt(int i9);

    /* JADX INFO: Access modifiers changed from: protected */
    public abstract boolean isBalanced();

    public final boolean isEmpty() {
        return size() == 0;
    }

    public abstract boolean isValidUtf8();

    public abstract p newCodedInput();

    public abstract InputStream newInput();

    /* JADX INFO: Access modifiers changed from: protected */
    public abstract int partialHash(int i9, int i10, int i11);

    /* JADX INFO: Access modifiers changed from: protected */
    public abstract int partialIsValidUtf8(int i9, int i10, int i11);

    /* JADX INFO: Access modifiers changed from: protected */
    public final int peekCachedHashCode() {
        return this.hash;
    }

    public abstract int size();

    public final boolean startsWith(ByteString byteString) {
        return size() >= byteString.size() && substring(0, byteString.size()).equals(byteString);
    }

    public final ByteString substring(int i9) {
        return substring(i9, size());
    }

    public abstract ByteString substring(int i9, int i10);

    public final byte[] toByteArray() {
        int size = size();
        if (size == 0) {
            return u0.f15286d;
        }
        byte[] bArr = new byte[size];
        copyToInternal(bArr, 0, 0, size);
        return bArr;
    }

    public final String toString(String str) throws UnsupportedEncodingException {
        try {
            return toString(Charset.forName(str));
        } catch (UnsupportedCharsetException e10) {
            UnsupportedEncodingException unsupportedEncodingException = new UnsupportedEncodingException(str);
            unsupportedEncodingException.initCause(e10);
            throw unsupportedEncodingException;
        }
    }

    protected abstract String toStringInternal(Charset charset);

    public final String toStringUtf8() {
        return toString(u0.f15284b);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public abstract void writeTo(o oVar) throws IOException;

    public abstract void writeTo(OutputStream outputStream) throws IOException;

    final void writeTo(OutputStream outputStream, int i9, int i10) throws IOException {
        checkRange(i9, i9 + i10, size());
        if (i10 > 0) {
            writeToInternal(outputStream, i9, i10);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public abstract void writeToInternal(OutputStream outputStream, int i9, int i10) throws IOException;

    /* JADX INFO: Access modifiers changed from: package-private */
    public abstract void writeToReverse(o oVar) throws IOException;

    public static k newOutput() {
        return new k(128);
    }

    public static ByteString readFrom(InputStream inputStream, int i9) throws IOException {
        return readFrom(inputStream, i9, i9);
    }

    @Deprecated
    public final void copyTo(byte[] bArr, int i9, int i10, int i11) {
        checkRange(i9, i9 + i11, size());
        checkRange(i10, i10 + i11, bArr.length);
        if (i11 > 0) {
            copyToInternal(bArr, i9, i10, i11);
        }
    }

    @Override // java.lang.Iterable
    /* renamed from: iterator */
    public Iterator<Byte> iterator2() {
        return new a();
    }

    public static ByteString copyFrom(byte[] bArr) {
        return copyFrom(bArr, 0, bArr.length);
    }

    public static ByteString readFrom(InputStream inputStream, int i9, int i10) throws IOException {
        ArrayList arrayList = new ArrayList();
        while (true) {
            ByteString readChunk = readChunk(inputStream, i9);
            if (readChunk == null) {
                return copyFrom(arrayList);
            }
            arrayList.add(readChunk);
            i9 = Math.min(i9 * 2, i10);
        }
    }

    /* loaded from: classes3.dex */
    public static final class k extends OutputStream {

        /* renamed from: f  reason: collision with root package name */
        private static final byte[] f14296f = new byte[0];

        /* renamed from: a  reason: collision with root package name */
        private final int f14297a;

        /* renamed from: b  reason: collision with root package name */
        private final ArrayList<ByteString> f14298b;

        /* renamed from: c  reason: collision with root package name */
        private int f14299c;

        /* renamed from: d  reason: collision with root package name */
        private byte[] f14300d;

        /* renamed from: e  reason: collision with root package name */
        private int f14301e;

        k(int i9) {
            if (i9 >= 0) {
                this.f14297a = i9;
                this.f14298b = new ArrayList<>();
                this.f14300d = new byte[i9];
                return;
            }
            throw new IllegalArgumentException("Buffer size < 0");
        }

        private void a(int i9) {
            this.f14298b.add(new j(this.f14300d));
            int length = this.f14299c + this.f14300d.length;
            this.f14299c = length;
            this.f14300d = new byte[Math.max(this.f14297a, Math.max(i9, length >>> 1))];
            this.f14301e = 0;
        }

        public synchronized int c() {
            return this.f14299c + this.f14301e;
        }

        public String toString() {
            return String.format("<ByteString.Output@%s size=%d>", Integer.toHexString(System.identityHashCode(this)), Integer.valueOf(c()));
        }

        @Override // java.io.OutputStream
        public synchronized void write(int i9) {
            if (this.f14301e == this.f14300d.length) {
                a(1);
            }
            byte[] bArr = this.f14300d;
            int i10 = this.f14301e;
            this.f14301e = i10 + 1;
            bArr[i10] = (byte) i9;
        }

        @Override // java.io.OutputStream
        public synchronized void write(byte[] bArr, int i9, int i10) {
            byte[] bArr2 = this.f14300d;
            int length = bArr2.length;
            int i11 = this.f14301e;
            if (i10 <= length - i11) {
                System.arraycopy(bArr, i9, bArr2, i11, i10);
                this.f14301e += i10;
            } else {
                int length2 = bArr2.length - i11;
                System.arraycopy(bArr, i9, bArr2, i11, length2);
                int i12 = i10 - length2;
                a(i12);
                System.arraycopy(bArr, i9 + length2, this.f14300d, 0, i12);
                this.f14301e = i12;
            }
        }
    }

    public static ByteString copyFrom(ByteBuffer byteBuffer, int i9) {
        checkRange(0, i9, byteBuffer.remaining());
        byte[] bArr = new byte[i9];
        byteBuffer.get(bArr);
        return new j(bArr);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static ByteString wrap(byte[] bArr) {
        return new j(bArr);
    }

    public final String toString(Charset charset) {
        return size() == 0 ? "" : toStringInternal(charset);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static ByteString wrap(byte[] bArr, int i9, int i10) {
        return new e(bArr, i9, i10);
    }

    public final String toString() {
        return String.format(Locale.ROOT, "<ByteString@%s size=%d contents=\"%s\">", Integer.toHexString(System.identityHashCode(this)), Integer.valueOf(size()), truncateAndEscapeForDisplay());
    }

    public static ByteString copyFrom(ByteBuffer byteBuffer) {
        return copyFrom(byteBuffer, byteBuffer.remaining());
    }

    public static ByteString copyFrom(String str, String str2) throws UnsupportedEncodingException {
        return new j(str.getBytes(str2));
    }

    public static ByteString copyFrom(String str, Charset charset) {
        return new j(str.getBytes(charset));
    }

    public static ByteString copyFrom(Iterable<ByteString> iterable) {
        int size;
        if (!(iterable instanceof Collection)) {
            size = 0;
            Iterator<ByteString> it = iterable.iterator();
            while (it.hasNext()) {
                it.next();
                size++;
            }
        } else {
            size = ((Collection) iterable).size();
        }
        if (size == 0) {
            return EMPTY;
        }
        return balancedConcat(iterable.iterator(), size);
    }
}
