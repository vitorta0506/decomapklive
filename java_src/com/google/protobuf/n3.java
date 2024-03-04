package com.google.protobuf;

import com.tencent.ugc.datereport.UGCDataReportDef;
import com.vk.api.sdk.exceptions.VKApiCodes;
import java.nio.ByteBuffer;
import okio.Utf8;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes3.dex */
public final class n3 {

    /* renamed from: a  reason: collision with root package name */
    private static final b f15111a;

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes3.dex */
    public static class a {
        /* JADX INFO: Access modifiers changed from: private */
        public static void h(byte b10, byte b11, byte b12, byte b13, char[] cArr, int i9) throws InvalidProtocolBufferException {
            if (!m(b11) && (((b10 << 28) + (b11 + 112)) >> 30) == 0 && !m(b12) && !m(b13)) {
                int r10 = ((b10 & 7) << 18) | (r(b11) << 12) | (r(b12) << 6) | r(b13);
                cArr[i9] = l(r10);
                cArr[i9 + 1] = q(r10);
                return;
            }
            throw InvalidProtocolBufferException.invalidUtf8();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static void i(byte b10, char[] cArr, int i9) {
            cArr[i9] = (char) b10;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static void j(byte b10, byte b11, byte b12, char[] cArr, int i9) throws InvalidProtocolBufferException {
            if (!m(b11) && ((b10 != -32 || b11 >= -96) && ((b10 != -19 || b11 < -96) && !m(b12)))) {
                cArr[i9] = (char) (((b10 & 15) << 12) | (r(b11) << 6) | r(b12));
                return;
            }
            throw InvalidProtocolBufferException.invalidUtf8();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static void k(byte b10, byte b11, char[] cArr, int i9) throws InvalidProtocolBufferException {
            if (b10 >= -62 && !m(b11)) {
                cArr[i9] = (char) (((b10 & 31) << 6) | r(b11));
                return;
            }
            throw InvalidProtocolBufferException.invalidUtf8();
        }

        private static char l(int i9) {
            return (char) ((i9 >>> 10) + Utf8.HIGH_SURROGATE_HEADER);
        }

        private static boolean m(byte b10) {
            return b10 > -65;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static boolean n(byte b10) {
            return b10 >= 0;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static boolean o(byte b10) {
            return b10 < -16;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static boolean p(byte b10) {
            return b10 < -32;
        }

        private static char q(int i9) {
            return (char) ((i9 & UGCDataReportDef.DR_DAU_EVENT_ID_EDIT_FILTER) + Utf8.LOG_SURROGATE_HEADER);
        }

        private static int r(byte b10) {
            return b10 & Utf8.REPLACEMENT_BYTE;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public static abstract class b {
        b() {
        }

        private static int j(ByteBuffer byteBuffer, int i9, int i10) {
            int l10 = i9 + n3.l(byteBuffer, i9, i10);
            while (l10 < i10) {
                int i11 = l10 + 1;
                byte b10 = byteBuffer.get(l10);
                if (b10 < 0) {
                    if (b10 < -32) {
                        if (i11 >= i10) {
                            return b10;
                        }
                        if (b10 < -62 || byteBuffer.get(i11) > -65) {
                            return -1;
                        }
                        i11++;
                    } else if (b10 >= -16) {
                        if (i11 >= i10 - 2) {
                            return n3.p(byteBuffer, b10, i11, i10 - i11);
                        }
                        int i12 = i11 + 1;
                        byte b11 = byteBuffer.get(i11);
                        if (b11 <= -65 && (((b10 << 28) + (b11 + 112)) >> 30) == 0) {
                            int i13 = i12 + 1;
                            if (byteBuffer.get(i12) <= -65) {
                                i11 = i13 + 1;
                                if (byteBuffer.get(i13) > -65) {
                                }
                            }
                        }
                        return -1;
                    } else if (i11 >= i10 - 1) {
                        return n3.p(byteBuffer, b10, i11, i10 - i11);
                    } else {
                        int i14 = i11 + 1;
                        byte b12 = byteBuffer.get(i11);
                        if (b12 > -65 || ((b10 == -32 && b12 < -96) || ((b10 == -19 && b12 >= -96) || byteBuffer.get(i14) > -65))) {
                            return -1;
                        }
                        l10 = i14 + 1;
                    }
                }
                l10 = i11;
            }
            return 0;
        }

        final String a(ByteBuffer byteBuffer, int i9, int i10) throws InvalidProtocolBufferException {
            if (byteBuffer.hasArray()) {
                return b(byteBuffer.array(), byteBuffer.arrayOffset() + i9, i10);
            } else if (byteBuffer.isDirect()) {
                return d(byteBuffer, i9, i10);
            } else {
                return c(byteBuffer, i9, i10);
            }
        }

        abstract String b(byte[] bArr, int i9, int i10) throws InvalidProtocolBufferException;

        final String c(ByteBuffer byteBuffer, int i9, int i10) throws InvalidProtocolBufferException {
            if ((i9 | i10 | ((byteBuffer.limit() - i9) - i10)) >= 0) {
                int i11 = i9 + i10;
                char[] cArr = new char[i10];
                int i12 = 0;
                while (i9 < i11) {
                    byte b10 = byteBuffer.get(i9);
                    if (!a.n(b10)) {
                        break;
                    }
                    i9++;
                    a.i(b10, cArr, i12);
                    i12++;
                }
                int i13 = i12;
                while (i9 < i11) {
                    int i14 = i9 + 1;
                    byte b11 = byteBuffer.get(i9);
                    if (a.n(b11)) {
                        int i15 = i13 + 1;
                        a.i(b11, cArr, i13);
                        while (i14 < i11) {
                            byte b12 = byteBuffer.get(i14);
                            if (!a.n(b12)) {
                                break;
                            }
                            i14++;
                            a.i(b12, cArr, i15);
                            i15++;
                        }
                        i9 = i14;
                        i13 = i15;
                    } else if (a.p(b11)) {
                        if (i14 < i11) {
                            a.k(b11, byteBuffer.get(i14), cArr, i13);
                            i9 = i14 + 1;
                            i13++;
                        } else {
                            throw InvalidProtocolBufferException.invalidUtf8();
                        }
                    } else if (a.o(b11)) {
                        if (i14 < i11 - 1) {
                            int i16 = i14 + 1;
                            a.j(b11, byteBuffer.get(i14), byteBuffer.get(i16), cArr, i13);
                            i9 = i16 + 1;
                            i13++;
                        } else {
                            throw InvalidProtocolBufferException.invalidUtf8();
                        }
                    } else if (i14 < i11 - 2) {
                        int i17 = i14 + 1;
                        byte b13 = byteBuffer.get(i14);
                        int i18 = i17 + 1;
                        a.h(b11, b13, byteBuffer.get(i17), byteBuffer.get(i18), cArr, i13);
                        i9 = i18 + 1;
                        i13 = i13 + 1 + 1;
                    } else {
                        throw InvalidProtocolBufferException.invalidUtf8();
                    }
                }
                return new String(cArr, 0, i13);
            }
            throw new ArrayIndexOutOfBoundsException(String.format("buffer limit=%d, index=%d, limit=%d", Integer.valueOf(byteBuffer.limit()), Integer.valueOf(i9), Integer.valueOf(i10)));
        }

        abstract String d(ByteBuffer byteBuffer, int i9, int i10) throws InvalidProtocolBufferException;

        abstract int e(CharSequence charSequence, byte[] bArr, int i9, int i10);

        final boolean f(ByteBuffer byteBuffer, int i9, int i10) {
            return h(0, byteBuffer, i9, i10) == 0;
        }

        final boolean g(byte[] bArr, int i9, int i10) {
            return i(0, bArr, i9, i10) == 0;
        }

        final int h(int i9, ByteBuffer byteBuffer, int i10, int i11) {
            if (byteBuffer.hasArray()) {
                int arrayOffset = byteBuffer.arrayOffset();
                return i(i9, byteBuffer.array(), i10 + arrayOffset, arrayOffset + i11);
            } else if (byteBuffer.isDirect()) {
                return l(i9, byteBuffer, i10, i11);
            } else {
                return k(i9, byteBuffer, i10, i11);
            }
        }

        abstract int i(int i9, byte[] bArr, int i10, int i11);

        /* JADX WARN: Code restructure failed: missing block: B:10:0x0017, code lost:
            if (r8.get(r9) > (-65)) goto L12;
         */
        /* JADX WARN: Code restructure failed: missing block: B:31:0x004c, code lost:
            if (r8.get(r9) > (-65)) goto L31;
         */
        /* JADX WARN: Code restructure failed: missing block: B:52:0x008b, code lost:
            if (r8.get(r9) > (-65)) goto L51;
         */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        final int k(int r7, java.nio.ByteBuffer r8, int r9, int r10) {
            /*
                r6 = this;
                if (r7 == 0) goto L8e
                if (r9 < r10) goto L5
                return r7
            L5:
                byte r0 = (byte) r7
                r1 = -32
                r2 = -1
                r3 = -65
                if (r0 >= r1) goto L1e
                r7 = -62
                if (r0 < r7) goto L1d
                int r7 = r9 + 1
                byte r9 = r8.get(r9)
                if (r9 <= r3) goto L1a
                goto L1d
            L1a:
                r9 = r7
                goto L8e
            L1d:
                return r2
            L1e:
                r4 = -16
                if (r0 >= r4) goto L4f
                int r7 = r7 >> 8
                int r7 = ~r7
                byte r7 = (byte) r7
                if (r7 != 0) goto L38
                int r7 = r9 + 1
                byte r9 = r8.get(r9)
                if (r7 < r10) goto L35
                int r7 = com.google.protobuf.n3.a(r0, r9)
                return r7
            L35:
                r5 = r9
                r9 = r7
                r7 = r5
            L38:
                if (r7 > r3) goto L4e
                r4 = -96
                if (r0 != r1) goto L40
                if (r7 < r4) goto L4e
            L40:
                r1 = -19
                if (r0 != r1) goto L46
                if (r7 >= r4) goto L4e
            L46:
                int r7 = r9 + 1
                byte r9 = r8.get(r9)
                if (r9 <= r3) goto L1a
            L4e:
                return r2
            L4f:
                int r1 = r7 >> 8
                int r1 = ~r1
                byte r1 = (byte) r1
                r4 = 0
                if (r1 != 0) goto L65
                int r7 = r9 + 1
                byte r1 = r8.get(r9)
                if (r7 < r10) goto L63
                int r7 = com.google.protobuf.n3.a(r0, r1)
                return r7
            L63:
                r9 = r7
                goto L68
            L65:
                int r7 = r7 >> 16
                byte r4 = (byte) r7
            L68:
                if (r4 != 0) goto L78
                int r7 = r9 + 1
                byte r4 = r8.get(r9)
                if (r7 < r10) goto L77
                int r7 = com.google.protobuf.n3.b(r0, r1, r4)
                return r7
            L77:
                r9 = r7
            L78:
                if (r1 > r3) goto L8d
                int r7 = r0 << 28
                int r1 = r1 + 112
                int r7 = r7 + r1
                int r7 = r7 >> 30
                if (r7 != 0) goto L8d
                if (r4 > r3) goto L8d
                int r7 = r9 + 1
                byte r9 = r8.get(r9)
                if (r9 <= r3) goto L1a
            L8d:
                return r2
            L8e:
                int r7 = j(r8, r9, r10)
                return r7
            */
            throw new UnsupportedOperationException("Method not decompiled: com.google.protobuf.n3.b.k(int, java.nio.ByteBuffer, int, int):int");
        }

        abstract int l(int i9, ByteBuffer byteBuffer, int i10, int i11);
    }

    /* loaded from: classes3.dex */
    static final class c extends b {
        c() {
        }

        private static int m(byte[] bArr, int i9, int i10) {
            while (i9 < i10 && bArr[i9] >= 0) {
                i9++;
            }
            if (i9 >= i10) {
                return 0;
            }
            return n(bArr, i9, i10);
        }

        private static int n(byte[] bArr, int i9, int i10) {
            while (i9 < i10) {
                int i11 = i9 + 1;
                byte b10 = bArr[i9];
                if (b10 < 0) {
                    if (b10 < -32) {
                        if (i11 >= i10) {
                            return b10;
                        }
                        if (b10 >= -62) {
                            i9 = i11 + 1;
                            if (bArr[i11] > -65) {
                            }
                        }
                        return -1;
                    } else if (b10 >= -16) {
                        if (i11 >= i10 - 2) {
                            return n3.q(bArr, i11, i10);
                        }
                        int i12 = i11 + 1;
                        byte b11 = bArr[i11];
                        if (b11 <= -65 && (((b10 << 28) + (b11 + 112)) >> 30) == 0) {
                            int i13 = i12 + 1;
                            if (bArr[i12] <= -65) {
                                i11 = i13 + 1;
                                if (bArr[i13] > -65) {
                                }
                            }
                        }
                        return -1;
                    } else if (i11 >= i10 - 1) {
                        return n3.q(bArr, i11, i10);
                    } else {
                        int i14 = i11 + 1;
                        byte b12 = bArr[i11];
                        if (b12 <= -65 && ((b10 != -32 || b12 >= -96) && (b10 != -19 || b12 < -96))) {
                            i9 = i14 + 1;
                            if (bArr[i14] > -65) {
                            }
                        }
                        return -1;
                    }
                }
                i9 = i11;
            }
            return 0;
        }

        @Override // com.google.protobuf.n3.b
        String b(byte[] bArr, int i9, int i10) throws InvalidProtocolBufferException {
            if ((i9 | i10 | ((bArr.length - i9) - i10)) >= 0) {
                int i11 = i9 + i10;
                char[] cArr = new char[i10];
                int i12 = 0;
                while (i9 < i11) {
                    byte b10 = bArr[i9];
                    if (!a.n(b10)) {
                        break;
                    }
                    i9++;
                    a.i(b10, cArr, i12);
                    i12++;
                }
                int i13 = i12;
                while (i9 < i11) {
                    int i14 = i9 + 1;
                    byte b11 = bArr[i9];
                    if (a.n(b11)) {
                        int i15 = i13 + 1;
                        a.i(b11, cArr, i13);
                        while (i14 < i11) {
                            byte b12 = bArr[i14];
                            if (!a.n(b12)) {
                                break;
                            }
                            i14++;
                            a.i(b12, cArr, i15);
                            i15++;
                        }
                        i9 = i14;
                        i13 = i15;
                    } else if (a.p(b11)) {
                        if (i14 < i11) {
                            a.k(b11, bArr[i14], cArr, i13);
                            i9 = i14 + 1;
                            i13++;
                        } else {
                            throw InvalidProtocolBufferException.invalidUtf8();
                        }
                    } else if (a.o(b11)) {
                        if (i14 < i11 - 1) {
                            int i16 = i14 + 1;
                            a.j(b11, bArr[i14], bArr[i16], cArr, i13);
                            i9 = i16 + 1;
                            i13++;
                        } else {
                            throw InvalidProtocolBufferException.invalidUtf8();
                        }
                    } else if (i14 < i11 - 2) {
                        int i17 = i14 + 1;
                        byte b13 = bArr[i14];
                        int i18 = i17 + 1;
                        a.h(b11, b13, bArr[i17], bArr[i18], cArr, i13);
                        i9 = i18 + 1;
                        i13 = i13 + 1 + 1;
                    } else {
                        throw InvalidProtocolBufferException.invalidUtf8();
                    }
                }
                return new String(cArr, 0, i13);
            }
            throw new ArrayIndexOutOfBoundsException(String.format("buffer length=%d, index=%d, size=%d", Integer.valueOf(bArr.length), Integer.valueOf(i9), Integer.valueOf(i10)));
        }

        @Override // com.google.protobuf.n3.b
        String d(ByteBuffer byteBuffer, int i9, int i10) throws InvalidProtocolBufferException {
            return c(byteBuffer, i9, i10);
        }

        /* JADX WARN: Code restructure failed: missing block: B:12:0x001d, code lost:
            return r10 + r0;
         */
        @Override // com.google.protobuf.n3.b
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        int e(java.lang.CharSequence r8, byte[] r9, int r10, int r11) {
            /*
                Method dump skipped, instructions count: 254
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: com.google.protobuf.n3.c.e(java.lang.CharSequence, byte[], int, int):int");
        }

        /* JADX WARN: Code restructure failed: missing block: B:10:0x0015, code lost:
            if (r8[r9] > (-65)) goto L12;
         */
        /* JADX WARN: Code restructure failed: missing block: B:31:0x0046, code lost:
            if (r8[r9] > (-65)) goto L31;
         */
        /* JADX WARN: Code restructure failed: missing block: B:52:0x007f, code lost:
            if (r8[r9] > (-65)) goto L51;
         */
        @Override // com.google.protobuf.n3.b
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        int i(int r7, byte[] r8, int r9, int r10) {
            /*
                r6 = this;
                if (r7 == 0) goto L82
                if (r9 < r10) goto L5
                return r7
            L5:
                byte r0 = (byte) r7
                r1 = -32
                r2 = -1
                r3 = -65
                if (r0 >= r1) goto L1c
                r7 = -62
                if (r0 < r7) goto L1b
                int r7 = r9 + 1
                r9 = r8[r9]
                if (r9 <= r3) goto L18
                goto L1b
            L18:
                r9 = r7
                goto L82
            L1b:
                return r2
            L1c:
                r4 = -16
                if (r0 >= r4) goto L49
                int r7 = r7 >> 8
                int r7 = ~r7
                byte r7 = (byte) r7
                if (r7 != 0) goto L34
                int r7 = r9 + 1
                r9 = r8[r9]
                if (r7 < r10) goto L31
                int r7 = com.google.protobuf.n3.a(r0, r9)
                return r7
            L31:
                r5 = r9
                r9 = r7
                r7 = r5
            L34:
                if (r7 > r3) goto L48
                r4 = -96
                if (r0 != r1) goto L3c
                if (r7 < r4) goto L48
            L3c:
                r1 = -19
                if (r0 != r1) goto L42
                if (r7 >= r4) goto L48
            L42:
                int r7 = r9 + 1
                r9 = r8[r9]
                if (r9 <= r3) goto L18
            L48:
                return r2
            L49:
                int r1 = r7 >> 8
                int r1 = ~r1
                byte r1 = (byte) r1
                r4 = 0
                if (r1 != 0) goto L5d
                int r7 = r9 + 1
                r1 = r8[r9]
                if (r7 < r10) goto L5b
                int r7 = com.google.protobuf.n3.a(r0, r1)
                return r7
            L5b:
                r9 = r7
                goto L60
            L5d:
                int r7 = r7 >> 16
                byte r4 = (byte) r7
            L60:
                if (r4 != 0) goto L6e
                int r7 = r9 + 1
                r4 = r8[r9]
                if (r7 < r10) goto L6d
                int r7 = com.google.protobuf.n3.b(r0, r1, r4)
                return r7
            L6d:
                r9 = r7
            L6e:
                if (r1 > r3) goto L81
                int r7 = r0 << 28
                int r1 = r1 + 112
                int r7 = r7 + r1
                int r7 = r7 >> 30
                if (r7 != 0) goto L81
                if (r4 > r3) goto L81
                int r7 = r9 + 1
                r9 = r8[r9]
                if (r9 <= r3) goto L18
            L81:
                return r2
            L82:
                int r7 = m(r8, r9, r10)
                return r7
            */
            throw new UnsupportedOperationException("Method not decompiled: com.google.protobuf.n3.c.i(int, byte[], int, int):int");
        }

        @Override // com.google.protobuf.n3.b
        int l(int i9, ByteBuffer byteBuffer, int i10, int i11) {
            return k(i9, byteBuffer, i10, i11);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public static class d extends IllegalArgumentException {
        d(int i9, int i10) {
            super("Unpaired surrogate at index " + i9 + " of " + i10);
        }
    }

    /* loaded from: classes3.dex */
    static final class e extends b {
        e() {
        }

        static boolean m() {
            return m3.J() && m3.K();
        }

        /* JADX WARN: Code restructure failed: missing block: B:22:0x0039, code lost:
            return -1;
         */
        /* JADX WARN: Code restructure failed: missing block: B:52:0x008e, code lost:
            return -1;
         */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        private static int n(long r8, int r10) {
            /*
                int r0 = p(r8, r10)
                long r1 = (long) r0
                long r8 = r8 + r1
                int r10 = r10 - r0
            L7:
                r0 = 0
                r1 = 0
            L9:
                r2 = 1
                if (r10 <= 0) goto L1a
                long r4 = r8 + r2
                byte r1 = com.google.protobuf.m3.w(r8)
                if (r1 < 0) goto L19
                int r10 = r10 + (-1)
                r8 = r4
                goto L9
            L19:
                r8 = r4
            L1a:
                if (r10 != 0) goto L1d
                return r0
            L1d:
                int r10 = r10 + (-1)
                r0 = -32
                r4 = -65
                r5 = -1
                if (r1 >= r0) goto L3a
                if (r10 != 0) goto L29
                return r1
            L29:
                int r10 = r10 + (-1)
                r0 = -62
                if (r1 < r0) goto L39
                long r2 = r2 + r8
                byte r8 = com.google.protobuf.m3.w(r8)
                if (r8 <= r4) goto L37
                goto L39
            L37:
                r8 = r2
                goto L7
            L39:
                return r5
            L3a:
                r6 = -16
                if (r1 >= r6) goto L64
                r6 = 2
                if (r10 >= r6) goto L46
                int r8 = r(r8, r1, r10)
                return r8
            L46:
                int r10 = r10 + (-2)
                long r6 = r8 + r2
                byte r8 = com.google.protobuf.m3.w(r8)
                if (r8 > r4) goto L63
                r9 = -96
                if (r1 != r0) goto L56
                if (r8 < r9) goto L63
            L56:
                r0 = -19
                if (r1 != r0) goto L5c
                if (r8 >= r9) goto L63
            L5c:
                long r2 = r2 + r6
                byte r8 = com.google.protobuf.m3.w(r6)
                if (r8 <= r4) goto L37
            L63:
                return r5
            L64:
                r0 = 3
                if (r10 >= r0) goto L6c
                int r8 = r(r8, r1, r10)
                return r8
            L6c:
                int r10 = r10 + (-3)
                long r6 = r8 + r2
                byte r8 = com.google.protobuf.m3.w(r8)
                if (r8 > r4) goto L8e
                int r9 = r1 << 28
                int r8 = r8 + 112
                int r9 = r9 + r8
                int r8 = r9 >> 30
                if (r8 != 0) goto L8e
                long r8 = r6 + r2
                byte r0 = com.google.protobuf.m3.w(r6)
                if (r0 > r4) goto L8e
                long r2 = r2 + r8
                byte r8 = com.google.protobuf.m3.w(r8)
                if (r8 <= r4) goto L37
            L8e:
                return r5
            */
            throw new UnsupportedOperationException("Method not decompiled: com.google.protobuf.n3.e.n(long, int):int");
        }

        /* JADX WARN: Code restructure failed: missing block: B:22:0x0039, code lost:
            return -1;
         */
        /* JADX WARN: Code restructure failed: missing block: B:52:0x008e, code lost:
            return -1;
         */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        private static int o(byte[] r8, long r9, int r11) {
            /*
                int r0 = q(r8, r9, r11)
                int r11 = r11 - r0
                long r0 = (long) r0
                long r9 = r9 + r0
            L7:
                r0 = 0
                r1 = 0
            L9:
                r2 = 1
                if (r11 <= 0) goto L1a
                long r4 = r9 + r2
                byte r1 = com.google.protobuf.m3.x(r8, r9)
                if (r1 < 0) goto L19
                int r11 = r11 + (-1)
                r9 = r4
                goto L9
            L19:
                r9 = r4
            L1a:
                if (r11 != 0) goto L1d
                return r0
            L1d:
                int r11 = r11 + (-1)
                r0 = -32
                r4 = -65
                r5 = -1
                if (r1 >= r0) goto L3a
                if (r11 != 0) goto L29
                return r1
            L29:
                int r11 = r11 + (-1)
                r0 = -62
                if (r1 < r0) goto L39
                long r2 = r2 + r9
                byte r9 = com.google.protobuf.m3.x(r8, r9)
                if (r9 <= r4) goto L37
                goto L39
            L37:
                r9 = r2
                goto L7
            L39:
                return r5
            L3a:
                r6 = -16
                if (r1 >= r6) goto L64
                r6 = 2
                if (r11 >= r6) goto L46
                int r8 = s(r8, r1, r9, r11)
                return r8
            L46:
                int r11 = r11 + (-2)
                long r6 = r9 + r2
                byte r9 = com.google.protobuf.m3.x(r8, r9)
                if (r9 > r4) goto L63
                r10 = -96
                if (r1 != r0) goto L56
                if (r9 < r10) goto L63
            L56:
                r0 = -19
                if (r1 != r0) goto L5c
                if (r9 >= r10) goto L63
            L5c:
                long r2 = r2 + r6
                byte r9 = com.google.protobuf.m3.x(r8, r6)
                if (r9 <= r4) goto L37
            L63:
                return r5
            L64:
                r0 = 3
                if (r11 >= r0) goto L6c
                int r8 = s(r8, r1, r9, r11)
                return r8
            L6c:
                int r11 = r11 + (-3)
                long r6 = r9 + r2
                byte r9 = com.google.protobuf.m3.x(r8, r9)
                if (r9 > r4) goto L8e
                int r10 = r1 << 28
                int r9 = r9 + 112
                int r10 = r10 + r9
                int r9 = r10 >> 30
                if (r9 != 0) goto L8e
                long r9 = r6 + r2
                byte r0 = com.google.protobuf.m3.x(r8, r6)
                if (r0 > r4) goto L8e
                long r2 = r2 + r9
                byte r9 = com.google.protobuf.m3.x(r8, r9)
                if (r9 <= r4) goto L37
            L8e:
                return r5
            */
            throw new UnsupportedOperationException("Method not decompiled: com.google.protobuf.n3.e.o(byte[], long, int):int");
        }

        private static int p(long j10, int i9) {
            if (i9 < 16) {
                return 0;
            }
            int i10 = (int) ((-j10) & 7);
            int i11 = i10;
            while (i11 > 0) {
                long j11 = 1 + j10;
                if (m3.w(j10) < 0) {
                    return i10 - i11;
                }
                i11--;
                j10 = j11;
            }
            int i12 = i9 - i10;
            while (i12 >= 8 && (m3.D(j10) & (-9187201950435737472L)) == 0) {
                j10 += 8;
                i12 -= 8;
            }
            return i9 - i12;
        }

        private static int q(byte[] bArr, long j10, int i9) {
            int i10 = 0;
            if (i9 < 16) {
                return 0;
            }
            while (true) {
                int i11 = i10 + 8;
                if (i11 > i9 || (m3.E(bArr, m3.f15091h + j10) & (-9187201950435737472L)) != 0) {
                    break;
                }
                j10 += 8;
                i10 = i11;
            }
            while (i10 < i9) {
                long j11 = 1 + j10;
                if (m3.x(bArr, j10) < 0) {
                    return i10;
                }
                i10++;
                j10 = j11;
            }
            return i9;
        }

        private static int r(long j10, int i9, int i10) {
            if (i10 != 0) {
                if (i10 != 1) {
                    if (i10 == 2) {
                        return n3.o(i9, m3.w(j10), m3.w(j10 + 1));
                    }
                    throw new AssertionError();
                }
                return n3.n(i9, m3.w(j10));
            }
            return n3.m(i9);
        }

        private static int s(byte[] bArr, int i9, long j10, int i10) {
            if (i10 != 0) {
                if (i10 != 1) {
                    if (i10 == 2) {
                        return n3.o(i9, m3.x(bArr, j10), m3.x(bArr, j10 + 1));
                    }
                    throw new AssertionError();
                }
                return n3.n(i9, m3.x(bArr, j10));
            }
            return n3.m(i9);
        }

        @Override // com.google.protobuf.n3.b
        String b(byte[] bArr, int i9, int i10) throws InvalidProtocolBufferException {
            if ((i9 | i10 | ((bArr.length - i9) - i10)) >= 0) {
                int q10 = q(bArr, i9, i10) + i9;
                int i11 = i9 + i10;
                while (q10 < i11 && m3.x(bArr, q10) >= 0) {
                    q10++;
                }
                if (q10 == i11) {
                    return new String(bArr, i9, i10, u0.f15283a);
                }
                char[] cArr = new char[i10];
                int i12 = 0;
                while (i9 < q10) {
                    a.i(m3.x(bArr, i9), cArr, i12);
                    i9++;
                    i12++;
                }
                int i13 = i12;
                while (q10 < i11) {
                    int i14 = q10 + 1;
                    byte x10 = m3.x(bArr, q10);
                    if (a.n(x10)) {
                        int i15 = i13 + 1;
                        a.i(x10, cArr, i13);
                        while (i14 < i11) {
                            byte x11 = m3.x(bArr, i14);
                            if (!a.n(x11)) {
                                break;
                            }
                            i14++;
                            a.i(x11, cArr, i15);
                            i15++;
                        }
                        i13 = i15;
                        q10 = i14;
                    } else if (a.p(x10)) {
                        if (i14 < i11) {
                            q10 = i14 + 1;
                            a.k(x10, m3.x(bArr, i14), cArr, i13);
                            i13++;
                        } else {
                            throw InvalidProtocolBufferException.invalidUtf8();
                        }
                    } else if (a.o(x10)) {
                        if (i14 < i11 - 1) {
                            int i16 = i14 + 1;
                            a.j(x10, m3.x(bArr, i14), m3.x(bArr, i16), cArr, i13);
                            q10 = i16 + 1;
                            i13++;
                        } else {
                            throw InvalidProtocolBufferException.invalidUtf8();
                        }
                    } else if (i14 < i11 - 2) {
                        int i17 = i14 + 1;
                        int i18 = i17 + 1;
                        q10 = i18 + 1;
                        a.h(x10, m3.x(bArr, i14), m3.x(bArr, i17), m3.x(bArr, i18), cArr, i13);
                        i13 = i13 + 1 + 1;
                    } else {
                        throw InvalidProtocolBufferException.invalidUtf8();
                    }
                }
                return new String(cArr, 0, i13);
            }
            throw new ArrayIndexOutOfBoundsException(String.format("buffer length=%d, index=%d, size=%d", Integer.valueOf(bArr.length), Integer.valueOf(i9), Integer.valueOf(i10)));
        }

        @Override // com.google.protobuf.n3.b
        String d(ByteBuffer byteBuffer, int i9, int i10) throws InvalidProtocolBufferException {
            if ((i9 | i10 | ((byteBuffer.limit() - i9) - i10)) >= 0) {
                long k10 = m3.k(byteBuffer) + i9;
                long j10 = i10 + k10;
                char[] cArr = new char[i10];
                int i11 = 0;
                while (k10 < j10) {
                    byte w6 = m3.w(k10);
                    if (!a.n(w6)) {
                        break;
                    }
                    k10++;
                    a.i(w6, cArr, i11);
                    i11++;
                }
                while (true) {
                    int i12 = i11;
                    while (k10 < j10) {
                        long j11 = k10 + 1;
                        byte w8 = m3.w(k10);
                        if (a.n(w8)) {
                            int i13 = i12 + 1;
                            a.i(w8, cArr, i12);
                            while (j11 < j10) {
                                byte w10 = m3.w(j11);
                                if (!a.n(w10)) {
                                    break;
                                }
                                j11++;
                                a.i(w10, cArr, i13);
                                i13++;
                            }
                            i12 = i13;
                            k10 = j11;
                        } else if (a.p(w8)) {
                            if (j11 < j10) {
                                k10 = j11 + 1;
                                a.k(w8, m3.w(j11), cArr, i12);
                                i12++;
                            } else {
                                throw InvalidProtocolBufferException.invalidUtf8();
                            }
                        } else if (a.o(w8)) {
                            if (j11 < j10 - 1) {
                                long j12 = j11 + 1;
                                a.j(w8, m3.w(j11), m3.w(j12), cArr, i12);
                                i12++;
                                k10 = j12 + 1;
                            } else {
                                throw InvalidProtocolBufferException.invalidUtf8();
                            }
                        } else if (j11 < j10 - 2) {
                            long j13 = j11 + 1;
                            byte w11 = m3.w(j11);
                            long j14 = j13 + 1;
                            byte w12 = m3.w(j13);
                            k10 = j14 + 1;
                            a.h(w8, w11, w12, m3.w(j14), cArr, i12);
                            i11 = i12 + 1 + 1;
                        } else {
                            throw InvalidProtocolBufferException.invalidUtf8();
                        }
                    }
                    return new String(cArr, 0, i12);
                }
            }
            throw new ArrayIndexOutOfBoundsException(String.format("buffer limit=%d, index=%d, limit=%d", Integer.valueOf(byteBuffer.limit()), Integer.valueOf(i9), Integer.valueOf(i10)));
        }

        @Override // com.google.protobuf.n3.b
        int e(CharSequence charSequence, byte[] bArr, int i9, int i10) {
            char c10;
            long j10;
            long j11;
            long j12;
            int i11;
            char charAt;
            long j13 = i9;
            long j14 = i10 + j13;
            int length = charSequence.length();
            if (length > i10 || bArr.length - i10 < i9) {
                throw new ArrayIndexOutOfBoundsException("Failed writing " + charSequence.charAt(length - 1) + " at index " + (i9 + i10));
            }
            int i12 = 0;
            while (true) {
                c10 = 128;
                j10 = 1;
                if (i12 >= length || (charAt = charSequence.charAt(i12)) >= 128) {
                    break;
                }
                m3.Q(bArr, j13, (byte) charAt);
                i12++;
                j13 = 1 + j13;
            }
            if (i12 == length) {
                return (int) j13;
            }
            while (i12 < length) {
                char charAt2 = charSequence.charAt(i12);
                if (charAt2 >= c10 || j13 >= j14) {
                    if (charAt2 < 2048 && j13 <= j14 - 2) {
                        long j15 = j13 + j10;
                        m3.Q(bArr, j13, (byte) ((charAt2 >>> 6) | VKApiCodes.CODE_CALL_REQUIRES_AUTH));
                        m3.Q(bArr, j15, (byte) ((charAt2 & '?') | 128));
                        j11 = j15 + j10;
                        j12 = j10;
                    } else if ((charAt2 >= 55296 && 57343 >= charAt2) || j13 > j14 - 3) {
                        if (j13 <= j14 - 4) {
                            int i13 = i12 + 1;
                            if (i13 != length) {
                                char charAt3 = charSequence.charAt(i13);
                                if (Character.isSurrogatePair(charAt2, charAt3)) {
                                    int codePoint = Character.toCodePoint(charAt2, charAt3);
                                    long j16 = j13 + 1;
                                    m3.Q(bArr, j13, (byte) ((codePoint >>> 18) | 240));
                                    long j17 = j16 + 1;
                                    m3.Q(bArr, j16, (byte) (((codePoint >>> 12) & 63) | 128));
                                    long j18 = j17 + 1;
                                    m3.Q(bArr, j17, (byte) (((codePoint >>> 6) & 63) | 128));
                                    j12 = 1;
                                    j11 = j18 + 1;
                                    m3.Q(bArr, j18, (byte) ((codePoint & 63) | 128));
                                    i12 = i13;
                                } else {
                                    i12 = i13;
                                }
                            }
                            throw new d(i12 - 1, length);
                        } else if (55296 <= charAt2 && charAt2 <= 57343 && ((i11 = i12 + 1) == length || !Character.isSurrogatePair(charAt2, charSequence.charAt(i11)))) {
                            throw new d(i12, length);
                        } else {
                            throw new ArrayIndexOutOfBoundsException("Failed writing " + charAt2 + " at index " + j13);
                        }
                    } else {
                        long j19 = j13 + j10;
                        m3.Q(bArr, j13, (byte) ((charAt2 >>> '\f') | 480));
                        long j20 = j19 + j10;
                        m3.Q(bArr, j19, (byte) (((charAt2 >>> 6) & 63) | 128));
                        m3.Q(bArr, j20, (byte) ((charAt2 & '?') | 128));
                        j11 = j20 + 1;
                        j12 = 1;
                    }
                    i12++;
                    c10 = 128;
                    long j21 = j12;
                    j13 = j11;
                    j10 = j21;
                } else {
                    long j22 = j13 + j10;
                    m3.Q(bArr, j13, (byte) charAt2);
                    j12 = j10;
                    j11 = j22;
                }
                i12++;
                c10 = 128;
                long j212 = j12;
                j13 = j11;
                j10 = j212;
            }
            return (int) j13;
        }

        /* JADX WARN: Code restructure failed: missing block: B:35:0x0059, code lost:
            if (com.google.protobuf.m3.x(r13, r2) > (-65)) goto L36;
         */
        /* JADX WARN: Code restructure failed: missing block: B:58:0x009e, code lost:
            if (com.google.protobuf.m3.x(r13, r2) > (-65)) goto L56;
         */
        @Override // com.google.protobuf.n3.b
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        int i(int r12, byte[] r13, int r14, int r15) {
            /*
                Method dump skipped, instructions count: 204
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: com.google.protobuf.n3.e.i(int, byte[], int, int):int");
        }

        /* JADX WARN: Code restructure failed: missing block: B:35:0x0063, code lost:
            if (com.google.protobuf.m3.w(r2) > (-65)) goto L36;
         */
        /* JADX WARN: Code restructure failed: missing block: B:58:0x00a8, code lost:
            if (com.google.protobuf.m3.w(r2) > (-65)) goto L56;
         */
        @Override // com.google.protobuf.n3.b
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        int l(int r11, java.nio.ByteBuffer r12, int r13, int r14) {
            /*
                Method dump skipped, instructions count: 217
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: com.google.protobuf.n3.e.l(int, java.nio.ByteBuffer, int, int):int");
        }
    }

    static {
        f15111a = (!e.m() || com.google.protobuf.e.c()) ? new c() : new e();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static String g(ByteBuffer byteBuffer, int i9, int i10) throws InvalidProtocolBufferException {
        return f15111a.a(byteBuffer, i9, i10);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static String h(byte[] bArr, int i9, int i10) throws InvalidProtocolBufferException {
        return f15111a.b(bArr, i9, i10);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int i(CharSequence charSequence, byte[] bArr, int i9, int i10) {
        return f15111a.e(charSequence, bArr, i9, i10);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int j(CharSequence charSequence) {
        int length = charSequence.length();
        int i9 = 0;
        while (i9 < length && charSequence.charAt(i9) < 128) {
            i9++;
        }
        int i10 = length;
        while (true) {
            if (i9 < length) {
                char charAt = charSequence.charAt(i9);
                if (charAt >= 2048) {
                    i10 += k(charSequence, i9);
                    break;
                }
                i10 += (127 - charAt) >>> 31;
                i9++;
            } else {
                break;
            }
        }
        if (i10 >= length) {
            return i10;
        }
        throw new IllegalArgumentException("UTF-8 length does not fit in int: " + (i10 + 4294967296L));
    }

    private static int k(CharSequence charSequence, int i9) {
        int length = charSequence.length();
        int i10 = 0;
        while (i9 < length) {
            char charAt = charSequence.charAt(i9);
            if (charAt < 2048) {
                i10 += (127 - charAt) >>> 31;
            } else {
                i10 += 2;
                if (55296 <= charAt && charAt <= 57343) {
                    if (Character.codePointAt(charSequence, i9) < 65536) {
                        throw new d(i9, length);
                    }
                    i9++;
                }
            }
            i9++;
        }
        return i10;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static int l(ByteBuffer byteBuffer, int i9, int i10) {
        int i11 = i10 - 7;
        int i12 = i9;
        while (i12 < i11 && (byteBuffer.getLong(i12) & (-9187201950435737472L)) == 0) {
            i12 += 8;
        }
        return i12 - i9;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static int m(int i9) {
        if (i9 > -12) {
            return -1;
        }
        return i9;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static int n(int i9, int i10) {
        if (i9 > -12 || i10 > -65) {
            return -1;
        }
        return i9 ^ (i10 << 8);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static int o(int i9, int i10, int i11) {
        if (i9 > -12 || i10 > -65 || i11 > -65) {
            return -1;
        }
        return (i9 ^ (i10 << 8)) ^ (i11 << 16);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static int p(ByteBuffer byteBuffer, int i9, int i10, int i11) {
        if (i11 != 0) {
            if (i11 != 1) {
                if (i11 == 2) {
                    return o(i9, byteBuffer.get(i10), byteBuffer.get(i10 + 1));
                }
                throw new AssertionError();
            }
            return n(i9, byteBuffer.get(i10));
        }
        return m(i9);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static int q(byte[] bArr, int i9, int i10) {
        byte b10 = bArr[i9 - 1];
        int i11 = i10 - i9;
        if (i11 != 0) {
            if (i11 != 1) {
                if (i11 == 2) {
                    return o(b10, bArr[i9], bArr[i9 + 1]);
                }
                throw new AssertionError();
            }
            return n(b10, bArr[i9]);
        }
        return m(b10);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static boolean r(ByteBuffer byteBuffer) {
        return f15111a.f(byteBuffer, byteBuffer.position(), byteBuffer.remaining());
    }

    public static boolean s(byte[] bArr) {
        return f15111a.g(bArr, 0, bArr.length);
    }

    public static boolean t(byte[] bArr, int i9, int i10) {
        return f15111a.g(bArr, i9, i10);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int u(int i9, ByteBuffer byteBuffer, int i10, int i11) {
        return f15111a.h(i9, byteBuffer, i10, i11);
    }

    public static int v(int i9, byte[] bArr, int i10, int i11) {
        return f15111a.i(i9, bArr, i10, i11);
    }
}
