package kotlin.comparisons;

import com.huawei.hms.opendevice.c;
import kotlin.ExperimentalUnsignedTypes;
import kotlin.Metadata;
import kotlin.SinceKotlin;
import kotlin.UByte;
import kotlin.UByteArray;
import kotlin.UIntArray;
import kotlin.ULongArray;
import kotlin.UShort;
import kotlin.UShortArray;
import kotlin.UnsignedKt;
import kotlin.WasExperimental;
import kotlin.internal.InlineOnly;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
/* JADX INFO: Access modifiers changed from: package-private */
@Metadata(d1 = {"\u0000B\n\u0000\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0010\u001a\"\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00012\u0006\u0010\u0003\u001a\u00020\u0001H\u0007ø\u0001\u0000¢\u0006\u0004\b\u0004\u0010\u0005\u001a+\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00012\u0006\u0010\u0003\u001a\u00020\u00012\u0006\u0010\u0006\u001a\u00020\u0001H\u0087\bø\u0001\u0000¢\u0006\u0004\b\u0007\u0010\b\u001a&\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00012\n\u0010\t\u001a\u00020\n\"\u00020\u0001H\u0007ø\u0001\u0000¢\u0006\u0004\b\u000b\u0010\f\u001a\"\u0010\u0000\u001a\u00020\r2\u0006\u0010\u0002\u001a\u00020\r2\u0006\u0010\u0003\u001a\u00020\rH\u0007ø\u0001\u0000¢\u0006\u0004\b\u000e\u0010\u000f\u001a+\u0010\u0000\u001a\u00020\r2\u0006\u0010\u0002\u001a\u00020\r2\u0006\u0010\u0003\u001a\u00020\r2\u0006\u0010\u0006\u001a\u00020\rH\u0087\bø\u0001\u0000¢\u0006\u0004\b\u0010\u0010\u0011\u001a&\u0010\u0000\u001a\u00020\r2\u0006\u0010\u0002\u001a\u00020\r2\n\u0010\t\u001a\u00020\u0012\"\u00020\rH\u0007ø\u0001\u0000¢\u0006\u0004\b\u0013\u0010\u0014\u001a\"\u0010\u0000\u001a\u00020\u00152\u0006\u0010\u0002\u001a\u00020\u00152\u0006\u0010\u0003\u001a\u00020\u0015H\u0007ø\u0001\u0000¢\u0006\u0004\b\u0016\u0010\u0017\u001a+\u0010\u0000\u001a\u00020\u00152\u0006\u0010\u0002\u001a\u00020\u00152\u0006\u0010\u0003\u001a\u00020\u00152\u0006\u0010\u0006\u001a\u00020\u0015H\u0087\bø\u0001\u0000¢\u0006\u0004\b\u0018\u0010\u0019\u001a&\u0010\u0000\u001a\u00020\u00152\u0006\u0010\u0002\u001a\u00020\u00152\n\u0010\t\u001a\u00020\u001a\"\u00020\u0015H\u0007ø\u0001\u0000¢\u0006\u0004\b\u001b\u0010\u001c\u001a\"\u0010\u0000\u001a\u00020\u001d2\u0006\u0010\u0002\u001a\u00020\u001d2\u0006\u0010\u0003\u001a\u00020\u001dH\u0007ø\u0001\u0000¢\u0006\u0004\b\u001e\u0010\u001f\u001a+\u0010\u0000\u001a\u00020\u001d2\u0006\u0010\u0002\u001a\u00020\u001d2\u0006\u0010\u0003\u001a\u00020\u001d2\u0006\u0010\u0006\u001a\u00020\u001dH\u0087\bø\u0001\u0000¢\u0006\u0004\b \u0010!\u001a&\u0010\u0000\u001a\u00020\u001d2\u0006\u0010\u0002\u001a\u00020\u001d2\n\u0010\t\u001a\u00020\"\"\u00020\u001dH\u0007ø\u0001\u0000¢\u0006\u0004\b#\u0010$\u001a\"\u0010%\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00012\u0006\u0010\u0003\u001a\u00020\u0001H\u0007ø\u0001\u0000¢\u0006\u0004\b&\u0010\u0005\u001a+\u0010%\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00012\u0006\u0010\u0003\u001a\u00020\u00012\u0006\u0010\u0006\u001a\u00020\u0001H\u0087\bø\u0001\u0000¢\u0006\u0004\b'\u0010\b\u001a&\u0010%\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00012\n\u0010\t\u001a\u00020\n\"\u00020\u0001H\u0007ø\u0001\u0000¢\u0006\u0004\b(\u0010\f\u001a\"\u0010%\u001a\u00020\r2\u0006\u0010\u0002\u001a\u00020\r2\u0006\u0010\u0003\u001a\u00020\rH\u0007ø\u0001\u0000¢\u0006\u0004\b)\u0010\u000f\u001a+\u0010%\u001a\u00020\r2\u0006\u0010\u0002\u001a\u00020\r2\u0006\u0010\u0003\u001a\u00020\r2\u0006\u0010\u0006\u001a\u00020\rH\u0087\bø\u0001\u0000¢\u0006\u0004\b*\u0010\u0011\u001a&\u0010%\u001a\u00020\r2\u0006\u0010\u0002\u001a\u00020\r2\n\u0010\t\u001a\u00020\u0012\"\u00020\rH\u0007ø\u0001\u0000¢\u0006\u0004\b+\u0010\u0014\u001a\"\u0010%\u001a\u00020\u00152\u0006\u0010\u0002\u001a\u00020\u00152\u0006\u0010\u0003\u001a\u00020\u0015H\u0007ø\u0001\u0000¢\u0006\u0004\b,\u0010\u0017\u001a+\u0010%\u001a\u00020\u00152\u0006\u0010\u0002\u001a\u00020\u00152\u0006\u0010\u0003\u001a\u00020\u00152\u0006\u0010\u0006\u001a\u00020\u0015H\u0087\bø\u0001\u0000¢\u0006\u0004\b-\u0010\u0019\u001a&\u0010%\u001a\u00020\u00152\u0006\u0010\u0002\u001a\u00020\u00152\n\u0010\t\u001a\u00020\u001a\"\u00020\u0015H\u0007ø\u0001\u0000¢\u0006\u0004\b.\u0010\u001c\u001a\"\u0010%\u001a\u00020\u001d2\u0006\u0010\u0002\u001a\u00020\u001d2\u0006\u0010\u0003\u001a\u00020\u001dH\u0007ø\u0001\u0000¢\u0006\u0004\b/\u0010\u001f\u001a+\u0010%\u001a\u00020\u001d2\u0006\u0010\u0002\u001a\u00020\u001d2\u0006\u0010\u0003\u001a\u00020\u001d2\u0006\u0010\u0006\u001a\u00020\u001dH\u0087\bø\u0001\u0000¢\u0006\u0004\b0\u0010!\u001a&\u0010%\u001a\u00020\u001d2\u0006\u0010\u0002\u001a\u00020\u001d2\n\u0010\t\u001a\u00020\"\"\u00020\u001dH\u0007ø\u0001\u0000¢\u0006\u0004\b1\u0010$\u0082\u0002\u0004\n\u0002\b\u0019¨\u00062"}, d2 = {"maxOf", "Lkotlin/UByte;", "a", "b", "maxOf-Kr8caGY", "(BB)B", c.f27627a, "maxOf-b33U2AM", "(BBB)B", "other", "Lkotlin/UByteArray;", "maxOf-Wr6uiD8", "(B[B)B", "Lkotlin/UInt;", "maxOf-J1ME1BU", "(II)I", "maxOf-WZ9TVnA", "(III)I", "Lkotlin/UIntArray;", "maxOf-Md2H83M", "(I[I)I", "Lkotlin/ULong;", "maxOf-eb3DHEI", "(JJ)J", "maxOf-sambcqE", "(JJJ)J", "Lkotlin/ULongArray;", "maxOf-R03FKyM", "(J[J)J", "Lkotlin/UShort;", "maxOf-5PvTz6A", "(SS)S", "maxOf-VKSA0NQ", "(SSS)S", "Lkotlin/UShortArray;", "maxOf-t1qELG4", "(S[S)S", "minOf", "minOf-Kr8caGY", "minOf-b33U2AM", "minOf-Wr6uiD8", "minOf-J1ME1BU", "minOf-WZ9TVnA", "minOf-Md2H83M", "minOf-eb3DHEI", "minOf-sambcqE", "minOf-R03FKyM", "minOf-5PvTz6A", "minOf-VKSA0NQ", "minOf-t1qELG4", "kotlin-stdlib"}, k = 5, mv = {1, 7, 1}, xi = 49, xs = "kotlin/comparisons/UComparisonsKt")
/* loaded from: classes7.dex */
public class UComparisonsKt___UComparisonsKt {
    @SinceKotlin(version = "1.5")
    @WasExperimental(markerClass = {ExperimentalUnsignedTypes.class})
    /* renamed from: maxOf-5PvTz6A  reason: not valid java name */
    public static final short m2856maxOf5PvTz6A(short s10, short s11) {
        return Intrinsics.compare(s10 & UShort.MAX_VALUE, 65535 & s11) >= 0 ? s10 : s11;
    }

