package kotlin.ranges;

import io.jsonwebtoken.JwtParser;
import java.util.NoSuchElementException;
import kotlin.ExperimentalStdlibApi;
import kotlin.ExperimentalUnsignedTypes;
import kotlin.Metadata;
import kotlin.SinceKotlin;
import kotlin.UByte;
import kotlin.UInt;
import kotlin.ULong;
import kotlin.UShort;
import kotlin.UnsignedKt;
import kotlin.WasExperimental;
import kotlin.internal.InlineOnly;
import kotlin.jvm.internal.Intrinsics;
import kotlin.random.Random;
import kotlin.random.URandomKt;
import kotlin.ranges.UIntProgression;
import kotlin.ranges.ULongProgression;
import okhttp3.internal.ws.WebSocketProtocol;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(d1 = {"\u0000b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u000e\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0010\u000b\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\f\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\b\n\u0002\u0010\t\n\u0002\b\n\u001a\u001e\u0010\u0000\u001a\u00020\u0001*\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0001H\u0007ø\u0001\u0000¢\u0006\u0004\b\u0003\u0010\u0004\u001a\u001e\u0010\u0000\u001a\u00020\u0005*\u00020\u00052\u0006\u0010\u0002\u001a\u00020\u0005H\u0007ø\u0001\u0000¢\u0006\u0004\b\u0006\u0010\u0007\u001a\u001e\u0010\u0000\u001a\u00020\b*\u00020\b2\u0006\u0010\u0002\u001a\u00020\bH\u0007ø\u0001\u0000¢\u0006\u0004\b\t\u0010\n\u001a\u001e\u0010\u0000\u001a\u00020\u000b*\u00020\u000b2\u0006\u0010\u0002\u001a\u00020\u000bH\u0007ø\u0001\u0000¢\u0006\u0004\b\f\u0010\r\u001a\u001e\u0010\u000e\u001a\u00020\u0001*\u00020\u00012\u0006\u0010\u000f\u001a\u00020\u0001H\u0007ø\u0001\u0000¢\u0006\u0004\b\u0010\u0010\u0004\u001a\u001e\u0010\u000e\u001a\u00020\u0005*\u00020\u00052\u0006\u0010\u000f\u001a\u00020\u0005H\u0007ø\u0001\u0000¢\u0006\u0004\b\u0011\u0010\u0007\u001a\u001e\u0010\u000e\u001a\u00020\b*\u00020\b2\u0006\u0010\u000f\u001a\u00020\bH\u0007ø\u0001\u0000¢\u0006\u0004\b\u0012\u0010\n\u001a\u001e\u0010\u000e\u001a\u00020\u000b*\u00020\u000b2\u0006\u0010\u000f\u001a\u00020\u000bH\u0007ø\u0001\u0000¢\u0006\u0004\b\u0013\u0010\r\u001a&\u0010\u0014\u001a\u00020\u0001*\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00012\u0006\u0010\u000f\u001a\u00020\u0001H\u0007ø\u0001\u0000¢\u0006\u0004\b\u0015\u0010\u0016\u001a&\u0010\u0014\u001a\u00020\u0005*\u00020\u00052\u0006\u0010\u0002\u001a\u00020\u00052\u0006\u0010\u000f\u001a\u00020\u0005H\u0007ø\u0001\u0000¢\u0006\u0004\b\u0017\u0010\u0018\u001a$\u0010\u0014\u001a\u00020\u0005*\u00020\u00052\f\u0010\u0019\u001a\b\u0012\u0004\u0012\u00020\u00050\u001aH\u0007ø\u0001\u0000¢\u0006\u0004\b\u001b\u0010\u001c\u001a&\u0010\u0014\u001a\u00020\b*\u00020\b2\u0006\u0010\u0002\u001a\u00020\b2\u0006\u0010\u000f\u001a\u00020\bH\u0007ø\u0001\u0000¢\u0006\u0004\b\u001d\u0010\u001e\u001a$\u0010\u0014\u001a\u00020\b*\u00020\b2\f\u0010\u0019\u001a\b\u0012\u0004\u0012\u00020\b0\u001aH\u0007ø\u0001\u0000¢\u0006\u0004\b\u001f\u0010 \u001a&\u0010\u0014\u001a\u00020\u000b*\u00020\u000b2\u0006\u0010\u0002\u001a\u00020\u000b2\u0006\u0010\u000f\u001a\u00020\u000bH\u0007ø\u0001\u0000¢\u0006\u0004\b!\u0010\"\u001a\u001f\u0010#\u001a\u00020$*\u00020%2\u0006\u0010&\u001a\u00020\u0001H\u0087\u0002ø\u0001\u0000¢\u0006\u0004\b'\u0010(\u001a\u001f\u0010#\u001a\u00020$*\u00020%2\b\u0010)\u001a\u0004\u0018\u00010\u0005H\u0087\nø\u0001\u0000¢\u0006\u0002\b*\u001a\u001f\u0010#\u001a\u00020$*\u00020%2\u0006\u0010&\u001a\u00020\bH\u0087\u0002ø\u0001\u0000¢\u0006\u0004\b+\u0010,\u001a\u001f\u0010#\u001a\u00020$*\u00020%2\u0006\u0010&\u001a\u00020\u000bH\u0087\u0002ø\u0001\u0000¢\u0006\u0004\b-\u0010.\u001a\u001f\u0010#\u001a\u00020$*\u00020/2\u0006\u0010&\u001a\u00020\u0001H\u0087\u0002ø\u0001\u0000¢\u0006\u0004\b0\u00101\u001a\u001f\u0010#\u001a\u00020$*\u00020/2\u0006\u0010&\u001a\u00020\u0005H\u0087\u0002ø\u0001\u0000¢\u0006\u0004\b2\u00103\u001a\u001f\u0010#\u001a\u00020$*\u00020/2\b\u0010)\u001a\u0004\u0018\u00010\bH\u0087\nø\u0001\u0000¢\u0006\u0002\b4\u001a\u001f\u0010#\u001a\u00020$*\u00020/2\u0006\u0010&\u001a\u00020\u000bH\u0087\u0002ø\u0001\u0000¢\u0006\u0004\b5\u00106\u001a\u001f\u00107\u001a\u000208*\u00020\u00012\u0006\u00109\u001a\u00020\u0001H\u0087\u0004ø\u0001\u0000¢\u0006\u0004\b:\u0010;\u001a\u001f\u00107\u001a\u000208*\u00020\u00052\u0006\u00109\u001a\u00020\u0005H\u0087\u0004ø\u0001\u0000¢\u0006\u0004\b<\u0010=\u001a\u001f\u00107\u001a\u00020>*\u00020\b2\u0006\u00109\u001a\u00020\bH\u0087\u0004ø\u0001\u0000¢\u0006\u0004\b?\u0010@\u001a\u001f\u00107\u001a\u000208*\u00020\u000b2\u0006\u00109\u001a\u00020\u000bH\u0087\u0004ø\u0001\u0000¢\u0006\u0004\bA\u0010B\u001a\u0014\u0010C\u001a\u00020\u0005*\u000208H\u0007ø\u0001\u0000¢\u0006\u0002\u0010D\u001a\u0014\u0010C\u001a\u00020\b*\u00020>H\u0007ø\u0001\u0000¢\u0006\u0002\u0010E\u001a\u0011\u0010F\u001a\u0004\u0018\u00010\u0005*\u000208H\u0007ø\u0001\u0000\u001a\u0011\u0010F\u001a\u0004\u0018\u00010\b*\u00020>H\u0007ø\u0001\u0000\u001a\u0014\u0010G\u001a\u00020\u0005*\u000208H\u0007ø\u0001\u0000¢\u0006\u0002\u0010D\u001a\u0014\u0010G\u001a\u00020\b*\u00020>H\u0007ø\u0001\u0000¢\u0006\u0002\u0010E\u001a\u0011\u0010H\u001a\u0004\u0018\u00010\u0005*\u000208H\u0007ø\u0001\u0000\u001a\u0011\u0010H\u001a\u0004\u0018\u00010\b*\u00020>H\u0007ø\u0001\u0000\u001a\u0015\u0010I\u001a\u00020\u0005*\u00020%H\u0087\bø\u0001\u0000¢\u0006\u0002\u0010J\u001a\u001c\u0010I\u001a\u00020\u0005*\u00020%2\u0006\u0010I\u001a\u00020KH\u0007ø\u0001\u0000¢\u0006\u0002\u0010L\u001a\u0015\u0010I\u001a\u00020\b*\u00020/H\u0087\bø\u0001\u0000¢\u0006\u0002\u0010M\u001a\u001c\u0010I\u001a\u00020\b*\u00020/2\u0006\u0010I\u001a\u00020KH\u0007ø\u0001\u0000¢\u0006\u0002\u0010N\u001a\u0012\u0010O\u001a\u0004\u0018\u00010\u0005*\u00020%H\u0087\bø\u0001\u0000\u001a\u0019\u0010O\u001a\u0004\u0018\u00010\u0005*\u00020%2\u0006\u0010I\u001a\u00020KH\u0007ø\u0001\u0000\u001a\u0012\u0010O\u001a\u0004\u0018\u00010\b*\u00020/H\u0087\bø\u0001\u0000\u001a\u0019\u0010O\u001a\u0004\u0018\u00010\b*\u00020/2\u0006\u0010I\u001a\u00020KH\u0007ø\u0001\u0000\u001a\f\u0010P\u001a\u000208*\u000208H\u0007\u001a\f\u0010P\u001a\u00020>*\u00020>H\u0007\u001a\u0015\u0010Q\u001a\u000208*\u0002082\u0006\u0010Q\u001a\u00020RH\u0087\u0004\u001a\u0015\u0010Q\u001a\u00020>*\u00020>2\u0006\u0010Q\u001a\u00020SH\u0087\u0004\u001a\u001f\u0010T\u001a\u00020%*\u00020\u00012\u0006\u00109\u001a\u00020\u0001H\u0087\u0004ø\u0001\u0000¢\u0006\u0004\bU\u0010V\u001a\u001f\u0010T\u001a\u00020%*\u00020\u00052\u0006\u00109\u001a\u00020\u0005H\u0087\u0004ø\u0001\u0000¢\u0006\u0004\bW\u0010X\u001a\u001f\u0010T\u001a\u00020/*\u00020\b2\u0006\u00109\u001a\u00020\bH\u0087\u0004ø\u0001\u0000¢\u0006\u0004\bY\u0010Z\u001a\u001f\u0010T\u001a\u00020%*\u00020\u000b2\u0006\u00109\u001a\u00020\u000bH\u0087\u0004ø\u0001\u0000¢\u0006\u0004\b[\u0010\\\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006]"}, d2 = {"coerceAtLeast", "Lkotlin/UByte;", "minimumValue", "coerceAtLeast-Kr8caGY", "(BB)B", "Lkotlin/UInt;", "coerceAtLeast-J1ME1BU", "(II)I", "Lkotlin/ULong;", "coerceAtLeast-eb3DHEI", "(JJ)J", "Lkotlin/UShort;", "coerceAtLeast-5PvTz6A", "(SS)S", "coerceAtMost", "maximumValue", "coerceAtMost-Kr8caGY", "coerceAtMost-J1ME1BU", "coerceAtMost-eb3DHEI", "coerceAtMost-5PvTz6A", "coerceIn", "coerceIn-b33U2AM", "(BBB)B", "coerceIn-WZ9TVnA", "(III)I", "range", "Lkotlin/ranges/ClosedRange;", "coerceIn-wuiCnnA", "(ILkotlin/ranges/ClosedRange;)I", "coerceIn-sambcqE", "(JJJ)J", "coerceIn-JPwROB0", "(JLkotlin/ranges/ClosedRange;)J", "coerceIn-VKSA0NQ", "(SSS)S", "contains", "", "Lkotlin/ranges/UIntRange;", "value", "contains-68kG9v0", "(Lkotlin/ranges/UIntRange;B)Z", "element", "contains-biwQdVI", "contains-fz5IDCE", "(Lkotlin/ranges/UIntRange;J)Z", "contains-ZsK3CEQ", "(Lkotlin/ranges/UIntRange;S)Z", "Lkotlin/ranges/ULongRange;", "contains-ULb-yJY", "(Lkotlin/ranges/ULongRange;B)Z", "contains-Gab390E", "(Lkotlin/ranges/ULongRange;I)Z", "contains-GYNo2lE", "contains-uhHAxoY", "(Lkotlin/ranges/ULongRange;S)Z", "downTo", "Lkotlin/ranges/UIntProgression;", "to", "downTo-Kr8caGY", "(BB)Lkotlin/ranges/UIntProgression;", "downTo-J1ME1BU", "(II)Lkotlin/ranges/UIntProgression;", "Lkotlin/ranges/ULongProgression;", "downTo-eb3DHEI", "(JJ)Lkotlin/ranges/ULongProgression;", "downTo-5PvTz6A", "(SS)Lkotlin/ranges/UIntProgression;", "first", "(Lkotlin/ranges/UIntProgression;)I", "(Lkotlin/ranges/ULongProgression;)J", "firstOrNull", "last", "lastOrNull", "random", "(Lkotlin/ranges/UIntRange;)I", "Lkotlin/random/Random;", "(Lkotlin/ranges/UIntRange;Lkotlin/random/Random;)I", "(Lkotlin/ranges/ULongRange;)J", "(Lkotlin/ranges/ULongRange;Lkotlin/random/Random;)J", "randomOrNull", "reversed", "step", "", "", "until", "until-Kr8caGY", "(BB)Lkotlin/ranges/UIntRange;", "until-J1ME1BU", "(II)Lkotlin/ranges/UIntRange;", "until-eb3DHEI", "(JJ)Lkotlin/ranges/ULongRange;", "until-5PvTz6A", "(SS)Lkotlin/ranges/UIntRange;", "kotlin-stdlib"}, k = 5, mv = {1, 7, 1}, xi = 49, xs = "kotlin/ranges/URangesKt")
/* loaded from: classes7.dex */
class URangesKt___URangesKt {
    @SinceKotlin(version = "1.5")
    @WasExperimental(markerClass = {ExperimentalUnsignedTypes.class})
    /* renamed from: coerceAtLeast-5PvTz6A  reason: not valid java name */
    public static final short m2912coerceAtLeast5PvTz6A(short s10, short s11) {
        return Intrinsics.compare(s10 & UShort.MAX_VALUE, 65535 & s11) < 0 ? s11 : s10;
    }

