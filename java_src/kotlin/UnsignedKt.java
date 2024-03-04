package kotlin;

import com.meizu.cloud.pushsdk.notification.model.NotifyType;
import kotlin.jvm.JvmName;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.CharsKt__CharJVMKt;
import org.jetbrains.annotations.NotNull;
@Metadata(d1 = {"\u00000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0006\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\t\n\u0002\u0010\t\n\u0002\b\u0007\n\u0002\u0010\u000e\n\u0002\b\u0002\u001a\u0018\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\u0001ø\u0001\u0000¢\u0006\u0002\u0010\u0004\u001a\u0018\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0002\u001a\u00020\u0003H\u0001ø\u0001\u0000¢\u0006\u0002\u0010\u0007\u001a\u0018\u0010\b\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\t2\u0006\u0010\u000b\u001a\u00020\tH\u0001\u001a\"\u0010\f\u001a\u00020\u00012\u0006\u0010\n\u001a\u00020\u00012\u0006\u0010\u000b\u001a\u00020\u0001H\u0001ø\u0001\u0000¢\u0006\u0004\b\r\u0010\u000e\u001a\"\u0010\u000f\u001a\u00020\u00012\u0006\u0010\n\u001a\u00020\u00012\u0006\u0010\u000b\u001a\u00020\u0001H\u0001ø\u0001\u0000¢\u0006\u0004\b\u0010\u0010\u000e\u001a\u0010\u0010\u0011\u001a\u00020\u00032\u0006\u0010\u0002\u001a\u00020\tH\u0001\u001a\u0018\u0010\u0012\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u00132\u0006\u0010\u000b\u001a\u00020\u0013H\u0001\u001a\"\u0010\u0014\u001a\u00020\u00062\u0006\u0010\n\u001a\u00020\u00062\u0006\u0010\u000b\u001a\u00020\u0006H\u0001ø\u0001\u0000¢\u0006\u0004\b\u0015\u0010\u0016\u001a\"\u0010\u0017\u001a\u00020\u00062\u0006\u0010\n\u001a\u00020\u00062\u0006\u0010\u000b\u001a\u00020\u0006H\u0001ø\u0001\u0000¢\u0006\u0004\b\u0018\u0010\u0016\u001a\u0010\u0010\u0019\u001a\u00020\u00032\u0006\u0010\u0002\u001a\u00020\u0013H\u0001\u001a\u0010\u0010\u001a\u001a\u00020\u001b2\u0006\u0010\u0002\u001a\u00020\u0013H\u0000\u001a\u0018\u0010\u001a\u001a\u00020\u001b2\u0006\u0010\u0002\u001a\u00020\u00132\u0006\u0010\u001c\u001a\u00020\tH\u0000\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006\u001d"}, d2 = {"doubleToUInt", "Lkotlin/UInt;", NotifyType.VIBRATE, "", "(D)I", "doubleToULong", "Lkotlin/ULong;", "(D)J", "uintCompare", "", "v1", "v2", "uintDivide", "uintDivide-J1ME1BU", "(II)I", "uintRemainder", "uintRemainder-J1ME1BU", "uintToDouble", "ulongCompare", "", "ulongDivide", "ulongDivide-eb3DHEI", "(JJ)J", "ulongRemainder", "ulongRemainder-eb3DHEI", "ulongToDouble", "ulongToString", "", "base", "kotlin-stdlib"}, k = 2, mv = {1, 7, 1}, xi = 48)
@JvmName(name = "UnsignedKt")
/* loaded from: classes7.dex */
public final class UnsignedKt {
    @PublishedApi
    public static final int doubleToUInt(double d10) {
        if (!Double.isNaN(d10) && d10 > uintToDouble(0)) {
            if (d10 >= uintToDouble(-1)) {
                return -1;
            }
            if (d10 <= 2.147483647E9d) {
                return UInt.m1751constructorimpl((int) d10);
            }
            return UInt.m1751constructorimpl(UInt.m1751constructorimpl((int) (d10 - Integer.MAX_VALUE)) + UInt.m1751constructorimpl(Integer.MAX_VALUE));
        }
        return 0;
    }

    @PublishedApi
    public static final long doubleToULong(double d10) {
        if (!Double.isNaN(d10) && d10 > ulongToDouble(0L)) {
            if (d10 >= ulongToDouble(-1L)) {
                return -1L;
            }
            if (d10 < 9.223372036854776E18d) {
                return ULong.m1829constructorimpl((long) d10);
            }
            return ULong.m1829constructorimpl(ULong.m1829constructorimpl((long) (d10 - 9.223372036854776E18d)) - Long.MIN_VALUE);
        }
        return 0L;
    }

