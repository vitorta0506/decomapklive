package com.guochao.faceshow.aaspring.modulars.live.hello;

import android.os.Bundle;
import android.text.TextUtils;
import android.view.View;
import androidx.core.content.ContextCompat;
import androidx.fragment.app.FragmentActivity;
import androidx.lifecycle.Observer;
import androidx.lifecycle.ViewModelProvider;
import androidx.lifecycle.ViewModelStoreOwner;
import androidx.recyclerview.widget.LinearLayoutManager;
import com.facebook.devicerequests.internal.DeviceRequestsHelper;
import com.guochao.faceshow.R;
import com.guochao.faceshow.aaspring.base.mvvm.annotations.GCViewBinding;
import com.guochao.faceshow.aaspring.base.mvvm.fragment.GCBaseMvvmFragment;
import com.guochao.faceshow.aaspring.base.mvvm.model.BaseModel;
import com.guochao.faceshow.aaspring.base.mvvm.viewmodel.BaseViewModel;
import com.guochao.faceshow.aaspring.beans.EventTrackData;
import com.guochao.faceshow.aaspring.beans.HelloStarSummon;
import com.guochao.faceshow.aaspring.modulars.friend.adapter.CommonRecyclerAdapter;
import com.guochao.faceshow.aaspring.modulars.live.hello.adapter.HelloGiftNewUserAdapter;
import com.guochao.faceshow.aaspring.modulars.live.hello.viewmodel.HelloGiftNewUserViewModel;
import com.guochao.faceshow.aaspring.utils.DateUtils;
import com.guochao.faceshow.aaspring.utils.EventTrackingUtils;
import com.guochao.faceshow.aaspring.utils.SpUtils;
import com.guochao.faceshow.databinding.FragmentHelloSummonBinding;
import com.guochao.faceshow.utils.BaseConfig;
import java.util.ArrayList;
import java.util.List;
import java.util.Objects;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.LazyThreadSafetyMode;
import kotlin.Metadata;
import kotlin.jvm.JvmStatic;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import wd.j;
@Metadata(d1 = {"\u0000V\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u000b\n\u0002\b\u0004\n\u0002\u0010\u000e\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\u000b\n\u0002\u0010\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0007\u0018\u0000 <2\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001:\u0001<B\u0005¢\u0006\u0002\u0010\u0004J\b\u0010,\u001a\u00020-H\u0002J\b\u0010.\u001a\u00020-H\u0002J\u0006\u0010/\u001a\u00020-J\b\u00100\u001a\u00020-H\u0002J\b\u00101\u001a\u00020-H\u0002J\u001a\u00102\u001a\u00020-2\u0006\u00103\u001a\u0002042\b\u00105\u001a\u0004\u0018\u000106H\u0014J\u0012\u00107\u001a\u00020-2\b\u00108\u001a\u0004\u0018\u00010\u0002H\u0016J\b\u00109\u001a\u00020-H\u0002J\u000e\u0010:\u001a\u00020-2\u0006\u0010\u0005\u001a\u00020\u0006J\b\u0010;\u001a\u00020-H\u0002R\u001c\u0010\u0005\u001a\u0004\u0018\u00010\u0006X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0007\u0010\b\"\u0004\b\t\u0010\nR\"\u0010\u000b\u001a\n\u0012\u0004\u0012\u00020\r\u0018\u00010\fX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u000e\u0010\u000f\"\u0004\b\u0010\u0010\u0011R\u001a\u0010\u0012\u001a\u00020\u0013X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0012\u0010\u0014\"\u0004\b\u0015\u0010\u0016R\u001a\u0010\u0017\u001a\u00020\u0018X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0019\u0010\u001a\"\u0004\b\u001b\u0010\u001cR\u001a\u0010\u001d\u001a\u00020\u0018X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001e\u0010\u001a\"\u0004\b\u001f\u0010\u001cR$\u0010 \u001a\u00020!8\u0006@\u0006X\u0087.¢\u0006\u0014\n\u0000\u0012\u0004\b\"\u0010\u0004\u001a\u0004\b#\u0010$\"\u0004\b%\u0010&R\u001b\u0010'\u001a\u00020\u00038VX\u0096\u0084\u0002¢\u0006\f\n\u0004\b*\u0010+\u001a\u0004\b(\u0010)¨\u0006="}, d2 = {"Lcom/guochao/faceshow/aaspring/modulars/live/hello/HelloSummonFragment;", "Lcom/guochao/faceshow/aaspring/base/mvvm/fragment/GCBaseMvvmFragment;", "Lcom/guochao/faceshow/aaspring/base/mvvm/model/BaseModel;", "Lcom/guochao/faceshow/aaspring/modulars/live/hello/viewmodel/HelloGiftNewUserViewModel;", "()V", "h5RulesSelectListener", "Lcom/guochao/faceshow/aaspring/modulars/live/hello/H5RulesSelectListener;", "getH5RulesSelectListener", "()Lcom/guochao/faceshow/aaspring/modulars/live/hello/H5RulesSelectListener;", "setH5RulesSelectListener", "(Lcom/guochao/faceshow/aaspring/modulars/live/hello/H5RulesSelectListener;)V", "helloGiftNewUserAdapter", "Lcom/guochao/faceshow/aaspring/modulars/friend/adapter/CommonRecyclerAdapter;", "Lcom/guochao/faceshow/aaspring/beans/HelloStarSummon;", "getHelloGiftNewUserAdapter", "()Lcom/guochao/faceshow/aaspring/modulars/friend/adapter/CommonRecyclerAdapter;", "setHelloGiftNewUserAdapter", "(Lcom/guochao/faceshow/aaspring/modulars/friend/adapter/CommonRecyclerAdapter;)V", "isSummon", "", "()Z", "setSummon", "(Z)V", "liveId", "", "getLiveId", "()Ljava/lang/String;", "setLiveId", "(Ljava/lang/String;)V", "startTime", "getStartTime", "setStartTime", "viewBinding", "Lcom/guochao/faceshow/databinding/FragmentHelloSummonBinding;", "getViewBinding$annotations", "getViewBinding", "()Lcom/guochao/faceshow/databinding/FragmentHelloSummonBinding;", "setViewBinding", "(Lcom/guochao/faceshow/databinding/FragmentHelloSummonBinding;)V", "viewModel", "getViewModel", "()Lcom/guochao/faceshow/aaspring/modulars/live/hello/viewmodel/HelloGiftNewUserViewModel;", "viewModel$delegate", "Lkotlin/Lazy;", "cheSummonUI", "", "checkSummonDataObserve", "h5RulesAutoRefresh", "hideEmptyView", "initRecycleView", "initView", "root", "Landroid/view/View;", "savedInstanceState", "Landroid/os/Bundle;", "onModelUpdate", DeviceRequestsHelper.DEVICE_INFO_MODEL, "setLoadDataObserve", "setOnH5RulesSelectListener", "showEmptyView", "Companion", "app_GooglePlayRelease"}, k = 1, mv = {1, 7, 1}, xi = 48)
/* loaded from: classes3.dex */
public final class HelloSummonFragment extends GCBaseMvvmFragment<BaseModel, HelloGiftNewUserViewModel> {
    @NotNull
    public static final Companion Companion = new Companion(null);
    @Nullable
    private H5RulesSelectListener h5RulesSelectListener;
    @Nullable
    private CommonRecyclerAdapter<HelloStarSummon> helloGiftNewUserAdapter;
    private boolean isSummon;
    @NotNull
    private String liveId;
    @NotNull
    private String startTime;
    public FragmentHelloSummonBinding viewBinding;
    @NotNull
    private final Lazy viewModel$delegate;