    @SinceKotlin(version = "1.5")
    @WasExperimental(markerClass = {ExperimentalUnsignedTypes.class})
    /* renamed from: coerceAtLeast-J1ME1BU  reason: not valid java name */
    public static final int m2913coerceAtLeastJ1ME1BU(int i9, int i10) {
        return UnsignedKt.uintCompare(i9, i10) < 0 ? i10 : i9;
    }

    @SinceKotlin(version = "1.5")
    @WasExperimental(markerClass = {ExperimentalUnsignedTypes.class})
    /* renamed from: coerceAtLeast-Kr8caGY  reason: not valid java name */
    public static final byte m2914coerceAtLeastKr8caGY(byte b10, byte b11) {
        return Intrinsics.compare(b10 & UByte.MAX_VALUE, b11 & UByte.MAX_VALUE) < 0 ? b11 : b10;
    }

    @SinceKotlin(version = "1.5")
    @WasExperimental(markerClass = {ExperimentalUnsignedTypes.class})
    /* renamed from: coerceAtLeast-eb3DHEI  reason: not valid java name */
    public static final long m2915coerceAtLeasteb3DHEI(long j10, long j11) {
        return UnsignedKt.ulongCompare(j10, j11) < 0 ? j11 : j10;
    }

    @SinceKotlin(version = "1.5")
    @WasExperimental(markerClass = {ExperimentalUnsignedTypes.class})
    /* renamed from: coerceAtMost-5PvTz6A  reason: not valid java name */
    public static final short m2916coerceAtMost5PvTz6A(short s10, short s11) {
        return Intrinsics.compare(s10 & UShort.MAX_VALUE, 65535 & s11) > 0 ? s11 : s10;
    }

