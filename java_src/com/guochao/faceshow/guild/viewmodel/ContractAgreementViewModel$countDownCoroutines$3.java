package com.guochao.faceshow.guild.viewmodel;

import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt;
import kotlin.coroutines.jvm.internal.Boxing;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(bv = {}, d1 = {"\u0000\f\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u0002\n\u0000\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0001\u001a\u00020\u0000H\u008a@"}, d2 = {"", "it", "", "<anonymous>"}, k = 3, mv = {1, 7, 1})
@DebugMetadata(c = "com.guochao.faceshow.guild.viewmodel.ContractAgreementViewModel$countDownCoroutines$3", f = "ContractAgreementViewModel.kt", i = {}, l = {}, m = "invokeSuspend", n = {}, s = {})
/* loaded from: classes4.dex */
final class ContractAgreementViewModel$countDownCoroutines$3 extends SuspendLambda implements Function2<Integer, Continuation<? super Unit>, Object> {
    final /* synthetic */ Function1<Integer, Unit> $onTick;
    /* synthetic */ int I$0;
    int label;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    public ContractAgreementViewModel$countDownCoroutines$3(Function1<? super Integer, Unit> function1, Continuation<? super ContractAgreementViewModel$countDownCoroutines$3> continuation) {
        super(2, continuation);
        this.$onTick = function1;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @NotNull
    public final Continuation<Unit> create(@Nullable Object obj, @NotNull Continuation<?> continuation) {
        ContractAgreementViewModel$countDownCoroutines$3 contractAgreementViewModel$countDownCoroutines$3 = new ContractAgreementViewModel$countDownCoroutines$3(this.$onTick, continuation);
        contractAgreementViewModel$countDownCoroutines$3.I$0 = ((Number) obj).intValue();
        return contractAgreementViewModel$countDownCoroutines$3;
    }

    @Nullable
    public final Object invoke(int i9, @Nullable Continuation<? super Unit> continuation) {
        return ((ContractAgreementViewModel$countDownCoroutines$3) create(Integer.valueOf(i9), continuation)).invokeSuspend(Unit.INSTANCE);
    }

    @Override // kotlin.jvm.functions.Function2
    /* renamed from: invoke */
    public /* bridge */ /* synthetic */ Object mo1invoke(Integer num, Continuation<? super Unit> continuation) {
        return invoke(num.intValue(), continuation);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
        if (this.label == 0) {
            ResultKt.throwOnFailure(obj);
            this.$onTick.invoke(Boxing.boxInt(this.I$0));
            return Unit.INSTANCE;
        }
        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
    }
}
