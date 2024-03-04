package eh;

import java.nio.ByteOrder;
import kotlin.UByte;
import kotlin.jvm.internal.CharCompanionObject;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes5.dex */
public final class u2 {

    /* renamed from: c  reason: collision with root package name */
    static final u2 f39345c = new u2(0);

    /* renamed from: d  reason: collision with root package name */
    private static final ByteOrder f39346d = ByteOrder.nativeOrder();

    /* renamed from: a  reason: collision with root package name */
    private final long f39347a;

    /* renamed from: b  reason: collision with root package name */
    private final long f39348b;

    /* loaded from: classes5.dex */
    private static class b extends c {

        /* renamed from: a  reason: collision with root package name */
        private final String f39349a;

        /* renamed from: b  reason: collision with root package name */
        private final int f39350b;

        /* renamed from: c  reason: collision with root package name */
        private int f39351c;

        @Override // eh.u2.c
        public long a() {
            return this.f39350b;
        }

        @Override // eh.u2.c
        public byte e() {
            String str = this.f39349a;
            int i9 = this.f39351c;
            this.f39351c = i9 + 1;
            return (byte) str.charAt(i9);
        }

        @Override // eh.u2.c
        public long f() {
            return this.f39350b - this.f39351c;
        }

        private b(String str) {
            super();
            this.f39349a = (String) com.google.common.base.o.t(str, "str");
            this.f39350b = str.length();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes5.dex */
    public static abstract class c {
        private c() {
        }

        abstract long a();

        char b() {
            return (char) ((e() & UByte.MAX_VALUE) | ((e() & UByte.MAX_VALUE) << 8));
        }

        public int c() {
            return (b() & CharCompanionObject.MAX_VALUE) | ((65535 & b()) << 16);
        }

        public long d() {
            return (c() & 4294967295L) | ((4294967295L & c()) << 32);
        }

        abstract byte e();

        abstract long f();
    }

    u2(long j10) {
        this.f39347a = j10;
        this.f39348b = a(j10 + 2870177450012600261L);
    }

    private static long a(long j10) {
        long j11 = (j10 ^ (j10 >>> 33)) * (-4417276706812531889L);
        long j12 = (j11 ^ (j11 >>> 29)) * 1609587929392839161L;
        return j12 ^ (j12 >>> 32);
    }

    private long c(c cVar) {
        long j10;
        long j11;
        long rotateLeft;
        long rotateLeft2;
        if (cVar.f() >= 32) {
            long j12 = this.f39347a;
            long j13 = (j12 - 7046029288634856825L) - 4417276706812531889L;
            long j14 = j12 - 4417276706812531889L;
            long j15 = j12 - (-7046029288634856825L);
            while (true) {
                j13 = Long.rotateLeft(j13 + (cVar.d() * (-4417276706812531889L)), 31) * (-7046029288634856825L);
                rotateLeft = Long.rotateLeft(j14 + (cVar.d() * (-4417276706812531889L)), 31) * (-7046029288634856825L);
                j12 = Long.rotateLeft(j12 + (cVar.d() * (-4417276706812531889L)), 31) * (-7046029288634856825L);
                rotateLeft2 = Long.rotateLeft(j15 + (cVar.d() * (-4417276706812531889L)), 31) * (-7046029288634856825L);
                if (cVar.f() < 32) {
                    break;
                }
                j14 = rotateLeft;
                j15 = rotateLeft2;
            }
            long rotateLeft3 = Long.rotateLeft(rotateLeft * (-4417276706812531889L), 31) * (-7046029288634856825L);
            j10 = ((((((Long.rotateLeft(j12 * (-4417276706812531889L), 31) * (-7046029288634856825L)) ^ (((rotateLeft3 ^ ((((((Long.rotateLeft(j13, 1) + Long.rotateLeft(rotateLeft, 7)) + Long.rotateLeft(j12, 12)) + Long.rotateLeft(rotateLeft2, 18)) ^ (Long.rotateLeft(j13 * (-4417276706812531889L), 31) * (-7046029288634856825L))) * (-7046029288634856825L)) - 8796714831421723037L)) * (-7046029288634856825L)) - 8796714831421723037L)) * (-7046029288634856825L)) - 8796714831421723037L) ^ (Long.rotateLeft(rotateLeft2 * (-4417276706812531889L), 31) * (-7046029288634856825L))) * (-7046029288634856825L)) - 8796714831421723037L;
        } else {
            j10 = this.f39347a + 2870177450012600261L;
        }
        long a10 = cVar.a();
        while (true) {
            j11 = j10 + a10;
            if (cVar.f() < 8) {
                break;
            }
            j10 = Long.rotateLeft(j11 ^ (Long.rotateLeft(cVar.d() * (-4417276706812531889L), 31) * (-7046029288634856825L)), 27) * (-7046029288634856825L);
            a10 = -8796714831421723037L;
        }
        if (cVar.f() >= 4) {
            j11 = (Long.rotateLeft(j11 ^ ((cVar.c() & 4294967295L) * (-7046029288634856825L)), 23) * (-4417276706812531889L)) + 1609587929392839161L;
        }
        while (cVar.f() != 0) {
            j11 = Long.rotateLeft(j11 ^ ((cVar.e() & UByte.MAX_VALUE) * 2870177450012600261L), 11) * (-7046029288634856825L);
        }
        return a(j11);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public long b(String str) {
        return c(new b(str));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public long d(long j10) {
        if (f39346d != ByteOrder.LITTLE_ENDIAN) {
            j10 = Long.reverseBytes(j10);
        }
        return a((Long.rotateLeft((Long.rotateLeft(j10 * (-4417276706812531889L), 31) * (-7046029288634856825L)) ^ ((this.f39347a + 2870177450012600261L) + 8), 27) * (-7046029288634856825L)) - 8796714831421723037L);
    }
}
