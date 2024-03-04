package com.guochao.faceshow.aaspring.modulars.main.viewmodel;

import com.guochao.faceshow.aaspring.beans.ConversationInfo;
import com.guochao.faceshow.aaspring.db.repo.SystemConversationRepository;
import com.guochao.faceshow.aaspring.modulars.main.model.SystemConversationModel;
import java.util.ArrayList;
import java.util.List;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt;
import kotlin.coroutines.jvm.internal.Boxing;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.CoroutineScope;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* JADX INFO: Access modifiers changed from: package-private */
@Metadata(bv = {}, d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\u008a@"}, d2 = {"Lkotlinx/coroutines/CoroutineScope;", "", "<anonymous>"}, k = 3, mv = {1, 7, 1})
@DebugMetadata(c = "com.guochao.faceshow.aaspring.modulars.main.viewmodel.ConversationViewModel$2$1", f = "ConversationViewModel.kt", i = {}, l = {68}, m = "invokeSuspend", n = {}, s = {})
/* loaded from: classes3.dex */
public final class ConversationViewModel$2$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
    final /* synthetic */ List<ConversationInfo> $it;
    int label;
    final /* synthetic */ ConversationViewModel this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    public ConversationViewModel$2$1(ConversationViewModel conversationViewModel, List<? extends ConversationInfo> list, Continuation<? super ConversationViewModel$2$1> continuation) {
        super(2, continuation);
        this.this$0 = conversationViewModel;
        this.$it = list;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @NotNull
    public final Continuation<Unit> create(@Nullable Object obj, @NotNull Continuation<?> continuation) {
        return new ConversationViewModel$2$1(this.this$0, this.$it, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    @Nullable
    /* renamed from: invoke  reason: avoid collision after fix types in other method */
    public final Object mo1invoke(@NotNull CoroutineScope coroutineScope, @Nullable Continuation<? super Unit> continuation) {
        return ((ConversationViewModel$2$1) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        Object coroutine_suspended;
        coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i9 = this.label;
        if (i9 == 0) {
            ResultKt.throwOnFailure(obj);
            SystemConversationRepository systemConversationRepository = this.this$0.repo;
            List<ConversationInfo> it = this.$it;
            ArrayList arrayList = new ArrayList();
            Intrinsics.checkNotNullExpressionValue(it, "it");
            for (ConversationInfo conversationInfo : it) {
                String conversationId = conversationInfo.getConversationId();
                Intrinsics.checkNotNullExpressionValue(conversationId, "_info.conversationId");
                arrayList.add(new SystemConversationModel(conversationId, Boxing.boxLong(conversationInfo.getLastMsgTime()), conversationInfo.getLastMsgStr()));
            }
            this.label = 1;
            if (systemConversationRepository.insertOrUpdateConversations(arrayList, this) == coroutine_suspended) {
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
