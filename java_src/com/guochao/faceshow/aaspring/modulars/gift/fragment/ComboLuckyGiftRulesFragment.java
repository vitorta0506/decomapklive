package com.guochao.faceshow.aaspring.modulars.gift.fragment;

import android.app.Dialog;
import android.content.DialogInterface;
import android.os.Bundle;
import android.view.View;
import android.view.Window;
import android.view.WindowManager;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.fragment.app.FragmentActivity;
import androidx.fragment.app.FragmentManager;
import androidx.lifecycle.Observer;
import androidx.lifecycle.ViewModelProvider;
import com.guochao.faceshow.R;
import com.guochao.faceshow.aaspring.base.mvvm.annotations.GCViewBinding;
import com.guochao.faceshow.aaspring.base.mvvm.fragment.GCCoreFragment;
import com.guochao.faceshow.aaspring.base.mvvm.viewmodel.BaseViewModel;
import com.guochao.faceshow.aaspring.beans.GiftLuckDetailBean;
import com.guochao.faceshow.aaspring.beans.ResourceListItemBean;
import com.guochao.faceshow.aaspring.modulars.gift.fragment.GiftLuckyDetailFragment;
import com.guochao.faceshow.aaspring.modulars.gift.viewmodel.GiftLuckDetailViewModel;
import com.guochao.faceshow.databinding.FragmentComboGiftRulesBinding;
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
@Metadata(bv = {}, d1 = {"\u0000N\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u000b\u0018\u0000 &2\u00020\u0001:\u0001&B\u0007¢\u0006\u0004\b%\u0010$J\u0012\u0010\u0005\u001a\u00020\u00042\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002H\u0016J\b\u0010\u0006\u001a\u00020\u0004H\u0016J\u0012\u0010\b\u001a\u00020\u00072\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002H\u0016J\b\u0010\t\u001a\u00020\u0004H\u0016J\u001a\u0010\f\u001a\u00020\u00042\u0006\u0010\u000b\u001a\u00020\n2\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002H\u0014J\u0010\u0010\u000f\u001a\u00020\u00042\u0006\u0010\u000e\u001a\u00020\rH\u0016J\u0012\u0010\u0012\u001a\u00020\u00042\b\u0010\u0011\u001a\u0004\u0018\u00010\u0010H\u0007R\u001b\u0010\u0018\u001a\u00020\u00138BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u0014\u0010\u0015\u001a\u0004\b\u0016\u0010\u0017R\u0016\u0010\u001a\u001a\u00020\u00198\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u001a\u0010\u001bR(\u0010\u001d\u001a\u00020\u001c8\u0006@\u0006X\u0087.¢\u0006\u0018\n\u0004\b\u001d\u0010\u001e\u0012\u0004\b#\u0010$\u001a\u0004\b\u001f\u0010 \"\u0004\b!\u0010\"¨\u0006'"}, d2 = {"Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/ComboLuckyGiftRulesFragment;", "Lcom/guochao/faceshow/aaspring/base/mvvm/fragment/GCCoreFragment;", "Landroid/os/Bundle;", "savedInstanceState", "", "onCreate", "onDestroy", "Landroid/app/Dialog;", "onCreateDialog", "onStart", "Landroid/view/View;", "root", "initView", "Landroid/content/DialogInterface;", "dialog", "onDismiss", "Ly7/f;", "giftEvent", "handleEvent", "Lcom/guochao/faceshow/aaspring/modulars/gift/viewmodel/GiftLuckDetailViewModel;", "viewModel$delegate", "Lkotlin/Lazy;", "getViewModel", "()Lcom/guochao/faceshow/aaspring/modulars/gift/viewmodel/GiftLuckDetailViewModel;", "viewModel", "", "isShow", "Z", "Lcom/guochao/faceshow/databinding/FragmentComboGiftRulesBinding;", "viewBinding", "Lcom/guochao/faceshow/databinding/FragmentComboGiftRulesBinding;", "getViewBinding", "()Lcom/guochao/faceshow/databinding/FragmentComboGiftRulesBinding;", "setViewBinding", "(Lcom/guochao/faceshow/databinding/FragmentComboGiftRulesBinding;)V", "getViewBinding$annotations", "()V", "<init>", "Companion", "app_GooglePlayRelease"}, k = 1, mv = {1, 7, 1})
/* loaded from: classes3.dex */
public final class ComboLuckyGiftRulesFragment extends GCCoreFragment {
    @NotNull
    public static final Companion Companion = new Companion(null);
    private boolean isShow;
    public FragmentComboGiftRulesBinding viewBinding;
    @NotNull
    private final Lazy viewModel$delegate;

