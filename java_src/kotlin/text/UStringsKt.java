package kotlin.text;

import kotlin.ExperimentalUnsignedTypes;
import kotlin.KotlinNothingValueException;
import kotlin.Metadata;
import kotlin.SinceKotlin;
import kotlin.UByte;
import kotlin.UInt;
import kotlin.ULong;
import kotlin.UShort;
import kotlin.UnsignedKt;
import kotlin.WasExperimental;
import kotlin.jvm.JvmName;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(d1 = {"\u0000,\n\u0000\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0013\u001a\u001e\u0010\u0000\u001a\u00020\u0001*\u00020\u00022\u0006\u0010\u0003\u001a\u00020\u0004H\u0007ø\u0001\u0000¢\u0006\u0004\b\u0005\u0010\u0006\u001a\u001e\u0010\u0000\u001a\u00020\u0001*\u00020\u00072\u0006\u0010\u0003\u001a\u00020\u0004H\u0007ø\u0001\u0000¢\u0006\u0004\b\b\u0010\t\u001a\u001e\u0010\u0000\u001a\u00020\u0001*\u00020\n2\u0006\u0010\u0003\u001a\u00020\u0004H\u0007ø\u0001\u0000¢\u0006\u0004\b\u000b\u0010\f\u001a\u001e\u0010\u0000\u001a\u00020\u0001*\u00020\r2\u0006\u0010\u0003\u001a\u00020\u0004H\u0007ø\u0001\u0000¢\u0006\u0004\b\u000e\u0010\u000f\u001a\u0014\u0010\u0010\u001a\u00020\u0002*\u00020\u0001H\u0007ø\u0001\u0000¢\u0006\u0002\u0010\u0011\u001a\u001c\u0010\u0010\u001a\u00020\u0002*\u00020\u00012\u0006\u0010\u0003\u001a\u00020\u0004H\u0007ø\u0001\u0000¢\u0006\u0002\u0010\u0012\u001a\u0011\u0010\u0013\u001a\u0004\u0018\u00010\u0002*\u00020\u0001H\u0007ø\u0001\u0000\u001a\u0019\u0010\u0013\u001a\u0004\u0018\u00010\u0002*\u00020\u00012\u0006\u0010\u0003\u001a\u00020\u0004H\u0007ø\u0001\u0000\u001a\u0014\u0010\u0014\u001a\u00020\u0007*\u00020\u0001H\u0007ø\u0001\u0000¢\u0006\u0002\u0010\u0015\u001a\u001c\u0010\u0014\u001a\u00020\u0007*\u00020\u00012\u0006\u0010\u0003\u001a\u00020\u0004H\u0007ø\u0001\u0000¢\u0006\u0002\u0010\u0016\u001a\u0011\u0010\u0017\u001a\u0004\u0018\u00010\u0007*\u00020\u0001H\u0007ø\u0001\u0000\u001a\u0019\u0010\u0017\u001a\u0004\u0018\u00010\u0007*\u00020\u00012\u0006\u0010\u0003\u001a\u00020\u0004H\u0007ø\u0001\u0000\u001a\u0014\u0010\u0018\u001a\u00020\n*\u00020\u0001H\u0007ø\u0001\u0000¢\u0006\u0002\u0010\u0019\u001a\u001c\u0010\u0018\u001a\u00020\n*\u00020\u00012\u0006\u0010\u0003\u001a\u00020\u0004H\u0007ø\u0001\u0000¢\u0006\u0002\u0010\u001a\u001a\u0011\u0010\u001b\u001a\u0004\u0018\u00010\n*\u00020\u0001H\u0007ø\u0001\u0000\u001a\u0019\u0010\u001b\u001a\u0004\u0018\u00010\n*\u00020\u00012\u0006\u0010\u0003\u001a\u00020\u0004H\u0007ø\u0001\u0000\u001a\u0014\u0010\u001c\u001a\u00020\r*\u00020\u0001H\u0007ø\u0001\u0000¢\u0006\u0002\u0010\u001d\u001a\u001c\u0010\u001c\u001a\u00020\r*\u00020\u00012\u0006\u0010\u0003\u001a\u00020\u0004H\u0007ø\u0001\u0000¢\u0006\u0002\u0010\u001e\u001a\u0011\u0010\u001f\u001a\u0004\u0018\u00010\r*\u00020\u0001H\u0007ø\u0001\u0000\u001a\u0019\u0010\u001f\u001a\u0004\u0018\u00010\r*\u00020\u00012\u0006\u0010\u0003\u001a\u00020\u0004H\u0007ø\u0001\u0000\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006 "}, d2 = {"toString", "", "Lkotlin/UByte;", "radix", "", "toString-LxnNnR4", "(BI)Ljava/lang/String;", "Lkotlin/UInt;", "toString-V7xB4Y4", "(II)Ljava/lang/String;", "Lkotlin/ULong;", "toString-JSWoG40", "(JI)Ljava/lang/String;", "Lkotlin/UShort;", "toString-olVBNx4", "(SI)Ljava/lang/String;", "toUByte", "(Ljava/lang/String;)B", "(Ljava/lang/String;I)B", "toUByteOrNull", "toUInt", "(Ljava/lang/String;)I", "(Ljava/lang/String;I)I", "toUIntOrNull", "toULong", "(Ljava/lang/String;)J", "(Ljava/lang/String;I)J", "toULongOrNull", "toUShort", "(Ljava/lang/String;)S", "(Ljava/lang/String;I)S", "toUShortOrNull", "kotlin-stdlib"}, k = 2, mv = {1, 7, 1}, xi = 48)
@JvmName(name = "UStringsKt")
/* loaded from: classes7.dex */
public final class UStringsKt {
    @SinceKotlin(version = "1.5")
    @WasExperimental(markerClass = {ExperimentalUnsignedTypes.class})
    @NotNull
    /* renamed from: toString-JSWoG40  reason: not valid java name */
    public static final String m2971toStringJSWoG40(long j10, int i9) {
        int checkRadix;
        checkRadix = CharsKt__CharJVMKt.checkRadix(i9);
        return UnsignedKt.ulongToString(j10, checkRadix);
    }

