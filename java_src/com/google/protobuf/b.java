package com.google.protobuf;

import com.google.protobuf.ByteString;
import com.google.protobuf.b;
import com.google.protobuf.b.a;
import com.google.protobuf.o1;
import java.io.FilterInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;
/* loaded from: classes3.dex */
public abstract class b<MessageType extends b<MessageType, BuilderType>, BuilderType extends a<MessageType, BuilderType>> implements o1 {
    protected int memoizedHashCode = 0;

    @Deprecated
    protected static <T> void addAll(Iterable<T> iterable, Collection<? super T> collection) {
        a.a(iterable, (List) collection);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public static void checkByteStringIsUtf8(ByteString byteString) throws IllegalArgumentException {
        if (!byteString.isValidUtf8()) {
            throw new IllegalArgumentException("Byte string is not UTF-8.");
        }
    }

    private String getSerializingExceptionMessage(String str) {
        return "Serializing " + getClass().getName() + " to a " + str + " threw an IOException (should never happen).";
    }

    int getMemoizedSerializedSize() {
        throw new UnsupportedOperationException();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int getSerializedSize(n2 n2Var) {
        int memoizedSerializedSize = getMemoizedSerializedSize();
        if (memoizedSerializedSize == -1) {
            int g10 = n2Var.g(this);
            setMemoizedSerializedSize(g10);
            return g10;
        }
        return memoizedSerializedSize;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public UninitializedMessageException newUninitializedMessageException() {
        return new UninitializedMessageException(this);
    }

    void setMemoizedSerializedSize(int i9) {
        throw new UnsupportedOperationException();
    }

    @Override // com.google.protobuf.o1
    public byte[] toByteArray() {
        try {
            byte[] bArr = new byte[getSerializedSize()];
            CodedOutputStream j02 = CodedOutputStream.j0(bArr);
            writeTo(j02);
            j02.d();
            return bArr;
        } catch (IOException e10) {
            throw new RuntimeException(getSerializingExceptionMessage("byte array"), e10);
        }
    }

    @Override // com.google.protobuf.o1
    public ByteString toByteString() {
        try {
            ByteString.h newCodedBuilder = ByteString.newCodedBuilder(getSerializedSize());
            writeTo(newCodedBuilder.b());
            return newCodedBuilder.a();
        } catch (IOException e10) {
            throw new RuntimeException(getSerializingExceptionMessage("ByteString"), e10);
        }
    }

    public void writeDelimitedTo(OutputStream outputStream) throws IOException {
        int serializedSize = getSerializedSize();
        CodedOutputStream i02 = CodedOutputStream.i0(outputStream, CodedOutputStream.K(CodedOutputStream.M(serializedSize) + serializedSize));
        i02.Q0(serializedSize);
        writeTo(i02);
        i02.e0();
    }

    @Override // com.google.protobuf.o1
    public void writeTo(OutputStream outputStream) throws IOException {
        CodedOutputStream i02 = CodedOutputStream.i0(outputStream, CodedOutputStream.K(getSerializedSize()));
        writeTo(i02);
        i02.e0();
    }

    /* loaded from: classes3.dex */
    public static abstract class a<MessageType extends b<MessageType, BuilderType>, BuilderType extends a<MessageType, BuilderType>> implements o1.a {
        /* JADX INFO: Access modifiers changed from: protected */
        public static <T> void a(Iterable<T> iterable, List<? super T> list) {
            u0.a(iterable);
            if (iterable instanceof z0) {
                List<?> Z = ((z0) iterable).Z();
                z0 z0Var = (z0) list;
                int size = list.size();
                for (Object obj : Z) {
                    if (obj == null) {
                        String str = "Element at index " + (z0Var.size() - size) + " is null.";
                        for (int size2 = z0Var.size() - 1; size2 >= size; size2--) {
                            z0Var.remove(size2);
                        }
                        throw new NullPointerException(str);
                    } else if (obj instanceof ByteString) {
                        z0Var.X((ByteString) obj);
                    } else {
                        z0Var.add((String) obj);
                    }
                }
            } else if (iterable instanceof f2) {
                list.addAll((Collection) iterable);
            } else {
                b(iterable, list);
            }
        }

        private static <T> void b(Iterable<T> iterable, List<? super T> list) {
            if ((list instanceof ArrayList) && (iterable instanceof Collection)) {
                ((ArrayList) list).ensureCapacity(list.size() + ((Collection) iterable).size());
            }
            int size = list.size();
            for (T t10 : iterable) {
                if (t10 == null) {
                    String str = "Element at index " + (list.size() - size) + " is null.";
                    for (int size2 = list.size() - 1; size2 >= size; size2--) {
                        list.remove(size2);
                    }
                    throw new NullPointerException(str);
                }
                list.add(t10);
            }
        }

        private String d(String str) {
            return "Reading " + getClass().getName() + " from a " + str + " threw an IOException (should never happen).";
        }

        /* JADX INFO: Access modifiers changed from: protected */
        public static UninitializedMessageException m(o1 o1Var) {
            return new UninitializedMessageException(o1Var);
        }

        protected abstract BuilderType e(MessageType messagetype);

        public BuilderType f(ByteString byteString) throws InvalidProtocolBufferException {
            try {
                p newCodedInput = byteString.newCodedInput();
                h(newCodedInput);
                newCodedInput.a(0);
                return this;
            } catch (InvalidProtocolBufferException e10) {
                throw e10;
            } catch (IOException e11) {
                throw new RuntimeException(d("ByteString"), e11);
            }
        }

        public BuilderType g(ByteString byteString, f0 f0Var) throws InvalidProtocolBufferException {
            try {
                p newCodedInput = byteString.newCodedInput();
                i(newCodedInput, f0Var);
                newCodedInput.a(0);
                return this;
            } catch (InvalidProtocolBufferException e10) {
                throw e10;
            } catch (IOException e11) {
                throw new RuntimeException(d("ByteString"), e11);
            }
        }

        public BuilderType h(p pVar) throws IOException {
            return i(pVar, f0.b());
        }

        public abstract BuilderType i(p pVar, f0 f0Var) throws IOException;

        /* JADX WARN: Multi-variable type inference failed */
        @Override // com.google.protobuf.o1.a
        /* renamed from: j */
        public BuilderType c0(o1 o1Var) {
            if (getDefaultInstanceForType().getClass().isInstance(o1Var)) {
                return (BuilderType) e((b) o1Var);
            }
            throw new IllegalArgumentException("mergeFrom(MessageLite) can only merge messages of the same type.");
        }

        @Override // com.google.protobuf.o1.a
        /* renamed from: k */
        public BuilderType E0(byte[] bArr) throws InvalidProtocolBufferException {
            return l(bArr, 0, bArr.length);
        }

        public BuilderType l(byte[] bArr, int i9, int i10) throws InvalidProtocolBufferException {
            try {
                p n9 = p.n(bArr, i9, i10);
                h(n9);
                n9.a(0);
                return this;
            } catch (InvalidProtocolBufferException e10) {
                throw e10;
            } catch (IOException e11) {
                throw new RuntimeException(d("byte array"), e11);
            }
        }

        /* renamed from: com.google.protobuf.b$a$a  reason: collision with other inner class name */
        /* loaded from: classes3.dex */
        static final class C0143a extends FilterInputStream {

            /* renamed from: a  reason: collision with root package name */
            private int f14859a;

            /* JADX INFO: Access modifiers changed from: package-private */
            public C0143a(InputStream inputStream, int i9) {
                super(inputStream);
                this.f14859a = i9;
            }

            @Override // java.io.FilterInputStream, java.io.InputStream
            public int available() throws IOException {
                return Math.min(super.available(), this.f14859a);
            }

            @Override // java.io.FilterInputStream, java.io.InputStream
            public int read() throws IOException {
                if (this.f14859a <= 0) {
                    return -1;
                }
                int read = super.read();
                if (read >= 0) {
                    this.f14859a--;
                }
                return read;
            }

            @Override // java.io.FilterInputStream, java.io.InputStream
            public long skip(long j10) throws IOException {
                long skip = super.skip(Math.min(j10, this.f14859a));
                if (skip >= 0) {
                    this.f14859a = (int) (this.f14859a - skip);
                }
                return skip;
            }

            @Override // java.io.FilterInputStream, java.io.InputStream
            public int read(byte[] bArr, int i9, int i10) throws IOException {
                int i11 = this.f14859a;
                if (i11 <= 0) {
                    return -1;
                }
                int read = super.read(bArr, i9, Math.min(i10, i11));
                if (read >= 0) {
                    this.f14859a -= read;
                }
                return read;
            }
        }
    }

    protected static <T> void addAll(Iterable<T> iterable, List<? super T> list) {
        a.a(iterable, list);
    }
}