    @Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0012\u0010\u0003\u001a\u00020\u00042\b\u0010\u0005\u001a\u0004\u0018\u00010\u0006H\u0007¨\u0006\u0007"}, d2 = {"Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/ComboLuckyGiftRulesFragment$Companion;", "", "()V", "newInstance", "Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/ComboLuckyGiftRulesFragment;", "gift", "Lcom/guochao/faceshow/aaspring/beans/ResourceListItemBean;", "app_GooglePlayRelease"}, k = 1, mv = {1, 7, 1}, xi = 48)
    /* loaded from: classes3.dex */
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @JvmStatic
        @NotNull
        public final ComboLuckyGiftRulesFragment newInstance(@Nullable ResourceListItemBean resourceListItemBean) {
            Bundle bundle = new Bundle();
            ComboLuckyGiftRulesFragment comboLuckyGiftRulesFragment = new ComboLuckyGiftRulesFragment();
            bundle.putParcelable("gift", resourceListItemBean);
            comboLuckyGiftRulesFragment.setArguments(bundle);
            return comboLuckyGiftRulesFragment;
        }
    }

    public ComboLuckyGiftRulesFragment() {
        Lazy lazy;
        lazy = LazyKt__LazyJVMKt.lazy(LazyThreadSafetyMode.NONE, (Function0) new Function0<GiftLuckDetailViewModel>() { // from class: com.guochao.faceshow.aaspring.modulars.gift.fragment.ComboLuckyGiftRulesFragment$viewModel$2
            /* JADX INFO: Access modifiers changed from: package-private */
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final GiftLuckDetailViewModel invoke() {
                FragmentActivity requireActivity = ComboLuckyGiftRulesFragment.this.requireActivity();
                Intrinsics.checkNotNullExpressionValue(requireActivity, "requireActivity()");
                return (GiftLuckDetailViewModel) ((BaseViewModel) new ViewModelProvider(requireActivity).get(GiftLuckDetailViewModel.class));
            }
        });
        this.viewModel$delegate = lazy;
        this.isShow = true;
    }

    @GCViewBinding
    public static /* synthetic */ void getViewBinding$annotations() {
    }

    private final GiftLuckDetailViewModel getViewModel() {
        return (GiftLuckDetailViewModel) this.viewModel$delegate.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: initView$lambda-0  reason: not valid java name */
    public static final void m393initView$lambda0(ComboLuckyGiftRulesFragment this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.dismiss();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: initView$lambda-1  reason: not valid java name */
    public static final void m394initView$lambda1(ComboLuckyGiftRulesFragment this$0, GiftLuckDetailBean giftLuckDetailBean) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        View view = this$0.getView();
        TextView textView = view != null ? (TextView) view.findViewById(R.id.rule_1) : null;
        if (textView == null) {
            return;
        }
        Object[] objArr = new Object[1];
        objArr[0] = Integer.valueOf(giftLuckDetailBean != null ? giftLuckDetailBean.getMaxTimes() : 10000);
        textView.setText(this$0.getString(R.string.lucky_gift_rules_des_first_1, objArr));
    }

    @JvmStatic
    @NotNull
    public static final ComboLuckyGiftRulesFragment newInstance(@Nullable ResourceListItemBean resourceListItemBean) {
        return Companion.newInstance(resourceListItemBean);
    }

    @NotNull
    public final FragmentComboGiftRulesBinding getViewBinding() {
        FragmentComboGiftRulesBinding fragmentComboGiftRulesBinding = this.viewBinding;
        if (fragmentComboGiftRulesBinding != null) {
            return fragmentComboGiftRulesBinding;
        }
        Intrinsics.throwUninitializedPropertyAccessException("viewBinding");
        return null;
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
        ImageView imageView = getViewBinding().titleBar.back;
        if (imageView != null) {
            imageView.setOnClickListener(new View.OnClickListener() { // from class: com.guochao.faceshow.aaspring.modulars.gift.fragment.a
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    ComboLuckyGiftRulesFragment.m393initView$lambda0(ComboLuckyGiftRulesFragment.this, view);
                }
            });
        }
        getViewModel().bind(this, new Observer() { // from class: com.guochao.faceshow.aaspring.modulars.gift.fragment.b
            @Override // androidx.lifecycle.Observer
            public final void onChanged(Object obj) {
                ComboLuckyGiftRulesFragment.m394initView$lambda1(ComboLuckyGiftRulesFragment.this, (GiftLuckDetailBean) obj);
            }
        });
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

    @Override // androidx.fragment.app.DialogFragment, androidx.fragment.app.Fragment
    public void onStart() {
        super.onStart();
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

    public final void setViewBinding(@NotNull FragmentComboGiftRulesBinding fragmentComboGiftRulesBinding) {
        Intrinsics.checkNotNullParameter(fragmentComboGiftRulesBinding, "<set-?>");
        this.viewBinding = fragmentComboGiftRulesBinding;
    }
}
