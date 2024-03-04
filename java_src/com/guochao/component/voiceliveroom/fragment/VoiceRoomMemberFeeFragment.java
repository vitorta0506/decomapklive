package com.guochao.component.voiceliveroom.fragment;

import android.os.Bundle;
import android.text.Editable;
import android.text.TextWatcher;
import android.view.View;
import android.widget.EditText;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.appcompat.app.AppCompatDialog;
import androidx.fragment.app.FragmentActivity;
import androidx.lifecycle.ViewModelProvider;
import com.guochao.component.liveroom.R$string;
import com.guochao.component.liveroom.databinding.FragmentVoliceRoomMemberFeeBinding;
import com.guochao.component.voiceliveroom.model.VoiceRoomMemberFeeConf;
import com.guochao.component.voiceliveroom.viewmodel.VoiceRoomSeatControllerViewModel;
import com.guochao.faceshow.aaspring.base.mvvm.annotations.GCViewBinding;
import com.guochao.faceshow.aaspring.base.mvvm.callback.GCValueCallbackKt;
import com.guochao.faceshow.aaspring.base.mvvm.viewmodel.BaseViewModel;
import com.guochao.faceshow.aaspring.base.utils.ViewExtendsKt;
import com.guochao.faceshow.aaspring.utils.ToastUtils;
import java.util.Arrays;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.LazyThreadSafetyMode;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.JvmStatic;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.StringCompanionObject;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(d1 = {"\u0000<\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\u0018\u0000 \u001b2\u00020\u0001:\u0001\u001bB\u0005¢\u0006\u0002\u0010\u0002J\b\u0010\u0012\u001a\u00020\u0013H\u0016J\u001a\u0010\u0014\u001a\u00020\u00152\u0006\u0010\u0016\u001a\u00020\u00172\b\u0010\u0018\u001a\u0004\u0018\u00010\u0019H\u0014J\u0012\u0010\u001a\u001a\u00020\u00152\b\u0010\u0018\u001a\u0004\u0018\u00010\u0019H\u0016R\u0010\u0010\u0003\u001a\u0004\u0018\u00010\u0004X\u0082\u000e¢\u0006\u0002\n\u0000R$\u0010\u0005\u001a\u00020\u00068\u0006@\u0006X\u0087.¢\u0006\u0014\n\u0000\u0012\u0004\b\u0007\u0010\u0002\u001a\u0004\b\b\u0010\t\"\u0004\b\n\u0010\u000bR\u001b\u0010\f\u001a\u00020\r8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u0010\u0010\u0011\u001a\u0004\b\u000e\u0010\u000f¨\u0006\u001c"}, d2 = {"Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomMemberFeeFragment;", "Lcom/guochao/component/voiceliveroom/fragment/FullWidthCenterFragment;", "()V", "loadConf", "Lcom/guochao/component/voiceliveroom/model/VoiceRoomMemberFeeConf;", "viewBinding", "Lcom/guochao/component/liveroom/databinding/FragmentVoliceRoomMemberFeeBinding;", "getViewBinding$annotations", "getViewBinding", "()Lcom/guochao/component/liveroom/databinding/FragmentVoliceRoomMemberFeeBinding;", "setViewBinding", "(Lcom/guochao/component/liveroom/databinding/FragmentVoliceRoomMemberFeeBinding;)V", "viewModel", "Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomSeatControllerViewModel;", "getViewModel", "()Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomSeatControllerViewModel;", "viewModel$delegate", "Lkotlin/Lazy;", "createCenterDialog", "Landroidx/appcompat/app/AppCompatDialog;", "initView", "", "root", "Landroid/view/View;", "savedInstanceState", "Landroid/os/Bundle;", "onCreate", "Companion", "component_liveroom_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
/* loaded from: classes3.dex */
public final class VoiceRoomMemberFeeFragment extends FullWidthCenterFragment {
    @NotNull
    public static final Companion Companion = new Companion(null);
    @Nullable
    private VoiceRoomMemberFeeConf loadConf;
    public FragmentVoliceRoomMemberFeeBinding viewBinding;
    @NotNull
    private final Lazy viewModel$delegate;

    @Metadata(d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0017\u0010\u0003\u001a\u00020\u00042\b\u0010\u0005\u001a\u0004\u0018\u00010\u0006H\u0007¢\u0006\u0002\u0010\u0007¨\u0006\b"}, d2 = {"Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomMemberFeeFragment$Companion;", "", "()V", "newInstance", "Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomMemberFeeFragment;", "fee", "", "(Ljava/lang/Integer;)Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomMemberFeeFragment;", "component_liveroom_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
    /* loaded from: classes3.dex */
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @JvmStatic
        @NotNull
        public final VoiceRoomMemberFeeFragment newInstance(@Nullable Integer num) {
            VoiceRoomMemberFeeFragment voiceRoomMemberFeeFragment = new VoiceRoomMemberFeeFragment();
            Bundle bundle = new Bundle();
            if (num != null) {
                bundle.putInt("fee", num.intValue());
            }
            voiceRoomMemberFeeFragment.setArguments(bundle);
            return voiceRoomMemberFeeFragment;
        }
    }

    public VoiceRoomMemberFeeFragment() {
        Lazy lazy;
        lazy = LazyKt__LazyJVMKt.lazy(LazyThreadSafetyMode.NONE, (Function0) new Function0<VoiceRoomSeatControllerViewModel>() { // from class: com.guochao.component.voiceliveroom.fragment.VoiceRoomMemberFeeFragment$viewModel$2
            /* JADX INFO: Access modifiers changed from: package-private */
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final VoiceRoomSeatControllerViewModel invoke() {
                FragmentActivity requireActivity = VoiceRoomMemberFeeFragment.this.requireActivity();
                Intrinsics.checkNotNullExpressionValue(requireActivity, "requireActivity()");
                return (VoiceRoomSeatControllerViewModel) ((BaseViewModel) new ViewModelProvider(requireActivity).get(VoiceRoomSeatControllerViewModel.class));
            }
        });
        this.viewModel$delegate = lazy;
    }

    @GCViewBinding
    public static /* synthetic */ void getViewBinding$annotations() {
    }

    private final VoiceRoomSeatControllerViewModel getViewModel() {
        return (VoiceRoomSeatControllerViewModel) this.viewModel$delegate.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: initView$lambda-0  reason: not valid java name */
    public static final void m279initView$lambda0(VoiceRoomMemberFeeFragment this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.dismissAllowingStateLoss();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: initView$lambda-2  reason: not valid java name */
    public static final void m280initView$lambda2(final VoiceRoomMemberFeeFragment this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        if (this$0.loadConf == null) {
            return;
        }
        try {
            int parseInt = Integer.parseInt(this$0.getViewBinding().feeET.getText().toString());
            VoiceRoomMemberFeeConf voiceRoomMemberFeeConf = this$0.loadConf;
            if (parseInt >= (voiceRoomMemberFeeConf != null ? voiceRoomMemberFeeConf.getJoinRoomMin() : 0)) {
                int parseInt2 = Integer.parseInt(this$0.getViewBinding().feeET.getText().toString());
                VoiceRoomMemberFeeConf voiceRoomMemberFeeConf2 = this$0.loadConf;
                if (parseInt2 <= (voiceRoomMemberFeeConf2 != null ? voiceRoomMemberFeeConf2.getJoinRoomMax() : 0)) {
                    this$0.getViewModel().changeRoomFee(Integer.parseInt(this$0.getViewBinding().feeET.getText().toString()), GCValueCallbackKt.callbackOnLifecycle(this$0, new Function1<Boolean, Unit>() { // from class: com.guochao.component.voiceliveroom.fragment.VoiceRoomMemberFeeFragment$initView$3$1
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
                                VoiceRoomMemberFeeFragment.this.dismissAllowingStateLoss();
                                ToastUtils.showToast$default(VoiceRoomMemberFeeFragment.this.getActivity(), R$string.set_success, 0, 4, null);
                            }
                        }
                    }, new Function2<Integer, String, Unit>() { // from class: com.guochao.component.voiceliveroom.fragment.VoiceRoomMemberFeeFragment$initView$3$2
                        /* JADX INFO: Access modifiers changed from: package-private */
                        {
                            super(2);
                        }

                        @Override // kotlin.jvm.functions.Function2
                        /* renamed from: invoke */
                        public /* bridge */ /* synthetic */ Unit mo1invoke(Integer num, String str) {
                            invoke(num.intValue(), str);
                            return Unit.INSTANCE;
                        }

                        public final void invoke(int i9, @Nullable String str) {
                            if (i9 == 50001) {
                                ToastUtils.showToast$default(VoiceRoomMemberFeeFragment.this.getActivity(), R$string.permission_rejection, 0, 4, null);
                            }
                        }
                    }));
                    return;
                }
            }
            FragmentActivity activity = this$0.getActivity();
            StringCompanionObject stringCompanionObject = StringCompanionObject.INSTANCE;
            String string = this$0.getString(R$string.voice_room_fee_reasonable);
            Intrinsics.checkNotNullExpressionValue(string, "getString(R.string.voice_room_fee_reasonable)");
            Object[] objArr = new Object[1];
            StringBuilder sb2 = new StringBuilder();
            VoiceRoomMemberFeeConf voiceRoomMemberFeeConf3 = this$0.loadConf;
            sb2.append(voiceRoomMemberFeeConf3 != null ? voiceRoomMemberFeeConf3.getJoinRoomMin() : 0);
            sb2.append('-');
            VoiceRoomMemberFeeConf voiceRoomMemberFeeConf4 = this$0.loadConf;
            sb2.append(voiceRoomMemberFeeConf4 != null ? voiceRoomMemberFeeConf4.getJoinRoomMax() : 0);
            objArr[0] = sb2.toString();
            String format = String.format(string, Arrays.copyOf(objArr, 1));
            Intrinsics.checkNotNullExpressionValue(format, "format(format, *args)");
            ToastUtils.showToast$default(activity, format, 0, 0, 12, null);
        } catch (Exception e10) {
            FragmentActivity activity2 = this$0.getActivity();
            StringCompanionObject stringCompanionObject2 = StringCompanionObject.INSTANCE;
            String string2 = this$0.getString(R$string.voice_room_fee_reasonable);
            Intrinsics.checkNotNullExpressionValue(string2, "getString(R.string.voice_room_fee_reasonable)");
            Object[] objArr2 = new Object[1];
            StringBuilder sb3 = new StringBuilder();
            VoiceRoomMemberFeeConf voiceRoomMemberFeeConf5 = this$0.loadConf;
            sb3.append(voiceRoomMemberFeeConf5 != null ? voiceRoomMemberFeeConf5.getJoinRoomMin() : 0);
            sb3.append('-');
            VoiceRoomMemberFeeConf voiceRoomMemberFeeConf6 = this$0.loadConf;
            sb3.append(voiceRoomMemberFeeConf6 != null ? voiceRoomMemberFeeConf6.getJoinRoomMax() : 0);
            objArr2[0] = sb3.toString();
            String format2 = String.format(string2, Arrays.copyOf(objArr2, 1));
            Intrinsics.checkNotNullExpressionValue(format2, "format(format, *args)");
            ToastUtils.showToast$default(activity2, format2, 0, 0, 12, null);
            e10.printStackTrace();
        }
    }

    @JvmStatic
    @NotNull
    public static final VoiceRoomMemberFeeFragment newInstance(@Nullable Integer num) {
        return Companion.newInstance(num);
    }

    @Override // com.guochao.faceshow.aaspring.base.mvvm.fragment.GCCoreFragment
    @NotNull
    public AppCompatDialog createCenterDialog() {
        return createCenterDialog();
    }

    @NotNull
    public final FragmentVoliceRoomMemberFeeBinding getViewBinding() {
        FragmentVoliceRoomMemberFeeBinding fragmentVoliceRoomMemberFeeBinding = this.viewBinding;
        if (fragmentVoliceRoomMemberFeeBinding != null) {
            return fragmentVoliceRoomMemberFeeBinding;
        }
        Intrinsics.throwUninitializedPropertyAccessException("viewBinding");
        return null;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.guochao.component.voiceliveroom.fragment.FullWidthCenterFragment, com.guochao.component.voiceliveroom.fragment.FullWidthBaseFragment, com.guochao.faceshow.aaspring.base.mvvm.fragment.GCCoreFragment
    public void initView(@NotNull View root, @Nullable Bundle bundle) {
        Intrinsics.checkNotNullParameter(root, "root");
        super.initView(root, bundle);
        ImageView imageView = getViewBinding().closeIV;
        Intrinsics.checkNotNullExpressionValue(imageView, "viewBinding.closeIV");
        ViewExtendsKt.onClick$default(imageView, 0L, new View.OnClickListener() { // from class: com.guochao.component.voiceliveroom.fragment.r
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                VoiceRoomMemberFeeFragment.m279initView$lambda0(VoiceRoomMemberFeeFragment.this, view);
            }
        }, 1, null);
        EditText editText = getViewBinding().feeET;
        Intrinsics.checkNotNullExpressionValue(editText, "viewBinding.feeET");
        editText.addTextChangedListener(new TextWatcher() { // from class: com.guochao.component.voiceliveroom.fragment.VoiceRoomMemberFeeFragment$initView$$inlined$addTextChangedListener$default$1
            @Override // android.text.TextWatcher
            public void afterTextChanged(@Nullable Editable editable) {
                VoiceRoomMemberFeeFragment.this.getViewBinding().okTV.setEnabled(String.valueOf(editable).length() > 0);
            }

            @Override // android.text.TextWatcher
            public void beforeTextChanged(@Nullable CharSequence charSequence, int i9, int i10, int i11) {
            }

            @Override // android.text.TextWatcher
            public void onTextChanged(@Nullable CharSequence charSequence, int i9, int i10, int i11) {
            }
        });
        EditText editText2 = getViewBinding().feeET;
        Bundle arguments = getArguments();
        editText2.setText(String.valueOf(arguments != null ? Integer.valueOf(arguments.getInt("fee")) : null));
        TextView textView = getViewBinding().okTV;
        Intrinsics.checkNotNullExpressionValue(textView, "viewBinding.okTV");
        ViewExtendsKt.onClick$default(textView, 0L, new View.OnClickListener() { // from class: com.guochao.component.voiceliveroom.fragment.q
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                VoiceRoomMemberFeeFragment.m280initView$lambda2(VoiceRoomMemberFeeFragment.this, view);
            }
        }, 1, null);
    }

    @Override // com.guochao.component.voiceliveroom.fragment.FullWidthCenterFragment, com.guochao.component.voiceliveroom.fragment.FullWidthBaseFragment, com.guochao.faceshow.aaspring.base.mvvm.fragment.GCCoreFragment, androidx.fragment.app.DialogFragment, androidx.fragment.app.Fragment
    public void onCreate(@Nullable Bundle bundle) {
        super.onCreate(bundle);
        setShowsDialog(true);
        getViewModel().getRoomFeeConf(GCValueCallbackKt.callbackOnLifecycle(this, new Function1<VoiceRoomMemberFeeConf, Unit>() { // from class: com.guochao.component.voiceliveroom.fragment.VoiceRoomMemberFeeFragment$onCreate$1
            /* JADX INFO: Access modifiers changed from: package-private */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(VoiceRoomMemberFeeConf voiceRoomMemberFeeConf) {
                invoke2(voiceRoomMemberFeeConf);
                return Unit.INSTANCE;
            }

            /* renamed from: invoke  reason: avoid collision after fix types in other method */
            public final void invoke2(@NotNull VoiceRoomMemberFeeConf it) {
                Intrinsics.checkNotNullParameter(it, "it");
                TextView textView = VoiceRoomMemberFeeFragment.this.getViewBinding().feeConfTV;
                StringBuilder sb2 = new StringBuilder();
                sb2.append(it.getJoinRoomMin());
                sb2.append('-');
                sb2.append(it.getJoinRoomMax());
                textView.setText(sb2.toString());
                VoiceRoomMemberFeeFragment.this.loadConf = it;
                VoiceRoomMemberFeeFragment.this.getViewBinding().okTV.setEnabled(true);
            }
        }, new Function2<Integer, String, Unit>() { // from class: com.guochao.component.voiceliveroom.fragment.VoiceRoomMemberFeeFragment$onCreate$2
            @Override // kotlin.jvm.functions.Function2
            /* renamed from: invoke */
            public /* bridge */ /* synthetic */ Unit mo1invoke(Integer num, String str) {
                invoke(num.intValue(), str);
                return Unit.INSTANCE;
            }

            public final void invoke(int i9, @Nullable String str) {
            }
        }));
    }

    public final void setViewBinding(@NotNull FragmentVoliceRoomMemberFeeBinding fragmentVoliceRoomMemberFeeBinding) {
        Intrinsics.checkNotNullParameter(fragmentVoliceRoomMemberFeeBinding, "<set-?>");
        this.viewBinding = fragmentVoliceRoomMemberFeeBinding;
    }
}
