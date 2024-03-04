package kotlin.collections.unsigned;

import java.math.BigDecimal;
import java.math.BigInteger;
import java.util.Comparator;
import java.util.List;
import kotlin.Deprecated;
import kotlin.DeprecatedSinceKotlin;
import kotlin.ExperimentalUnsignedTypes;
import kotlin.Metadata;
import kotlin.OverloadResolutionByLambdaReturnType;
import kotlin.ReplaceWith;
import kotlin.SinceKotlin;
import kotlin.UByte;
import kotlin.UByteArray;
import kotlin.UInt;
import kotlin.UIntArray;
import kotlin.ULong;
import kotlin.ULongArray;
import kotlin.UShort;
import kotlin.UShortArray;
import kotlin.UnsignedKt;
import kotlin.collections.AbstractList;
import kotlin.collections.ArraysKt___ArraysKt;
import kotlin.internal.InlineOnly;
import kotlin.jvm.JvmName;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.ranges.IntRange;
import org.jetbrains.annotations.NotNull;
@Metadata(d1 = {"\u0000h\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b \n\u0002\u0010\u000f\n\u0000\n\u0002\u0018\u0002\n\u0002\b\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0018\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\t\u001a\u001c\u0010\u0000\u001a\b\u0012\u0004\u0012\u00020\u00020\u0001*\u00020\u0003H\u0007ø\u0001\u0000¢\u0006\u0004\b\u0004\u0010\u0005\u001a\u001c\u0010\u0000\u001a\b\u0012\u0004\u0012\u00020\u00060\u0001*\u00020\u0007H\u0007ø\u0001\u0000¢\u0006\u0004\b\b\u0010\t\u001a\u001c\u0010\u0000\u001a\b\u0012\u0004\u0012\u00020\n0\u0001*\u00020\u000bH\u0007ø\u0001\u0000¢\u0006\u0004\b\f\u0010\r\u001a\u001c\u0010\u0000\u001a\b\u0012\u0004\u0012\u00020\u000e0\u0001*\u00020\u000fH\u0007ø\u0001\u0000¢\u0006\u0004\b\u0010\u0010\u0011\u001a2\u0010\u0012\u001a\u00020\u0013*\u00020\u00032\u0006\u0010\u0014\u001a\u00020\u00022\b\b\u0002\u0010\u0015\u001a\u00020\u00132\b\b\u0002\u0010\u0016\u001a\u00020\u0013H\u0007ø\u0001\u0000¢\u0006\u0004\b\u0017\u0010\u0018\u001a2\u0010\u0012\u001a\u00020\u0013*\u00020\u00072\u0006\u0010\u0014\u001a\u00020\u00062\b\b\u0002\u0010\u0015\u001a\u00020\u00132\b\b\u0002\u0010\u0016\u001a\u00020\u0013H\u0007ø\u0001\u0000¢\u0006\u0004\b\u0019\u0010\u001a\u001a2\u0010\u0012\u001a\u00020\u0013*\u00020\u000b2\u0006\u0010\u0014\u001a\u00020\n2\b\b\u0002\u0010\u0015\u001a\u00020\u00132\b\b\u0002\u0010\u0016\u001a\u00020\u0013H\u0007ø\u0001\u0000¢\u0006\u0004\b\u001b\u0010\u001c\u001a2\u0010\u0012\u001a\u00020\u0013*\u00020\u000f2\u0006\u0010\u0014\u001a\u00020\u000e2\b\b\u0002\u0010\u0015\u001a\u00020\u00132\b\b\u0002\u0010\u0016\u001a\u00020\u0013H\u0007ø\u0001\u0000¢\u0006\u0004\b\u001d\u0010\u001e\u001a\u001f\u0010\u001f\u001a\u00020\u0002*\u00020\u00032\u0006\u0010 \u001a\u00020\u0013H\u0087\bø\u0001\u0000¢\u0006\u0004\b!\u0010\"\u001a\u001f\u0010\u001f\u001a\u00020\u0006*\u00020\u00072\u0006\u0010 \u001a\u00020\u0013H\u0087\bø\u0001\u0000¢\u0006\u0004\b#\u0010$\u001a\u001f\u0010\u001f\u001a\u00020\n*\u00020\u000b2\u0006\u0010 \u001a\u00020\u0013H\u0087\bø\u0001\u0000¢\u0006\u0004\b%\u0010&\u001a\u001f\u0010\u001f\u001a\u00020\u000e*\u00020\u000f2\u0006\u0010 \u001a\u00020\u0013H\u0087\bø\u0001\u0000¢\u0006\u0004\b'\u0010(\u001a\u0018\u0010)\u001a\u0004\u0018\u00010\u0002*\u00020\u0003H\u0007ø\u0001\u0000¢\u0006\u0004\b*\u0010+\u001a\u0018\u0010)\u001a\u0004\u0018\u00010\u0006*\u00020\u0007H\u0007ø\u0001\u0000¢\u0006\u0004\b,\u0010-\u001a\u0018\u0010)\u001a\u0004\u0018\u00010\n*\u00020\u000bH\u0007ø\u0001\u0000¢\u0006\u0004\b.\u0010/\u001a\u0018\u0010)\u001a\u0004\u0018\u00010\u000e*\u00020\u000fH\u0007ø\u0001\u0000¢\u0006\u0004\b0\u00101\u001a@\u00102\u001a\u0004\u0018\u00010\u0002\"\u000e\b\u0000\u00103*\b\u0012\u0004\u0012\u0002H304*\u00020\u00032\u0012\u00105\u001a\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u0002H306H\u0087\bø\u0001\u0001ø\u0001\u0000¢\u0006\u0004\b7\u00108\u001a@\u00102\u001a\u0004\u0018\u00010\u0006\"\u000e\b\u0000\u00103*\b\u0012\u0004\u0012\u0002H304*\u00020\u00072\u0012\u00105\u001a\u000e\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u0002H306H\u0087\bø\u0001\u0001ø\u0001\u0000¢\u0006\u0004\b9\u0010:\u001a@\u00102\u001a\u0004\u0018\u00010\n\"\u000e\b\u0000\u00103*\b\u0012\u0004\u0012\u0002H304*\u00020\u000b2\u0012\u00105\u001a\u000e\u0012\u0004\u0012\u00020\n\u0012\u0004\u0012\u0002H306H\u0087\bø\u0001\u0001ø\u0001\u0000¢\u0006\u0004\b;\u0010<\u001a@\u00102\u001a\u0004\u0018\u00010\u000e\"\u000e\b\u0000\u00103*\b\u0012\u0004\u0012\u0002H304*\u00020\u000f2\u0012\u00105\u001a\u000e\u0012\u0004\u0012\u00020\u000e\u0012\u0004\u0012\u0002H306H\u0087\bø\u0001\u0001ø\u0001\u0000¢\u0006\u0004\b=\u0010>\u001a4\u0010?\u001a\u0004\u0018\u00010\u0002*\u00020\u00032\u001a\u0010@\u001a\u0016\u0012\u0006\b\u0000\u0012\u00020\u00020Aj\n\u0012\u0006\b\u0000\u0012\u00020\u0002`BH\u0007ø\u0001\u0000¢\u0006\u0004\bC\u0010D\u001a4\u0010?\u001a\u0004\u0018\u00010\u0006*\u00020\u00072\u001a\u0010@\u001a\u0016\u0012\u0006\b\u0000\u0012\u00020\u00060Aj\n\u0012\u0006\b\u0000\u0012\u00020\u0006`BH\u0007ø\u0001\u0000¢\u0006\u0004\bE\u0010F\u001a4\u0010?\u001a\u0004\u0018\u00010\n*\u00020\u000b2\u001a\u0010@\u001a\u0016\u0012\u0006\b\u0000\u0012\u00020\n0Aj\n\u0012\u0006\b\u0000\u0012\u00020\n`BH\u0007ø\u0001\u0000¢\u0006\u0004\bG\u0010H\u001a4\u0010?\u001a\u0004\u0018\u00010\u000e*\u00020\u000f2\u001a\u0010@\u001a\u0016\u0012\u0006\b\u0000\u0012\u00020\u000e0Aj\n\u0012\u0006\b\u0000\u0012\u00020\u000e`BH\u0007ø\u0001\u0000¢\u0006\u0004\bI\u0010J\u001a\u0018\u0010K\u001a\u0004\u0018\u00010\u0002*\u00020\u0003H\u0007ø\u0001\u0000¢\u0006\u0004\bL\u0010+\u001a\u0018\u0010K\u001a\u0004\u0018\u00010\u0006*\u00020\u0007H\u0007ø\u0001\u0000¢\u0006\u0004\bM\u0010-\u001a\u0018\u0010K\u001a\u0004\u0018\u00010\n*\u00020\u000bH\u0007ø\u0001\u0000¢\u0006\u0004\bN\u0010/\u001a\u0018\u0010K\u001a\u0004\u0018\u00010\u000e*\u00020\u000fH\u0007ø\u0001\u0000¢\u0006\u0004\bO\u00101\u001a@\u0010P\u001a\u0004\u0018\u00010\u0002\"\u000e\b\u0000\u00103*\b\u0012\u0004\u0012\u0002H304*\u00020\u00032\u0012\u00105\u001a\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u0002H306H\u0087\bø\u0001\u0001ø\u0001\u0000¢\u0006\u0004\bQ\u00108\u001a@\u0010P\u001a\u0004\u0018\u00010\u0006\"\u000e\b\u0000\u00103*\b\u0012\u0004\u0012\u0002H304*\u00020\u00072\u0012\u00105\u001a\u000e\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u0002H306H\u0087\bø\u0001\u0001ø\u0001\u0000¢\u0006\u0004\bR\u0010:\u001a@\u0010P\u001a\u0004\u0018\u00010\n\"\u000e\b\u0000\u00103*\b\u0012\u0004\u0012\u0002H304*\u00020\u000b2\u0012\u00105\u001a\u000e\u0012\u0004\u0012\u00020\n\u0012\u0004\u0012\u0002H306H\u0087\bø\u0001\u0001ø\u0001\u0000¢\u0006\u0004\bS\u0010<\u001a@\u0010P\u001a\u0004\u0018\u00010\u000e\"\u000e\b\u0000\u00103*\b\u0012\u0004\u0012\u0002H304*\u00020\u000f2\u0012\u00105\u001a\u000e\u0012\u0004\u0012\u00020\u000e\u0012\u0004\u0012\u0002H306H\u0087\bø\u0001\u0001ø\u0001\u0000¢\u0006\u0004\bT\u0010>\u001a4\u0010U\u001a\u0004\u0018\u00010\u0002*\u00020\u00032\u001a\u0010@\u001a\u0016\u0012\u0006\b\u0000\u0012\u00020\u00020Aj\n\u0012\u0006\b\u0000\u0012\u00020\u0002`BH\u0007ø\u0001\u0000¢\u0006\u0004\bV\u0010D\u001a4\u0010U\u001a\u0004\u0018\u00010\u0006*\u00020\u00072\u001a\u0010@\u001a\u0016\u0012\u0006\b\u0000\u0012\u00020\u00060Aj\n\u0012\u0006\b\u0000\u0012\u00020\u0006`BH\u0007ø\u0001\u0000¢\u0006\u0004\bW\u0010F\u001a4\u0010U\u001a\u0004\u0018\u00010\n*\u00020\u000b2\u001a\u0010@\u001a\u0016\u0012\u0006\b\u0000\u0012\u00020\n0Aj\n\u0012\u0006\b\u0000\u0012\u00020\n`BH\u0007ø\u0001\u0000¢\u0006\u0004\bX\u0010H\u001a4\u0010U\u001a\u0004\u0018\u00010\u000e*\u00020\u000f2\u001a\u0010@\u001a\u0016\u0012\u0006\b\u0000\u0012\u00020\u000e0Aj\n\u0012\u0006\b\u0000\u0012\u00020\u000e`BH\u0007ø\u0001\u0000¢\u0006\u0004\bY\u0010J\u001a.\u0010Z\u001a\u00020[*\u00020\u00032\u0012\u00105\u001a\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020[06H\u0087\bø\u0001\u0001ø\u0001\u0000¢\u0006\u0004\b\\\u0010]\u001a.\u0010Z\u001a\u00020^*\u00020\u00032\u0012\u00105\u001a\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020^06H\u0087\bø\u0001\u0001ø\u0001\u0000¢\u0006\u0004\b_\u0010`\u001a.\u0010Z\u001a\u00020[*\u00020\u00072\u0012\u00105\u001a\u000e\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020[06H\u0087\bø\u0001\u0001ø\u0001\u0000¢\u0006\u0004\b\\\u0010a\u001a.\u0010Z\u001a\u00020^*\u00020\u00072\u0012\u00105\u001a\u000e\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020^06H\u0087\bø\u0001\u0001ø\u0001\u0000¢\u0006\u0004\b_\u0010b\u001a.\u0010Z\u001a\u00020[*\u00020\u000b2\u0012\u00105\u001a\u000e\u0012\u0004\u0012\u00020\n\u0012\u0004\u0012\u00020[06H\u0087\bø\u0001\u0001ø\u0001\u0000¢\u0006\u0004\b\\\u0010c\u001a.\u0010Z\u001a\u00020^*\u00020\u000b2\u0012\u00105\u001a\u000e\u0012\u0004\u0012\u00020\n\u0012\u0004\u0012\u00020^06H\u0087\bø\u0001\u0001ø\u0001\u0000¢\u0006\u0004\b_\u0010d\u001a.\u0010Z\u001a\u00020[*\u00020\u000f2\u0012\u00105\u001a\u000e\u0012\u0004\u0012\u00020\u000e\u0012\u0004\u0012\u00020[06H\u0087\bø\u0001\u0001ø\u0001\u0000¢\u0006\u0004\b\\\u0010e\u001a.\u0010Z\u001a\u00020^*\u00020\u000f2\u0012\u00105\u001a\u000e\u0012\u0004\u0012\u00020\u000e\u0012\u0004\u0012\u00020^06H\u0087\bø\u0001\u0001ø\u0001\u0000¢\u0006\u0004\b_\u0010f\u0082\u0002\u000b\n\u0002\b\u0019\n\u0005\b\u009920\u0001¨\u0006g"}, d2 = {"asList", "", "Lkotlin/UByte;", "Lkotlin/UByteArray;", "asList-GBYM_sE", "([B)Ljava/util/List;", "Lkotlin/UInt;", "Lkotlin/UIntArray;", "asList--ajY-9A", "([I)Ljava/util/List;", "Lkotlin/ULong;", "Lkotlin/ULongArray;", "asList-QwZRm1k", "([J)Ljava/util/List;", "Lkotlin/UShort;", "Lkotlin/UShortArray;", "asList-rL5Bavg", "([S)Ljava/util/List;", "binarySearch", "", "element", "fromIndex", "toIndex", "binarySearch-WpHrYlw", "([BBII)I", "binarySearch-2fe2U9s", "([IIII)I", "binarySearch-K6DWlUc", "([JJII)I", "binarySearch-EtDCXyQ", "([SSII)I", "elementAt", "index", "elementAt-PpDY95g", "([BI)B", "elementAt-qFRl0hI", "([II)I", "elementAt-r7IrZao", "([JI)J", "elementAt-nggk6HY", "([SI)S", "max", "max-GBYM_sE", "([B)Lkotlin/UByte;", "max--ajY-9A", "([I)Lkotlin/UInt;", "max-QwZRm1k", "([J)Lkotlin/ULong;", "max-rL5Bavg", "([S)Lkotlin/UShort;", "maxBy", "R", "", "selector", "Lkotlin/Function1;", "maxBy-JOV_ifY", "([BLkotlin/jvm/functions/Function1;)Lkotlin/UByte;", "maxBy-jgv0xPQ", "([ILkotlin/jvm/functions/Function1;)Lkotlin/UInt;", "maxBy-MShoTSo", "([JLkotlin/jvm/functions/Function1;)Lkotlin/ULong;", "maxBy-xTcfx_M", "([SLkotlin/jvm/functions/Function1;)Lkotlin/UShort;", "maxWith", "comparator", "Ljava/util/Comparator;", "Lkotlin/Comparator;", "maxWith-XMRcp5o", "([BLjava/util/Comparator;)Lkotlin/UByte;", "maxWith-YmdZ_VM", "([ILjava/util/Comparator;)Lkotlin/UInt;", "maxWith-zrEWJaI", "([JLjava/util/Comparator;)Lkotlin/ULong;", "maxWith-eOHTfZs", "([SLjava/util/Comparator;)Lkotlin/UShort;", "min", "min-GBYM_sE", "min--ajY-9A", "min-QwZRm1k", "min-rL5Bavg", "minBy", "minBy-JOV_ifY", "minBy-jgv0xPQ", "minBy-MShoTSo", "minBy-xTcfx_M", "minWith", "minWith-XMRcp5o", "minWith-YmdZ_VM", "minWith-zrEWJaI", "minWith-eOHTfZs", "sumOf", "Ljava/math/BigDecimal;", "sumOfBigDecimal", "([BLkotlin/jvm/functions/Function1;)Ljava/math/BigDecimal;", "Ljava/math/BigInteger;", "sumOfBigInteger", "([BLkotlin/jvm/functions/Function1;)Ljava/math/BigInteger;", "([ILkotlin/jvm/functions/Function1;)Ljava/math/BigDecimal;", "([ILkotlin/jvm/functions/Function1;)Ljava/math/BigInteger;", "([JLkotlin/jvm/functions/Function1;)Ljava/math/BigDecimal;", "([JLkotlin/jvm/functions/Function1;)Ljava/math/BigInteger;", "([SLkotlin/jvm/functions/Function1;)Ljava/math/BigDecimal;", "([SLkotlin/jvm/functions/Function1;)Ljava/math/BigInteger;", "kotlin-stdlib"}, k = 5, mv = {1, 7, 1}, pn = "kotlin.collections", xi = 49, xs = "kotlin/collections/unsigned/UArraysKt")
/* loaded from: classes7.dex */
class UArraysKt___UArraysJvmKt {
    @SinceKotlin(version = "1.3")
    @ExperimentalUnsignedTypes
    @NotNull
    /* renamed from: asList--ajY-9A  reason: not valid java name */
    public static final List<UInt> m2128asListajY9A(@NotNull int[] asList) {
        Intrinsics.checkNotNullParameter(asList, "$this$asList");
        return new UArraysKt___UArraysJvmKt$asList$1(asList);
    }

