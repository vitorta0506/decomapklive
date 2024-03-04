package io.grpc;

import com.google.common.base.j;
import com.tencent.bugly.Bugly;
import io.grpc.s0;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;
import java.util.TreeMap;
import org.light.utils.IOUtils;
/* loaded from: classes5.dex */
public final class Status {

    /* renamed from: d  reason: collision with root package name */
    private static final boolean f41702d = Boolean.parseBoolean(System.getProperty("io.grpc.Status.failOnEqualsForTest", Bugly.SDK_IS_DEV));

    /* renamed from: e  reason: collision with root package name */
    private static final List<Status> f41703e = g();

    /* renamed from: f  reason: collision with root package name */
    public static final Status f41704f = Code.OK.toStatus();

    /* renamed from: g  reason: collision with root package name */
    public static final Status f41705g = Code.CANCELLED.toStatus();

    /* renamed from: h  reason: collision with root package name */
    public static final Status f41706h = Code.UNKNOWN.toStatus();

    /* renamed from: i  reason: collision with root package name */
    public static final Status f41707i = Code.INVALID_ARGUMENT.toStatus();

    /* renamed from: j  reason: collision with root package name */
    public static final Status f41708j = Code.DEADLINE_EXCEEDED.toStatus();

    /* renamed from: k  reason: collision with root package name */
    public static final Status f41709k = Code.NOT_FOUND.toStatus();

    /* renamed from: l  reason: collision with root package name */
    public static final Status f41710l = Code.ALREADY_EXISTS.toStatus();

    /* renamed from: m  reason: collision with root package name */
    public static final Status f41711m = Code.PERMISSION_DENIED.toStatus();

    /* renamed from: n  reason: collision with root package name */
    public static final Status f41712n = Code.UNAUTHENTICATED.toStatus();

    /* renamed from: o  reason: collision with root package name */
    public static final Status f41713o = Code.RESOURCE_EXHAUSTED.toStatus();

    /* renamed from: p  reason: collision with root package name */
    public static final Status f41714p = Code.FAILED_PRECONDITION.toStatus();

    /* renamed from: q  reason: collision with root package name */
    public static final Status f41715q = Code.ABORTED.toStatus();

    /* renamed from: r  reason: collision with root package name */
    public static final Status f41716r = Code.OUT_OF_RANGE.toStatus();

    /* renamed from: s  reason: collision with root package name */
    public static final Status f41717s = Code.UNIMPLEMENTED.toStatus();

    /* renamed from: t  reason: collision with root package name */
    public static final Status f41718t = Code.INTERNAL.toStatus();

    /* renamed from: u  reason: collision with root package name */
    public static final Status f41719u = Code.UNAVAILABLE.toStatus();

    /* renamed from: v  reason: collision with root package name */
    public static final Status f41720v = Code.DATA_LOSS.toStatus();

    /* renamed from: w  reason: collision with root package name */
    static final s0.i<Status> f41721w = s0.i.h("grpc-status", false, new b());

    /* renamed from: x  reason: collision with root package name */
    private static final s0.l<String> f41722x;

    /* renamed from: y  reason: collision with root package name */
    static final s0.i<String> f41723y;

    /* renamed from: a  reason: collision with root package name */
    private final Code f41724a;

    /* renamed from: b  reason: collision with root package name */
    private final String f41725b;

    /* renamed from: c  reason: collision with root package name */
    private final Throwable f41726c;

    /* loaded from: classes5.dex */
    public enum Code {
        OK(0),
        CANCELLED(1),
        UNKNOWN(2),
        INVALID_ARGUMENT(3),
        DEADLINE_EXCEEDED(4),
        NOT_FOUND(5),
        ALREADY_EXISTS(6),
        PERMISSION_DENIED(7),
        RESOURCE_EXHAUSTED(8),
        FAILED_PRECONDITION(9),
        ABORTED(10),
        OUT_OF_RANGE(11),
        UNIMPLEMENTED(12),
        INTERNAL(13),
        UNAVAILABLE(14),
        DATA_LOSS(15),
        UNAUTHENTICATED(16);
        
