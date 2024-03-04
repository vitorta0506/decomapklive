package com.guochao.faceshow.aaspring.modulars.main.viewmodel;

import com.guochao.faceshow.aaspring.db.FriendInfo;
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
@Metadata(bv = {}, d1 = {"\u0000\u000e\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00020\u0001*\u00020\u0000H\u008a@"}, d2 = {"Lkotlinx/coroutines/CoroutineScope;", "", "Lcom/guochao/faceshow/aaspring/db/FriendInfo;", "<anonymous>"}, k = 3, mv = {1, 7, 1})
@DebugMetadata(c = "com.guochao.faceshow.aaspring.modulars.main.viewmodel.FriendListViewModel$getGroupList$2$friends$1", f = "FriendListViewModel.kt", i = {}, l = {89}, m = "invokeSuspend", n = {}, s = {})
/* loaded from: classes3.dex */
final class FriendListViewModel$getGroupList$2$friends$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super List<? extends FriendInfo>>, Object> {
    int label;
    final /* synthetic */ FriendListViewModel this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public FriendListViewModel$getGroupList$2$friends$1(FriendListViewModel friendListViewModel, Continuation<? super FriendListViewModel$getGroupList$2$friends$1> continuation) {
        super(2, continuation);
        this.this$0 = friendListViewModel;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @NotNull
    public final Continuation<Unit> create(@Nullable Object obj, @NotNull Continuation<?> continuation) {
        return new FriendListViewModel$getGroupList$2$friends$1(this.this$0, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    /* renamed from: invoke */
    public /* bridge */ /* synthetic */ Object mo1invoke(CoroutineScope coroutineScope, Continuation<? super List<? extends FriendInfo>> continuation) {
        return invoke2(coroutineScope, (Continuation<? super List<FriendInfo>>) continuation);
    }

    @Nullable
    /* renamed from: invoke  reason: avoid collision after fix types in other method */
    public final Object invoke2(@NotNull CoroutineScope coroutineScope, @Nullable Continuation<? super List<FriendInfo>> continuation) {
        return ((FriendListViewModel$getGroupList$2$friends$1) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        Object coroutine_suspended;
        coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i9 = this.label;
        if (i9 == 0) {
            ResultKt.throwOnFailure(obj);
            FriendListViewModel friendListViewModel = this.this$0;
            this.label = 1;
            obj = friendListViewModel.loadFriendData(this);
            if (obj == coroutine_suspended) {
                return coroutine_suspended;
            }
        } else if (i9 != 1) {
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        } else {
            ResultKt.throwOnFailure(obj);
        }
        return obj;
    }
}
