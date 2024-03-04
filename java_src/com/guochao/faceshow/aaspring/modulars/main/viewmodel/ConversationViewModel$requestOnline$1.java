package com.guochao.faceshow.aaspring.modulars.main.viewmodel;

import com.guochao.faceshow.aaspring.modulars.main.model.ConversationModel;
import com.tencent.xmagic.BuildConfig;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* JADX INFO: Access modifiers changed from: package-private */
@Metadata(bv = {}, d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\u008a@"}, d2 = {"Lkotlinx/coroutines/CoroutineScope;", "", "<anonymous>"}, k = 3, mv = {1, 7, 1})
@DebugMetadata(c = "com.guochao.faceshow.aaspring.modulars.main.viewmodel.ConversationViewModel$requestOnline$1", f = "ConversationViewModel.kt", i = {}, l = {BuildConfig.VERSION_CODE}, m = "invokeSuspend", n = {}, s = {})
/* loaded from: classes3.dex */
public final class ConversationViewModel$requestOnline$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
    final /* synthetic */ int[] $array;
    final /* synthetic */ Function1<ConversationModel.OnlineStatusModel, Unit> $callback;
    int label;
    final /* synthetic */ ConversationViewModel this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    public ConversationViewModel$requestOnline$1(ConversationViewModel conversationViewModel, int[] iArr, Function1<? super ConversationModel.OnlineStatusModel, Unit> function1, Continuation<? super ConversationViewModel$requestOnline$1> continuation) {
        super(2, continuation);
        this.this$0 = conversationViewModel;
        this.$array = iArr;
        this.$callback = function1;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @NotNull
    public final Continuation<Unit> create(@Nullable Object obj, @NotNull Continuation<?> continuation) {
        return new ConversationViewModel$requestOnline$1(this.this$0, this.$array, this.$callback, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    @Nullable
    /* renamed from: invoke  reason: avoid collision after fix types in other method */
    public final Object mo1invoke(@NotNull CoroutineScope coroutineScope, @Nullable Continuation<? super Unit> continuation) {
        return ((ConversationViewModel$requestOnline$1) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        Object coroutine_suspended;
        coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i9 = this.label;
        if (i9 == 0) {
            ResultKt.throwOnFailure(obj);
            ConversationViewModel conversationViewModel = this.this$0;
            int[] iArr = this.$array;
            this.label = 1;
            obj = conversationViewModel.requestOnlineStatusToServer(iArr, this);
            if (obj == coroutine_suspended) {
                return coroutine_suspended;
            }
        } else if (i9 != 1) {
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        } else {
            ResultKt.throwOnFailure(obj);
        }
        this.$callback.invoke((ConversationModel.OnlineStatusModel) obj);
        return Unit.INSTANCE;
    }
}