    @SinceKotlin(version = "1.5")
    @WasExperimental(markerClass = {ExperimentalUnsignedTypes.class})
    /* renamed from: coerceAtMost-J1ME1BU  reason: not valid java name */
    public static final int m2917coerceAtMostJ1ME1BU(int i9, int i10) {
        return UnsignedKt.uintCompare(i9, i10) > 0 ? i10 : i9;
    }

    @SinceKotlin(version = "1.5")
    @WasExperimental(markerClass = {ExperimentalUnsignedTypes.class})
    /* renamed from: coerceAtMost-Kr8caGY  reason: not valid java name */
    public static final byte m2918coerceAtMostKr8caGY(byte b10, byte b11) {
        return Intrinsics.compare(b10 & UByte.MAX_VALUE, b11 & UByte.MAX_VALUE) > 0 ? b11 : b10;
    }

    @SinceKotlin(version = "1.5")
    @WasExperimental(markerClass = {ExperimentalUnsignedTypes.class})
    /* renamed from: coerceAtMost-eb3DHEI  reason: not valid java name */
    public static final long m2919coerceAtMosteb3DHEI(long j10, long j11) {
        return UnsignedKt.ulongCompare(j10, j11) > 0 ? j11 : j10;
    }

    @SinceKotlin(version = "1.5")
    @WasExperimental(markerClass = {ExperimentalUnsignedTypes.class})
    /* renamed from: coerceIn-JPwROB0  reason: not valid java name */
    public static final long m2920coerceInJPwROB0(long j10, @NotNull ClosedRange<ULong> range) {
        Intrinsics.checkNotNullParameter(range, "range");
        if (range instanceof ClosedFloatingPointRange) {
            return ((ULong) RangesKt___RangesKt.coerceIn(ULong.m1823boximpl(j10), (ClosedFloatingPointRange<ULong>) range)).m1880unboximpl();
        }
        if (!range.isEmpty()) {
            return UnsignedKt.ulongCompare(j10, range.getStart().m1880unboximpl()) < 0 ? range.getStart().m1880unboximpl() : UnsignedKt.ulongCompare(j10, range.getEndInclusive().m1880unboximpl()) > 0 ? range.getEndInclusive().m1880unboximpl() : j10;
        }
        throw new IllegalArgumentException("Cannot coerce value to an empty range: " + range + JwtParser.SEPARATOR_CHAR);
    }

