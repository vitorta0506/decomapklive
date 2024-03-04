package androidx.room;

import androidx.annotation.RestrictTo;
import java.util.Map;
import java.util.Objects;
import java.util.concurrent.Executor;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.CoroutineDispatcher;
import kotlinx.coroutines.ExecutorsKt;
import org.jetbrains.annotations.NotNull;
@Metadata(d1 = {"\u0000\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\u001a\f\u0010\u0005\u001a\u00020\u0001*\u00020\u0002H\u0007\"\u0018\u0010\u0000\u001a\u00020\u0001*\u00020\u00028@X\u0080\u0004¢\u0006\u0006\u001a\u0004\b\u0003\u0010\u0004¨\u0006\u0006"}, d2 = {"transactionDispatcher", "Lkotlinx/coroutines/CoroutineDispatcher;", "Landroidx/room/RoomDatabase;", "getTransactionDispatcher", "(Landroidx/room/RoomDatabase;)Lkotlinx/coroutines/CoroutineDispatcher;", "getQueryDispatcher", "room-ktx_release"}, k = 2, mv = {1, 6, 0}, xi = 48)
/* loaded from: classes.dex */
public final class CoroutinesRoomKt {
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    @NotNull
    public static final CoroutineDispatcher getQueryDispatcher(@NotNull RoomDatabase roomDatabase) {
        Intrinsics.checkNotNullParameter(roomDatabase, "<this>");
        Map<String, Object> backingFieldMap = roomDatabase.getBackingFieldMap();
        Intrinsics.checkNotNullExpressionValue(backingFieldMap, "backingFieldMap");
        Object obj = backingFieldMap.get("QueryDispatcher");
        if (obj == null) {
            Executor queryExecutor = roomDatabase.getQueryExecutor();
            Intrinsics.checkNotNullExpressionValue(queryExecutor, "queryExecutor");
            obj = ExecutorsKt.from(queryExecutor);
            backingFieldMap.put("QueryDispatcher", obj);
        }
        Objects.requireNonNull(obj, "null cannot be cast to non-null type kotlinx.coroutines.CoroutineDispatcher");
        return (CoroutineDispatcher) obj;
    }

    @NotNull
    public static final CoroutineDispatcher getTransactionDispatcher(@NotNull RoomDatabase roomDatabase) {
        Intrinsics.checkNotNullParameter(roomDatabase, "<this>");
        Map<String, Object> backingFieldMap = roomDatabase.getBackingFieldMap();
        Intrinsics.checkNotNullExpressionValue(backingFieldMap, "backingFieldMap");
        Object obj = backingFieldMap.get("TransactionDispatcher");
        if (obj == null) {
            Executor transactionExecutor = roomDatabase.getTransactionExecutor();
            Intrinsics.checkNotNullExpressionValue(transactionExecutor, "transactionExecutor");
            obj = ExecutorsKt.from(transactionExecutor);
            backingFieldMap.put("TransactionDispatcher", obj);
        }
        Objects.requireNonNull(obj, "null cannot be cast to non-null type kotlinx.coroutines.CoroutineDispatcher");
        return (CoroutineDispatcher) obj;
    }
}
