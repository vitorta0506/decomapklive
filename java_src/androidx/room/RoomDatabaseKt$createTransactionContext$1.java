package androidx.room;

import kotlin.Metadata;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* JADX INFO: Access modifiers changed from: package-private */
@Metadata(k = 3, mv = {1, 6, 0}, xi = 48)
@DebugMetadata(c = "androidx.room.RoomDatabaseKt", f = "RoomDatabase.kt", i = {0, 0}, l = {99}, m = "createTransactionContext", n = {"$this$createTransactionContext", "controlJob"}, s = {"L$0", "L$1"})
/* loaded from: classes.dex */
public final class RoomDatabaseKt$createTransactionContext$1 extends ContinuationImpl {
    Object L$0;
    Object L$1;
    int label;
    /* synthetic */ Object result;

    /* JADX INFO: Access modifiers changed from: package-private */
    public RoomDatabaseKt$createTransactionContext$1(Continuation<? super RoomDatabaseKt$createTransactionContext$1> continuation) {
        super(continuation);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        Object createTransactionContext;
        this.result = obj;
        this.label |= Integer.MIN_VALUE;
        createTransactionContext = RoomDatabaseKt.createTransactionContext(null, this);
        return createTransactionContext;
    }
}