    @SinceKotlin(version = "1.5")
    @WasExperimental(markerClass = {ExperimentalUnsignedTypes.class})
    /* renamed from: coerceIn-VKSA0NQ  reason: not valid java name */
    public static final short m2921coerceInVKSA0NQ(short s10, short s11, short s12) {
        int i9 = s11 & UShort.MAX_VALUE;
        int i10 = s12 & UShort.MAX_VALUE;
        if (Intrinsics.compare(i9, i10) <= 0) {
            int i11 = 65535 & s10;
            return Intrinsics.compare(i11, i9) < 0 ? s11 : Intrinsics.compare(i11, i10) > 0 ? s12 : s10;
        }
        throw new IllegalArgumentException("Cannot coerce value to an empty range: maximum " + ((Object) UShort.m1978toStringimpl(s12)) + " is less than minimum " + ((Object) UShort.m1978toStringimpl(s11)) + JwtParser.SEPARATOR_CHAR);
    }

    @SinceKotlin(version = "1.5")
    @WasExperimental(markerClass = {ExperimentalUnsignedTypes.class})
    /* renamed from: coerceIn-WZ9TVnA  reason: not valid java name */
    public static final int m2922coerceInWZ9TVnA(int i9, int i10, int i11) {
        if (UnsignedKt.uintCompare(i10, i11) <= 0) {
            return UnsignedKt.uintCompare(i9, i10) < 0 ? i10 : UnsignedKt.uintCompare(i9, i11) > 0 ? i11 : i9;
        }
        throw new IllegalArgumentException("Cannot coerce value to an empty range: maximum " + ((Object) UInt.m1796toStringimpl(i11)) + " is less than minimum " + ((Object) UInt.m1796toStringimpl(i10)) + JwtParser.SEPARATOR_CHAR);
    }

