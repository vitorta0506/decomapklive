package com.guochao.faceshow.userhomepage;

import android.app.Activity;
import android.text.TextUtils;
import androidx.fragment.app.FragmentActivity;
import androidx.lifecycle.LifecycleOwner;
import androidx.lifecycle.LifecycleOwnerKt;
import androidx.lifecycle.MutableLiveData;
import androidx.lifecycle.Observer;
import androidx.lifecycle.ViewModel;
import com.google.gson.JsonObject;
import com.guochao.faceshow.aaspring.base.http.request.GetRequest;
import com.guochao.faceshow.aaspring.base.http.request.PostRequest;
import com.guochao.faceshow.aaspring.base.http.response.FaceCastBaseResponse;
import com.guochao.faceshow.aaspring.beans.UserPageBaseData;
import com.guochao.faceshow.aaspring.utils.FriendFromSource;
import com.guochao.faceshow.utils.Contants;
import com.meizu.cloud.pushsdk.constants.PushConstants;
import java.util.HashMap;
import java.util.Map;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.BuildersKt__Builders_commonKt;
import kotlinx.coroutines.Dispatchers;
import org.greenrobot.eventbus.EventBus;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import y7.e;
@Metadata(d1 = {"\u0000L\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\u0010$\n\u0002\u0010\u000e\n\u0002\u0010\u0000\n\u0002\b\u0005\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\u0003\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J.\u0010\u0012\u001a\u00020\u00132\b\u0010\u0014\u001a\u0004\u0018\u00010\u00152\u001c\u0010\u0016\u001a\u0018\u0012\u0014\u0012\u0012\u0012\u0004\u0012\u00020\f\u0012\u0006\u0012\u0004\u0018\u00010\r\u0018\u00010\u000b0\u0017J\u0018\u0010\u0018\u001a\u00020\u00132\u0006\u0010\u0019\u001a\u00020\u001a2\b\u0010\u001b\u001a\u0004\u0018\u00010\fJ\u0018\u0010\u001c\u001a\u00020\u00132\u0006\u0010\u0019\u001a\u00020\u001a2\b\u0010\u001b\u001a\u0004\u0018\u00010\fJ\u0006\u0010\u001d\u001a\u00020\u0013J\u0016\u0010\u001e\u001a\u00020\u00132\u0006\u0010\u001b\u001a\u00020\f2\u0006\u0010\u001f\u001a\u00020\fJ\u0010\u0010 \u001a\u00020\u00132\b\u0010!\u001a\u0004\u0018\u00010\fJ\u0016\u0010\"\u001a\u00020\u00132\u0006\u0010\u0019\u001a\u00020#2\u0006\u0010\u001b\u001a\u00020\fJ\u001e\u0010$\u001a\u0018\u0012\u0014\u0012\u0012\u0012\u0004\u0012\u00020\f\u0012\u0006\u0012\u0004\u0018\u00010\r\u0018\u00010\u000b0\nH\u0002J$\u0010%\u001a\u00020\u00132\u001c\u0010\u0016\u001a\u0018\u0012\u0014\u0012\u0012\u0012\u0004\u0012\u00020\f\u0012\u0006\u0012\u0004\u0018\u00010\r\u0018\u00010\u000b0\u0017R\u001c\u0010\u0003\u001a\u0004\u0018\u00010\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0005\u0010\u0006\"\u0004\b\u0007\u0010\bR1\u0010\t\u001a\u0018\u0012\u0014\u0012\u0012\u0012\u0004\u0012\u00020\f\u0012\u0006\u0012\u0004\u0018\u00010\r\u0018\u00010\u000b0\n8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u0010\u0010\u0011\u001a\u0004\b\u000e\u0010\u000f¨\u0006&"}, d2 = {"Lcom/guochao/faceshow/userhomepage/UserHomePageModel;", "Landroidx/lifecycle/ViewModel;", "()V", "mUserData", "Lcom/guochao/faceshow/aaspring/beans/UserPageBaseData;", "getMUserData", "()Lcom/guochao/faceshow/aaspring/beans/UserPageBaseData;", "setMUserData", "(Lcom/guochao/faceshow/aaspring/beans/UserPageBaseData;)V", "modelLiveData", "Landroidx/lifecycle/MutableLiveData;", "", "", "", "getModelLiveData", "()Landroidx/lifecycle/MutableLiveData;", "modelLiveData$delegate", "Lkotlin/Lazy;", "bind", "", "lifecycleOwner", "Landroidx/lifecycle/LifecycleOwner;", "observer", "Landroidx/lifecycle/Observer;", "deleteFocus", PushConstants.INTENT_ACTIVITY_NAME, "Landroid/app/Activity;", Contants.USER_ID, "focus", "getUserAboutMe", "getUserBaseData", "account", "getUserId", "userName", "getVoiceInfo", "Landroidx/fragment/app/FragmentActivity;", "obtainLiveData", "unbind", "app_GooglePlayRelease"}, k = 1, mv = {1, 7, 1}, xi = 48)
/* loaded from: classes4.dex */
public final class UserHomePageModel extends ViewModel {
    @Nullable
    private UserPageBaseData mUserData;
    @NotNull
    private final Lazy modelLiveData$delegate;

