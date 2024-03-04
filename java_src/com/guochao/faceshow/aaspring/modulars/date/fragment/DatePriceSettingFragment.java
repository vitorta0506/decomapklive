package com.guochao.faceshow.aaspring.modulars.date.fragment;

import android.app.Dialog;
import android.os.Bundle;
import android.view.View;
import android.view.Window;
import android.widget.TextView;
import androidx.fragment.app.FragmentActivity;
import androidx.lifecycle.Observer;
import androidx.lifecycle.ViewModelProvider;
import com.guochao.faceshow.R;
import com.guochao.faceshow.aaspring.base.adapter.BaseViewHolder;
import com.guochao.faceshow.aaspring.base.mvvm.annotations.GCViewBinding;
import com.guochao.faceshow.aaspring.base.mvvm.fragment.GCCoreFragment;
import com.guochao.faceshow.aaspring.base.mvvm.viewmodel.BaseViewModel;
import com.guochao.faceshow.aaspring.modulars.date.model.DatePriceSettingModel;
import com.guochao.faceshow.aaspring.modulars.date.viewmodel.DatePriceSettingViewModel;
import com.guochao.faceshow.databinding.FragmentDatePriceSettingBinding;
import com.guochao.faceshow.databinding.ListItemDatePriceBinding;
import com.guochao.faceshow.utils.DensityUtil;
import java.util.List;
import kotlin.Deprecated;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.LazyThreadSafetyMode;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.jvm.JvmStatic;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(d1 = {"\u0000F\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\u0018\u0000 \u001f2\u00020\u0001:\u0002\u001f B\u0005¢\u0006\u0002\u0010\u0002J\u001a\u0010\u0015\u001a\u00020\u00162\u0006\u0010\u0017\u001a\u00020\u00182\b\u0010\u0019\u001a\u0004\u0018\u00010\u001aH\u0014J\u0012\u0010\u001b\u001a\u00020\u00162\b\u0010\u0019\u001a\u0004\u0018\u00010\u001aH\u0017J\u0012\u0010\u001c\u001a\u00020\u00162\b\u0010\u0019\u001a\u0004\u0018\u00010\u001aH\u0016J\u0012\u0010\u001d\u001a\u00020\u001e2\b\u0010\u0019\u001a\u0004\u0018\u00010\u001aH\u0016R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0004X\u0082\u000e¢\u0006\u0002\n\u0000R$\u0010\b\u001a\u00020\t8\u0006@\u0006X\u0087.¢\u0006\u0014\n\u0000\u0012\u0004\b\n\u0010\u0002\u001a\u0004\b\u000b\u0010\f\"\u0004\b\r\u0010\u000eR\u001b\u0010\u000f\u001a\u00020\u00108BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u0013\u0010\u0014\u001a\u0004\b\u0011\u0010\u0012¨\u0006!"}, d2 = {"Lcom/guochao/faceshow/aaspring/modulars/date/fragment/DatePriceSettingFragment;", "Lcom/guochao/faceshow/aaspring/base/mvvm/fragment/GCCoreFragment;", "()V", "currentSelectIndex", "", "saving", "", "type", "viewBinding", "Lcom/guochao/faceshow/databinding/FragmentDatePriceSettingBinding;", "getViewBinding$annotations", "getViewBinding", "()Lcom/guochao/faceshow/databinding/FragmentDatePriceSettingBinding;", "setViewBinding", "(Lcom/guochao/faceshow/databinding/FragmentDatePriceSettingBinding;)V", "viewModel", "Lcom/guochao/faceshow/aaspring/modulars/date/viewmodel/DatePriceSettingViewModel;", "getViewModel", "()Lcom/guochao/faceshow/aaspring/modulars/date/viewmodel/DatePriceSettingViewModel;", "viewModel$delegate", "Lkotlin/Lazy;", "initView", "", "root", "Landroid/view/View;", "savedInstanceState", "Landroid/os/Bundle;", "onActivityCreated", "onCreate", "onCreateDialog", "Landroid/app/Dialog;", "Companion", "DateItemHolder", "app_GooglePlayRelease"}, k = 1, mv = {1, 7, 1}, xi = 48)
/* loaded from: classes3.dex */
public final class DatePriceSettingFragment extends GCCoreFragment {
    @NotNull
    public static final Companion Companion = new Companion(null);
    private int currentSelectIndex;
    private boolean saving;
    private int type;
    public FragmentDatePriceSettingBinding viewBinding;
    @NotNull
    private final Lazy viewModel$delegate;