    @SinceKotlin(version = "1.5")
    @WasExperimental(markerClass = {ExperimentalUnsignedTypes.class})
    /* renamed from: coerceIn-b33U2AM  reason: not valid java name */
    public static final byte m2923coerceInb33U2AM(byte b10, byte b11, byte b12) {
        int i9 = b11 & UByte.MAX_VALUE;
        int i10 = b12 & UByte.MAX_VALUE;
        if (Intrinsics.compare(i9, i10) <= 0) {
            int i11 = b10 & UByte.MAX_VALUE;
            return Intrinsics.compare(i11, i9) < 0 ? b11 : Intrinsics.compare(i11, i10) > 0 ? b12 : b10;
        }
        throw new IllegalArgumentException("Cannot coerce value to an empty range: maximum " + ((Object) UByte.m1718toStringimpl(b12)) + " is less than minimum " + ((Object) UByte.m1718toStringimpl(b11)) + JwtParser.SEPARATOR_CHAR);
    }

    @SinceKotlin(version = "1.5")
    @WasExperimental(markerClass = {ExperimentalUnsignedTypes.class})
    /* renamed from: coerceIn-sambcqE  reason: not valid java name */
    public static final long m2924coerceInsambcqE(long j10, long j11, long j12) {
        if (UnsignedKt.ulongCompare(j11, j12) <= 0) {
            return UnsignedKt.ulongCompare(j10, j11) < 0 ? j11 : UnsignedKt.ulongCompare(j10, j12) > 0 ? j12 : j10;
        }
        throw new IllegalArgumentException("Cannot coerce value to an empty range: maximum " + ((Object) ULong.m1874toStringimpl(j12)) + " is less than minimum " + ((Object) ULong.m1874toStringimpl(j11)) + JwtParser.SEPARATOR_CHAR);
    }

    @SinceKotlin(version = "1.5")
    @WasExperimental(markerClass = {ExperimentalUnsignedTypes.class})
    /* renamed from: coerceIn-wuiCnnA  reason: not valid java name */
    public static final int m2925coerceInwuiCnnA(int i9, @NotNull ClosedRange<UInt> range) {
        Intrinsics.checkNotNullParameter(range, "range");
        if (range instanceof ClosedFloatingPointRange) {
            return ((UInt) RangesKt___RangesKt.coerceIn(UInt.m1745boximpl(i9), (ClosedFloatingPointRange<UInt>) range)).m1802unboximpl();
        }
        if (!range.isEmpty()) {
            return UnsignedKt.uintCompare(i9, range.getStart().m1802unboximpl()) < 0 ? range.getStart().m1802unboximpl() : UnsignedKt.uintCompare(i9, range.getEndInclusive().m1802unboximpl()) > 0 ? range.getEndInclusive().m1802unboximpl() : i9;
        }
        throw new IllegalArgumentException("Cannot coerce value to an empty range: " + range + JwtParser.SEPARATOR_CHAR);
    }

    @SinceKotlin(version = "1.5")
    @WasExperimental(markerClass = {ExperimentalUnsignedTypes.class})
    /* renamed from: contains-68kG9v0  reason: not valid java name */
    public static final boolean m2926contains68kG9v0(@NotNull UIntRange contains, byte b10) {
        Intrinsics.checkNotNullParameter(contains, "$this$contains");
        return contains.m2902containsWZ4Q5Ns(UInt.m1751constructorimpl(b10 & UByte.MAX_VALUE));
    }

    @SinceKotlin(version = "1.5")
    @WasExperimental(markerClass = {ExperimentalUnsignedTypes.class})
    @InlineOnly
    /* renamed from: contains-GYNo2lE  reason: not valid java name */
    private static final boolean m2927containsGYNo2lE(ULongRange contains, ULong uLong) {
        Intrinsics.checkNotNullParameter(contains, "$this$contains");
        return uLong != null && contains.m2909containsVKZWuLQ(uLong.m1880unboximpl());
    }

    @SinceKotlin(version = "1.5")
    @WasExperimental(markerClass = {ExperimentalUnsignedTypes.class})
    /* renamed from: contains-Gab390E  reason: not valid java name */
    public static final boolean m2928containsGab390E(@NotNull ULongRange contains, int i9) {
        Intrinsics.checkNotNullParameter(contains, "$this$contains");
        return contains.m2909containsVKZWuLQ(ULong.m1829constructorimpl(i9 & 4294967295L));
    }

    @SinceKotlin(version = "1.5")
    @WasExperimental(markerClass = {ExperimentalUnsignedTypes.class})
    /* renamed from: contains-ULb-yJY  reason: not valid java name */
    public static final boolean m2929containsULbyJY(@NotNull ULongRange contains, byte b10) {
        Intrinsics.checkNotNullParameter(contains, "$this$contains");
        return contains.m2909containsVKZWuLQ(ULong.m1829constructorimpl(b10 & 255));
    }

    @SinceKotlin(version = "1.5")
    @WasExperimental(markerClass = {ExperimentalUnsignedTypes.class})
    /* renamed from: contains-ZsK3CEQ  reason: not valid java name */
    public static final boolean m2930containsZsK3CEQ(@NotNull UIntRange contains, short s10) {
        Intrinsics.checkNotNullParameter(contains, "$this$contains");
        return contains.m2902containsWZ4Q5Ns(UInt.m1751constructorimpl(s10 & UShort.MAX_VALUE));
    }

