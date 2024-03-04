package com.guochao.faceshow.signin.viewmodel;

import androidx.lifecycle.MutableLiveData;
import androidx.lifecycle.ViewModelKt;
import com.guochao.faceshow.aaspring.base.mvvm.model.BaseModel;
import com.guochao.faceshow.aaspring.base.mvvm.viewmodel.BaseViewModel;
import com.guochao.faceshow.signin.bean.SigninBean;
import kotlin.Metadata;
import kotlinx.coroutines.BuildersKt__Builders_commonKt;
import kotlinx.coroutines.CoroutineScopeKt;
import kotlinx.coroutines.Dispatchers;
import org.jetbrains.annotations.NotNull;
@Metadata(d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0003J\u0006\u0010\f\u001a\u00020\rJ\u0006\u0010\u000e\u001a\u00020\rR\u0017\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00060\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u0007\u0010\bR\u0019\u0010\t\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\n0\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u000b\u0010\b¨\u0006\u000f"}, d2 = {"Lcom/guochao/faceshow/signin/viewmodel/SigninCenterViewModel;", "Lcom/guochao/faceshow/aaspring/base/mvvm/viewmodel/BaseViewModel;", "Lcom/guochao/faceshow/aaspring/base/mvvm/model/BaseModel;", "()V", "mutableGrowLiveData", "Landroidx/lifecycle/MutableLiveData;", "", "getMutableGrowLiveData", "()Landroidx/lifecycle/MutableLiveData;", "signinTaskLiveData", "Lcom/guochao/faceshow/signin/bean/SigninBean;", "getSigninTaskLiveData", "checkGrowStatus", "", "checkSignInTask", "lib_sign_in_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
/* loaded from: classes4.dex */
public final class SigninCenterViewModel extends BaseViewModel<BaseModel> {
    @NotNull
    private final MutableLiveData<Boolean> mutableGrowLiveData = new MutableLiveData<>();
    @NotNull
    private final MutableLiveData<SigninBean> signinTaskLiveData = new MutableLiveData<>();

    public final void checkGrowStatus() {
        BuildersKt__Builders_commonKt.launch$default(ViewModelKt.getViewModelScope(this), Dispatchers.getMain(), null, new SigninCenterViewModel$checkGrowStatus$1(this, null), 2, null);
    }

    public final void checkSignInTask() {
        BuildersKt__Builders_commonKt.launch$default(CoroutineScopeKt.MainScope(), Dispatchers.getMain(), null, new SigninCenterViewModel$checkSignInTask$1(this, null), 2, null);
    }

    @NotNull
    public final MutableLiveData<Boolean> getMutableGrowLiveData() {
        return this.mutableGrowLiveData;
    }

    @NotNull
    public final MutableLiveData<SigninBean> getSigninTaskLiveData() {
        return this.signinTaskLiveData;
    }
}
