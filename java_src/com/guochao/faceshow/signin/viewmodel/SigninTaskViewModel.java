package com.guochao.faceshow.signin.viewmodel;

import androidx.lifecycle.MutableLiveData;
import androidx.lifecycle.ViewModelKt;
import com.guochao.faceshow.aaspring.base.mvvm.model.BaseModel;
import com.guochao.faceshow.aaspring.base.mvvm.viewmodel.BaseViewModel;
import com.guochao.faceshow.signin.bean.GrowTaskBean;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.BuildersKt__Builders_commonKt;
import kotlinx.coroutines.Dispatchers;
import org.jetbrains.annotations.NotNull;
@Metadata(d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010!\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0003\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0003J\u0006\u0010\f\u001a\u00020\rJ\u0006\u0010\u000e\u001a\u00020\rJ\u000e\u0010\u0004\u001a\u00020\r2\u0006\u0010\u000f\u001a\u00020\u0006R\u0017\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00060\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u0007\u0010\bR\u001d\u0010\t\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00060\n0\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u000b\u0010\b¨\u0006\u0010"}, d2 = {"Lcom/guochao/faceshow/signin/viewmodel/SigninTaskViewModel;", "Lcom/guochao/faceshow/aaspring/base/mvvm/viewmodel/BaseViewModel;", "Lcom/guochao/faceshow/aaspring/base/mvvm/model/BaseModel;", "()V", "getSigninReward", "Landroidx/lifecycle/MutableLiveData;", "Lcom/guochao/faceshow/signin/bean/GrowTaskBean;", "getGetSigninReward", "()Landroidx/lifecycle/MutableLiveData;", "growTaskList", "", "getGrowTaskList", "getDaysSignInTasks", "", "getGrowTasks", "itemData", "lib_sign_in_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
/* loaded from: classes4.dex */
public final class SigninTaskViewModel extends BaseViewModel<BaseModel> {
    @NotNull
    private final MutableLiveData<List<GrowTaskBean>> growTaskList = new MutableLiveData<>();
    @NotNull
    private final MutableLiveData<GrowTaskBean> getSigninReward = new MutableLiveData<>();

    public final void getDaysSignInTasks() {
        BuildersKt__Builders_commonKt.launch$default(ViewModelKt.getViewModelScope(this), Dispatchers.getMain(), null, new SigninTaskViewModel$getDaysSignInTasks$1(this, null), 2, null);
    }

    @NotNull
    public final MutableLiveData<GrowTaskBean> getGetSigninReward() {
        return this.getSigninReward;
    }

    @NotNull
    public final MutableLiveData<List<GrowTaskBean>> getGrowTaskList() {
        return this.growTaskList;
    }

    public final void getGrowTasks() {
        BuildersKt__Builders_commonKt.launch$default(ViewModelKt.getViewModelScope(this), Dispatchers.getMain(), null, new SigninTaskViewModel$getGrowTasks$1(this, null), 2, null);
    }

    public final void getSigninReward(@NotNull GrowTaskBean itemData) {
        Intrinsics.checkNotNullParameter(itemData, "itemData");
        BuildersKt__Builders_commonKt.launch$default(ViewModelKt.getViewModelScope(this), Dispatchers.getMain(), null, new SigninTaskViewModel$getSigninReward$1(this, itemData, null), 2, null);
    }
}
