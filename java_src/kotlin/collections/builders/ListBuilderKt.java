package kotlin.collections.builders;

import androidx.constraintlayout.core.motion.utils.TypedValues;
import androidx.exifinterface.media.ExifInterface;
import java.util.Arrays;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
@Metadata(d1 = {"\u00002\n\u0000\n\u0002\u0010\u0011\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0006\n\u0002\u0010\u0002\n\u0002\b\u0007\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0010 \n\u0002\b\u0004\n\u0002\u0010\u000e\n\u0002\b\u0002\u001a!\u0010\u0000\u001a\b\u0012\u0004\u0012\u0002H\u00020\u0001\"\u0004\b\u0000\u0010\u00022\u0006\u0010\u0003\u001a\u00020\u0004H\u0000¢\u0006\u0002\u0010\u0005\u001a+\u0010\u0006\u001a\b\u0012\u0004\u0012\u0002H\u00070\u0001\"\u0004\b\u0000\u0010\u0007*\b\u0012\u0004\u0012\u0002H\u00070\u00012\u0006\u0010\b\u001a\u00020\u0004H\u0000¢\u0006\u0002\u0010\t\u001a%\u0010\n\u001a\u00020\u000b\"\u0004\b\u0000\u0010\u0002*\b\u0012\u0004\u0012\u0002H\u00020\u00012\u0006\u0010\f\u001a\u00020\u0004H\u0000¢\u0006\u0002\u0010\r\u001a-\u0010\u000e\u001a\u00020\u000b\"\u0004\b\u0000\u0010\u0002*\b\u0012\u0004\u0012\u0002H\u00020\u00012\u0006\u0010\u000f\u001a\u00020\u00042\u0006\u0010\u0010\u001a\u00020\u0004H\u0000¢\u0006\u0002\u0010\u0011\u001a9\u0010\u0012\u001a\u00020\u0013\"\u0004\b\u0000\u0010\u0007*\b\u0012\u0004\u0012\u0002H\u00070\u00012\u0006\u0010\u0014\u001a\u00020\u00042\u0006\u0010\u0015\u001a\u00020\u00042\n\u0010\u0016\u001a\u0006\u0012\u0002\b\u00030\u0017H\u0002¢\u0006\u0002\u0010\u0018\u001a-\u0010\u0019\u001a\u00020\u0004\"\u0004\b\u0000\u0010\u0007*\b\u0012\u0004\u0012\u0002H\u00070\u00012\u0006\u0010\u0014\u001a\u00020\u00042\u0006\u0010\u0015\u001a\u00020\u0004H\u0002¢\u0006\u0002\u0010\u001a\u001a/\u0010\u001b\u001a\u00020\u001c\"\u0004\b\u0000\u0010\u0007*\n\u0012\u0006\b\u0001\u0012\u0002H\u00070\u00012\u0006\u0010\u0014\u001a\u00020\u00042\u0006\u0010\u0015\u001a\u00020\u0004H\u0002¢\u0006\u0002\u0010\u001d¨\u0006\u001e"}, d2 = {"arrayOfUninitializedElements", "", ExifInterface.LONGITUDE_EAST, "size", "", "(I)[Ljava/lang/Object;", "copyOfUninitializedElements", ExifInterface.GPS_DIRECTION_TRUE, "newSize", "([Ljava/lang/Object;I)[Ljava/lang/Object;", "resetAt", "", "index", "([Ljava/lang/Object;I)V", "resetRange", "fromIndex", "toIndex", "([Ljava/lang/Object;II)V", "subarrayContentEquals", "", TypedValues.CycleType.S_WAVE_OFFSET, "length", "other", "", "([Ljava/lang/Object;IILjava/util/List;)Z", "subarrayContentHashCode", "([Ljava/lang/Object;II)I", "subarrayContentToString", "", "([Ljava/lang/Object;II)Ljava/lang/String;", "kotlin-stdlib"}, k = 2, mv = {1, 7, 1}, xi = 48)
/* loaded from: classes7.dex */
public final class ListBuilderKt {
    @NotNull
    public static final <E> E[] arrayOfUninitializedElements(int i9) {
        if (i9 >= 0) {
            return (E[]) new Object[i9];
        }
        throw new IllegalArgumentException("capacity must be non-negative.".toString());
    }

    @NotNull
    public static final <T> T[] copyOfUninitializedElements(@NotNull T[] tArr, int i9) {
        Intrinsics.checkNotNullParameter(tArr, "<this>");
        T[] tArr2 = (T[]) Arrays.copyOf(tArr, i9);
        Intrinsics.checkNotNullExpressionValue(tArr2, "copyOf(this, newSize)");
        Intrinsics.checkNotNull(tArr2, "null cannot be cast to non-null type kotlin.Array<T of kotlin.collections.builders.ListBuilderKt.copyOfUninitializedElements>");
        return tArr2;
    }

    public static final <E> void resetAt(@NotNull E[] eArr, int i9) {
        Intrinsics.checkNotNullParameter(eArr, "<this>");
        eArr[i9] = null;
    }

    public static final <E> void resetRange(@NotNull E[] eArr, int i9, int i10) {
        Intrinsics.checkNotNullParameter(eArr, "<this>");
        while (i9 < i10) {
            resetAt(eArr, i9);
            i9++;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final <T> boolean subarrayContentEquals(T[] tArr, int i9, int i10, List<?> list) {
        if (i10 != list.size()) {
            return false;
        }
        for (int i11 = 0; i11 < i10; i11++) {
            if (!Intrinsics.areEqual(tArr[i9 + i11], list.get(i11))) {
                return false;
            }
        }
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final <T> int subarrayContentHashCode(T[] tArr, int i9, int i10) {
        int i11 = 1;
        for (int i12 = 0; i12 < i10; i12++) {
            T t10 = tArr[i9 + i12];
            i11 = (i11 * 31) + (t10 != null ? t10.hashCode() : 0);
        }
        return i11;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final <T> String subarrayContentToString(T[] tArr, int i9, int i10) {
        StringBuilder sb2 = new StringBuilder((i10 * 3) + 2);
        sb2.append("[");
        for (int i11 = 0; i11 < i10; i11++) {
            if (i11 > 0) {
                sb2.append(", ");
            }
            sb2.append(tArr[i9 + i11]);
        }
        sb2.append("]");
        String sb3 = sb2.toString();
        Intrinsics.checkNotNullExpressionValue(sb3, "sb.toString()");
        return sb3;
    }
}
