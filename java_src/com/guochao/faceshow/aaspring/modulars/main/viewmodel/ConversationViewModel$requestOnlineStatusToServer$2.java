package com.guochao.faceshow.aaspring.modulars.main.viewmodel;

import com.guochao.faceshow.aaspring.base.http.v2.GCRequest;
import com.guochao.faceshow.aaspring.base.http.v2.GCRequestKt;
import com.guochao.faceshow.aaspring.base.http.v2.Requester;
import com.guochao.faceshow.aaspring.base.http.v2.Response;
import com.guochao.faceshow.aaspring.modulars.main.model.ConversationModel;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(bv = {}, d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u0010\u0002\u001a\u0004\u0018\u00010\u0001*\u00020\u0000H\u008a@"}, d2 = {"Lkotlinx/coroutines/CoroutineScope;", "Lcom/guochao/faceshow/aaspring/modulars/main/model/ConversationModel$OnlineStatusModel;", "<anonymous>"}, k = 3, mv = {1, 7, 1})
@DebugMetadata(c = "com.guochao.faceshow.aaspring.modulars.main.viewmodel.ConversationViewModel$requestOnlineStatusToServer$2", f = "ConversationViewModel.kt", i = {}, l = {}, m = "invokeSuspend", n = {}, s = {})
/* loaded from: classes3.dex */
final class ConversationViewModel$requestOnlineStatusToServer$2 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super ConversationModel.OnlineStatusModel>, Object> {
    final /* synthetic */ int[] $ids;
    int label;
    final /* synthetic */ ConversationViewModel this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ConversationViewModel$requestOnlineStatusToServer$2(ConversationViewModel conversationViewModel, int[] iArr, Continuation<? super ConversationViewModel$requestOnlineStatusToServer$2> continuation) {
        super(2, continuation);
        this.this$0 = conversationViewModel;
        this.$ids = iArr;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @NotNull
    public final Continuation<Unit> create(@Nullable Object obj, @NotNull Continuation<?> continuation) {
        return new ConversationViewModel$requestOnlineStatusToServer$2(this.this$0, this.$ids, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    @Nullable
    /* renamed from: invoke  reason: avoid collision after fix types in other method */
    public final Object mo1invoke(@NotNull CoroutineScope coroutineScope, @Nullable Continuation<? super ConversationModel.OnlineStatusModel> continuation) {
        return ((ConversationViewModel$requestOnlineStatusToServer$2) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        Response response;
        IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
        if (this.label == 0) {
            ResultKt.throwOnFailure(obj);
            GCRequest putBody = GCRequestKt.requestFromViewModel(this.this$0, "api/token/user/online/infos").putBody("userIds", this.$ids);
            try {
                response = Requester.INSTANCE.execute(putBody, putBody.buildRequestParams(), ConversationModel.OnlineStatusModel.class);
            } catch (Exception e10) {
                e10.printStackTrace();
                Response fail = Response.Companion.fail(-1, null, e10.getMessage());
                fail.setError(e10);
                response = fail;
            }
            return response.getData();
        }
        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
    }
}
