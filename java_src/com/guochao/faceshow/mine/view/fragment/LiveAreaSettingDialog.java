package com.guochao.faceshow.mine.view.fragment;

import android.app.Dialog;
import android.content.Context;
import android.os.Bundle;
import android.text.TextUtils;
import android.view.View;
import android.view.Window;
import android.view.WindowManager;
import android.widget.TextView;
import androidx.appcompat.app.AppCompatDialog;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentManager;
import androidx.fragment.app.FragmentPagerAdapter;
import androidx.recyclerview.widget.RecyclerView;
import com.facebook.appevents.UserDataStore;
import com.guochao.faceshow.R;
import com.guochao.faceshow.aaspring.base.http.request.PostRequest;
import com.guochao.faceshow.aaspring.base.http.response.FaceCastBaseResponse;
import com.guochao.faceshow.aaspring.base.mvvm.annotations.GCViewBinding;
import com.guochao.faceshow.aaspring.base.mvvm.fragment.GCCoreFragment;
import com.guochao.faceshow.aaspring.base.utils.ViewExtendsKt;
import com.guochao.faceshow.aaspring.beans.CountryStateBean;
import com.guochao.faceshow.aaspring.utils.SpUtils;
import com.guochao.faceshow.aaspring.utils.ToastUtils;
import com.guochao.faceshow.aaspring.views.NoScrollViewPager;
import com.guochao.faceshow.databinding.DialogLiveAreaSettingBinding;
import com.guochao.faceshow.mine.view.fragment.LiveAreaSettingDialog;
import com.guochao.faceshow.utils.Contants;
import java.util.ArrayList;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.JvmStatic;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(d1 = {"\u0000^\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0007\u0018\u0000 -2\u00020\u0001:\u0002-.B\u0005¢\u0006\u0002\u0010\u0002J\u000e\u0010!\u001a\u00020\"2\u0006\u0010#\u001a\u00020\u0012J\u001a\u0010$\u001a\u00020\"2\u0006\u0010%\u001a\u00020&2\b\u0010'\u001a\u0004\u0018\u00010(H\u0014J\u0012\u0010)\u001a\u00020\"2\b\u0010'\u001a\u0004\u0018\u00010(H\u0016J\u0012\u0010*\u001a\u00020+2\b\u0010'\u001a\u0004\u0018\u00010(H\u0016J\b\u0010,\u001a\u00020\"H\u0002R\u0017\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0006\u0010\u0007R\u0017\u0010\b\u001a\b\u0012\u0004\u0012\u00020\t0\u0004¢\u0006\b\n\u0000\u001a\u0004\b\n\u0010\u0007R\u001c\u0010\u000b\u001a\u0004\u0018\u00010\fX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\r\u0010\u000e\"\u0004\b\u000f\u0010\u0010R\u001c\u0010\u0011\u001a\u0004\u0018\u00010\u0012X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0013\u0010\u0014\"\u0004\b\u0015\u0010\u0016R\u0017\u0010\u0017\u001a\b\u0012\u0004\u0012\u00020\u00180\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0019\u0010\u0007R$\u0010\u001a\u001a\u00020\u001b8\u0006@\u0006X\u0087.¢\u0006\u0014\n\u0000\u0012\u0004\b\u001c\u0010\u0002\u001a\u0004\b\u001d\u0010\u001e\"\u0004\b\u001f\u0010 ¨\u0006/"}, d2 = {"Lcom/guochao/faceshow/mine/view/fragment/LiveAreaSettingDialog;", "Lcom/guochao/faceshow/aaspring/base/mvvm/fragment/GCCoreFragment;", "()V", "fragments", "", "Landroidx/fragment/app/Fragment;", "getFragments", "()Ljava/util/List;", "list", "Lcom/guochao/faceshow/aaspring/beans/CountryStateBean;", "getList", "onDismissListener", "Lcom/guochao/faceshow/mine/view/fragment/LiveAreaSettingDialog$OnDismissListener;", "getOnDismissListener", "()Lcom/guochao/faceshow/mine/view/fragment/LiveAreaSettingDialog$OnDismissListener;", "setOnDismissListener", "(Lcom/guochao/faceshow/mine/view/fragment/LiveAreaSettingDialog$OnDismissListener;)V", "selectCountry", "Lcom/guochao/faceshow/aaspring/beans/CountryStateBean$Country;", "getSelectCountry", "()Lcom/guochao/faceshow/aaspring/beans/CountryStateBean$Country;", "setSelectCountry", "(Lcom/guochao/faceshow/aaspring/beans/CountryStateBean$Country;)V", "titles", "", "getTitles", "viewBinding", "Lcom/guochao/faceshow/databinding/DialogLiveAreaSettingBinding;", "getViewBinding$annotations", "getViewBinding", "()Lcom/guochao/faceshow/databinding/DialogLiveAreaSettingBinding;", "setViewBinding", "(Lcom/guochao/faceshow/databinding/DialogLiveAreaSettingBinding;)V", "dismissWithItem", "", UserDataStore.COUNTRY, "initView", "root", "Landroid/view/View;", "savedInstanceState", "Landroid/os/Bundle;", "onCreate", "onCreateDialog", "Landroid/app/Dialog;", "updateUserCurrCountry", "Companion", "OnDismissListener", "app_GooglePlayRelease"}, k = 1, mv = {1, 7, 1}, xi = 48)
@Deprecated
/* loaded from: classes4.dex */
public final class LiveAreaSettingDialog extends GCCoreFragment {
    @NotNull
    public static final Companion Companion = new Companion(null);
    @Nullable
    private OnDismissListener onDismissListener;
    @Nullable
    private CountryStateBean.Country selectCountry;
    public DialogLiveAreaSettingBinding viewBinding;
    @NotNull
    private final List<String> titles = new ArrayList();
    @NotNull
    private final List<Fragment> fragments = new ArrayList();
    @NotNull
    private final List<CountryStateBean> list = new ArrayList();

