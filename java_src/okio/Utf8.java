package okio;

import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.JvmName;
import kotlin.jvm.JvmOverloads;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.ByteCompanionObject;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
@Metadata(d1 = {"\u0000D\n\u0000\n\u0002\u0010\b\n\u0002\b\u0005\n\u0002\u0010\u0005\n\u0000\n\u0002\u0010\f\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0004\n\u0002\u0010\u0012\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0004\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\t\n\u0002\b\u0002\u001a\u0011\u0010\u000b\u001a\u00020\f2\u0006\u0010\r\u001a\u00020\u0001H\u0080\b\u001a\u0011\u0010\u000e\u001a\u00020\f2\u0006\u0010\u000f\u001a\u00020\u0007H\u0080\b\u001a4\u0010\u0010\u001a\u00020\u0001*\u00020\u00112\u0006\u0010\u0012\u001a\u00020\u00012\u0006\u0010\u0013\u001a\u00020\u00012\u0012\u0010\u0014\u001a\u000e\u0012\u0004\u0012\u00020\u0001\u0012\u0004\u0012\u00020\u00160\u0015H\u0080\bø\u0001\u0000\u001a4\u0010\u0017\u001a\u00020\u0001*\u00020\u00112\u0006\u0010\u0012\u001a\u00020\u00012\u0006\u0010\u0013\u001a\u00020\u00012\u0012\u0010\u0014\u001a\u000e\u0012\u0004\u0012\u00020\u0001\u0012\u0004\u0012\u00020\u00160\u0015H\u0080\bø\u0001\u0000\u001a4\u0010\u0018\u001a\u00020\u0001*\u00020\u00112\u0006\u0010\u0012\u001a\u00020\u00012\u0006\u0010\u0013\u001a\u00020\u00012\u0012\u0010\u0014\u001a\u000e\u0012\u0004\u0012\u00020\u0001\u0012\u0004\u0012\u00020\u00160\u0015H\u0080\bø\u0001\u0000\u001a4\u0010\u0019\u001a\u00020\u0016*\u00020\u00112\u0006\u0010\u0012\u001a\u00020\u00012\u0006\u0010\u0013\u001a\u00020\u00012\u0012\u0010\u0014\u001a\u000e\u0012\u0004\u0012\u00020\t\u0012\u0004\u0012\u00020\u00160\u0015H\u0080\bø\u0001\u0000\u001a4\u0010\u001a\u001a\u00020\u0016*\u00020\u001b2\u0006\u0010\u0012\u001a\u00020\u00012\u0006\u0010\u0013\u001a\u00020\u00012\u0012\u0010\u0014\u001a\u000e\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\u00160\u0015H\u0080\bø\u0001\u0000\u001a4\u0010\u001c\u001a\u00020\u0016*\u00020\u00112\u0006\u0010\u0012\u001a\u00020\u00012\u0006\u0010\u0013\u001a\u00020\u00012\u0012\u0010\u0014\u001a\u000e\u0012\u0004\u0012\u00020\u0001\u0012\u0004\u0012\u00020\u00160\u0015H\u0080\bø\u0001\u0000\u001a%\u0010\u001d\u001a\u00020\u001e*\u00020\u001b2\b\b\u0002\u0010\u0012\u001a\u00020\u00012\b\b\u0002\u0010\u0013\u001a\u00020\u0001H\u0007¢\u0006\u0002\b\u001f\"\u000e\u0010\u0000\u001a\u00020\u0001X\u0080T¢\u0006\u0002\n\u0000\"\u000e\u0010\u0002\u001a\u00020\u0001X\u0080T¢\u0006\u0002\n\u0000\"\u000e\u0010\u0003\u001a\u00020\u0001X\u0080T¢\u0006\u0002\n\u0000\"\u000e\u0010\u0004\u001a\u00020\u0001X\u0080T¢\u0006\u0002\n\u0000\"\u000e\u0010\u0005\u001a\u00020\u0001X\u0080T¢\u0006\u0002\n\u0000\"\u000e\u0010\u0006\u001a\u00020\u0007X\u0080T¢\u0006\u0002\n\u0000\"\u000e\u0010\b\u001a\u00020\tX\u0080T¢\u0006\u0002\n\u0000\"\u000e\u0010\n\u001a\u00020\u0001X\u0080T¢\u0006\u0002\n\u0000\u0082\u0002\u0007\n\u0005\b\u009920\u0001¨\u0006 "}, d2 = {"HIGH_SURROGATE_HEADER", "", "LOG_SURROGATE_HEADER", "MASK_2BYTES", "MASK_3BYTES", "MASK_4BYTES", "REPLACEMENT_BYTE", "", "REPLACEMENT_CHARACTER", "", "REPLACEMENT_CODE_POINT", "isIsoControl", "", "codePoint", "isUtf8Continuation", "byte", "process2Utf8Bytes", "", "beginIndex", "endIndex", "yield", "Lkotlin/Function1;", "", "process3Utf8Bytes", "process4Utf8Bytes", "processUtf16Chars", "processUtf8Bytes", "", "processUtf8CodePoints", "utf8Size", "", "size", "okio"}, k = 2, mv = {1, 5, 1}, xi = 48)
@JvmName(name = "Utf8")
/* loaded from: classes7.dex */
public final class Utf8 {
    public static final int HIGH_SURROGATE_HEADER = 55232;
    public static final int LOG_SURROGATE_HEADER = 56320;
    public static final int MASK_2BYTES = 3968;
    public static final int MASK_3BYTES = -123008;
    public static final int MASK_4BYTES = 3678080;
    public static final byte REPLACEMENT_BYTE = 63;
    public static final char REPLACEMENT_CHARACTER = 65533;
    public static final int REPLACEMENT_CODE_POINT = 65533;

