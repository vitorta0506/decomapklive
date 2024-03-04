package androidx.collection;

import androidx.exifinterface.media.ExifInterface;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function4;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000:\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0000\u001aø\u0001\u0010\u0000\u001a\u000e\u0012\u0004\u0012\u0002H\u0002\u0012\u0004\u0012\u0002H\u00030\u0001\"\b\b\u0000\u0010\u0002*\u00020\u0004\"\b\b\u0001\u0010\u0003*\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u000628\b\u0006\u0010\u0007\u001a2\u0012\u0013\u0012\u0011H\u0002¢\u0006\f\b\t\u0012\b\b\n\u0012\u0004\b\b(\u000b\u0012\u0013\u0012\u0011H\u0003¢\u0006\f\b\t\u0012\b\b\n\u0012\u0004\b\b(\f\u0012\u0004\u0012\u00020\u00060\b2%\b\u0006\u0010\r\u001a\u001f\u0012\u0013\u0012\u0011H\u0002¢\u0006\f\b\t\u0012\b\b\n\u0012\u0004\b\b(\u000b\u0012\u0006\u0012\u0004\u0018\u0001H\u00030\u000e2d\b\u0006\u0010\u000f\u001a^\u0012\u0013\u0012\u00110\u0011¢\u0006\f\b\t\u0012\b\b\n\u0012\u0004\b\b(\u0012\u0012\u0013\u0012\u0011H\u0002¢\u0006\f\b\t\u0012\b\b\n\u0012\u0004\b\b(\u000b\u0012\u0013\u0012\u0011H\u0003¢\u0006\f\b\t\u0012\b\b\n\u0012\u0004\b\b(\u0013\u0012\u0015\u0012\u0013\u0018\u0001H\u0003¢\u0006\f\b\t\u0012\b\b\n\u0012\u0004\b\b(\u0014\u0012\u0004\u0012\u00020\u00150\u0010H\u0086\b¨\u0006\u0016"}, d2 = {"lruCache", "Landroidx/collection/LruCache;", "K", ExifInterface.GPS_MEASUREMENT_INTERRUPTED, "", "maxSize", "", "sizeOf", "Lkotlin/Function2;", "Lkotlin/ParameterName;", "name", "key", "value", "create", "Lkotlin/Function1;", "onEntryRemoved", "Lkotlin/Function4;", "", "evicted", "oldValue", "newValue", "", "collection-ktx"}, k = 2, mv = {1, 1, 13})
/* loaded from: classes.dex */
public final class LruCacheKt {
    @NotNull
    public static final <K, V> LruCache<K, V> lruCache(int i9, @NotNull Function2<? super K, ? super V, Integer> function2, @NotNull Function1<? super K, ? extends V> function1, @NotNull Function4<? super Boolean, ? super K, ? super V, ? super V, Unit> function4) {
        return new LruCacheKt$lruCache$4(function2, function1, function4, i9, i9);
    }

    @NotNull
    public static /* synthetic */ LruCache lruCache$default(int i9, Function2 function2, Function1 function1, Function4 function4, int i10, Object obj) {
        if ((i10 & 2) != 0) {
            function2 = new Function2() { // from class: androidx.collection.LruCacheKt$lruCache$1
                public final int invoke(@NotNull Object obj2, @NotNull Object obj3) {
                    return 1;
                }

                @Override // kotlin.jvm.functions.Function2
                /* renamed from: invoke  reason: collision with other method in class */
                public /* bridge */ /* synthetic */ Object mo1invoke(Object obj2, Object obj3) {
                    return Integer.valueOf(invoke(obj2, obj3));
                }
            };
        }
        Function2 function22 = function2;
        if ((i10 & 4) != 0) {
            function1 = new Function1() { // from class: androidx.collection.LruCacheKt$lruCache$2
                @Override // kotlin.jvm.functions.Function1
                @Nullable
                public final Object invoke(@NotNull Object obj2) {
                    return null;
                }
            };
        }
        Function1 function12 = function1;
        if ((i10 & 8) != 0) {
            function4 = new Function4() { // from class: androidx.collection.LruCacheKt$lruCache$3
                @Override // kotlin.jvm.functions.Function4
                public /* bridge */ /* synthetic */ Object invoke(Object obj2, Object obj3, Object obj4, Object obj5) {
                    invoke(((Boolean) obj2).booleanValue(), obj3, obj4, obj5);
                    return Unit.INSTANCE;
                }

                public final void invoke(boolean z10, @NotNull Object obj2, @NotNull Object obj3, @Nullable Object obj4) {
                }
            };
        }
        return new LruCacheKt$lruCache$4(function22, function12, function4, i9, i9);
    }
}
