package com.guochao.faceshow.guild.activity;

import android.content.Intent;
import android.content.res.Resources;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.os.IBinder;
import android.text.Editable;
import android.text.InputFilter;
import android.text.Spanned;
import android.text.TextUtils;
import android.text.TextWatcher;
import android.view.MotionEvent;
import android.view.View;
import android.view.inputmethod.InputMethodManager;
import android.widget.EditText;
import android.widget.TextView;
import androidx.core.os.ConfigurationCompat;
import androidx.core.os.LocaleListCompat;
import androidx.lifecycle.Observer;
import androidx.lifecycle.ViewModelProvider;
import androidx.lifecycle.ViewModelStoreOwner;
import androidx.recyclerview.widget.GridLayoutManager;
import androidx.recyclerview.widget.LinearLayoutManager;
import cn.jpush.android.api.JThirdPlatFormInterface;
import com.facebook.devicerequests.internal.DeviceRequestsHelper;
import com.facebook.share.internal.ShareConstants;
import com.guochao.faceshow.aaspring.base.mvvm.activity.GCBaseMvvmActivity;
import com.guochao.faceshow.aaspring.base.mvvm.annotations.GCViewBinding;
import com.guochao.faceshow.aaspring.base.mvvm.model.BaseModel;
import com.guochao.faceshow.aaspring.base.mvvm.viewmodel.BaseViewModel;
import com.guochao.faceshow.aaspring.base.navigator.ARouterNavigator;
import com.guochao.faceshow.aaspring.base.navigator.RouterPath;
import com.guochao.faceshow.aaspring.beans.LocalImageOrVideoBean;
import com.guochao.faceshow.aaspring.beans.MultiLanguageBean;
import com.guochao.faceshow.aaspring.utils.EmptyUtils;
import com.guochao.faceshow.aaspring.utils.SpUtils;
import com.guochao.faceshow.aaspring.utils.ToastUtils;
import com.guochao.faceshow.adapter.CommonRecyclerAdapter;
import com.guochao.faceshow.bean.CountryData;
import com.guochao.faceshow.context.GCApplication;
import com.guochao.faceshow.guild.R$layout;
import com.guochao.faceshow.guild.R$mipmap;
import com.guochao.faceshow.guild.R$string;
import com.guochao.faceshow.guild.databinding.ActivityApplyContractBinding;
import com.guochao.faceshow.guild.fragment.AgreementWebViewDialog;
import com.guochao.faceshow.guild.view.ObservableScrollView;
import com.guochao.faceshow.guild.viewmodel.ApplyContractViewModel;
import com.guochao.faceshow.session.model.UserSessionModel;
import com.guochao.faceshow.session.viewmodel.UserSessionViewModel;
import com.guochao.faceshow.utils.BaseConfig;
import com.meizu.cloud.pushsdk.notification.model.NotifyType;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Objects;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.LazyThreadSafetyMode;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.StringCompanionObject;
import kotlin.text.StringsKt__StringsJVMKt;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import va.a;
@Metadata(d1 = {"\u0000\u0088\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u000b\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001B\u0005¢\u0006\u0002\u0010\u0004J\b\u0010#\u001a\u00020$H\u0002J\u0012\u0010%\u001a\u00020&2\b\u0010'\u001a\u0004\u0018\u00010(H\u0016J\u0012\u0010)\u001a\u00020$2\b\u0010*\u001a\u0004\u0018\u00010+H\u0002J\b\u0010,\u001a\u00020$H\u0002J\b\u0010-\u001a\u00020$H\u0002J\b\u0010.\u001a\u00020$H\u0002J\u0012\u0010/\u001a\u00020$2\b\u00100\u001a\u0004\u0018\u000101H\u0016J\u0018\u00102\u001a\u00020&2\u0006\u00103\u001a\u0002042\u0006\u00105\u001a\u00020(H\u0002J\b\u00106\u001a\u00020$H\u0002J\"\u00107\u001a\u00020$2\u0006\u00108\u001a\u00020\u00152\u0006\u00109\u001a\u00020\u00152\b\u0010:\u001a\u0004\u0018\u00010;H\u0014J\u0012\u0010<\u001a\u00020$2\b\u0010=\u001a\u0004\u0018\u000101H\u0014J\u0012\u0010>\u001a\u00020$2\b\u0010?\u001a\u0004\u0018\u00010\u0002H\u0016J\u0010\u0010@\u001a\u00020$2\u0006\u00108\u001a\u00020\u0015H\u0002J\b\u0010A\u001a\u00020$H\u0002J\f\u0010B\u001a\u00020$*\u00020\u0018H\u0002J\f\u0010C\u001a\u00020$*\u00020DH\u0002R\u0010\u0010\u0005\u001a\u0004\u0018\u00010\u0006X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\bX\u0082\u000e¢\u0006\u0002\n\u0000R\u0010\u0010\t\u001a\u0004\u0018\u00010\bX\u0082\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\n\u001a\b\u0012\u0004\u0012\u00020\f0\u000bX\u0082\u0004¢\u0006\u0002\n\u0000R\u0016\u0010\r\u001a\n\u0012\u0004\u0012\u00020\u000f\u0018\u00010\u000eX\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u0010\u001a\u00020\bX\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u0011\u001a\u00020\bX\u0082\u000e¢\u0006\u0002\n\u0000R\u0016\u0010\u0012\u001a\n\u0012\u0004\u0012\u00020\u0013\u0018\u00010\u000eX\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u0014\u001a\u00020\u0015X\u0082\u000e¢\u0006\u0002\n\u0000R\u0016\u0010\u0016\u001a\n\u0012\u0004\u0012\u00020\u000f\u0018\u00010\u000eX\u0082\u000e¢\u0006\u0002\n\u0000R$\u0010\u0017\u001a\u00020\u00188\u0006@\u0006X\u0087.¢\u0006\u0014\n\u0000\u0012\u0004\b\u0019\u0010\u0004\u001a\u0004\b\u001a\u0010\u001b\"\u0004\b\u001c\u0010\u001dR\u001b\u0010\u001e\u001a\u00020\u00038VX\u0096\u0084\u0002¢\u0006\f\n\u0004\b!\u0010\"\u001a\u0004\b\u001f\u0010 ¨\u0006E"}, d2 = {"Lcom/guochao/faceshow/guild/activity/ApplyContractActivity;", "Lcom/guochao/faceshow/aaspring/base/mvvm/activity/GCBaseMvvmActivity;", "Lcom/guochao/faceshow/aaspring/base/mvvm/model/BaseModel;", "Lcom/guochao/faceshow/guild/viewmodel/ApplyContractViewModel;", "()V", "agreementWebViewDialog", "Lcom/guochao/faceshow/guild/fragment/AgreementWebViewDialog;", "country_num", "", "guildId", "languageList", "Ljava/util/ArrayList;", "Lcom/guochao/faceshow/aaspring/beans/MultiLanguageBean;", "liveVideoAdapter", "Lcom/guochao/faceshow/adapter/CommonRecyclerAdapter;", "Landroid/net/Uri;", "logo", "phone", "pictureAdapter", "Lcom/guochao/faceshow/aaspring/beans/LocalImageOrVideoBean;", "signType", "", "videoAdapter", "viewBinding", "Lcom/guochao/faceshow/guild/databinding/ActivityApplyContractBinding;", "getViewBinding$annotations", "getViewBinding", "()Lcom/guochao/faceshow/guild/databinding/ActivityApplyContractBinding;", "setViewBinding", "(Lcom/guochao/faceshow/guild/databinding/ActivityApplyContractBinding;)V", "viewModel", "getViewModel", "()Lcom/guochao/faceshow/guild/viewmodel/ApplyContractViewModel;", "viewModel$delegate", "Lkotlin/Lazy;", "checkApplySignEnabled", "", "dispatchTouchEvent", "", "ev", "Landroid/view/MotionEvent;", "hideKeyboard", JThirdPlatFormInterface.KEY_TOKEN, "Landroid/os/IBinder;", "initLiveVideoAdapter", "initPictureAdapter", "initVideoAdapter", "initView", "savedInstanceSate", "Landroid/os/Bundle;", "isShouldHideKeyboard", NotifyType.VIBRATE, "Landroid/view/View;", "event", "liveDataObserve", "onActivityResult", "requestCode", "resultCode", "data", "Landroid/content/Intent;", "onCreate", "savedInstanceState", "onModelUpdate", DeviceRequestsHelper.DEVICE_INFO_MODEL, "selectVideo", "setClickEnvent", "initCountry", "noWhiteSpace", "Landroid/widget/EditText;", "component_guild_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
/* loaded from: classes4.dex */
public final class ApplyContractActivity extends GCBaseMvvmActivity<BaseModel, ApplyContractViewModel> {
    @Nullable
    private AgreementWebViewDialog agreementWebViewDialog;
    @NotNull
    private String country_num;
    @Nullable
    private String guildId;
    @NotNull
    private final ArrayList<MultiLanguageBean> languageList = new ArrayList<>();
    @Nullable
    private CommonRecyclerAdapter<Uri> liveVideoAdapter;
    @NotNull
    private String logo;
    @NotNull
    private String phone;
    @Nullable
    private CommonRecyclerAdapter<LocalImageOrVideoBean> pictureAdapter;
    private int signType;
    @Nullable
    private CommonRecyclerAdapter<Uri> videoAdapter;
    public ActivityApplyContractBinding viewBinding;
    @NotNull
    private final Lazy viewModel$delegate;

    public ApplyContractActivity() {
        Lazy lazy;
        lazy = LazyKt__LazyJVMKt.lazy(LazyThreadSafetyMode.NONE, (Function0) new Function0<ApplyContractViewModel>() { // from class: com.guochao.faceshow.guild.activity.ApplyContractActivity$special$$inlined$lazyViewModel$default$1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final ApplyContractViewModel invoke() {
                BaseViewModel baseViewModel;
                ViewModelStoreOwner viewModelStoreOwner = ViewModelStoreOwner.this;
                String str = r2;
                ViewModelProvider.Factory factory = r3;
                ViewModelProvider viewModelProvider = factory == null ? new ViewModelProvider(viewModelStoreOwner) : new ViewModelProvider(viewModelStoreOwner, factory);
                if (str != null) {
                    baseViewModel = (BaseViewModel) viewModelProvider.get(str, ApplyContractViewModel.class);
                } else {
                    baseViewModel = (BaseViewModel) viewModelProvider.get(ApplyContractViewModel.class);
                }
                Objects.requireNonNull(baseViewModel, "null cannot be cast to non-null type com.guochao.faceshow.guild.viewmodel.ApplyContractViewModel");
                return (ApplyContractViewModel) baseViewModel;
            }
        });
        this.viewModel$delegate = lazy;
        this.phone = "";
        this.logo = "";
        this.country_num = "";
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Code restructure failed: missing block: B:28:0x0083, code lost:
        if (getViewBinding().ivAgreement.isSelected() != false) goto L23;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void checkApplySignEnabled() {
        /*
            r4 = this;
            com.guochao.faceshow.guild.databinding.ActivityApplyContractBinding r0 = r4.getViewBinding()
            android.widget.Button r0 = r0.applySign
            com.guochao.faceshow.guild.viewmodel.ApplyContractViewModel r1 = r4.getViewModel()
            boolean r1 = r1.isPicListEmpty()
            r2 = 1
            r3 = 0
            if (r1 != 0) goto L86
            com.guochao.faceshow.guild.databinding.ActivityApplyContractBinding r1 = r4.getViewBinding()
            android.widget.EditText r1 = r1.emailNumber
            android.text.Editable r1 = r1.getText()
            java.lang.String r1 = r1.toString()
            int r1 = r1.length()
            if (r1 != 0) goto L28
            r1 = 1
            goto L29
        L28:
            r1 = 0
        L29:
            if (r1 != 0) goto L86
            com.guochao.faceshow.guild.databinding.ActivityApplyContractBinding r1 = r4.getViewBinding()
            android.widget.EditText r1 = r1.whatsappNumber
            android.text.Editable r1 = r1.getText()
            java.lang.String r1 = r1.toString()
            int r1 = r1.length()
            if (r1 != 0) goto L41
            r1 = 1
            goto L42
        L41:
            r1 = 0
        L42:
            if (r1 != 0) goto L86
            com.guochao.faceshow.guild.databinding.ActivityApplyContractBinding r1 = r4.getViewBinding()
            android.widget.TextView r1 = r1.masteryOfLanguage
            java.lang.CharSequence r1 = r1.getText()
            java.lang.String r1 = r1.toString()
            int r1 = r1.length()
            if (r1 != 0) goto L5a
            r1 = 1
            goto L5b
        L5a:
            r1 = 0
        L5b:
            if (r1 != 0) goto L86
            com.guochao.faceshow.guild.viewmodel.ApplyContractViewModel r1 = r4.getViewModel()
            androidx.lifecycle.MutableLiveData r1 = r1.getVideoRecordScreenLiveData()
            java.lang.Object r1 = r1.getValue()
            java.util.Collection r1 = (java.util.Collection) r1
            if (r1 == 0) goto L76
            boolean r1 = r1.isEmpty()
            if (r1 == 0) goto L74
            goto L76
        L74:
            r1 = 0
            goto L77
        L76:
            r1 = 1
        L77:
            if (r1 != 0) goto L86
            com.guochao.faceshow.guild.databinding.ActivityApplyContractBinding r1 = r4.getViewBinding()
            android.widget.ImageView r1 = r1.ivAgreement
            boolean r1 = r1.isSelected()
            if (r1 == 0) goto L86
            goto L87
        L86:
            r2 = 0
        L87:
            r0.setEnabled(r2)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.guochao.faceshow.guild.activity.ApplyContractActivity.checkApplySignEnabled():void");
    }

    @GCViewBinding
    public static /* synthetic */ void getViewBinding$annotations() {
    }

    private final void hideKeyboard(IBinder iBinder) {
        if (iBinder == null) {
            return;
        }
        Object systemService = getSystemService("input_method");
        InputMethodManager inputMethodManager = systemService instanceof InputMethodManager ? (InputMethodManager) systemService : null;
        if (inputMethodManager == null) {
            return;
        }
        inputMethodManager.hideSoftInputFromWindow(iBinder, 2);
    }

    private final void initCountry(final ActivityApplyContractBinding activityApplyContractBinding) {
        if (TextUtils.isEmpty(this.phone)) {
            final String str = null;
            if (Build.VERSION.SDK_INT >= 24) {
                LocaleListCompat locales = ConfigurationCompat.getLocales(Resources.getSystem().getConfiguration());
                Intrinsics.checkNotNullExpressionValue(locales, "getLocales(Resources.getSystem().configuration)");
                Locale locale = locales.get(0);
                if (!TextUtils.isEmpty(locale != null ? locale.getCountry() : null)) {
                    Locale locale2 = locales.get(0);
                    if (locale2 != null) {
                        str = locale2.getCountry();
                    }
                }
                str = "US";
            } else {
                if (!TextUtils.isEmpty(Locale.getDefault().getCountry())) {
                    str = Locale.getDefault().getCountry();
                }
                str = "US";
            }
            va.a.b(this, new a.d() { // from class: com.guochao.faceshow.guild.activity.ApplyContractActivity$initCountry$1
                @Override // va.a.d
                public void onResponse(@Nullable CountryData countryData) {
                    String str2;
                    String str3;
                    String str4;
                    boolean equals;
                    if (countryData != null) {
                        ApplyContractActivity applyContractActivity = ApplyContractActivity.this;
                        String countryNum = countryData.getCountryNum();
                        Intrinsics.checkNotNullExpressionValue(countryNum, "countryBean.countryNum");
                        applyContractActivity.country_num = countryNum;
                        ApplyContractActivity applyContractActivity2 = ApplyContractActivity.this;
                        String logo = countryData.getLogo();
                        Intrinsics.checkNotNullExpressionValue(logo, "countryBean.logo");
                        applyContractActivity2.logo = logo;
                        if (!TextUtils.isEmpty(countryData.getCoding())) {
                            str3 = ApplyContractActivity.this.country_num;
                            if (Intrinsics.areEqual("1", str3)) {
                                equals = StringsKt__StringsJVMKt.equals(countryData.getCoding(), "US", true);
                                if (equals) {
                                    activityApplyContractBinding.rvCountry.setImageResource(R$mipmap.ic_country_america);
                                } else {
                                    activityApplyContractBinding.rvCountry.setImageResource(R$mipmap.ic_country_canada);
                                }
                            } else {
                                com.bumptech.glide.h x10 = com.bumptech.glide.c.x(ApplyContractActivity.this);
                                str4 = ApplyContractActivity.this.logo;
                                com.bumptech.glide.g<Drawable> r10 = x10.r(str4);
                                int i9 = R$mipmap.ic_earth;
                                r10.b0(i9).l(i9).Q0(activityApplyContractBinding.rvCountry);
                            }
                        }
                        TextView textView = activityApplyContractBinding.tvCountry;
                        StringCompanionObject stringCompanionObject = StringCompanionObject.INSTANCE;
                        str2 = ApplyContractActivity.this.country_num;
                        String format = String.format("+%s", Arrays.copyOf(new Object[]{str2}, 1));
                        Intrinsics.checkNotNullExpressionValue(format, "format(format, *args)");
                        textView.setText(format);
                        return;
                    }
                    final ApplyContractActivity applyContractActivity3 = ApplyContractActivity.this;
                    final String str5 = str;
                    final ActivityApplyContractBinding activityApplyContractBinding2 = activityApplyContractBinding;
                    va.a.a(applyContractActivity3, new a.c() { // from class: com.guochao.faceshow.guild.activity.ApplyContractActivity$initCountry$1$onResponse$1
                        @Override // va.a.c
                        public void onResponse(@Nullable List<? extends CountryData> list) {
                            boolean equals2;
                            String str6;
                            String str7;
                            if (list == null) {
                                return;
                            }
                            for (CountryData countryData2 : list) {
                                equals2 = StringsKt__StringsJVMKt.equals(countryData2.getCoding(), str5, true);
                                if (equals2) {
                                    ApplyContractActivity applyContractActivity4 = applyContractActivity3;
                                    String countryNum2 = countryData2.getCountryNum();
                                    Intrinsics.checkNotNullExpressionValue(countryNum2, "cb.countryNum");
                                    applyContractActivity4.country_num = countryNum2;
                                    ApplyContractActivity applyContractActivity5 = applyContractActivity3;
                                    String logo2 = countryData2.getLogo();
                                    Intrinsics.checkNotNullExpressionValue(logo2, "cb.logo");
                                    applyContractActivity5.logo = logo2;
                                    com.bumptech.glide.h x11 = com.bumptech.glide.c.x(applyContractActivity3);
                                    str6 = applyContractActivity3.logo;
                                    com.bumptech.glide.g<Drawable> r11 = x11.r(str6);
                                    int i10 = R$mipmap.ic_earth;
                                    r11.b0(i10).l(i10).Q0(activityApplyContractBinding2.rvCountry);
                                    TextView textView2 = activityApplyContractBinding2.tvCountry;
                                    StringCompanionObject stringCompanionObject2 = StringCompanionObject.INSTANCE;
                                    str7 = applyContractActivity3.country_num;
                                    String format2 = String.format("+%s", Arrays.copyOf(new Object[]{str7}, 1));
                                    Intrinsics.checkNotNullExpressionValue(format2, "format(format, *args)");
                                    textView2.setText(format2);
                                    return;
                                }
                            }
                        }
                    });
                }
            });
            return;
        }
        activityApplyContractBinding.etPhone.setText(this.phone);
        activityApplyContractBinding.etPhone.setSelection(this.phone.length());
        if (!EmptyUtils.isEmpty(this.logo)) {
            com.bumptech.glide.g<Drawable> r10 = com.bumptech.glide.c.x(this).r(this.logo);
            int i9 = R$mipmap.ic_earth;
            r10.b0(i9).l(i9).Q0(activityApplyContractBinding.rvCountry);
        }
        if (EmptyUtils.isEmpty(this.country_num)) {
            return;
        }
        TextView textView = activityApplyContractBinding.tvCountry;
        StringCompanionObject stringCompanionObject = StringCompanionObject.INSTANCE;
        String format = String.format("+%s", Arrays.copyOf(new Object[]{this.country_num}, 1));
        Intrinsics.checkNotNullExpressionValue(format, "format(format, *args)");
        textView.setText(format);
    }

    private final void initLiveVideoAdapter() {
        this.liveVideoAdapter = new ApplyContractActivity$initLiveVideoAdapter$1(this, getViewModel().getOtherVideoUrlList().getValue(), R$layout.guild_upload_data_cover);
        getViewBinding().liveRecordScreen.setLayoutManager(new LinearLayoutManager(this, 0, false));
        getViewBinding().liveRecordScreen.setAdapter(this.liveVideoAdapter);
    }

    private final void initPictureAdapter() {
        getViewModel().addAddPicButton();
        this.pictureAdapter = new ApplyContractActivity$initPictureAdapter$1(this, getViewModel().getSelectPictureList().getValue(), R$layout.guild_upload_picture_item);
        getViewBinding().pictureList.setLayoutManager(new GridLayoutManager(this, 4));
        getViewBinding().pictureList.setAdapter(this.pictureAdapter);
    }

    private final void initVideoAdapter() {
        this.videoAdapter = new ApplyContractActivity$initVideoAdapter$1(this, getViewModel().getOtherVideoUrlList().getValue(), R$layout.guild_upload_data_cover);
        getViewBinding().otherVideoList.setLayoutManager(new LinearLayoutManager(this, 0, false));
        getViewBinding().otherVideoList.setAdapter(this.videoAdapter);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: initView$lambda-4$lambda-3  reason: not valid java name */
    public static final void m682initView$lambda4$lambda3(ApplyContractActivity this$0, ObservableScrollView observableScrollView, int i9, int i10, int i11, int i12) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        if (i10 != 0) {
            this$0.hideKeyboard(observableScrollView.getWindowToken());
        }
    }

    private final boolean isShouldHideKeyboard(View view, MotionEvent motionEvent) {
        if (view instanceof EditText) {
            int[] iArr = {0, 0};
            view.getLocationInWindow(iArr);
            int i9 = iArr[0];
            int i10 = iArr[1];
            return motionEvent.getX() <= ((float) i9) || motionEvent.getX() >= ((float) (view.getWidth() + i9)) || motionEvent.getY() <= ((float) i10) || motionEvent.getY() >= ((float) (view.getHeight() + i10));
        }
        return false;
    }

    private final void liveDataObserve() {
        getViewModel().getVideoRecordScreenLiveData().observe(this, new Observer() { // from class: com.guochao.faceshow.guild.activity.c
            @Override // androidx.lifecycle.Observer
            public final void onChanged(Object obj) {
                ApplyContractActivity.m683liveDataObserve$lambda19(ApplyContractActivity.this, (ArrayList) obj);
            }
        });
        getViewModel().getOtherVideoUrlList().observe(this, new Observer() { // from class: com.guochao.faceshow.guild.activity.m
            @Override // androidx.lifecycle.Observer
            public final void onChanged(Object obj) {
                ApplyContractActivity.m684liveDataObserve$lambda20(ApplyContractActivity.this, (ArrayList) obj);
            }
        });
        getViewModel().getSelectPictureList().observe(this, new Observer() { // from class: com.guochao.faceshow.guild.activity.b
            @Override // androidx.lifecycle.Observer
            public final void onChanged(Object obj) {
                ApplyContractActivity.m685liveDataObserve$lambda22(ApplyContractActivity.this, (ArrayList) obj);
            }
        });
        getViewModel().getApplyResultLiveData().observe(this, new Observer() { // from class: com.guochao.faceshow.guild.activity.l
            @Override // androidx.lifecycle.Observer
            public final void onChanged(Object obj) {
                ApplyContractActivity.m686liveDataObserve$lambda24(ApplyContractActivity.this, (Boolean) obj);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: liveDataObserve$lambda-19  reason: not valid java name */
    public static final void m683liveDataObserve$lambda19(ApplyContractActivity this$0, ArrayList it) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        CommonRecyclerAdapter<Uri> commonRecyclerAdapter = this$0.liveVideoAdapter;
        if (commonRecyclerAdapter != null) {
            Intrinsics.checkNotNullExpressionValue(it, "it");
            commonRecyclerAdapter.setData(it);
        }
        ArrayList<Uri> value = this$0.getViewModel().getVideoRecordScreenLiveData().getValue();
        if (value != null && value.size() == 3) {
            this$0.getViewBinding().uploadLiveRecordScreen.setVisibility(8);
        } else {
            this$0.getViewBinding().uploadLiveRecordScreen.setVisibility(0);
        }
        this$0.checkApplySignEnabled();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: liveDataObserve$lambda-20  reason: not valid java name */
    public static final void m684liveDataObserve$lambda20(ApplyContractActivity this$0, ArrayList it) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        CommonRecyclerAdapter<Uri> commonRecyclerAdapter = this$0.videoAdapter;
        if (commonRecyclerAdapter != null) {
            Intrinsics.checkNotNullExpressionValue(it, "it");
            commonRecyclerAdapter.setData(it);
        }
        ArrayList<Uri> value = this$0.getViewModel().getOtherVideoUrlList().getValue();
        if (value != null && value.size() == 3) {
            this$0.getViewBinding().uploadOtherVideo.setVisibility(8);
        } else {
            this$0.getViewBinding().uploadOtherVideo.setVisibility(0);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: liveDataObserve$lambda-22  reason: not valid java name */
    public static final void m685liveDataObserve$lambda22(ApplyContractActivity this$0, ArrayList arrayList) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        if (arrayList != null) {
            CommonRecyclerAdapter<LocalImageOrVideoBean> commonRecyclerAdapter = this$0.pictureAdapter;
            if (commonRecyclerAdapter != null) {
                commonRecyclerAdapter.setData(arrayList);
            }
            this$0.checkApplySignEnabled();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: liveDataObserve$lambda-24  reason: not valid java name */
    public static final void m686liveDataObserve$lambda24(ApplyContractActivity this$0, Boolean it) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.dismissLoading();
        Intrinsics.checkNotNullExpressionValue(it, "it");
        if (it.booleanValue()) {
            String string = this$0.getString(R$string.feedback_feedback_success);
            Intrinsics.checkNotNullExpressionValue(string, "getString(R.string.feedback_feedback_success)");
            ToastUtils.showToast$default(this$0, string, 0, 0, 12, null);
            this$0.startActivity(new Intent(this$0, ContractResultActivity.class));
            this$0.setResult(-1);
            this$0.finish();
            return;
        }
        String string2 = this$0.getString(R$string.signed_fail);
        Intrinsics.checkNotNullExpressionValue(string2, "getString(R.string.signed_fail)");
        ToastUtils.showToast$default(this$0, string2, 0, 0, 12, null);
    }

    private final void noWhiteSpace(EditText editText) {
        editText.setFilters(new ApplyContractActivity$noWhiteSpace$1[]{new InputFilter() { // from class: com.guochao.faceshow.guild.activity.ApplyContractActivity$noWhiteSpace$1
            @Override // android.text.InputFilter
            @Nullable
            public CharSequence filter(@Nullable CharSequence charSequence, int i9, int i10, @Nullable Spanned spanned, int i11, int i12) {
                if (Intrinsics.areEqual(" ", charSequence)) {
                    return "";
                }
                return null;
            }
        }});
    }

    private final void selectVideo(int i9) {
        Bundle bundle = new Bundle();
        bundle.putInt("mode", 102);
        bundle.putInt("max", 60);
        new ARouterNavigator(this, RouterPath.ROUTER_APP_SELECT_PHOTOACTIVITY).withParams(bundle).requestCode(i9).go();
    }

    private final void setClickEnvent() {
        final ActivityApplyContractBinding viewBinding = getViewBinding();
        viewBinding.uploadLiveRecordScreen.setOnClickListener(new View.OnClickListener() { // from class: com.guochao.faceshow.guild.activity.e
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                ApplyContractActivity.m692setClickEnvent$lambda18$lambda6(ApplyContractActivity.this, view);
            }
        });
        viewBinding.uploadOtherVideo.setOnClickListener(new View.OnClickListener() { // from class: com.guochao.faceshow.guild.activity.f
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                ApplyContractActivity.m693setClickEnvent$lambda18$lambda7(ApplyContractActivity.this, view);
            }
        });
        viewBinding.applySign.setOnClickListener(new View.OnClickListener() { // from class: com.guochao.faceshow.guild.activity.g
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                ApplyContractActivity.m694setClickEnvent$lambda18$lambda9(ApplyContractActivity.this, view);
            }
        });
        viewBinding.llCountryHide.setOnClickListener(new View.OnClickListener() { // from class: com.guochao.faceshow.guild.activity.h
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                ApplyContractActivity.m687setClickEnvent$lambda18$lambda10(ApplyContractActivity.this, view);
            }
        });
        viewBinding.llMasteryOfLanguage.setOnClickListener(new View.OnClickListener() { // from class: com.guochao.faceshow.guild.activity.a
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                ApplyContractActivity.m688setClickEnvent$lambda18$lambda11(ApplyContractActivity.this, view);
            }
        });
        viewBinding.ivAgreement.setOnClickListener(new View.OnClickListener() { // from class: com.guochao.faceshow.guild.activity.j
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                ApplyContractActivity.m689setClickEnvent$lambda18$lambda12(ActivityApplyContractBinding.this, this, view);
            }
        });
        viewBinding.agreementTip.setOnClickListener(new View.OnClickListener() { // from class: com.guochao.faceshow.guild.activity.i
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                ApplyContractActivity.m690setClickEnvent$lambda18$lambda15(ApplyContractActivity.this, viewBinding, view);
            }
        });
        viewBinding.applySign.setOnClickListener(new View.OnClickListener() { // from class: com.guochao.faceshow.guild.activity.k
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                ApplyContractActivity.m691setClickEnvent$lambda18$lambda17(ActivityApplyContractBinding.this, this, view);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: setClickEnvent$lambda-18$lambda-10  reason: not valid java name */
    public static final void m687setClickEnvent$lambda18$lambda10(ApplyContractActivity this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        new ARouterNavigator(this$0, RouterPath.ROUTER_CHOOSE_COUNTRY_ACTIVITY).requestCode(this$0.getViewModel().getCOUNTRY()).go();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: setClickEnvent$lambda-18$lambda-11  reason: not valid java name */
    public static final void m688setClickEnvent$lambda18$lambda11(ApplyContractActivity this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        if (va.b.a(view)) {
            Bundle bundle = new Bundle();
            ArrayList<MultiLanguageBean> arrayList = this$0.languageList;
            Intrinsics.checkNotNull(arrayList, "null cannot be cast to non-null type java.util.ArrayList<out android.os.Parcelable>");
            bundle.putParcelableArrayList(BaseConfig.RESUlT_FIND_LANGUAGE, arrayList);
            new ARouterNavigator(this$0, RouterPath.ROUTER_CHOOSE_LANGUAGE_ACTIVITY).withParams(bundle).requestCode(this$0.getViewModel().getLANGUAGE()).go();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: setClickEnvent$lambda-18$lambda-12  reason: not valid java name */
    public static final void m689setClickEnvent$lambda18$lambda12(ActivityApplyContractBinding this_apply, ApplyContractActivity this$0, View view) {
        Intrinsics.checkNotNullParameter(this_apply, "$this_apply");
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this_apply.ivAgreement.setSelected(!this$0.getViewBinding().ivAgreement.isSelected());
        this$0.checkApplySignEnabled();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: setClickEnvent$lambda-18$lambda-15  reason: not valid java name */
    public static final void m690setClickEnvent$lambda18$lambda15(ApplyContractActivity this$0, ActivityApplyContractBinding this_apply, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(this_apply, "$this_apply");
        AgreementWebViewDialog agreementWebViewDialog = this$0.agreementWebViewDialog;
        if (agreementWebViewDialog != null) {
            agreementWebViewDialog.show(this$0.getSupportFragmentManager(), "AgreementWebViewDialog");
            return;
        }
        AgreementWebViewDialog agreementWebViewDialog2 = new AgreementWebViewDialog();
        this$0.agreementWebViewDialog = agreementWebViewDialog2;
        agreementWebViewDialog2.show(this$0.getSupportFragmentManager(), "AgreementWebViewDialog");
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Code restructure failed: missing block: B:7:0x0030, code lost:
        if (r3 == false) goto L7;
     */
    /* renamed from: setClickEnvent$lambda-18$lambda-17  reason: not valid java name */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final void m691setClickEnvent$lambda18$lambda17(com.guochao.faceshow.guild.databinding.ActivityApplyContractBinding r24, com.guochao.faceshow.guild.activity.ApplyContractActivity r25, android.view.View r26) {
        /*
            Method dump skipped, instructions count: 529
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.guochao.faceshow.guild.activity.ApplyContractActivity.m691setClickEnvent$lambda18$lambda17(com.guochao.faceshow.guild.databinding.ActivityApplyContractBinding, com.guochao.faceshow.guild.activity.ApplyContractActivity, android.view.View):void");
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: setClickEnvent$lambda-18$lambda-6  reason: not valid java name */
    public static final void m692setClickEnvent$lambda18$lambda6(ApplyContractActivity this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.selectVideo(this$0.getViewModel().getVIDEO_RECORD_SCREEN());
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: setClickEnvent$lambda-18$lambda-7  reason: not valid java name */
    public static final void m693setClickEnvent$lambda18$lambda7(ApplyContractActivity this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.selectVideo(this$0.getViewModel().getOTHER_VIDEO());
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: setClickEnvent$lambda-18$lambda-9  reason: not valid java name */
    public static final void m694setClickEnvent$lambda18$lambda9(ApplyContractActivity this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.startActivity(new Intent(this$0, ContractResultActivity.class));
    }

    @Override // android.app.Activity, android.view.Window.Callback
    public boolean dispatchTouchEvent(@Nullable MotionEvent motionEvent) {
        View currentFocus;
        boolean z10 = false;
        if (motionEvent != null && motionEvent.getAction() == 0) {
            z10 = true;
        }
        if (z10 && (currentFocus = getCurrentFocus()) != null && isShouldHideKeyboard(currentFocus, motionEvent)) {
            hideKeyboard(currentFocus.getWindowToken());
        }
        return super.dispatchTouchEvent(motionEvent);
    }

    @NotNull
    public final ActivityApplyContractBinding getViewBinding() {
        ActivityApplyContractBinding activityApplyContractBinding = this.viewBinding;
        if (activityApplyContractBinding != null) {
            return activityApplyContractBinding;
        }
        Intrinsics.throwUninitializedPropertyAccessException("viewBinding");
        return null;
    }

    @Override // com.guochao.faceshow.aaspring.base.mvvm.activity.GCCoreActivity
    public void initView(@Nullable Bundle bundle) {
        setTitle(getString(R$string.apply_contract));
        setClickEnvent();
        initLiveVideoAdapter();
        initVideoAdapter();
        initPictureAdapter();
        liveDataObserve();
        ActivityApplyContractBinding viewBinding = getViewBinding();
        UserSessionModel current = UserSessionViewModel.Companion.instance().current();
        this.phone = (current == null || (r0 = current.getPhoneNumber()) == null) ? "" : "";
        String str = SpUtils.getStr(GCApplication.app(), "logo");
        Intrinsics.checkNotNullExpressionValue(str, "getStr(GCApplication.app(), \"logo\")");
        this.logo = str;
        String str2 = SpUtils.getStr(GCApplication.app(), "country_num");
        Intrinsics.checkNotNullExpressionValue(str2, "getStr(GCApplication.app(), \"country_num\")");
        this.country_num = str2;
        viewBinding.etPhone.setHint(getString(R$string.guild_input_phone_account));
        EditText editText = viewBinding.emailNumber;
        int i9 = R$string.guild_input_all_account;
        editText.setHint(getString(i9, new Object[]{getString(R$string.email)}));
        viewBinding.whatsappNumber.setHint(getString(i9, new Object[]{getString(R$string.WhatsApp)}));
        viewBinding.facebookNumber.setHint(getString(i9, new Object[]{getString(R$string.Facebook)}));
        viewBinding.instagramNumber.setHint(getString(i9, new Object[]{getString(R$string.Instagram)}));
        viewBinding.invitationCode.setHint(getString(i9, new Object[]{getString(R$string.invitation_code)}));
        initCountry(viewBinding);
        EditText emailNumber = viewBinding.emailNumber;
        Intrinsics.checkNotNullExpressionValue(emailNumber, "emailNumber");
        emailNumber.addTextChangedListener(new TextWatcher() { // from class: com.guochao.faceshow.guild.activity.ApplyContractActivity$initView$lambda-4$$inlined$addTextChangedListener$default$1
            @Override // android.text.TextWatcher
            public void afterTextChanged(@Nullable Editable editable) {
                ApplyContractActivity.this.checkApplySignEnabled();
            }

            @Override // android.text.TextWatcher
            public void beforeTextChanged(@Nullable CharSequence charSequence, int i10, int i11, int i12) {
            }

            @Override // android.text.TextWatcher
            public void onTextChanged(@Nullable CharSequence charSequence, int i10, int i11, int i12) {
            }
        });
        EditText whatsappNumber = viewBinding.whatsappNumber;
        Intrinsics.checkNotNullExpressionValue(whatsappNumber, "whatsappNumber");
        whatsappNumber.addTextChangedListener(new TextWatcher() { // from class: com.guochao.faceshow.guild.activity.ApplyContractActivity$initView$lambda-4$$inlined$addTextChangedListener$default$2
            @Override // android.text.TextWatcher
            public void afterTextChanged(@Nullable Editable editable) {
                ApplyContractActivity.this.checkApplySignEnabled();
            }

            @Override // android.text.TextWatcher
            public void beforeTextChanged(@Nullable CharSequence charSequence, int i10, int i11, int i12) {
            }

            @Override // android.text.TextWatcher
            public void onTextChanged(@Nullable CharSequence charSequence, int i10, int i11, int i12) {
            }
        });
        viewBinding.scrollVeiw.setScrollViewListener(new ObservableScrollView.a() { // from class: com.guochao.faceshow.guild.activity.d
            @Override // com.guochao.faceshow.guild.view.ObservableScrollView.a
            public final void a(ObservableScrollView observableScrollView, int i10, int i11, int i12, int i13) {
                ApplyContractActivity.m682initView$lambda4$lambda3(ApplyContractActivity.this, observableScrollView, i10, i11, i12, i13);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, android.app.Activity
    public void onActivityResult(int i9, int i10, @Nullable Intent intent) {
        String stringExtra;
        String stringExtra2;
        Bundle extras;
        Bundle extras2;
        Bundle extras3;
        Bundle extras4;
        super.onActivityResult(i9, i10, intent);
        Object obj = null;
        r3 = null;
        ArrayList arrayList = null;
        r3 = null;
        Object obj2 = null;
        obj = null;
        if (i10 != -1) {
            if (i10 != 1003) {
                getViewModel().addAddPicButton();
            } else if (i9 == getViewModel().getLANGUAGE()) {
                if (intent != null && (extras4 = intent.getExtras()) != null) {
                    arrayList = extras4.getParcelableArrayList(BaseConfig.RESUlT_FIND_LANGUAGE);
                }
                Intrinsics.checkNotNull(arrayList);
                this.languageList.clear();
                if (!arrayList.isEmpty()) {
                    StringBuilder sb2 = new StringBuilder();
                    if (arrayList.size() > 0) {
                        this.languageList.addAll(arrayList);
                    }
                    Iterator<MultiLanguageBean> it = this.languageList.iterator();
                    while (it.hasNext()) {
                        sb2.append(it.next().getLanguage());
                        sb2.append(" , ");
                    }
                    getViewBinding().masteryOfLanguage.setText(sb2.substring(0, sb2.length() - 3));
                } else {
                    getViewBinding().masteryOfLanguage.setText("");
                }
                checkApplySignEnabled();
            }
        } else if (i9 == getViewModel().getVIDEO_RECORD_SCREEN()) {
            if (intent != null && (extras3 = intent.getExtras()) != null) {
                obj2 = extras3.get(ShareConstants.MEDIA_URI);
            }
            Intrinsics.checkNotNull(obj2, "null cannot be cast to non-null type android.net.Uri");
            getViewModel().addVideoRecordScreenLive((Uri) obj2);
            checkApplySignEnabled();
        } else if (i9 == getViewModel().getOTHER_VIDEO()) {
            if (intent != null && (extras2 = intent.getExtras()) != null) {
                obj = extras2.get(ShareConstants.MEDIA_URI);
            }
            Intrinsics.checkNotNull(obj, "null cannot be cast to non-null type android.net.Uri");
            getViewModel().addOtherVideo((Uri) obj);
        } else if (i9 == getViewModel().getPICTURE()) {
            if (intent == null || (extras = intent.getExtras()) == null) {
                return;
            }
            ArrayList<LocalImageOrVideoBean> parcelableArrayList = extras.getParcelableArrayList(ShareConstants.WEB_DIALOG_PARAM_MEDIA);
            Intrinsics.checkNotNull(parcelableArrayList);
            getViewModel().addPicture(parcelableArrayList);
            checkApplySignEnabled();
        } else if (i9 == getViewModel().getCOUNTRY()) {
            if (intent != null && (stringExtra2 = intent.getStringExtra("country_num")) != null) {
                this.country_num = stringExtra2;
                TextView textView = getViewBinding().tvCountry;
                StringCompanionObject stringCompanionObject = StringCompanionObject.INSTANCE;
                String format = String.format("+%s", Arrays.copyOf(new Object[]{this.country_num}, 1));
                Intrinsics.checkNotNullExpressionValue(format, "format(format, *args)");
                textView.setText(format);
            }
            if (intent == null || (stringExtra = intent.getStringExtra("logo")) == null) {
                return;
            }
            this.logo = stringExtra;
            com.bumptech.glide.g<Drawable> r10 = com.bumptech.glide.c.x(this).r(this.logo);
            int i11 = R$mipmap.ic_earth;
            r10.b0(i11).l(i11).Q0(getViewBinding().rvCountry);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.guochao.faceshow.aaspring.base.mvvm.activity.GCBaseMvvmActivity, com.guochao.faceshow.aaspring.base.mvvm.activity.GCCoreActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(@Nullable Bundle bundle) {
        getWindow().setSoftInputMode(32);
        super.onCreate(bundle);
        Bundle extras = getIntent().getExtras();
        this.guildId = extras != null ? extras.getString("guildId") : null;
        ActivityApplyContractBinding viewBinding = getViewBinding();
        EditText etPhone = viewBinding.etPhone;
        Intrinsics.checkNotNullExpressionValue(etPhone, "etPhone");
        noWhiteSpace(etPhone);
        EditText emailNumber = viewBinding.emailNumber;
        Intrinsics.checkNotNullExpressionValue(emailNumber, "emailNumber");
        noWhiteSpace(emailNumber);
        EditText whatsappNumber = viewBinding.whatsappNumber;
        Intrinsics.checkNotNullExpressionValue(whatsappNumber, "whatsappNumber");
        noWhiteSpace(whatsappNumber);
        EditText facebookNumber = viewBinding.facebookNumber;
        Intrinsics.checkNotNullExpressionValue(facebookNumber, "facebookNumber");
        noWhiteSpace(facebookNumber);
        EditText instagramNumber = viewBinding.instagramNumber;
        Intrinsics.checkNotNullExpressionValue(instagramNumber, "instagramNumber");
        noWhiteSpace(instagramNumber);
        String str = this.guildId;
        int i9 = 1;
        if (str == null || str.length() == 0) {
            viewBinding.textView15.setText(getString(R$string.commit_platform_tips));
            viewBinding.invitationCode.setVisibility(0);
            viewBinding.requiredTextView8.setVisibility(0);
        } else {
            viewBinding.textView15.setText(getString(R$string.commit_tips));
            viewBinding.requiredTextView8.setVisibility(8);
            viewBinding.invitationCode.setVisibility(8);
            i9 = 0;
        }
        this.signType = i9;
    }

    @Override // com.guochao.faceshow.aaspring.base.mvvm.viewmodel.BaseViewModel.ModelUpdateObserver
    public void onModelUpdate(@Nullable BaseModel baseModel) {
    }

    public final void setViewBinding(@NotNull ActivityApplyContractBinding activityApplyContractBinding) {
        Intrinsics.checkNotNullParameter(activityApplyContractBinding, "<set-?>");
        this.viewBinding = activityApplyContractBinding;
    }

    @Override // com.guochao.faceshow.aaspring.base.mvvm.activity.GCBaseMvvmActivity
    @NotNull
    public ApplyContractViewModel getViewModel() {
        return (ApplyContractViewModel) this.viewModel$delegate.getValue();
    }
}