    @PublishedApi
    public static final int uintCompare(int i9, int i10) {
        return Intrinsics.compare(i9 ^ Integer.MIN_VALUE, i10 ^ Integer.MIN_VALUE);
    }

    @PublishedApi
    /* renamed from: uintDivide-J1ME1BU  reason: not valid java name */
    public static final int m2004uintDivideJ1ME1BU(int i9, int i10) {
        return UInt.m1751constructorimpl((int) ((i9 & 4294967295L) / (i10 & 4294967295L)));
    }

    @PublishedApi
    /* renamed from: uintRemainder-J1ME1BU  reason: not valid java name */
    public static final int m2005uintRemainderJ1ME1BU(int i9, int i10) {
        return UInt.m1751constructorimpl((int) ((i9 & 4294967295L) % (i10 & 4294967295L)));
    }

    @PublishedApi
    public static final double uintToDouble(int i9) {
        return (Integer.MAX_VALUE & i9) + (((i9 >>> 31) << 30) * 2);
    }

    @PublishedApi
    public static final int ulongCompare(long j10, long j11) {
        return Intrinsics.compare(j10 ^ Long.MIN_VALUE, j11 ^ Long.MIN_VALUE);
    }

    @PublishedApi
    /* renamed from: ulongDivide-eb3DHEI  reason: not valid java name */
    public static final long m2006ulongDivideeb3DHEI(long j10, long j11) {
        if (j11 < 0) {
            return ulongCompare(j10, j11) < 0 ? ULong.m1829constructorimpl(0L) : ULong.m1829constructorimpl(1L);
        } else if (j10 >= 0) {
            return ULong.m1829constructorimpl(j10 / j11);
        } else {
            long j12 = ((j10 >>> 1) / j11) << 1;
            return ULong.m1829constructorimpl(j12 + (ulongCompare(ULong.m1829constructorimpl(j10 - (j12 * j11)), ULong.m1829constructorimpl(j11)) < 0 ? 0 : 1));
        }
    }

    @PublishedApi
    /* renamed from: ulongRemainder-eb3DHEI  reason: not valid java name */
    public static final long m2007ulongRemaindereb3DHEI(long j10, long j11) {
        if (j11 < 0) {
            return ulongCompare(j10, j11) < 0 ? j10 : ULong.m1829constructorimpl(j10 - j11);
        } else if (j10 >= 0) {
            return ULong.m1829constructorimpl(j10 % j11);
        } else {
            long j12 = j10 - ((((j10 >>> 1) / j11) << 1) * j11);
            if (ulongCompare(ULong.m1829constructorimpl(j12), ULong.m1829constructorimpl(j11)) < 0) {
                j11 = 0;
            }
            return ULong.m1829constructorimpl(j12 - j11);
        }
    }

    @PublishedApi
    public static final double ulongToDouble(long j10) {
        return ((j10 >>> 11) * 2048) + (j10 & 2047);
    }

    @NotNull
    public static final String ulongToString(long j10) {
        return ulongToString(j10, 10);
    }

    @NotNull
    public static final String ulongToString(long j10, int i9) {
        int checkRadix;
        int checkRadix2;
        int checkRadix3;
        if (j10 >= 0) {
            checkRadix3 = CharsKt__CharJVMKt.checkRadix(i9);
            String l10 = Long.toString(j10, checkRadix3);
            Intrinsics.checkNotNullExpressionValue(l10, "toString(this, checkRadix(radix))");
            return l10;
        }
        long j11 = i9;
        long j12 = ((j10 >>> 1) / j11) << 1;
        long j13 = j10 - (j12 * j11);
        if (j13 >= j11) {
            j13 -= j11;
            j12++;
        }
        StringBuilder sb2 = new StringBuilder();
        checkRadix = CharsKt__CharJVMKt.checkRadix(i9);
        String l11 = Long.toString(j12, checkRadix);
        Intrinsics.checkNotNullExpressionValue(l11, "toString(this, checkRadix(radix))");
        sb2.append(l11);
        checkRadix2 = CharsKt__CharJVMKt.checkRadix(i9);
        String l12 = Long.toString(j13, checkRadix2);
        Intrinsics.checkNotNullExpressionValue(l12, "toString(this, checkRadix(radix))");
        sb2.append(l12);
        return sb2.toString();
    }
}
