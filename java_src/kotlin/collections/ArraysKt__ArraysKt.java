package kotlin.collections;

import androidx.exifinterface.media.ExifInterface;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.PublishedApi;
import kotlin.SinceKotlin;
import kotlin.TuplesKt;
import kotlin.UByteArray;
import kotlin.UIntArray;
import kotlin.ULongArray;
import kotlin.UShortArray;
import kotlin.collections.unsigned.UArraysKt___UArraysKt;
import kotlin.internal.InlineOnly;
import kotlin.jvm.JvmName;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.ranges.RangesKt___RangesKt;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* JADX INFO: Access modifiers changed from: package-private */
@Metadata(d1 = {"\u0000H\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0011\n\u0002\b\u0004\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010!\n\u0002\b\u0003\n\u0002\u0010 \n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0002\u001a5\u0010\u0000\u001a\u00020\u0001\"\u0004\b\u0000\u0010\u0002*\f\u0012\u0006\b\u0001\u0012\u0002H\u0002\u0018\u00010\u00032\u0010\u0010\u0004\u001a\f\u0012\u0006\b\u0001\u0012\u0002H\u0002\u0018\u00010\u0003H\u0001¢\u0006\u0004\b\u0005\u0010\u0006\u001a#\u0010\u0007\u001a\u00020\b\"\u0004\b\u0000\u0010\u0002*\f\u0012\u0006\b\u0001\u0012\u0002H\u0002\u0018\u00010\u0003H\u0001¢\u0006\u0004\b\t\u0010\n\u001a?\u0010\u000b\u001a\u00020\f\"\u0004\b\u0000\u0010\u0002*\n\u0012\u0006\b\u0001\u0012\u0002H\u00020\u00032\n\u0010\r\u001a\u00060\u000ej\u0002`\u000f2\u0010\u0010\u0010\u001a\f\u0012\b\u0012\u0006\u0012\u0002\b\u00030\u00030\u0011H\u0002¢\u0006\u0004\b\u0012\u0010\u0013\u001a+\u0010\u0014\u001a\b\u0012\u0004\u0012\u0002H\u00020\u0015\"\u0004\b\u0000\u0010\u0002*\u0012\u0012\u000e\b\u0001\u0012\n\u0012\u0006\b\u0001\u0012\u0002H\u00020\u00030\u0003¢\u0006\u0002\u0010\u0016\u001a;\u0010\u0017\u001a\u0002H\u0018\"\u0010\b\u0000\u0010\u0019*\u0006\u0012\u0002\b\u00030\u0003*\u0002H\u0018\"\u0004\b\u0001\u0010\u0018*\u0002H\u00192\f\u0010\u001a\u001a\b\u0012\u0004\u0012\u0002H\u00180\u001bH\u0087\bø\u0001\u0000¢\u0006\u0002\u0010\u001c\u001a)\u0010\u001d\u001a\u00020\u0001*\b\u0012\u0002\b\u0003\u0018\u00010\u0003H\u0087\b\u0082\u0002\u000e\n\f\b\u0000\u0012\u0002\u0018\u0001\u001a\u0004\b\u0003\u0010\u0000¢\u0006\u0002\u0010\u001e\u001aG\u0010\u001f\u001a\u001a\u0012\n\u0012\b\u0012\u0004\u0012\u0002H\u00020\u0015\u0012\n\u0012\b\u0012\u0004\u0012\u0002H\u00180\u00150 \"\u0004\b\u0000\u0010\u0002\"\u0004\b\u0001\u0010\u0018*\u0016\u0012\u0012\b\u0001\u0012\u000e\u0012\u0004\u0012\u0002H\u0002\u0012\u0004\u0012\u0002H\u00180 0\u0003¢\u0006\u0002\u0010!\u0082\u0002\u0007\n\u0005\b\u009920\u0001¨\u0006\""}, d2 = {"contentDeepEqualsImpl", "", ExifInterface.GPS_DIRECTION_TRUE, "", "other", "contentDeepEquals", "([Ljava/lang/Object;[Ljava/lang/Object;)Z", "contentDeepToStringImpl", "", "contentDeepToString", "([Ljava/lang/Object;)Ljava/lang/String;", "contentDeepToStringInternal", "", "result", "Ljava/lang/StringBuilder;", "Lkotlin/text/StringBuilder;", "processed", "", "contentDeepToStringInternal$ArraysKt__ArraysKt", "([Ljava/lang/Object;Ljava/lang/StringBuilder;Ljava/util/List;)V", "flatten", "", "([[Ljava/lang/Object;)Ljava/util/List;", "ifEmpty", "R", "C", "defaultValue", "Lkotlin/Function0;", "([Ljava/lang/Object;Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;", "isNullOrEmpty", "([Ljava/lang/Object;)Z", "unzip", "Lkotlin/Pair;", "([Lkotlin/Pair;)Lkotlin/Pair;", "kotlin-stdlib"}, k = 5, mv = {1, 7, 1}, xi = 49, xs = "kotlin/collections/ArraysKt")
/* loaded from: classes7.dex */
public class ArraysKt__ArraysKt extends ArraysKt__ArraysJVMKt {
    @SinceKotlin(version = "1.3")
    @PublishedApi
    @JvmName(name = "contentDeepEquals")
    public static final <T> boolean contentDeepEquals(@Nullable T[] tArr, @Nullable T[] tArr2) {
        boolean m2233contentEqualslec5QzE;
        boolean m2229contentEqualsKJPZfPQ;
        boolean m2228contentEqualsFGO6Aew;
        boolean m2231contentEqualskV0jMPg;
        if (tArr == tArr2) {
            return true;
        }
        if (tArr == null || tArr2 == null || tArr.length != tArr2.length) {
            return false;
        }
        int length = tArr.length;
        for (int i9 = 0; i9 < length; i9++) {
            T t10 = tArr[i9];
            T t11 = tArr2[i9];
            if (t10 != t11) {
                if (t10 == null || t11 == null) {
                    return false;
                }
                if ((t10 instanceof Object[]) && (t11 instanceof Object[])) {
                    if (!contentDeepEquals((Object[]) t10, (Object[]) t11)) {
                        return false;
                    }
                } else if ((t10 instanceof byte[]) && (t11 instanceof byte[])) {
                    if (!Arrays.equals((byte[]) t10, (byte[]) t11)) {
                        return false;
                    }
                } else if ((t10 instanceof short[]) && (t11 instanceof short[])) {
                    if (!Arrays.equals((short[]) t10, (short[]) t11)) {
                        return false;
                    }
                } else if ((t10 instanceof int[]) && (t11 instanceof int[])) {
                    if (!Arrays.equals((int[]) t10, (int[]) t11)) {
                        return false;
                    }
                } else if ((t10 instanceof long[]) && (t11 instanceof long[])) {
                    if (!Arrays.equals((long[]) t10, (long[]) t11)) {
                        return false;
                    }
                } else if ((t10 instanceof float[]) && (t11 instanceof float[])) {
                    if (!Arrays.equals((float[]) t10, (float[]) t11)) {
                        return false;
                    }
                } else if ((t10 instanceof double[]) && (t11 instanceof double[])) {
                    if (!Arrays.equals((double[]) t10, (double[]) t11)) {
                        return false;
                    }
                } else if ((t10 instanceof char[]) && (t11 instanceof char[])) {
                    if (!Arrays.equals((char[]) t10, (char[]) t11)) {
                        return false;
                    }
                } else if ((t10 instanceof boolean[]) && (t11 instanceof boolean[])) {
                    if (!Arrays.equals((boolean[]) t10, (boolean[]) t11)) {
                        return false;
                    }
                } else if ((t10 instanceof UByteArray) && (t11 instanceof UByteArray)) {
                    m2231contentEqualskV0jMPg = UArraysKt___UArraysKt.m2231contentEqualskV0jMPg(((UByteArray) t10).m1741unboximpl(), ((UByteArray) t11).m1741unboximpl());
                    if (!m2231contentEqualskV0jMPg) {
                        return false;
                    }
                } else if ((t10 instanceof UShortArray) && (t11 instanceof UShortArray)) {
                    m2228contentEqualsFGO6Aew = UArraysKt___UArraysKt.m2228contentEqualsFGO6Aew(((UShortArray) t10).m2001unboximpl(), ((UShortArray) t11).m2001unboximpl());
                    if (!m2228contentEqualsFGO6Aew) {
                        return false;
                    }
                } else if ((t10 instanceof UIntArray) && (t11 instanceof UIntArray)) {
                    m2229contentEqualsKJPZfPQ = UArraysKt___UArraysKt.m2229contentEqualsKJPZfPQ(((UIntArray) t10).m1819unboximpl(), ((UIntArray) t11).m1819unboximpl());
                    if (!m2229contentEqualsKJPZfPQ) {
                        return false;
                    }
                } else if ((t10 instanceof ULongArray) && (t11 instanceof ULongArray)) {
                    m2233contentEqualslec5QzE = UArraysKt___UArraysKt.m2233contentEqualslec5QzE(((ULongArray) t10).m1897unboximpl(), ((ULongArray) t11).m1897unboximpl());
                    if (!m2233contentEqualslec5QzE) {
                        return false;
                    }
                } else if (!Intrinsics.areEqual(t10, t11)) {
                    return false;
                }
            }
        }
        return true;
    }

