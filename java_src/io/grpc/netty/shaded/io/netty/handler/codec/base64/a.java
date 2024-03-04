package io.grpc.netty.shaded.io.netty.handler.codec.base64;

import io.grpc.netty.shaded.io.netty.util.g;
import io.grpc.netty.shaded.io.netty.util.internal.s;
import io.grpc.netty.shaded.io.netty.util.internal.t;
import java.nio.ByteOrder;
import kg.j;
import kg.k;
import kotlin.UByte;
import okio.Utf8;
/* loaded from: classes5.dex */
public final class a {

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes5.dex */
    public static final class b implements g {

        /* renamed from: a  reason: collision with root package name */
        private final byte[] f43842a;

        /* renamed from: b  reason: collision with root package name */
        private int f43843b;

        /* renamed from: c  reason: collision with root package name */
        private byte[] f43844c;

        /* renamed from: d  reason: collision with root package name */
        private int f43845d;

        /* renamed from: e  reason: collision with root package name */
        private j f43846e;

        private b() {
            this.f43842a = new byte[4];
        }

        private static int c(byte[] bArr, j jVar, int i9, byte[] bArr2) {
            int i10;
            int i11;
            int i12;
            byte b10 = bArr[0];
            byte b11 = bArr[1];
            byte b12 = bArr[2];
            if (b12 == 61) {
                try {
                    jVar.X1(i9, ((bArr2[b10] & UByte.MAX_VALUE) << 2) | ((bArr2[b11] & UByte.MAX_VALUE) >>> 4));
                    return 1;
                } catch (IndexOutOfBoundsException unused) {
                    throw new IllegalArgumentException("not encoded in Base64");
                }
            }
            byte b13 = bArr[3];
            if (b13 == 61) {
                byte b14 = bArr2[b11];
                try {
                    if (jVar.v1() == ByteOrder.BIG_ENDIAN) {
                        i12 = ((b14 & 15) << 4) | ((((bArr2[b10] & Utf8.REPLACEMENT_BYTE) << 2) | ((b14 & 240) >> 4)) << 8) | ((bArr2[b12] & 252) >>> 2);
                    } else {
                        i12 = ((((b14 & 15) << 4) | ((bArr2[b12] & 252) >>> 2)) << 8) | ((bArr2[b10] & Utf8.REPLACEMENT_BYTE) << 2) | ((b14 & 240) >> 4);
                    }
                    jVar.i2(i9, i12);
                    return 2;
                } catch (IndexOutOfBoundsException unused2) {
                    throw new IllegalArgumentException("not encoded in Base64");
                }
            }
            try {
                if (jVar.v1() == ByteOrder.BIG_ENDIAN) {
                    i10 = ((bArr2[b10] & Utf8.REPLACEMENT_BYTE) << 18) | ((bArr2[b11] & UByte.MAX_VALUE) << 12) | ((bArr2[b12] & UByte.MAX_VALUE) << 6);
                    i11 = bArr2[b13] & UByte.MAX_VALUE;
                } else {
                    byte b15 = bArr2[b11];
                    byte b16 = bArr2[b12];
                    i10 = ((bArr2[b10] & Utf8.REPLACEMENT_BYTE) << 2) | ((b15 & 15) << 12) | ((b15 & 240) >>> 4) | ((b16 & 3) << 22) | ((b16 & 252) << 6);
                    i11 = (bArr2[b13] & UByte.MAX_VALUE) << 16;
                }
                jVar.h2(i9, i11 | i10);
                return 3;
            } catch (IndexOutOfBoundsException unused3) {
                throw new IllegalArgumentException("not encoded in Base64");
            }
        }

        @Override // io.grpc.netty.shaded.io.netty.util.g
        public boolean a(byte b10) throws Exception {
            byte[] bArr;
            byte b11;
            if (b10 <= 0 || (b11 = (bArr = this.f43844c)[b10]) < -5) {
                throw new IllegalArgumentException("invalid Base64 input character: " + ((int) ((short) (b10 & UByte.MAX_VALUE))) + " (decimal)");
            } else if (b11 >= -1) {
                byte[] bArr2 = this.f43842a;
                int i9 = this.f43843b;
                int i10 = i9 + 1;
                this.f43843b = i10;
                bArr2[i9] = b10;
                if (i10 > 3) {
                    int i11 = this.f43845d;
                    this.f43845d = i11 + c(bArr2, this.f43846e, i11, bArr);
                    this.f43843b = 0;
                    return b10 != 61;
                }
                return true;
            } else {
                return true;
            }
        }

        j b(j jVar, int i9, int i10, k kVar, Base64Dialect base64Dialect) {
            this.f43846e = kVar.l(a.i(i10)).w1(jVar.v1());
            this.f43844c = a.d(base64Dialect);
            try {
                jVar.o0(i9, i10, this);
                return this.f43846e.n2(0, this.f43845d);
            } catch (Throwable th2) {
                this.f43846e.release();
                t.R0(th2);
                return null;
            }
        }
    }

    private static byte[] b(Base64Dialect base64Dialect) {
        return ((Base64Dialect) s.h(base64Dialect, "dialect")).alphabet;
    }

