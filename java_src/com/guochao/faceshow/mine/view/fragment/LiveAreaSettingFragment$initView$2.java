package com.guochao.faceshow.mine.view.fragment;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.fragment.app.Fragment;
import androidx.recyclerview.widget.RecyclerView;
import com.guochao.faceshow.R;
import com.guochao.faceshow.aaspring.base.adapter.BaseViewHolder;
import com.guochao.faceshow.aaspring.beans.CountryStateBean;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
@Metadata(d1 = {"\u0000%\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0002*\u0001\u0000\b\n\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001J\b\u0010\u0003\u001a\u00020\u0004H\u0016J\u0018\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u00022\u0006\u0010\b\u001a\u00020\u0004H\u0016J\u0018\u0010\t\u001a\u00020\u00022\u0006\u0010\n\u001a\u00020\u000b2\u0006\u0010\f\u001a\u00020\u0004H\u0016¨\u0006\r"}, d2 = {"com/guochao/faceshow/mine/view/fragment/LiveAreaSettingFragment$initView$2", "Landroidx/recyclerview/widget/RecyclerView$Adapter;", "Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;", "getItemCount", "", "onBindViewHolder", "", "holder", "position", "onCreateViewHolder", "parent", "Landroid/view/ViewGroup;", "viewType", "app_GooglePlayRelease"}, k = 1, mv = {1, 7, 1}, xi = 48)
/* loaded from: classes4.dex */
public final class LiveAreaSettingFragment$initView$2 extends RecyclerView.Adapter<BaseViewHolder> {
    final /* synthetic */ LiveAreaSettingFragment this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    public LiveAreaSettingFragment$initView$2(LiveAreaSettingFragment liveAreaSettingFragment) {
        this.this$0 = liveAreaSettingFragment;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: onBindViewHolder$lambda-0  reason: not valid java name */
    public static final void m736onBindViewHolder$lambda0(LiveAreaSettingFragment this$0, int i9, LiveAreaSettingFragment$initView$2 this$1, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(this$1, "this$1");
        if (this$0.getParentFragment() instanceof LiveAreaSettingDialog) {
            Fragment parentFragment = this$0.getParentFragment();
            Intrinsics.checkNotNull(parentFragment, "null cannot be cast to non-null type com.guochao.faceshow.mine.view.fragment.LiveAreaSettingDialog");
            ((LiveAreaSettingDialog) parentFragment).dismissWithItem(this$0.getMDataList().get(i9));
        }
        this$1.notifyDataSetChanged();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public int getItemCount() {
        return this.this$0.getMDataList().size();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public void onBindViewHolder(@NotNull BaseViewHolder holder, final int i9) {
        Intrinsics.checkNotNullParameter(holder, "holder");
        ImageView imageView = (ImageView) holder.getView(R.id.country_flag);
        ImageView imageView2 = (ImageView) holder.getView(R.id.selectIV);
        View view = holder.getView(R.id.content_view);
        ((TextView) holder.getView(R.id.country_name)).setText(this.this$0.getMDataList().get(i9).countryName);
        hc.a.s(imageView, this.this$0.getMDataList().get(i9).countryLogoRect == null ? this.this$0.getMDataList().get(i9).countryLogo : this.this$0.getMDataList().get(i9).countryLogoRect, 8);
        Fragment parentFragment = this.this$0.getParentFragment();
        Intrinsics.checkNotNull(parentFragment, "null cannot be cast to non-null type com.guochao.faceshow.mine.view.fragment.LiveAreaSettingDialog");
        CountryStateBean.Country selectCountry = ((LiveAreaSettingDialog) parentFragment).getSelectCountry();
        if (Intrinsics.areEqual(selectCountry != null ? selectCountry.countryName : null, this.this$0.getMDataList().get(i9).countryName)) {
            imageView2.setImageResource(R.mipmap.ic_set_info_country_selected);
        } else {
            imageView2.setImageResource(R.mipmap.ic_set_info_country_nomal);
        }
        final LiveAreaSettingFragment liveAreaSettingFragment = this.this$0;
        view.setOnClickListener(new View.OnClickListener() { // from class: com.guochao.faceshow.mine.view.fragment.f
            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                LiveAreaSettingFragment$initView$2.m736onBindViewHolder$lambda0(LiveAreaSettingFragment.this, i9, this, view2);
            }
        });
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    @NotNull
    public BaseViewHolder onCreateViewHolder(@NotNull ViewGroup parent, int i9) {
        Intrinsics.checkNotNullParameter(parent, "parent");
        return new BaseViewHolder(LayoutInflater.from(this.this$0.getContext()).inflate(R.layout.item_discovery_country_setting, parent, false));
    }
}
