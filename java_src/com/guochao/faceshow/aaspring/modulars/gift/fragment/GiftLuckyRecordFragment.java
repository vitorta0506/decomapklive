package com.guochao.faceshow.aaspring.modulars.gift.fragment;

import android.app.Dialog;
import android.content.DialogInterface;
import android.os.Bundle;
import android.view.View;
import android.view.Window;
import android.view.WindowManager;
import android.widget.ImageView;
import androidx.fragment.app.FragmentManager;
import androidx.lifecycle.Observer;
import androidx.lifecycle.ViewModelProvider;
import androidx.lifecycle.ViewModelStoreOwner;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.chad.library.adapter.base.module.BaseLoadMoreModule;
import com.guochao.faceshow.R;
import com.guochao.faceshow.aaspring.base.mvvm.annotations.GCViewBinding;
import com.guochao.faceshow.aaspring.base.mvvm.fragment.GCCoreFragment;
import com.guochao.faceshow.aaspring.base.mvvm.viewmodel.BaseViewModel;
import com.guochao.faceshow.aaspring.beans.GiftLuckRecordBean;
import com.guochao.faceshow.aaspring.beans.GiftLuckRecordListBean;
import com.guochao.faceshow.aaspring.beans.ResourceListItemBean;
import com.guochao.faceshow.aaspring.modulars.gift.fragment.GiftLuckyDetailFragment;
import com.guochao.faceshow.aaspring.modulars.gift.viewmodel.GiftLuckyRecordViewModel;
import com.guochao.faceshow.databinding.FragmentComboGiftRecordBinding;
import java.util.Collection;
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
import org.greenrobot.eventbus.EventBus;
import org.greenrobot.eventbus.Subscribe;
import org.greenrobot.eventbus.ThreadMode;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(bv = {}, d1 = {"\u0000\\\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\u0005\u0018\u0000 ,2\u00020\u0001:\u0001,B\u0007¢\u0006\u0004\b+\u0010'J\u0012\u0010\u0005\u001a\u00020\u00042\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002H\u0016J\b\u0010\u0006\u001a\u00020\u0004H\u0016J\u0012\u0010\u0007\u001a\u00020\u00042\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002H\u0016J\u0010\u0010\n\u001a\u00020\u00042\u0006\u0010\t\u001a\u00020\bH\u0016J\u0012\u0010\f\u001a\u00020\u000b2\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002H\u0016J\u001a\u0010\u000f\u001a\u00020\u00042\u0006\u0010\u000e\u001a\u00020\r2\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002H\u0014J\u0012\u0010\u0012\u001a\u00020\u00042\b\u0010\u0011\u001a\u0004\u0018\u00010\u0010H\u0007R\u0016\u0010\u0014\u001a\u00020\u00138\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0014\u0010\u0015R\u001b\u0010\u001b\u001a\u00020\u00168FX\u0086\u0084\u0002¢\u0006\f\n\u0004\b\u0017\u0010\u0018\u001a\u0004\b\u0019\u0010\u001aR\u0016\u0010\u001d\u001a\u00020\u001c8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u001d\u0010\u001eR(\u0010 \u001a\u00020\u001f8\u0006@\u0006X\u0087.¢\u0006\u0018\n\u0004\b \u0010!\u0012\u0004\b&\u0010'\u001a\u0004\b\"\u0010#\"\u0004\b$\u0010%R\u0016\u0010)\u001a\u00020(8\u0002@\u0002X\u0082.¢\u0006\u0006\n\u0004\b)\u0010*¨\u0006-"}, d2 = {"Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftLuckyRecordFragment;", "Lcom/guochao/faceshow/aaspring/base/mvvm/fragment/GCCoreFragment;", "Landroid/os/Bundle;", "savedInstanceState", "", "onCreate", "onDestroy", "onActivityCreated", "Landroid/content/DialogInterface;", "dialog", "onDismiss", "Landroid/app/Dialog;", "onCreateDialog", "Landroid/view/View;", "root", "initView", "Ly7/f;", "giftEvent", "handleEvent", "", "page", "I", "Lcom/guochao/faceshow/aaspring/modulars/gift/viewmodel/GiftLuckyRecordViewModel;", "viewModel$delegate", "Lkotlin/Lazy;", "getViewModel", "()Lcom/guochao/faceshow/aaspring/modulars/gift/viewmodel/GiftLuckyRecordViewModel;", "viewModel", "", "isShow", "Z", "Lcom/guochao/faceshow/databinding/FragmentComboGiftRecordBinding;", "viewBinding", "Lcom/guochao/faceshow/databinding/FragmentComboGiftRecordBinding;", "getViewBinding", "()Lcom/guochao/faceshow/databinding/FragmentComboGiftRecordBinding;", "setViewBinding", "(Lcom/guochao/faceshow/databinding/FragmentComboGiftRecordBinding;)V", "getViewBinding$annotations", "()V", "Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/RecordAdapter;", "mAdapter", "Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/RecordAdapter;", "<init>", "Companion", "app_GooglePlayRelease"}, k = 1, mv = {1, 7, 1})
/* loaded from: classes3.dex */
public final class GiftLuckyRecordFragment extends GCCoreFragment {
    @NotNull
    public static final Companion Companion = new Companion(null);
    private boolean isShow;
    private RecordAdapter mAdapter;
    private int page = 1;
    public FragmentComboGiftRecordBinding viewBinding;
    @NotNull
    private final Lazy viewModel$delegate;