    @SinceKotlin(version = "1.5")
    @WasExperimental(markerClass = {ExperimentalUnsignedTypes.class})
    @NotNull
    /* renamed from: toString-LxnNnR4  reason: not valid java name */
    public static final String m2972toStringLxnNnR4(byte b10, int i9) {
        int checkRadix;
        int i10 = b10 & UByte.MAX_VALUE;
        checkRadix = CharsKt__CharJVMKt.checkRadix(i9);
        String num = Integer.toString(i10, checkRadix);
        Intrinsics.checkNotNullExpressionValue(num, "toString(this, checkRadix(radix))");
        return num;
    }

    @SinceKotlin(version = "1.5")
    @WasExperimental(markerClass = {ExperimentalUnsignedTypes.class})
    @NotNull
    /* renamed from: toString-V7xB4Y4  reason: not valid java name */
    public static final String m2973toStringV7xB4Y4(int i9, int i10) {
        int checkRadix;
        checkRadix = CharsKt__CharJVMKt.checkRadix(i10);
        String l10 = Long.toString(i9 & 4294967295L, checkRadix);
        Intrinsics.checkNotNullExpressionValue(l10, "toString(this, checkRadix(radix))");
        return l10;
    }

    @SinceKotlin(version = "1.5")
    @WasExperimental(markerClass = {ExperimentalUnsignedTypes.class})
    @NotNull
    /* renamed from: toString-olVBNx4  reason: not valid java name */
    public static final String m2974toStringolVBNx4(short s10, int i9) {
        int checkRadix;
        int i10 = s10 & UShort.MAX_VALUE;
        checkRadix = CharsKt__CharJVMKt.checkRadix(i9);
        String num = Integer.toString(i10, checkRadix);
        Intrinsics.checkNotNullExpressionValue(num, "toString(this, checkRadix(radix))");
        return num;
    }

