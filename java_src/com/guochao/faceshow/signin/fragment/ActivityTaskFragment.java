package com.guochao.faceshow.signin.fragment;

import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import android.text.TextUtils;
import android.view.View;
import androidx.fragment.app.FragmentActivity;
import androidx.fragment.app.FragmentManager;
import androidx.lifecycle.Observer;
import androidx.lifecycle.ViewModelProvider;
import androidx.lifecycle.ViewModelStoreOwner;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.facebook.devicerequests.internal.DeviceRequestsHelper;
import com.guochao.faceshow.aaspring.base.mvvm.annotations.GCViewBinding;
import com.guochao.faceshow.aaspring.base.mvvm.fragment.GCBaseMvvmFragment;
import com.guochao.faceshow.aaspring.base.mvvm.model.BaseModel;
import com.guochao.faceshow.aaspring.base.mvvm.viewmodel.BaseViewModel;
import com.guochao.faceshow.aaspring.base.navigator.RouterPath;
import com.guochao.faceshow.aaspring.utils.StringUtils;
import com.guochao.faceshow.aaspring.utils.ToastUtils;
import com.guochao.faceshow.session.model.UserSessionModel;
import com.guochao.faceshow.session.viewmodel.UserSessionViewModel;
import com.guochao.faceshow.signin.R$string;
import com.guochao.faceshow.signin.RechargeListener;
import com.guochao.faceshow.signin.SigninManager;
import com.guochao.faceshow.signin.activity.UserSigninCenterActivity;
import com.guochao.faceshow.signin.bean.GrowTaskBean;
import com.guochao.faceshow.signin.bean.RewardList;
import com.guochao.faceshow.signin.bean.SigninCache;
import com.guochao.faceshow.signin.databinding.FragmentActivityTaskBinding;
import com.guochao.faceshow.signin.dialog.SignInResultDialog;
import com.guochao.faceshow.signin.viewmodel.ActivityTaskViewModel;
import com.meizu.cloud.pushsdk.constants.PushConstants;
import com.unity3d.services.ads.adunit.AdUnitActivity;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Objects;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.LazyThreadSafetyMode;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import org.json.JSONException;
import org.json.JSONObject;
@Metadata(d1 = {"\u0000V\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u000b\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\t\u0018\u0000 12\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u00012\u00020\u0004:\u00011B\u0005¢\u0006\u0002\u0010\u0005J\"\u0010\u001d\u001a\u00020\u001e2\u0006\u0010\u001f\u001a\u00020 2\b\u0010!\u001a\u0004\u0018\u00010 2\b\u0010\"\u001a\u0004\u0018\u00010 J\u001a\u0010#\u001a\u00020\u001e2\u0006\u0010$\u001a\u00020%2\b\u0010&\u001a\u0004\u0018\u00010'H\u0014J\u0010\u0010(\u001a\u00020)2\u0006\u0010*\u001a\u00020\bH\u0002J\b\u0010+\u001a\u00020\u001eH\u0016J\u0012\u0010,\u001a\u00020\u001e2\b\u0010-\u001a\u0004\u0018\u00010\u0002H\u0016J\b\u0010.\u001a\u00020\u001eH\u0016J\b\u0010/\u001a\u00020\u001eH\u0016J\b\u00100\u001a\u00020\u001eH\u0002R\u0017\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\b0\u0007¢\u0006\b\n\u0000\u001a\u0004\b\t\u0010\nR\u001a\u0010\u000b\u001a\u00020\fX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\r\u0010\u000e\"\u0004\b\u000f\u0010\u0010R$\u0010\u0011\u001a\u00020\u00128\u0006@\u0006X\u0087.¢\u0006\u0014\n\u0000\u0012\u0004\b\u0013\u0010\u0005\u001a\u0004\b\u0014\u0010\u0015\"\u0004\b\u0016\u0010\u0017R\u001b\u0010\u0018\u001a\u00020\u00038VX\u0096\u0084\u0002¢\u0006\f\n\u0004\b\u001b\u0010\u001c\u001a\u0004\b\u0019\u0010\u001a¨\u00062"}, d2 = {"Lcom/guochao/faceshow/signin/fragment/ActivityTaskFragment;", "Lcom/guochao/faceshow/aaspring/base/mvvm/fragment/GCBaseMvvmFragment;", "Lcom/guochao/faceshow/aaspring/base/mvvm/model/BaseModel;", "Lcom/guochao/faceshow/signin/viewmodel/ActivityTaskViewModel;", "Lcom/guochao/faceshow/signin/RechargeListener;", "()V", "mDataList", "", "Lcom/guochao/faceshow/signin/bean/GrowTaskBean;", "getMDataList", "()Ljava/util/List;", "type", "", "getType", "()I", "setType", "(I)V", "viewBinding", "Lcom/guochao/faceshow/signin/databinding/FragmentActivityTaskBinding;", "getViewBinding$annotations", "getViewBinding", "()Lcom/guochao/faceshow/signin/databinding/FragmentActivityTaskBinding;", "setViewBinding", "(Lcom/guochao/faceshow/signin/databinding/FragmentActivityTaskBinding;)V", "viewModel", "getViewModel", "()Lcom/guochao/faceshow/signin/viewmodel/ActivityTaskViewModel;", "viewModel$delegate", "Lkotlin/Lazy;", "gotoActivity", "", AdUnitActivity.EXTRA_ACTIVITY_ID, "", "activityName", "schemeData", "initView", "root", "Landroid/view/View;", "savedInstanceState", "Landroid/os/Bundle;", "isLastGrowReward", "", "growTaskBean", "onDestroyView", "onModelUpdate", DeviceRequestsHelper.DEVICE_INFO_MODEL, "onRecharged", "onResume", "requestNet", "Companion", "lib_sign_in_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
/* loaded from: classes4.dex */
public final class ActivityTaskFragment extends GCBaseMvvmFragment<BaseModel, ActivityTaskViewModel> implements RechargeListener {
    @NotNull
    public static final Companion Companion = new Companion(null);
    @NotNull
    private final List<GrowTaskBean> mDataList;
    private int type;
    public FragmentActivityTaskBinding viewBinding;
    @NotNull
    private final Lazy viewModel$delegate;

    @Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u000e\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006¨\u0006\u0007"}, d2 = {"Lcom/guochao/faceshow/signin/fragment/ActivityTaskFragment$Companion;", "", "()V", "getInstance", "Lcom/guochao/faceshow/signin/fragment/ActivityTaskFragment;", "type", "", "lib_sign_in_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
    /* loaded from: classes4.dex */
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @NotNull
        public final ActivityTaskFragment getInstance(int i9) {
            ActivityTaskFragment activityTaskFragment = new ActivityTaskFragment();
            Bundle bundle = new Bundle();
            bundle.putInt("type", i9);
            activityTaskFragment.setArguments(bundle);
            return activityTaskFragment;
        }
    }

    public ActivityTaskFragment() {
        Lazy lazy;
        lazy = LazyKt__LazyJVMKt.lazy(LazyThreadSafetyMode.NONE, (Function0) new Function0<ActivityTaskViewModel>() { // from class: com.guochao.faceshow.signin.fragment.ActivityTaskFragment$special$$inlined$lazyViewModel$default$1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final ActivityTaskViewModel invoke() {
                BaseViewModel baseViewModel;
                ViewModelStoreOwner viewModelStoreOwner = ViewModelStoreOwner.this;
                String str = r2;
                ViewModelProvider.Factory factory = r3;
                ViewModelProvider viewModelProvider = factory == null ? new ViewModelProvider(viewModelStoreOwner) : new ViewModelProvider(viewModelStoreOwner, factory);
                if (str != null) {
                    baseViewModel = (BaseViewModel) viewModelProvider.get(str, ActivityTaskViewModel.class);
                } else {
                    baseViewModel = (BaseViewModel) viewModelProvider.get(ActivityTaskViewModel.class);
                }
                Objects.requireNonNull(baseViewModel, "null cannot be cast to non-null type com.guochao.faceshow.signin.viewmodel.ActivityTaskViewModel");
                return (ActivityTaskViewModel) baseViewModel;
            }
        });
        this.viewModel$delegate = lazy;
        this.mDataList = new ArrayList();
    }

    @GCViewBinding
    public static /* synthetic */ void getViewBinding$annotations() {
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: initView$lambda-2  reason: not valid java name */
    public static final void m762initView$lambda2(ActivityTaskFragment this$0, List list) {
        Integer taskStatus;
        Integer taskStatus2;
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.mDataList.clear();
        if (list != null) {
            Iterator it = list.iterator();
            while (it.hasNext()) {
                GrowTaskBean growTaskBean = (GrowTaskBean) it.next();
                if (Intrinsics.areEqual(growTaskBean.getCheckMode(), PushConstants.EXTRA_APPLICATION_PENDING_INTENT)) {
                    if (Intrinsics.areEqual(growTaskBean.getTaskBelong(), "kanzhibao") && (taskStatus2 = growTaskBean.getTaskStatus()) != null && taskStatus2.intValue() == 0) {
                        SigninManager signinManager = SigninManager.INSTANCE;
                        signinManager.resetActivityWatchLiveSecond(growTaskBean.getLoopNum());
                        int mActivityWatchLiveSecond = signinManager.getMActivityWatchLiveSecond();
                        Integer param = growTaskBean.getParam();
                        growTaskBean.setTaskStatus(mActivityWatchLiveSecond >= (param != null ? param.intValue() : 0) * 60 ? 1 : 0);
                    }
                    if (Intrinsics.areEqual(growTaskBean.getTaskBelong(), "gongliao") && (taskStatus = growTaskBean.getTaskStatus()) != null && taskStatus.intValue() == 0) {
                        SigninCache mSigninCache = SigninManager.INSTANCE.getMSigninCache();
                        int dayWatchCount = mSigninCache != null ? mSigninCache.getDayWatchCount() : 0;
                        Integer param2 = growTaskBean.getParam();
                        growTaskBean.setTaskStatus(dayWatchCount >= (param2 != null ? param2.intValue() : 0) ? 1 : 0);
                    }
                }
                List<RewardList> prizeVoList = growTaskBean.getPrizeVoList();
                if (prizeVoList != null) {
                    for (RewardList rewardList : prizeVoList) {
                        rewardList.setRewardName(this$0.getString(R$string.signin_get_chips_by_lucky));
                    }
                }
                this$0.mDataList.add(growTaskBean);
            }
        }
        RecyclerView.Adapter adapter = this$0.getViewBinding().recyclerView.getAdapter();
        if (adapter != null) {
            adapter.notifyDataSetChanged();
        }
        if (!this$0.mDataList.isEmpty() && this$0.mDataList.size() != 0) {
            this$0.getViewBinding().recyclerView.setVisibility(0);
            this$0.getViewBinding().emptyView.setVisibility(8);
            return;
        }
        this$0.getViewBinding().recyclerView.setVisibility(8);
        this$0.getViewBinding().emptyView.setVisibility(0);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: initView$lambda-3  reason: not valid java name */
    public static final void m763initView$lambda3(ActivityTaskFragment this$0, GrowTaskBean it) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        SignInResultDialog.Companion companion = SignInResultDialog.Companion;
        FragmentManager childFragmentManager = this$0.getChildFragmentManager();
        Intrinsics.checkNotNullExpressionValue(childFragmentManager, "childFragmentManager");
        Intrinsics.checkNotNullExpressionValue(it, "it");
        SignInResultDialog.Companion.showDialog$default(companion, childFragmentManager, it, this$0.isLastGrowReward(it), null, 8, null);
        this$0.requestNet();
        ToastUtils.showToast$default(this$0.getContext(), R$string.signin_task_reward_sent, 0, 4, null);
    }

    private final boolean isLastGrowReward(GrowTaskBean growTaskBean) {
        int size = this.mDataList.size();
        for (int i9 = 0; i9 < size; i9++) {
            GrowTaskBean growTaskBean2 = this.mDataList.get(i9);
            if (!Intrinsics.areEqual(growTaskBean2.getTaskId(), growTaskBean.getTaskId())) {
                Integer taskStatus = growTaskBean2.getTaskStatus();
                if ((taskStatus != null ? taskStatus.intValue() : 0) < 2) {
                    return false;
                }
            }
        }
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void requestNet() {
        getViewModel().getGrowTasks();
    }

    @NotNull
    public final List<GrowTaskBean> getMDataList() {
        return this.mDataList;
    }

    public final int getType() {
        return this.type;
    }

    @NotNull
    public final FragmentActivityTaskBinding getViewBinding() {
        FragmentActivityTaskBinding fragmentActivityTaskBinding = this.viewBinding;
        if (fragmentActivityTaskBinding != null) {
            return fragmentActivityTaskBinding;
        }
        Intrinsics.throwUninitializedPropertyAccessException("viewBinding");
        return null;
    }

    public final void gotoActivity(@NotNull String activityId, @Nullable String str, @Nullable String str2) {
        Intrinsics.checkNotNullParameter(activityId, "activityId");
        if (str2 == null) {
            str2 = "";
        }
        try {
            JSONObject jSONObject = new JSONObject(str2);
            String optString = jSONObject.optString("h5Url");
            jSONObject.optInt("isNeedToken");
            String optString2 = jSONObject.optString("shareTitle");
            String optString3 = jSONObject.optString("shareText");
            String optString4 = jSONObject.optString("shareImg");
            String optString5 = jSONObject.optString("h5Type");
            String optString6 = jSONObject.optString("isShare");
            StringBuilder sb2 = new StringBuilder();
            sb2.append(optString);
            sb2.append(StringUtils.getUrlFromType());
            UserSessionModel current = UserSessionViewModel.Companion.instance().current();
            sb2.append(current != null ? current.getToken() : null);
            String str3 = sb2.toString() + "&name=" + str;
            if (TextUtils.equals("0", optString5)) {
                o.a.c().a(RouterPath.ROUTER_WEBVIEW_ACTIVITY).withString("url", str3).withBoolean("withShare", Intrinsics.areEqual("1", optString6)).withString("shareUrl", str3).withString("shareImg", optString4).withString("shareText", optString3).withString("title", str).withString("shareTitle", optString2).withString("withPageId", activityId).navigation();
            } else {
                requireContext().startActivity(new Intent("android.intent.action.VIEW", Uri.parse(str3)));
            }
        } catch (JSONException e10) {
            e10.printStackTrace();
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.guochao.faceshow.aaspring.base.mvvm.fragment.GCCoreFragment
    public void initView(@NotNull View root, @Nullable Bundle bundle) {
        Intrinsics.checkNotNullParameter(root, "root");
        SigninManager.INSTANCE.registerRechargeListener(this);
        if (getActivity() instanceof UserSigninCenterActivity) {
            FragmentActivity activity = getActivity();
            Intrinsics.checkNotNull(activity, "null cannot be cast to non-null type com.guochao.faceshow.signin.activity.UserSigninCenterActivity");
            ((UserSigninCenterActivity) activity).setCallBack(new Function1<Boolean, Unit>() { // from class: com.guochao.faceshow.signin.fragment.ActivityTaskFragment$initView$1
                /* JADX INFO: Access modifiers changed from: package-private */
                {
                    super(1);
                }

                @Override // kotlin.jvm.functions.Function1
                public /* bridge */ /* synthetic */ Unit invoke(Boolean bool) {
                    invoke(bool.booleanValue());
                    return Unit.INSTANCE;
                }

                public final void invoke(boolean z10) {
                    if (z10) {
                        ActivityTaskFragment.this.requestNet();
                    }
                }
            });
        }
        Bundle arguments = getArguments();
        this.type = arguments != null ? arguments.getInt("type") : 1;
        getViewBinding().recyclerView.setLayoutManager(new LinearLayoutManager(getContext()));
        getViewBinding().recyclerView.setAdapter(new ActivityTaskFragment$initView$2(this));
        getViewModel().getGrowTaskList().observe(this, new Observer() { // from class: com.guochao.faceshow.signin.fragment.b
            @Override // androidx.lifecycle.Observer
            public final void onChanged(Object obj) {
                ActivityTaskFragment.m762initView$lambda2(ActivityTaskFragment.this, (List) obj);
            }
        });
        getViewModel().getGetSigninReward().observe(this, new Observer() { // from class: com.guochao.faceshow.signin.fragment.a
            @Override // androidx.lifecycle.Observer
            public final void onChanged(Object obj) {
                ActivityTaskFragment.m763initView$lambda3(ActivityTaskFragment.this, (GrowTaskBean) obj);
            }
        });
    }

    @Override // androidx.fragment.app.DialogFragment, androidx.fragment.app.Fragment
    public void onDestroyView() {
        super.onDestroyView();
        SigninManager.INSTANCE.unRegisterRechargeListener(this);
    }

    @Override // com.guochao.faceshow.aaspring.base.mvvm.viewmodel.BaseViewModel.ModelUpdateObserver
    public void onModelUpdate(@Nullable BaseModel baseModel) {
    }

    @Override // com.guochao.faceshow.signin.RechargeListener
    public void onRecharged() {
        requestNet();
    }

    @Override // androidx.fragment.app.Fragment
    public void onResume() {
        super.onResume();
        requestNet();
    }

    public final void setType(int i9) {
        this.type = i9;
    }

    public final void setViewBinding(@NotNull FragmentActivityTaskBinding fragmentActivityTaskBinding) {
        Intrinsics.checkNotNullParameter(fragmentActivityTaskBinding, "<set-?>");
        this.viewBinding = fragmentActivityTaskBinding;
    }

    @Override // com.guochao.faceshow.aaspring.base.mvvm.fragment.GCBaseMvvmFragment
    @NotNull
    public ActivityTaskViewModel getViewModel() {
        return (ActivityTaskViewModel) this.viewModel$delegate.getValue();
    }
}