    @SinceKotlin(version = "1.3")
    @ExperimentalUnsignedTypes
    @NotNull
    /* renamed from: asList-GBYM_sE  reason: not valid java name */
    public static final List<UByte> m2129asListGBYM_sE(@NotNull byte[] asList) {
        Intrinsics.checkNotNullParameter(asList, "$this$asList");
        return new UArraysKt___UArraysJvmKt$asList$3(asList);
    }

    @SinceKotlin(version = "1.3")
    @ExperimentalUnsignedTypes
    @NotNull
    /* renamed from: asList-QwZRm1k  reason: not valid java name */
    public static final List<ULong> m2130asListQwZRm1k(@NotNull long[] asList) {
        Intrinsics.checkNotNullParameter(asList, "$this$asList");
        return new UArraysKt___UArraysJvmKt$asList$2(asList);
    }

    @SinceKotlin(version = "1.3")
    @ExperimentalUnsignedTypes
    @NotNull
    /* renamed from: asList-rL5Bavg  reason: not valid java name */
    public static final List<UShort> m2131asListrL5Bavg(@NotNull short[] asList) {
        Intrinsics.checkNotNullParameter(asList, "$this$asList");
        return new UArraysKt___UArraysJvmKt$asList$4(asList);
    }

    @SinceKotlin(version = "1.3")
    @ExperimentalUnsignedTypes
    /* renamed from: binarySearch-2fe2U9s  reason: not valid java name */
    public static final int m2132binarySearch2fe2U9s(@NotNull int[] binarySearch, int i9, int i10, int i11) {
        Intrinsics.checkNotNullParameter(binarySearch, "$this$binarySearch");
        AbstractList.Companion.checkRangeIndexes$kotlin_stdlib(i10, i11, UIntArray.m1811getSizeimpl(binarySearch));
        int i12 = i11 - 1;
        while (i10 <= i12) {
            int i13 = (i10 + i12) >>> 1;
            int uintCompare = UnsignedKt.uintCompare(binarySearch[i13], i9);
            if (uintCompare < 0) {
                i10 = i13 + 1;
            } else if (uintCompare <= 0) {
                return i13;
            } else {
                i12 = i13 - 1;
            }
        }
        return -(i10 + 1);
    }