    @SinceKotlin(version = "1.3")
    @JvmName(name = "contentDeepToString")
    @NotNull
    @PublishedApi
    public static final <T> String contentDeepToString(@Nullable T[] tArr) {
        int coerceAtMost;
        if (tArr == null) {
            return "null";
        }
        coerceAtMost = RangesKt___RangesKt.coerceAtMost(tArr.length, 429496729);
        StringBuilder sb2 = new StringBuilder((coerceAtMost * 5) + 2);
        contentDeepToStringInternal$ArraysKt__ArraysKt(tArr, sb2, new ArrayList());
        String sb3 = sb2.toString();
        Intrinsics.checkNotNullExpressionValue(sb3, "StringBuilder(capacity).…builderAction).toString()");
        return sb3;
    }

    private static final <T> void contentDeepToStringInternal$ArraysKt__ArraysKt(T[] tArr, StringBuilder sb2, List<Object[]> list) {
        int lastIndex;
        String m2251contentToStringuLth9ew;
        String m2248contentToStringXUkPCBk;
        String m2249contentToStringd6D3K8;
        String m2245contentToString2csIQuQ;
        if (list.contains(tArr)) {
            sb2.append("[...]");
            return;
        }
        list.add(tArr);
        sb2.append('[');
        int length = tArr.length;
        for (int i9 = 0; i9 < length; i9++) {
            if (i9 != 0) {
                sb2.append(", ");
            }
            T t10 = tArr[i9];
            if (t10 == null) {
                sb2.append("null");
            } else if (t10 instanceof Object[]) {
                contentDeepToStringInternal$ArraysKt__ArraysKt((Object[]) t10, sb2, list);
            } else if (t10 instanceof byte[]) {
                String arrays = Arrays.toString((byte[]) t10);
                Intrinsics.checkNotNullExpressionValue(arrays, "toString(this)");
                sb2.append(arrays);
            } else if (t10 instanceof short[]) {
                String arrays2 = Arrays.toString((short[]) t10);
                Intrinsics.checkNotNullExpressionValue(arrays2, "toString(this)");
                sb2.append(arrays2);
            } else if (t10 instanceof int[]) {
                String arrays3 = Arrays.toString((int[]) t10);
                Intrinsics.checkNotNullExpressionValue(arrays3, "toString(this)");
                sb2.append(arrays3);
            } else if (t10 instanceof long[]) {
                String arrays4 = Arrays.toString((long[]) t10);
                Intrinsics.checkNotNullExpressionValue(arrays4, "toString(this)");
                sb2.append(arrays4);
            } else if (t10 instanceof float[]) {
                String arrays5 = Arrays.toString((float[]) t10);
                Intrinsics.checkNotNullExpressionValue(arrays5, "toString(this)");
                sb2.append(arrays5);
            } else if (t10 instanceof double[]) {
                String arrays6 = Arrays.toString((double[]) t10);
                Intrinsics.checkNotNullExpressionValue(arrays6, "toString(this)");
                sb2.append(arrays6);
            } else if (t10 instanceof char[]) {
                String arrays7 = Arrays.toString((char[]) t10);
                Intrinsics.checkNotNullExpressionValue(arrays7, "toString(this)");
                sb2.append(arrays7);
            } else if (t10 instanceof boolean[]) {
                String arrays8 = Arrays.toString((boolean[]) t10);
                Intrinsics.checkNotNullExpressionValue(arrays8, "toString(this)");
                sb2.append(arrays8);
            } else if (t10 instanceof UByteArray) {
                m2245contentToString2csIQuQ = UArraysKt___UArraysKt.m2245contentToString2csIQuQ(((UByteArray) t10).m1741unboximpl());
                sb2.append(m2245contentToString2csIQuQ);
            } else if (t10 instanceof UShortArray) {
                m2249contentToStringd6D3K8 = UArraysKt___UArraysKt.m2249contentToStringd6D3K8(((UShortArray) t10).m2001unboximpl());
                sb2.append(m2249contentToStringd6D3K8);
            } else if (t10 instanceof UIntArray) {
                m2248contentToStringXUkPCBk = UArraysKt___UArraysKt.m2248contentToStringXUkPCBk(((UIntArray) t10).m1819unboximpl());
                sb2.append(m2248contentToStringXUkPCBk);
            } else if (t10 instanceof ULongArray) {
                m2251contentToStringuLth9ew = UArraysKt___UArraysKt.m2251contentToStringuLth9ew(((ULongArray) t10).m1897unboximpl());
                sb2.append(m2251contentToStringuLth9ew);
            } else {
                sb2.append(t10.toString());
            }
        }
        sb2.append(']');
        lastIndex = CollectionsKt__CollectionsKt.getLastIndex(list);
        list.remove(lastIndex);
    }

