package com.guochao.component.mvp.fragment;

import android.graphics.Typeface;
import android.os.Bundle;
import android.text.Editable;
import android.text.TextWatcher;
import android.view.View;
import android.widget.EditText;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.appcompat.app.AppCompatDialog;
import androidx.lifecycle.Observer;
import androidx.lifecycle.ViewModelProvider;
import androidx.lifecycle.ViewModelStoreOwner;
import com.guochao.component.mvp.R$drawable;
import com.guochao.component.mvp.databinding.FragmentAnchorFreeTimeBinding;
import com.guochao.component.mvp.model.GetInterestsRequestModel;
import com.guochao.component.mvp.model.UserModel;
import com.guochao.component.mvp.viewmodel.MVPUserInfoViewModel;
import com.guochao.faceshow.aaspring.base.mvvm.annotations.GCViewBinding;
import com.guochao.faceshow.aaspring.base.mvvm.viewmodel.BaseViewModel;
import com.guochao.faceshow.aaspring.base.utils.ViewExtendsKt;
import java.util.Objects;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.LazyThreadSafetyMode;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.JvmStatic;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt__StringsKt;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(d1 = {"\u0000B\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0010\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\u0018\u0000  2\u00020\u0001:\u0001 B\u0005¢\u0006\u0002\u0010\u0002J\b\u0010\u0018\u001a\u00020\u0019H\u0016J\u001a\u0010\u001a\u001a\u00020\u00062\u0006\u0010\u001b\u001a\u00020\u001c2\b\u0010\u001d\u001a\u0004\u0018\u00010\u001eH\u0014J\u0012\u0010\u001f\u001a\u00020\u00062\b\u0010\u001d\u001a\u0004\u0018\u00010\u001eH\u0016R(\u0010\u0003\u001a\u0010\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0007\u0010\b\"\u0004\b\t\u0010\nR$\u0010\u000b\u001a\u00020\f8\u0006@\u0006X\u0087.¢\u0006\u0014\n\u0000\u0012\u0004\b\r\u0010\u0002\u001a\u0004\b\u000e\u0010\u000f\"\u0004\b\u0010\u0010\u0011R\u001b\u0010\u0012\u001a\u00020\u00138BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u0016\u0010\u0017\u001a\u0004\b\u0014\u0010\u0015¨\u0006!"}, d2 = {"Lcom/guochao/component/mvp/fragment/AnchorFreeTimeFragment;", "Lcom/guochao/component/mvp/fragment/FullWidthCenterFragment;", "()V", "callBack", "Lkotlin/Function1;", "", "", "getCallBack", "()Lkotlin/jvm/functions/Function1;", "setCallBack", "(Lkotlin/jvm/functions/Function1;)V", "viewBinding", "Lcom/guochao/component/mvp/databinding/FragmentAnchorFreeTimeBinding;", "getViewBinding$annotations", "getViewBinding", "()Lcom/guochao/component/mvp/databinding/FragmentAnchorFreeTimeBinding;", "setViewBinding", "(Lcom/guochao/component/mvp/databinding/FragmentAnchorFreeTimeBinding;)V", "viewModel", "Lcom/guochao/component/mvp/viewmodel/MVPUserInfoViewModel;", "getViewModel", "()Lcom/guochao/component/mvp/viewmodel/MVPUserInfoViewModel;", "viewModel$delegate", "Lkotlin/Lazy;", "createCenterDialog", "Landroidx/appcompat/app/AppCompatDialog;", "initView", "root", "Landroid/view/View;", "savedInstanceState", "Landroid/os/Bundle;", "onCreate", "Companion", "component_mvp_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
/* loaded from: classes3.dex */
public final class AnchorFreeTimeFragment extends FullWidthCenterFragment {
    @NotNull
    public static final Companion Companion = new Companion(null);
    @Nullable
    private Function1<? super String, Unit> callBack;
    public FragmentAnchorFreeTimeBinding viewBinding;
    @NotNull
    private final Lazy viewModel$delegate;

    @Metadata(d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0019\u0010\u0003\u001a\u00020\u00042\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0006H\u0007¢\u0006\u0002\u0010\u0007¨\u0006\b"}, d2 = {"Lcom/guochao/component/mvp/fragment/AnchorFreeTimeFragment$Companion;", "", "()V", "newInstance", "Lcom/guochao/component/mvp/fragment/AnchorFreeTimeFragment;", "mvpLevel", "", "(Ljava/lang/Integer;)Lcom/guochao/component/mvp/fragment/AnchorFreeTimeFragment;", "component_mvp_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
    /* loaded from: classes3.dex */
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public static /* synthetic */ AnchorFreeTimeFragment newInstance$default(Companion companion, Integer num, int i9, Object obj) {
            if ((i9 & 1) != 0) {
                num = 0;
            }
            return companion.newInstance(num);
        }

        @JvmStatic
        @NotNull
        public final AnchorFreeTimeFragment newInstance(@Nullable Integer num) {
            AnchorFreeTimeFragment anchorFreeTimeFragment = new AnchorFreeTimeFragment();
            Bundle bundle = new Bundle();
            if (num != null) {
                bundle.putInt("mvpLevel", num.intValue());
            }
            anchorFreeTimeFragment.setArguments(bundle);
            return anchorFreeTimeFragment;
        }
    }

    public AnchorFreeTimeFragment() {
        Lazy lazy;
        lazy = LazyKt__LazyJVMKt.lazy(LazyThreadSafetyMode.NONE, (Function0) new Function0<MVPUserInfoViewModel>() { // from class: com.guochao.component.mvp.fragment.AnchorFreeTimeFragment$special$$inlined$lazyViewModel$default$1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final MVPUserInfoViewModel invoke() {
                BaseViewModel baseViewModel;
                ViewModelStoreOwner viewModelStoreOwner = ViewModelStoreOwner.this;
                String str = r2;
                ViewModelProvider.Factory factory = r3;
                ViewModelProvider viewModelProvider = factory == null ? new ViewModelProvider(viewModelStoreOwner) : new ViewModelProvider(viewModelStoreOwner, factory);
                if (str != null) {
                    baseViewModel = (BaseViewModel) viewModelProvider.get(str, MVPUserInfoViewModel.class);
                } else {
                    baseViewModel = (BaseViewModel) viewModelProvider.get(MVPUserInfoViewModel.class);
                }
                Objects.requireNonNull(baseViewModel, "null cannot be cast to non-null type com.guochao.component.mvp.viewmodel.MVPUserInfoViewModel");
                return (MVPUserInfoViewModel) baseViewModel;
            }
        });
        this.viewModel$delegate = lazy;
    }

    @GCViewBinding
    public static /* synthetic */ void getViewBinding$annotations() {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final MVPUserInfoViewModel getViewModel() {
        return (MVPUserInfoViewModel) this.viewModel$delegate.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: initView$lambda-0  reason: not valid java name */
    public static final void m235initView$lambda0(AnchorFreeTimeFragment this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.dismissAllowingStateLoss();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: initView$lambda-2  reason: not valid java name */
    public static final void m236initView$lambda2(AnchorFreeTimeFragment this$0, View view) {
        CharSequence trim;
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Bundle arguments = this$0.getArguments();
        int i9 = arguments != null ? arguments.getInt("mvpLevel") : 1;
        trim = StringsKt__StringsKt.trim((CharSequence) this$0.getViewBinding().idET.getText().toString());
        this$0.getViewModel().setFreeTime(new GetInterestsRequestModel(6, i9, trim.toString(), null, 8, null), new AnchorFreeTimeFragment$initView$3$1(this$0, null));
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: initView$lambda-3  reason: not valid java name */
    public static final void m237initView$lambda3(AnchorFreeTimeFragment this$0, UserModel userModel) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        if ((userModel != null ? userModel.getUserId() : null) != null) {
            this$0.getViewBinding().nameTV.setVisibility(0);
            this$0.getViewBinding().nameTV.setText(userModel != null ? userModel.getNickName() : null);
            com.bumptech.glide.c.v(this$0.getViewBinding().avatarIV).r(userModel != null ? userModel.getUrl() : null).a(com.bumptech.glide.request.h.y0()).b0(R$drawable.ic_mvp_setting_def_header).Q0(this$0.getViewBinding().avatarIV);
            return;
        }
        com.bumptech.glide.c.v(this$0.getViewBinding().avatarIV).f(this$0.getViewBinding().avatarIV);
        this$0.getViewBinding().nameTV.setVisibility(8);
        this$0.getViewBinding().nameTV.setText("");
        this$0.getViewBinding().avatarIV.setImageResource(R$drawable.ic_mvp_setting_def_header);
    }

    @JvmStatic
    @NotNull
    public static final AnchorFreeTimeFragment newInstance(@Nullable Integer num) {
        return Companion.newInstance(num);
    }

    @Override // com.guochao.faceshow.aaspring.base.mvvm.fragment.GCCoreFragment
    @NotNull
    public AppCompatDialog createCenterDialog() {
        return createCenterDialog();
    }

    @Nullable
    public final Function1<String, Unit> getCallBack() {
        return this.callBack;
    }

    @NotNull
    public final FragmentAnchorFreeTimeBinding getViewBinding() {
        FragmentAnchorFreeTimeBinding fragmentAnchorFreeTimeBinding = this.viewBinding;
        if (fragmentAnchorFreeTimeBinding != null) {
            return fragmentAnchorFreeTimeBinding;
        }
        Intrinsics.throwUninitializedPropertyAccessException("viewBinding");
        return null;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.guochao.component.mvp.fragment.FullWidthCenterFragment, com.guochao.component.mvp.fragment.FullWidthBaseFragment, com.guochao.faceshow.aaspring.base.mvvm.fragment.GCCoreFragment
    public void initView(@NotNull View root, @Nullable Bundle bundle) {
        Intrinsics.checkNotNullParameter(root, "root");
        super.initView(root, bundle);
        ImageView imageView = getViewBinding().closeIV;
        Intrinsics.checkNotNullExpressionValue(imageView, "viewBinding.closeIV");
        ViewExtendsKt.onClick$default(imageView, 0L, new View.OnClickListener() { // from class: com.guochao.component.mvp.fragment.a
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                AnchorFreeTimeFragment.m235initView$lambda0(AnchorFreeTimeFragment.this, view);
            }
        }, 1, null);
        EditText editText = getViewBinding().idET;
        Intrinsics.checkNotNullExpressionValue(editText, "viewBinding.idET");
        editText.addTextChangedListener(new TextWatcher() { // from class: com.guochao.component.mvp.fragment.AnchorFreeTimeFragment$initView$$inlined$addTextChangedListener$default$1
            @Override // android.text.TextWatcher
            public void afterTextChanged(@Nullable Editable editable) {
                MVPUserInfoViewModel viewModel;
                AnchorFreeTimeFragment.this.getViewBinding().okTV.setEnabled(String.valueOf(editable).length() > 0);
                if (String.valueOf(editable).length() > 0) {
                    AnchorFreeTimeFragment.this.getViewBinding().idET.setTypeface(Typeface.DEFAULT_BOLD);
                } else {
                    AnchorFreeTimeFragment.this.getViewBinding().idET.setTypeface(Typeface.DEFAULT);
                }
                viewModel = AnchorFreeTimeFragment.this.getViewModel();
                viewModel.findUserById(String.valueOf(editable));
            }

            @Override // android.text.TextWatcher
            public void beforeTextChanged(@Nullable CharSequence charSequence, int i9, int i10, int i11) {
            }

            @Override // android.text.TextWatcher
            public void onTextChanged(@Nullable CharSequence charSequence, int i9, int i10, int i11) {
            }
        });
        TextView textView = getViewBinding().okTV;
        Intrinsics.checkNotNullExpressionValue(textView, "viewBinding.okTV");
        ViewExtendsKt.onClick$default(textView, 0L, new View.OnClickListener() { // from class: com.guochao.component.mvp.fragment.b
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                AnchorFreeTimeFragment.m236initView$lambda2(AnchorFreeTimeFragment.this, view);
            }
        }, 1, null);
        getViewModel().getUserModel().observe(getViewLifecycleOwner(), new Observer() { // from class: com.guochao.component.mvp.fragment.c
            @Override // androidx.lifecycle.Observer
            public final void onChanged(Object obj) {
                AnchorFreeTimeFragment.m237initView$lambda3(AnchorFreeTimeFragment.this, (UserModel) obj);
            }
        });
    }

    @Override // com.guochao.component.mvp.fragment.FullWidthCenterFragment, com.guochao.component.mvp.fragment.FullWidthBaseFragment, com.guochao.faceshow.aaspring.base.mvvm.fragment.GCCoreFragment, androidx.fragment.app.DialogFragment, androidx.fragment.app.Fragment
    public void onCreate(@Nullable Bundle bundle) {
        super.onCreate(bundle);
        setShowsDialog(true);
    }

    public final void setCallBack(@Nullable Function1<? super String, Unit> function1) {
        this.callBack = function1;
    }

    public final void setViewBinding(@NotNull FragmentAnchorFreeTimeBinding fragmentAnchorFreeTimeBinding) {
        Intrinsics.checkNotNullParameter(fragmentAnchorFreeTimeBinding, "<set-?>");
        this.viewBinding = fragmentAnchorFreeTimeBinding;
    }
}