    /* renamed from: binarySearch-2fe2U9s$default  reason: not valid java name */
    public static /* synthetic */ int m2133binarySearch2fe2U9s$default(int[] iArr, int i9, int i10, int i11, int i12, Object obj) {
        if ((i12 & 2) != 0) {
            i10 = 0;
        }
        if ((i12 & 4) != 0) {
            i11 = UIntArray.m1811getSizeimpl(iArr);
        }
        return m2132binarySearch2fe2U9s(iArr, i9, i10, i11);
    }

    @SinceKotlin(version = "1.3")
    @ExperimentalUnsignedTypes
    /* renamed from: binarySearch-EtDCXyQ  reason: not valid java name */
    public static final int m2134binarySearchEtDCXyQ(@NotNull short[] binarySearch, short s10, int i9, int i10) {
        Intrinsics.checkNotNullParameter(binarySearch, "$this$binarySearch");
        AbstractList.Companion.checkRangeIndexes$kotlin_stdlib(i9, i10, UShortArray.m1993getSizeimpl(binarySearch));
        int i11 = s10 & UShort.MAX_VALUE;
        int i12 = i10 - 1;
        while (i9 <= i12) {
            int i13 = (i9 + i12) >>> 1;
            int uintCompare = UnsignedKt.uintCompare(binarySearch[i13], i11);
            if (uintCompare < 0) {
                i9 = i13 + 1;
            } else if (uintCompare <= 0) {
                return i13;
            } else {
                i12 = i13 - 1;
            }
        }
        return -(i9 + 1);
    }

    /* renamed from: binarySearch-EtDCXyQ$default  reason: not valid java name */
    public static /* synthetic */ int m2135binarySearchEtDCXyQ$default(short[] sArr, short s10, int i9, int i10, int i11, Object obj) {
        if ((i11 & 2) != 0) {
            i9 = 0;
        }
        if ((i11 & 4) != 0) {
            i10 = UShortArray.m1993getSizeimpl(sArr);
        }
        return m2134binarySearchEtDCXyQ(sArr, s10, i9, i10);
    }

    @SinceKotlin(version = "1.3")
    @ExperimentalUnsignedTypes
    /* renamed from: binarySearch-K6DWlUc  reason: not valid java name */
    public static final int m2136binarySearchK6DWlUc(@NotNull long[] binarySearch, long j10, int i9, int i10) {
        Intrinsics.checkNotNullParameter(binarySearch, "$this$binarySearch");
        AbstractList.Companion.checkRangeIndexes$kotlin_stdlib(i9, i10, ULongArray.m1889getSizeimpl(binarySearch));
        int i11 = i10 - 1;
        while (i9 <= i11) {
            int i12 = (i9 + i11) >>> 1;
            int ulongCompare = UnsignedKt.ulongCompare(binarySearch[i12], j10);
            if (ulongCompare < 0) {
                i9 = i12 + 1;
            } else if (ulongCompare <= 0) {
                return i12;
            } else {
                i11 = i12 - 1;
            }
        }
        return -(i9 + 1);
    }

