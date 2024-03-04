package androidx.room;

import java.util.concurrent.CancellationException;
import java.util.concurrent.Executor;
import java.util.concurrent.RejectedExecutionException;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.ContinuationInterceptor;
import kotlin.coroutines.CoroutineContext;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsJvmKt;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.DebugProbesKt;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.BuildersKt__BuildersKt;
import kotlinx.coroutines.CancellableContinuation;
import kotlinx.coroutines.CancellableContinuationImpl;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.Job;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(d1 = {"\u00000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\u001a\u001d\u0010\u0000\u001a\u00020\u0001*\u00020\u00022\u0006\u0010\u0003\u001a\u00020\u0004H\u0082@ø\u0001\u0000¢\u0006\u0002\u0010\u0005\u001a\u0015\u0010\u0006\u001a\u00020\u0007*\u00020\bH\u0082@ø\u0001\u0000¢\u0006\u0002\u0010\t\u001a9\u0010\n\u001a\u0002H\u000b\"\u0004\b\u0000\u0010\u000b*\u00020\b2\u001c\u0010\f\u001a\u0018\b\u0001\u0012\n\u0012\b\u0012\u0004\u0012\u0002H\u000b0\u000e\u0012\u0006\u0012\u0004\u0018\u00010\u000f0\rH\u0086@ø\u0001\u0000¢\u0006\u0002\u0010\u0010\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006\u0011"}, d2 = {"acquireTransactionThread", "Lkotlin/coroutines/ContinuationInterceptor;", "Ljava/util/concurrent/Executor;", "controlJob", "Lkotlinx/coroutines/Job;", "(Ljava/util/concurrent/Executor;Lkotlinx/coroutines/Job;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "createTransactionContext", "Lkotlin/coroutines/CoroutineContext;", "Landroidx/room/RoomDatabase;", "(Landroidx/room/RoomDatabase;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "withTransaction", "R", "block", "Lkotlin/Function1;", "Lkotlin/coroutines/Continuation;", "", "(Landroidx/room/RoomDatabase;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "room-ktx_release"}, k = 2, mv = {1, 6, 0}, xi = 48)
/* loaded from: classes.dex */
public final class RoomDatabaseKt {
    /* JADX INFO: Access modifiers changed from: private */
    public static final Object acquireTransactionThread(Executor executor, final Job job, Continuation<? super ContinuationInterceptor> continuation) {
        Continuation intercepted;
        Object coroutine_suspended;
        intercepted = IntrinsicsKt__IntrinsicsJvmKt.intercepted(continuation);
        final CancellableContinuationImpl cancellableContinuationImpl = new CancellableContinuationImpl(intercepted, 1);
        cancellableContinuationImpl.initCancellability();
        cancellableContinuationImpl.invokeOnCancellation(new Function1<Throwable, Unit>() { // from class: androidx.room.RoomDatabaseKt$acquireTransactionThread$2$1
            /* JADX INFO: Access modifiers changed from: package-private */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(Throwable th2) {
                invoke2(th2);
                return Unit.INSTANCE;
            }

            /* renamed from: invoke  reason: avoid collision after fix types in other method */
            public final void invoke2(@Nullable Throwable th2) {
                Job.DefaultImpls.cancel$default(Job.this, (CancellationException) null, 1, (Object) null);
            }
        });
        try {
            executor.execute(new Runnable() { // from class: androidx.room.RoomDatabaseKt$acquireTransactionThread$2$2

                @Metadata(bv = {}, d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\u008a@"}, d2 = {"Lkotlinx/coroutines/CoroutineScope;", "", "<anonymous>"}, k = 3, mv = {1, 6, 0})
                @DebugMetadata(c = "androidx.room.RoomDatabaseKt$acquireTransactionThread$2$2$1", f = "RoomDatabase.kt", i = {}, l = {124}, m = "invokeSuspend", n = {}, s = {})
                /* renamed from: androidx.room.RoomDatabaseKt$acquireTransactionThread$2$2$1  reason: invalid class name */
                /* loaded from: classes.dex */
                static final class AnonymousClass1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
                    final /* synthetic */ CancellableContinuation<ContinuationInterceptor> $continuation;
                    final /* synthetic */ Job $controlJob;
                    private /* synthetic */ Object L$0;
                    int label;

                    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                    /* JADX WARN: Multi-variable type inference failed */
                    AnonymousClass1(CancellableContinuation<? super ContinuationInterceptor> cancellableContinuation, Job job, Continuation<? super AnonymousClass1> continuation) {
                        super(2, continuation);
                        this.$continuation = cancellableContinuation;
                        this.$controlJob = job;
                    }

                    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
                    @NotNull
                    public final Continuation<Unit> create(@Nullable Object obj, @NotNull Continuation<?> continuation) {
                        AnonymousClass1 anonymousClass1 = new AnonymousClass1(this.$continuation, this.$controlJob, continuation);
                        anonymousClass1.L$0 = obj;
                        return anonymousClass1;
                    }

                    @Override // kotlin.jvm.functions.Function2
                    @Nullable
                    /* renamed from: invoke  reason: avoid collision after fix types in other method */
                    public final Object mo1invoke(@NotNull CoroutineScope coroutineScope, @Nullable Continuation<? super Unit> continuation) {
                        return ((AnonymousClass1) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
                    }

                    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
                    @Nullable
                    public final Object invokeSuspend(@NotNull Object obj) {
                        Object coroutine_suspended;
                        coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
                        int i9 = this.label;
                        if (i9 == 0) {
                            ResultKt.throwOnFailure(obj);
                            CancellableContinuation<ContinuationInterceptor> cancellableContinuation = this.$continuation;
                            Result.Companion companion = Result.Companion;
                            CoroutineContext.Element element = ((CoroutineScope) this.L$0).getCoroutineContext().get(ContinuationInterceptor.Key);
                            Intrinsics.checkNotNull(element);
                            cancellableContinuation.resumeWith(Result.m1657constructorimpl(element));
                            Job job = this.$controlJob;
                            this.label = 1;
                            if (job.join(this) == coroutine_suspended) {
                                return coroutine_suspended;
                            }
                        } else if (i9 != 1) {
                            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                        } else {
                            ResultKt.throwOnFailure(obj);
                        }
                        return Unit.INSTANCE;
                    }
                }

                @Override // java.lang.Runnable
                public final void run() {
                    BuildersKt__BuildersKt.runBlocking$default(null, new AnonymousClass1(cancellableContinuationImpl, job, null), 1, null);
                }
            });
        } catch (RejectedExecutionException e10) {
            cancellableContinuationImpl.cancel(new IllegalStateException("Unable to acquire a thread to perform the database transaction.", e10));
        }
        Object result = cancellableContinuationImpl.getResult();
        coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
        if (result == coroutine_suspended) {
            DebugProbesKt.probeCoroutineSuspended(continuation);
        }
        return result;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Removed duplicated region for block: B:10:0x0023  */
    /* JADX WARN: Removed duplicated region for block: B:14:0x0039  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final java.lang.Object createTransactionContext(androidx.room.RoomDatabase r6, kotlin.coroutines.Continuation<? super kotlin.coroutines.CoroutineContext> r7) {
        /*
            boolean r0 = r7 instanceof androidx.room.RoomDatabaseKt$createTransactionContext$1
            if (r0 == 0) goto L13
            r0 = r7
            androidx.room.RoomDatabaseKt$createTransactionContext$1 r0 = (androidx.room.RoomDatabaseKt$createTransactionContext$1) r0
            int r1 = r0.label
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.label = r1
            goto L18
        L13:
            androidx.room.RoomDatabaseKt$createTransactionContext$1 r0 = new androidx.room.RoomDatabaseKt$createTransactionContext$1
            r0.<init>(r7)
        L18:
            java.lang.Object r7 = r0.result
            java.lang.Object r1 = kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r2 = r0.label
            r3 = 1
            if (r2 == 0) goto L39
            if (r2 != r3) goto L31
            java.lang.Object r6 = r0.L$1
            kotlinx.coroutines.CompletableJob r6 = (kotlinx.coroutines.CompletableJob) r6
            java.lang.Object r0 = r0.L$0
            androidx.room.RoomDatabase r0 = (androidx.room.RoomDatabase) r0
            kotlin.ResultKt.throwOnFailure(r7)
            goto L72
        L31:
            java.lang.IllegalStateException r6 = new java.lang.IllegalStateException
            java.lang.String r7 = "call to 'resume' before 'invoke' with coroutine"
            r6.<init>(r7)
            throw r6
        L39:
            kotlin.ResultKt.throwOnFailure(r7)
            r7 = 0
            kotlinx.coroutines.CompletableJob r7 = kotlinx.coroutines.JobKt.Job$default(r7, r3, r7)
            kotlin.coroutines.CoroutineContext r2 = r0.getContext()
            kotlinx.coroutines.Job$Key r4 = kotlinx.coroutines.Job.Key
            kotlin.coroutines.CoroutineContext$Element r2 = r2.get(r4)
            kotlinx.coroutines.Job r2 = (kotlinx.coroutines.Job) r2
            if (r2 != 0) goto L50
            goto L58
        L50:
            androidx.room.RoomDatabaseKt$createTransactionContext$2 r4 = new androidx.room.RoomDatabaseKt$createTransactionContext$2
            r4.<init>()
            r2.invokeOnCompletion(r4)
        L58:
            java.util.concurrent.Executor r2 = r6.getTransactionExecutor()
            java.lang.String r4 = "transactionExecutor"
            kotlin.jvm.internal.Intrinsics.checkNotNullExpressionValue(r2, r4)
            r0.L$0 = r6
            r0.L$1 = r7
            r0.label = r3
            java.lang.Object r0 = acquireTransactionThread(r2, r7, r0)
            if (r0 != r1) goto L6e
            return r1
        L6e:
            r5 = r0
            r0 = r6
            r6 = r7
            r7 = r5
        L72:
            kotlin.coroutines.ContinuationInterceptor r7 = (kotlin.coroutines.ContinuationInterceptor) r7
            androidx.room.TransactionElement r1 = new androidx.room.TransactionElement
            r1.<init>(r6, r7)
            java.lang.ThreadLocal r0 = r0.getSuspendingTransactionId()
            java.lang.String r2 = "suspendingTransactionId"
            kotlin.jvm.internal.Intrinsics.checkNotNullExpressionValue(r0, r2)
            int r6 = java.lang.System.identityHashCode(r6)
            java.lang.Integer r6 = kotlin.coroutines.jvm.internal.Boxing.boxInt(r6)
            kotlinx.coroutines.ThreadContextElement r6 = kotlinx.coroutines.ThreadContextElementKt.asContextElement(r0, r6)
            kotlin.coroutines.CoroutineContext r7 = r7.plus(r1)
            kotlin.coroutines.CoroutineContext r6 = r7.plus(r6)
            return r6
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.room.RoomDatabaseKt.createTransactionContext(androidx.room.RoomDatabase, kotlin.coroutines.Continuation):java.lang.Object");
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0025  */
    /* JADX WARN: Removed duplicated region for block: B:16:0x0044  */
    /* JADX WARN: Removed duplicated region for block: B:27:0x007d A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:28:0x007e A[PHI: r9 
      PHI: (r9v13 java.lang.Object) = (r9v10 java.lang.Object), (r9v1 java.lang.Object) binds: [B:26:0x007b, B:12:0x0029] A[DONT_GENERATE, DONT_INLINE], RETURN] */
    @org.jetbrains.annotations.Nullable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final <R> java.lang.Object withTransaction(@org.jetbrains.annotations.NotNull androidx.room.RoomDatabase r7, @org.jetbrains.annotations.NotNull kotlin.jvm.functions.Function1<? super kotlin.coroutines.Continuation<? super R>, ? extends java.lang.Object> r8, @org.jetbrains.annotations.NotNull kotlin.coroutines.Continuation<? super R> r9) {
        /*
            boolean r0 = r9 instanceof androidx.room.RoomDatabaseKt$withTransaction$1
            if (r0 == 0) goto L13
            r0 = r9
            androidx.room.RoomDatabaseKt$withTransaction$1 r0 = (androidx.room.RoomDatabaseKt$withTransaction$1) r0
            int r1 = r0.label
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.label = r1
            goto L18
        L13:
            androidx.room.RoomDatabaseKt$withTransaction$1 r0 = new androidx.room.RoomDatabaseKt$withTransaction$1
            r0.<init>(r9)
        L18:
            java.lang.Object r9 = r0.result
            java.lang.Object r1 = kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r2 = r0.label
            r3 = 2
            r4 = 1
            r5 = 0
            if (r2 == 0) goto L44
            if (r2 == r4) goto L35
            if (r2 != r3) goto L2d
            kotlin.ResultKt.throwOnFailure(r9)
            goto L7e
        L2d:
            java.lang.IllegalStateException r7 = new java.lang.IllegalStateException
            java.lang.String r8 = "call to 'resume' before 'invoke' with coroutine"
            r7.<init>(r8)
            throw r7
        L35:
            java.lang.Object r7 = r0.L$1
            kotlin.jvm.functions.Function1 r7 = (kotlin.jvm.functions.Function1) r7
            java.lang.Object r8 = r0.L$0
            androidx.room.RoomDatabase r8 = (androidx.room.RoomDatabase) r8
            kotlin.ResultKt.throwOnFailure(r9)
            r6 = r8
            r8 = r7
            r7 = r6
            goto L6a
        L44:
            kotlin.ResultKt.throwOnFailure(r9)
            kotlin.coroutines.CoroutineContext r9 = r0.getContext()
            androidx.room.TransactionElement$Key r2 = androidx.room.TransactionElement.Key
            kotlin.coroutines.CoroutineContext$Element r9 = r9.get(r2)
            androidx.room.TransactionElement r9 = (androidx.room.TransactionElement) r9
            if (r9 != 0) goto L57
            r9 = r5
            goto L5b
        L57:
            kotlin.coroutines.ContinuationInterceptor r9 = r9.getTransactionDispatcher$room_ktx_release()
        L5b:
            if (r9 != 0) goto L6c
            r0.L$0 = r7
            r0.L$1 = r8
            r0.label = r4
            java.lang.Object r9 = createTransactionContext(r7, r0)
            if (r9 != r1) goto L6a
            return r1
        L6a:
            kotlin.coroutines.CoroutineContext r9 = (kotlin.coroutines.CoroutineContext) r9
        L6c:
            androidx.room.RoomDatabaseKt$withTransaction$2 r2 = new androidx.room.RoomDatabaseKt$withTransaction$2
            r2.<init>(r7, r8, r5)
            r0.L$0 = r5
            r0.L$1 = r5
            r0.label = r3
            java.lang.Object r9 = kotlinx.coroutines.BuildersKt.withContext(r9, r2, r0)
            if (r9 != r1) goto L7e
            return r1
        L7e:
            return r9
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.room.RoomDatabaseKt.withTransaction(androidx.room.RoomDatabase, kotlin.jvm.functions.Function1, kotlin.coroutines.Continuation):java.lang.Object");
    }
}
