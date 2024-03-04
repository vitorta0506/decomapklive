package ah;

import com.google.common.base.o;
import com.google.protobuf.InvalidProtocolBufferException;
import com.google.protobuf.e2;
import com.google.protobuf.f0;
import com.google.protobuf.o1;
import com.google.protobuf.p;
import io.grpc.MethodDescriptor;
import io.grpc.Status;
import io.grpc.m0;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.lang.ref.Reference;
import java.lang.ref.WeakReference;
/* loaded from: classes5.dex */
public final class b {

    /* renamed from: a  reason: collision with root package name */
    static volatile f0 f784a = f0.b();

    /* loaded from: classes5.dex */
    private static final class a<T extends o1> implements MethodDescriptor.c {

        /* renamed from: c  reason: collision with root package name */
        private static final ThreadLocal<Reference<byte[]>> f785c = new ThreadLocal<>();

        /* renamed from: a  reason: collision with root package name */
        private final e2<T> f786a;

        /* renamed from: b  reason: collision with root package name */
        private final T f787b;

        a(T t10) {
            this.f787b = t10;
            this.f786a = (e2<T>) t10.getParserForType();
        }

        private T d(p pVar) throws InvalidProtocolBufferException {
            T i9 = this.f786a.i(pVar, b.f784a);
            try {
                pVar.a(0);
                return i9;
            } catch (InvalidProtocolBufferException e10) {
                e10.setUnfinishedMessage(i9);
                throw e10;
            }
        }

        @Override // io.grpc.MethodDescriptor.c
        /* renamed from: c */
        public T b(InputStream inputStream) {
            byte[] bArr;
            if ((inputStream instanceof ah.a) && ((ah.a) inputStream).e() == this.f786a) {
                try {
                    return (T) ((ah.a) inputStream).c();
                } catch (IllegalStateException unused) {
                }
            }
            p pVar = null;
            try {
                if (inputStream instanceof m0) {
                    int available = inputStream.available();
                    if (available > 0 && available <= 4194304) {
                        ThreadLocal<Reference<byte[]>> threadLocal = f785c;
                        Reference<byte[]> reference = threadLocal.get();
                        if (reference == null || (bArr = reference.get()) == null || bArr.length < available) {
                            bArr = new byte[available];
                            threadLocal.set(new WeakReference(bArr));
                        }
                        int i9 = available;
                        while (i9 > 0) {
                            int read = inputStream.read(bArr, available - i9, i9);
                            if (read == -1) {
                                break;
                            }
                            i9 -= read;
                        }
                        if (i9 == 0) {
                            pVar = p.n(bArr, 0, available);
                        } else {
                            throw new RuntimeException("size inaccurate: " + available + " != " + (available - i9));
                        }
                    } else if (available == 0) {
                        return this.f787b;
                    }
                }
                if (pVar == null) {
                    pVar = p.h(inputStream);
                }
                pVar.O(Integer.MAX_VALUE);
                try {
                    return d(pVar);
                } catch (InvalidProtocolBufferException e10) {
                    throw Status.f41718t.r("Invalid protobuf byte sequence").q(e10).d();
                }
            } catch (IOException e11) {
                throw new RuntimeException(e11);
            }
        }

        @Override // io.grpc.MethodDescriptor.c
        /* renamed from: e */
        public InputStream a(T t10) {
            return new ah.a(t10, this.f786a);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static long a(InputStream inputStream, OutputStream outputStream) throws IOException {
        o.t(inputStream, "inputStream cannot be null!");
        o.t(outputStream, "outputStream cannot be null!");
        byte[] bArr = new byte[8192];
        long j10 = 0;
        while (true) {
            int read = inputStream.read(bArr);
            if (read == -1) {
                return j10;
            }
            outputStream.write(bArr, 0, read);
            j10 += read;
        }
    }

    public static <T extends o1> MethodDescriptor.c<T> b(T t10) {
        return new a(t10);
    }
}