    /* renamed from: binarySearch-K6DWlUc$default  reason: not valid java name */
    public static /* synthetic */ int m2137binarySearchK6DWlUc$default(long[] jArr, long j10, int i9, int i10, int i11, Object obj) {
        if ((i11 & 2) != 0) {
            i9 = 0;
        }
        if ((i11 & 4) != 0) {
            i10 = ULongArray.m1889getSizeimpl(jArr);
        }
        return m2136binarySearchK6DWlUc(jArr, j10, i9, i10);
    }

    @SinceKotlin(version = "1.3")
    @ExperimentalUnsignedTypes
    /* renamed from: binarySearch-WpHrYlw  reason: not valid java name */
    public static final int m2138binarySearchWpHrYlw(@NotNull byte[] binarySearch, byte b10, int i9, int i10) {
        Intrinsics.checkNotNullParameter(binarySearch, "$this$binarySearch");
        AbstractList.Companion.checkRangeIndexes$kotlin_stdlib(i9, i10, UByteArray.m1733getSizeimpl(binarySearch));
        int i11 = b10 & UByte.MAX_VALUE;
        int i12 = i10 - 1;
        while (i9 <= i12) {
            int i13 = (i9 + i12) >>> 1;
            int uintCompare = UnsignedKt.uintCompare(binarySearch[i13], i11);
            if (uintCompare < 0) {
                i9 = i13 + 1;
            } else if (uintCompare <= 0) {
                return i13;
            } else {
                i12 = i13 - 1;
            }
        }
        return -(i9 + 1);
    }

    /* renamed from: binarySearch-WpHrYlw$default  reason: not valid java name */
    public static /* synthetic */ int m2139binarySearchWpHrYlw$default(byte[] bArr, byte b10, int i9, int i10, int i11, Object obj) {
        if ((i11 & 2) != 0) {
            i9 = 0;
        }
        if ((i11 & 4) != 0) {
            i10 = UByteArray.m1733getSizeimpl(bArr);
        }
        return m2138binarySearchWpHrYlw(bArr, b10, i9, i10);
    }

    @SinceKotlin(version = "1.3")
    @ExperimentalUnsignedTypes
    @InlineOnly
    /* renamed from: elementAt-PpDY95g  reason: not valid java name */
    private static final byte m2140elementAtPpDY95g(byte[] elementAt, int i9) {
        Intrinsics.checkNotNullParameter(elementAt, "$this$elementAt");
        return UByteArray.m1732getw2LRezQ(elementAt, i9);
    }

    @SinceKotlin(version = "1.3")
    @ExperimentalUnsignedTypes
    @InlineOnly
    /* renamed from: elementAt-nggk6HY  reason: not valid java name */
    private static final short m2141elementAtnggk6HY(short[] elementAt, int i9) {
        Intrinsics.checkNotNullParameter(elementAt, "$this$elementAt");
        return UShortArray.m1992getMh2AYeg(elementAt, i9);
    }

    @SinceKotlin(version = "1.3")
    @ExperimentalUnsignedTypes
    @InlineOnly
    /* renamed from: elementAt-qFRl0hI  reason: not valid java name */
    private static final int m2142elementAtqFRl0hI(int[] elementAt, int i9) {
        Intrinsics.checkNotNullParameter(elementAt, "$this$elementAt");
        return UIntArray.m1810getpVg5ArA(elementAt, i9);
    }

    @SinceKotlin(version = "1.3")
    @ExperimentalUnsignedTypes
    @InlineOnly
    /* renamed from: elementAt-r7IrZao  reason: not valid java name */
    private static final long m2143elementAtr7IrZao(long[] elementAt, int i9) {
        Intrinsics.checkNotNullParameter(elementAt, "$this$elementAt");
        return ULongArray.m1888getsVKNKU(elementAt, i9);
    }

    @SinceKotlin(version = "1.3")
    @ExperimentalUnsignedTypes
    @Deprecated(message = "Use maxOrNull instead.", replaceWith = @ReplaceWith(expression = "this.maxOrNull()", imports = {}))
    @DeprecatedSinceKotlin(errorSince = "1.5", hiddenSince = "1.6", warningSince = "1.4")
    /* renamed from: max--ajY-9A  reason: not valid java name */
    public static final /* synthetic */ UInt m2144maxajY9A(int[] max) {
        Intrinsics.checkNotNullParameter(max, "$this$max");
        return UArraysKt___UArraysKt.m2524maxOrNullajY9A(max);
    }

    @SinceKotlin(version = "1.3")
    @ExperimentalUnsignedTypes
    @Deprecated(message = "Use maxOrNull instead.", replaceWith = @ReplaceWith(expression = "this.maxOrNull()", imports = {}))
    @DeprecatedSinceKotlin(errorSince = "1.5", hiddenSince = "1.6", warningSince = "1.4")
    /* renamed from: max-GBYM_sE  reason: not valid java name */
    public static final /* synthetic */ UByte m2145maxGBYM_sE(byte[] max) {
        Intrinsics.checkNotNullParameter(max, "$this$max");
        return UArraysKt___UArraysKt.m2525maxOrNullGBYM_sE(max);
    }

    @SinceKotlin(version = "1.3")
    @ExperimentalUnsignedTypes
    @Deprecated(message = "Use maxOrNull instead.", replaceWith = @ReplaceWith(expression = "this.maxOrNull()", imports = {}))
    @DeprecatedSinceKotlin(errorSince = "1.5", hiddenSince = "1.6", warningSince = "1.4")
    /* renamed from: max-QwZRm1k  reason: not valid java name */
    public static final /* synthetic */ ULong m2146maxQwZRm1k(long[] max) {
        Intrinsics.checkNotNullParameter(max, "$this$max");
        return UArraysKt___UArraysKt.m2526maxOrNullQwZRm1k(max);
    }

    @SinceKotlin(version = "1.3")
    @ExperimentalUnsignedTypes
    @Deprecated(message = "Use maxOrNull instead.", replaceWith = @ReplaceWith(expression = "this.maxOrNull()", imports = {}))
    @DeprecatedSinceKotlin(errorSince = "1.5", hiddenSince = "1.6", warningSince = "1.4")
    /* renamed from: max-rL5Bavg  reason: not valid java name */
    public static final /* synthetic */ UShort m2147maxrL5Bavg(short[] max) {
        Intrinsics.checkNotNullParameter(max, "$this$max");
        return UArraysKt___UArraysKt.m2527maxOrNullrL5Bavg(max);
    }

    /* JADX WARN: Type inference failed for: r1v1, types: [kotlin.collections.IntIterator, java.util.Iterator] */
    @SinceKotlin(version = "1.3")
    @ExperimentalUnsignedTypes
    @InlineOnly
    @Deprecated(message = "Use maxByOrNull instead.", replaceWith = @ReplaceWith(expression = "this.maxByOrNull(selector)", imports = {}))
    @DeprecatedSinceKotlin(errorSince = "1.5", hiddenSince = "1.6", warningSince = "1.4")
    /* renamed from: maxBy-JOV_ifY  reason: not valid java name */
    private static final /* synthetic */ <R extends Comparable<? super R>> UByte m2148maxByJOV_ifY(byte[] maxBy, Function1<? super UByte, ? extends R> selector) {
        int lastIndex;
        Intrinsics.checkNotNullParameter(maxBy, "$this$maxBy");
        Intrinsics.checkNotNullParameter(selector, "selector");
        if (UByteArray.m1735isEmptyimpl(maxBy)) {
            return null;
        }
        byte m1732getw2LRezQ = UByteArray.m1732getw2LRezQ(maxBy, 0);
        lastIndex = ArraysKt___ArraysKt.getLastIndex(maxBy);
        if (lastIndex != 0) {
            R invoke = selector.invoke(UByte.m1669boximpl(m1732getw2LRezQ));
            ?? it = new IntRange(1, lastIndex).iterator();
            while (it.hasNext()) {
                byte m1732getw2LRezQ2 = UByteArray.m1732getw2LRezQ(maxBy, it.nextInt());
                R invoke2 = selector.invoke(UByte.m1669boximpl(m1732getw2LRezQ2));
                if (invoke.compareTo(invoke2) < 0) {
                    m1732getw2LRezQ = m1732getw2LRezQ2;
                    invoke = invoke2;
                }
            }
        }
        return UByte.m1669boximpl(m1732getw2LRezQ);
    }

