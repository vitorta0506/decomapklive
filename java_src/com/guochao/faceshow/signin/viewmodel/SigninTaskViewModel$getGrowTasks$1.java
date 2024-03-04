package com.guochao.faceshow.signin.viewmodel;

import androidx.lifecycle.MutableLiveData;
import com.guochao.faceshow.aaspring.base.http.v2.Response;
import com.guochao.faceshow.signin.bean.GrowTaskBean;
import com.guochao.faceshow.signin.bean.RewardList;
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
import kotlinx.coroutines.BuildersKt;
import kotlinx.coroutines.CoroutineDispatcher;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.Dispatchers;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(bv = {}, d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\u008a@"}, d2 = {"Lkotlinx/coroutines/CoroutineScope;", "", "<anonymous>"}, k = 3, mv = {1, 7, 1})
@DebugMetadata(c = "com.guochao.faceshow.signin.viewmodel.SigninTaskViewModel$getGrowTasks$1", f = "SigninTaskViewModel.kt", i = {}, l = {28}, m = "invokeSuspend", n = {}, s = {})
/* loaded from: classes4.dex */
final class SigninTaskViewModel$getGrowTasks$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
    int label;
    final /* synthetic */ SigninTaskViewModel this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public SigninTaskViewModel$getGrowTasks$1(SigninTaskViewModel signinTaskViewModel, Continuation<? super SigninTaskViewModel$getGrowTasks$1> continuation) {
        super(2, continuation);
        this.this$0 = signinTaskViewModel;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @NotNull
    public final Continuation<Unit> create(@Nullable Object obj, @NotNull Continuation<?> continuation) {
        return new SigninTaskViewModel$getGrowTasks$1(this.this$0, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    @Nullable
    /* renamed from: invoke  reason: avoid collision after fix types in other method */
    public final Object mo1invoke(@NotNull CoroutineScope coroutineScope, @Nullable Continuation<? super Unit> continuation) {
        return ((SigninTaskViewModel$getGrowTasks$1) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        Object coroutine_suspended;
        coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i9 = this.label;
        if (i9 == 0) {
            ResultKt.throwOnFailure(obj);
            CoroutineDispatcher io2 = Dispatchers.getIO();
            SigninTaskViewModel$getGrowTasks$1$response$1 signinTaskViewModel$getGrowTasks$1$response$1 = new SigninTaskViewModel$getGrowTasks$1$response$1(null);
            this.label = 1;
            obj = BuildersKt.withContext(io2, signinTaskViewModel$getGrowTasks$1$response$1, this);
            if (obj == coroutine_suspended) {
                return coroutine_suspended;
            }
        } else if (i9 != 1) {
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        } else {
            ResultKt.throwOnFailure(obj);
        }
        Response response = (Response) obj;
        List<GrowTaskBean> list = (List) response.getData();
        if (list != null) {
            for (GrowTaskBean growTaskBean : list) {
                ArrayList arrayList = new ArrayList();
                List<RewardList> prizeVoList = growTaskBean.getPrizeVoList();
                if (prizeVoList != null) {
                    for (RewardList rewardList : prizeVoList) {
                        Integer prizeType = rewardList.getPrizeType();
                        if (prizeType == null || prizeType.intValue() != 7) {
                            arrayList.add(rewardList);
                        }
                    }
                }
                growTaskBean.setPrizeVoList(arrayList);
            }
        }
        MutableLiveData<List<GrowTaskBean>> growTaskList = this.this$0.getGrowTaskList();
        List<GrowTaskBean> list2 = (List) response.getData();
        if (list2 == null) {
            list2 = new ArrayList<>();
        }
        growTaskList.setValue(list2);
        return Unit.INSTANCE;
    }
}
