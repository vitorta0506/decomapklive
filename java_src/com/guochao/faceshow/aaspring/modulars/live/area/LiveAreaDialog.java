package com.guochao.faceshow.aaspring.modulars.live.area;

import android.app.Dialog;
import android.os.Bundle;
import android.view.View;
import android.view.Window;
import android.view.WindowManager;
import androidx.appcompat.app.AppCompatDialog;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentManager;
import androidx.fragment.app.FragmentPagerAdapter;
import com.facebook.appevents.UserDataStore;
import com.guochao.faceshow.aaspring.base.http.response.FaceCastBaseResponse;
import com.guochao.faceshow.aaspring.base.mvvm.annotations.GCViewBinding;
import com.guochao.faceshow.aaspring.base.mvvm.fragment.GCCoreFragment;
import com.guochao.faceshow.aaspring.beans.CountryStateBean;
import com.guochao.faceshow.aaspring.views.NoScrollViewPager;
import com.guochao.faceshow.databinding.DialogLiveAreaBinding;
import java.util.ArrayList;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.JvmStatic;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(d1 = {"\u0000^\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\u0018\u0000 ,2\u00020\u0001:\u0002,-B\u0005¢\u0006\u0002\u0010\u0002J\u000e\u0010!\u001a\u00020\"2\u0006\u0010#\u001a\u00020\u0012J\u001a\u0010$\u001a\u00020\"2\u0006\u0010%\u001a\u00020&2\b\u0010'\u001a\u0004\u0018\u00010(H\u0014J\u0012\u0010)\u001a\u00020\"2\b\u0010'\u001a\u0004\u0018\u00010(H\u0016J\u0012\u0010*\u001a\u00020+2\b\u0010'\u001a\u0004\u0018\u00010(H\u0016R\u0017\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0006\u0010\u0007R\u0017\u0010\b\u001a\b\u0012\u0004\u0012\u00020\t0\u0004¢\u0006\b\n\u0000\u001a\u0004\b\n\u0010\u0007R\u001c\u0010\u000b\u001a\u0004\u0018\u00010\fX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\r\u0010\u000e\"\u0004\b\u000f\u0010\u0010R\u001c\u0010\u0011\u001a\u0004\u0018\u00010\u0012X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0013\u0010\u0014\"\u0004\b\u0015\u0010\u0016R\u0017\u0010\u0017\u001a\b\u0012\u0004\u0012\u00020\u00180\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0019\u0010\u0007R$\u0010\u001a\u001a\u00020\u001b8\u0006@\u0006X\u0087.¢\u0006\u0014\n\u0000\u0012\u0004\b\u001c\u0010\u0002\u001a\u0004\b\u001d\u0010\u001e\"\u0004\b\u001f\u0010 ¨\u0006."}, d2 = {"Lcom/guochao/faceshow/aaspring/modulars/live/area/LiveAreaDialog;", "Lcom/guochao/faceshow/aaspring/base/mvvm/fragment/GCCoreFragment;", "()V", "fragments", "", "Landroidx/fragment/app/Fragment;", "getFragments", "()Ljava/util/List;", "list", "Lcom/guochao/faceshow/aaspring/beans/CountryStateBean;", "getList", "onDismissListener", "Lcom/guochao/faceshow/aaspring/modulars/live/area/LiveAreaDialog$OnDismissListener;", "getOnDismissListener", "()Lcom/guochao/faceshow/aaspring/modulars/live/area/LiveAreaDialog$OnDismissListener;", "setOnDismissListener", "(Lcom/guochao/faceshow/aaspring/modulars/live/area/LiveAreaDialog$OnDismissListener;)V", "selectCountry", "Lcom/guochao/faceshow/aaspring/beans/CountryStateBean$Country;", "getSelectCountry", "()Lcom/guochao/faceshow/aaspring/beans/CountryStateBean$Country;", "setSelectCountry", "(Lcom/guochao/faceshow/aaspring/beans/CountryStateBean$Country;)V", "titles", "", "getTitles", "viewBinding", "Lcom/guochao/faceshow/databinding/DialogLiveAreaBinding;", "getViewBinding$annotations", "getViewBinding", "()Lcom/guochao/faceshow/databinding/DialogLiveAreaBinding;", "setViewBinding", "(Lcom/guochao/faceshow/databinding/DialogLiveAreaBinding;)V", "dismissWithItem", "", UserDataStore.COUNTRY, "initView", "root", "Landroid/view/View;", "savedInstanceState", "Landroid/os/Bundle;", "onCreate", "onCreateDialog", "Landroid/app/Dialog;", "Companion", "OnDismissListener", "app_GooglePlayRelease"}, k = 1, mv = {1, 7, 1}, xi = 48)
/* loaded from: classes3.dex */
public final class LiveAreaDialog extends GCCoreFragment {
    @NotNull
    public static final Companion Companion = new Companion(null);
    @Nullable
    private OnDismissListener onDismissListener;
    @Nullable
    private CountryStateBean.Country selectCountry;
    public DialogLiveAreaBinding viewBinding;
    @NotNull
    private final List<String> titles = new ArrayList();
    @NotNull
    private final List<Fragment> fragments = new ArrayList();
    @NotNull
    private final List<CountryStateBean> list = new ArrayList();