        private final int value;
        private final byte[] valueAscii;

        Code(int i9) {
            this.value = i9;
            this.valueAscii = Integer.toString(i9).getBytes(com.google.common.base.e.f12354a);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public byte[] valueAscii() {
            return this.valueAscii;
        }

        public Status toStatus() {
            return (Status) Status.f41703e.get(this.value);
        }

        public int value() {
            return this.value;
        }
    }

    /* loaded from: classes5.dex */
    private static final class b implements s0.l<Status> {
        private b() {
        }

        @Override // io.grpc.s0.l
        /* renamed from: c */
        public Status b(byte[] bArr) {
            return Status.j(bArr);
        }

        @Override // io.grpc.s0.l
        /* renamed from: d */
        public byte[] a(Status status) {
            return status.n().valueAscii();
        }
    }

    /* loaded from: classes5.dex */
    private static final class c implements s0.l<String> {

        /* renamed from: a  reason: collision with root package name */
        private static final byte[] f41727a = {48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 65, 66, 67, 68, 69, 70};

        private c() {
        }

        private static boolean c(byte b10) {
            return b10 < 32 || b10 >= 126 || b10 == 37;
        }

        private static String e(byte[] bArr) {
            ByteBuffer allocate = ByteBuffer.allocate(bArr.length);
            int i9 = 0;
            while (i9 < bArr.length) {
                if (bArr[i9] == 37 && i9 + 2 < bArr.length) {
                    try {
                        allocate.put((byte) Integer.parseInt(new String(bArr, i9 + 1, 2, com.google.common.base.e.f12354a), 16));
                        i9 += 3;
                    } catch (NumberFormatException unused) {
                    }
                }
                allocate.put(bArr[i9]);
                i9++;
            }
            return new String(allocate.array(), 0, allocate.position(), com.google.common.base.e.f12356c);
        }

        private static byte[] g(byte[] bArr, int i9) {
            byte[] bArr2 = new byte[((bArr.length - i9) * 3) + i9];
            if (i9 != 0) {
                System.arraycopy(bArr, 0, bArr2, 0, i9);
            }
            int i10 = i9;
            while (i9 < bArr.length) {
                byte b10 = bArr[i9];
                if (c(b10)) {
                    bArr2[i10] = 37;
                    byte[] bArr3 = f41727a;
                    bArr2[i10 + 1] = bArr3[(b10 >> 4) & 15];
                    bArr2[i10 + 2] = bArr3[b10 & 15];
                    i10 += 3;
                } else {
                    bArr2[i10] = b10;
                    i10++;
                }
                i9++;
            }
            return Arrays.copyOf(bArr2, i10);
        }

        @Override // io.grpc.s0.l
        /* renamed from: d */
        public String b(byte[] bArr) {
            for (int i9 = 0; i9 < bArr.length; i9++) {
                byte b10 = bArr[i9];
                if (b10 < 32 || b10 >= 126 || (b10 == 37 && i9 + 2 < bArr.length)) {
                    return e(bArr);
                }
            }
            return new String(bArr, 0);
        }

        @Override // io.grpc.s0.l
        /* renamed from: f */
        public byte[] a(String str) {
            byte[] bytes = str.getBytes(com.google.common.base.e.f12356c);
            for (int i9 = 0; i9 < bytes.length; i9++) {
                if (c(bytes[i9])) {
                    return g(bytes, i9);
                }
            }
            return bytes;
        }
    }

    static {
        c cVar = new c();
        f41722x = cVar;
        f41723y = s0.i.h("grpc-message", false, cVar);
    }

    private Status(Code code) {
        this(code, null, null);
    }

