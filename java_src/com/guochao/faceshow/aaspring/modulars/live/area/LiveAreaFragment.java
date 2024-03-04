package com.guochao.faceshow.aaspring.modulars.live.area;

import android.os.Bundle;
import android.view.View;
import androidx.recyclerview.widget.GridLayoutManager;
import com.guochao.faceshow.aaspring.base.mvvm.annotations.GCViewBinding;
import com.guochao.faceshow.aaspring.base.mvvm.fragment.GCCoreFragment;
import com.guochao.faceshow.aaspring.beans.CountryStateBean;
import com.guochao.faceshow.databinding.LayoutRecyclerViewBinding;
import java.util.ArrayList;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(d1 = {"\u00004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\u0018\u0000 \u00152\u00020\u0001:\u0001\u0015B\u0005¢\u0006\u0002\u0010\u0002J\u001a\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u00122\b\u0010\u0013\u001a\u0004\u0018\u00010\u0014H\u0014R\u0017\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0006\u0010\u0007R$\u0010\b\u001a\u00020\t8\u0006@\u0006X\u0087.¢\u0006\u0014\n\u0000\u0012\u0004\b\n\u0010\u0002\u001a\u0004\b\u000b\u0010\f\"\u0004\b\r\u0010\u000e¨\u0006\u0016"}, d2 = {"Lcom/guochao/faceshow/aaspring/modulars/live/area/LiveAreaFragment;", "Lcom/guochao/faceshow/aaspring/base/mvvm/fragment/GCCoreFragment;", "()V", "mDataList", "", "Lcom/guochao/faceshow/aaspring/beans/CountryStateBean$Country;", "getMDataList", "()Ljava/util/List;", "viewBinding", "Lcom/guochao/faceshow/databinding/LayoutRecyclerViewBinding;", "getViewBinding$annotations", "getViewBinding", "()Lcom/guochao/faceshow/databinding/LayoutRecyclerViewBinding;", "setViewBinding", "(Lcom/guochao/faceshow/databinding/LayoutRecyclerViewBinding;)V", "initView", "", "root", "Landroid/view/View;", "savedInstanceState", "Landroid/os/Bundle;", "Companion", "app_GooglePlayRelease"}, k = 1, mv = {1, 7, 1}, xi = 48)
/* loaded from: classes3.dex */
public final class LiveAreaFragment extends GCCoreFragment {
    @NotNull
    public static final Companion Companion = new Companion(null);
    @NotNull
    private final List<CountryStateBean.Country> mDataList = new ArrayList();
    public LayoutRecyclerViewBinding viewBinding;

    @Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u000e\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006¨\u0006\u0007"}, d2 = {"Lcom/guochao/faceshow/aaspring/modulars/live/area/LiveAreaFragment$Companion;", "", "()V", "getInstance", "Lcom/guochao/faceshow/aaspring/modulars/live/area/LiveAreaFragment;", "countryStateBean", "Lcom/guochao/faceshow/aaspring/beans/CountryStateBean;", "app_GooglePlayRelease"}, k = 1, mv = {1, 7, 1}, xi = 48)
    /* loaded from: classes3.dex */
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @NotNull
        public final LiveAreaFragment getInstance(@NotNull CountryStateBean countryStateBean) {
            Intrinsics.checkNotNullParameter(countryStateBean, "countryStateBean");
            LiveAreaFragment liveAreaFragment = new LiveAreaFragment();
            Bundle bundle = new Bundle();
            bundle.putParcelable("data", countryStateBean);
            liveAreaFragment.setArguments(bundle);
            return liveAreaFragment;
        }
    }

    @GCViewBinding
    public static /* synthetic */ void getViewBinding$annotations() {
    }

    @NotNull
    public final List<CountryStateBean.Country> getMDataList() {
        return this.mDataList;
    }

    @NotNull
    public final LayoutRecyclerViewBinding getViewBinding() {
        LayoutRecyclerViewBinding layoutRecyclerViewBinding = this.viewBinding;
        if (layoutRecyclerViewBinding != null) {
            return layoutRecyclerViewBinding;
        }
        Intrinsics.throwUninitializedPropertyAccessException("viewBinding");
        return null;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.guochao.faceshow.aaspring.base.mvvm.fragment.GCCoreFragment
    public void initView(@NotNull View root, @Nullable Bundle bundle) {
        CountryStateBean countryStateBean;
        List<CountryStateBean.Country> list;
        Intrinsics.checkNotNullParameter(root, "root");
        Bundle arguments = getArguments();
        if (arguments != null && (countryStateBean = (CountryStateBean) arguments.getParcelable("data")) != null && (list = countryStateBean.countryOfStateList) != null) {
            this.mDataList.addAll(list);
        }
        getViewBinding().getRoot().setLayoutManager(new GridLayoutManager(getContext(), 4, 1, false));
        getViewBinding().getRoot().setAdapter(new LiveAreaFragment$initView$2(this));
    }

    public final void setViewBinding(@NotNull LayoutRecyclerViewBinding layoutRecyclerViewBinding) {
        Intrinsics.checkNotNullParameter(layoutRecyclerViewBinding, "<set-?>");
        this.viewBinding = layoutRecyclerViewBinding;
    }
}