    @Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0010\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006H\u0007¨\u0006\u0007"}, d2 = {"Lcom/guochao/faceshow/aaspring/modulars/date/fragment/DatePriceSettingFragment$Companion;", "", "()V", "instance", "Lcom/guochao/faceshow/aaspring/modulars/date/fragment/DatePriceSettingFragment;", "type", "", "app_GooglePlayRelease"}, k = 1, mv = {1, 7, 1}, xi = 48)
    /* loaded from: classes3.dex */
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @JvmStatic
        @NotNull
        public final DatePriceSettingFragment instance(int i9) {
            DatePriceSettingFragment datePriceSettingFragment = new DatePriceSettingFragment();
            Bundle bundle = new Bundle();
            bundle.putInt("data", i9);
            datePriceSettingFragment.setArguments(bundle);
            return datePriceSettingFragment;
        }
    }

    @Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\b\u0086\u0004\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\u0010\u0010\u0005\u001a\u00020\u00062\b\u0010\u0007\u001a\u0004\u0018\u00010\bR\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\t"}, d2 = {"Lcom/guochao/faceshow/aaspring/modulars/date/fragment/DatePriceSettingFragment$DateItemHolder;", "Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;", "viewBinding", "Lcom/guochao/faceshow/databinding/ListItemDatePriceBinding;", "(Lcom/guochao/faceshow/aaspring/modulars/date/fragment/DatePriceSettingFragment;Lcom/guochao/faceshow/databinding/ListItemDatePriceBinding;)V", "bind", "", "rule", "Lcom/guochao/faceshow/aaspring/modulars/date/model/DatePriceSettingModel$DatePriceRoleModel;", "app_GooglePlayRelease"}, k = 1, mv = {1, 7, 1}, xi = 48)
    /* loaded from: classes3.dex */
    public final class DateItemHolder extends BaseViewHolder {
        final /* synthetic */ DatePriceSettingFragment this$0;
        @NotNull
        private final ListItemDatePriceBinding viewBinding;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public DateItemHolder(@NotNull DatePriceSettingFragment datePriceSettingFragment, ListItemDatePriceBinding viewBinding) {
            super(viewBinding.getRoot());
            Intrinsics.checkNotNullParameter(viewBinding, "viewBinding");
            this.this$0 = datePriceSettingFragment;
            this.viewBinding = viewBinding;
        }

        public final void bind(@Nullable DatePriceSettingModel.DatePriceRoleModel datePriceRoleModel) {
            TextView textView = this.viewBinding.price;
            StringBuilder sb2 = new StringBuilder();
            sb2.append(datePriceRoleModel != null ? datePriceRoleModel.getDiamond() : 0);
            sb2.append("/min");
            textView.setText(sb2.toString());
            this.viewBinding.icon.setVisibility(this.this$0.currentSelectIndex != getAbsoluteAdapterPosition() ? 8 : 0);
        }
    }

    public DatePriceSettingFragment() {
        Lazy lazy;
        lazy = LazyKt__LazyJVMKt.lazy(LazyThreadSafetyMode.NONE, (Function0) new Function0<DatePriceSettingViewModel>() { // from class: com.guochao.faceshow.aaspring.modulars.date.fragment.DatePriceSettingFragment$viewModel$2
            /* JADX INFO: Access modifiers changed from: package-private */
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final DatePriceSettingViewModel invoke() {
                FragmentActivity requireActivity = DatePriceSettingFragment.this.requireActivity();
                Intrinsics.checkNotNullExpressionValue(requireActivity, "requireActivity()");
                return (DatePriceSettingViewModel) ((BaseViewModel) new ViewModelProvider(requireActivity).get(DatePriceSettingViewModel.class));
            }
        });
        this.viewModel$delegate = lazy;
        this.type = 1;
        this.currentSelectIndex = -1;
    }

    @GCViewBinding
    public static /* synthetic */ void getViewBinding$annotations() {
    }

    private final DatePriceSettingViewModel getViewModel() {
        return (DatePriceSettingViewModel) this.viewModel$delegate.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: initView$lambda-3  reason: not valid java name */
    public static final void m362initView$lambda3(final DatePriceSettingFragment this$0, DatePriceSettingModel datePriceSettingModel) {
        final List<DatePriceSettingModel.DatePriceRoleModel> videoPriceRules;
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        if (datePriceSettingModel == null) {
            return;
        }
        if (this$0.type == 1) {
            videoPriceRules = datePriceSettingModel.getAudioPriceRules();
        } else {
            videoPriceRules = datePriceSettingModel.getVideoPriceRules();
        }
        if (videoPriceRules == null) {
            return;
        }
        int i9 = 0;
        for (Object obj : videoPriceRules) {
            int i10 = i9 + 1;
            if (i9 < 0) {
                CollectionsKt__CollectionsKt.throwIndexOverflow();
            }
            if (((DatePriceSettingModel.DatePriceRoleModel) obj).getChecked() == 1) {
                this$0.currentSelectIndex = i9;
            }
            i9 = i10;
        }
        this$0.getViewBinding().recyclerView.setAdapter(new DatePriceSettingFragment$initView$1$2(this$0, videoPriceRules));
        this$0.getViewBinding().save.setOnClickListener(new View.OnClickListener() { // from class: com.guochao.faceshow.aaspring.modulars.date.fragment.b
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                DatePriceSettingFragment.m363initView$lambda3$lambda2(DatePriceSettingFragment.this, videoPriceRules, view);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: initView$lambda-3$lambda-2  reason: not valid java name */
    public static final void m363initView$lambda3$lambda2(final DatePriceSettingFragment this$0, List list, View view) {
        int i9;
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(list, "$list");
        if (!this$0.saving && (i9 = this$0.currentSelectIndex) >= 0) {
            final DatePriceSettingModel.DatePriceRoleModel datePriceRoleModel = (DatePriceSettingModel.DatePriceRoleModel) list.get(i9);
            this$0.saving = true;
            this$0.getViewModel().saveCurrentPriceSetting(this$0.type, datePriceRoleModel, new Function1<Boolean, Unit>() { // from class: com.guochao.faceshow.aaspring.modulars.date.fragment.DatePriceSettingFragment$initView$1$3$1$1
                /* JADX INFO: Access modifiers changed from: package-private */
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
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
                        DatePriceSettingModel.DatePriceRoleModel.this.setChecked(1);
                        this$0.dismissAllowingStateLoss();
                    } else {
                        this$0.showToast(R.string.saved_error);
                    }
                    this$0.saving = false;
                }
            });
        }
    }

    @JvmStatic
    @NotNull
    public static final DatePriceSettingFragment instance(int i9) {
        return Companion.instance(i9);
    }

    @NotNull
    public final FragmentDatePriceSettingBinding getViewBinding() {
        FragmentDatePriceSettingBinding fragmentDatePriceSettingBinding = this.viewBinding;
        if (fragmentDatePriceSettingBinding != null) {
            return fragmentDatePriceSettingBinding;
        }
        Intrinsics.throwUninitializedPropertyAccessException("viewBinding");
        return null;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.guochao.faceshow.aaspring.base.mvvm.fragment.GCCoreFragment
    public void initView(@NotNull View root, @Nullable Bundle bundle) {
        Intrinsics.checkNotNullParameter(root, "root");
        super.initView(root, bundle);
        Bundle arguments = getArguments();
        this.type = arguments != null ? arguments.getInt("data", 1) : 1;
        getViewBinding().title.setText(getString(this.type == 2 ? R.string.trtc_video_call : R.string.trtc_voice_call));
        getViewModel().bind(this, new Observer() { // from class: com.guochao.faceshow.aaspring.modulars.date.fragment.c
            @Override // androidx.lifecycle.Observer
            public final void onChanged(Object obj) {
                DatePriceSettingFragment.m362initView$lambda3(DatePriceSettingFragment.this, (DatePriceSettingModel) obj);
            }
        });
    }

    @Override // androidx.fragment.app.DialogFragment, androidx.fragment.app.Fragment
    @Deprecated(message = "Deprecated in Java")
    public void onActivityCreated(@Nullable Bundle bundle) {
        Window window;
        super.onActivityCreated(bundle);
        Dialog dialog = getDialog();
        if (dialog == null || (window = dialog.getWindow()) == null) {
            return;
        }
        window.setLayout(-1, -2);
        window.setGravity(80);
        int dp2px = DensityUtil.dp2px(16.0f);
        window.getDecorView().setPaddingRelative(dp2px, 0, dp2px, 0);
    }

    @Override // com.guochao.faceshow.aaspring.base.mvvm.fragment.GCCoreFragment, androidx.fragment.app.DialogFragment, androidx.fragment.app.Fragment
    public void onCreate(@Nullable Bundle bundle) {
        super.onCreate(bundle);
        setShowsDialog(true);
    }

    @Override // androidx.fragment.app.DialogFragment
    @NotNull
    public Dialog onCreateDialog(@Nullable Bundle bundle) {
        Dialog createBottomDialog = createBottomDialog();
        Window window = createBottomDialog.getWindow();
        if (window != null) {
            window.setDimAmount(0.6f);
        }
        return createBottomDialog;
    }

    public final void setViewBinding(@NotNull FragmentDatePriceSettingBinding fragmentDatePriceSettingBinding) {
        Intrinsics.checkNotNullParameter(fragmentDatePriceSettingBinding, "<set-?>");
        this.viewBinding = fragmentDatePriceSettingBinding;
    }
}