    @Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0012\u0010\u0003\u001a\u00020\u00042\b\u0010\u0005\u001a\u0004\u0018\u00010\u0006H\u0007¨\u0006\u0007"}, d2 = {"Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftLuckyRecordFragment$Companion;", "", "()V", "newInstance", "Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftLuckyRecordFragment;", "gift", "Lcom/guochao/faceshow/aaspring/beans/ResourceListItemBean;", "app_GooglePlayRelease"}, k = 1, mv = {1, 7, 1}, xi = 48)
    /* loaded from: classes3.dex */
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @JvmStatic
        @NotNull
        public final GiftLuckyRecordFragment newInstance(@Nullable ResourceListItemBean resourceListItemBean) {
            Bundle bundle = new Bundle();
            GiftLuckyRecordFragment giftLuckyRecordFragment = new GiftLuckyRecordFragment();
            bundle.putParcelable("gift", resourceListItemBean);
            giftLuckyRecordFragment.setArguments(bundle);
            return giftLuckyRecordFragment;
        }
    }

    public GiftLuckyRecordFragment() {
        Lazy lazy;
        lazy = LazyKt__LazyJVMKt.lazy(LazyThreadSafetyMode.NONE, (Function0) new Function0<GiftLuckyRecordViewModel>() { // from class: com.guochao.faceshow.aaspring.modulars.gift.fragment.GiftLuckyRecordFragment$special$$inlined$lazyViewModel$default$1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final GiftLuckyRecordViewModel invoke() {
                BaseViewModel baseViewModel;
                ViewModelStoreOwner viewModelStoreOwner = ViewModelStoreOwner.this;
                String str = r2;
                ViewModelProvider.Factory factory = r3;
                ViewModelProvider viewModelProvider = factory == null ? new ViewModelProvider(viewModelStoreOwner) : new ViewModelProvider(viewModelStoreOwner, factory);
                if (str != null) {
                    baseViewModel = (BaseViewModel) viewModelProvider.get(str, GiftLuckyRecordViewModel.class);
                } else {
                    baseViewModel = (BaseViewModel) viewModelProvider.get(GiftLuckyRecordViewModel.class);
                }
                Objects.requireNonNull(baseViewModel, "null cannot be cast to non-null type com.guochao.faceshow.aaspring.modulars.gift.viewmodel.GiftLuckyRecordViewModel");
                return (GiftLuckyRecordViewModel) baseViewModel;
            }
        });
        this.viewModel$delegate = lazy;
        this.isShow = true;
    }

    @GCViewBinding
    public static /* synthetic */ void getViewBinding$annotations() {
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: initView$lambda-0  reason: not valid java name */
    public static final void m401initView$lambda0(GiftLuckyRecordFragment this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.dismiss();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: initView$lambda-1  reason: not valid java name */
    public static final void m402initView$lambda1(GiftLuckyRecordFragment this$0) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.getViewModel().getPageData(this$0.page);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: initView$lambda-3  reason: not valid java name */
    public static final void m403initView$lambda3(GiftLuckyRecordFragment this$0, GiftLuckRecordListBean giftLuckRecordListBean) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        RecordAdapter recordAdapter = null;
        if (giftLuckRecordListBean != null) {
            List<GiftLuckRecordBean> list = giftLuckRecordListBean.getList();
            if (list != null) {
                if (this$0.page == 1) {
                    RecordAdapter recordAdapter2 = this$0.mAdapter;
                    if (recordAdapter2 == null) {
                        Intrinsics.throwUninitializedPropertyAccessException("mAdapter");
                        recordAdapter2 = null;
                    }
                    recordAdapter2.setNewInstance(list);
                } else {
                    RecordAdapter recordAdapter3 = this$0.mAdapter;
                    if (recordAdapter3 == null) {
                        Intrinsics.throwUninitializedPropertyAccessException("mAdapter");
                        recordAdapter3 = null;
                    }
                    recordAdapter3.addData((Collection) list);
                }
                if (list.size() < 20) {
                    RecordAdapter recordAdapter4 = this$0.mAdapter;
                    if (recordAdapter4 == null) {
                        Intrinsics.throwUninitializedPropertyAccessException("mAdapter");
                        recordAdapter4 = null;
                    }
                    BaseLoadMoreModule.loadMoreEnd$default(recordAdapter4.getLoadMoreModule(), false, 1, null);
                } else {
                    RecordAdapter recordAdapter5 = this$0.mAdapter;
                    if (recordAdapter5 == null) {
                        Intrinsics.throwUninitializedPropertyAccessException("mAdapter");
                    } else {
                        recordAdapter = recordAdapter5;
                    }
                    recordAdapter.getLoadMoreModule().loadMoreComplete();
                }
                if (this$0.page == 1 && list.size() == 0) {
                    this$0.getViewBinding().emptyLL.setVisibility(0);
                    this$0.getViewBinding().recordRV.setVisibility(8);
                } else {
                    this$0.getViewBinding().emptyLL.setVisibility(8);
                }
                this$0.page++;
                return;
            }
            return;
        }
        RecordAdapter recordAdapter6 = this$0.mAdapter;
        if (recordAdapter6 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("mAdapter");
        } else {
            recordAdapter = recordAdapter6;
        }
        recordAdapter.getLoadMoreModule().loadMoreComplete();
    }

    @JvmStatic
    @NotNull
    public static final GiftLuckyRecordFragment newInstance(@Nullable ResourceListItemBean resourceListItemBean) {
        return Companion.newInstance(resourceListItemBean);
    }

    @NotNull
    public final FragmentComboGiftRecordBinding getViewBinding() {
        FragmentComboGiftRecordBinding fragmentComboGiftRecordBinding = this.viewBinding;
        if (fragmentComboGiftRecordBinding != null) {
            return fragmentComboGiftRecordBinding;
        }
        Intrinsics.throwUninitializedPropertyAccessException("viewBinding");
        return null;
    }

    @NotNull
    public final GiftLuckyRecordViewModel getViewModel() {
        return (GiftLuckyRecordViewModel) this.viewModel$delegate.getValue();
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public final void handleEvent(@Nullable y7.f fVar) {
        if (isAdded()) {
            this.isShow = false;
            dismiss();
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.guochao.faceshow.aaspring.base.mvvm.fragment.GCCoreFragment
    public void initView(@NotNull View root, @Nullable Bundle bundle) {
        Intrinsics.checkNotNullParameter(root, "root");
        super.initView(root, bundle);
        ImageView imageView = getViewBinding().back;
        if (imageView != null) {
            imageView.setOnClickListener(new View.OnClickListener() { // from class: com.guochao.faceshow.aaspring.modulars.gift.fragment.n
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    GiftLuckyRecordFragment.m401initView$lambda0(GiftLuckyRecordFragment.this, view);
                }
            });
        }
        RecordAdapter recordAdapter = new RecordAdapter();
        this.mAdapter = recordAdapter;
        recordAdapter.getLoadMoreModule().setOnLoadMoreListener(new x0.j() { // from class: com.guochao.faceshow.aaspring.modulars.gift.fragment.p
            @Override // x0.j
            public final void onLoadMore() {
                GiftLuckyRecordFragment.m402initView$lambda1(GiftLuckyRecordFragment.this);
            }
        });
        getViewBinding().recordRV.setLayoutManager(new LinearLayoutManager(getContext()));
        RecyclerView recyclerView = getViewBinding().recordRV;
        RecordAdapter recordAdapter2 = this.mAdapter;
        if (recordAdapter2 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("mAdapter");
            recordAdapter2 = null;
        }
        recyclerView.setAdapter(recordAdapter2);
        getViewModel().bind(this, new Observer() { // from class: com.guochao.faceshow.aaspring.modulars.gift.fragment.o
            @Override // androidx.lifecycle.Observer
            public final void onChanged(Object obj) {
                GiftLuckyRecordFragment.m403initView$lambda3(GiftLuckyRecordFragment.this, (GiftLuckRecordListBean) obj);
            }
        });
        getViewModel().getPageData(this.page);
    }

    @Override // androidx.fragment.app.DialogFragment, androidx.fragment.app.Fragment
    public void onActivityCreated(@Nullable Bundle bundle) {
        super.onActivityCreated(bundle);
        Dialog dialog = getDialog();
        Window window = dialog != null ? dialog.getWindow() : null;
        WindowManager.LayoutParams attributes = window != null ? window.getAttributes() : null;
        if (attributes != null) {
            attributes.gravity = this.mGravity;
        }
        if (attributes != null) {
            attributes.width = -1;
        }
        if (attributes != null) {
            attributes.height = -2;
        }
        if (window == null) {
            return;
        }
        window.setAttributes(attributes);
    }

    @Override // com.guochao.faceshow.aaspring.base.mvvm.fragment.GCCoreFragment, androidx.fragment.app.DialogFragment, androidx.fragment.app.Fragment
    public void onCreate(@Nullable Bundle bundle) {
        super.onCreate(bundle);
        setShowsDialog(true);
        EventBus.getDefault().register(this);
    }

    @Override // androidx.fragment.app.DialogFragment
    @NotNull
    public Dialog onCreateDialog(@Nullable Bundle bundle) {
        return createBottomDialog(R.style.BottomDialog_FullScreen);
    }

    @Override // androidx.fragment.app.Fragment
    public void onDestroy() {
        super.onDestroy();
        if (EventBus.getDefault().isRegistered(this)) {
            EventBus.getDefault().unregister(this);
        }
    }

    @Override // androidx.fragment.app.DialogFragment, android.content.DialogInterface.OnDismissListener
    public void onDismiss(@NotNull DialogInterface dialog) {
        Intrinsics.checkNotNullParameter(dialog, "dialog");
        super.onDismiss(dialog);
        if (this.isShow) {
            GiftLuckyDetailFragment.Companion companion = GiftLuckyDetailFragment.Companion;
            Bundle arguments = getArguments();
            GiftLuckyDetailFragment newInstance = companion.newInstance(arguments != null ? (ResourceListItemBean) arguments.getParcelable("gift") : null);
            FragmentManager parentFragmentManager = getParentFragmentManager();
            Intrinsics.checkNotNullExpressionValue(parentFragmentManager, "parentFragmentManager");
            newInstance.show(parentFragmentManager, "gift_detail");
        }
    }

    public final void setViewBinding(@NotNull FragmentComboGiftRecordBinding fragmentComboGiftRecordBinding) {
        Intrinsics.checkNotNullParameter(fragmentComboGiftRecordBinding, "<set-?>");
        this.viewBinding = fragmentComboGiftRecordBinding;
    }
}