    /* JADX WARN: Type inference failed for: r2v1, types: [kotlin.collections.IntIterator, java.util.Iterator] */
    @SinceKotlin(version = "1.3")
    @ExperimentalUnsignedTypes
    @InlineOnly
    @Deprecated(message = "Use maxByOrNull instead.", replaceWith = @ReplaceWith(expression = "this.maxByOrNull(selector)", imports = {}))
    @DeprecatedSinceKotlin(errorSince = "1.5", hiddenSince = "1.6", warningSince = "1.4")
    /* renamed from: maxBy-MShoTSo  reason: not valid java name */
    private static final /* synthetic */ <R extends Comparable<? super R>> ULong m2149maxByMShoTSo(long[] maxBy, Function1<? super ULong, ? extends R> selector) {
        int lastIndex;
        Intrinsics.checkNotNullParameter(maxBy, "$this$maxBy");
        Intrinsics.checkNotNullParameter(selector, "selector");
        if (ULongArray.m1891isEmptyimpl(maxBy)) {
            return null;
        }
        long m1888getsVKNKU = ULongArray.m1888getsVKNKU(maxBy, 0);
        lastIndex = ArraysKt___ArraysKt.getLastIndex(maxBy);
        if (lastIndex != 0) {
            R invoke = selector.invoke(ULong.m1823boximpl(m1888getsVKNKU));
            ?? it = new IntRange(1, lastIndex).iterator();
            while (it.hasNext()) {
                long m1888getsVKNKU2 = ULongArray.m1888getsVKNKU(maxBy, it.nextInt());
                R invoke2 = selector.invoke(ULong.m1823boximpl(m1888getsVKNKU2));
                if (invoke.compareTo(invoke2) < 0) {
                    m1888getsVKNKU = m1888getsVKNKU2;
                    invoke = invoke2;
                }
            }
        }
        return ULong.m1823boximpl(m1888getsVKNKU);
    }

    /* JADX WARN: Type inference failed for: r1v1, types: [kotlin.collections.IntIterator, java.util.Iterator] */
    @SinceKotlin(version = "1.3")
    @ExperimentalUnsignedTypes
    @InlineOnly
    @Deprecated(message = "Use maxByOrNull instead.", replaceWith = @ReplaceWith(expression = "this.maxByOrNull(selector)", imports = {}))
    @DeprecatedSinceKotlin(errorSince = "1.5", hiddenSince = "1.6", warningSince = "1.4")
    /* renamed from: maxBy-jgv0xPQ  reason: not valid java name */
    private static final /* synthetic */ <R extends Comparable<? super R>> UInt m2150maxByjgv0xPQ(int[] maxBy, Function1<? super UInt, ? extends R> selector) {
        int lastIndex;
        Intrinsics.checkNotNullParameter(maxBy, "$this$maxBy");
        Intrinsics.checkNotNullParameter(selector, "selector");
        if (UIntArray.m1813isEmptyimpl(maxBy)) {
            return null;
        }
        int m1810getpVg5ArA = UIntArray.m1810getpVg5ArA(maxBy, 0);
        lastIndex = ArraysKt___ArraysKt.getLastIndex(maxBy);
        if (lastIndex != 0) {
            R invoke = selector.invoke(UInt.m1745boximpl(m1810getpVg5ArA));
            ?? it = new IntRange(1, lastIndex).iterator();
            while (it.hasNext()) {
                int m1810getpVg5ArA2 = UIntArray.m1810getpVg5ArA(maxBy, it.nextInt());
                R invoke2 = selector.invoke(UInt.m1745boximpl(m1810getpVg5ArA2));
                if (invoke.compareTo(invoke2) < 0) {
                    m1810getpVg5ArA = m1810getpVg5ArA2;
                    invoke = invoke2;
                }
            }
        }
        return UInt.m1745boximpl(m1810getpVg5ArA);
    }

    /* JADX WARN: Type inference failed for: r1v1, types: [kotlin.collections.IntIterator, java.util.Iterator] */
    @SinceKotlin(version = "1.3")
    @ExperimentalUnsignedTypes
    @InlineOnly
    @Deprecated(message = "Use maxByOrNull instead.", replaceWith = @ReplaceWith(expression = "this.maxByOrNull(selector)", imports = {}))
    @DeprecatedSinceKotlin(errorSince = "1.5", hiddenSince = "1.6", warningSince = "1.4")
    /* renamed from: maxBy-xTcfx_M  reason: not valid java name */
    private static final /* synthetic */ <R extends Comparable<? super R>> UShort m2151maxByxTcfx_M(short[] maxBy, Function1<? super UShort, ? extends R> selector) {
        int lastIndex;
        Intrinsics.checkNotNullParameter(maxBy, "$this$maxBy");
        Intrinsics.checkNotNullParameter(selector, "selector");
        if (UShortArray.m1995isEmptyimpl(maxBy)) {
            return null;
        }
        short m1992getMh2AYeg = UShortArray.m1992getMh2AYeg(maxBy, 0);
        lastIndex = ArraysKt___ArraysKt.getLastIndex(maxBy);
        if (lastIndex != 0) {
            R invoke = selector.invoke(UShort.m1929boximpl(m1992getMh2AYeg));
            ?? it = new IntRange(1, lastIndex).iterator();
            while (it.hasNext()) {
                short m1992getMh2AYeg2 = UShortArray.m1992getMh2AYeg(maxBy, it.nextInt());
                R invoke2 = selector.invoke(UShort.m1929boximpl(m1992getMh2AYeg2));
                if (invoke.compareTo(invoke2) < 0) {
                    m1992getMh2AYeg = m1992getMh2AYeg2;
                    invoke = invoke2;
                }
            }
        }
        return UShort.m1929boximpl(m1992getMh2AYeg);
    }

    @SinceKotlin(version = "1.3")
    @ExperimentalUnsignedTypes
    @Deprecated(message = "Use maxWithOrNull instead.", replaceWith = @ReplaceWith(expression = "this.maxWithOrNull(comparator)", imports = {}))
    @DeprecatedSinceKotlin(errorSince = "1.5", hiddenSince = "1.6", warningSince = "1.4")
    /* renamed from: maxWith-XMRcp5o  reason: not valid java name */
    public static final /* synthetic */ UByte m2152maxWithXMRcp5o(byte[] maxWith, Comparator comparator) {
        Intrinsics.checkNotNullParameter(maxWith, "$this$maxWith");
        Intrinsics.checkNotNullParameter(comparator, "comparator");
        return UArraysKt___UArraysKt.m2532maxWithOrNullXMRcp5o(maxWith, comparator);
    }

    @SinceKotlin(version = "1.3")
    @ExperimentalUnsignedTypes
    @Deprecated(message = "Use maxWithOrNull instead.", replaceWith = @ReplaceWith(expression = "this.maxWithOrNull(comparator)", imports = {}))
    @DeprecatedSinceKotlin(errorSince = "1.5", hiddenSince = "1.6", warningSince = "1.4")
    /* renamed from: maxWith-YmdZ_VM  reason: not valid java name */
    public static final /* synthetic */ UInt m2153maxWithYmdZ_VM(int[] maxWith, Comparator comparator) {
        Intrinsics.checkNotNullParameter(maxWith, "$this$maxWith");
        Intrinsics.checkNotNullParameter(comparator, "comparator");
        return UArraysKt___UArraysKt.m2533maxWithOrNullYmdZ_VM(maxWith, comparator);
    }

