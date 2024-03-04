package com.guochao.faceshow.aaspring.modulars.user.tag;

import androidx.lifecycle.LifecycleOwner;
import androidx.lifecycle.MutableLiveData;
import androidx.lifecycle.Observer;
import androidx.lifecycle.ViewModel;
import com.guochao.faceshow.BaseApplication;
import com.guochao.faceshow.R;
import com.guochao.faceshow.aaspring.base.http.request.GetRequest;
import com.guochao.faceshow.aaspring.base.http.request.PostRequest;
import com.guochao.faceshow.aaspring.base.http.response.FaceCastBaseResponse;
import com.guochao.faceshow.aaspring.beans.SetInfoData;
import com.guochao.faceshow.aaspring.beans.UserHobbyBean;
import com.guochao.faceshow.aaspring.modulars.user.tag.UserEditHobbyTagActivity;
import com.guochao.faceshow.aaspring.modulars.user.tag.UserEditLikedTagActivity;
import com.guochao.faceshow.aaspring.utils.ToastUtils;
import com.guochao.faceshow.bean.EmotionalTag;
import com.guochao.faceshow.utils.Contants;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.greenrobot.eventbus.EventBus;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(d1 = {"\u0000P\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\u0010$\n\u0002\u0010\u000e\n\u0002\u0010\u0000\n\u0002\b\u0005\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u000b\n\u0002\u0010 \n\u0002\b\u0003\u0018\u00002\u00020\u0001:\u0001*B\u0005¢\u0006\u0002\u0010\u0002J.\u0010\u0017\u001a\u00020\u00182\b\u0010\u0019\u001a\u0004\u0018\u00010\u001a2\u001c\u0010\u001b\u001a\u0018\u0012\u0014\u0012\u0012\u0012\u0004\u0012\u00020\u0011\u0012\u0006\u0012\u0004\u0018\u00010\u0012\u0018\u00010\u00100\u001cJ\u0006\u0010\u001d\u001a\u00020\u0018J\u0006\u0010\u001e\u001a\u00020\u0018J\u0006\u0010\u001f\u001a\u00020\u0018J\u001e\u0010 \u001a\u0018\u0012\u0014\u0012\u0012\u0012\u0004\u0012\u00020\u0011\u0012\u0006\u0012\u0004\u0018\u00010\u0012\u0018\u00010\u00100\u000fH\u0002J$\u0010!\u001a\u00020\u00182\u001c\u0010\u001b\u001a\u0018\u0012\u0014\u0012\u0012\u0012\u0004\u0012\u00020\u0011\u0012\u0006\u0012\u0004\u0018\u00010\u0012\u0018\u00010\u00100\u001cJ\u0016\u0010\"\u001a\u00020\u00182\u0006\u0010#\u001a\u00020\u00112\u0006\u0010$\u001a\u00020\u0011J\u001c\u0010%\u001a\u00020\u00182\u0006\u0010&\u001a\u00020\u00112\f\u0010'\u001a\b\u0012\u0004\u0012\u00020\u00110(J\u001c\u0010)\u001a\u00020\u00182\u0006\u0010&\u001a\u00020\u00112\f\u0010'\u001a\b\u0012\u0004\u0012\u00020\u00110(R\u0019\u0010\u0003\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00050\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0006\u0010\u0007R\u001c\u0010\b\u001a\u0004\u0018\u00010\tX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\n\u0010\u000b\"\u0004\b\f\u0010\rR1\u0010\u000e\u001a\u0018\u0012\u0014\u0012\u0012\u0012\u0004\u0012\u00020\u0011\u0012\u0006\u0012\u0004\u0018\u00010\u0012\u0018\u00010\u00100\u000f8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u0015\u0010\u0016\u001a\u0004\b\u0013\u0010\u0014¨\u0006+"}, d2 = {"Lcom/guochao/faceshow/aaspring/modulars/user/tag/UserEditViewModel;", "Landroidx/lifecycle/ViewModel;", "()V", "mEmotionalList", "", "Lcom/guochao/faceshow/bean/EmotionalTag;", "getMEmotionalList", "()Ljava/util/List;", "mUserData", "Lcom/guochao/faceshow/aaspring/beans/SetInfoData;", "getMUserData", "()Lcom/guochao/faceshow/aaspring/beans/SetInfoData;", "setMUserData", "(Lcom/guochao/faceshow/aaspring/beans/SetInfoData;)V", "modelLiveData", "Landroidx/lifecycle/MutableLiveData;", "", "", "", "getModelLiveData", "()Landroidx/lifecycle/MutableLiveData;", "modelLiveData$delegate", "Lkotlin/Lazy;", "bind", "", "lifecycleOwner", "Landroidx/lifecycle/LifecycleOwner;", "observer", "Landroidx/lifecycle/Observer;", "getFriendShipByUserId", "getUserHobbyTag", "getUserLikedTag", "obtainLiveData", "unbind", "updateUserFriendShip", "tagIds", "tagNames", "updateUserHobbyTag", "hobbyIds", "hobbyNames", "", "updateUserLikedTag", "UpdateUserInfoEvent", "app_GooglePlayRelease"}, k = 1, mv = {1, 7, 1}, xi = 48)
/* loaded from: classes3.dex */
public final class UserEditViewModel extends ViewModel {
    @NotNull
    private final List<EmotionalTag> mEmotionalList;
    @Nullable
    private SetInfoData mUserData;
    @NotNull
    private final Lazy modelLiveData$delegate;

