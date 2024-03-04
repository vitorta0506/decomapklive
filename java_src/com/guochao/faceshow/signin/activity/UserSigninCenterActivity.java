package com.guochao.faceshow.signin.activity;

import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.text.SpannableStringBuilder;
import android.text.style.ForegroundColorSpan;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.widget.TextView;
import androidx.core.content.ContextCompat;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentManager;
import androidx.fragment.app.FragmentPagerAdapter;
import androidx.lifecycle.Observer;
import androidx.lifecycle.ViewModelProvider;
import androidx.lifecycle.ViewModelStoreOwner;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import androidx.viewpager.widget.ViewPager;
import com.alibaba.android.arouter.facade.annotation.Route;
import com.duolingo.open.rtlviewpager.RtlViewPager;
import com.facebook.devicerequests.internal.DeviceRequestsHelper;
import com.guochao.faceshow.aaspring.base.mvvm.activity.GCBaseMvvmActivity;
import com.guochao.faceshow.aaspring.base.mvvm.annotations.GCViewBinding;
import com.guochao.faceshow.aaspring.base.mvvm.model.BaseModel;
import com.guochao.faceshow.aaspring.base.mvvm.viewmodel.BaseViewModel;
import com.guochao.faceshow.aaspring.base.navigator.RouterPath;
import com.guochao.faceshow.aaspring.utils.EventTrackingV2Utils;
import com.guochao.faceshow.aaspring.utils.SpUtils;
import com.guochao.faceshow.aaspring.utils.StatusBarHelper;
import com.guochao.faceshow.aaspring.utils.TextViewUtils;
import com.guochao.faceshow.context.GCApplication;
import com.guochao.faceshow.signin.R$color;
import com.guochao.faceshow.signin.R$string;
import com.guochao.faceshow.signin.bean.SigninBean;
import com.guochao.faceshow.signin.bean.SigninResponse;
import com.guochao.faceshow.signin.databinding.ActivityUserSigninCenterBinding;
import com.guochao.faceshow.signin.dialog.SignInResultDialog;
import com.guochao.faceshow.signin.fragment.ActivityTaskFragment;
import com.guochao.faceshow.signin.fragment.SigninTaskFragment;
import com.guochao.faceshow.signin.viewmodel.SigninCenterViewModel;
import java.util.ArrayList;
import java.util.List;
import java.util.Locale;
import java.util.Objects;
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
import kotlin.text.StringsKt__StringsKt;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Route(name = "任务中心", path = RouterPath.ROUTER_SIGNIN_CENTER)
@Metadata(d1 = {"\u0000h\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\u0010\u0002\n\u0002\b\u0005\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\b\n\u0002\b\u0005\n\u0002\u0010\u000e\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0013\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0007\u0018\u0000 I2\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001:\u0001IB\u0005¢\u0006\u0002\u0010\u0004J\b\u00104\u001a\u00020\bH\u0002J\u0018\u00105\u001a\u00020\u001d2\u0006\u00106\u001a\u00020#2\u0006\u00107\u001a\u00020#H\u0002J\u0010\u00108\u001a\u00020\b2\u0006\u00109\u001a\u00020\u0007H\u0002J\b\u0010:\u001a\u00020\bH\u0002J\u0012\u0010;\u001a\u00020\b2\b\u0010<\u001a\u0004\u0018\u00010=H\u0016J\u0012\u0010>\u001a\u00020\b2\b\u0010?\u001a\u0004\u0018\u00010\u0002H\u0016J\u0006\u0010@\u001a\u00020\bJ \u0010A\u001a\u00020\b2\u0006\u0010B\u001a\u00020C2\u0006\u00107\u001a\u00020#2\u0006\u0010D\u001a\u00020\u001dH\u0002J\u0010\u0010E\u001a\u00020\b2\b\u0010F\u001a\u0004\u0018\u00010GJ\b\u0010H\u001a\u00020\u0007H\u0016R(\u0010\u0005\u001a\u0010\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\b\u0018\u00010\u0006X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\t\u0010\n\"\u0004\b\u000b\u0010\fR\u0017\u0010\r\u001a\b\u0012\u0004\u0012\u00020\u000f0\u000e¢\u0006\b\n\u0000\u001a\u0004\b\u0010\u0010\u0011R\u001a\u0010\u0012\u001a\u00020\u0007X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0012\u0010\u0013\"\u0004\b\u0014\u0010\u0015R\u001c\u0010\u0016\u001a\u0004\u0018\u00010\u0017X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0018\u0010\u0019\"\u0004\b\u001a\u0010\u001bR\u001a\u0010\u001c\u001a\u00020\u001dX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001e\u0010\u001f\"\u0004\b \u0010!R\u001c\u0010\"\u001a\u0004\u0018\u00010#X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b$\u0010%\"\u0004\b&\u0010'R$\u0010(\u001a\u00020)8\u0006@\u0006X\u0087.¢\u0006\u0014\n\u0000\u0012\u0004\b*\u0010\u0004\u001a\u0004\b+\u0010,\"\u0004\b-\u0010.R\u001b\u0010/\u001a\u00020\u00038VX\u0096\u0084\u0002¢\u0006\f\n\u0004\b2\u00103\u001a\u0004\b0\u00101¨\u0006J"}, d2 = {"Lcom/guochao/faceshow/signin/activity/UserSigninCenterActivity;", "Lcom/guochao/faceshow/aaspring/base/mvvm/activity/GCBaseMvvmActivity;", "Lcom/guochao/faceshow/aaspring/base/mvvm/model/BaseModel;", "Lcom/guochao/faceshow/signin/viewmodel/SigninCenterViewModel;", "()V", "callBack", "Lkotlin/Function1;", "", "", "getCallBack", "()Lkotlin/jvm/functions/Function1;", "setCallBack", "(Lkotlin/jvm/functions/Function1;)V", "fragments", "", "Landroidx/fragment/app/Fragment;", "getFragments", "()Ljava/util/List;", "isTodaySigned", "()Z", "setTodaySigned", "(Z)V", "signList", "Lcom/guochao/faceshow/signin/bean/SigninBean;", "getSignList", "()Lcom/guochao/faceshow/signin/bean/SigninBean;", "setSignList", "(Lcom/guochao/faceshow/signin/bean/SigninBean;)V", "signedCount", "", "getSignedCount", "()I", "setSignedCount", "(I)V", "tag", "", "getTag", "()Ljava/lang/String;", "setTag", "(Ljava/lang/String;)V", "viewBinding", "Lcom/guochao/faceshow/signin/databinding/ActivityUserSigninCenterBinding;", "getViewBinding$annotations", "getViewBinding", "()Lcom/guochao/faceshow/signin/databinding/ActivityUserSigninCenterBinding;", "setViewBinding", "(Lcom/guochao/faceshow/signin/databinding/ActivityUserSigninCenterBinding;)V", "viewModel", "getViewModel", "()Lcom/guochao/faceshow/signin/viewmodel/SigninCenterViewModel;", "viewModel$delegate", "Lkotlin/Lazy;", "checkActivityTask", "getFirstCharIndex", "content", "keyWords", "initFragment", "it", "initRecyclerView", "initView", "savedInstanceSate", "Landroid/os/Bundle;", "onModelUpdate", DeviceRequestsHelper.DEVICE_INFO_MODEL, "resetSingleFragment", "setSpannerString", "textView", "Landroid/widget/TextView;", "color", "updateSigninSuccess", "data", "Lcom/guochao/faceshow/signin/bean/SigninResponse;", "useBlackTextStatusBar", "Companion", "lib_sign_in_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
/* loaded from: classes4.dex */
public final class UserSigninCenterActivity extends GCBaseMvvmActivity<BaseModel, SigninCenterViewModel> {
    @NotNull
    public static final Companion Companion = new Companion(null);
    @Nullable
    private Function1<? super Boolean, Unit> callBack;
    @NotNull
    private final List<Fragment> fragments;
    private boolean isTodaySigned;
    @Nullable
    private SigninBean signList;
    private int signedCount;
    @Nullable
    private String tag;
    public ActivityUserSigninCenterBinding viewBinding;
    @NotNull
    private final Lazy viewModel$delegate;

    public UserSigninCenterActivity() {
        Lazy lazy;
        lazy = LazyKt__LazyJVMKt.lazy(LazyThreadSafetyMode.NONE, (Function0) new Function0<SigninCenterViewModel>() { // from class: com.guochao.faceshow.signin.activity.UserSigninCenterActivity$special$$inlined$lazyViewModel$default$1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final SigninCenterViewModel invoke() {
                BaseViewModel baseViewModel;
                ViewModelStoreOwner viewModelStoreOwner = ViewModelStoreOwner.this;
                String str = r2;
                ViewModelProvider.Factory factory = r3;
                ViewModelProvider viewModelProvider = factory == null ? new ViewModelProvider(viewModelStoreOwner) : new ViewModelProvider(viewModelStoreOwner, factory);
                if (str != null) {
                    baseViewModel = (BaseViewModel) viewModelProvider.get(str, SigninCenterViewModel.class);
                } else {
                    baseViewModel = (BaseViewModel) viewModelProvider.get(SigninCenterViewModel.class);
                }
                Objects.requireNonNull(baseViewModel, "null cannot be cast to non-null type com.guochao.faceshow.signin.viewmodel.SigninCenterViewModel");
                return (SigninCenterViewModel) baseViewModel;
            }
        });
        this.viewModel$delegate = lazy;
        this.signedCount = 2;
        this.fragments = new ArrayList();
    }

    private final void checkActivityTask() {
        String str = this.tag;
        if (str == null) {
            str = "";
        }
        if (!Intrinsics.areEqual("activity_task", str) || this.fragments.size() <= 0) {
            return;
        }
        int i9 = 0;
        int i10 = 0;
        for (Object obj : this.fragments) {
            int i11 = i10 + 1;
            if (i10 < 0) {
                CollectionsKt__CollectionsKt.throwIndexOverflow();
            }
            if (((Fragment) obj) instanceof ActivityTaskFragment) {
                i9 = i10;
            }
            i10 = i11;
        }
        getViewBinding().viewpager.setCurrentItem(i9);
    }

    private final int getFirstCharIndex(String str, String str2) {
        boolean contains$default;
        int indexOf$default;
        Locale locale = Locale.getDefault();
        Intrinsics.checkNotNullExpressionValue(locale, "getDefault()");
        String upperCase = str.toUpperCase(locale);
        Intrinsics.checkNotNullExpressionValue(upperCase, "this as java.lang.String).toUpperCase(locale)");
        Locale locale2 = Locale.getDefault();
        Intrinsics.checkNotNullExpressionValue(locale2, "getDefault()");
        String upperCase2 = str2.toUpperCase(locale2);
        Intrinsics.checkNotNullExpressionValue(upperCase2, "this as java.lang.String).toUpperCase(locale)");
        contains$default = StringsKt__StringsKt.contains$default((CharSequence) upperCase, (CharSequence) upperCase2, false, 2, (Object) null);
        if (contains$default) {
            Locale locale3 = Locale.getDefault();
            Intrinsics.checkNotNullExpressionValue(locale3, "getDefault()");
            String upperCase3 = str2.toUpperCase(locale3);
            Intrinsics.checkNotNullExpressionValue(upperCase3, "this as java.lang.String).toUpperCase(locale)");
            Locale locale4 = Locale.getDefault();
            Intrinsics.checkNotNullExpressionValue(locale4, "getDefault()");
            String upperCase4 = str.toUpperCase(locale4);
            Intrinsics.checkNotNullExpressionValue(upperCase4, "this as java.lang.String).toUpperCase(locale)");
            indexOf$default = StringsKt__StringsKt.indexOf$default((CharSequence) upperCase4, upperCase3, 0, false, 6, (Object) null);
            return indexOf$default;
        }
        return -1;
    }

    @GCViewBinding
    public static /* synthetic */ void getViewBinding$annotations() {
    }

    private final void initFragment(boolean z10) {
        this.fragments.clear();
        if (z10) {
            this.fragments.add(SigninTaskFragment.Companion.getInstance(0));
        }
        this.fragments.add(SigninTaskFragment.Companion.getInstance(1));
        this.fragments.add(ActivityTaskFragment.Companion.getInstance(1));
    }

    private final void initRecyclerView() {
        getViewBinding().recyclerView.setLayoutManager(new LinearLayoutManager(this, 0, false));
        getViewBinding().recyclerView.setAdapter(new UserSigninCenterActivity$initRecyclerView$1(this));
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: initView$lambda-0  reason: not valid java name */
    public static final void m738initView$lambda0(UserSigninCenterActivity this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.finish();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: initView$lambda-1  reason: not valid java name */
    public static final void m739initView$lambda1(UserSigninCenterActivity this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        UserSigninCenterRulesActivity.Companion.start(this$0);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: initView$lambda-2  reason: not valid java name */
    public static final void m740initView$lambda2(UserSigninCenterActivity this$0, SigninBean signinBean) {
        Integer dayFlag;
        Integer daySign;
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.signedCount = (signinBean == null || (daySign = signinBean.getDaySign()) == null) ? 0 : daySign.intValue();
        this$0.isTodaySigned = (signinBean == null || (dayFlag = signinBean.getDayFlag()) == null || dayFlag.intValue() != 1) ? false : true;
        this$0.signList = signinBean;
        this$0.initRecyclerView();
        this$0.getViewBinding().showDialogToggle.setSelected(!SpUtils.getBool(GCApplication.app(), "SignInIgnore", false));
        TextView textView = this$0.getViewBinding().tvSignedCount;
        int i9 = R$string.signin_perday_signed_tip;
        Object[] objArr = new Object[1];
        int i10 = this$0.signedCount;
        objArr[0] = i10 < 0 ? "0" : String.valueOf(i10);
        textView.setText(this$0.getString(i9, objArr));
        TextView textView2 = this$0.getViewBinding().tvSignedCount;
        Intrinsics.checkNotNullExpressionValue(textView2, "viewBinding.tvSignedCount");
        this$0.setSpannerString(textView2, String.valueOf(this$0.signedCount), ContextCompat.getColor(this$0, R$color.signin_count_days));
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: initView$lambda-4  reason: not valid java name */
    public static final void m741initView$lambda4(final UserSigninCenterActivity this$0, Boolean it) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullExpressionValue(it, "it");
        this$0.initFragment(it.booleanValue());
        final String[] strArr = it.booleanValue() ? new String[]{this$0.getString(R$string.signin_user_center_stronger), this$0.getString(R$string.signin_user_center_everyday), this$0.getString(R$string.signin_user_center_activity)} : new String[]{this$0.getString(R$string.signin_user_center_everyday), this$0.getString(R$string.signin_user_center_activity)};
        RtlViewPager rtlViewPager = this$0.getViewBinding().viewpager;
        final FragmentManager supportFragmentManager = this$0.getSupportFragmentManager();
        rtlViewPager.setAdapter(new FragmentPagerAdapter(supportFragmentManager) { // from class: com.guochao.faceshow.signin.activity.UserSigninCenterActivity$initView$5$1
            @Override // androidx.viewpager.widget.PagerAdapter
            public int getCount() {
                return UserSigninCenterActivity.this.getFragments().size();
            }

            @Override // androidx.fragment.app.FragmentPagerAdapter
            @NotNull
            public Fragment getItem(int i9) {
                return UserSigninCenterActivity.this.getFragments().get(i9);
            }

            @Override // androidx.viewpager.widget.PagerAdapter
            @NotNull
            public CharSequence getPageTitle(int i9) {
                String str = strArr[i9];
                Intrinsics.checkNotNullExpressionValue(str, "titles[position]");
                return str;
            }
        });
        this$0.getViewBinding().tabs.setupWithViewPager(this$0.getViewBinding().viewpager);
        ViewParent parent = this$0.getViewBinding().showDialogToggle.getParent();
        Intrinsics.checkNotNull(parent, "null cannot be cast to non-null type android.view.ViewGroup");
        ((ViewGroup) parent).setOnClickListener(new View.OnClickListener() { // from class: com.guochao.faceshow.signin.activity.a
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                UserSigninCenterActivity.m742initView$lambda4$lambda3(UserSigninCenterActivity.this, view);
            }
        });
        this$0.checkActivityTask();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: initView$lambda-4$lambda-3  reason: not valid java name */
    public static final void m742initView$lambda4$lambda3(UserSigninCenterActivity this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.getViewBinding().showDialogToggle.setSelected(!this$0.getViewBinding().showDialogToggle.isSelected());
        SpUtils.setBool(view.getContext(), "SignInIgnore", !this$0.getViewBinding().showDialogToggle.isSelected());
    }

    private final void setSpannerString(TextView textView, String str, int i9) {
        String obj = textView.getText().toString();
        int length = obj.length() - 1;
        int i10 = 0;
        boolean z10 = false;
        while (i10 <= length) {
            boolean z11 = Intrinsics.compare((int) obj.charAt(!z10 ? i10 : length), 32) <= 0;
            if (z10) {
                if (!z11) {
                    break;
                }
                length--;
            } else if (z11) {
                i10++;
            } else {
                z10 = true;
            }
        }
        String obj2 = obj.subSequence(i10, length + 1).toString();
        SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder(obj2);
        int firstCharIndex = getFirstCharIndex(obj2, str);
        if (firstCharIndex >= 0) {
            spannableStringBuilder.setSpan(new ForegroundColorSpan(i9), firstCharIndex, str.length() + firstCharIndex, 18);
        } else {
            spannableStringBuilder.setSpan(new ForegroundColorSpan(i9), 0, 0, 18);
        }
        textView.setText(spannableStringBuilder);
    }

    @JvmStatic
    public static final void start(@NotNull Context context) {
        Companion.start(context);
    }

    @JvmStatic
    public static final void start(@NotNull Context context, @NotNull String str) {
        Companion.start(context, str);
    }

    @Nullable
    public final Function1<Boolean, Unit> getCallBack() {
        return this.callBack;
    }

    @NotNull
    public final List<Fragment> getFragments() {
        return this.fragments;
    }

    @Nullable
    public final SigninBean getSignList() {
        return this.signList;
    }

    public final int getSignedCount() {
        return this.signedCount;
    }

    @Nullable
    public final String getTag() {
        return this.tag;
    }

    @NotNull
    public final ActivityUserSigninCenterBinding getViewBinding() {
        ActivityUserSigninCenterBinding activityUserSigninCenterBinding = this.viewBinding;
        if (activityUserSigninCenterBinding != null) {
            return activityUserSigninCenterBinding;
        }
        Intrinsics.throwUninitializedPropertyAccessException("viewBinding");
        return null;
    }

    @Override // com.guochao.faceshow.aaspring.base.mvvm.activity.GCCoreActivity
    public void initView(@Nullable Bundle bundle) {
        getViewBinding().statusBarSpace.getLayoutParams().height = StatusBarHelper.getStatusbarHeight(this);
        getViewBinding().ivLeftBack.setOnClickListener(new View.OnClickListener() { // from class: com.guochao.faceshow.signin.activity.c
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                UserSigninCenterActivity.m738initView$lambda0(UserSigninCenterActivity.this, view);
            }
        });
        getViewBinding().signinRules.setOnClickListener(new View.OnClickListener() { // from class: com.guochao.faceshow.signin.activity.b
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                UserSigninCenterActivity.m739initView$lambda1(UserSigninCenterActivity.this, view);
            }
        });
        TextViewUtils.setCustomBold(getViewBinding().tvTitle);
        getViewModel().checkGrowStatus();
        getViewModel().checkSignInTask();
        this.tag = getIntent().getStringExtra("tag");
        getViewBinding().viewpager.addOnPageChangeListener(new ViewPager.OnPageChangeListener() { // from class: com.guochao.faceshow.signin.activity.UserSigninCenterActivity$initView$3
            @Override // androidx.viewpager.widget.ViewPager.OnPageChangeListener
            public void onPageScrollStateChanged(int i9) {
            }

            @Override // androidx.viewpager.widget.ViewPager.OnPageChangeListener
            public void onPageScrolled(int i9, float f10, int i10) {
            }

            @Override // androidx.viewpager.widget.ViewPager.OnPageChangeListener
            public void onPageSelected(int i9) {
                if (i9 < UserSigninCenterActivity.this.getFragments().size()) {
                    List<Fragment> fragments = UserSigninCenterActivity.this.getFragments();
                    if ((fragments != null ? fragments.get(i9) : null) instanceof ActivityTaskFragment) {
                        EventTrackingV2Utils.INSTANCE.track(EventTrackingV2Utils.activity_limit_task);
                    }
                }
            }
        });
        getViewModel().getSigninTaskLiveData().observe(this, new Observer() { // from class: com.guochao.faceshow.signin.activity.d
            @Override // androidx.lifecycle.Observer
            public final void onChanged(Object obj) {
                UserSigninCenterActivity.m740initView$lambda2(UserSigninCenterActivity.this, (SigninBean) obj);
            }
        });
        getViewModel().getMutableGrowLiveData().observe(this, new Observer() { // from class: com.guochao.faceshow.signin.activity.e
            @Override // androidx.lifecycle.Observer
            public final void onChanged(Object obj) {
                UserSigninCenterActivity.m741initView$lambda4(UserSigninCenterActivity.this, (Boolean) obj);
            }
        });
    }

    public final boolean isTodaySigned() {
        return this.isTodaySigned;
    }

    @Override // com.guochao.faceshow.aaspring.base.mvvm.viewmodel.BaseViewModel.ModelUpdateObserver
    public void onModelUpdate(@Nullable BaseModel baseModel) {
    }

    public final void resetSingleFragment() {
        this.fragments.clear();
        this.fragments.add(SigninTaskFragment.Companion.getInstance(1));
        this.fragments.add(ActivityTaskFragment.Companion.getInstance(1));
        final String[] strArr = {getString(R$string.signin_user_center_everyday), getString(R$string.signin_user_center_activity)};
        getViewBinding().viewpager.setVisibility(8);
        getViewBinding().viewpagerSingle.setVisibility(0);
        RtlViewPager rtlViewPager = getViewBinding().viewpagerSingle;
        final FragmentManager supportFragmentManager = getSupportFragmentManager();
        rtlViewPager.setAdapter(new FragmentPagerAdapter(supportFragmentManager) { // from class: com.guochao.faceshow.signin.activity.UserSigninCenterActivity$resetSingleFragment$1
            @Override // androidx.viewpager.widget.PagerAdapter
            public int getCount() {
                return UserSigninCenterActivity.this.getFragments().size();
            }

            @Override // androidx.fragment.app.FragmentPagerAdapter
            @NotNull
            public Fragment getItem(int i9) {
                return UserSigninCenterActivity.this.getFragments().get(i9);
            }

            @Override // androidx.viewpager.widget.PagerAdapter
            @NotNull
            public CharSequence getPageTitle(int i9) {
                String str = strArr[i9];
                Intrinsics.checkNotNullExpressionValue(str, "titles[position]");
                return str;
            }
        });
        getViewBinding().tabs.setupWithViewPager(getViewBinding().viewpagerSingle);
        checkActivityTask();
    }

    public final void setCallBack(@Nullable Function1<? super Boolean, Unit> function1) {
        this.callBack = function1;
    }

    public final void setSignList(@Nullable SigninBean signinBean) {
        this.signList = signinBean;
    }

    public final void setSignedCount(int i9) {
        this.signedCount = i9;
    }

    public final void setTag(@Nullable String str) {
        this.tag = str;
    }

    public final void setTodaySigned(boolean z10) {
        this.isTodaySigned = z10;
    }

    public final void setViewBinding(@NotNull ActivityUserSigninCenterBinding activityUserSigninCenterBinding) {
        Intrinsics.checkNotNullParameter(activityUserSigninCenterBinding, "<set-?>");
        this.viewBinding = activityUserSigninCenterBinding;
    }

    public final void updateSigninSuccess(@Nullable SigninResponse signinResponse) {
        getSupportFragmentManager();
        this.signedCount++;
        this.isTodaySigned = true;
        getViewBinding().tvSignedCount.setText(getString(R$string.signin_perday_signed_tip, new Object[]{String.valueOf(this.signedCount)}));
        TextView textView = getViewBinding().tvSignedCount;
        Intrinsics.checkNotNullExpressionValue(textView, "viewBinding.tvSignedCount");
        setSpannerString(textView, String.valueOf(this.signedCount), ContextCompat.getColor(this, R$color.signin_count_days));
        SigninBean signinBean = this.signList;
        if (signinBean != null) {
            Integer daySign = signinBean.getDaySign();
            signinBean.setDaySign(daySign != null ? Integer.valueOf(daySign.intValue() + 1) : null);
            signinBean.setDayFlag(1);
            if (signinResponse != null) {
                SignInResultDialog.Companion companion = SignInResultDialog.Companion;
                FragmentManager supportFragmentManager = getSupportFragmentManager();
                Intrinsics.checkNotNullExpressionValue(supportFragmentManager, "supportFragmentManager");
                companion.showDialog(supportFragmentManager, signinResponse);
            }
        }
        RecyclerView.Adapter adapter = getViewBinding().recyclerView.getAdapter();
        if (adapter != null) {
            adapter.notifyItemRangeChanged(0, 7);
        }
    }

    @Override // com.guochao.faceshow.aaspring.base.mvvm.activity.GCCoreActivity
    public boolean useBlackTextStatusBar() {
        return false;
    }

    @Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0010\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006H\u0007J\u0018\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\bH\u0007¨\u0006\t"}, d2 = {"Lcom/guochao/faceshow/signin/activity/UserSigninCenterActivity$Companion;", "", "()V", "start", "", "context", "Landroid/content/Context;", "tag", "", "lib_sign_in_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
    /* loaded from: classes4.dex */
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @JvmStatic
        public final void start(@NotNull Context context) {
            Intrinsics.checkNotNullParameter(context, "context");
            context.startActivity(new Intent(context, UserSigninCenterActivity.class));
        }

        @JvmStatic
        public final void start(@NotNull Context context, @NotNull String tag) {
            Intrinsics.checkNotNullParameter(context, "context");
            Intrinsics.checkNotNullParameter(tag, "tag");
            Intent intent = new Intent(context, UserSigninCenterActivity.class);
            intent.putExtra("tag", tag);
            context.startActivity(intent);
        }
    }

    @Override // com.guochao.faceshow.aaspring.base.mvvm.activity.GCBaseMvvmActivity
    @NotNull
    public SigninCenterViewModel getViewModel() {
        return (SigninCenterViewModel) this.viewModel$delegate.getValue();
    }
}
