package com.guochao.component.mvp.fragment;

import android.graphics.Color;
import android.graphics.Typeface;
import android.os.Bundle;
import android.text.Editable;
import android.text.SpannableStringBuilder;
import android.text.TextWatcher;
import android.text.style.ForegroundColorSpan;
import android.view.View;
import android.widget.EditText;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.appcompat.app.AppCompatDialog;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentViewModelLazyKt;
import androidx.lifecycle.Observer;
import androidx.lifecycle.ViewModelStore;
import androidx.lifecycle.ViewModelStoreOwner;
import com.github.gzuliyujiang.wheelpicker.entity.DateEntity;
import com.guochao.component.mvp.R$string;
import com.guochao.component.mvp.databinding.FragmentAnchorSetTopBinding;
import com.guochao.component.mvp.model.GetInterestsRequestModel;
import com.guochao.component.mvp.model.UserModel;
import com.guochao.component.mvp.viewmodel.MVPUserInfoViewModel;
import com.guochao.faceshow.aaspring.base.mvvm.annotations.GCViewBinding;
import com.guochao.faceshow.aaspring.base.utils.ViewExtendsKt;
import com.guochao.faceshow.aaspring.modulars.push.ThirdPushHelper;
import com.guochao.faceshow.utils.SoftKeyBoardUtils;
import com.huawei.hms.framework.common.hianalytics.CrashHianalyticsData;
import java.util.Calendar;
import java.util.TimeZone;
import kotlin.Lazy;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.JvmStatic;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Ref;
import kotlin.jvm.internal.Reflection;
import kotlin.text.StringsKt__StringsKt;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(d1 = {"\u0000R\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0010\u0002\n\u0002\b\u0005\n\u0002\u0010\u000b\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u0000 -2\u00020\u0001:\u0001-B\u0005¢\u0006\u0002\u0010\u0002J\u0006\u0010\u001f\u001a\u00020\u0006J\b\u0010 \u001a\u00020!H\u0016J\u000e\u0010\"\u001a\u00020\u00052\u0006\u0010#\u001a\u00020$J\u000e\u0010%\u001a\u00020\u00052\u0006\u0010#\u001a\u00020$J\u001a\u0010&\u001a\u00020\u00062\u0006\u0010'\u001a\u00020(2\b\u0010)\u001a\u0004\u0018\u00010*H\u0014J\u0012\u0010+\u001a\u00020\u00062\b\u0010)\u001a\u0004\u0018\u00010*H\u0016J\u0006\u0010,\u001a\u00020\u0006R(\u0010\u0003\u001a\u0010\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0007\u0010\b\"\u0004\b\t\u0010\nR\u000e\u0010\u000b\u001a\u00020\fX\u0082\u000e¢\u0006\u0002\n\u0000R\u001c\u0010\r\u001a\u0004\u0018\u00010\u0005X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u000e\u0010\u000f\"\u0004\b\u0010\u0010\u0011R$\u0010\u0012\u001a\u00020\u00138\u0006@\u0006X\u0087.¢\u0006\u0014\n\u0000\u0012\u0004\b\u0014\u0010\u0002\u001a\u0004\b\u0015\u0010\u0016\"\u0004\b\u0017\u0010\u0018R\u001b\u0010\u0019\u001a\u00020\u001a8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u001d\u0010\u001e\u001a\u0004\b\u001b\u0010\u001c¨\u0006."}, d2 = {"Lcom/guochao/component/mvp/fragment/AnchorSetedToTopFragment;", "Lcom/guochao/component/mvp/fragment/FullWidthCenterFragment;", "()V", "callBack", "Lkotlin/Function1;", "", "", "getCallBack", "()Lkotlin/jvm/functions/Function1;", "setCallBack", "(Lkotlin/jvm/functions/Function1;)V", "isSetTime", "", "timeStr", "getTimeStr", "()Ljava/lang/String;", "setTimeStr", "(Ljava/lang/String;)V", "viewBinding", "Lcom/guochao/component/mvp/databinding/FragmentAnchorSetTopBinding;", "getViewBinding$annotations", "getViewBinding", "()Lcom/guochao/component/mvp/databinding/FragmentAnchorSetTopBinding;", "setViewBinding", "(Lcom/guochao/component/mvp/databinding/FragmentAnchorSetTopBinding;)V", "viewModel", "Lcom/guochao/component/mvp/viewmodel/MVPUserInfoViewModel;", "getViewModel", "()Lcom/guochao/component/mvp/viewmodel/MVPUserInfoViewModel;", "viewModel$delegate", "Lkotlin/Lazy;", "checkPostData", "createCenterDialog", "Landroidx/appcompat/app/AppCompatDialog;", "getMinuteStr", CrashHianalyticsData.TIME, "", "getZeroTime", "initView", "root", "Landroid/view/View;", "savedInstanceState", "Landroid/os/Bundle;", "onCreate", "setTime", "Companion", "component_mvp_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
/* loaded from: classes3.dex */
public final class AnchorSetedToTopFragment extends FullWidthCenterFragment {
    @NotNull
    public static final Companion Companion = new Companion(null);
    @Nullable
    private Function1<? super String, Unit> callBack;
    private boolean isSetTime;
    @Nullable
    private String timeStr;
    public FragmentAnchorSetTopBinding viewBinding;
    @NotNull
    private final Lazy viewModel$delegate;

    @Metadata(d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0019\u0010\u0003\u001a\u00020\u00042\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0006H\u0007¢\u0006\u0002\u0010\u0007¨\u0006\b"}, d2 = {"Lcom/guochao/component/mvp/fragment/AnchorSetedToTopFragment$Companion;", "", "()V", "newInstance", "Lcom/guochao/component/mvp/fragment/AnchorSetedToTopFragment;", "fee", "", "(Ljava/lang/Integer;)Lcom/guochao/component/mvp/fragment/AnchorSetedToTopFragment;", "component_mvp_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
    /* loaded from: classes3.dex */
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public static /* synthetic */ AnchorSetedToTopFragment newInstance$default(Companion companion, Integer num, int i9, Object obj) {
            if ((i9 & 1) != 0) {
                num = 1;
            }
            return companion.newInstance(num);
        }

        @JvmStatic
        @NotNull
        public final AnchorSetedToTopFragment newInstance(@Nullable Integer num) {
            AnchorSetedToTopFragment anchorSetedToTopFragment = new AnchorSetedToTopFragment();
            Bundle bundle = new Bundle();
            if (num != null) {
                bundle.putInt("mvpLevel", num.intValue());
            }
            anchorSetedToTopFragment.setArguments(bundle);
            return anchorSetedToTopFragment;
        }
    }

    public AnchorSetedToTopFragment() {
        final Function0<Fragment> function0 = new Function0<Fragment>() { // from class: com.guochao.component.mvp.fragment.AnchorSetedToTopFragment$special$$inlined$viewModels$default$1
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final Fragment invoke() {
                return Fragment.this;
            }
        };
        this.viewModel$delegate = FragmentViewModelLazyKt.createViewModelLazy(this, Reflection.getOrCreateKotlinClass(MVPUserInfoViewModel.class), new Function0<ViewModelStore>() { // from class: com.guochao.component.mvp.fragment.AnchorSetedToTopFragment$special$$inlined$viewModels$default$2
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final ViewModelStore invoke() {
                ViewModelStore viewModelStore = ((ViewModelStoreOwner) Function0.this.invoke()).getViewModelStore();
                Intrinsics.checkNotNullExpressionValue(viewModelStore, "ownerProducer().viewModelStore");
                return viewModelStore;
            }
        }, null);
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
    public static final void m238initView$lambda0(AnchorSetedToTopFragment this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.dismissAllowingStateLoss();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: initView$lambda-2  reason: not valid java name */
    public static final void m239initView$lambda2(AnchorSetedToTopFragment this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.getViewBinding().timePickerLL.setVisibility(0);
        this$0.getViewBinding().timeLL.setVisibility(0);
        SoftKeyBoardUtils.closeSoftKeyBoardNow(this$0.getContext(), this$0.getViewBinding().feeET);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: initView$lambda-3  reason: not valid java name */
    public static final void m240initView$lambda3(Ref.IntRef y10, Ref.IntRef m10, Ref.IntRef d10, AnchorSetedToTopFragment this$0, Ref.IntRef h10, int i9, int i10, int i11) {
        Intrinsics.checkNotNullParameter(y10, "$y");
        Intrinsics.checkNotNullParameter(m10, "$m");
        Intrinsics.checkNotNullParameter(d10, "$d");
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(h10, "$h");
        if (i9 == y10.element && i10 == m10.element + 1 && i11 == d10.element + 1) {
            this$0.getViewBinding().timeWheel.getHourWheelView().K(h10.element, 23, 1);
        } else {
            this$0.getViewBinding().timeWheel.getHourWheelView().K(0, 23, 1);
        }
        this$0.setTime();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: initView$lambda-4  reason: not valid java name */
    public static final void m241initView$lambda4(AnchorSetedToTopFragment this$0, int i9, int i10, int i11) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.setTime();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: initView$lambda-5  reason: not valid java name */
    public static final void m242initView$lambda5(AnchorSetedToTopFragment this$0, View view) {
        CharSequence trim;
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Bundle arguments = this$0.getArguments();
        int i9 = arguments != null ? arguments.getInt("mvpLevel") : 1;
        trim = StringsKt__StringsKt.trim((CharSequence) this$0.getViewBinding().feeET.getText().toString());
        String obj = trim.toString();
        this$0.getViewModel().setWorldTop(new GetInterestsRequestModel(7, i9, obj, this$0.timeStr + ":00"), new AnchorSetedToTopFragment$initView$7$1(this$0, null));
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Code restructure failed: missing block: B:10:0x0018, code lost:
        if ((r2.length() > 0) == true) goto L9;
     */
    /* renamed from: initView$lambda-6  reason: not valid java name */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final void m243initView$lambda6(com.guochao.component.mvp.fragment.AnchorSetedToTopFragment r3, com.guochao.component.mvp.model.UserModel r4) {
        /*
            java.lang.String r0 = "this$0"
            kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r3, r0)
            r0 = 1
            r1 = 0
            if (r4 == 0) goto L1b
            java.lang.String r2 = r4.getUserId()
            if (r2 == 0) goto L1b
            int r2 = r2.length()
            if (r2 <= 0) goto L17
            r2 = 1
            goto L18
        L17:
            r2 = 0
        L18:
            if (r2 != r0) goto L1b
            goto L1c
        L1b:
            r0 = 0
        L1c:
            if (r0 == 0) goto L67
            com.guochao.component.mvp.databinding.FragmentAnchorSetTopBinding r0 = r3.getViewBinding()
            android.widget.TextView r0 = r0.nameTV
            r0.setVisibility(r1)
            com.guochao.component.mvp.databinding.FragmentAnchorSetTopBinding r0 = r3.getViewBinding()
            android.widget.TextView r0 = r0.nameTV
            r1 = 0
            if (r4 == 0) goto L35
            java.lang.String r2 = r4.getNickName()
            goto L36
        L35:
            r2 = r1
        L36:
            r0.setText(r2)
            com.guochao.component.mvp.databinding.FragmentAnchorSetTopBinding r0 = r3.getViewBinding()
            android.widget.ImageView r0 = r0.avatarIV
            com.bumptech.glide.h r0 = com.bumptech.glide.c.v(r0)
            if (r4 == 0) goto L49
            java.lang.String r1 = r4.getUrl()
        L49:
            com.bumptech.glide.g r4 = r0.r(r1)
            com.bumptech.glide.request.h r0 = com.bumptech.glide.request.h.y0()
            com.bumptech.glide.g r4 = r4.a(r0)
            int r0 = com.guochao.component.mvp.R$drawable.ic_mvp_setting_def_header
            com.bumptech.glide.request.a r4 = r4.b0(r0)
            com.bumptech.glide.g r4 = (com.bumptech.glide.g) r4
            com.guochao.component.mvp.databinding.FragmentAnchorSetTopBinding r3 = r3.getViewBinding()
            android.widget.ImageView r3 = r3.avatarIV
            r4.Q0(r3)
            goto L9b
        L67:
            com.guochao.component.mvp.databinding.FragmentAnchorSetTopBinding r4 = r3.getViewBinding()
            android.widget.ImageView r4 = r4.avatarIV
            com.bumptech.glide.h r4 = com.bumptech.glide.c.v(r4)
            com.guochao.component.mvp.databinding.FragmentAnchorSetTopBinding r0 = r3.getViewBinding()
            android.widget.ImageView r0 = r0.avatarIV
            r4.f(r0)
            com.guochao.component.mvp.databinding.FragmentAnchorSetTopBinding r4 = r3.getViewBinding()
            android.widget.TextView r4 = r4.nameTV
            r0 = 8
            r4.setVisibility(r0)
            com.guochao.component.mvp.databinding.FragmentAnchorSetTopBinding r4 = r3.getViewBinding()
            android.widget.TextView r4 = r4.nameTV
            java.lang.String r0 = ""
            r4.setText(r0)
            com.guochao.component.mvp.databinding.FragmentAnchorSetTopBinding r3 = r3.getViewBinding()
            android.widget.ImageView r3 = r3.avatarIV
            int r4 = com.guochao.component.mvp.R$drawable.ic_mvp_setting_def_header
            r3.setImageResource(r4)
        L9b:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.guochao.component.mvp.fragment.AnchorSetedToTopFragment.m243initView$lambda6(com.guochao.component.mvp.fragment.AnchorSetedToTopFragment, com.guochao.component.mvp.model.UserModel):void");
    }

    @JvmStatic
    @NotNull
    public static final AnchorSetedToTopFragment newInstance(@Nullable Integer num) {
        return Companion.newInstance(num);
    }

    public final void checkPostData() {
        boolean z10 = true;
        getViewBinding().okTV.setEnabled(((getViewBinding().feeET.getText().toString().length() > 0) && this.isSetTime) ? false : false);
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
    public final String getMinuteStr(int i9) {
        return i9 % 2 == 0 ? "00" : ThirdPushHelper.TYPE_OPPO;
    }

    @Nullable
    public final String getTimeStr() {
        return this.timeStr;
    }

    @NotNull
    public final FragmentAnchorSetTopBinding getViewBinding() {
        FragmentAnchorSetTopBinding fragmentAnchorSetTopBinding = this.viewBinding;
        if (fragmentAnchorSetTopBinding != null) {
            return fragmentAnchorSetTopBinding;
        }
        Intrinsics.throwUninitializedPropertyAccessException("viewBinding");
        return null;
    }

    @NotNull
    public final String getZeroTime(int i9) {
        if (i9 > 9) {
            return String.valueOf(i9);
        }
        StringBuilder sb2 = new StringBuilder();
        sb2.append('0');
        sb2.append(i9);
        return sb2.toString();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.guochao.component.mvp.fragment.FullWidthCenterFragment, com.guochao.component.mvp.fragment.FullWidthBaseFragment, com.guochao.faceshow.aaspring.base.mvvm.fragment.GCCoreFragment
    public void initView(@NotNull View root, @Nullable Bundle bundle) {
        Intrinsics.checkNotNullParameter(root, "root");
        super.initView(root, bundle);
        ImageView imageView = getViewBinding().closeIV;
        Intrinsics.checkNotNullExpressionValue(imageView, "viewBinding.closeIV");
        ViewExtendsKt.onClick$default(imageView, 0L, new View.OnClickListener() { // from class: com.guochao.component.mvp.fragment.d
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                AnchorSetedToTopFragment.m238initView$lambda0(AnchorSetedToTopFragment.this, view);
            }
        }, 1, null);
        EditText editText = getViewBinding().feeET;
        Intrinsics.checkNotNullExpressionValue(editText, "viewBinding.feeET");
        editText.addTextChangedListener(new TextWatcher() { // from class: com.guochao.component.mvp.fragment.AnchorSetedToTopFragment$initView$$inlined$addTextChangedListener$default$1
            @Override // android.text.TextWatcher
            public void afterTextChanged(@Nullable Editable editable) {
                MVPUserInfoViewModel viewModel;
                if (String.valueOf(editable).length() > 0) {
                    AnchorSetedToTopFragment.this.getViewBinding().feeET.setTypeface(Typeface.DEFAULT_BOLD);
                } else {
                    AnchorSetedToTopFragment.this.getViewBinding().feeET.setTypeface(Typeface.DEFAULT);
                }
                viewModel = AnchorSetedToTopFragment.this.getViewModel();
                viewModel.findUserById(String.valueOf(editable));
                AnchorSetedToTopFragment.this.checkPostData();
            }

            @Override // android.text.TextWatcher
            public void beforeTextChanged(@Nullable CharSequence charSequence, int i9, int i10, int i11) {
            }

            @Override // android.text.TextWatcher
            public void onTextChanged(@Nullable CharSequence charSequence, int i9, int i10, int i11) {
            }
        });
        TextView textView = getViewBinding().timeET;
        Intrinsics.checkNotNullExpressionValue(textView, "viewBinding.timeET");
        ViewExtendsKt.onClick$default(textView, 0L, new View.OnClickListener() { // from class: com.guochao.component.mvp.fragment.e
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                AnchorSetedToTopFragment.m239initView$lambda2(AnchorSetedToTopFragment.this, view);
            }
        }, 1, null);
        Calendar calendar = Calendar.getInstance();
        final Ref.IntRef intRef = new Ref.IntRef();
        intRef.element = calendar.get(1);
        final Ref.IntRef intRef2 = new Ref.IntRef();
        intRef2.element = calendar.get(2);
        final Ref.IntRef intRef3 = new Ref.IntRef();
        intRef3.element = calendar.get(5);
        final Ref.IntRef intRef4 = new Ref.IntRef();
        intRef4.element = calendar.get(11);
        getViewBinding().dateWheel.x(DateEntity.dayOnFuture(1), DateEntity.yearOnFuture(1), DateEntity.dayOnFuture(1));
        getViewBinding().dateWheel.setOnDateSelectedListener(new i1.c() { // from class: com.guochao.component.mvp.fragment.h
            @Override // i1.c
            public final void a(int i9, int i10, int i11) {
                AnchorSetedToTopFragment.m240initView$lambda3(Ref.IntRef.this, intRef2, intRef3, this, intRef4, i9, i10, i11);
            }
        });
        getViewBinding().timeWheel.setTimeFormatter(new i1.i() { // from class: com.guochao.component.mvp.fragment.AnchorSetedToTopFragment$initView$5
            @Override // i1.i
            @NotNull
            public String formatHour(int i9) {
                return AnchorSetedToTopFragment.this.getZeroTime(i9);
            }

            @Override // i1.i
            @NotNull
            public String formatMinute(int i9) {
                return AnchorSetedToTopFragment.this.getMinuteStr(i9);
            }

            @Override // i1.i
            @NotNull
            public String formatSecond(int i9) {
                return "";
            }
        });
        getViewBinding().timeWheel.getHourWheelView();
        getViewBinding().timeWheel.setOnTimeSelectedListener(new i1.h() { // from class: com.guochao.component.mvp.fragment.i
            @Override // i1.h
            public final void a(int i9, int i10, int i11) {
                AnchorSetedToTopFragment.m241initView$lambda4(AnchorSetedToTopFragment.this, i9, i10, i11);
            }
        });
        TextView textView2 = getViewBinding().okTV;
        Intrinsics.checkNotNullExpressionValue(textView2, "viewBinding.okTV");
        ViewExtendsKt.onClick$default(textView2, 0L, new View.OnClickListener() { // from class: com.guochao.component.mvp.fragment.f
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                AnchorSetedToTopFragment.m242initView$lambda5(AnchorSetedToTopFragment.this, view);
            }
        }, 1, null);
        getViewModel().getUserModel().observe(getViewLifecycleOwner(), new Observer() { // from class: com.guochao.component.mvp.fragment.g
            @Override // androidx.lifecycle.Observer
            public final void onChanged(Object obj) {
                AnchorSetedToTopFragment.m243initView$lambda6(AnchorSetedToTopFragment.this, (UserModel) obj);
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

    public final void setTime() {
        FragmentAnchorSetTopBinding viewBinding = getViewBinding();
        viewBinding.timeET.setTypeface(Typeface.DEFAULT_BOLD);
        String str = viewBinding.timeWheel.getSelectedMinute() % 2 == 0 ? "00" : ThirdPushHelper.TYPE_OPPO;
        TextView textView = viewBinding.timeET;
        textView.setText(viewBinding.dateWheel.getSelectedYear() + '-' + getZeroTime(viewBinding.dateWheel.getSelectedMonth()) + '-' + getZeroTime(viewBinding.dateWheel.getSelectedDay()) + ' ' + getZeroTime(viewBinding.timeWheel.getSelectedHour()) + ':' + str);
        String string = getString(R$string.mvp_set_top_america_time);
        Intrinsics.checkNotNullExpressionValue(string, "getString(R.string.mvp_set_top_america_time)");
        SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder(string);
        spannableStringBuilder.setSpan(new ForegroundColorSpan(Color.parseColor("#a1a1a1")), 0, string.length(), 33);
        String d10 = c7.a.d(viewBinding.dateWheel.getSelectedYear() + '-' + getZeroTime(viewBinding.dateWheel.getSelectedMonth()) + '-' + getZeroTime(viewBinding.dateWheel.getSelectedDay()) + ' ' + getZeroTime(viewBinding.timeWheel.getSelectedHour()) + ':' + str + ":00", TimeZone.getTimeZone("America/New_York").getID());
        this.timeStr = d10.subSequence(0, d10.length() + (-3)).toString();
        spannableStringBuilder.append(d10.subSequence(0, d10.length() + (-3)));
        viewBinding.timeTV.setText(spannableStringBuilder);
        this.isSetTime = true;
        checkPostData();
    }

    public final void setTimeStr(@Nullable String str) {
        this.timeStr = str;
    }

    public final void setViewBinding(@NotNull FragmentAnchorSetTopBinding fragmentAnchorSetTopBinding) {
        Intrinsics.checkNotNullParameter(fragmentAnchorSetTopBinding, "<set-?>");
        this.viewBinding = fragmentAnchorSetTopBinding;
    }
}
