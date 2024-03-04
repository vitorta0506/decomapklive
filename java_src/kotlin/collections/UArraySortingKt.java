package kotlin.collections;

import com.facebook.appevents.internal.ViewHierarchyConstants;
import kotlin.ExperimentalUnsignedTypes;
import kotlin.Metadata;
import kotlin.UByte;
import kotlin.UByteArray;
import kotlin.UIntArray;
import kotlin.ULongArray;
import kotlin.UShort;
import kotlin.UShortArray;
import kotlin.UnsignedKt;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
@Metadata(d1 = {"\u00000\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0002\b\u0010\u001a*\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00012\u0006\u0010\u0005\u001a\u00020\u0001H\u0003ø\u0001\u0000¢\u0006\u0004\b\u0006\u0010\u0007\u001a*\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\b2\u0006\u0010\u0004\u001a\u00020\u00012\u0006\u0010\u0005\u001a\u00020\u0001H\u0003ø\u0001\u0000¢\u0006\u0004\b\t\u0010\n\u001a*\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u000b2\u0006\u0010\u0004\u001a\u00020\u00012\u0006\u0010\u0005\u001a\u00020\u0001H\u0003ø\u0001\u0000¢\u0006\u0004\b\f\u0010\r\u001a*\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u000e2\u0006\u0010\u0004\u001a\u00020\u00012\u0006\u0010\u0005\u001a\u00020\u0001H\u0003ø\u0001\u0000¢\u0006\u0004\b\u000f\u0010\u0010\u001a*\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00012\u0006\u0010\u0005\u001a\u00020\u0001H\u0003ø\u0001\u0000¢\u0006\u0004\b\u0013\u0010\u0014\u001a*\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0002\u001a\u00020\b2\u0006\u0010\u0004\u001a\u00020\u00012\u0006\u0010\u0005\u001a\u00020\u0001H\u0003ø\u0001\u0000¢\u0006\u0004\b\u0015\u0010\u0016\u001a*\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0002\u001a\u00020\u000b2\u0006\u0010\u0004\u001a\u00020\u00012\u0006\u0010\u0005\u001a\u00020\u0001H\u0003ø\u0001\u0000¢\u0006\u0004\b\u0017\u0010\u0018\u001a*\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0002\u001a\u00020\u000e2\u0006\u0010\u0004\u001a\u00020\u00012\u0006\u0010\u0005\u001a\u00020\u0001H\u0003ø\u0001\u0000¢\u0006\u0004\b\u0019\u0010\u001a\u001a*\u0010\u001b\u001a\u00020\u00122\u0006\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u001c\u001a\u00020\u00012\u0006\u0010\u001d\u001a\u00020\u0001H\u0001ø\u0001\u0000¢\u0006\u0004\b\u001e\u0010\u0014\u001a*\u0010\u001b\u001a\u00020\u00122\u0006\u0010\u0002\u001a\u00020\b2\u0006\u0010\u001c\u001a\u00020\u00012\u0006\u0010\u001d\u001a\u00020\u0001H\u0001ø\u0001\u0000¢\u0006\u0004\b\u001f\u0010\u0016\u001a*\u0010\u001b\u001a\u00020\u00122\u0006\u0010\u0002\u001a\u00020\u000b2\u0006\u0010\u001c\u001a\u00020\u00012\u0006\u0010\u001d\u001a\u00020\u0001H\u0001ø\u0001\u0000¢\u0006\u0004\b \u0010\u0018\u001a*\u0010\u001b\u001a\u00020\u00122\u0006\u0010\u0002\u001a\u00020\u000e2\u0006\u0010\u001c\u001a\u00020\u00012\u0006\u0010\u001d\u001a\u00020\u0001H\u0001ø\u0001\u0000¢\u0006\u0004\b!\u0010\u001a\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006\""}, d2 = {"partition", "", "array", "Lkotlin/UByteArray;", ViewHierarchyConstants.DIMENSION_LEFT_KEY, "right", "partition-4UcCI2c", "([BII)I", "Lkotlin/UIntArray;", "partition-oBK06Vg", "([III)I", "Lkotlin/ULongArray;", "partition--nroSd4", "([JII)I", "Lkotlin/UShortArray;", "partition-Aa5vz7o", "([SII)I", "quickSort", "", "quickSort-4UcCI2c", "([BII)V", "quickSort-oBK06Vg", "([III)V", "quickSort--nroSd4", "([JII)V", "quickSort-Aa5vz7o", "([SII)V", "sortArray", "fromIndex", "toIndex", "sortArray-4UcCI2c", "sortArray-oBK06Vg", "sortArray--nroSd4", "sortArray-Aa5vz7o", "kotlin-stdlib"}, k = 2, mv = {1, 7, 1}, xi = 48)
/* loaded from: classes7.dex */
public final class UArraySortingKt {
    @ExperimentalUnsignedTypes
    /* renamed from: partition--nroSd4  reason: not valid java name */
    private static final int m2108partitionnroSd4(long[] jArr, int i9, int i10) {
        long m1888getsVKNKU = ULongArray.m1888getsVKNKU(jArr, (i9 + i10) / 2);
        while (i9 <= i10) {
            while (UnsignedKt.ulongCompare(ULongArray.m1888getsVKNKU(jArr, i9), m1888getsVKNKU) < 0) {
                i9++;
            }
            while (UnsignedKt.ulongCompare(ULongArray.m1888getsVKNKU(jArr, i10), m1888getsVKNKU) > 0) {
                i10--;
            }
            if (i9 <= i10) {
                long m1888getsVKNKU2 = ULongArray.m1888getsVKNKU(jArr, i9);
                ULongArray.m1893setk8EXiF4(jArr, i9, ULongArray.m1888getsVKNKU(jArr, i10));
                ULongArray.m1893setk8EXiF4(jArr, i10, m1888getsVKNKU2);
                i9++;
                i10--;
            }
        }
        return i9;
    }