    private static boolean c(Base64Dialect base64Dialect) {
        return ((Base64Dialect) s.h(base64Dialect, "dialect")).breakLinesByDefault;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static byte[] d(Base64Dialect base64Dialect) {
        return ((Base64Dialect) s.h(base64Dialect, "dialect")).decodabet;
    }

    public static j e(j jVar) {
        return h(jVar, Base64Dialect.STANDARD);
    }

    public static j f(j jVar, int i9, int i10, Base64Dialect base64Dialect) {
        return g(jVar, i9, i10, base64Dialect, jVar.P());
    }

    public static j g(j jVar, int i9, int i10, Base64Dialect base64Dialect, k kVar) {
        s.h(jVar, "src");
        s.h(base64Dialect, "dialect");
        return new b().b(jVar, i9, i10, kVar, base64Dialect);
    }

    public static j h(j jVar, Base64Dialect base64Dialect) {
        s.h(jVar, "src");
        j f10 = f(jVar, jVar.Q1(), jVar.P1(), base64Dialect);
        jVar.R1(jVar.K2());
        return f10;
    }

    static int i(int i9) {
        return i9 - (i9 >>> 2);
    }

    public static j j(j jVar, int i9, int i10, boolean z10, Base64Dialect base64Dialect) {
        return k(jVar, i9, i10, z10, base64Dialect, jVar.P());
    }

    public static j k(j jVar, int i9, int i10, boolean z10, Base64Dialect base64Dialect, k kVar) {
        s.h(jVar, "src");
        s.h(base64Dialect, "dialect");
        j w12 = kVar.l(r(i10, z10)).w1(jVar.v1());
        byte[] b10 = b(base64Dialect);
        int i11 = i10 - 2;
        int i12 = 0;
        int i13 = 0;
        int i14 = 0;
        while (i12 < i11) {
            o(jVar, i12 + i9, 3, w12, i13, b10);
            i14 += 4;
            if (z10 && i14 == 76) {
                w12.X1(i13 + 4, 10);
                i13++;
                i14 = 0;
            }
            i12 += 3;
            i13 += 4;
        }
        if (i12 < i10) {
            o(jVar, i12 + i9, i10 - i12, w12, i13, b10);
            i13 += 4;
        }
        if (i13 > 1 && w12.u0(i13 - 1) == 10) {
            i13--;
        }
        return w12.n2(0, i13);
    }

    public static j l(j jVar, Base64Dialect base64Dialect) {
        return n(jVar, c(base64Dialect), base64Dialect);
    }

    public static j m(j jVar, boolean z10) {
        return n(jVar, z10, Base64Dialect.STANDARD);
    }

    public static j n(j jVar, boolean z10, Base64Dialect base64Dialect) {
        s.h(jVar, "src");
        j j10 = j(jVar, jVar.Q1(), jVar.P1(), z10, base64Dialect);
        jVar.R1(jVar.K2());
        return j10;
    }

    private static void o(j jVar, int i9, int i10, j jVar2, int i11, byte[] bArr) {
        int i12 = 0;
        if (jVar.v1() == ByteOrder.BIG_ENDIAN) {
            if (i10 == 1) {
                i12 = s(jVar.u0(i9));
            } else if (i10 == 2) {
                i12 = u(jVar.P0(i9));
            } else if (i10 > 0) {
                i12 = t(jVar.H0(i9));
            }
            p(i12, i10, jVar2, i11, bArr);
            return;
        }
        if (i10 == 1) {
            i12 = s(jVar.u0(i9));
        } else if (i10 == 2) {
            i12 = w(jVar.P0(i9));
        } else if (i10 > 0) {
            i12 = v(jVar.H0(i9));
        }
        q(i12, i10, jVar2, i11, bArr);
    }

    private static void p(int i9, int i10, j jVar, int i11, byte[] bArr) {
        if (i10 == 1) {
            jVar.e2(i11, (bArr[(i9 >>> 12) & 63] << 16) | (bArr[i9 >>> 18] << 24) | 15616 | 61);
        } else if (i10 == 2) {
            jVar.e2(i11, (bArr[(i9 >>> 6) & 63] << 8) | (bArr[i9 >>> 18] << 24) | (bArr[(i9 >>> 12) & 63] << 16) | 61);
        } else if (i10 != 3) {
        } else {
            jVar.e2(i11, bArr[i9 & 63] | (bArr[i9 >>> 18] << 24) | (bArr[(i9 >>> 12) & 63] << 16) | (bArr[(i9 >>> 6) & 63] << 8));
        }
    }

    private static void q(int i9, int i10, j jVar, int i11, byte[] bArr) {
        if (i10 == 1) {
            jVar.e2(i11, (bArr[(i9 >>> 12) & 63] << 8) | bArr[i9 >>> 18] | 3997696 | 1023410176);
        } else if (i10 == 2) {
            jVar.e2(i11, (bArr[(i9 >>> 6) & 63] << 16) | bArr[i9 >>> 18] | (bArr[(i9 >>> 12) & 63] << 8) | 1023410176);
        } else if (i10 != 3) {
        } else {
            jVar.e2(i11, (bArr[i9 & 63] << 24) | bArr[i9 >>> 18] | (bArr[(i9 >>> 12) & 63] << 8) | (bArr[(i9 >>> 6) & 63] << 16));
        }
    }

    static int r(int i9, boolean z10) {
        long j10 = (i9 << 2) / 3;
        long j11 = (3 + j10) & (-4);
        if (z10) {
            j11 += j10 / 76;
        }
        if (j11 < 2147483647L) {
            return (int) j11;
        }
        return Integer.MAX_VALUE;
    }

    private static int s(byte b10) {
        return (b10 & UByte.MAX_VALUE) << 16;
    }

    private static int t(int i9) {
        return (i9 & 255) | (16711680 & i9) | (65280 & i9);
    }

    private static int u(short s10) {
        return ((s10 & 255) << 8) | ((65280 & s10) << 8);
    }

    private static int v(int i9) {
        return ((i9 & 16711680) >>> 16) | ((i9 & 255) << 16) | (65280 & i9);
    }

    private static int w(short s10) {
        return (s10 & 65280) | ((s10 & 255) << 16);
    }
}