    public static final boolean isIsoControl(int i9) {
        if (i9 >= 0 && i9 <= 31) {
            return true;
        }
        return 127 <= i9 && i9 <= 159;
    }

    public static final boolean isUtf8Continuation(byte b10) {
        return (b10 & 192) == 128;
    }

    public static final int process2Utf8Bytes(@NotNull byte[] bArr, int i9, int i10, @NotNull Function1<? super Integer, Unit> yield) {
        Intrinsics.checkNotNullParameter(bArr, "<this>");
        Intrinsics.checkNotNullParameter(yield, "yield");
        int i11 = i9 + 1;
        Integer valueOf = Integer.valueOf((int) REPLACEMENT_CODE_POINT);
        if (i10 <= i11) {
            yield.invoke(valueOf);
            return 1;
        }
        byte b10 = bArr[i9];
        byte b11 = bArr[i11];
        if (!((b11 & 192) == 128)) {
            yield.invoke(valueOf);
            return 1;
        }
        int i12 = (b11 ^ ByteCompanionObject.MIN_VALUE) ^ (b10 << 6);
        if (i12 < 128) {
            yield.invoke(valueOf);
            return 2;
        }
        yield.invoke(Integer.valueOf(i12));
        return 2;
    }

    public static final int process3Utf8Bytes(@NotNull byte[] bArr, int i9, int i10, @NotNull Function1<? super Integer, Unit> yield) {
        Intrinsics.checkNotNullParameter(bArr, "<this>");
        Intrinsics.checkNotNullParameter(yield, "yield");
        int i11 = i9 + 2;
        Integer valueOf = Integer.valueOf((int) REPLACEMENT_CODE_POINT);
        if (i10 <= i11) {
            yield.invoke(valueOf);
            int i12 = i9 + 1;
            if (i10 > i12) {
                if ((bArr[i12] & 192) == 128) {
                    return 2;
                }
            }
            return 1;
        }
        byte b10 = bArr[i9];
        byte b11 = bArr[i9 + 1];
        if (!((b11 & 192) == 128)) {
            yield.invoke(valueOf);
            return 1;
        }
        byte b12 = bArr[i11];
        if (!((b12 & 192) == 128)) {
            yield.invoke(valueOf);
            return 2;
        }
        int i13 = ((b12 ^ ByteCompanionObject.MIN_VALUE) ^ (b11 << 6)) ^ (b10 << 12);
        if (i13 < 2048) {
            yield.invoke(valueOf);
            return 3;
        }
        if (55296 <= i13 && i13 <= 57343) {
            r3 = true;
        }
        if (r3) {
            yield.invoke(valueOf);
            return 3;
        }
        yield.invoke(Integer.valueOf(i13));
        return 3;
    }