    private static List<Status> g() {
        Code[] values;
        Status status;
        TreeMap treeMap = new TreeMap();
        for (Code code : Code.values()) {
            if (((Status) treeMap.put(Integer.valueOf(code.value()), new Status(code))) != null) {
                throw new IllegalStateException("Code value duplication between " + status.n().name() + " & " + code.name());
            }
        }
        return Collections.unmodifiableList(new ArrayList(treeMap.values()));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static String h(Status status) {
        if (status.f41725b == null) {
            return status.f41724a.toString();
        }
        return status.f41724a + ": " + status.f41725b;
    }

    public static Status i(int i9) {
        if (i9 >= 0) {
            List<Status> list = f41703e;
            if (i9 <= list.size()) {
                return list.get(i9);
            }
        }
        Status status = f41706h;
        return status.r("Unknown code " + i9);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static Status j(byte[] bArr) {
        if (bArr.length == 1 && bArr[0] == 48) {
            return f41704f;
        }
        return k(bArr);
    }

    private static Status k(byte[] bArr) {
        int i9;
        int length = bArr.length;
        char c10 = 1;
        if (length != 1) {
            i9 = (length == 2 && bArr[0] >= 48 && bArr[0] <= 57) ? 0 + ((bArr[0] - 48) * 10) : 0;
            Status status = f41706h;
            return status.r("Unknown code " + new String(bArr, com.google.common.base.e.f12354a));
        }
        c10 = 0;
        if (bArr[c10] >= 48 && bArr[c10] <= 57) {
            int i10 = i9 + (bArr[c10] - 48);
            List<Status> list = f41703e;
            if (i10 < list.size()) {
                return list.get(i10);
            }
        }
        Status status2 = f41706h;
        return status2.r("Unknown code " + new String(bArr, com.google.common.base.e.f12354a));
    }

    public static Status l(Throwable th2) {
        for (Throwable th3 = (Throwable) com.google.common.base.o.t(th2, "t"); th3 != null; th3 = th3.getCause()) {
            if (th3 instanceof StatusException) {
                return ((StatusException) th3).getStatus();
            }
            if (th3 instanceof StatusRuntimeException) {
                return ((StatusRuntimeException) th3).getStatus();
            }
        }
        return f41706h.q(th2);
    }

    public StatusException c() {
        return new StatusException(this);
    }

    public StatusRuntimeException d() {
        return new StatusRuntimeException(this);
    }

    public StatusRuntimeException e(s0 s0Var) {
        return new StatusRuntimeException(this, s0Var);
    }

    public boolean equals(Object obj) {
        return super.equals(obj);
    }

    public Status f(String str) {
        if (str == null) {
            return this;
        }
        if (this.f41725b == null) {
            return new Status(this.f41724a, str, this.f41726c);
        }
        Code code = this.f41724a;
        return new Status(code, this.f41725b + IOUtils.LINE_SEPARATOR_UNIX + str, this.f41726c);
    }

    public int hashCode() {
        return super.hashCode();
    }

    public Throwable m() {
        return this.f41726c;
    }

    public Code n() {
        return this.f41724a;
    }

    public String o() {
        return this.f41725b;
    }

    public boolean p() {
        return Code.OK == this.f41724a;
    }

    public Status q(Throwable th2) {
        return com.google.common.base.l.a(this.f41726c, th2) ? this : new Status(this.f41724a, this.f41725b, th2);
    }

    public Status r(String str) {
        return com.google.common.base.l.a(this.f41725b, str) ? this : new Status(this.f41724a, str, this.f41726c);
    }

    public String toString() {
        j.b d10 = com.google.common.base.j.c(this).d("code", this.f41724a.name()).d("description", this.f41725b);
        Throwable th2 = this.f41726c;
        String str = th2;
        if (th2 != null) {
            str = com.google.common.base.y.e(th2);
        }
        return d10.d("cause", str).toString();
    }

    private Status(Code code, String str, Throwable th2) {
        this.f41724a = (Code) com.google.common.base.o.t(code, "code");
        this.f41725b = str;
        this.f41726c = th2;
    }
}