    @SinceKotlin(version = "1.5")
    @WasExperimental(markerClass = {ExperimentalUnsignedTypes.class})
    /* renamed from: maxOf-J1ME1BU  reason: not valid java name */
    public static int m2857maxOfJ1ME1BU(int i9, int i10) {
        return UnsignedKt.uintCompare(i9, i10) >= 0 ? i9 : i10;
    }

    @SinceKotlin(version = "1.5")
    @WasExperimental(markerClass = {ExperimentalUnsignedTypes.class})
    /* renamed from: maxOf-Kr8caGY  reason: not valid java name */
    public static final byte m2858maxOfKr8caGY(byte b10, byte b11) {
        return Intrinsics.compare(b10 & UByte.MAX_VALUE, b11 & UByte.MAX_VALUE) >= 0 ? b10 : b11;
    }

    @SinceKotlin(version = "1.4")
    @ExperimentalUnsignedTypes
    /* renamed from: maxOf-Md2H83M  reason: not valid java name */
    public static final int m2859maxOfMd2H83M(int i9, @NotNull int... other) {
        Intrinsics.checkNotNullParameter(other, "other");
        int m1811getSizeimpl = UIntArray.m1811getSizeimpl(other);
        for (int i10 = 0; i10 < m1811getSizeimpl; i10++) {
            i9 = m2857maxOfJ1ME1BU(i9, UIntArray.m1810getpVg5ArA(other, i10));
        }
        return i9;
    }