    @SinceKotlin(version = "1.5")
    @WasExperimental(markerClass = {ExperimentalUnsignedTypes.class})
    @InlineOnly
    /* renamed from: contains-biwQdVI  reason: not valid java name */
    private static final boolean m2931containsbiwQdVI(UIntRange contains, UInt uInt) {
        Intrinsics.checkNotNullParameter(contains, "$this$contains");
        return uInt != null && contains.m2902containsWZ4Q5Ns(uInt.m1802unboximpl());
    }

    @SinceKotlin(version = "1.5")
    @WasExperimental(markerClass = {ExperimentalUnsignedTypes.class})
    /* renamed from: contains-fz5IDCE  reason: not valid java name */
    public static final boolean m2932containsfz5IDCE(@NotNull UIntRange contains, long j10) {
        Intrinsics.checkNotNullParameter(contains, "$this$contains");
        return ULong.m1829constructorimpl(j10 >>> 32) == 0 && contains.m2902containsWZ4Q5Ns(UInt.m1751constructorimpl((int) j10));
    }

    @SinceKotlin(version = "1.5")
    @WasExperimental(markerClass = {ExperimentalUnsignedTypes.class})
    /* renamed from: contains-uhHAxoY  reason: not valid java name */
    public static final boolean m2933containsuhHAxoY(@NotNull ULongRange contains, short s10) {
        Intrinsics.checkNotNullParameter(contains, "$this$contains");
        return contains.m2909containsVKZWuLQ(ULong.m1829constructorimpl(s10 & WebSocketProtocol.PAYLOAD_SHORT_MAX));
    }

    @SinceKotlin(version = "1.5")
    @WasExperimental(markerClass = {ExperimentalUnsignedTypes.class})
    @NotNull
    /* renamed from: downTo-5PvTz6A  reason: not valid java name */
    public static final UIntProgression m2934downTo5PvTz6A(short s10, short s11) {
        return UIntProgression.Companion.m2900fromClosedRangeNkh28Cs(UInt.m1751constructorimpl(s10 & UShort.MAX_VALUE), UInt.m1751constructorimpl(s11 & UShort.MAX_VALUE), -1);
    }

    @SinceKotlin(version = "1.5")
    @WasExperimental(markerClass = {ExperimentalUnsignedTypes.class})
    @NotNull
    /* renamed from: downTo-J1ME1BU  reason: not valid java name */
    public static final UIntProgression m2935downToJ1ME1BU(int i9, int i10) {
        return UIntProgression.Companion.m2900fromClosedRangeNkh28Cs(i9, i10, -1);
    }

    @SinceKotlin(version = "1.5")
    @WasExperimental(markerClass = {ExperimentalUnsignedTypes.class})
    @NotNull
    /* renamed from: downTo-Kr8caGY  reason: not valid java name */
    public static final UIntProgression m2936downToKr8caGY(byte b10, byte b11) {
        return UIntProgression.Companion.m2900fromClosedRangeNkh28Cs(UInt.m1751constructorimpl(b10 & UByte.MAX_VALUE), UInt.m1751constructorimpl(b11 & UByte.MAX_VALUE), -1);
    }

    @SinceKotlin(version = "1.5")
    @WasExperimental(markerClass = {ExperimentalUnsignedTypes.class})
    @NotNull
    /* renamed from: downTo-eb3DHEI  reason: not valid java name */
    public static final ULongProgression m2937downToeb3DHEI(long j10, long j11) {
        return ULongProgression.Companion.m2907fromClosedRange7ftBX0g(j10, j11, -1L);
    }

    @SinceKotlin(version = "1.7")
    public static final int first(@NotNull UIntProgression uIntProgression) {
        Intrinsics.checkNotNullParameter(uIntProgression, "<this>");
        if (!uIntProgression.isEmpty()) {
            return uIntProgression.m2898getFirstpVg5ArA();
        }
        throw new NoSuchElementException("Progression " + uIntProgression + " is empty.");
    }

    @SinceKotlin(version = "1.7")
    @Nullable
    public static final UInt firstOrNull(@NotNull UIntProgression uIntProgression) {
        Intrinsics.checkNotNullParameter(uIntProgression, "<this>");
        if (uIntProgression.isEmpty()) {
            return null;
        }
        return UInt.m1745boximpl(uIntProgression.m2898getFirstpVg5ArA());
    }

    @SinceKotlin(version = "1.7")
    public static final int last(@NotNull UIntProgression uIntProgression) {
        Intrinsics.checkNotNullParameter(uIntProgression, "<this>");
        if (!uIntProgression.isEmpty()) {
            return uIntProgression.m2899getLastpVg5ArA();
        }
        throw new NoSuchElementException("Progression " + uIntProgression + " is empty.");
    }

    @SinceKotlin(version = "1.7")
    @Nullable
    public static final UInt lastOrNull(@NotNull UIntProgression uIntProgression) {
        Intrinsics.checkNotNullParameter(uIntProgression, "<this>");
        if (uIntProgression.isEmpty()) {
            return null;
        }
        return UInt.m1745boximpl(uIntProgression.m2899getLastpVg5ArA());
    }