    @SinceKotlin(version = "1.5")
    @WasExperimental(markerClass = {ExperimentalUnsignedTypes.class})
    public static final byte toUByte(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, "<this>");
        UByte uByteOrNull = toUByteOrNull(str);
        if (uByteOrNull != null) {
            return uByteOrNull.m1724unboximpl();
        }
        StringsKt__StringNumberConversionsKt.numberFormatError(str);
        throw new KotlinNothingValueException();
    }

    @SinceKotlin(version = "1.5")
    @WasExperimental(markerClass = {ExperimentalUnsignedTypes.class})
    @Nullable
    public static final UByte toUByteOrNull(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, "<this>");
        return toUByteOrNull(str, 10);
    }

    @SinceKotlin(version = "1.5")
    @WasExperimental(markerClass = {ExperimentalUnsignedTypes.class})
    public static final int toUInt(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, "<this>");
        UInt uIntOrNull = toUIntOrNull(str);
        if (uIntOrNull != null) {
            return uIntOrNull.m1802unboximpl();
        }
        StringsKt__StringNumberConversionsKt.numberFormatError(str);
        throw new KotlinNothingValueException();
    }

    @SinceKotlin(version = "1.5")
    @WasExperimental(markerClass = {ExperimentalUnsignedTypes.class})
    @Nullable
    public static final UInt toUIntOrNull(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, "<this>");
        return toUIntOrNull(str, 10);
    }

    @SinceKotlin(version = "1.5")
    @WasExperimental(markerClass = {ExperimentalUnsignedTypes.class})
    public static final long toULong(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, "<this>");
        ULong uLongOrNull = toULongOrNull(str);
        if (uLongOrNull != null) {
            return uLongOrNull.m1880unboximpl();
        }
        StringsKt__StringNumberConversionsKt.numberFormatError(str);
        throw new KotlinNothingValueException();
    }

    @SinceKotlin(version = "1.5")
    @WasExperimental(markerClass = {ExperimentalUnsignedTypes.class})
    @Nullable
    public static final ULong toULongOrNull(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, "<this>");
        return toULongOrNull(str, 10);
    }

    @SinceKotlin(version = "1.5")
    @WasExperimental(markerClass = {ExperimentalUnsignedTypes.class})
    public static final short toUShort(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, "<this>");
        UShort uShortOrNull = toUShortOrNull(str);
        if (uShortOrNull != null) {
            return uShortOrNull.m1984unboximpl();
        }
        StringsKt__StringNumberConversionsKt.numberFormatError(str);
        throw new KotlinNothingValueException();
    }

    @SinceKotlin(version = "1.5")
    @WasExperimental(markerClass = {ExperimentalUnsignedTypes.class})
    @Nullable
    public static final UShort toUShortOrNull(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, "<this>");
        return toUShortOrNull(str, 10);
    }

    @SinceKotlin(version = "1.5")
    @WasExperimental(markerClass = {ExperimentalUnsignedTypes.class})
    public static final byte toUByte(@NotNull String str, int i9) {
        Intrinsics.checkNotNullParameter(str, "<this>");
        UByte uByteOrNull = toUByteOrNull(str, i9);
        if (uByteOrNull != null) {
            return uByteOrNull.m1724unboximpl();
        }
        StringsKt__StringNumberConversionsKt.numberFormatError(str);
        throw new KotlinNothingValueException();
    }

    @SinceKotlin(version = "1.5")
    @WasExperimental(markerClass = {ExperimentalUnsignedTypes.class})
    @Nullable
    public static final UByte toUByteOrNull(@NotNull String str, int i9) {
        Intrinsics.checkNotNullParameter(str, "<this>");
        UInt uIntOrNull = toUIntOrNull(str, i9);
        if (uIntOrNull != null) {
            int m1802unboximpl = uIntOrNull.m1802unboximpl();
            if (UnsignedKt.uintCompare(m1802unboximpl, UInt.m1751constructorimpl(255)) > 0) {
                return null;
            }
            return UByte.m1669boximpl(UByte.m1675constructorimpl((byte) m1802unboximpl));
        }
        return null;
    }

    @SinceKotlin(version = "1.5")
    @WasExperimental(markerClass = {ExperimentalUnsignedTypes.class})
    public static final int toUInt(@NotNull String str, int i9) {
        Intrinsics.checkNotNullParameter(str, "<this>");
        UInt uIntOrNull = toUIntOrNull(str, i9);
        if (uIntOrNull != null) {
            return uIntOrNull.m1802unboximpl();
        }
        StringsKt__StringNumberConversionsKt.numberFormatError(str);
        throw new KotlinNothingValueException();
    }

    @SinceKotlin(version = "1.5")
    @WasExperimental(markerClass = {ExperimentalUnsignedTypes.class})
    @Nullable
    public static final UInt toUIntOrNull(@NotNull String str, int i9) {
        Intrinsics.checkNotNullParameter(str, "<this>");
        CharsKt__CharJVMKt.checkRadix(i9);
        int length = str.length();
        if (length == 0) {
            return null;
        }
        int i10 = 0;
        char charAt = str.charAt(0);
        int i11 = 1;
        if (Intrinsics.compare((int) charAt, 48) >= 0) {
            i11 = 0;
        } else if (length == 1 || charAt != '+') {
            return null;
        }
        int m1751constructorimpl = UInt.m1751constructorimpl(i9);
        int i12 = 119304647;
        while (i11 < length) {
            int digitOf = CharsKt__CharJVMKt.digitOf(str.charAt(i11), i9);
            if (digitOf < 0) {
                return null;
            }
            if (UnsignedKt.uintCompare(i10, i12) > 0) {
                if (i12 == 119304647) {
                    i12 = UnsignedKt.m2004uintDivideJ1ME1BU(-1, m1751constructorimpl);
                    if (UnsignedKt.uintCompare(i10, i12) > 0) {
                    }
                }
                return null;
            }
            int m1751constructorimpl2 = UInt.m1751constructorimpl(i10 * m1751constructorimpl);
            int m1751constructorimpl3 = UInt.m1751constructorimpl(UInt.m1751constructorimpl(digitOf) + m1751constructorimpl2);
            if (UnsignedKt.uintCompare(m1751constructorimpl3, m1751constructorimpl2) < 0) {
                return null;
            }
            i11++;
            i10 = m1751constructorimpl3;
        }
        return UInt.m1745boximpl(i10);
    }

    @SinceKotlin(version = "1.5")
    @WasExperimental(markerClass = {ExperimentalUnsignedTypes.class})
    public static final long toULong(@NotNull String str, int i9) {
        Intrinsics.checkNotNullParameter(str, "<this>");
        ULong uLongOrNull = toULongOrNull(str, i9);
        if (uLongOrNull != null) {
            return uLongOrNull.m1880unboximpl();
        }
        StringsKt__StringNumberConversionsKt.numberFormatError(str);
        throw new KotlinNothingValueException();
    }

    @SinceKotlin(version = "1.5")
    @WasExperimental(markerClass = {ExperimentalUnsignedTypes.class})
    @Nullable
    public static final ULong toULongOrNull(@NotNull String str, int i9) {
        int digitOf;
        Intrinsics.checkNotNullParameter(str, "<this>");
        CharsKt__CharJVMKt.checkRadix(i9);
        int length = str.length();
        if (length == 0) {
            return null;
        }
        long j10 = -1;
        int i10 = 0;
        char charAt = str.charAt(0);
        if (Intrinsics.compare((int) charAt, 48) < 0) {
            if (length == 1 || charAt != '+') {
                return null;
            }
            i10 = 1;
        }
        long m1829constructorimpl = ULong.m1829constructorimpl(i9);
        long j11 = 0;
        long j12 = 512409557603043100L;
        while (i10 < length) {
            if (CharsKt__CharJVMKt.digitOf(str.charAt(i10), i9) < 0) {
                return null;
            }
            if (UnsignedKt.ulongCompare(j11, j12) > 0) {
                if (j12 == 512409557603043100L) {
                    j12 = UnsignedKt.m2006ulongDivideeb3DHEI(j10, m1829constructorimpl);
                    if (UnsignedKt.ulongCompare(j11, j12) > 0) {
                    }
                }
                return null;
            }
            long m1829constructorimpl2 = ULong.m1829constructorimpl(j11 * m1829constructorimpl);
            long m1829constructorimpl3 = ULong.m1829constructorimpl(ULong.m1829constructorimpl(UInt.m1751constructorimpl(digitOf) & 4294967295L) + m1829constructorimpl2);
            if (UnsignedKt.ulongCompare(m1829constructorimpl3, m1829constructorimpl2) < 0) {
                return null;
            }
            i10++;
            j11 = m1829constructorimpl3;
            j10 = -1;
        }
        return ULong.m1823boximpl(j11);
    }

    @SinceKotlin(version = "1.5")
    @WasExperimental(markerClass = {ExperimentalUnsignedTypes.class})
    public static final short toUShort(@NotNull String str, int i9) {
        Intrinsics.checkNotNullParameter(str, "<this>");
        UShort uShortOrNull = toUShortOrNull(str, i9);
        if (uShortOrNull != null) {
            return uShortOrNull.m1984unboximpl();
        }
        StringsKt__StringNumberConversionsKt.numberFormatError(str);
        throw new KotlinNothingValueException();
    }

    @SinceKotlin(version = "1.5")
    @WasExperimental(markerClass = {ExperimentalUnsignedTypes.class})
    @Nullable
    public static final UShort toUShortOrNull(@NotNull String str, int i9) {
        Intrinsics.checkNotNullParameter(str, "<this>");
        UInt uIntOrNull = toUIntOrNull(str, i9);
        if (uIntOrNull != null) {
            int m1802unboximpl = uIntOrNull.m1802unboximpl();
            if (UnsignedKt.uintCompare(m1802unboximpl, UInt.m1751constructorimpl(65535)) > 0) {
                return null;
            }
            return UShort.m1929boximpl(UShort.m1935constructorimpl((short) m1802unboximpl));
        }
        return null;
    }
}