    @Metadata(d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0018\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u0006H\u0007¨\u0006\b"}, d2 = {"Lcom/guochao/faceshow/aaspring/modulars/live/hello/HelloSummonFragment$Companion;", "", "()V", "getInstance", "Lcom/guochao/faceshow/aaspring/modulars/live/hello/HelloSummonFragment;", "liveId", "", "startTime", "app_GooglePlayRelease"}, k = 1, mv = {1, 7, 1}, xi = 48)
    /* loaded from: classes3.dex */
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @JvmStatic
        @NotNull
        public final HelloSummonFragment getInstance(@NotNull String liveId, @NotNull String startTime) {
            Intrinsics.checkNotNullParameter(liveId, "liveId");
            Intrinsics.checkNotNullParameter(startTime, "startTime");
            HelloSummonFragment helloSummonFragment = new HelloSummonFragment();
            Bundle bundle = new Bundle();
            bundle.putString("liveId", liveId);
            bundle.putString("startTime", startTime);
            helloSummonFragment.setArguments(bundle);
            return helloSummonFragment;
        }
    }

    public HelloSummonFragment() {
        Lazy lazy;
        lazy = LazyKt__LazyJVMKt.lazy(LazyThreadSafetyMode.NONE, (Function0) new Function0<HelloGiftNewUserViewModel>() { // from class: com.guochao.faceshow.aaspring.modulars.live.hello.HelloSummonFragment$special$$inlined$lazyViewModel$default$1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final HelloGiftNewUserViewModel invoke() {
                BaseViewModel baseViewModel;
                ViewModelStoreOwner viewModelStoreOwner = ViewModelStoreOwner.this;
                String str = r2;
                ViewModelProvider.Factory factory = r3;
                ViewModelProvider viewModelProvider = factory == null ? new ViewModelProvider(viewModelStoreOwner) : new ViewModelProvider(viewModelStoreOwner, factory);
                if (str != null) {
                    baseViewModel = (BaseViewModel) viewModelProvider.get(str, HelloGiftNewUserViewModel.class);
                } else {
                    baseViewModel = (BaseViewModel) viewModelProvider.get(HelloGiftNewUserViewModel.class);
                }
                Objects.requireNonNull(baseViewModel, "null cannot be cast to non-null type com.guochao.faceshow.aaspring.modulars.live.hello.viewmodel.HelloGiftNewUserViewModel");
                return (HelloGiftNewUserViewModel) baseViewModel;
            }
        });
        this.viewModel$delegate = lazy;
        this.liveId = "";
        this.startTime = "";
    }

    private final void cheSummonUI() {
        FragmentActivity activity = getActivity();
        String str = SpUtils.getStr(activity, b8.e.g().getUserId() + BaseConfig.KEY_CURRENT_SUMMON);
        boolean z10 = true;
        if (!TextUtils.isEmpty(str) && str.equals(DateUtils.getCurrentDate())) {
            z10 = false;
        }
        this.isSummon = z10;
        if (z10) {
            FragmentActivity activity2 = getActivity();
            if (activity2 != null) {
                getViewBinding().tvSummon.setTextColor(ContextCompat.getColor(activity2, R.color.color_ugc_app_primary_start));
                getViewBinding().tvSummon.setBackgroundResource(R.drawable.bg_hello_star_summon);
                getViewBinding().tvSummon.setText(getString(R.string.hello_star_summon));
                return;
            }
            return;
        }
        getViewBinding().tvSummon.setBackgroundResource(R.drawable.bg_hello_start_un_btn);
        FragmentActivity activity3 = getActivity();
        if (activity3 != null) {
            getViewBinding().tvSummon.setTextColor(ContextCompat.getColor(activity3, R.color.white));
            getViewBinding().tvSummon.setText(getString(R.string.hello_star_summon_over));
        }
    }

    private final void checkSummonDataObserve() {
        getViewModel().getHelloSummonLiveData().observe(this, new Observer() { // from class: com.guochao.faceshow.aaspring.modulars.live.hello.e
            @Override // androidx.lifecycle.Observer
            public final void onChanged(Object obj) {
                HelloSummonFragment.m487checkSummonDataObserve$lambda12(HelloSummonFragment.this, (EventTrackData) obj);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: checkSummonDataObserve$lambda-12  reason: not valid java name */
    public static final void m487checkSummonDataObserve$lambda12(HelloSummonFragment this$0, EventTrackData eventTrackData) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Bundle bundle = new Bundle();
        int status = eventTrackData.getStatus();
        if (status == 0) {
            FragmentActivity activity = this$0.getActivity();
            SpUtils.setStr(activity, b8.e.g().getUserId() + BaseConfig.KEY_CURRENT_SUMMON, DateUtils.getCurrentDate());
            this$0.cheSummonUI();
            bundle.putInt("status", 2);
            bundle.putString("desc", "已召唤");
            EventTrackingUtils.getInstance().track(EventTrackingUtils.CLICK_HELLO_LIST_CALL, bundle);
        } else if (status == 1) {
            String string = this$0.getString(R.string.hello_star_summon_tip);
            Intrinsics.checkNotNullExpressionValue(string, "getString(R.string.hello_star_summon_tip)");
            this$0.showToast(string);
            FragmentActivity activity2 = this$0.getActivity();
            SpUtils.setStr(activity2, b8.e.g().getUserId() + BaseConfig.KEY_CURRENT_SUMMON, DateUtils.getCurrentDate());
            this$0.cheSummonUI();
            bundle.putInt("status", 0);
            EventTrackingUtils.getInstance().track(EventTrackingUtils.CLICK_HELLO_LIST_CALL, bundle);
        } else if (status != 2) {
            bundle.putInt("status", 1);
            bundle.putString("desc", eventTrackData.getDesc());
            EventTrackingUtils.getInstance().track(EventTrackingUtils.CLICK_HELLO_LIST_CALL, bundle);
        } else {
            String string2 = this$0.getString(R.string.hello_star_summon_tip1);
            Intrinsics.checkNotNullExpressionValue(string2, "getString(R.string.hello_star_summon_tip1)");
            this$0.showToast(string2);
            this$0.cheSummonUI();
            bundle.putInt("status", 1);
            bundle.putString("desc", "无可召唤用户");
            EventTrackingUtils.getInstance().track(EventTrackingUtils.CLICK_HELLO_LIST_CALL, bundle);
        }
    }

    @JvmStatic
    @NotNull
    public static final HelloSummonFragment getInstance(@NotNull String str, @NotNull String str2) {
        return Companion.getInstance(str, str2);
    }

    @GCViewBinding
    public static /* synthetic */ void getViewBinding$annotations() {
    }

    private final void hideEmptyView() {
        getViewBinding().refreshLayout.w();
        getViewBinding().emptyView.setVisibility(8);
    }

    private final void initRecycleView() {
        FragmentActivity activity = getActivity();
        if (activity != null) {
            this.helloGiftNewUserAdapter = new HelloGiftNewUserAdapter(activity, new ArrayList(), R.layout.item_hello_gift_new_user);
            getViewBinding().recyclerView.setLayoutManager(new LinearLayoutManager(activity));
            getViewBinding().recyclerView.setAdapter(this.helloGiftNewUserAdapter);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: initView$lambda-5$lambda-1  reason: not valid java name */
    public static final void m488initView$lambda5$lambda1(HelloSummonFragment this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        H5RulesSelectListener h5RulesSelectListener = this$0.h5RulesSelectListener;
        if (h5RulesSelectListener != null) {
            h5RulesSelectListener.onH5RulesClickListener();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: initView$lambda-5$lambda-3  reason: not valid java name */
    public static final void m489initView$lambda5$lambda3(HelloSummonFragment this$0, FragmentHelloSummonBinding this_apply, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(this_apply, "$this_apply");
        if (this$0.isSummon) {
            this_apply.tvSummon.setBackgroundResource(R.drawable.bg_hello_start_un_btn);
            FragmentActivity activity = this$0.getActivity();
            if (activity != null) {
                this_apply.tvSummon.setTextColor(ContextCompat.getColor(activity, R.color.white));
                this_apply.tvSummon.setText(this$0.getString(R.string.hello_star_summon_over));
            }
            this$0.getViewModel().checkSummonHelloUser();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: initView$lambda-5$lambda-4  reason: not valid java name */
    public static final void m490initView$lambda5$lambda4(HelloSummonFragment this$0, j it) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(it, "it");
        this$0.getViewModel().loadHelloStarSummonData(this$0.liveId, this$0.startTime);
    }

    private final void setLoadDataObserve() {
        getViewModel().getHelloGiftNewUserLiveData().observe(this, new Observer() { // from class: com.guochao.faceshow.aaspring.modulars.live.hello.f
            @Override // androidx.lifecycle.Observer
            public final void onChanged(Object obj) {
                HelloSummonFragment.m491setLoadDataObserve$lambda11(HelloSummonFragment.this, (List) obj);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: setLoadDataObserve$lambda-11  reason: not valid java name */
    public static final void m491setLoadDataObserve$lambda11(HelloSummonFragment this$0, List list) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        if (list == null || list.isEmpty()) {
            CommonRecyclerAdapter<HelloStarSummon> commonRecyclerAdapter = this$0.helloGiftNewUserAdapter;
            if (commonRecyclerAdapter != null) {
                commonRecyclerAdapter.setData(new ArrayList());
            }
            this$0.showEmptyView();
            return;
        }
        CommonRecyclerAdapter<HelloStarSummon> commonRecyclerAdapter2 = this$0.helloGiftNewUserAdapter;
        if (commonRecyclerAdapter2 != null) {
            commonRecyclerAdapter2.setData(list);
        }
        this$0.hideEmptyView();
    }

    private final void showEmptyView() {
        getViewBinding().refreshLayout.w();
        getViewBinding().emptyView.setVisibility(0);
    }

    @Nullable
    public final H5RulesSelectListener getH5RulesSelectListener() {
        return this.h5RulesSelectListener;
    }

    @Nullable
    public final CommonRecyclerAdapter<HelloStarSummon> getHelloGiftNewUserAdapter() {
        return this.helloGiftNewUserAdapter;
    }

    @NotNull
    public final String getLiveId() {
        return this.liveId;
    }

    @NotNull
    public final String getStartTime() {
        return this.startTime;
    }

    @NotNull
    public final FragmentHelloSummonBinding getViewBinding() {
        FragmentHelloSummonBinding fragmentHelloSummonBinding = this.viewBinding;
        if (fragmentHelloSummonBinding != null) {
            return fragmentHelloSummonBinding;
        }
        Intrinsics.throwUninitializedPropertyAccessException("viewBinding");
        return null;
    }

    public final void h5RulesAutoRefresh() {
        getViewBinding().refreshLayout.o();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.guochao.faceshow.aaspring.base.mvvm.fragment.GCCoreFragment
    public void initView(@NotNull View root, @Nullable Bundle bundle) {
        Intrinsics.checkNotNullParameter(root, "root");
        super.initView(root, bundle);
        Bundle arguments = getArguments();
        if (arguments != null) {
            this.liveId = String.valueOf(arguments.getString("liveId"));
            this.startTime = String.valueOf(arguments.getString("startTime"));
        }
        final FragmentHelloSummonBinding viewBinding = getViewBinding();
        cheSummonUI();
        setLoadDataObserve();
        checkSummonDataObserve();
        initRecycleView();
        viewBinding.refreshLayout.f(true);
        viewBinding.refreshLayout.L(false);
        viewBinding.tvRule.setOnClickListener(new View.OnClickListener() { // from class: com.guochao.faceshow.aaspring.modulars.live.hello.c
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                HelloSummonFragment.m488initView$lambda5$lambda1(HelloSummonFragment.this, view);
            }
        });
        viewBinding.tvSummon.setOnClickListener(new View.OnClickListener() { // from class: com.guochao.faceshow.aaspring.modulars.live.hello.d
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                HelloSummonFragment.m489initView$lambda5$lambda3(HelloSummonFragment.this, viewBinding, view);
            }
        });
        viewBinding.refreshLayout.T(new zd.d() { // from class: com.guochao.faceshow.aaspring.modulars.live.hello.g
            @Override // zd.d
            public final void a(j jVar) {
                HelloSummonFragment.m490initView$lambda5$lambda4(HelloSummonFragment.this, jVar);
            }
        });
        viewBinding.refreshLayout.o();
    }

    public final boolean isSummon() {
        return this.isSummon;
    }

    @Override // com.guochao.faceshow.aaspring.base.mvvm.viewmodel.BaseViewModel.ModelUpdateObserver
    public void onModelUpdate(@Nullable BaseModel baseModel) {
    }

    public final void setH5RulesSelectListener(@Nullable H5RulesSelectListener h5RulesSelectListener) {
        this.h5RulesSelectListener = h5RulesSelectListener;
    }

    public final void setHelloGiftNewUserAdapter(@Nullable CommonRecyclerAdapter<HelloStarSummon> commonRecyclerAdapter) {
        this.helloGiftNewUserAdapter = commonRecyclerAdapter;
    }

    public final void setLiveId(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.liveId = str;
    }

    public final void setOnH5RulesSelectListener(@NotNull H5RulesSelectListener h5RulesSelectListener) {
        Intrinsics.checkNotNullParameter(h5RulesSelectListener, "h5RulesSelectListener");
        this.h5RulesSelectListener = h5RulesSelectListener;
    }

    public final void setStartTime(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.startTime = str;
    }

    public final void setSummon(boolean z10) {
        this.isSummon = z10;
    }

    public final void setViewBinding(@NotNull FragmentHelloSummonBinding fragmentHelloSummonBinding) {
        Intrinsics.checkNotNullParameter(fragmentHelloSummonBinding, "<set-?>");
        this.viewBinding = fragmentHelloSummonBinding;
    }

    @Override // com.guochao.faceshow.aaspring.base.mvvm.fragment.GCBaseMvvmFragment
    @NotNull
    public HelloGiftNewUserViewModel getViewModel() {
        return (HelloGiftNewUserViewModel) this.viewModel$delegate.getValue();
    }
}