    public static final int process4Utf8Bytes(@NotNull byte[] bArr, int i9, int i10, @NotNull Function1<? super Integer, Unit> yield) {
        Intrinsics.checkNotNullParameter(bArr, "<this>");
        Intrinsics.checkNotNullParameter(yield, "yield");
        int i11 = i9 + 3;
        Integer valueOf = Integer.valueOf((int) REPLACEMENT_CODE_POINT);
        if (i10 <= i11) {
            yield.invoke(valueOf);
            int i12 = i9 + 1;
            if (i10 > i12) {
                if ((bArr[i12] & 192) == 128) {
                    int i13 = i9 + 2;
                    if (i10 > i13) {
                        if ((bArr[i13] & 192) == 128) {
                            return 3;
                        }
                    }
                    return 2;
                }
            }
            return 1;
        }
        byte b10 = bArr[i9];
        byte b11 = bArr[i9 + 1];
        if (!((b11 & 192) == 128)) {
            yield.invoke(valueOf);
            return 1;
        }
        byte b12 = bArr[i9 + 2];
        if (!((b12 & 192) == 128)) {
            yield.invoke(valueOf);
            return 2;
        }
        byte b13 = bArr[i11];
        if (!((b13 & 192) == 128)) {
            yield.invoke(valueOf);
            return 3;
        }
        int i14 = (((b13 ^ ByteCompanionObject.MIN_VALUE) ^ (b12 << 6)) ^ (b11 << 12)) ^ (b10 << 18);
        if (i14 > 1114111) {
            yield.invoke(valueOf);
            return 4;
        }
        if (55296 <= i14 && i14 <= 57343) {
            r4 = true;
        }
        if (r4) {
            yield.invoke(valueOf);
            return 4;
        } else if (i14 < 65536) {
            yield.invoke(valueOf);
            return 4;
        } else {
            yield.invoke(Integer.valueOf(i14));
            return 4;
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:38:0x0098, code lost:
        if (((r16[r4] & 192) == 128) == false) goto L21;
     */
    /* JADX WARN: Code restructure failed: missing block: B:80:0x011d, code lost:
        if (((r16[r4] & 192) == 128) == false) goto L30;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final void processUtf16Chars(@org.jetbrains.annotations.NotNull byte[] r16, int r17, int r18, @org.jetbrains.annotations.NotNull kotlin.jvm.functions.Function1<? super java.lang.Character, kotlin.Unit> r19) {
        /*
            Method dump skipped, instructions count: 447
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: okio.Utf8.processUtf16Chars(byte[], int, int, kotlin.jvm.functions.Function1):void");
    }

    public static final void processUtf8Bytes(@NotNull String str, int i9, int i10, @NotNull Function1<? super Byte, Unit> yield) {
        int i11;
        Intrinsics.checkNotNullParameter(str, "<this>");
        Intrinsics.checkNotNullParameter(yield, "yield");
        while (i9 < i10) {
            char charAt = str.charAt(i9);
            if (Intrinsics.compare((int) charAt, 128) < 0) {
                yield.invoke(Byte.valueOf((byte) charAt));
                i9++;
                while (i9 < i10 && Intrinsics.compare((int) str.charAt(i9), 128) < 0) {
                    yield.invoke(Byte.valueOf((byte) str.charAt(i9)));
                    i9++;
                }
            } else {
                if (Intrinsics.compare((int) charAt, 2048) < 0) {
                    yield.invoke(Byte.valueOf((byte) ((charAt >> 6) | 192)));
                    yield.invoke(Byte.valueOf((byte) ((charAt & '?') | 128)));
                } else {
                    boolean z10 = false;
                    if (!(55296 <= charAt && charAt <= 57343)) {
                        yield.invoke(Byte.valueOf((byte) ((charAt >> '\f') | 224)));
                        yield.invoke(Byte.valueOf((byte) (((charAt >> 6) & 63) | 128)));
                        yield.invoke(Byte.valueOf((byte) ((charAt & '?') | 128)));
                    } else {
                        if (Intrinsics.compare((int) charAt, 56319) <= 0 && i10 > (i11 = i9 + 1)) {
                            char charAt2 = str.charAt(i11);
                            if (56320 <= charAt2 && charAt2 <= 57343) {
                                z10 = true;
                            }
                            if (z10) {
                                int charAt3 = ((charAt << '\n') + str.charAt(i11)) - 56613888;
                                yield.invoke(Byte.valueOf((byte) ((charAt3 >> 18) | 240)));
                                yield.invoke(Byte.valueOf((byte) (((charAt3 >> 12) & 63) | 128)));
                                yield.invoke(Byte.valueOf((byte) (((charAt3 >> 6) & 63) | 128)));
                                yield.invoke(Byte.valueOf((byte) ((charAt3 & 63) | 128)));
                                i9 += 2;
                            }
                        }
                        yield.invoke(Byte.valueOf((byte) REPLACEMENT_BYTE));
                    }
                }
                i9++;
            }
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:38:0x0096, code lost:
        if (((r16[r4] & 192) == 128) == false) goto L21;
     */
    /* JADX WARN: Code restructure failed: missing block: B:80:0x011b, code lost:
        if (((r16[r4] & 192) == 128) == false) goto L30;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final void processUtf8CodePoints(@org.jetbrains.annotations.NotNull byte[] r16, int r17, int r18, @org.jetbrains.annotations.NotNull kotlin.jvm.functions.Function1<? super java.lang.Integer, kotlin.Unit> r19) {
        /*
            Method dump skipped, instructions count: 419
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: okio.Utf8.processUtf8CodePoints(byte[], int, int, kotlin.jvm.functions.Function1):void");
    }

    @JvmOverloads
    @JvmName(name = "size")
    public static final long size(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, "<this>");
        return size$default(str, 0, 0, 3, null);
    }

    @JvmOverloads
    @JvmName(name = "size")
    public static final long size(@NotNull String str, int i9) {
        Intrinsics.checkNotNullParameter(str, "<this>");
        return size$default(str, i9, 0, 2, null);
    }

    @JvmOverloads
    @JvmName(name = "size")
    public static final long size(@NotNull String str, int i9, int i10) {
        int i11;
        Intrinsics.checkNotNullParameter(str, "<this>");
        if (i9 >= 0) {
            if (i10 >= i9) {
                if (!(i10 <= str.length())) {
                    throw new IllegalArgumentException(("endIndex > string.length: " + i10 + " > " + str.length()).toString());
                }
                long j10 = 0;
                while (i9 < i10) {
                    char charAt = str.charAt(i9);
                    if (charAt < 128) {
                        j10++;
                    } else {
                        if (charAt < 2048) {
                            i11 = 2;
                        } else if (charAt < 55296 || charAt > 57343) {
                            i11 = 3;
                        } else {
                            int i12 = i9 + 1;
                            char charAt2 = i12 < i10 ? str.charAt(i12) : (char) 0;
                            if (charAt > 56319 || charAt2 < 56320 || charAt2 > 57343) {
                                j10++;
                                i9 = i12;
                            } else {
                                j10 += 4;
                                i9 += 2;
                            }
                        }
                        j10 += i11;
                    }
                    i9++;
                }
                return j10;
            }
            throw new IllegalArgumentException(("endIndex < beginIndex: " + i10 + " < " + i9).toString());
        }
        throw new IllegalArgumentException(Intrinsics.stringPlus("beginIndex < 0: ", Integer.valueOf(i9)).toString());
    }

    public static /* synthetic */ long size$default(String str, int i9, int i10, int i11, Object obj) {
        if ((i11 & 1) != 0) {
            i9 = 0;
        }
        if ((i11 & 2) != 0) {
            i10 = str.length();
        }
        return size(str, i9, i10);
    }
}