    @SinceKotlin(version = "1.4")
    @ExperimentalUnsignedTypes
    /* renamed from: maxOf-R03FKyM  reason: not valid java name */
    public static final long m2860maxOfR03FKyM(long j10, @NotNull long... other) {
        Intrinsics.checkNotNullParameter(other, "other");
        int m1889getSizeimpl = ULongArray.m1889getSizeimpl(other);
        for (int i9 = 0; i9 < m1889getSizeimpl; i9++) {
            j10 = m2865maxOfeb3DHEI(j10, ULongArray.m1888getsVKNKU(other, i9));
        }
        return j10;
    }

    @SinceKotlin(version = "1.5")
    @WasExperimental(markerClass = {ExperimentalUnsignedTypes.class})
    @InlineOnly
    /* renamed from: maxOf-VKSA0NQ  reason: not valid java name */
    private static final short m2861maxOfVKSA0NQ(short s10, short s11, short s12) {
        return m2856maxOf5PvTz6A(s10, m2856maxOf5PvTz6A(s11, s12));
    }

    @SinceKotlin(version = "1.5")
    @WasExperimental(markerClass = {ExperimentalUnsignedTypes.class})
    @InlineOnly
    /* renamed from: maxOf-WZ9TVnA  reason: not valid java name */
    private static final int m2862maxOfWZ9TVnA(int i9, int i10, int i11) {
        int m2857maxOfJ1ME1BU;
        int m2857maxOfJ1ME1BU2;
        m2857maxOfJ1ME1BU = m2857maxOfJ1ME1BU(i10, i11);
        m2857maxOfJ1ME1BU2 = m2857maxOfJ1ME1BU(i9, m2857maxOfJ1ME1BU);
        return m2857maxOfJ1ME1BU2;
    }

    @SinceKotlin(version = "1.4")
    @ExperimentalUnsignedTypes
    /* renamed from: maxOf-Wr6uiD8  reason: not valid java name */
    public static final byte m2863maxOfWr6uiD8(byte b10, @NotNull byte... other) {
        Intrinsics.checkNotNullParameter(other, "other");
        int m1733getSizeimpl = UByteArray.m1733getSizeimpl(other);
        for (int i9 = 0; i9 < m1733getSizeimpl; i9++) {
            b10 = m2858maxOfKr8caGY(b10, UByteArray.m1732getw2LRezQ(other, i9));
        }
        return b10;
    }