    @SinceKotlin(version = "1.5")
    @WasExperimental(markerClass = {ExperimentalUnsignedTypes.class})
    @InlineOnly
    private static final int random(UIntRange uIntRange) {
        Intrinsics.checkNotNullParameter(uIntRange, "<this>");
        return random(uIntRange, Random.Default);
    }

    @SinceKotlin(version = "1.5")
    @WasExperimental(markerClass = {ExperimentalStdlibApi.class, ExperimentalUnsignedTypes.class})
    @InlineOnly
    private static final UInt randomOrNull(UIntRange uIntRange) {
        Intrinsics.checkNotNullParameter(uIntRange, "<this>");
        return randomOrNull(uIntRange, Random.Default);
    }

    @SinceKotlin(version = "1.5")
    @WasExperimental(markerClass = {ExperimentalUnsignedTypes.class})
    @NotNull
    public static final UIntProgression reversed(@NotNull UIntProgression uIntProgression) {
        Intrinsics.checkNotNullParameter(uIntProgression, "<this>");
        return UIntProgression.Companion.m2900fromClosedRangeNkh28Cs(uIntProgression.m2899getLastpVg5ArA(), uIntProgression.m2898getFirstpVg5ArA(), -uIntProgression.getStep());
    }

    @SinceKotlin(version = "1.5")
    @WasExperimental(markerClass = {ExperimentalUnsignedTypes.class})
    @NotNull
    public static final UIntProgression step(@NotNull UIntProgression uIntProgression, int i9) {
        Intrinsics.checkNotNullParameter(uIntProgression, "<this>");
        RangesKt__RangesKt.checkStepIsPositive(i9 > 0, Integer.valueOf(i9));
        UIntProgression.Companion companion = UIntProgression.Companion;
        int m2898getFirstpVg5ArA = uIntProgression.m2898getFirstpVg5ArA();
        int m2899getLastpVg5ArA = uIntProgression.m2899getLastpVg5ArA();
        if (uIntProgression.getStep() <= 0) {
            i9 = -i9;
        }
        return companion.m2900fromClosedRangeNkh28Cs(m2898getFirstpVg5ArA, m2899getLastpVg5ArA, i9);
    }

    @SinceKotlin(version = "1.5")
    @WasExperimental(markerClass = {ExperimentalUnsignedTypes.class})
    @NotNull
    /* renamed from: until-5PvTz6A  reason: not valid java name */
    public static final UIntRange m2938until5PvTz6A(short s10, short s11) {
        int i9 = s11 & UShort.MAX_VALUE;
        return Intrinsics.compare(i9, 0) <= 0 ? UIntRange.Companion.getEMPTY() : new UIntRange(UInt.m1751constructorimpl(s10 & UShort.MAX_VALUE), UInt.m1751constructorimpl(UInt.m1751constructorimpl(i9) - 1), null);
    }

    @SinceKotlin(version = "1.5")
    @WasExperimental(markerClass = {ExperimentalUnsignedTypes.class})
    @NotNull
    /* renamed from: until-J1ME1BU  reason: not valid java name */
    public static final UIntRange m2939untilJ1ME1BU(int i9, int i10) {
        return UnsignedKt.uintCompare(i10, 0) <= 0 ? UIntRange.Companion.getEMPTY() : new UIntRange(i9, UInt.m1751constructorimpl(i10 - 1), null);
    }

    @SinceKotlin(version = "1.5")
    @WasExperimental(markerClass = {ExperimentalUnsignedTypes.class})
    @NotNull
    /* renamed from: until-Kr8caGY  reason: not valid java name */
    public static final UIntRange m2940untilKr8caGY(byte b10, byte b11) {
        int i9 = b11 & UByte.MAX_VALUE;
        return Intrinsics.compare(i9, 0) <= 0 ? UIntRange.Companion.getEMPTY() : new UIntRange(UInt.m1751constructorimpl(b10 & UByte.MAX_VALUE), UInt.m1751constructorimpl(UInt.m1751constructorimpl(i9) - 1), null);
    }

    @SinceKotlin(version = "1.5")
    @WasExperimental(markerClass = {ExperimentalUnsignedTypes.class})
    @NotNull
    /* renamed from: until-eb3DHEI  reason: not valid java name */
    public static final ULongRange m2941untileb3DHEI(long j10, long j11) {
        return UnsignedKt.ulongCompare(j11, 0L) <= 0 ? ULongRange.Companion.getEMPTY() : new ULongRange(j10, ULong.m1829constructorimpl(j11 - ULong.m1829constructorimpl(1 & 4294967295L)), null);
    }

    @SinceKotlin(version = "1.7")
    @Nullable
    public static final ULong firstOrNull(@NotNull ULongProgression uLongProgression) {
        Intrinsics.checkNotNullParameter(uLongProgression, "<this>");
        if (uLongProgression.isEmpty()) {
            return null;
        }
        return ULong.m1823boximpl(uLongProgression.m2905getFirstsVKNKU());
    }

    @SinceKotlin(version = "1.7")
    @Nullable
    public static final ULong lastOrNull(@NotNull ULongProgression uLongProgression) {
        Intrinsics.checkNotNullParameter(uLongProgression, "<this>");
        if (uLongProgression.isEmpty()) {
            return null;
        }
        return ULong.m1823boximpl(uLongProgression.m2906getLastsVKNKU());
    }