    public UserHomePageModel() {
        Lazy lazy;
        lazy = LazyKt__LazyJVMKt.lazy(new Function0<MutableLiveData<Map<String, ? extends Object>>>() { // from class: com.guochao.faceshow.userhomepage.UserHomePageModel$modelLiveData$2
            /* JADX INFO: Access modifiers changed from: package-private */
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            @NotNull
            /* renamed from: invoke */
            public final MutableLiveData<Map<String, ? extends Object>> invoke2() {
                MutableLiveData<Map<String, ? extends Object>> obtainLiveData;
                obtainLiveData = UserHomePageModel.this.obtainLiveData();
                return obtainLiveData;
            }
        });
        this.modelLiveData$delegate = lazy;
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

    public final void deleteFocus(@NotNull Activity activity, @Nullable final String str) {
        Intrinsics.checkNotNullParameter(activity, "activity");
        ib.b.a(str, activity, new hb.b<String>() { // from class: com.guochao.faceshow.userhomepage.UserHomePageModel$deleteFocus$1
            @Override // hb.b
            public /* bridge */ /* synthetic */ void onFail(String str2) {
                hb.a.a(this, str2);
            }

            @Override // hb.b
            public void onResponse(@Nullable String str2) {
                MutableLiveData modelLiveData;
                e eVar = new e(str);
                eVar.g(false);
                EventBus.getDefault().post(eVar);
                HashMap hashMap = new HashMap();
                hashMap.put("deleteFocus", str2);
                modelLiveData = this.getModelLiveData();
                modelLiveData.setValue(hashMap);
            }
        });
    }

    public final void focus(@NotNull Activity activity, @Nullable final String str) {
        Intrinsics.checkNotNullParameter(activity, "activity");
        ib.b.b(str, FriendFromSource.DEFAULT, activity, new hb.b<String>() { // from class: com.guochao.faceshow.userhomepage.UserHomePageModel$focus$1
            @Override // hb.b
            public /* bridge */ /* synthetic */ void onFail(String str2) {
                hb.a.a(this, str2);
            }

            @Override // hb.b
            public void onResponse(@Nullable String str2) {
                MutableLiveData modelLiveData;
                e.e(str);
                HashMap hashMap = new HashMap();
                hashMap.put("focus", str2);
                modelLiveData = this.getModelLiveData();
                modelLiveData.setValue(hashMap);
            }
        });
    }

    @Nullable
    public final UserPageBaseData getMUserData() {
        return this.mUserData;
    }

    public final void getUserAboutMe() {
        UserPageBaseData userPageBaseData = this.mUserData;
        if (userPageBaseData != null) {
            HashMap hashMap = new HashMap();
            hashMap.put("getUserAboutMe", userPageBaseData);
            getModelLiveData().setValue(hashMap);
        }
    }

    public final void getUserBaseData(@NotNull String userId, @NotNull String account) {
        Intrinsics.checkNotNullParameter(userId, "userId");
        Intrinsics.checkNotNullParameter(account, "account");
        HashMap hashMap = new HashMap();
        hashMap.put(Contants.USER_ID, userId);
        if (Intrinsics.areEqual(userId, b8.e.g().getUserId())) {
            hashMap.put("account", account);
        }
        new GetRequest("tokens/PersonalHome/findHomeUserInfo").E(hashMap).M(new com.guochao.faceshow.aaspring.base.http.callback.c<UserPageBaseData>() { // from class: com.guochao.faceshow.userhomepage.UserHomePageModel$getUserBaseData$1
            @Override // com.guochao.faceshow.aaspring.base.http.callback.c
            public void onFailure(@NotNull g7.a<UserPageBaseData> exp) {
                Intrinsics.checkNotNullParameter(exp, "exp");
            }

            @Override // com.guochao.faceshow.aaspring.base.http.callback.c
            public void onResponse(@Nullable UserPageBaseData userPageBaseData, @NotNull FaceCastBaseResponse<UserPageBaseData> baseResponse) {
                MutableLiveData modelLiveData;
                Intrinsics.checkNotNullParameter(baseResponse, "baseResponse");
                HashMap hashMap2 = new HashMap();
                hashMap2.put("getUserBaseData", userPageBaseData);
                UserHomePageModel.this.setMUserData(userPageBaseData);
                modelLiveData = UserHomePageModel.this.getModelLiveData();
                modelLiveData.setValue(hashMap2);
                UserHomePageModel.this.getUserAboutMe();
            }
        });
    }

    public final void getUserId(@Nullable String str) {
        new PostRequest("tokens/search/getUserIdByNickName").v("nickName", str).M(new com.guochao.faceshow.aaspring.base.http.callback.c<JsonObject>() { // from class: com.guochao.faceshow.userhomepage.UserHomePageModel$getUserId$1
            @Override // com.guochao.faceshow.aaspring.base.http.callback.c
            public void onFailure(@NotNull g7.a<JsonObject> exp) {
                MutableLiveData modelLiveData;
                Intrinsics.checkNotNullParameter(exp, "exp");
                HashMap hashMap = new HashMap();
                hashMap.put("getUserId", null);
                modelLiveData = UserHomePageModel.this.getModelLiveData();
                modelLiveData.setValue(hashMap);
            }

            @Override // com.guochao.faceshow.aaspring.base.http.callback.c
            public void onResponse(@Nullable JsonObject jsonObject, @NotNull FaceCastBaseResponse<JsonObject> baseResponse) {
                MutableLiveData modelLiveData;
                Intrinsics.checkNotNullParameter(baseResponse, "baseResponse");
                if (jsonObject == null) {
                    onFailure(new g7.a<>(new Exception(), -1));
                } else if (jsonObject.has(Contants.USER_ID)) {
                    String asString = jsonObject.get(Contants.USER_ID).getAsString();
                    Intrinsics.checkNotNullExpressionValue(asString, "data.get(\"userId\").getAsString()");
                    if (!TextUtils.isEmpty(asString)) {
                        HashMap hashMap = new HashMap();
                        hashMap.put("getUserId", asString);
                        modelLiveData = UserHomePageModel.this.getModelLiveData();
                        modelLiveData.setValue(hashMap);
                        return;
                    }
                    onFailure(new g7.a<>(new Exception(), -1));
                } else {
                    onFailure(new g7.a<>(new Exception(), -1));
                }
            }
        });
    }

    public final void getVoiceInfo(@NotNull FragmentActivity activity, @NotNull String userId) {
        Intrinsics.checkNotNullParameter(activity, "activity");
        Intrinsics.checkNotNullParameter(userId, "userId");
        BuildersKt__Builders_commonKt.launch$default(LifecycleOwnerKt.getLifecycleScope(activity), Dispatchers.getMain(), null, new UserHomePageModel$getVoiceInfo$1(this, userId, null), 2, null);
    }

    public final void setMUserData(@Nullable UserPageBaseData userPageBaseData) {
        this.mUserData = userPageBaseData;
    }

    public final void unbind(@NotNull Observer<Map<String, Object>> observer) {
        Intrinsics.checkNotNullParameter(observer, "observer");
        getModelLiveData().removeObserver(observer);
    }
}
