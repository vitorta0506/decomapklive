package com.guochao.faceshow.aaspring.modulars.main.viewmodel;

import com.guochao.faceshow.aaspring.base.http.v2.Response;
import com.guochao.faceshow.aaspring.db.FriendInfo;
import com.guochao.faceshow.aaspring.modulars.friend.bean.FriendListBean;
import java.util.ArrayList;
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
@Metadata(bv = {}, d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u0010\u0004\u001a\u0012\u0012\u0004\u0012\u00020\u00020\u0001j\b\u0012\u0004\u0012\u00020\u0002`\u0003*\u00020\u0000H\u008a@"}, d2 = {"Lkotlinx/coroutines/CoroutineScope;", "Ljava/util/ArrayList;", "Lcom/guochao/faceshow/aaspring/db/FriendInfo;", "Lkotlin/collections/ArrayList;", "<anonymous>"}, k = 3, mv = {1, 7, 1})
@DebugMetadata(c = "com.guochao.faceshow.aaspring.modulars.main.viewmodel.FriendListViewModel$loadFriendData$2", f = "FriendListViewModel.kt", i = {}, l = {}, m = "invokeSuspend", n = {}, s = {})
/* loaded from: classes3.dex */
public final class FriendListViewModel$loadFriendData$2 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super ArrayList<FriendInfo>>, Object> {
    int label;
    final /* synthetic */ FriendListViewModel this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public FriendListViewModel$loadFriendData$2(FriendListViewModel friendListViewModel, Continuation<? super FriendListViewModel$loadFriendData$2> continuation) {
        super(2, continuation);
        this.this$0 = friendListViewModel;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @NotNull
    public final Continuation<Unit> create(@Nullable Object obj, @NotNull Continuation<?> continuation) {
        return new FriendListViewModel$loadFriendData$2(this.this$0, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    @Nullable
    /* renamed from: invoke  reason: avoid collision after fix types in other method */
    public final Object mo1invoke(@NotNull CoroutineScope coroutineScope, @Nullable Continuation<? super ArrayList<FriendInfo>> continuation) {
        return ((FriendListViewModel$loadFriendData$2) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        Response loadFriendDataFromServer;
        FriendListBean.Result result;
        IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
        if (this.label == 0) {
            ResultKt.throwOnFailure(obj);
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            int i9 = 1;
            do {
                try {
                    arrayList2.clear();
                    loadFriendDataFromServer = this.this$0.loadFriendDataFromServer(i9);
                    result = (FriendListBean.Result) loadFriendDataFromServer.getData();
                    if ((result != null ? result.getList() : null) == null) {
                        break;
                    }
                    List<FriendInfo> list = result.getList();
                    boolean z10 = false;
                    if (list != null && list.isEmpty()) {
                        z10 = true;
                    }
                    if (z10) {
                        break;
                    }
                    List<FriendInfo> list2 = result.getList();
                    if (list2 != null) {
                        arrayList2.addAll(list2);
                        arrayList.addAll(list2);
                    }
                    i9++;
                } catch (Exception e10) {
                    e10.printStackTrace();
                }
            } while (result.getCount() >= i9);
            return arrayList;
        }
        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
    }
}