    @ExperimentalUnsignedTypes
    /* renamed from: partition-4UcCI2c  reason: not valid java name */
    private static final int m2109partition4UcCI2c(byte[] bArr, int i9, int i10) {
        int i11;
        byte m1732getw2LRezQ = UByteArray.m1732getw2LRezQ(bArr, (i9 + i10) / 2);
        while (i9 <= i10) {
            while (true) {
                int m1732getw2LRezQ2 = UByteArray.m1732getw2LRezQ(bArr, i9) & UByte.MAX_VALUE;
                i11 = m1732getw2LRezQ & UByte.MAX_VALUE;
                if (Intrinsics.compare(m1732getw2LRezQ2, i11) >= 0) {
                    break;
                }
                i9++;
            }
            while (Intrinsics.compare(UByteArray.m1732getw2LRezQ(bArr, i10) & UByte.MAX_VALUE, i11) > 0) {
                i10--;
            }
            if (i9 <= i10) {
                byte m1732getw2LRezQ3 = UByteArray.m1732getw2LRezQ(bArr, i9);
                UByteArray.m1737setVurrAj0(bArr, i9, UByteArray.m1732getw2LRezQ(bArr, i10));
                UByteArray.m1737setVurrAj0(bArr, i10, m1732getw2LRezQ3);
                i9++;
                i10--;
            }
        }
        return i9;
    }

    @ExperimentalUnsignedTypes
    /* renamed from: partition-Aa5vz7o  reason: not valid java name */
    private static final int m2110partitionAa5vz7o(short[] sArr, int i9, int i10) {
        int i11;
        short m1992getMh2AYeg = UShortArray.m1992getMh2AYeg(sArr, (i9 + i10) / 2);
        while (i9 <= i10) {
            while (true) {
                int m1992getMh2AYeg2 = UShortArray.m1992getMh2AYeg(sArr, i9) & UShort.MAX_VALUE;
                i11 = m1992getMh2AYeg & UShort.MAX_VALUE;
                if (Intrinsics.compare(m1992getMh2AYeg2, i11) >= 0) {
                    break;
                }
                i9++;
            }
            while (Intrinsics.compare(UShortArray.m1992getMh2AYeg(sArr, i10) & UShort.MAX_VALUE, i11) > 0) {
                i10--;
            }
            if (i9 <= i10) {
                short m1992getMh2AYeg3 = UShortArray.m1992getMh2AYeg(sArr, i9);
                UShortArray.m1997set01HTLdE(sArr, i9, UShortArray.m1992getMh2AYeg(sArr, i10));
                UShortArray.m1997set01HTLdE(sArr, i10, m1992getMh2AYeg3);
                i9++;
                i10--;
            }
        }
        return i9;
    }

