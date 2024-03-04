package com.guochao.component.mvp.viewmodel;

import androidx.core.app.NotificationCompat;
import androidx.lifecycle.LiveData;
import androidx.lifecycle.MutableLiveData;
import androidx.lifecycle.ViewModelKt;
import com.guochao.component.mvp.model.GetInterestsRequestModel;
import com.guochao.component.mvp.model.GetRewardRequestModel;
import com.guochao.component.mvp.model.MVPInfoModel;
import com.guochao.component.mvp.model.UserModel;
import com.guochao.component.mvp.repository.MVPRepository;
import com.guochao.faceshow.aaspring.base.http.v2.Response;
import com.guochao.faceshow.aaspring.base.mvvm.viewmodel.BaseViewModel;
import com.guochao.faceshow.utils.Contants;
import java.util.List;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.BuildersKt__Builders_commonKt;
import kotlinx.coroutines.Dispatchers;
import org.jetbrains.annotations.NotNull;
@Metadata(d1 = {"\u0000h\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0003J\u000e\u0010\u0010\u001a\u00020\u00112\u0006\u0010\u0012\u001a\u00020\u0013J@\u0010\u0014\u001a\u00020\u00112\u0006\u0010\u0015\u001a\u00020\u00162(\u0010\u0017\u001a$\b\u0001\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u001a0\u0019\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00110\u001b\u0012\u0006\u0012\u0004\u0018\u00010\u001c0\u0018ø\u0001\u0000¢\u0006\u0002\u0010\u001dJF\u0010\u0014\u001a\u00020\u00112\f\u0010\u001e\u001a\b\u0012\u0004\u0012\u00020\u00160\u001f2(\u0010\u0017\u001a$\b\u0001\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u001a0\u0019\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00110\u001b\u0012\u0006\u0012\u0004\u0018\u00010\u001c0\u0018ø\u0001\u0000¢\u0006\u0002\u0010 J\u0006\u0010\b\u001a\u00020\u0011J@\u0010!\u001a\u00020\u00112\u0006\u0010\u0015\u001a\u00020\"2(\u0010\u0017\u001a$\b\u0001\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u001a0\u0019\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00110\u001b\u0012\u0006\u0012\u0004\u0018\u00010\u001c0\u0018ø\u0001\u0000¢\u0006\u0002\u0010#J@\u0010$\u001a\u00020\u00112\u0006\u0010\u0015\u001a\u00020\"2(\u0010\u0017\u001a$\b\u0001\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u001a0\u0019\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00110\u001b\u0012\u0006\u0012\u0004\u0018\u00010\u001c0\u0018ø\u0001\u0000¢\u0006\u0002\u0010#R\u0014\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00020\u0005X\u0082\u0004¢\u0006\u0002\n\u0000R\u0014\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\u00070\u0005X\u0082\u0004¢\u0006\u0002\n\u0000R\u0017\u0010\b\u001a\b\u0012\u0004\u0012\u00020\u00020\t¢\u0006\b\n\u0000\u001a\u0004\b\n\u0010\u000bR\u000e\u0010\f\u001a\u00020\rX\u0082\u0004¢\u0006\u0002\n\u0000R\u0017\u0010\u000e\u001a\b\u0012\u0004\u0012\u00020\u00070\t¢\u0006\b\n\u0000\u001a\u0004\b\u000f\u0010\u000b\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006%"}, d2 = {"Lcom/guochao/component/mvp/viewmodel/MVPUserInfoViewModel;", "Lcom/guochao/faceshow/aaspring/base/mvvm/viewmodel/BaseViewModel;", "Lcom/guochao/component/mvp/model/MVPInfoModel;", "()V", "_myMVPInfo", "Landroidx/lifecycle/MutableLiveData;", "_userModel", "Lcom/guochao/component/mvp/model/UserModel;", "myMVPInfo", "Landroidx/lifecycle/LiveData;", "getMyMVPInfo", "()Landroidx/lifecycle/LiveData;", "repository", "Lcom/guochao/component/mvp/repository/MVPRepository;", "userModel", "getUserModel", "findUserById", "", Contants.USER_ID, "", "getReward", "bean", "Lcom/guochao/component/mvp/model/GetRewardRequestModel;", NotificationCompat.CATEGORY_CALL, "Lkotlin/Function2;", "Lcom/guochao/faceshow/aaspring/base/http/v2/Response;", "", "Lkotlin/coroutines/Continuation;", "", "(Lcom/guochao/component/mvp/model/GetRewardRequestModel;Lkotlin/jvm/functions/Function2;)V", "list", "", "(Ljava/util/List;Lkotlin/jvm/functions/Function2;)V", "setFreeTime", "Lcom/guochao/component/mvp/model/GetInterestsRequestModel;", "(Lcom/guochao/component/mvp/model/GetInterestsRequestModel;Lkotlin/jvm/functions/Function2;)V", "setWorldTop", "component_mvp_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
/* loaded from: classes3.dex */
public final class MVPUserInfoViewModel extends BaseViewModel<MVPInfoModel> {
    @NotNull
    private final MutableLiveData<MVPInfoModel> _myMVPInfo;
    @NotNull
    private final MutableLiveData<UserModel> _userModel;
    @NotNull
    private final LiveData<MVPInfoModel> myMVPInfo;
    @NotNull
    private final MVPRepository repository = new MVPRepository();
    @NotNull
    private final LiveData<UserModel> userModel;

    public MVPUserInfoViewModel() {
        MutableLiveData<UserModel> mutableLiveData = new MutableLiveData<>();
        this._userModel = mutableLiveData;
        this.userModel = mutableLiveData;
        MutableLiveData<MVPInfoModel> mutableLiveData2 = new MutableLiveData<>();
        this._myMVPInfo = mutableLiveData2;
        this.myMVPInfo = mutableLiveData2;
    }

    public final void findUserById(@NotNull String userId) {
        Intrinsics.checkNotNullParameter(userId, "userId");
        BuildersKt__Builders_commonKt.launch$default(ViewModelKt.getViewModelScope(this), Dispatchers.getMain(), null, new MVPUserInfoViewModel$findUserById$1(this, userId, null), 2, null);
    }

    @NotNull
    public final LiveData<MVPInfoModel> getMyMVPInfo() {
        return this.myMVPInfo;
    }

    public final void getReward(@NotNull GetRewardRequestModel bean, @NotNull Function2<? super Response<Integer>, ? super Continuation<? super Unit>, ? extends Object> call) {
        Intrinsics.checkNotNullParameter(bean, "bean");
        Intrinsics.checkNotNullParameter(call, "call");
        BuildersKt__Builders_commonKt.launch$default(ViewModelKt.getViewModelScope(this), Dispatchers.getMain(), null, new MVPUserInfoViewModel$getReward$1(this, bean, call, null), 2, null);
    }

    @NotNull
    public final LiveData<UserModel> getUserModel() {
        return this.userModel;
    }

    public final void myMVPInfo() {
        BuildersKt__Builders_commonKt.launch$default(ViewModelKt.getViewModelScope(this), Dispatchers.getMain(), null, new MVPUserInfoViewModel$myMVPInfo$1(this, null), 2, null);
    }

    public final void setFreeTime(@NotNull GetInterestsRequestModel bean, @NotNull Function2<? super Response<Integer>, ? super Continuation<? super Unit>, ? extends Object> call) {
        Intrinsics.checkNotNullParameter(bean, "bean");
        Intrinsics.checkNotNullParameter(call, "call");
        BuildersKt__Builders_commonKt.launch$default(ViewModelKt.getViewModelScope(this), Dispatchers.getMain(), null, new MVPUserInfoViewModel$setFreeTime$1(this, bean, call, null), 2, null);
    }

    public final void setWorldTop(@NotNull GetInterestsRequestModel bean, @NotNull Function2<? super Response<Integer>, ? super Continuation<? super Unit>, ? extends Object> call) {
        Intrinsics.checkNotNullParameter(bean, "bean");
        Intrinsics.checkNotNullParameter(call, "call");
        BuildersKt__Builders_commonKt.launch$default(ViewModelKt.getViewModelScope(this), Dispatchers.getMain(), null, new MVPUserInfoViewModel$setWorldTop$1(this, bean, call, null), 2, null);
    }

    public final void getReward(@NotNull List<GetRewardRequestModel> list, @NotNull Function2<? super Response<Integer>, ? super Continuation<? super Unit>, ? extends Object> call) {
        Intrinsics.checkNotNullParameter(list, "list");
        Intrinsics.checkNotNullParameter(call, "call");
        BuildersKt__Builders_commonKt.launch$default(ViewModelKt.getViewModelScope(this), Dispatchers.getMain(), null, new MVPUserInfoViewModel$getReward$2(this, list, call, null), 2, null);
    }
}
