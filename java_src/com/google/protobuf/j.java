package com.google.protobuf;

import com.google.protobuf.GeneratedMessageLite;
import com.google.protobuf.WireFormat;
import com.google.protobuf.u0;
import java.io.IOException;
import java.util.Objects;
import kotlin.UByte;
import kotlin.jvm.internal.ByteCompanionObject;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes3.dex */
public final class j {

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public static /* synthetic */ class a {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ int[] f15013a;

        static {
            int[] iArr = new int[WireFormat.FieldType.values().length];
            f15013a = iArr;
            try {
                iArr[WireFormat.FieldType.DOUBLE.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f15013a[WireFormat.FieldType.FLOAT.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f15013a[WireFormat.FieldType.INT64.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f15013a[WireFormat.FieldType.UINT64.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f15013a[WireFormat.FieldType.INT32.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                f15013a[WireFormat.FieldType.UINT32.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                f15013a[WireFormat.FieldType.FIXED64.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                f15013a[WireFormat.FieldType.SFIXED64.ordinal()] = 8;
            } catch (NoSuchFieldError unused8) {
            }
            try {
                f15013a[WireFormat.FieldType.FIXED32.ordinal()] = 9;
            } catch (NoSuchFieldError unused9) {
            }
            try {
                f15013a[WireFormat.FieldType.SFIXED32.ordinal()] = 10;
            } catch (NoSuchFieldError unused10) {
            }
            try {
                f15013a[WireFormat.FieldType.BOOL.ordinal()] = 11;
            } catch (NoSuchFieldError unused11) {
            }
            try {
                f15013a[WireFormat.FieldType.SINT32.ordinal()] = 12;
            } catch (NoSuchFieldError unused12) {
            }
            try {
                f15013a[WireFormat.FieldType.SINT64.ordinal()] = 13;
            } catch (NoSuchFieldError unused13) {
            }
            try {
                f15013a[WireFormat.FieldType.ENUM.ordinal()] = 14;
            } catch (NoSuchFieldError unused14) {
            }
            try {
                f15013a[WireFormat.FieldType.BYTES.ordinal()] = 15;
            } catch (NoSuchFieldError unused15) {
            }
            try {
                f15013a[WireFormat.FieldType.STRING.ordinal()] = 16;
            } catch (NoSuchFieldError unused16) {
            }
            try {
                f15013a[WireFormat.FieldType.GROUP.ordinal()] = 17;
            } catch (NoSuchFieldError unused17) {
            }
            try {
                f15013a[WireFormat.FieldType.MESSAGE.ordinal()] = 18;
            } catch (NoSuchFieldError unused18) {
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public static final class b {

        /* renamed from: a  reason: collision with root package name */
        public int f15014a;

        /* renamed from: b  reason: collision with root package name */
        public long f15015b;

        /* renamed from: c  reason: collision with root package name */
        public Object f15016c;

        /* renamed from: d  reason: collision with root package name */
        public final f0 f15017d;

        /* JADX INFO: Access modifiers changed from: package-private */
        public b(f0 f0Var) {
            Objects.requireNonNull(f0Var);
            this.f15017d = f0Var;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int A(int i9, byte[] bArr, int i10, int i11, u0.j<?> jVar, b bVar) {
        t0 t0Var = (t0) jVar;
        int I = I(bArr, i10, bVar);
        t0Var.D0(p.c(bVar.f15014a));
        while (I < i11) {
            int I2 = I(bArr, I, bVar);
            if (i9 != bVar.f15014a) {
                break;
            }
            I = I(bArr, I2, bVar);
            t0Var.D0(p.c(bVar.f15014a));
        }
        return I;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int B(int i9, byte[] bArr, int i10, int i11, u0.j<?> jVar, b bVar) {
        c1 c1Var = (c1) jVar;
        int L = L(bArr, i10, bVar);
        c1Var.I0(p.d(bVar.f15015b));
        while (L < i11) {
            int I = I(bArr, L, bVar);
            if (i9 != bVar.f15014a) {
                break;
            }
            L = L(bArr, I, bVar);
            c1Var.I0(p.d(bVar.f15015b));
        }
        return L;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int C(byte[] bArr, int i9, b bVar) throws InvalidProtocolBufferException {
        int I = I(bArr, i9, bVar);
        int i10 = bVar.f15014a;
        if (i10 >= 0) {
            if (i10 == 0) {
                bVar.f15016c = "";
                return I;
            }
            bVar.f15016c = new String(bArr, I, i10, u0.f15284b);
            return I + i10;
        }
        throw InvalidProtocolBufferException.negativeSize();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: Removed duplicated region for block: B:10:0x001d  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:8:0x001a -> B:9:0x001b). Please submit an issue!!! */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static int D(int r4, byte[] r5, int r6, int r7, com.google.protobuf.u0.j<?> r8, com.google.protobuf.j.b r9) throws com.google.protobuf.InvalidProtocolBufferException {
        /*
            int r6 = I(r5, r6, r9)
            int r0 = r9.f15014a
            if (r0 < 0) goto L45
            java.lang.String r1 = ""
            if (r0 != 0) goto L10
            r8.add(r1)
            goto L1b
        L10:
            java.lang.String r2 = new java.lang.String
            java.nio.charset.Charset r3 = com.google.protobuf.u0.f15284b
            r2.<init>(r5, r6, r0, r3)
            r8.add(r2)
        L1a:
            int r6 = r6 + r0
        L1b:
            if (r6 >= r7) goto L44
            int r0 = I(r5, r6, r9)
            int r2 = r9.f15014a
            if (r4 == r2) goto L26
            goto L44
        L26:
            int r6 = I(r5, r0, r9)
            int r0 = r9.f15014a
            if (r0 < 0) goto L3f
            if (r0 != 0) goto L34
            r8.add(r1)
            goto L1b
        L34:
            java.lang.String r2 = new java.lang.String
            java.nio.charset.Charset r3 = com.google.protobuf.u0.f15284b
            r2.<init>(r5, r6, r0, r3)
            r8.add(r2)
            goto L1a
        L3f:
            com.google.protobuf.InvalidProtocolBufferException r4 = com.google.protobuf.InvalidProtocolBufferException.negativeSize()
            throw r4
        L44:
            return r6
        L45:
            com.google.protobuf.InvalidProtocolBufferException r4 = com.google.protobuf.InvalidProtocolBufferException.negativeSize()
            throw r4
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.protobuf.j.D(int, byte[], int, int, com.google.protobuf.u0$j, com.google.protobuf.j$b):int");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: Removed duplicated region for block: B:12:0x0025  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:10:0x0022 -> B:11:0x0023). Please submit an issue!!! */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static int E(int r5, byte[] r6, int r7, int r8, com.google.protobuf.u0.j<?> r9, com.google.protobuf.j.b r10) throws com.google.protobuf.InvalidProtocolBufferException {
        /*
            int r7 = I(r6, r7, r10)
            int r0 = r10.f15014a
            if (r0 < 0) goto L5f
            java.lang.String r1 = ""
            if (r0 != 0) goto L10
            r9.add(r1)
            goto L23
        L10:
            int r2 = r7 + r0
            boolean r3 = com.google.protobuf.n3.t(r6, r7, r2)
            if (r3 == 0) goto L5a
            java.lang.String r3 = new java.lang.String
            java.nio.charset.Charset r4 = com.google.protobuf.u0.f15284b
            r3.<init>(r6, r7, r0, r4)
            r9.add(r3)
        L22:
            r7 = r2
        L23:
            if (r7 >= r8) goto L59
            int r0 = I(r6, r7, r10)
            int r2 = r10.f15014a
            if (r5 == r2) goto L2e
            goto L59
        L2e:
            int r7 = I(r6, r0, r10)
            int r0 = r10.f15014a
            if (r0 < 0) goto L54
            if (r0 != 0) goto L3c
            r9.add(r1)
            goto L23
        L3c:
            int r2 = r7 + r0
            boolean r3 = com.google.protobuf.n3.t(r6, r7, r2)
            if (r3 == 0) goto L4f
            java.lang.String r3 = new java.lang.String
            java.nio.charset.Charset r4 = com.google.protobuf.u0.f15284b
            r3.<init>(r6, r7, r0, r4)
            r9.add(r3)
            goto L22
        L4f:
            com.google.protobuf.InvalidProtocolBufferException r5 = com.google.protobuf.InvalidProtocolBufferException.invalidUtf8()
            throw r5
        L54:
            com.google.protobuf.InvalidProtocolBufferException r5 = com.google.protobuf.InvalidProtocolBufferException.negativeSize()
            throw r5
        L59:
            return r7
        L5a:
            com.google.protobuf.InvalidProtocolBufferException r5 = com.google.protobuf.InvalidProtocolBufferException.invalidUtf8()
            throw r5
        L5f:
            com.google.protobuf.InvalidProtocolBufferException r5 = com.google.protobuf.InvalidProtocolBufferException.negativeSize()
            throw r5
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.protobuf.j.E(int, byte[], int, int, com.google.protobuf.u0$j, com.google.protobuf.j$b):int");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int F(byte[] bArr, int i9, b bVar) throws InvalidProtocolBufferException {
        int I = I(bArr, i9, bVar);
        int i10 = bVar.f15014a;
        if (i10 >= 0) {
            if (i10 == 0) {
                bVar.f15016c = "";
                return I;
            }
            bVar.f15016c = n3.h(bArr, I, i10);
            return I + i10;
        }
        throw InvalidProtocolBufferException.negativeSize();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int G(int i9, byte[] bArr, int i10, int i11, i3 i3Var, b bVar) throws InvalidProtocolBufferException {
        if (WireFormat.a(i9) != 0) {
            int b10 = WireFormat.b(i9);
            if (b10 == 0) {
                int L = L(bArr, i10, bVar);
                i3Var.m(i9, Long.valueOf(bVar.f15015b));
                return L;
            } else if (b10 == 1) {
                i3Var.m(i9, Long.valueOf(j(bArr, i10)));
                return i10 + 8;
            } else if (b10 == 2) {
                int I = I(bArr, i10, bVar);
                int i12 = bVar.f15014a;
                if (i12 >= 0) {
                    if (i12 <= bArr.length - I) {
                        if (i12 == 0) {
                            i3Var.m(i9, ByteString.EMPTY);
                        } else {
                            i3Var.m(i9, ByteString.copyFrom(bArr, I, i12));
                        }
                        return I + i12;
                    }
                    throw InvalidProtocolBufferException.truncatedMessage();
                }
                throw InvalidProtocolBufferException.negativeSize();
            } else if (b10 != 3) {
                if (b10 == 5) {
                    i3Var.m(i9, Integer.valueOf(h(bArr, i10)));
                    return i10 + 4;
                }
                throw InvalidProtocolBufferException.invalidTag();
            } else {
                i3 j10 = i3.j();
                int i13 = (i9 & (-8)) | 4;
                int i14 = 0;
                while (true) {
                    if (i10 >= i11) {
                        break;
                    }
                    int I2 = I(bArr, i10, bVar);
                    int i15 = bVar.f15014a;
                    if (i15 == i13) {
                        i14 = i15;
                        i10 = I2;
                        break;
                    }
                    i14 = i15;
                    i10 = G(i15, bArr, I2, i11, j10, bVar);
                }
                if (i10 <= i11 && i14 == i13) {
                    i3Var.m(i9, j10);
                    return i10;
                }
                throw InvalidProtocolBufferException.parseFailure();
            }
        }
        throw InvalidProtocolBufferException.invalidTag();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int H(int i9, byte[] bArr, int i10, b bVar) {
        int i11 = i9 & 127;
        int i12 = i10 + 1;
        byte b10 = bArr[i10];
        if (b10 >= 0) {
            bVar.f15014a = i11 | (b10 << 7);
            return i12;
        }
        int i13 = i11 | ((b10 & ByteCompanionObject.MAX_VALUE) << 7);
        int i14 = i12 + 1;
        byte b11 = bArr[i12];
        if (b11 >= 0) {
            bVar.f15014a = i13 | (b11 << 14);
            return i14;
        }
        int i15 = i13 | ((b11 & ByteCompanionObject.MAX_VALUE) << 14);
        int i16 = i14 + 1;
        byte b12 = bArr[i14];
        if (b12 >= 0) {
            bVar.f15014a = i15 | (b12 << 21);
            return i16;
        }
        int i17 = i15 | ((b12 & ByteCompanionObject.MAX_VALUE) << 21);
        int i18 = i16 + 1;
        byte b13 = bArr[i16];
        if (b13 >= 0) {
            bVar.f15014a = i17 | (b13 << 28);
            return i18;
        }
        int i19 = i17 | ((b13 & ByteCompanionObject.MAX_VALUE) << 28);
        while (true) {
            int i20 = i18 + 1;
            if (bArr[i18] >= 0) {
                bVar.f15014a = i19;
                return i20;
            }
            i18 = i20;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int I(byte[] bArr, int i9, b bVar) {
        int i10 = i9 + 1;
        byte b10 = bArr[i9];
        if (b10 >= 0) {
            bVar.f15014a = b10;
            return i10;
        }
        return H(b10, bArr, i10, bVar);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int J(int i9, byte[] bArr, int i10, int i11, u0.j<?> jVar, b bVar) {
        t0 t0Var = (t0) jVar;
        int I = I(bArr, i10, bVar);
        t0Var.D0(bVar.f15014a);
        while (I < i11) {
            int I2 = I(bArr, I, bVar);
            if (i9 != bVar.f15014a) {
                break;
            }
            I = I(bArr, I2, bVar);
            t0Var.D0(bVar.f15014a);
        }
        return I;
    }

    static int K(long j10, byte[] bArr, int i9, b bVar) {
        int i10 = i9 + 1;
        byte b10 = bArr[i9];
        long j11 = (j10 & 127) | ((b10 & ByteCompanionObject.MAX_VALUE) << 7);
        int i11 = 7;
        while (b10 < 0) {
            int i12 = i10 + 1;
            byte b11 = bArr[i10];
            i11 += 7;
            j11 |= (b11 & ByteCompanionObject.MAX_VALUE) << i11;
            i10 = i12;
            b10 = b11;
        }
        bVar.f15015b = j11;
        return i10;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int L(byte[] bArr, int i9, b bVar) {
        int i10 = i9 + 1;
        long j10 = bArr[i9];
        if (j10 >= 0) {
            bVar.f15015b = j10;
            return i10;
        }
        return K(j10, bArr, i10, bVar);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int M(int i9, byte[] bArr, int i10, int i11, u0.j<?> jVar, b bVar) {
        c1 c1Var = (c1) jVar;
        int L = L(bArr, i10, bVar);
        c1Var.I0(bVar.f15015b);
        while (L < i11) {
            int I = I(bArr, L, bVar);
            if (i9 != bVar.f15014a) {
                break;
            }
            L = L(bArr, I, bVar);
            c1Var.I0(bVar.f15015b);
        }
        return L;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int N(int i9, byte[] bArr, int i10, int i11, b bVar) throws InvalidProtocolBufferException {
        if (WireFormat.a(i9) != 0) {
            int b10 = WireFormat.b(i9);
            if (b10 != 0) {
                if (b10 != 1) {
                    if (b10 != 2) {
                        if (b10 != 3) {
                            if (b10 == 5) {
                                return i10 + 4;
                            }
                            throw InvalidProtocolBufferException.invalidTag();
                        }
                        int i12 = (i9 & (-8)) | 4;
                        int i13 = 0;
                        while (i10 < i11) {
                            i10 = I(bArr, i10, bVar);
                            i13 = bVar.f15014a;
                            if (i13 == i12) {
                                break;
                            }
                            i10 = N(i13, bArr, i10, i11, bVar);
                        }
                        if (i10 > i11 || i13 != i12) {
                            throw InvalidProtocolBufferException.parseFailure();
                        }
                        return i10;
                    }
                    return I(bArr, i10, bVar) + bVar.f15014a;
                }
                return i10 + 8;
            }
            return L(bArr, i10, bVar);
        }
        throw InvalidProtocolBufferException.invalidTag();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int a(int i9, byte[] bArr, int i10, int i11, u0.j<?> jVar, b bVar) {
        m mVar = (m) jVar;
        int L = L(bArr, i10, bVar);
        mVar.m(bVar.f15015b != 0);
        while (L < i11) {
            int I = I(bArr, L, bVar);
            if (i9 != bVar.f15014a) {
                break;
            }
            L = L(bArr, I, bVar);
            mVar.m(bVar.f15015b != 0);
        }
        return L;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int b(byte[] bArr, int i9, b bVar) throws InvalidProtocolBufferException {
        int I = I(bArr, i9, bVar);
        int i10 = bVar.f15014a;
        if (i10 >= 0) {
            if (i10 <= bArr.length - I) {
                if (i10 == 0) {
                    bVar.f15016c = ByteString.EMPTY;
                    return I;
                }
                bVar.f15016c = ByteString.copyFrom(bArr, I, i10);
                return I + i10;
            }
            throw InvalidProtocolBufferException.truncatedMessage();
        }
        throw InvalidProtocolBufferException.negativeSize();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: Removed duplicated region for block: B:11:0x001e  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:9:0x001b -> B:10:0x001c). Please submit an issue!!! */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static int c(int r2, byte[] r3, int r4, int r5, com.google.protobuf.u0.j<?> r6, com.google.protobuf.j.b r7) throws com.google.protobuf.InvalidProtocolBufferException {
        /*
            int r4 = I(r3, r4, r7)
            int r0 = r7.f15014a
            if (r0 < 0) goto L53
            int r1 = r3.length
            int r1 = r1 - r4
            if (r0 > r1) goto L4e
            if (r0 != 0) goto L14
            com.google.protobuf.ByteString r0 = com.google.protobuf.ByteString.EMPTY
            r6.add(r0)
            goto L1c
        L14:
            com.google.protobuf.ByteString r1 = com.google.protobuf.ByteString.copyFrom(r3, r4, r0)
            r6.add(r1)
        L1b:
            int r4 = r4 + r0
        L1c:
            if (r4 >= r5) goto L4d
            int r0 = I(r3, r4, r7)
            int r1 = r7.f15014a
            if (r2 == r1) goto L27
            goto L4d
        L27:
            int r4 = I(r3, r0, r7)
            int r0 = r7.f15014a
            if (r0 < 0) goto L48
            int r1 = r3.length
            int r1 = r1 - r4
            if (r0 > r1) goto L43
            if (r0 != 0) goto L3b
            com.google.protobuf.ByteString r0 = com.google.protobuf.ByteString.EMPTY
            r6.add(r0)
            goto L1c
        L3b:
            com.google.protobuf.ByteString r1 = com.google.protobuf.ByteString.copyFrom(r3, r4, r0)
            r6.add(r1)
            goto L1b
        L43:
            com.google.protobuf.InvalidProtocolBufferException r2 = com.google.protobuf.InvalidProtocolBufferException.truncatedMessage()
            throw r2
        L48:
            com.google.protobuf.InvalidProtocolBufferException r2 = com.google.protobuf.InvalidProtocolBufferException.negativeSize()
            throw r2
        L4d:
            return r4
        L4e:
            com.google.protobuf.InvalidProtocolBufferException r2 = com.google.protobuf.InvalidProtocolBufferException.truncatedMessage()
            throw r2
        L53:
            com.google.protobuf.InvalidProtocolBufferException r2 = com.google.protobuf.InvalidProtocolBufferException.negativeSize()
            throw r2
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.protobuf.j.c(int, byte[], int, int, com.google.protobuf.u0$j, com.google.protobuf.j$b):int");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static double d(byte[] bArr, int i9) {
        return Double.longBitsToDouble(j(bArr, i9));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int e(int i9, byte[] bArr, int i10, int i11, u0.j<?> jVar, b bVar) {
        t tVar = (t) jVar;
        tVar.N0(d(bArr, i10));
        int i12 = i10 + 8;
        while (i12 < i11) {
            int I = I(bArr, i12, bVar);
            if (i9 != bVar.f15014a) {
                break;
            }
            tVar.N0(d(bArr, I));
            i12 = I + 8;
        }
        return i12;
    }

    static int f(int i9, byte[] bArr, int i10, int i11, GeneratedMessageLite.b<?, ?> bVar, GeneratedMessageLite.d<?, ?> dVar, g3<i3, i3> g3Var, b bVar2) throws IOException {
        Object r10;
        o0<GeneratedMessageLite.c> o0Var = bVar.f14694d;
        int i12 = i9 >>> 3;
        if (dVar.f14701b.isRepeated() && dVar.f14701b.isPacked()) {
            switch (a.f15013a[dVar.b().ordinal()]) {
                case 1:
                    t tVar = new t();
                    int s10 = s(bArr, i10, tVar, bVar2);
                    o0Var.L(dVar.f14701b, tVar);
                    return s10;
                case 2:
                    p0 p0Var = new p0();
                    int v10 = v(bArr, i10, p0Var, bVar2);
                    o0Var.L(dVar.f14701b, p0Var);
                    return v10;
                case 3:
                case 4:
                    c1 c1Var = new c1();
                    int z10 = z(bArr, i10, c1Var, bVar2);
                    o0Var.L(dVar.f14701b, c1Var);
                    return z10;
                case 5:
                case 6:
                    t0 t0Var = new t0();
                    int y10 = y(bArr, i10, t0Var, bVar2);
                    o0Var.L(dVar.f14701b, t0Var);
                    return y10;
                case 7:
                case 8:
                    c1 c1Var2 = new c1();
                    int u10 = u(bArr, i10, c1Var2, bVar2);
                    o0Var.L(dVar.f14701b, c1Var2);
                    return u10;
                case 9:
                case 10:
                    t0 t0Var2 = new t0();
                    int t10 = t(bArr, i10, t0Var2, bVar2);
                    o0Var.L(dVar.f14701b, t0Var2);
                    return t10;
                case 11:
                    m mVar = new m();
                    int r11 = r(bArr, i10, mVar, bVar2);
                    o0Var.L(dVar.f14701b, mVar);
                    return r11;
                case 12:
                    t0 t0Var3 = new t0();
                    int w6 = w(bArr, i10, t0Var3, bVar2);
                    o0Var.L(dVar.f14701b, t0Var3);
                    return w6;
                case 13:
                    c1 c1Var3 = new c1();
                    int x10 = x(bArr, i10, c1Var3, bVar2);
                    o0Var.L(dVar.f14701b, c1Var3);
                    return x10;
                case 14:
                    t0 t0Var4 = new t0();
                    int y11 = y(bArr, i10, t0Var4, bVar2);
                    i3 i3Var = bVar.f14689a;
                    i3 i3Var2 = (i3) p2.z(i12, t0Var4, dVar.f14701b.b(), i3Var != i3.c() ? i3Var : null, g3Var);
                    if (i3Var2 != null) {
                        bVar.f14689a = i3Var2;
                    }
                    o0Var.L(dVar.f14701b, t0Var4);
                    return y11;
                default:
                    throw new IllegalStateException("Type cannot be packed: " + dVar.f14701b.e0());
            }
        }
        if (dVar.b() == WireFormat.FieldType.ENUM) {
            i10 = I(bArr, i10, bVar2);
            if (dVar.f14701b.b().a(bVar2.f15014a) == null) {
                i3 i3Var3 = bVar.f14689a;
                if (i3Var3 == i3.c()) {
                    i3Var3 = i3.j();
                    bVar.f14689a = i3Var3;
                }
                p2.M(i12, bVar2.f15014a, i3Var3, g3Var);
                return i10;
            }
            r2 = Integer.valueOf(bVar2.f15014a);
        } else {
            switch (a.f15013a[dVar.b().ordinal()]) {
                case 1:
                    r2 = Double.valueOf(d(bArr, i10));
                    i10 += 8;
                    break;
                case 2:
                    r2 = Float.valueOf(l(bArr, i10));
                    i10 += 4;
                    break;
                case 3:
                case 4:
                    i10 = L(bArr, i10, bVar2);
                    r2 = Long.valueOf(bVar2.f15015b);
                    break;
                case 5:
                case 6:
                    i10 = I(bArr, i10, bVar2);
                    r2 = Integer.valueOf(bVar2.f15014a);
                    break;
                case 7:
                case 8:
                    r2 = Long.valueOf(j(bArr, i10));
                    i10 += 8;
                    break;
                case 9:
                case 10:
                    r2 = Integer.valueOf(h(bArr, i10));
                    i10 += 4;
                    break;
                case 11:
                    i10 = L(bArr, i10, bVar2);
                    r2 = Boolean.valueOf(bVar2.f15015b != 0);
                    break;
                case 12:
                    i10 = I(bArr, i10, bVar2);
                    r2 = Integer.valueOf(p.c(bVar2.f15014a));
                    break;
                case 13:
                    i10 = L(bArr, i10, bVar2);
                    r2 = Long.valueOf(p.d(bVar2.f15015b));
                    break;
                case 14:
                    throw new IllegalStateException("Shouldn't reach here.");
                case 15:
                    i10 = b(bArr, i10, bVar2);
                    r2 = bVar2.f15016c;
                    break;
                case 16:
                    i10 = C(bArr, i10, bVar2);
                    r2 = bVar2.f15016c;
                    break;
                case 17:
                    i10 = n(g2.a().d(dVar.c().getClass()), bArr, i10, i11, (i12 << 3) | 4, bVar2);
                    r2 = bVar2.f15016c;
                    break;
                case 18:
                    i10 = p(g2.a().d(dVar.c().getClass()), bArr, i10, i11, bVar2);
                    r2 = bVar2.f15016c;
                    break;
            }
        }
        if (dVar.e()) {
            o0Var.f(dVar.f14701b, r2);
        } else {
            int i13 = a.f15013a[dVar.b().ordinal()];
            if ((i13 == 17 || i13 == 18) && (r10 = o0Var.r(dVar.f14701b)) != null) {
                r2 = u0.k(r10, r2);
            }
            o0Var.L(dVar.f14701b, r2);
        }
        return i10;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int g(int i9, byte[] bArr, int i10, int i11, Object obj, o1 o1Var, g3<i3, i3> g3Var, b bVar) throws IOException {
        GeneratedMessageLite.d a10 = bVar.f15017d.a(o1Var, i9 >>> 3);
        if (a10 == null) {
            return G(i9, bArr, i10, i11, s1.w(obj), bVar);
        }
        GeneratedMessageLite.b bVar2 = (GeneratedMessageLite.b) obj;
        bVar2.l();
        return f(i9, bArr, i10, i11, bVar2, a10, g3Var, bVar);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int h(byte[] bArr, int i9) {
        return ((bArr[i9 + 3] & UByte.MAX_VALUE) << 24) | (bArr[i9] & UByte.MAX_VALUE) | ((bArr[i9 + 1] & UByte.MAX_VALUE) << 8) | ((bArr[i9 + 2] & UByte.MAX_VALUE) << 16);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int i(int i9, byte[] bArr, int i10, int i11, u0.j<?> jVar, b bVar) {
        t0 t0Var = (t0) jVar;
        t0Var.D0(h(bArr, i10));
        int i12 = i10 + 4;
        while (i12 < i11) {
            int I = I(bArr, i12, bVar);
            if (i9 != bVar.f15014a) {
                break;
            }
            t0Var.D0(h(bArr, I));
            i12 = I + 4;
        }
        return i12;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static long j(byte[] bArr, int i9) {
        return ((bArr[i9 + 7] & 255) << 56) | (bArr[i9] & 255) | ((bArr[i9 + 1] & 255) << 8) | ((bArr[i9 + 2] & 255) << 16) | ((bArr[i9 + 3] & 255) << 24) | ((bArr[i9 + 4] & 255) << 32) | ((bArr[i9 + 5] & 255) << 40) | ((bArr[i9 + 6] & 255) << 48);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int k(int i9, byte[] bArr, int i10, int i11, u0.j<?> jVar, b bVar) {
        c1 c1Var = (c1) jVar;
        c1Var.I0(j(bArr, i10));
        int i12 = i10 + 8;
        while (i12 < i11) {
            int I = I(bArr, i12, bVar);
            if (i9 != bVar.f15014a) {
                break;
            }
            c1Var.I0(j(bArr, I));
            i12 = I + 8;
        }
        return i12;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static float l(byte[] bArr, int i9) {
        return Float.intBitsToFloat(h(bArr, i9));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int m(int i9, byte[] bArr, int i10, int i11, u0.j<?> jVar, b bVar) {
        p0 p0Var = (p0) jVar;
        p0Var.A(l(bArr, i10));
        int i12 = i10 + 4;
        while (i12 < i11) {
            int I = I(bArr, i12, bVar);
            if (i9 != bVar.f15014a) {
                break;
            }
            p0Var.A(l(bArr, I));
            i12 = I + 4;
        }
        return i12;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int n(n2 n2Var, byte[] bArr, int i9, int i10, int i11, b bVar) throws IOException {
        s1 s1Var = (s1) n2Var;
        Object h10 = s1Var.h();
        int d02 = s1Var.d0(h10, bArr, i9, i10, i11, bVar);
        s1Var.e(h10);
        bVar.f15016c = h10;
        return d02;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int o(n2 n2Var, int i9, byte[] bArr, int i10, int i11, u0.j<?> jVar, b bVar) throws IOException {
        int i12 = (i9 & (-8)) | 4;
        int n9 = n(n2Var, bArr, i10, i11, i12, bVar);
        jVar.add(bVar.f15016c);
        while (n9 < i11) {
            int I = I(bArr, n9, bVar);
            if (i9 != bVar.f15014a) {
                break;
            }
            n9 = n(n2Var, bArr, I, i11, i12, bVar);
            jVar.add(bVar.f15016c);
        }
        return n9;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int p(n2 n2Var, byte[] bArr, int i9, int i10, b bVar) throws IOException {
        int i11 = i9 + 1;
        int i12 = bArr[i9];
        if (i12 < 0) {
            i11 = H(i12, bArr, i11, bVar);
            i12 = bVar.f15014a;
        }
        int i13 = i11;
        if (i12 >= 0 && i12 <= i10 - i13) {
            Object h10 = n2Var.h();
            int i14 = i12 + i13;
            n2Var.j(h10, bArr, i13, i14, bVar);
            n2Var.e(h10);
            bVar.f15016c = h10;
            return i14;
        }
        throw InvalidProtocolBufferException.truncatedMessage();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int q(n2<?> n2Var, int i9, byte[] bArr, int i10, int i11, u0.j<?> jVar, b bVar) throws IOException {
        int p10 = p(n2Var, bArr, i10, i11, bVar);
        jVar.add(bVar.f15016c);
        while (p10 < i11) {
            int I = I(bArr, p10, bVar);
            if (i9 != bVar.f15014a) {
                break;
            }
            p10 = p(n2Var, bArr, I, i11, bVar);
            jVar.add(bVar.f15016c);
        }
        return p10;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int r(byte[] bArr, int i9, u0.j<?> jVar, b bVar) throws IOException {
        m mVar = (m) jVar;
        int I = I(bArr, i9, bVar);
        int i10 = bVar.f15014a + I;
        while (I < i10) {
            I = L(bArr, I, bVar);
            mVar.m(bVar.f15015b != 0);
        }
        if (I == i10) {
            return I;
        }
        throw InvalidProtocolBufferException.truncatedMessage();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int s(byte[] bArr, int i9, u0.j<?> jVar, b bVar) throws IOException {
        t tVar = (t) jVar;
        int I = I(bArr, i9, bVar);
        int i10 = bVar.f15014a + I;
        while (I < i10) {
            tVar.N0(d(bArr, I));
            I += 8;
        }
        if (I == i10) {
            return I;
        }
        throw InvalidProtocolBufferException.truncatedMessage();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int t(byte[] bArr, int i9, u0.j<?> jVar, b bVar) throws IOException {
        t0 t0Var = (t0) jVar;
        int I = I(bArr, i9, bVar);
        int i10 = bVar.f15014a + I;
        while (I < i10) {
            t0Var.D0(h(bArr, I));
            I += 4;
        }
        if (I == i10) {
            return I;
        }
        throw InvalidProtocolBufferException.truncatedMessage();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int u(byte[] bArr, int i9, u0.j<?> jVar, b bVar) throws IOException {
        c1 c1Var = (c1) jVar;
        int I = I(bArr, i9, bVar);
        int i10 = bVar.f15014a + I;
        while (I < i10) {
            c1Var.I0(j(bArr, I));
            I += 8;
        }
        if (I == i10) {
            return I;
        }
        throw InvalidProtocolBufferException.truncatedMessage();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int v(byte[] bArr, int i9, u0.j<?> jVar, b bVar) throws IOException {
        p0 p0Var = (p0) jVar;
        int I = I(bArr, i9, bVar);
        int i10 = bVar.f15014a + I;
        while (I < i10) {
            p0Var.A(l(bArr, I));
            I += 4;
        }
        if (I == i10) {
            return I;
        }
        throw InvalidProtocolBufferException.truncatedMessage();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int w(byte[] bArr, int i9, u0.j<?> jVar, b bVar) throws IOException {
        t0 t0Var = (t0) jVar;
        int I = I(bArr, i9, bVar);
        int i10 = bVar.f15014a + I;
        while (I < i10) {
            I = I(bArr, I, bVar);
            t0Var.D0(p.c(bVar.f15014a));
        }
        if (I == i10) {
            return I;
        }
        throw InvalidProtocolBufferException.truncatedMessage();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int x(byte[] bArr, int i9, u0.j<?> jVar, b bVar) throws IOException {
        c1 c1Var = (c1) jVar;
        int I = I(bArr, i9, bVar);
        int i10 = bVar.f15014a + I;
        while (I < i10) {
            I = L(bArr, I, bVar);
            c1Var.I0(p.d(bVar.f15015b));
        }
        if (I == i10) {
            return I;
        }
        throw InvalidProtocolBufferException.truncatedMessage();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int y(byte[] bArr, int i9, u0.j<?> jVar, b bVar) throws IOException {
        t0 t0Var = (t0) jVar;
        int I = I(bArr, i9, bVar);
        int i10 = bVar.f15014a + I;
        while (I < i10) {
            I = I(bArr, I, bVar);
            t0Var.D0(bVar.f15014a);
        }
        if (I == i10) {
            return I;
        }
        throw InvalidProtocolBufferException.truncatedMessage();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int z(byte[] bArr, int i9, u0.j<?> jVar, b bVar) throws IOException {
        c1 c1Var = (c1) jVar;
        int I = I(bArr, i9, bVar);
        int i10 = bVar.f15014a + I;
        while (I < i10) {
            I = L(bArr, I, bVar);
            c1Var.I0(bVar.f15015b);
        }
        if (I == i10) {
            return I;
        }
        throw InvalidProtocolBufferException.truncatedMessage();
    }
}