    @Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u001a\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\b\u0010\u0007\u001a\u0004\u0018\u00010\bH\u0007¨\u0006\t"}, d2 = {"Lcom/guochao/faceshow/mine/view/fragment/LiveAreaSettingDialog$Companion;", "", "()V", "showDialog", "Lcom/guochao/faceshow/mine/view/fragment/LiveAreaSettingDialog;", "fragmentManager", "Landroidx/fragment/app/FragmentManager;", "selectCount", "Lcom/guochao/faceshow/aaspring/beans/CountryStateBean$Country;", "app_GooglePlayRelease"}, k = 1, mv = {1, 7, 1}, xi = 48)
    /* loaded from: classes4.dex */
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @JvmStatic
        @NotNull
        public final LiveAreaSettingDialog showDialog(@NotNull FragmentManager fragmentManager, @Nullable CountryStateBean.Country country) {
            Intrinsics.checkNotNullParameter(fragmentManager, "fragmentManager");
            LiveAreaSettingDialog liveAreaSettingDialog = new LiveAreaSettingDialog();
            Bundle bundle = new Bundle();
            bundle.putParcelable("selectCount", country);
            liveAreaSettingDialog.setArguments(bundle);
            liveAreaSettingDialog.show(fragmentManager, LiveAreaSettingDialog.class.getSimpleName());
            return liveAreaSettingDialog;
        }
    }

    @Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\bf\u0018\u00002\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H&¨\u0006\u0006À\u0006\u0003"}, d2 = {"Lcom/guochao/faceshow/mine/view/fragment/LiveAreaSettingDialog$OnDismissListener;", "", "dismissWithItem", "", UserDataStore.COUNTRY, "Lcom/guochao/faceshow/aaspring/beans/CountryStateBean$Country;", "app_GooglePlayRelease"}, k = 1, mv = {1, 7, 1}, xi = 48)
    /* loaded from: classes4.dex */
    public interface OnDismissListener {
        void dismissWithItem(@NotNull CountryStateBean.Country country);
    }

    @GCViewBinding
    public static /* synthetic */ void getViewBinding$annotations() {
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: initView$lambda-0  reason: not valid java name */
    public static final void m732initView$lambda0(LiveAreaSettingDialog this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.dismissAllowingStateLoss();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: initView$lambda-1  reason: not valid java name */
    public static final void m733initView$lambda1(View view) {
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: initView$lambda-2  reason: not valid java name */
    public static final void m734initView$lambda2(LiveAreaSettingDialog this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.dismissAllowingStateLoss();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: initView$lambda-3  reason: not valid java name */
    public static final void m735initView$lambda3(LiveAreaSettingDialog this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.updateUserCurrCountry();
    }

    @JvmStatic
    @NotNull
    public static final LiveAreaSettingDialog showDialog(@NotNull FragmentManager fragmentManager, @Nullable CountryStateBean.Country country) {
        return Companion.showDialog(fragmentManager, country);
    }

    private final void updateUserCurrCountry() {
        CountryStateBean.Country country = this.selectCountry;
        if (country != null) {
            if (!TextUtils.isEmpty(country != null ? country.countryName : null)) {
                PostRequest post = post(Contants.updateNowAdress);
                CountryStateBean.Country country2 = this.selectCountry;
                post.C(UserDataStore.COUNTRY, country2 != null ? Integer.valueOf(country2.countryId) : null).D(Contants.USER_ID, SpUtils.getStr(getContext(), Contants.USER_ID)).M(new com.guochao.faceshow.aaspring.base.http.callback.c<String>() { // from class: com.guochao.faceshow.mine.view.fragment.LiveAreaSettingDialog$updateUserCurrCountry$1
                    @Override // com.guochao.faceshow.aaspring.base.http.callback.c
                    public void onFailure(@NotNull g7.a<String> exp) {
                        Intrinsics.checkNotNullParameter(exp, "exp");
                    }

                    @Override // com.guochao.faceshow.aaspring.base.http.callback.c
                    public void onResponse(@Nullable String str, @NotNull FaceCastBaseResponse<String> baseResponse) {
                        LiveAreaSettingDialog.OnDismissListener onDismissListener;
                        Intrinsics.checkNotNullParameter(baseResponse, "baseResponse");
                        CountryStateBean.Country selectCountry = LiveAreaSettingDialog.this.getSelectCountry();
                        if (selectCountry != null && (onDismissListener = LiveAreaSettingDialog.this.getOnDismissListener()) != null) {
                            onDismissListener.dismissWithItem(selectCountry);
                        }
                        LiveAreaSettingDialog.this.dismissAllowingStateLoss();
                    }
                });
                return;
            }
        }
        Context context = getContext();
        String string = getString(R.string.choose_country);
        Intrinsics.checkNotNullExpressionValue(string, "getString(R.string.choose_country)");
        ToastUtils.showToast$default(context, string, 0, 0, 12, null);
    }

    public final void dismissWithItem(@NotNull CountryStateBean.Country country) {
        RecyclerView.Adapter adapter;
        Intrinsics.checkNotNullParameter(country, "country");
        this.selectCountry = country;
        List<Fragment> list = this.fragments;
        if (list != null) {
            for (Fragment fragment : list) {
                if (fragment instanceof LiveAreaSettingFragment) {
                    LiveAreaSettingFragment liveAreaSettingFragment = (LiveAreaSettingFragment) fragment;
                    if (liveAreaSettingFragment.isAdded() && (adapter = liveAreaSettingFragment.getViewBinding().getRoot().getAdapter()) != null) {
                        adapter.notifyDataSetChanged();
                    }
                }
            }
        }
    }

    @NotNull
    public final List<Fragment> getFragments() {
        return this.fragments;
    }

    @NotNull
    public final List<CountryStateBean> getList() {
        return this.list;
    }

    @Nullable
    public final OnDismissListener getOnDismissListener() {
        return this.onDismissListener;
    }

    @Nullable
    public final CountryStateBean.Country getSelectCountry() {
        return this.selectCountry;
    }

    @NotNull
    public final List<String> getTitles() {
        return this.titles;
    }

    @NotNull
    public final DialogLiveAreaSettingBinding getViewBinding() {
        DialogLiveAreaSettingBinding dialogLiveAreaSettingBinding = this.viewBinding;
        if (dialogLiveAreaSettingBinding != null) {
            return dialogLiveAreaSettingBinding;
        }
        Intrinsics.throwUninitializedPropertyAccessException("viewBinding");
        return null;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.guochao.faceshow.aaspring.base.mvvm.fragment.GCCoreFragment
    public void initView(@NotNull View root, @Nullable Bundle bundle) {
        Intrinsics.checkNotNullParameter(root, "root");
        Bundle arguments = getArguments();
        this.selectCountry = arguments != null ? (CountryStateBean.Country) arguments.getParcelable("selectCount") : null;
        getViewBinding().bgView.setOnClickListener(new View.OnClickListener() { // from class: com.guochao.faceshow.mine.view.fragment.c
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                LiveAreaSettingDialog.m732initView$lambda0(LiveAreaSettingDialog.this, view);
            }
        });
        getViewBinding().contentArea.setOnClickListener(new View.OnClickListener() { // from class: com.guochao.faceshow.mine.view.fragment.e
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                LiveAreaSettingDialog.m733initView$lambda1(view);
            }
        });
        getViewBinding().ivClose.setOnClickListener(new View.OnClickListener() { // from class: com.guochao.faceshow.mine.view.fragment.d
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                LiveAreaSettingDialog.m734initView$lambda2(LiveAreaSettingDialog.this, view);
            }
        });
        TextView textView = getViewBinding().save;
        Intrinsics.checkNotNullExpressionValue(textView, "viewBinding.save");
        ViewExtendsKt.onClick$default(textView, 0L, new View.OnClickListener() { // from class: com.guochao.faceshow.mine.view.fragment.b
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                LiveAreaSettingDialog.m735initView$lambda3(LiveAreaSettingDialog.this, view);
            }
        }, 1, null);
        post("tokens/live/cache/getCountryByState").M(new com.guochao.faceshow.aaspring.base.http.callback.c<List<CountryStateBean>>() { // from class: com.guochao.faceshow.mine.view.fragment.LiveAreaSettingDialog$initView$5
            @Override // com.guochao.faceshow.aaspring.base.http.callback.c
            public void onFailure(@NotNull g7.a<List<CountryStateBean>> exp) {
                Intrinsics.checkNotNullParameter(exp, "exp");
            }

            @Override // com.guochao.faceshow.aaspring.base.http.callback.c
            public void onResponse(@Nullable List<CountryStateBean> list, @NotNull FaceCastBaseResponse<List<CountryStateBean>> baseResponse) {
                Intrinsics.checkNotNullParameter(baseResponse, "baseResponse");
                if (list != null) {
                    final LiveAreaSettingDialog liveAreaSettingDialog = LiveAreaSettingDialog.this;
                    liveAreaSettingDialog.getList().addAll(list);
                    for (CountryStateBean countryStateBean : liveAreaSettingDialog.getList()) {
                        liveAreaSettingDialog.getFragments().add(LiveAreaSettingFragment.Companion.getInstance(countryStateBean));
                        List<String> titles = liveAreaSettingDialog.getTitles();
                        String str = countryStateBean.name;
                        Intrinsics.checkNotNullExpressionValue(str, "it.name");
                        titles.add(str);
                    }
                    NoScrollViewPager noScrollViewPager = liveAreaSettingDialog.getViewBinding().viewPager;
                    final FragmentManager childFragmentManager = liveAreaSettingDialog.getChildFragmentManager();
                    noScrollViewPager.setAdapter(new FragmentPagerAdapter(childFragmentManager) { // from class: com.guochao.faceshow.mine.view.fragment.LiveAreaSettingDialog$initView$5$onResponse$1$2
                        @Override // androidx.viewpager.widget.PagerAdapter
                        public int getCount() {
                            return LiveAreaSettingDialog.this.getFragments().size();
                        }

                        @Override // androidx.fragment.app.FragmentPagerAdapter
                        @NotNull
                        public Fragment getItem(int i9) {
                            return LiveAreaSettingDialog.this.getFragments().get(i9);
                        }

                        @Override // androidx.viewpager.widget.PagerAdapter
                        @NotNull
                        public CharSequence getPageTitle(int i9) {
                            return LiveAreaSettingDialog.this.getTitles().get(i9);
                        }
                    });
                    liveAreaSettingDialog.getViewBinding().tabs.setupWithViewPager(liveAreaSettingDialog.getViewBinding().viewPager);
                }
            }
        });
    }

    @Override // com.guochao.faceshow.aaspring.base.mvvm.fragment.GCCoreFragment, androidx.fragment.app.DialogFragment, androidx.fragment.app.Fragment
    public void onCreate(@Nullable Bundle bundle) {
        super.onCreate(bundle);
        setShowsDialog(true);
    }

    @Override // androidx.fragment.app.DialogFragment
    @NotNull
    public Dialog onCreateDialog(@Nullable Bundle bundle) {
        View decorView;
        AppCompatDialog createCenterDialog = createCenterDialog();
        Window window = createCenterDialog.getWindow();
        if (window != null && (decorView = window.getDecorView()) != null) {
            decorView.setPadding(0, 0, 0, 0);
        }
        WindowManager.LayoutParams attributes = window != null ? window.getAttributes() : null;
        if (attributes != null) {
            attributes.width = -1;
        }
        if (window != null) {
            window.setAttributes(attributes);
        }
        return createCenterDialog;
    }

    public final void setOnDismissListener(@Nullable OnDismissListener onDismissListener) {
        this.onDismissListener = onDismissListener;
    }

    public final void setSelectCountry(@Nullable CountryStateBean.Country country) {
        this.selectCountry = country;
    }

    public final void setViewBinding(@NotNull DialogLiveAreaSettingBinding dialogLiveAreaSettingBinding) {
        Intrinsics.checkNotNullParameter(dialogLiveAreaSettingBinding, "<set-?>");
        this.viewBinding = dialogLiveAreaSettingBinding;
    }
}
