package androidx.room;

import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.CoroutineContext;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.CoroutineScope;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* JADX INFO: Access modifiers changed from: package-private */
/* JADX INFO: Add missing generic type declarations: [R] */
@Metadata(bv = {}, d1 = {"\u0000\b\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0002\u001a\u00028\u0000\"\u0004\b\u0000\u0010\u0000*\u00020\u0001H\u008a@"}, d2 = {"R", "Lkotlinx/coroutines/CoroutineScope;", "<anonymous>"}, k = 3, mv = {1, 6, 0})
@DebugMetadata(c = "androidx.room.RoomDatabaseKt$withTransaction$2", f = "RoomDatabase.kt", i = {0}, l = {58}, m = "invokeSuspend", n = {"transactionElement"}, s = {"L$0"})
/* loaded from: classes.dex */
public final class RoomDatabaseKt$withTransaction$2<R> extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super R>, Object> {
    final /* synthetic */ Function1<Continuation<? super R>, Object> $block;
    final /* synthetic */ RoomDatabase $this_withTransaction;
    private /* synthetic */ Object L$0;
    int label;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    public RoomDatabaseKt$withTransaction$2(RoomDatabase roomDatabase, Function1<? super Continuation<? super R>, ? extends Object> function1, Continuation<? super RoomDatabaseKt$withTransaction$2> continuation) {
        super(2, continuation);
        this.$this_withTransaction = roomDatabase;
        this.$block = function1;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @NotNull
    public final Continuation<Unit> create(@Nullable Object obj, @NotNull Continuation<?> continuation) {
        RoomDatabaseKt$withTransaction$2 roomDatabaseKt$withTransaction$2 = new RoomDatabaseKt$withTransaction$2(this.$this_withTransaction, this.$block, continuation);
        roomDatabaseKt$withTransaction$2.L$0 = obj;
        return roomDatabaseKt$withTransaction$2;
    }

    @Override // kotlin.jvm.functions.Function2
    /* renamed from: invoke */
    public /* bridge */ /* synthetic */ Object mo1invoke(CoroutineScope coroutineScope, Object obj) {
        return invoke(coroutineScope, (Continuation) ((Continuation) obj));
    }

    @Nullable
    public final Object invoke(@NotNull CoroutineScope coroutineScope, @Nullable Continuation<? super R> continuation) {
        return ((RoomDatabaseKt$withTransaction$2) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v0, types: [java.lang.Object] */
    /* JADX WARN: Type inference failed for: r0v3 */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        TransactionElement coroutine_suspended;
        Throwable th2;
        TransactionElement transactionElement;
        coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i9 = this.label;
        try {
            if (i9 == 0) {
                ResultKt.throwOnFailure(obj);
                CoroutineContext.Element element = ((CoroutineScope) this.L$0).getCoroutineContext().get(TransactionElement.Key);
                Intrinsics.checkNotNull(element);
                TransactionElement transactionElement2 = (TransactionElement) element;
                transactionElement2.acquire();
                try {
                    this.$this_withTransaction.beginTransaction();
                    try {
                        Function1<Continuation<? super R>, Object> function1 = this.$block;
                        this.L$0 = transactionElement2;
                        this.label = 1;
                        Object invoke = function1.invoke(this);
                        if (invoke == coroutine_suspended) {
                            return coroutine_suspended;
                        }
                        transactionElement = transactionElement2;
                        obj = invoke;
                    } catch (Throwable th3) {
                        th2 = th3;
                        this.$this_withTransaction.endTransaction();
                        throw th2;
                    }
                } catch (Throwable th4) {
                    coroutine_suspended = transactionElement2;
                    th = th4;
                    coroutine_suspended.release();
                    throw th;
                }
            } else if (i9 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            } else {
                transactionElement = (TransactionElement) this.L$0;
                try {
                    ResultKt.throwOnFailure(obj);
                } catch (Throwable th5) {
                    th2 = th5;
                    this.$this_withTransaction.endTransaction();
                    throw th2;
                }
            }
            this.$this_withTransaction.setTransactionSuccessful();
            this.$this_withTransaction.endTransaction();
            transactionElement.release();
            return obj;
        } catch (Throwable th6) {
            th = th6;
        }
    }
}
