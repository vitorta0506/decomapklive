package com.guochao.faceshow.aaspring.base.test;

import android.util.Log;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.BuildersKt__Builders_commonKt;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.Deferred;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(bv = {}, d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\u008a@"}, d2 = {"Lkotlinx/coroutines/CoroutineScope;", "", "<anonymous>"}, k = 3, mv = {1, 7, 1})
@DebugMetadata(c = "com.guochao.faceshow.aaspring.base.test.TestViewModel$testAsync$1", f = "TestViewModel.kt", i = {0}, l = {30, 30}, m = "invokeSuspend", n = {"i2"}, s = {"L$0"})
/* loaded from: classes3.dex */
final class TestViewModel$testAsync$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
    int I$0;
    private /* synthetic */ Object L$0;
    int label;
    final /* synthetic */ TestViewModel this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public TestViewModel$testAsync$1(TestViewModel testViewModel, Continuation<? super TestViewModel$testAsync$1> continuation) {
        super(2, continuation);
        this.this$0 = testViewModel;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @NotNull
    public final Continuation<Unit> create(@Nullable Object obj, @NotNull Continuation<?> continuation) {
        TestViewModel$testAsync$1 testViewModel$testAsync$1 = new TestViewModel$testAsync$1(this.this$0, continuation);
        testViewModel$testAsync$1.L$0 = obj;
        return testViewModel$testAsync$1;
    }

    @Override // kotlin.jvm.functions.Function2
    @Nullable
    /* renamed from: invoke  reason: avoid collision after fix types in other method */
    public final Object mo1invoke(@NotNull CoroutineScope coroutineScope, @Nullable Continuation<? super Unit> continuation) {
        return ((TestViewModel$testAsync$1) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        Object coroutine_suspended;
        Deferred async$default;
        Deferred async$default2;
        Deferred deferred;
        int i9;
        coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i10 = this.label;
        if (i10 == 0) {
            ResultKt.throwOnFailure(obj);
            CoroutineScope coroutineScope = (CoroutineScope) this.L$0;
            async$default = BuildersKt__Builders_commonKt.async$default(coroutineScope, null, null, new TestViewModel$testAsync$1$i$1(this.this$0, null), 3, null);
            async$default2 = BuildersKt__Builders_commonKt.async$default(coroutineScope, null, null, new TestViewModel$testAsync$1$i2$1(this.this$0, null), 3, null);
            this.L$0 = async$default2;
            this.label = 1;
            Object await = async$default.await(this);
            if (await == coroutine_suspended) {
                return coroutine_suspended;
            }
            deferred = async$default2;
            obj = await;
        } else if (i10 != 1) {
            if (i10 != 2) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            i9 = this.I$0;
            ResultKt.throwOnFailure(obj);
            int intValue = i9 + ((Number) obj).intValue();
            Log.i(TestViewModelKt.TAG, "testAsync: " + intValue);
            return Unit.INSTANCE;
        } else {
            deferred = (Deferred) this.L$0;
            ResultKt.throwOnFailure(obj);
        }
        int intValue2 = ((Number) obj).intValue();
        this.L$0 = null;
        this.I$0 = intValue2;
        this.label = 2;
        Object await2 = deferred.await(this);
        if (await2 == coroutine_suspended) {
            return coroutine_suspended;
        }
        i9 = intValue2;
        obj = await2;
        int intValue3 = i9 + ((Number) obj).intValue();
        Log.i(TestViewModelKt.TAG, "testAsync: " + intValue3);
        return Unit.INSTANCE;
    }
}
