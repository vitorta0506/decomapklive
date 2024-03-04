package com.guochao.faceshow.aaspring.modulars.personal.dressup.fragment;

import android.os.Bundle;
import android.view.View;
import androidx.core.content.ContextCompat;
import androidx.fragment.app.FragmentActivity;
import androidx.lifecycle.Observer;
import androidx.lifecycle.ViewModelProvider;
import androidx.lifecycle.ViewModelStoreOwner;
import androidx.recyclerview.widget.GridLayoutManager;
import com.facebook.devicerequests.internal.DeviceRequestsHelper;
import com.guochao.faceshow.R;
import com.guochao.faceshow.aaspring.base.mvvm.annotations.GCViewBinding;
import com.guochao.faceshow.aaspring.base.mvvm.fragment.GCBaseMvvmFragment;
import com.guochao.faceshow.aaspring.base.mvvm.fragment.GCCoreFragment;
import com.guochao.faceshow.aaspring.base.mvvm.model.BaseModel;
import com.guochao.faceshow.aaspring.base.mvvm.viewmodel.BaseViewModel;
import com.guochao.faceshow.aaspring.beans.BackPageGift;
import com.guochao.faceshow.aaspring.modulars.friend.adapter.CommonRecyclerAdapter;
import com.guochao.faceshow.aaspring.modulars.personal.dressup.adapter.BackPackAdapter;
import com.guochao.faceshow.aaspring.modulars.personal.dressup.viewmodel.BackpackGiftModel;
import com.guochao.faceshow.databinding.FragmentBackpackGiftBinding;
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
@Metadata(d1 = {"\u0000D\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u000b\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\u0018\u0000 &2\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001:\u0001&B\u0005¢\u0006\u0002\u0010\u0004J\u0010\u0010\u0018\u001a\u00020\u00192\u0006\u0010\u001a\u001a\u00020\u001bH\u0002J\b\u0010\u001c\u001a\u00020\u0019H\u0002J\u001a\u0010\u001d\u001a\u00020\u00192\u0006\u0010\u001e\u001a\u00020\u001f2\b\u0010 \u001a\u0004\u0018\u00010!H\u0014J\u0012\u0010\"\u001a\u00020\u00192\b\u0010#\u001a\u0004\u0018\u00010\u0002H\u0016J\b\u0010$\u001a\u00020\u0019H\u0002J\b\u0010%\u001a\u00020\u0019H\u0002R\"\u0010\u0005\u001a\n\u0012\u0004\u0012\u00020\u0007\u0018\u00010\u0006X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\b\u0010\t\"\u0004\b\n\u0010\u000bR$\u0010\f\u001a\u00020\r8\u0006@\u0006X\u0087.¢\u0006\u0014\n\u0000\u0012\u0004\b\u000e\u0010\u0004\u001a\u0004\b\u000f\u0010\u0010\"\u0004\b\u0011\u0010\u0012R\u001b\u0010\u0013\u001a\u00020\u00038VX\u0096\u0084\u0002¢\u0006\f\n\u0004\b\u0016\u0010\u0017\u001a\u0004\b\u0014\u0010\u0015¨\u0006'"}, d2 = {"Lcom/guochao/faceshow/aaspring/modulars/personal/dressup/fragment/BackpackGiftFragment;", "Lcom/guochao/faceshow/aaspring/base/mvvm/fragment/GCBaseMvvmFragment;", "Lcom/guochao/faceshow/aaspring/base/mvvm/model/BaseModel;", "Lcom/guochao/faceshow/aaspring/modulars/personal/dressup/viewmodel/BackpackGiftModel;", "()V", "backPackAdapter", "Lcom/guochao/faceshow/aaspring/modulars/friend/adapter/CommonRecyclerAdapter;", "Lcom/guochao/faceshow/aaspring/beans/BackPageGift;", "getBackPackAdapter", "()Lcom/guochao/faceshow/aaspring/modulars/friend/adapter/CommonRecyclerAdapter;", "setBackPackAdapter", "(Lcom/guochao/faceshow/aaspring/modulars/friend/adapter/CommonRecyclerAdapter;)V", "viewBinding", "Lcom/guochao/faceshow/databinding/FragmentBackpackGiftBinding;", "getViewBinding$annotations", "getViewBinding", "()Lcom/guochao/faceshow/databinding/FragmentBackpackGiftBinding;", "setViewBinding", "(Lcom/guochao/faceshow/databinding/FragmentBackpackGiftBinding;)V", "viewModel", "getViewModel", "()Lcom/guochao/faceshow/aaspring/modulars/personal/dressup/viewmodel/BackpackGiftModel;", "viewModel$delegate", "Lkotlin/Lazy;", "hideEmptyView", "", "showLoadMore", "", "initRecycleView", "initView", "root", "Landroid/view/View;", "savedInstanceState", "Landroid/os/Bundle;", "onModelUpdate", DeviceRequestsHelper.DEVICE_INFO_MODEL, "setLoadDataObserve", "showEmptyView", "Companion", "app_GooglePlayRelease"}, k = 1, mv = {1, 7, 1}, xi = 48)
/* loaded from: classes3.dex */
public final class BackpackGiftFragment extends GCBaseMvvmFragment<BaseModel, BackpackGiftModel> {
    @NotNull
    public static final Companion Companion = new Companion(null);
    @Nullable
    private CommonRecyclerAdapter<BackPageGift> backPackAdapter;
    public FragmentBackpackGiftBinding viewBinding;
    @NotNull
    private final Lazy viewModel$delegate;