    @SinceKotlin(version = "1.5")
    @WasExperimental(markerClass = {ExperimentalUnsignedTypes.class})
    @InlineOnly
    /* renamed from: maxOf-b33U2AM  reason: not valid java name */
    private static final byte m2864maxOfb33U2AM(byte b10, byte b11, byte b12) {
        return m2858maxOfKr8caGY(b10, m2858maxOfKr8caGY(b11, b12));
    }

    @SinceKotlin(version = "1.5")
    @WasExperimental(markerClass = {ExperimentalUnsignedTypes.class})
    /* renamed from: maxOf-eb3DHEI  reason: not valid java name */
    public static long m2865maxOfeb3DHEI(long j10, long j11) {
        return UnsignedKt.ulongCompare(j10, j11) >= 0 ? j10 : j11;
    }

    @SinceKotlin(version = "1.5")
    @WasExperimental(markerClass = {ExperimentalUnsignedTypes.class})
    @InlineOnly
    /* renamed from: maxOf-sambcqE  reason: not valid java name */
    private static final long m2866maxOfsambcqE(long j10, long j11, long j12) {
        long m2865maxOfeb3DHEI;
        long m2865maxOfeb3DHEI2;
        m2865maxOfeb3DHEI = m2865maxOfeb3DHEI(j11, j12);
        m2865maxOfeb3DHEI2 = m2865maxOfeb3DHEI(j10, m2865maxOfeb3DHEI);
        return m2865maxOfeb3DHEI2;
    }

    @SinceKotlin(version = "1.4")
    @ExperimentalUnsignedTypes
    /* renamed from: maxOf-t1qELG4  reason: not valid java name */
    public static final short m2867maxOft1qELG4(short s10, @NotNull short... other) {
        Intrinsics.checkNotNullParameter(other, "other");
        int m1993getSizeimpl = UShortArray.m1993getSizeimpl(other);
        for (int i9 = 0; i9 < m1993getSizeimpl; i9++) {
            s10 = m2856maxOf5PvTz6A(s10, UShortArray.m1992getMh2AYeg(other, i9));
        }
        return s10;
    }

    @SinceKotlin(version = "1.5")
    @WasExperimental(markerClass = {ExperimentalUnsignedTypes.class})
    /* renamed from: minOf-5PvTz6A  reason: not valid java name */
    public static final short m2868minOf5PvTz6A(short s10, short s11) {
        return Intrinsics.compare(s10 & UShort.MAX_VALUE, 65535 & s11) <= 0 ? s10 : s11;
    }

    @SinceKotlin(version = "1.5")
    @WasExperimental(markerClass = {ExperimentalUnsignedTypes.class})
    /* renamed from: minOf-J1ME1BU  reason: not valid java name */
    public static int m2869minOfJ1ME1BU(int i9, int i10) {
        return UnsignedKt.uintCompare(i9, i10) <= 0 ? i9 : i10;
    }

    @SinceKotlin(version = "1.5")
    @WasExperimental(markerClass = {ExperimentalUnsignedTypes.class})
    /* renamed from: minOf-Kr8caGY  reason: not valid java name */
    public static final byte m2870minOfKr8caGY(byte b10, byte b11) {
        return Intrinsics.compare(b10 & UByte.MAX_VALUE, b11 & UByte.MAX_VALUE) <= 0 ? b10 : b11;
    }

    @SinceKotlin(version = "1.4")
    @ExperimentalUnsignedTypes
    /* renamed from: minOf-Md2H83M  reason: not valid java name */
    public static final int m2871minOfMd2H83M(int i9, @NotNull int... other) {
        Intrinsics.checkNotNullParameter(other, "other");
        int m1811getSizeimpl = UIntArray.m1811getSizeimpl(other);
        for (int i10 = 0; i10 < m1811getSizeimpl; i10++) {
            i9 = m2869minOfJ1ME1BU(i9, UIntArray.m1810getpVg5ArA(other, i10));
        }
        return i9;
    }