    @SinceKotlin(version = "1.5")
    @WasExperimental(markerClass = {ExperimentalUnsignedTypes.class})
    @InlineOnly
    private static final long random(ULongRange uLongRange) {
        Intrinsics.checkNotNullParameter(uLongRange, "<this>");
        return random(uLongRange, Random.Default);
    }

    @SinceKotlin(version = "1.5")
    @WasExperimental(markerClass = {ExperimentalStdlibApi.class, ExperimentalUnsignedTypes.class})
    @InlineOnly
    private static final ULong randomOrNull(ULongRange uLongRange) {
        Intrinsics.checkNotNullParameter(uLongRange, "<this>");
        return randomOrNull(uLongRange, Random.Default);
    }

    @SinceKotlin(version = "1.5")
    @WasExperimental(markerClass = {ExperimentalUnsignedTypes.class})
    @NotNull
    public static final ULongProgression reversed(@NotNull ULongProgression uLongProgression) {
        Intrinsics.checkNotNullParameter(uLongProgression, "<this>");
        return ULongProgression.Companion.m2907fromClosedRange7ftBX0g(uLongProgression.m2906getLastsVKNKU(), uLongProgression.m2905getFirstsVKNKU(), -uLongProgression.getStep());
    }

    @SinceKotlin(version = "1.5")
    @WasExperimental(markerClass = {ExperimentalUnsignedTypes.class})
    public static final int random(@NotNull UIntRange uIntRange, @NotNull Random random) {
        Intrinsics.checkNotNullParameter(uIntRange, "<this>");
        Intrinsics.checkNotNullParameter(random, "random");
        try {
            return URandomKt.nextUInt(random, uIntRange);
        } catch (IllegalArgumentException e10) {
            throw new NoSuchElementException(e10.getMessage());
        }
    }

    @SinceKotlin(version = "1.5")
    @WasExperimental(markerClass = {ExperimentalStdlibApi.class, ExperimentalUnsignedTypes.class})
    @Nullable
    public static final UInt randomOrNull(@NotNull UIntRange uIntRange, @NotNull Random random) {
        Intrinsics.checkNotNullParameter(uIntRange, "<this>");
        Intrinsics.checkNotNullParameter(random, "random");
        if (uIntRange.isEmpty()) {
            return null;
        }
        return UInt.m1745boximpl(URandomKt.nextUInt(random, uIntRange));
    }

    @SinceKotlin(version = "1.5")
    @WasExperimental(markerClass = {ExperimentalUnsignedTypes.class})
    @NotNull
    public static final ULongProgression step(@NotNull ULongProgression uLongProgression, long j10) {
        Intrinsics.checkNotNullParameter(uLongProgression, "<this>");
        RangesKt__RangesKt.checkStepIsPositive(j10 > 0, Long.valueOf(j10));
        ULongProgression.Companion companion = ULongProgression.Companion;
        long m2905getFirstsVKNKU = uLongProgression.m2905getFirstsVKNKU();
        long m2906getLastsVKNKU = uLongProgression.m2906getLastsVKNKU();
        if (uLongProgression.getStep() <= 0) {
            j10 = -j10;
        }
        return companion.m2907fromClosedRange7ftBX0g(m2905getFirstsVKNKU, m2906getLastsVKNKU, j10);
    }

    @SinceKotlin(version = "1.7")
    public static final long first(@NotNull ULongProgression uLongProgression) {
        Intrinsics.checkNotNullParameter(uLongProgression, "<this>");
        if (!uLongProgression.isEmpty()) {
            return uLongProgression.m2905getFirstsVKNKU();
        }
        throw new NoSuchElementException("Progression " + uLongProgression + " is empty.");
    }

    @SinceKotlin(version = "1.7")
    public static final long last(@NotNull ULongProgression uLongProgression) {
        Intrinsics.checkNotNullParameter(uLongProgression, "<this>");
        if (!uLongProgression.isEmpty()) {
            return uLongProgression.m2906getLastsVKNKU();
        }
        throw new NoSuchElementException("Progression " + uLongProgression + " is empty.");
    }

    @SinceKotlin(version = "1.5")
    @WasExperimental(markerClass = {ExperimentalUnsignedTypes.class})
    public static final long random(@NotNull ULongRange uLongRange, @NotNull Random random) {
        Intrinsics.checkNotNullParameter(uLongRange, "<this>");
        Intrinsics.checkNotNullParameter(random, "random");
        try {
            return URandomKt.nextULong(random, uLongRange);
        } catch (IllegalArgumentException e10) {
            throw new NoSuchElementException(e10.getMessage());
        }
    }

    @SinceKotlin(version = "1.5")
    @WasExperimental(markerClass = {ExperimentalStdlibApi.class, ExperimentalUnsignedTypes.class})
    @Nullable
    public static final ULong randomOrNull(@NotNull ULongRange uLongRange, @NotNull Random random) {
        Intrinsics.checkNotNullParameter(uLongRange, "<this>");
        Intrinsics.checkNotNullParameter(random, "random");
        if (uLongRange.isEmpty()) {
            return null;
        }
        return ULong.m1823boximpl(URandomKt.nextULong(random, uLongRange));
    }
}
