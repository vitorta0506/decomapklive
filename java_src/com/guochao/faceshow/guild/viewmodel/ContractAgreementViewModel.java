package com.guochao.faceshow.guild.viewmodel;

import com.guochao.faceshow.aaspring.base.mvvm.model.BaseModel;
import com.guochao.faceshow.aaspring.base.mvvm.viewmodel.BaseViewModel;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.Dispatchers;
import kotlinx.coroutines.Job;
import kotlinx.coroutines.flow.FlowKt;
import org.jetbrains.annotations.NotNull;
@Metadata(d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0003J0\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00072\u0012\u0010\b\u001a\u000e\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\n0\t2\f\u0010\u000b\u001a\b\u0012\u0004\u0012\u00020\n0\f¨\u0006\r"}, d2 = {"Lcom/guochao/faceshow/guild/viewmodel/ContractAgreementViewModel;", "Lcom/guochao/faceshow/aaspring/base/mvvm/viewmodel/BaseViewModel;", "Lcom/guochao/faceshow/aaspring/base/mvvm/model/BaseModel;", "()V", "countDownCoroutines", "Lkotlinx/coroutines/Job;", "total", "", "onTick", "Lkotlin/Function1;", "", "onFinish", "Lkotlin/Function0;", "component_guild_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
/* loaded from: classes4.dex */
public final class ContractAgreementViewModel extends BaseViewModel<BaseModel> {
    @NotNull
    public final Job countDownCoroutines(int i9, @NotNull Function1<? super Integer, Unit> onTick, @NotNull Function0<Unit> onFinish) {
        Intrinsics.checkNotNullParameter(onTick, "onTick");
        Intrinsics.checkNotNullParameter(onFinish, "onFinish");
        return FlowKt.launchIn(FlowKt.flowOn(FlowKt.onEach(FlowKt.onCompletion(FlowKt.flowOn(FlowKt.flow(new ContractAgreementViewModel$countDownCoroutines$1(i9, null)), Dispatchers.getDefault()), new ContractAgreementViewModel$countDownCoroutines$2(onFinish, null)), new ContractAgreementViewModel$countDownCoroutines$3(onTick, null)), Dispatchers.getMain()), getLifecycleSupportedScope());
    }
}
