package kotlin.internal;

import com.huawei.hms.opendevice.c;
import kotlin.Metadata;
import kotlin.PublishedApi;
import kotlin.SinceKotlin;
import kotlin.UInt;
import kotlin.ULong;
import kotlin.UnsignedKt;
@Metadata(d1 = {"\u0000 \n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\b\n\u0000\n\u0002\u0010\t\n\u0002\b\u0002\u001a*\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00012\u0006\u0010\u0003\u001a\u00020\u00012\u0006\u0010\u0004\u001a\u00020\u0001H\u0002ø\u0001\u0000¢\u0006\u0004\b\u0005\u0010\u0006\u001a*\u0010\u0000\u001a\u00020\u00072\u0006\u0010\u0002\u001a\u00020\u00072\u0006\u0010\u0003\u001a\u00020\u00072\u0006\u0010\u0004\u001a\u00020\u0007H\u0002ø\u0001\u0000¢\u0006\u0004\b\b\u0010\t\u001a*\u0010\n\u001a\u00020\u00012\u0006\u0010\u000b\u001a\u00020\u00012\u0006\u0010\f\u001a\u00020\u00012\u0006\u0010\r\u001a\u00020\u000eH\u0001ø\u0001\u0000¢\u0006\u0004\b\u000f\u0010\u0006\u001a*\u0010\n\u001a\u00020\u00072\u0006\u0010\u000b\u001a\u00020\u00072\u0006\u0010\f\u001a\u00020\u00072\u0006\u0010\r\u001a\u00020\u0010H\u0001ø\u0001\u0000¢\u0006\u0004\b\u0011\u0010\t\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006\u0012"}, d2 = {"differenceModulo", "Lkotlin/UInt;", "a", "b", c.f27627a, "differenceModulo-WZ9TVnA", "(III)I", "Lkotlin/ULong;", "differenceModulo-sambcqE", "(JJJ)J", "getProgressionLastElement", "start", "end", "step", "", "getProgressionLastElement-Nkh28Cs", "", "getProgressionLastElement-7ftBX0g", "kotlin-stdlib"}, k = 2, mv = {1, 7, 1}, xi = 48)
/* loaded from: classes7.dex */
public final class UProgressionUtilKt {
    /* renamed from: differenceModulo-WZ9TVnA  reason: not valid java name */
    private static final int m2881differenceModuloWZ9TVnA(int i9, int i10, int i11) {
        int m2005uintRemainderJ1ME1BU = UnsignedKt.m2005uintRemainderJ1ME1BU(i9, i11);
        int m2005uintRemainderJ1ME1BU2 = UnsignedKt.m2005uintRemainderJ1ME1BU(i10, i11);
        int uintCompare = UnsignedKt.uintCompare(m2005uintRemainderJ1ME1BU, m2005uintRemainderJ1ME1BU2);
        int m1751constructorimpl = UInt.m1751constructorimpl(m2005uintRemainderJ1ME1BU - m2005uintRemainderJ1ME1BU2);
        return uintCompare >= 0 ? m1751constructorimpl : UInt.m1751constructorimpl(m1751constructorimpl + i11);
    }

    /* renamed from: differenceModulo-sambcqE  reason: not valid java name */
    private static final long m2882differenceModulosambcqE(long j10, long j11, long j12) {
        long m2007ulongRemaindereb3DHEI = UnsignedKt.m2007ulongRemaindereb3DHEI(j10, j12);
        long m2007ulongRemaindereb3DHEI2 = UnsignedKt.m2007ulongRemaindereb3DHEI(j11, j12);
        int ulongCompare = UnsignedKt.ulongCompare(m2007ulongRemaindereb3DHEI, m2007ulongRemaindereb3DHEI2);
        long m1829constructorimpl = ULong.m1829constructorimpl(m2007ulongRemaindereb3DHEI - m2007ulongRemaindereb3DHEI2);
        return ulongCompare >= 0 ? m1829constructorimpl : ULong.m1829constructorimpl(m1829constructorimpl + j12);
    }

    @SinceKotlin(version = "1.3")
    @PublishedApi
    /* renamed from: getProgressionLastElement-7ftBX0g  reason: not valid java name */
    public static final long m2883getProgressionLastElement7ftBX0g(long j10, long j11, long j12) {
        int i9 = (j12 > 0L ? 1 : (j12 == 0L ? 0 : -1));
        if (i9 > 0) {
            return UnsignedKt.ulongCompare(j10, j11) >= 0 ? j11 : ULong.m1829constructorimpl(j11 - m2882differenceModulosambcqE(j11, j10, ULong.m1829constructorimpl(j12)));
        } else if (i9 < 0) {
            return UnsignedKt.ulongCompare(j10, j11) <= 0 ? j11 : ULong.m1829constructorimpl(j11 + m2882differenceModulosambcqE(j10, j11, ULong.m1829constructorimpl(-j12)));
        } else {
            throw new IllegalArgumentException("Step is zero.");
        }
    }

    @SinceKotlin(version = "1.3")
    @PublishedApi
    /* renamed from: getProgressionLastElement-Nkh28Cs  reason: not valid java name */
    public static final int m2884getProgressionLastElementNkh28Cs(int i9, int i10, int i11) {
        if (i11 > 0) {
            return UnsignedKt.uintCompare(i9, i10) >= 0 ? i10 : UInt.m1751constructorimpl(i10 - m2881differenceModuloWZ9TVnA(i10, i9, UInt.m1751constructorimpl(i11)));
        } else if (i11 < 0) {
            return UnsignedKt.uintCompare(i9, i10) <= 0 ? i10 : UInt.m1751constructorimpl(i10 + m2881differenceModuloWZ9TVnA(i9, i10, UInt.m1751constructorimpl(-i11)));
        } else {
            throw new IllegalArgumentException("Step is zero.");
        }
    }
}
