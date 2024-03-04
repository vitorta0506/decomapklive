package com.guochao.faceshow.aaspring.modulars.main.viewmodel;

import com.guochao.faceshow.aaspring.base.http.v2.GCRequest;
import com.guochao.faceshow.aaspring.base.http.v2.Requester;
import com.guochao.faceshow.aaspring.base.http.v2.Response;
import com.guochao.faceshow.aaspring.db.GroupInfo;
import com.guochao.faceshow.aaspring.modulars.friend.bean.GroupListBean;
import java.util.List;
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
/* JADX INFO: Access modifiers changed from: package-private */
@Metadata(bv = {}, d1 = {"\u0000\u000e\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\u0010\u0003\u001a\n\u0012\u0004\u0012\u00020\u0002\u0018\u00010\u0001*\u00020\u0000H\u008a@"}, d2 = {"Lkotlinx/coroutines/CoroutineScope;", "", "Lcom/guochao/faceshow/aaspring/db/GroupInfo;", "<anonymous>"}, k = 3, mv = {1, 7, 1})
@DebugMetadata(c = "com.guochao.faceshow.aaspring.modulars.main.viewmodel.FriendListViewModel$loadGroupFromServer$2", f = "FriendListViewModel.kt", i = {}, l = {}, m = "invokeSuspend", n = {}, s = {})
/* loaded from: classes3.dex */
public final class FriendListViewModel$loadGroupFromServer$2 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super List<? extends GroupInfo>>, Object> {
    int label;

    /* JADX INFO: Access modifiers changed from: package-private */
    public FriendListViewModel$loadGroupFromServer$2(Continuation<? super FriendListViewModel$loadGroupFromServer$2> continuation) {
        super(2, continuation);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @NotNull
    public final Continuation<Unit> create(@Nullable Object obj, @NotNull Continuation<?> continuation) {
        return new FriendListViewModel$loadGroupFromServer$2(continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    /* renamed from: invoke */
    public /* bridge */ /* synthetic */ Object mo1invoke(CoroutineScope coroutineScope, Continuation<? super List<? extends GroupInfo>> continuation) {
        return invoke2(coroutineScope, (Continuation<? super List<GroupInfo>>) continuation);
    }

    @Nullable
    /* renamed from: invoke  reason: avoid collision after fix types in other method */
    public final Object invoke2(@NotNull CoroutineScope coroutineScope, @Nullable Continuation<? super List<GroupInfo>> continuation) {
        return ((FriendListViewModel$loadGroupFromServer$2) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        Response response;
        IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
        if (this.label == 0) {
            ResultKt.throwOnFailure(obj);
            GCRequest gCRequest = new GCRequest("api/token/social/friend/group/list");
            try {
                response = Requester.INSTANCE.execute(gCRequest, gCRequest.buildRequestParams(), GroupListBean.Data.class);
            } catch (Exception e10) {
                e10.printStackTrace();
                Response fail = Response.Companion.fail(-1, null, e10.getMessage());
                fail.setError(e10);
                response = fail;
            }
            GroupListBean.Data data = (GroupListBean.Data) response.getData();
            if (data != null) {
                return data.getList();
            }
            return null;
        }
        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
    }
}