    @ExperimentalUnsignedTypes
    /* renamed from: partition-oBK06Vg  reason: not valid java name */
    private static final int m2111partitionoBK06Vg(int[] iArr, int i9, int i10) {
        int m1810getpVg5ArA = UIntArray.m1810getpVg5ArA(iArr, (i9 + i10) / 2);
        while (i9 <= i10) {
            while (UnsignedKt.uintCompare(UIntArray.m1810getpVg5ArA(iArr, i9), m1810getpVg5ArA) < 0) {
                i9++;
            }
            while (UnsignedKt.uintCompare(UIntArray.m1810getpVg5ArA(iArr, i10), m1810getpVg5ArA) > 0) {
                i10--;
            }
            if (i9 <= i10) {
                int m1810getpVg5ArA2 = UIntArray.m1810getpVg5ArA(iArr, i9);
                UIntArray.m1815setVXSXFK8(iArr, i9, UIntArray.m1810getpVg5ArA(iArr, i10));
                UIntArray.m1815setVXSXFK8(iArr, i10, m1810getpVg5ArA2);
                i9++;
                i10--;
            }
        }
        return i9;
    }

    @ExperimentalUnsignedTypes
    /* renamed from: quickSort--nroSd4  reason: not valid java name */
    private static final void m2112quickSortnroSd4(long[] jArr, int i9, int i10) {
        int m2108partitionnroSd4 = m2108partitionnroSd4(jArr, i9, i10);
        int i11 = m2108partitionnroSd4 - 1;
        if (i9 < i11) {
            m2112quickSortnroSd4(jArr, i9, i11);
        }
        if (m2108partitionnroSd4 < i10) {
            m2112quickSortnroSd4(jArr, m2108partitionnroSd4, i10);
        }
    }

    @ExperimentalUnsignedTypes
    /* renamed from: quickSort-4UcCI2c  reason: not valid java name */
    private static final void m2113quickSort4UcCI2c(byte[] bArr, int i9, int i10) {
        int m2109partition4UcCI2c = m2109partition4UcCI2c(bArr, i9, i10);
        int i11 = m2109partition4UcCI2c - 1;
        if (i9 < i11) {
            m2113quickSort4UcCI2c(bArr, i9, i11);
        }
        if (m2109partition4UcCI2c < i10) {
            m2113quickSort4UcCI2c(bArr, m2109partition4UcCI2c, i10);
        }
    }

    @ExperimentalUnsignedTypes
    /* renamed from: quickSort-Aa5vz7o  reason: not valid java name */
    private static final void m2114quickSortAa5vz7o(short[] sArr, int i9, int i10) {
        int m2110partitionAa5vz7o = m2110partitionAa5vz7o(sArr, i9, i10);
        int i11 = m2110partitionAa5vz7o - 1;
        if (i9 < i11) {
            m2114quickSortAa5vz7o(sArr, i9, i11);
        }
        if (m2110partitionAa5vz7o < i10) {
            m2114quickSortAa5vz7o(sArr, m2110partitionAa5vz7o, i10);
        }
    }

    @ExperimentalUnsignedTypes
    /* renamed from: quickSort-oBK06Vg  reason: not valid java name */
    private static final void m2115quickSortoBK06Vg(int[] iArr, int i9, int i10) {
        int m2111partitionoBK06Vg = m2111partitionoBK06Vg(iArr, i9, i10);
        int i11 = m2111partitionoBK06Vg - 1;
        if (i9 < i11) {
            m2115quickSortoBK06Vg(iArr, i9, i11);
        }
        if (m2111partitionoBK06Vg < i10) {
            m2115quickSortoBK06Vg(iArr, m2111partitionoBK06Vg, i10);
        }
    }

    @ExperimentalUnsignedTypes
    /* renamed from: sortArray--nroSd4  reason: not valid java name */
    public static final void m2116sortArraynroSd4(@NotNull long[] array, int i9, int i10) {
        Intrinsics.checkNotNullParameter(array, "array");
        m2112quickSortnroSd4(array, i9, i10 - 1);
    }

    @ExperimentalUnsignedTypes
    /* renamed from: sortArray-4UcCI2c  reason: not valid java name */
    public static final void m2117sortArray4UcCI2c(@NotNull byte[] array, int i9, int i10) {
        Intrinsics.checkNotNullParameter(array, "array");
        m2113quickSort4UcCI2c(array, i9, i10 - 1);
    }

    @ExperimentalUnsignedTypes
    /* renamed from: sortArray-Aa5vz7o  reason: not valid java name */
    public static final void m2118sortArrayAa5vz7o(@NotNull short[] array, int i9, int i10) {
        Intrinsics.checkNotNullParameter(array, "array");
        m2114quickSortAa5vz7o(array, i9, i10 - 1);
    }

    @ExperimentalUnsignedTypes
    /* renamed from: sortArray-oBK06Vg  reason: not valid java name */
    public static final void m2119sortArrayoBK06Vg(@NotNull int[] array, int i9, int i10) {
        Intrinsics.checkNotNullParameter(array, "array");
        m2115quickSortoBK06Vg(array, i9, i10 - 1);
    }
}