    @Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u001a\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\b\u0010\u0007\u001a\u0004\u0018\u00010\bH\u0007¨\u0006\t"}, d2 = {"Lcom/guochao/faceshow/aaspring/modulars/live/area/LiveAreaDialog$Companion;", "", "()V", "showDialog", "Lcom/guochao/faceshow/aaspring/modulars/live/area/LiveAreaDialog;", "fragmentManager", "Landroidx/fragment/app/FragmentManager;", "selectCount", "Lcom/guochao/faceshow/aaspring/beans/CountryStateBean$Country;", "app_GooglePlayRelease"}, k = 1, mv = {1, 7, 1}, xi = 48)
    /* loaded from: classes3.dex */
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @JvmStatic
        @NotNull
        public final LiveAreaDialog showDialog(@NotNull FragmentManager fragmentManager, @Nullable CountryStateBean.Country country) {
            Intrinsics.checkNotNullParameter(fragmentManager, "fragmentManager");
            LiveAreaDialog liveAreaDialog = new LiveAreaDialog();
            Bundle bundle = new Bundle();
            bundle.putParcelable("selectCount", country);
            liveAreaDialog.setArguments(bundle);
            liveAreaDialog.show(fragmentManager, LiveAreaDialog.class.getSimpleName());
            return liveAreaDialog;
        }
    }

    @Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\bf\u0018\u00002\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H&¨\u0006\u0006À\u0006\u0003"}, d2 = {"Lcom/guochao/faceshow/aaspring/modulars/live/area/LiveAreaDialog$OnDismissListener;", "", "dismissWithItem", "", UserDataStore.COUNTRY, "Lcom/guochao/faceshow/aaspring/beans/CountryStateBean$Country;", "app_GooglePlayRelease"}, k = 1, mv = {1, 7, 1}, xi = 48)
    /* loaded from: classes3.dex */
    public interface OnDismissListener {
        void dismissWithItem(@NotNull CountryStateBean.Country country);
    }

    @GCViewBinding
    public static /* synthetic */ void getViewBinding$annotations() {
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: initView$lambda-0  reason: not valid java name */
    public static final void m455initView$lambda0(LiveAreaDialog this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.dismissAllowingStateLoss();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: initView$lambda-1  reason: not valid java name */
    public static final void m456initView$lambda1(View view) {
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: initView$lambda-2  reason: not valid java name */
    public static final void m457initView$lambda2(LiveAreaDialog this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.dismissAllowingStateLoss();
    }

    @JvmStatic
    @NotNull
    public static final LiveAreaDialog showDialog(@NotNull FragmentManager fragmentManager, @Nullable CountryStateBean.Country country) {
        return Companion.showDialog(fragmentManager, country);
    }

    public final void dismissWithItem(@NotNull CountryStateBean.Country country) {
        Intrinsics.checkNotNullParameter(country, "country");
        OnDismissListener onDismissListener = this.onDismissListener;
        if (onDismissListener != null) {
            onDismissListener.dismissWithItem(country);
        }
        dismissAllowingStateLoss();
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
    public final DialogLiveAreaBinding getViewBinding() {
        DialogLiveAreaBinding dialogLiveAreaBinding = this.viewBinding;
        if (dialogLiveAreaBinding != null) {
            return dialogLiveAreaBinding;
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
        getViewBinding().bgView.setOnClickListener(new View.OnClickListener() { // from class: com.guochao.faceshow.aaspring.modulars.live.area.f
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                LiveAreaDialog.m455initView$lambda0(LiveAreaDialog.this, view);
            }
        });
        getViewBinding().contentArea.setOnClickListener(new View.OnClickListener() { // from class: com.guochao.faceshow.aaspring.modulars.live.area.g
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                LiveAreaDialog.m456initView$lambda1(view);
            }
        });
        getViewBinding().ivClose.setOnClickListener(new View.OnClickListener() { // from class: com.guochao.faceshow.aaspring.modulars.live.area.e
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                LiveAreaDialog.m457initView$lambda2(LiveAreaDialog.this, view);
            }
        });
        post("tokens/live/cache/getCountryByState").M(new com.guochao.faceshow.aaspring.base.http.callback.c<List<CountryStateBean>>() { // from class: com.guochao.faceshow.aaspring.modulars.live.area.LiveAreaDialog$initView$4
            @Override // com.guochao.faceshow.aaspring.base.http.callback.c
            public void onFailure(@NotNull g7.a<List<CountryStateBean>> exp) {
                Intrinsics.checkNotNullParameter(exp, "exp");
            }

            @Override // com.guochao.faceshow.aaspring.base.http.callback.c
            public void onResponse(@Nullable List<CountryStateBean> list, @NotNull FaceCastBaseResponse<List<CountryStateBean>> baseResponse) {
                Intrinsics.checkNotNullParameter(baseResponse, "baseResponse");
                if (list != null) {
                    final LiveAreaDialog liveAreaDialog = LiveAreaDialog.this;
                    liveAreaDialog.getList().addAll(list);
                    for (CountryStateBean countryStateBean : liveAreaDialog.getList()) {
                        liveAreaDialog.getFragments().add(LiveAreaFragment.Companion.getInstance(countryStateBean));
                        List<String> titles = liveAreaDialog.getTitles();
                        String str = countryStateBean.name;
                        Intrinsics.checkNotNullExpressionValue(str, "it.name");
                        titles.add(str);
                    }
                    NoScrollViewPager noScrollViewPager = liveAreaDialog.getViewBinding().viewPager;
                    final FragmentManager childFragmentManager = liveAreaDialog.getChildFragmentManager();
                    noScrollViewPager.setAdapter(new FragmentPagerAdapter(childFragmentManager) { // from class: com.guochao.faceshow.aaspring.modulars.live.area.LiveAreaDialog$initView$4$onResponse$1$2
                        @Override // androidx.viewpager.widget.PagerAdapter
                        public int getCount() {
                            return LiveAreaDialog.this.getFragments().size();
                        }

                        @Override // androidx.fragment.app.FragmentPagerAdapter
                        @NotNull
                        public Fragment getItem(int i9) {
                            return LiveAreaDialog.this.getFragments().get(i9);
                        }

                        @Override // androidx.viewpager.widget.PagerAdapter
                        @NotNull
                        public CharSequence getPageTitle(int i9) {
                            return LiveAreaDialog.this.getTitles().get(i9);
                        }
                    });
                    liveAreaDialog.getViewBinding().tabs.setupWithViewPager(liveAreaDialog.getViewBinding().viewPager);
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

    public final void setViewBinding(@NotNull DialogLiveAreaBinding dialogLiveAreaBinding) {
        Intrinsics.checkNotNullParameter(dialogLiveAreaBinding, "<set-?>");
        this.viewBinding = dialogLiveAreaBinding;
    }
}