    @NotNull
    public static final <T> List<T> flatten(@NotNull T[][] tArr) {
        Intrinsics.checkNotNullParameter(tArr, "<this>");
        int i9 = 0;
        for (T[] tArr2 : tArr) {
            i9 += tArr2.length;
        }
        ArrayList arrayList = new ArrayList(i9);
        for (T[] tArr3 : tArr) {
            CollectionsKt__MutableCollectionsKt.addAll(arrayList, tArr3);
        }
        return arrayList;
    }

    /* JADX WARN: Incorrect types in method signature: <C:[Ljava/lang/Object;:TR;R:Ljava/lang/Object;>(TC;Lkotlin/jvm/functions/Function0<+TR;>;)TR; */
    @SinceKotlin(version = "1.3")
    @InlineOnly
    private static final Object ifEmpty(Object[] objArr, Function0 defaultValue) {
        Intrinsics.checkNotNullParameter(defaultValue, "defaultValue");
        return objArr.length == 0 ? defaultValue.invoke() : objArr;
    }

    @SinceKotlin(version = "1.3")
    @InlineOnly
    private static final boolean isNullOrEmpty(Object[] objArr) {
        if (objArr != null) {
            if (!(objArr.length == 0)) {
                return false;
            }
        }
        return true;
    }

    @NotNull
    public static final <T, R> Pair<List<T>, List<R>> unzip(@NotNull Pair<? extends T, ? extends R>[] pairArr) {
        Intrinsics.checkNotNullParameter(pairArr, "<this>");
        ArrayList arrayList = new ArrayList(pairArr.length);
        ArrayList arrayList2 = new ArrayList(pairArr.length);
        for (Pair<? extends T, ? extends R> pair : pairArr) {
            arrayList.add(pair.getFirst());
            arrayList2.add(pair.getSecond());
        }
        return TuplesKt.to(arrayList, arrayList2);
    }
}