    @Metadata(d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\b\u0010\u0003\u001a\u00020\u0004H\u0007¨\u0006\u0005"}, d2 = {"Lcom/guochao/faceshow/aaspring/modulars/personal/dressup/fragment/BackpackGiftFragment$Companion;", "", "()V", "getInstance", "Lcom/guochao/faceshow/aaspring/modulars/personal/dressup/fragment/BackpackGiftFragment;", "app_GooglePlayRelease"}, k = 1, mv = {1, 7, 1}, xi = 48)
    /* loaded from: classes3.dex */
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @JvmStatic
        @NotNull
        public final BackpackGiftFragment getInstance() {
            return new BackpackGiftFragment();
        }
    }

    public BackpackGiftFragment() {
        Lazy lazy;
        lazy = LazyKt__LazyJVMKt.lazy(LazyThreadSafetyMode.NONE, (Function0) new Function0<BackpackGiftModel>() { // from class: com.guochao.faceshow.aaspring.modulars.personal.dressup.fragment.BackpackGiftFragment$special$$inlined$lazyViewModel$default$1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final BackpackGiftModel invoke() {
                BaseViewModel baseViewModel;
                ViewModelStoreOwner viewModelStoreOwner = ViewModelStoreOwner.this;
                String str = r2;
                ViewModelProvider.Factory factory = r3;
                ViewModelProvider viewModelProvider = factory == null ? new ViewModelProvider(viewModelStoreOwner) : new ViewModelProvider(viewModelStoreOwner, factory);
                if (str != null) {
                    baseViewModel = (BaseViewModel) viewModelProvider.get(str, BackpackGiftModel.class);
                } else {
                    baseViewModel = (BaseViewModel) viewModelProvider.get(BackpackGiftModel.class);
                }
                Objects.requireNonNull(baseViewModel, "null cannot be cast to non-null type com.guochao.faceshow.aaspring.modulars.personal.dressup.viewmodel.BackpackGiftModel");
                return (BackpackGiftModel) baseViewModel;
            }
        });
        this.viewModel$delegate = lazy;
    }

    @JvmStatic
    @NotNull
    public static final BackpackGiftFragment getInstance() {
        return Companion.getInstance();
    }

    @GCViewBinding
    public static /* synthetic */ void getViewBinding$annotations() {
    }

    private final void hideEmptyView(boolean z10) {
        getViewBinding().refreshLayout.r();
        getViewBinding().refreshLayout.L(z10);
        getViewBinding().emptyView.setVisibility(8);
        CommonRecyclerAdapter<BackPageGift> commonRecyclerAdapter = this.backPackAdapter;
        if (commonRecyclerAdapter != null) {
            commonRecyclerAdapter.notifyDataSetChanged();
        }
    }

    private final void initRecycleView() {
        FragmentActivity activity = getActivity();
        if (activity != null) {
            this.backPackAdapter = new BackPackAdapter(activity, new ArrayList(), R.layout.item_backpack_gift);
            getViewBinding().recyclerView.setLayoutManager(new GridLayoutManager(getActivity(), 2));
            getViewBinding().recyclerView.setAdapter(this.backPackAdapter);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: initView$lambda-1$lambda-0  reason: not valid java name */
    public static final void m529initView$lambda1$lambda0(BackpackGiftFragment this$0, j it) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(it, "it");
        this$0.getViewModel().loadBackPackData(true);
    }

    private final void setLoadDataObserve() {
        getViewModel().getBackPageGiftLiveData().observe(this, new Observer() { // from class: com.guochao.faceshow.aaspring.modulars.personal.dressup.fragment.a
            @Override // androidx.lifecycle.Observer
            public final void onChanged(Object obj) {
                BackpackGiftFragment.m530setLoadDataObserve$lambda5(BackpackGiftFragment.this, (List) obj);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: setLoadDataObserve$lambda-5  reason: not valid java name */
    public static final void m530setLoadDataObserve$lambda5(BackpackGiftFragment this$0, List list) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.dismissProgressDialog();
        if (this$0.getViewModel().getCurrPage() == 1) {
            if (list == null || list.isEmpty()) {
                this$0.showEmptyView();
                return;
            }
        }
        if (this$0.getViewModel().getCurrPage() == 1) {
            if (list != null) {
                CommonRecyclerAdapter<BackPageGift> commonRecyclerAdapter = this$0.backPackAdapter;
                if (commonRecyclerAdapter != null) {
                    commonRecyclerAdapter.setData(list);
                }
                this$0.hideEmptyView(this$0.getViewModel().getCurrPage() >= this$0.getViewModel().getCount());
            }
        } else if (list != null) {
            if (!list.isEmpty()) {
                CommonRecyclerAdapter<BackPageGift> commonRecyclerAdapter2 = this$0.backPackAdapter;
                if (commonRecyclerAdapter2 != null) {
                    commonRecyclerAdapter2.addData(list);
                }
                this$0.hideEmptyView(this$0.getViewModel().getCurrPage() >= this$0.getViewModel().getCount());
                return;
            }
            this$0.hideEmptyView(false);
        }
    }

    private final void showEmptyView() {
        getViewBinding().refreshLayout.L(false);
        getViewBinding().emptyView.setVisibility(0);
        CommonRecyclerAdapter<BackPageGift> commonRecyclerAdapter = this.backPackAdapter;
        if (commonRecyclerAdapter != null) {
            commonRecyclerAdapter.notifyDataSetChanged();
        }
    }

    @Nullable
    public final CommonRecyclerAdapter<BackPageGift> getBackPackAdapter() {
        return this.backPackAdapter;
    }

    @NotNull
    public final FragmentBackpackGiftBinding getViewBinding() {
        FragmentBackpackGiftBinding fragmentBackpackGiftBinding = this.viewBinding;
        if (fragmentBackpackGiftBinding != null) {
            return fragmentBackpackGiftBinding;
        }
        Intrinsics.throwUninitializedPropertyAccessException("viewBinding");
        return null;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.guochao.faceshow.aaspring.base.mvvm.fragment.GCCoreFragment
    public void initView(@NotNull View root, @Nullable Bundle bundle) {
        Intrinsics.checkNotNullParameter(root, "root");
        super.initView(root, bundle);
        FragmentBackpackGiftBinding viewBinding = getViewBinding();
        setLoadDataObserve();
        initRecycleView();
        getViewBinding().emptyText.setText(getString(R.string.backpack_gift_empty));
        viewBinding.refreshLayout.f(false);
        viewBinding.refreshLayout.L(true);
        viewBinding.refreshLayout.S(new zd.b() { // from class: com.guochao.faceshow.aaspring.modulars.personal.dressup.fragment.b
            @Override // zd.b
            public final void b(j jVar) {
                BackpackGiftFragment.m529initView$lambda1$lambda0(BackpackGiftFragment.this, jVar);
            }
        });
        GCCoreFragment.showProgressDialog$default(this, null, 1, null);
        getViewModel().loadBackPackData(false);
        getViewBinding().recyclerView.setBackgroundColor(ContextCompat.getColor(root.getContext(), R.color.color_ugc_divider));
    }

    @Override // com.guochao.faceshow.aaspring.base.mvvm.viewmodel.BaseViewModel.ModelUpdateObserver
    public void onModelUpdate(@Nullable BaseModel baseModel) {
    }

    public final void setBackPackAdapter(@Nullable CommonRecyclerAdapter<BackPageGift> commonRecyclerAdapter) {
        this.backPackAdapter = commonRecyclerAdapter;
    }

    public final void setViewBinding(@NotNull FragmentBackpackGiftBinding fragmentBackpackGiftBinding) {
        Intrinsics.checkNotNullParameter(fragmentBackpackGiftBinding, "<set-?>");
        this.viewBinding = fragmentBackpackGiftBinding;
    }

    @Override // com.guochao.faceshow.aaspring.base.mvvm.fragment.GCBaseMvvmFragment
    @NotNull
    public BackpackGiftModel getViewModel() {
        return (BackpackGiftModel) this.viewModel$delegate.getValue();
    }
}