    @SinceKotlin(version = "1.3")
    @ExperimentalUnsignedTypes
    @Deprecated(message = "Use maxWithOrNull instead.", replaceWith = @ReplaceWith(expression = "this.maxWithOrNull(comparator)", imports = {}))
    @DeprecatedSinceKotlin(errorSince = "1.5", hiddenSince = "1.6", warningSince = "1.4")
    /* renamed from: maxWith-eOHTfZs  reason: not valid java name */
    public static final /* synthetic */ UShort m2154maxWitheOHTfZs(short[] maxWith, Comparator comparator) {
        Intrinsics.checkNotNullParameter(maxWith, "$this$maxWith");
        Intrinsics.checkNotNullParameter(comparator, "comparator");
        return UArraysKt___UArraysKt.m2534maxWithOrNulleOHTfZs(maxWith, comparator);
    }

    @SinceKotlin(version = "1.3")
    @ExperimentalUnsignedTypes
    @Deprecated(message = "Use maxWithOrNull instead.", replaceWith = @ReplaceWith(expression = "this.maxWithOrNull(comparator)", imports = {}))
    @DeprecatedSinceKotlin(errorSince = "1.5", hiddenSince = "1.6", warningSince = "1.4")
    /* renamed from: maxWith-zrEWJaI  reason: not valid java name */
    public static final /* synthetic */ ULong m2155maxWithzrEWJaI(long[] maxWith, Comparator comparator) {
        Intrinsics.checkNotNullParameter(maxWith, "$this$maxWith");
        Intrinsics.checkNotNullParameter(comparator, "comparator");
        return UArraysKt___UArraysKt.m2535maxWithOrNullzrEWJaI(maxWith, comparator);
    }

    @SinceKotlin(version = "1.3")
    @ExperimentalUnsignedTypes
    @Deprecated(message = "Use minOrNull instead.", replaceWith = @ReplaceWith(expression = "this.minOrNull()", imports = {}))
    @DeprecatedSinceKotlin(errorSince = "1.5", hiddenSince = "1.6", warningSince = "1.4")
    /* renamed from: min--ajY-9A  reason: not valid java name */
    public static final /* synthetic */ UInt m2156minajY9A(int[] min) {
        Intrinsics.checkNotNullParameter(min, "$this$min");
        return UArraysKt___UArraysKt.m2580minOrNullajY9A(min);
    }

    @SinceKotlin(version = "1.3")
    @ExperimentalUnsignedTypes
    @Deprecated(message = "Use minOrNull instead.", replaceWith = @ReplaceWith(expression = "this.minOrNull()", imports = {}))
    @DeprecatedSinceKotlin(errorSince = "1.5", hiddenSince = "1.6", warningSince = "1.4")
    /* renamed from: min-GBYM_sE  reason: not valid java name */
    public static final /* synthetic */ UByte m2157minGBYM_sE(byte[] min) {
        Intrinsics.checkNotNullParameter(min, "$this$min");
        return UArraysKt___UArraysKt.m2581minOrNullGBYM_sE(min);
    }

    @SinceKotlin(version = "1.3")
    @ExperimentalUnsignedTypes
    @Deprecated(message = "Use minOrNull instead.", replaceWith = @ReplaceWith(expression = "this.minOrNull()", imports = {}))
    @DeprecatedSinceKotlin(errorSince = "1.5", hiddenSince = "1.6", warningSince = "1.4")
    /* renamed from: min-QwZRm1k  reason: not valid java name */
    public static final /* synthetic */ ULong m2158minQwZRm1k(long[] min) {
        Intrinsics.checkNotNullParameter(min, "$this$min");
        return UArraysKt___UArraysKt.m2582minOrNullQwZRm1k(min);
    }

    @SinceKotlin(version = "1.3")
    @ExperimentalUnsignedTypes
    @Deprecated(message = "Use minOrNull instead.", replaceWith = @ReplaceWith(expression = "this.minOrNull()", imports = {}))
    @DeprecatedSinceKotlin(errorSince = "1.5", hiddenSince = "1.6", warningSince = "1.4")
    /* renamed from: min-rL5Bavg  reason: not valid java name */
    public static final /* synthetic */ UShort m2159minrL5Bavg(short[] min) {
        Intrinsics.checkNotNullParameter(min, "$this$min");
        return UArraysKt___UArraysKt.m2583minOrNullrL5Bavg(min);
    }

    /* JADX WARN: Type inference failed for: r1v1, types: [kotlin.collections.IntIterator, java.util.Iterator] */
    @SinceKotlin(version = "1.3")
    @ExperimentalUnsignedTypes
    @InlineOnly
    @Deprecated(message = "Use minByOrNull instead.", replaceWith = @ReplaceWith(expression = "this.minByOrNull(selector)", imports = {}))
    @DeprecatedSinceKotlin(errorSince = "1.5", hiddenSince = "1.6", warningSince = "1.4")
    /* renamed from: minBy-JOV_ifY  reason: not valid java name */
    private static final /* synthetic */ <R extends Comparable<? super R>> UByte m2160minByJOV_ifY(byte[] minBy, Function1<? super UByte, ? extends R> selector) {
        int lastIndex;
        Intrinsics.checkNotNullParameter(minBy, "$this$minBy");
        Intrinsics.checkNotNullParameter(selector, "selector");
        if (UByteArray.m1735isEmptyimpl(minBy)) {
            return null;
        }
        byte m1732getw2LRezQ = UByteArray.m1732getw2LRezQ(minBy, 0);
        lastIndex = ArraysKt___ArraysKt.getLastIndex(minBy);
        if (lastIndex != 0) {
            R invoke = selector.invoke(UByte.m1669boximpl(m1732getw2LRezQ));
            ?? it = new IntRange(1, lastIndex).iterator();
            while (it.hasNext()) {
                byte m1732getw2LRezQ2 = UByteArray.m1732getw2LRezQ(minBy, it.nextInt());
                R invoke2 = selector.invoke(UByte.m1669boximpl(m1732getw2LRezQ2));
                if (invoke.compareTo(invoke2) > 0) {
                    m1732getw2LRezQ = m1732getw2LRezQ2;
                    invoke = invoke2;
                }
            }
        }
        return UByte.m1669boximpl(m1732getw2LRezQ);
    }

    /* JADX WARN: Type inference failed for: r2v1, types: [kotlin.collections.IntIterator, java.util.Iterator] */
    @SinceKotlin(version = "1.3")
    @ExperimentalUnsignedTypes
    @InlineOnly
    @Deprecated(message = "Use minByOrNull instead.", replaceWith = @ReplaceWith(expression = "this.minByOrNull(selector)", imports = {}))
    @DeprecatedSinceKotlin(errorSince = "1.5", hiddenSince = "1.6", warningSince = "1.4")
    /* renamed from: minBy-MShoTSo  reason: not valid java name */
    private static final /* synthetic */ <R extends Comparable<? super R>> ULong m2161minByMShoTSo(long[] minBy, Function1<? super ULong, ? extends R> selector) {
        int lastIndex;
        Intrinsics.checkNotNullParameter(minBy, "$this$minBy");
        Intrinsics.checkNotNullParameter(selector, "selector");
        if (ULongArray.m1891isEmptyimpl(minBy)) {
            return null;
        }
        long m1888getsVKNKU = ULongArray.m1888getsVKNKU(minBy, 0);
        lastIndex = ArraysKt___ArraysKt.getLastIndex(minBy);
        if (lastIndex != 0) {
            R invoke = selector.invoke(ULong.m1823boximpl(m1888getsVKNKU));
            ?? it = new IntRange(1, lastIndex).iterator();
            while (it.hasNext()) {
                long m1888getsVKNKU2 = ULongArray.m1888getsVKNKU(minBy, it.nextInt());
                R invoke2 = selector.invoke(ULong.m1823boximpl(m1888getsVKNKU2));
                if (invoke.compareTo(invoke2) > 0) {
                    m1888getsVKNKU = m1888getsVKNKU2;
                    invoke = invoke2;
                }
            }
        }
        return ULong.m1823boximpl(m1888getsVKNKU);
    }