    @Metadata(d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0005\u0018\u00002\u00020\u0001B\u0011\u0012\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u0003¢\u0006\u0002\u0010\u0004R\u001c\u0010\u0002\u001a\u0004\u0018\u00010\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0005\u0010\u0006\"\u0004\b\u0007\u0010\u0004¨\u0006\b"}, d2 = {"Lcom/guochao/faceshow/aaspring/modulars/user/tag/UserEditViewModel$UpdateUserInfoEvent;", "", "signature", "", "(Ljava/lang/String;)V", "getSignature", "()Ljava/lang/String;", "setSignature", "app_GooglePlayRelease"}, k = 1, mv = {1, 7, 1}, xi = 48)
    /* loaded from: classes3.dex */
    public static final class UpdateUserInfoEvent {
        @Nullable
        private String signature;

        public UpdateUserInfoEvent() {
            this(null, 1, null);
        }

        public UpdateUserInfoEvent(@Nullable String str) {
            this.signature = str;
        }

        @Nullable
        public final String getSignature() {
            return this.signature;
        }

        public final void setSignature(@Nullable String str) {
            this.signature = str;
        }

        public /* synthetic */ UpdateUserInfoEvent(String str, int i9, DefaultConstructorMarker defaultConstructorMarker) {
            this((i9 & 1) != 0 ? null : str);
        }
    }

    public UserEditViewModel() {
        Lazy lazy;
        lazy = LazyKt__LazyJVMKt.lazy(new Function0<MutableLiveData<Map<String, ? extends Object>>>() { // from class: com.guochao.faceshow.aaspring.modulars.user.tag.UserEditViewModel$modelLiveData$2
            /* JADX INFO: Access modifiers changed from: package-private */
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            @NotNull
            /* renamed from: invoke */
            public final MutableLiveData<Map<String, ? extends Object>> invoke2() {
                MutableLiveData<Map<String, ? extends Object>> obtainLiveData;
                obtainLiveData = UserEditViewModel.this.obtainLiveData();
                return obtainLiveData;
            }
        });
        this.modelLiveData$delegate = lazy;
        this.mEmotionalList = new ArrayList();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final MutableLiveData<Map<String, Object>> getModelLiveData() {
        return (MutableLiveData) this.modelLiveData$delegate.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final MutableLiveData<Map<String, Object>> obtainLiveData() {
        return new MutableLiveData<>();
    }

    public final void bind(@Nullable LifecycleOwner lifecycleOwner, @NotNull Observer<Map<String, Object>> observer) {
        Intrinsics.checkNotNullParameter(observer, "observer");
        if (lifecycleOwner == null) {
            getModelLiveData().observeForever(observer);
        } else {
            getModelLiveData().observe(lifecycleOwner, observer);
        }
    }

    public final void getFriendShipByUserId() {
        new PostRequest(Contants.findfriendByUserId).M(new com.guochao.faceshow.aaspring.base.http.callback.c<List<? extends EmotionalTag>>() { // from class: com.guochao.faceshow.aaspring.modulars.user.tag.UserEditViewModel$getFriendShipByUserId$1
            @Override // com.guochao.faceshow.aaspring.base.http.callback.c
            public void onFailure(@NotNull g7.a<List<? extends EmotionalTag>> exp) {
                Intrinsics.checkNotNullParameter(exp, "exp");
            }

            @Override // com.guochao.faceshow.aaspring.base.http.callback.c
            public /* bridge */ /* synthetic */ void onResponse(List<? extends EmotionalTag> list, FaceCastBaseResponse<List<? extends EmotionalTag>> faceCastBaseResponse) {
                onResponse2(list, (FaceCastBaseResponse<List<EmotionalTag>>) faceCastBaseResponse);
            }

            /* renamed from: onResponse  reason: avoid collision after fix types in other method */
            public void onResponse2(@Nullable List<? extends EmotionalTag> list, @NotNull FaceCastBaseResponse<List<EmotionalTag>> baseResponse) {
                MutableLiveData modelLiveData;
                Intrinsics.checkNotNullParameter(baseResponse, "baseResponse");
                if (list != null) {
                    UserEditViewModel userEditViewModel = UserEditViewModel.this;
                    userEditViewModel.getMEmotionalList().clear();
                    userEditViewModel.getMEmotionalList().addAll(list);
                    HashMap hashMap = new HashMap();
                    hashMap.put("getFriendShipByUserId", 1);
                    modelLiveData = userEditViewModel.getModelLiveData();
                    modelLiveData.setValue(hashMap);
                }
            }
        });
    }

    @NotNull
    public final List<EmotionalTag> getMEmotionalList() {
        return this.mEmotionalList;
    }

    @Nullable
    public final SetInfoData getMUserData() {
        return this.mUserData;
    }

    public final void getUserHobbyTag() {
        new PostRequest("tokens/hobby/queryHobbyByUserId/V2").M(new com.guochao.faceshow.aaspring.base.http.callback.c<UserHobbyBean>() { // from class: com.guochao.faceshow.aaspring.modulars.user.tag.UserEditViewModel$getUserHobbyTag$1
            @Override // com.guochao.faceshow.aaspring.base.http.callback.c
            public void onFailure(@NotNull g7.a<UserHobbyBean> exp) {
                Intrinsics.checkNotNullParameter(exp, "exp");
            }

            @Override // com.guochao.faceshow.aaspring.base.http.callback.c
            public void onResponse(@Nullable UserHobbyBean userHobbyBean, @NotNull FaceCastBaseResponse<UserHobbyBean> baseResponse) {
                MutableLiveData modelLiveData;
                Intrinsics.checkNotNullParameter(baseResponse, "baseResponse");
                if (userHobbyBean != null) {
                    UserEditViewModel userEditViewModel = UserEditViewModel.this;
                    HashMap hashMap = new HashMap();
                    hashMap.put("getUserHobbyTag", userHobbyBean);
                    modelLiveData = userEditViewModel.getModelLiveData();
                    modelLiveData.setValue(hashMap);
                }
            }
        });
    }

    public final void getUserLikedTag() {
        new GetRequest("tokens/hobby/queryUserPreferenceHobby").M(new com.guochao.faceshow.aaspring.base.http.callback.c<UserHobbyBean>() { // from class: com.guochao.faceshow.aaspring.modulars.user.tag.UserEditViewModel$getUserLikedTag$1
            @Override // com.guochao.faceshow.aaspring.base.http.callback.c
            public void onFailure(@NotNull g7.a<UserHobbyBean> exp) {
                Intrinsics.checkNotNullParameter(exp, "exp");
            }

            @Override // com.guochao.faceshow.aaspring.base.http.callback.c
            public void onResponse(@Nullable UserHobbyBean userHobbyBean, @NotNull FaceCastBaseResponse<UserHobbyBean> baseResponse) {
                MutableLiveData modelLiveData;
                Intrinsics.checkNotNullParameter(baseResponse, "baseResponse");
                if (userHobbyBean != null) {
                    UserEditViewModel userEditViewModel = UserEditViewModel.this;
                    HashMap hashMap = new HashMap();
                    hashMap.put("getUserLikedTag", userHobbyBean);
                    modelLiveData = userEditViewModel.getModelLiveData();
                    modelLiveData.setValue(hashMap);
                }
            }
        });
    }

    public final void setMUserData(@Nullable SetInfoData setInfoData) {
        this.mUserData = setInfoData;
    }

    public final void unbind(@NotNull Observer<Map<String, Object>> observer) {
        Intrinsics.checkNotNullParameter(observer, "observer");
        getModelLiveData().removeObserver(observer);
    }

    public final void updateUserFriendShip(@NotNull String tagIds, @NotNull final String tagNames) {
        Intrinsics.checkNotNullParameter(tagIds, "tagIds");
        Intrinsics.checkNotNullParameter(tagNames, "tagNames");
        new PostRequest(Contants.updatefriendTag).D("tagIds", tagIds).M(new com.guochao.faceshow.aaspring.base.http.callback.c<String>() { // from class: com.guochao.faceshow.aaspring.modulars.user.tag.UserEditViewModel$updateUserFriendShip$1
            @Override // com.guochao.faceshow.aaspring.base.http.callback.c
            public void onFailure(@NotNull g7.a<String> exp) {
                Intrinsics.checkNotNullParameter(exp, "exp");
            }

            @Override // com.guochao.faceshow.aaspring.base.http.callback.c
            public void onResponse(@Nullable String str, @NotNull FaceCastBaseResponse<String> baseResponse) {
                MutableLiveData modelLiveData;
                Intrinsics.checkNotNullParameter(baseResponse, "baseResponse");
                if (str != null) {
                    String str2 = tagNames;
                    UserEditViewModel userEditViewModel = this;
                    ToastUtils.showToast$default(BaseApplication.getInstance(), R.string.save_successful, 0, 4, null);
                    HashMap hashMap = new HashMap();
                    hashMap.put("updateUserFriendShip", str2);
                    modelLiveData = userEditViewModel.getModelLiveData();
                    modelLiveData.setValue(hashMap);
                }
            }
        });
    }

    public final void updateUserHobbyTag(@NotNull String hobbyIds, @NotNull final List<String> hobbyNames) {
        Intrinsics.checkNotNullParameter(hobbyIds, "hobbyIds");
        Intrinsics.checkNotNullParameter(hobbyNames, "hobbyNames");
        new PostRequest("tokens/hobby/updateTagsByUserId").D(Contants.USER_ID, b8.e.g().getUserId()).D("hobbyIds", hobbyIds).M(new com.guochao.faceshow.aaspring.base.http.callback.c<String>() { // from class: com.guochao.faceshow.aaspring.modulars.user.tag.UserEditViewModel$updateUserHobbyTag$1
            @Override // com.guochao.faceshow.aaspring.base.http.callback.c
            public void onFailure(@NotNull g7.a<String> exp) {
                Intrinsics.checkNotNullParameter(exp, "exp");
            }

            @Override // com.guochao.faceshow.aaspring.base.http.callback.c
            public void onResponse(@Nullable String str, @NotNull FaceCastBaseResponse<String> baseResponse) {
                MutableLiveData modelLiveData;
                Intrinsics.checkNotNullParameter(baseResponse, "baseResponse");
                if (str != null) {
                    List<String> list = hobbyNames;
                    UserEditViewModel userEditViewModel = this;
                    ToastUtils.showToast$default(BaseApplication.getInstance(), R.string.save_successful, 0, 4, null);
                    HashMap hashMap = new HashMap();
                    hashMap.put("updateUserHobbyTag", list);
                    modelLiveData = userEditViewModel.getModelLiveData();
                    modelLiveData.setValue(hashMap);
                    EventBus.getDefault().post(new UserEditHobbyTagActivity.UpdateUserHobbyTagEvent(hashMap));
                }
            }
        });
    }

    public final void updateUserLikedTag(@NotNull String hobbyIds, @NotNull final List<String> hobbyNames) {
        Intrinsics.checkNotNullParameter(hobbyIds, "hobbyIds");
        Intrinsics.checkNotNullParameter(hobbyNames, "hobbyNames");
        new PostRequest("tokens/hobby/updateUserPreferenceHobby").D("hobbyIds", hobbyIds).M(new com.guochao.faceshow.aaspring.base.http.callback.c<String>() { // from class: com.guochao.faceshow.aaspring.modulars.user.tag.UserEditViewModel$updateUserLikedTag$1
            @Override // com.guochao.faceshow.aaspring.base.http.callback.c
            public void onFailure(@NotNull g7.a<String> exp) {
                Intrinsics.checkNotNullParameter(exp, "exp");
            }

            @Override // com.guochao.faceshow.aaspring.base.http.callback.c
            public void onResponse(@Nullable String str, @NotNull FaceCastBaseResponse<String> baseResponse) {
                MutableLiveData modelLiveData;
                Intrinsics.checkNotNullParameter(baseResponse, "baseResponse");
                if (str != null) {
                    List<String> list = hobbyNames;
                    UserEditViewModel userEditViewModel = this;
                    ToastUtils.showToast$default(BaseApplication.getInstance(), R.string.save_successful, 0, 4, null);
                    HashMap hashMap = new HashMap();
                    hashMap.put("updateUserLikedTag", list);
                    modelLiveData = userEditViewModel.getModelLiveData();
                    modelLiveData.setValue(hashMap);
                    EventBus.getDefault().post(new UserEditLikedTagActivity.UpdateUserLikedTagEvent(hashMap));
                }
            }
        });
    }
}