    @SinceKotlin(version = "1.4")
    @ExperimentalUnsignedTypes
    /* renamed from: minOf-R03FKyM  reason: not valid java name */
    public static final long m2872minOfR03FKyM(long j10, @NotNull long... other) {
        Intrinsics.checkNotNullParameter(other, "other");
        int m1889getSizeimpl = ULongArray.m1889getSizeimpl(other);
        for (int i9 = 0; i9 < m1889getSizeimpl; i9++) {
            j10 = m2877minOfeb3DHEI(j10, ULongArray.m1888getsVKNKU(other, i9));
        }
        return j10;
    }

    @SinceKotlin(version = "1.5")
    @WasExperimental(markerClass = {ExperimentalUnsignedTypes.class})
    @InlineOnly
    /* renamed from: minOf-VKSA0NQ  reason: not valid java name */
    private static final short m2873minOfVKSA0NQ(short s10, short s11, short s12) {
        return m2868minOf5PvTz6A(s10, m2868minOf5PvTz6A(s11, s12));
    }

    @SinceKotlin(version = "1.5")
    @WasExperimental(markerClass = {ExperimentalUnsignedTypes.class})
    @InlineOnly
    /* renamed from: minOf-WZ9TVnA  reason: not valid java name */
    private static final int m2874minOfWZ9TVnA(int i9, int i10, int i11) {
        int m2869minOfJ1ME1BU;
        int m2869minOfJ1ME1BU2;
        m2869minOfJ1ME1BU = m2869minOfJ1ME1BU(i10, i11);
        m2869minOfJ1ME1BU2 = m2869minOfJ1ME1BU(i9, m2869minOfJ1ME1BU);
        return m2869minOfJ1ME1BU2;
    }

    @SinceKotlin(version = "1.4")
    @ExperimentalUnsignedTypes
    /* renamed from: minOf-Wr6uiD8  reason: not valid java name */
    public static final byte m2875minOfWr6uiD8(byte b10, @NotNull byte... other) {
        Intrinsics.checkNotNullParameter(other, "other");
        int m1733getSizeimpl = UByteArray.m1733getSizeimpl(other);
        for (int i9 = 0; i9 < m1733getSizeimpl; i9++) {
            b10 = m2870minOfKr8caGY(b10, UByteArray.m1732getw2LRezQ(other, i9));
        }
        return b10;
    }

    @SinceKotlin(version = "1.5")
    @WasExperimental(markerClass = {ExperimentalUnsignedTypes.class})
    @InlineOnly
    /* renamed from: minOf-b33U2AM  reason: not valid java name */
    private static final byte m2876minOfb33U2AM(byte b10, byte b11, byte b12) {
        return m2870minOfKr8caGY(b10, m2870minOfKr8caGY(b11, b12));
    }

    @SinceKotlin(version = "1.5")
    @WasExperimental(markerClass = {ExperimentalUnsignedTypes.class})
    /* renamed from: minOf-eb3DHEI  reason: not valid java name */
    public static long m2877minOfeb3DHEI(long j10, long j11) {
        return UnsignedKt.ulongCompare(j10, j11) <= 0 ? j10 : j11;
    }

    @SinceKotlin(version = "1.5")
    @WasExperimental(markerClass = {ExperimentalUnsignedTypes.class})
    @InlineOnly
    /* renamed from: minOf-sambcqE  reason: not valid java name */
    private static final long m2878minOfsambcqE(long j10, long j11, long j12) {
        long m2877minOfeb3DHEI;
        long m2877minOfeb3DHEI2;
        m2877minOfeb3DHEI = m2877minOfeb3DHEI(j11, j12);
        m2877minOfeb3DHEI2 = m2877minOfeb3DHEI(j10, m2877minOfeb3DHEI);
        return m2877minOfeb3DHEI2;
    }

    @SinceKotlin(version = "1.4")
    @ExperimentalUnsignedTypes
    /* renamed from: minOf-t1qELG4  reason: not valid java name */
    public static final short m2879minOft1qELG4(short s10, @NotNull short... other) {
        Intrinsics.checkNotNullParameter(other, "other");
        int m1993getSizeimpl = UShortArray.m1993getSizeimpl(other);
        for (int i9 = 0; i9 < m1993getSizeimpl; i9++) {
            s10 = m2868minOf5PvTz6A(s10, UShortArray.m1992getMh2AYeg(other, i9));
        }
        return s10;
    }
}
