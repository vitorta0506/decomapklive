package com.guochao.faceshow.aaspring.modulars.main.viewmodel;

import androidx.lifecycle.MutableLiveData;
import com.guochao.faceshow.aaspring.base.http.v2.Response;
import com.guochao.faceshow.aaspring.beans.ConversationInfo;
import com.guochao.faceshow.aaspring.modulars.main.model.ConversationModel;
import java.util.List;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Ref;
import kotlinx.coroutines.CoroutineScope;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* JADX INFO: Access modifiers changed from: package-private */
@Metadata(bv = {}, d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\u008a@"}, d2 = {"Lkotlinx/coroutines/CoroutineScope;", "", "<anonymous>"}, k = 3, mv = {1, 7, 1})
@DebugMetadata(c = "com.guochao.faceshow.aaspring.modulars.main.viewmodel.ConversationViewModel$loadTopRecommendUsers$2$1$1", f = "ConversationViewModel.kt", i = {}, l = {}, m = "invokeSuspend", n = {}, s = {})
/* loaded from: classes3.dex */
public final class ConversationViewModel$loadTopRecommendUsers$2$1$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
    final /* synthetic */ Response<ConversationModel.TopOnlineUserListModel> $onlines;
    final /* synthetic */ List<ConversationInfo> $this_apply;
    int label;
    final /* synthetic */ ConversationViewModel this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ConversationViewModel$loadTopRecommendUsers$2$1$1(List<ConversationInfo> list, ConversationViewModel conversationViewModel, Response<ConversationModel.TopOnlineUserListModel> response, Continuation<? super ConversationViewModel$loadTopRecommendUsers$2$1$1> continuation) {
        super(2, continuation);
        this.$this_apply = list;
        this.this$0 = conversationViewModel;
        this.$onlines = response;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @NotNull
    public final Continuation<Unit> create(@Nullable Object obj, @NotNull Continuation<?> continuation) {
        return new ConversationViewModel$loadTopRecommendUsers$2$1$1(this.$this_apply, this.this$0, this.$onlines, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    @Nullable
    /* renamed from: invoke  reason: avoid collision after fix types in other method */
    public final Object mo1invoke(@NotNull CoroutineScope coroutineScope, @Nullable Continuation<? super Unit> continuation) {
        return ((ConversationViewModel$loadTopRecommendUsers$2$1$1) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        MutableLiveData modelLiveData;
        MutableLiveData modelLiveData2;
        List<ConversationModel.TopOnlineUserModel> list;
        IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
        if (this.label == 0) {
            ResultKt.throwOnFailure(obj);
            Ref.BooleanRef booleanRef = new Ref.BooleanRef();
            List<ConversationInfo> list2 = this.$this_apply;
            Response<ConversationModel.TopOnlineUserListModel> response = this.$onlines;
            for (ConversationInfo conversationInfo : list2) {
                ConversationModel.TopOnlineUserListModel data = response.getData();
                if (data != null && (list = data.getList()) != null) {
                    for (ConversationModel.TopOnlineUserModel topOnlineUserModel : list) {
                        if (Intrinsics.areEqual(conversationInfo.getConversationId(), topOnlineUserModel.getUserId())) {
                            conversationInfo.setOnlineStatus(1);
                            booleanRef.element = true;
                        }
                    }
                }
            }
            if (booleanRef.element) {
                modelLiveData = this.this$0.getModelLiveData();
                modelLiveData2 = this.this$0.getModelLiveData();
                modelLiveData.setValue(modelLiveData2.getValue());
            }
            return Unit.INSTANCE;
        }
        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
    }
}