    /* JADX WARN: Type inference failed for: r1v1, types: [kotlin.collections.IntIterator, java.util.Iterator] */
    @SinceKotlin(version = "1.3")
    @ExperimentalUnsignedTypes
    @InlineOnly
    @Deprecated(message = "Use minByOrNull instead.", replaceWith = @ReplaceWith(expression = "this.minByOrNull(selector)", imports = {}))
    @DeprecatedSinceKotlin(errorSince = "1.5", hiddenSince = "1.6", warningSince = "1.4")
    /* renamed from: minBy-jgv0xPQ  reason: not valid java name */
    private static final /* synthetic */ <R extends Comparable<? super R>> UInt m2162minByjgv0xPQ(int[] minBy, Function1<? super UInt, ? extends R> selector) {
        int lastIndex;
        Intrinsics.checkNotNullParameter(minBy, "$this$minBy");
        Intrinsics.checkNotNullParameter(selector, "selector");
        if (UIntArray.m1813isEmptyimpl(minBy)) {
            return null;
        }
        int m1810getpVg5ArA = UIntArray.m1810getpVg5ArA(minBy, 0);
        lastIndex = ArraysKt___ArraysKt.getLastIndex(minBy);
        if (lastIndex != 0) {
            R invoke = selector.invoke(UInt.m1745boximpl(m1810getpVg5ArA));
            ?? it = new IntRange(1, lastIndex).iterator();
            while (it.hasNext()) {
                int m1810getpVg5ArA2 = UIntArray.m1810getpVg5ArA(minBy, it.nextInt());
                R invoke2 = selector.invoke(UInt.m1745boximpl(m1810getpVg5ArA2));
                if (invoke.compareTo(invoke2) > 0) {
                    m1810getpVg5ArA = m1810getpVg5ArA2;
                    invoke = invoke2;
                }
            }
        }
        return UInt.m1745boximpl(m1810getpVg5ArA);
    }

    /* JADX WARN: Type inference failed for: r1v1, types: [kotlin.collections.IntIterator, java.util.Iterator] */
    @SinceKotlin(version = "1.3")
    @ExperimentalUnsignedTypes
    @InlineOnly
    @Deprecated(message = "Use minByOrNull instead.", replaceWith = @ReplaceWith(expression = "this.minByOrNull(selector)", imports = {}))
    @DeprecatedSinceKotlin(errorSince = "1.5", hiddenSince = "1.6", warningSince = "1.4")
    /* renamed from: minBy-xTcfx_M  reason: not valid java name */
    private static final /* synthetic */ <R extends Comparable<? super R>> UShort m2163minByxTcfx_M(short[] minBy, Function1<? super UShort, ? extends R> selector) {
        int lastIndex;
        Intrinsics.checkNotNullParameter(minBy, "$this$minBy");
        Intrinsics.checkNotNullParameter(selector, "selector");
        if (UShortArray.m1995isEmptyimpl(minBy)) {
            return null;
        }
        short m1992getMh2AYeg = UShortArray.m1992getMh2AYeg(minBy, 0);
        lastIndex = ArraysKt___ArraysKt.getLastIndex(minBy);
        if (lastIndex != 0) {
            R invoke = selector.invoke(UShort.m1929boximpl(m1992getMh2AYeg));
            ?? it = new IntRange(1, lastIndex).iterator();
            while (it.hasNext()) {
                short m1992getMh2AYeg2 = UShortArray.m1992getMh2AYeg(minBy, it.nextInt());
                R invoke2 = selector.invoke(UShort.m1929boximpl(m1992getMh2AYeg2));
                if (invoke.compareTo(invoke2) > 0) {
                    m1992getMh2AYeg = m1992getMh2AYeg2;
                    invoke = invoke2;
                }
            }
        }
        return UShort.m1929boximpl(m1992getMh2AYeg);
    }

    @SinceKotlin(version = "1.3")
    @ExperimentalUnsignedTypes
    @Deprecated(message = "Use minWithOrNull instead.", replaceWith = @ReplaceWith(expression = "this.minWithOrNull(comparator)", imports = {}))
    @DeprecatedSinceKotlin(errorSince = "1.5", hiddenSince = "1.6", warningSince = "1.4")
    /* renamed from: minWith-XMRcp5o  reason: not valid java name */
    public static final /* synthetic */ UByte m2164minWithXMRcp5o(byte[] minWith, Comparator comparator) {
        Intrinsics.checkNotNullParameter(minWith, "$this$minWith");
        Intrinsics.checkNotNullParameter(comparator, "comparator");
        return UArraysKt___UArraysKt.m2588minWithOrNullXMRcp5o(minWith, comparator);
    }

    @SinceKotlin(version = "1.3")
    @ExperimentalUnsignedTypes
    @Deprecated(message = "Use minWithOrNull instead.", replaceWith = @ReplaceWith(expression = "this.minWithOrNull(comparator)", imports = {}))
    @DeprecatedSinceKotlin(errorSince = "1.5", hiddenSince = "1.6", warningSince = "1.4")
    /* renamed from: minWith-YmdZ_VM  reason: not valid java name */
    public static final /* synthetic */ UInt m2165minWithYmdZ_VM(int[] minWith, Comparator comparator) {
        Intrinsics.checkNotNullParameter(minWith, "$this$minWith");
        Intrinsics.checkNotNullParameter(comparator, "comparator");
        return UArraysKt___UArraysKt.m2589minWithOrNullYmdZ_VM(minWith, comparator);
    }

    @SinceKotlin(version = "1.3")
    @ExperimentalUnsignedTypes
    @Deprecated(message = "Use minWithOrNull instead.", replaceWith = @ReplaceWith(expression = "this.minWithOrNull(comparator)", imports = {}))
    @DeprecatedSinceKotlin(errorSince = "1.5", hiddenSince = "1.6", warningSince = "1.4")
    /* renamed from: minWith-eOHTfZs  reason: not valid java name */
    public static final /* synthetic */ UShort m2166minWitheOHTfZs(short[] minWith, Comparator comparator) {
        Intrinsics.checkNotNullParameter(minWith, "$this$minWith");
        Intrinsics.checkNotNullParameter(comparator, "comparator");
        return UArraysKt___UArraysKt.m2590minWithOrNulleOHTfZs(minWith, comparator);
    }

    @SinceKotlin(version = "1.3")
    @ExperimentalUnsignedTypes
    @Deprecated(message = "Use minWithOrNull instead.", replaceWith = @ReplaceWith(expression = "this.minWithOrNull(comparator)", imports = {}))
    @DeprecatedSinceKotlin(errorSince = "1.5", hiddenSince = "1.6", warningSince = "1.4")
    /* renamed from: minWith-zrEWJaI  reason: not valid java name */
    public static final /* synthetic */ ULong m2167minWithzrEWJaI(long[] minWith, Comparator comparator) {
        Intrinsics.checkNotNullParameter(minWith, "$this$minWith");
        Intrinsics.checkNotNullParameter(comparator, "comparator");
        return UArraysKt___UArraysKt.m2591minWithOrNullzrEWJaI(minWith, comparator);
    }

    @SinceKotlin(version = "1.4")
    @ExperimentalUnsignedTypes
    @InlineOnly
    @JvmName(name = "sumOfBigDecimal")
    @OverloadResolutionByLambdaReturnType
    private static final BigDecimal sumOfBigDecimal(int[] sumOf, Function1<? super UInt, ? extends BigDecimal> selector) {
        Intrinsics.checkNotNullParameter(sumOf, "$this$sumOf");
        Intrinsics.checkNotNullParameter(selector, "selector");
        BigDecimal valueOf = BigDecimal.valueOf(0L);
        Intrinsics.checkNotNullExpressionValue(valueOf, "valueOf(this.toLong())");
        int m1811getSizeimpl = UIntArray.m1811getSizeimpl(sumOf);
        for (int i9 = 0; i9 < m1811getSizeimpl; i9++) {
            valueOf = valueOf.add(selector.invoke(UInt.m1745boximpl(UIntArray.m1810getpVg5ArA(sumOf, i9))));
            Intrinsics.checkNotNullExpressionValue(valueOf, "this.add(other)");
        }
        return valueOf;
    }

