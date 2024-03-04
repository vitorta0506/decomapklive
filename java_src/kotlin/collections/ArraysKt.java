package kotlin.collections;

import java.util.List;
import kotlin.Metadata;
import kotlin.PublishedApi;
import kotlin.SinceKotlin;
import kotlin.jvm.JvmName;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(d1 = {"kotlin/collections/ArraysKt__ArraysJVMKt", "kotlin/collections/ArraysKt__ArraysKt", "kotlin/collections/ArraysKt___ArraysJvmKt", "kotlin/collections/ArraysKt___ArraysKt"}, k = 4, mv = {1, 7, 1}, xi = 49)
/* loaded from: classes7.dex */
public final class ArraysKt extends ArraysKt___ArraysKt {
    private ArraysKt() {
    }

    @SinceKotlin(version = "1.3")
    @NotNull
    public static /* bridge */ /* synthetic */ byte[] copyInto(@NotNull byte[] bArr, @NotNull byte[] bArr2, int i9, int i10, int i11) {
        return ArraysKt___ArraysJvmKt.copyInto(bArr, bArr2, i9, i10, i11);
    }

    @SinceKotlin(version = "1.3")
    @JvmName(name = "copyOfRange")
    @NotNull
    @PublishedApi
    public static /* bridge */ /* synthetic */ byte[] copyOfRange(@NotNull byte[] bArr, int i9, int i10) {
        return ArraysKt___ArraysJvmKt.copyOfRange(bArr, i9, i10);
    }

    @Nullable
    public static /* bridge */ /* synthetic */ Object getOrNull(@NotNull Object[] objArr, int i9) {
        return ArraysKt___ArraysKt.getOrNull(objArr, i9);
    }

    @NotNull
    public static /* bridge */ /* synthetic */ List toList(@NotNull Object[] objArr) {
        return ArraysKt___ArraysKt.toList(objArr);
    }

    @NotNull
    public static /* bridge */ /* synthetic */ List toMutableList(@NotNull Object[] objArr) {
        return ArraysKt___ArraysKt.toMutableList(objArr);
    }
}
