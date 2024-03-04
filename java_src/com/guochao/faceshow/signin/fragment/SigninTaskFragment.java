package com.guochao.faceshow.signin.fragment;

import android.os.Bundle;
import android.view.View;
import androidx.fragment.app.Fragment;
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
import com.guochao.faceshow.aaspring.utils.ToastUtils;
import com.guochao.faceshow.signin.R$string;
import com.guochao.faceshow.signin.RechargeListener;
import com.guochao.faceshow.signin.SigninManager;
import com.guochao.faceshow.signin.activity.UserSigninCenterActivity;
import com.guochao.faceshow.signin.bean.GrowTaskBean;
import com.guochao.faceshow.signin.bean.SigninCache;
import com.guochao.faceshow.signin.databinding.FragmentSigninTaskBinding;
import com.guochao.faceshow.signin.dialog.GrowRewardDialog;
import com.guochao.faceshow.signin.dialog.LiveSignCenterDialog;
import com.guochao.faceshow.signin.dialog.SignInResultDialog;
import com.guochao.faceshow.signin.viewmodel.SigninTaskViewModel;
import com.meizu.cloud.pushsdk.constants.PushConstants;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Objects;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.LazyThreadSafetyMode;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(d1 = {"\u0000N\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u000b\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\t\u0018\u0000 ,2\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u00012\u00020\u0004:\u0001,B\u0005¢\u0006\u0002\u0010\u0005J\u001a\u0010\u001d\u001a\u00020\u001e2\u0006\u0010\u001f\u001a\u00020 2\b\u0010!\u001a\u0004\u0018\u00010\"H\u0014J\u0010\u0010#\u001a\u00020$2\u0006\u0010%\u001a\u00020\bH\u0002J\b\u0010&\u001a\u00020\u001eH\u0016J\u0012\u0010'\u001a\u00020\u001e2\b\u0010(\u001a\u0004\u0018\u00010\u0002H\u0016J\b\u0010)\u001a\u00020\u001eH\u0016J\b\u0010*\u001a\u00020\u001eH\u0016J\b\u0010+\u001a\u00020\u001eH\u0002R\u0017\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\b0\u0007¢\u0006\b\n\u0000\u001a\u0004\b\t\u0010\nR\u001a\u0010\u000b\u001a\u00020\fX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\r\u0010\u000e\"\u0004\b\u000f\u0010\u0010R$\u0010\u0011\u001a\u00020\u00128\u0006@\u0006X\u0087.¢\u0006\u0014\n\u0000\u0012\u0004\b\u0013\u0010\u0005\u001a\u0004\b\u0014\u0010\u0015\"\u0004\b\u0016\u0010\u0017R\u001b\u0010\u0018\u001a\u00020\u00038VX\u0096\u0084\u0002¢\u0006\f\n\u0004\b\u001b\u0010\u001c\u001a\u0004\b\u0019\u0010\u001a¨\u0006-"}, d2 = {"Lcom/guochao/faceshow/signin/fragment/SigninTaskFragment;", "Lcom/guochao/faceshow/aaspring/base/mvvm/fragment/GCBaseMvvmFragment;", "Lcom/guochao/faceshow/aaspring/base/mvvm/model/BaseModel;", "Lcom/guochao/faceshow/signin/viewmodel/SigninTaskViewModel;", "Lcom/guochao/faceshow/signin/RechargeListener;", "()V", "mDataList", "", "Lcom/guochao/faceshow/signin/bean/GrowTaskBean;", "getMDataList", "()Ljava/util/List;", "type", "", "getType", "()I", "setType", "(I)V", "viewBinding", "Lcom/guochao/faceshow/signin/databinding/FragmentSigninTaskBinding;", "getViewBinding$annotations", "getViewBinding", "()Lcom/guochao/faceshow/signin/databinding/FragmentSigninTaskBinding;", "setViewBinding", "(Lcom/guochao/faceshow/signin/databinding/FragmentSigninTaskBinding;)V", "viewModel", "getViewModel", "()Lcom/guochao/faceshow/signin/viewmodel/SigninTaskViewModel;", "viewModel$delegate", "Lkotlin/Lazy;", "initView", "", "root", "Landroid/view/View;", "savedInstanceState", "Landroid/os/Bundle;", "isLastGrowReward", "", "growTaskBean", "onDestroyView", "onModelUpdate", DeviceRequestsHelper.DEVICE_INFO_MODEL, "onRecharged", "onResume", "requestNet", "Companion", "lib_sign_in_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
/* loaded from: classes4.dex */
public final class SigninTaskFragment extends GCBaseMvvmFragment<BaseModel, SigninTaskViewModel> implements RechargeListener {
    @NotNull
    public static final Companion Companion = new Companion(null);
    @NotNull
    private final List<GrowTaskBean> mDataList;
    private int type;
    public FragmentSigninTaskBinding viewBinding;
    @NotNull
    private final Lazy viewModel$delegate;

    @Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u000e\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006¨\u0006\u0007"}, d2 = {"Lcom/guochao/faceshow/signin/fragment/SigninTaskFragment$Companion;", "", "()V", "getInstance", "Lcom/guochao/faceshow/signin/fragment/SigninTaskFragment;", "type", "", "lib_sign_in_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
    /* loaded from: classes4.dex */
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @NotNull
        public final SigninTaskFragment getInstance(int i9) {
            SigninTaskFragment signinTaskFragment = new SigninTaskFragment();
            Bundle bundle = new Bundle();
            bundle.putInt("type", i9);
            signinTaskFragment.setArguments(bundle);
            return signinTaskFragment;
        }
    }

    public SigninTaskFragment() {
        Lazy lazy;
        lazy = LazyKt__LazyJVMKt.lazy(LazyThreadSafetyMode.NONE, (Function0) new Function0<SigninTaskViewModel>() { // from class: com.guochao.faceshow.signin.fragment.SigninTaskFragment$special$$inlined$lazyViewModel$default$1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final SigninTaskViewModel invoke() {
                BaseViewModel baseViewModel;
                ViewModelStoreOwner viewModelStoreOwner = ViewModelStoreOwner.this;
                String str = r2;
                ViewModelProvider.Factory factory = r3;
                ViewModelProvider viewModelProvider = factory == null ? new ViewModelProvider(viewModelStoreOwner) : new ViewModelProvider(viewModelStoreOwner, factory);
                if (str != null) {
                    baseViewModel = (BaseViewModel) viewModelProvider.get(str, SigninTaskViewModel.class);
                } else {
                    baseViewModel = (BaseViewModel) viewModelProvider.get(SigninTaskViewModel.class);
                }
                Objects.requireNonNull(baseViewModel, "null cannot be cast to non-null type com.guochao.faceshow.signin.viewmodel.SigninTaskViewModel");
                return (SigninTaskViewModel) baseViewModel;
            }
        });
        this.viewModel$delegate = lazy;
        this.mDataList = new ArrayList();
    }

    @GCViewBinding
    public static /* synthetic */ void getViewBinding$annotations() {
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: initView$lambda-0  reason: not valid java name */
    public static final void m768initView$lambda0(SigninTaskFragment this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        GrowRewardDialog.Companion companion = GrowRewardDialog.Companion;
        FragmentManager childFragmentManager = this$0.getChildFragmentManager();
        Intrinsics.checkNotNullExpressionValue(childFragmentManager, "childFragmentManager");
        GrowRewardDialog.Companion.showDialog$default(companion, childFragmentManager, 0, null, 4, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: initView$lambda-2  reason: not valid java name */
    public static final void m769initView$lambda2(SigninTaskFragment this$0, List list) {
        SigninCache mSigninCache;
        int dayWatchCount;
        SigninCache mSigninCache2;
        int daySendMsgCount;
        Integer taskStatus;
        Integer taskStatus2;
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        if (list == null) {
            return;
        }
        this$0.mDataList.clear();
        Iterator it = list.iterator();
        while (it.hasNext()) {
            GrowTaskBean growTaskBean = (GrowTaskBean) it.next();
            int i9 = this$0.type;
            if (i9 == 0) {
                SigninCache mSigninCache3 = SigninManager.INSTANCE.getMSigninCache();
                if (mSigninCache3 != null) {
                    dayWatchCount = mSigninCache3.getGrowWatchCount();
                }
                dayWatchCount = 0;
            } else {
                if (i9 == 1 && (mSigninCache = SigninManager.INSTANCE.getMSigninCache()) != null) {
                    dayWatchCount = mSigninCache.getDayWatchCount();
                }
                dayWatchCount = 0;
            }
            int i10 = this$0.type;
            if (i10 == 0) {
                SigninCache mSigninCache4 = SigninManager.INSTANCE.getMSigninCache();
                if (mSigninCache4 != null) {
                    daySendMsgCount = mSigninCache4.getGrowSendMsgCount();
                }
                daySendMsgCount = 0;
            } else {
                if (i10 == 1 && (mSigninCache2 = SigninManager.INSTANCE.getMSigninCache()) != null) {
                    daySendMsgCount = mSigninCache2.getDaySendMsgCount();
                }
                daySendMsgCount = 0;
            }
            if (Intrinsics.areEqual(growTaskBean.getCheckMode(), PushConstants.EXTRA_APPLICATION_PENDING_INTENT)) {
                if (Intrinsics.areEqual(growTaskBean.getTaskBelong(), "kanzhibao") && (taskStatus2 = growTaskBean.getTaskStatus()) != null && taskStatus2.intValue() == 0) {
                    Integer param = growTaskBean.getParam();
                    growTaskBean.setTaskStatus(dayWatchCount >= (param != null ? param.intValue() : 0) * 60 ? 1 : 0);
                }
                if (Intrinsics.areEqual(growTaskBean.getTaskBelong(), "gongliao") && (taskStatus = growTaskBean.getTaskStatus()) != null && taskStatus.intValue() == 0) {
                    Integer param2 = growTaskBean.getParam();
                    growTaskBean.setTaskStatus(daySendMsgCount >= (param2 != null ? param2.intValue() : 0) ? 1 : 0);
                }
            }
            this$0.mDataList.add(growTaskBean);
        }
        RecyclerView.Adapter adapter = this$0.getViewBinding().recyclerView.getAdapter();
        if (adapter != null) {
            adapter.notifyDataSetChanged();
        }
        if (this$0.mDataList.isEmpty() && (this$0.getActivity() instanceof UserSigninCenterActivity)) {
            FragmentActivity activity = this$0.getActivity();
            Intrinsics.checkNotNull(activity, "null cannot be cast to non-null type com.guochao.faceshow.signin.activity.UserSigninCenterActivity");
            ((UserSigninCenterActivity) activity).resetSingleFragment();
        } else if (this$0.mDataList.isEmpty() && (this$0.getParentFragment() instanceof LiveSignCenterDialog)) {
            Fragment parentFragment = this$0.getParentFragment();
            Intrinsics.checkNotNull(parentFragment, "null cannot be cast to non-null type com.guochao.faceshow.signin.dialog.LiveSignCenterDialog");
            ((LiveSignCenterDialog) parentFragment).resetSingleFragment();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: initView$lambda-3  reason: not valid java name */
    public static final void m770initView$lambda3(SigninTaskFragment this$0, GrowTaskBean it) {
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
        if (this.type != 0) {
            return false;
        }
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

    private final void requestNet() {
        if (this.type == 1) {
            getViewModel().getDaysSignInTasks();
        } else {
            getViewModel().getGrowTasks();
        }
    }

    @NotNull
    public final List<GrowTaskBean> getMDataList() {
        return this.mDataList;
    }

    public final int getType() {
        return this.type;
    }

    @NotNull
    public final FragmentSigninTaskBinding getViewBinding() {
        FragmentSigninTaskBinding fragmentSigninTaskBinding = this.viewBinding;
        if (fragmentSigninTaskBinding != null) {
            return fragmentSigninTaskBinding;
        }
        Intrinsics.throwUninitializedPropertyAccessException("viewBinding");
        return null;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.guochao.faceshow.aaspring.base.mvvm.fragment.GCCoreFragment
    public void initView(@NotNull View root, @Nullable Bundle bundle) {
        Intrinsics.checkNotNullParameter(root, "root");
        SigninManager signinManager = SigninManager.INSTANCE;
        signinManager.registerRechargeListener(this);
        Bundle arguments = getArguments();
        this.type = arguments != null ? arguments.getInt("type") : 1;
        signinManager.checkDayTask();
        getViewBinding().headerLay.setVisibility(this.type == 0 ? 0 : 8);
        getViewBinding().headerLay.setOnClickListener(new View.OnClickListener() { // from class: com.guochao.faceshow.signin.fragment.g
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                SigninTaskFragment.m768initView$lambda0(SigninTaskFragment.this, view);
            }
        });
        getViewBinding().recyclerView.setLayoutManager(new LinearLayoutManager(getContext()));
        getViewBinding().recyclerView.setAdapter(new SigninTaskFragment$initView$2(this));
        getViewModel().getGrowTaskList().observe(this, new Observer() { // from class: com.guochao.faceshow.signin.fragment.i
            @Override // androidx.lifecycle.Observer
            public final void onChanged(Object obj) {
                SigninTaskFragment.m769initView$lambda2(SigninTaskFragment.this, (List) obj);
            }
        });
        getViewModel().getGetSigninReward().observe(this, new Observer() { // from class: com.guochao.faceshow.signin.fragment.h
            @Override // androidx.lifecycle.Observer
            public final void onChanged(Object obj) {
                SigninTaskFragment.m770initView$lambda3(SigninTaskFragment.this, (GrowTaskBean) obj);
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

    public final void setViewBinding(@NotNull FragmentSigninTaskBinding fragmentSigninTaskBinding) {
        Intrinsics.checkNotNullParameter(fragmentSigninTaskBinding, "<set-?>");
        this.viewBinding = fragmentSigninTaskBinding;
    }

    @Override // com.guochao.faceshow.aaspring.base.mvvm.fragment.GCBaseMvvmFragment
    @NotNull
    public SigninTaskViewModel getViewModel() {
        return (SigninTaskViewModel) this.viewModel$delegate.getValue();
    }
}