    @SinceKotlin(version = "1.4")
    @ExperimentalUnsignedTypes
    @InlineOnly
    @JvmName(name = "sumOfBigInteger")
    @OverloadResolutionByLambdaReturnType
    private static final BigInteger sumOfBigInteger(int[] sumOf, Function1<? super UInt, ? extends BigInteger> selector) {
        Intrinsics.checkNotNullParameter(sumOf, "$this$sumOf");
        Intrinsics.checkNotNullParameter(selector, "selector");
        BigInteger valueOf = BigInteger.valueOf(0L);
        Intrinsics.checkNotNullExpressionValue(valueOf, "valueOf(this.toLong())");
        int m1811getSizeimpl = UIntArray.m1811getSizeimpl(sumOf);
        for (int i9 = 0; i9 < m1811getSizeimpl; i9++) {
            valueOf = valueOf.add(selector.invoke(UInt.m1745boximpl(UIntArray.m1810getpVg5ArA(sumOf, i9))));
            Intrinsics.checkNotNullExpressionValue(valueOf, "this.add(other)");
        }
        return valueOf;
    }

    @SinceKotlin(version = "1.4")
    @ExperimentalUnsignedTypes
    @InlineOnly
    @JvmName(name = "sumOfBigDecimal")
    @OverloadResolutionByLambdaReturnType
    private static final BigDecimal sumOfBigDecimal(long[] sumOf, Function1<? super ULong, ? extends BigDecimal> selector) {
        Intrinsics.checkNotNullParameter(sumOf, "$this$sumOf");
        Intrinsics.checkNotNullParameter(selector, "selector");
        BigDecimal valueOf = BigDecimal.valueOf(0L);
        Intrinsics.checkNotNullExpressionValue(valueOf, "valueOf(this.toLong())");
        int m1889getSizeimpl = ULongArray.m1889getSizeimpl(sumOf);
        for (int i9 = 0; i9 < m1889getSizeimpl; i9++) {
            valueOf = valueOf.add(selector.invoke(ULong.m1823boximpl(ULongArray.m1888getsVKNKU(sumOf, i9))));
            Intrinsics.checkNotNullExpressionValue(valueOf, "this.add(other)");
        }
        return valueOf;
    }

    @SinceKotlin(version = "1.4")
    @ExperimentalUnsignedTypes
    @InlineOnly
    @JvmName(name = "sumOfBigInteger")
    @OverloadResolutionByLambdaReturnType
    private static final BigInteger sumOfBigInteger(long[] sumOf, Function1<? super ULong, ? extends BigInteger> selector) {
        Intrinsics.checkNotNullParameter(sumOf, "$this$sumOf");
        Intrinsics.checkNotNullParameter(selector, "selector");
        BigInteger valueOf = BigInteger.valueOf(0L);
        Intrinsics.checkNotNullExpressionValue(valueOf, "valueOf(this.toLong())");
        int m1889getSizeimpl = ULongArray.m1889getSizeimpl(sumOf);
        for (int i9 = 0; i9 < m1889getSizeimpl; i9++) {
            valueOf = valueOf.add(selector.invoke(ULong.m1823boximpl(ULongArray.m1888getsVKNKU(sumOf, i9))));
            Intrinsics.checkNotNullExpressionValue(valueOf, "this.add(other)");
        }
        return valueOf;
    }

    @SinceKotlin(version = "1.4")
    @ExperimentalUnsignedTypes
    @InlineOnly
    @JvmName(name = "sumOfBigDecimal")
    @OverloadResolutionByLambdaReturnType
    private static final BigDecimal sumOfBigDecimal(byte[] sumOf, Function1<? super UByte, ? extends BigDecimal> selector) {
        Intrinsics.checkNotNullParameter(sumOf, "$this$sumOf");
        Intrinsics.checkNotNullParameter(selector, "selector");
        BigDecimal valueOf = BigDecimal.valueOf(0L);
        Intrinsics.checkNotNullExpressionValue(valueOf, "valueOf(this.toLong())");
        int m1733getSizeimpl = UByteArray.m1733getSizeimpl(sumOf);
        for (int i9 = 0; i9 < m1733getSizeimpl; i9++) {
            valueOf = valueOf.add(selector.invoke(UByte.m1669boximpl(UByteArray.m1732getw2LRezQ(sumOf, i9))));
            Intrinsics.checkNotNullExpressionValue(valueOf, "this.add(other)");
        }
        return valueOf;
    }

    @SinceKotlin(version = "1.4")
    @ExperimentalUnsignedTypes
    @InlineOnly
    @JvmName(name = "sumOfBigInteger")
    @OverloadResolutionByLambdaReturnType
    private static final BigInteger sumOfBigInteger(byte[] sumOf, Function1<? super UByte, ? extends BigInteger> selector) {
        Intrinsics.checkNotNullParameter(sumOf, "$this$sumOf");
        Intrinsics.checkNotNullParameter(selector, "selector");
        BigInteger valueOf = BigInteger.valueOf(0L);
        Intrinsics.checkNotNullExpressionValue(valueOf, "valueOf(this.toLong())");
        int m1733getSizeimpl = UByteArray.m1733getSizeimpl(sumOf);
        for (int i9 = 0; i9 < m1733getSizeimpl; i9++) {
            valueOf = valueOf.add(selector.invoke(UByte.m1669boximpl(UByteArray.m1732getw2LRezQ(sumOf, i9))));
            Intrinsics.checkNotNullExpressionValue(valueOf, "this.add(other)");
        }
        return valueOf;
    }

    @SinceKotlin(version = "1.4")
    @ExperimentalUnsignedTypes
    @InlineOnly
    @JvmName(name = "sumOfBigDecimal")
    @OverloadResolutionByLambdaReturnType
    private static final BigDecimal sumOfBigDecimal(short[] sumOf, Function1<? super UShort, ? extends BigDecimal> selector) {
        Intrinsics.checkNotNullParameter(sumOf, "$this$sumOf");
        Intrinsics.checkNotNullParameter(selector, "selector");
        BigDecimal valueOf = BigDecimal.valueOf(0L);
        Intrinsics.checkNotNullExpressionValue(valueOf, "valueOf(this.toLong())");
        int m1993getSizeimpl = UShortArray.m1993getSizeimpl(sumOf);
        for (int i9 = 0; i9 < m1993getSizeimpl; i9++) {
            valueOf = valueOf.add(selector.invoke(UShort.m1929boximpl(UShortArray.m1992getMh2AYeg(sumOf, i9))));
            Intrinsics.checkNotNullExpressionValue(valueOf, "this.add(other)");
        }
        return valueOf;
    }

    @SinceKotlin(version = "1.4")
    @ExperimentalUnsignedTypes
    @InlineOnly
    @JvmName(name = "sumOfBigInteger")
    @OverloadResolutionByLambdaReturnType
    private static final BigInteger sumOfBigInteger(short[] sumOf, Function1<? super UShort, ? extends BigInteger> selector) {
        Intrinsics.checkNotNullParameter(sumOf, "$this$sumOf");
        Intrinsics.checkNotNullParameter(selector, "selector");
        BigInteger valueOf = BigInteger.valueOf(0L);
        Intrinsics.checkNotNullExpressionValue(valueOf, "valueOf(this.toLong())");
        int m1993getSizeimpl = UShortArray.m1993getSizeimpl(sumOf);
        for (int i9 = 0; i9 < m1993getSizeimpl; i9++) {
            valueOf = valueOf.add(selector.invoke(UShort.m1929boximpl(UShortArray.m1992getMh2AYeg(sumOf, i9))));
            Intrinsics.checkNotNullExpressionValue(valueOf, "this.add(other)");
        }
        return valueOf;
    }
}
