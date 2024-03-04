package com.guochao.faceshow.userhomepage.act;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import androidx.recyclerview.widget.RecyclerView;
import com.guochao.faceshow.R;
import com.guochao.faceshow.aaspring.base.adapter.BaseViewHolder;
import com.guochao.faceshow.utils.DensityUtil;
import com.youth.banner.Banner;
import com.youth.banner.view.BannerViewPager;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
@Metadata(d1 = {"\u0000%\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0002*\u0001\u0000\b\n\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001J\b\u0010\u0003\u001a\u00020\u0004H\u0016J\u0018\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u00022\u0006\u0010\b\u001a\u00020\u0004H\u0016J\u0018\u0010\t\u001a\u00020\u00022\u0006\u0010\n\u001a\u00020\u000b2\u0006\u0010\f\u001a\u00020\u0004H\u0016¨\u0006\r"}, d2 = {"com/guochao/faceshow/userhomepage/act/UserHomePageAct$startBanner$5", "Landroidx/recyclerview/widget/RecyclerView$Adapter;", "Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;", "getItemCount", "", "onBindViewHolder", "", "holder", "position", "onCreateViewHolder", "parent", "Landroid/view/ViewGroup;", "viewType", "app_GooglePlayRelease"}, k = 1, mv = {1, 7, 1}, xi = 48)
/* loaded from: classes4.dex */
public final class UserHomePageAct$startBanner$5 extends RecyclerView.Adapter<BaseViewHolder> {
    final /* synthetic */ RecyclerView $avatarImgs;
    final /* synthetic */ Banner $photoWalls;
    final /* synthetic */ List<String> $urls;
    final /* synthetic */ UserHomePageAct this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    public UserHomePageAct$startBanner$5(List<String> list, RecyclerView recyclerView, UserHomePageAct userHomePageAct, Banner banner) {
        this.$urls = list;
        this.$avatarImgs = recyclerView;
        this.this$0 = userHomePageAct;
        this.$photoWalls = banner;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: onBindViewHolder$lambda-0  reason: not valid java name */
    public static final void m798onBindViewHolder$lambda0(UserHomePageAct this$0, Banner photoWalls, int i9, View view) {
        BannerViewPager viewPager;
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullExpressionValue(photoWalls, "photoWalls");
        viewPager = this$0.getViewPager(photoWalls);
        if (viewPager != null) {
            viewPager.setCurrentItem(i9 + 1, false);
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public int getItemCount() {
        return this.$urls.size();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public void onBindViewHolder(@NotNull BaseViewHolder holder, final int i9) {
        Intrinsics.checkNotNullParameter(holder, "holder");
        ImageView imageView = (ImageView) holder.getView(R.id.image_view);
        ViewGroup.LayoutParams layoutParams = imageView.getLayoutParams();
        Intrinsics.checkNotNull(layoutParams, "null cannot be cast to non-null type android.view.ViewGroup.MarginLayoutParams");
        ((ViewGroup.MarginLayoutParams) layoutParams).setMarginEnd(i9 == this.$urls.size() + (-1) ? DensityUtil.dp2px(8.0f) : 0);
        Object tag = this.$avatarImgs.getTag();
        if ((tag instanceof Integer) && Intrinsics.areEqual(tag, Integer.valueOf(i9))) {
            holder.getView(R.id.bg_image_view).setVisibility(0);
            holder.getView(R.id.bg_image_view).getLayoutParams().width = DensityUtil.dp2px(40.0f);
            holder.getView(R.id.bg_image_view).getLayoutParams().height = DensityUtil.dp2px(40.0f);
            holder.getView(R.id.image_view).getLayoutParams().width = DensityUtil.dp2px(40.0f);
            holder.getView(R.id.image_view).getLayoutParams().height = DensityUtil.dp2px(40.0f);
            ViewGroup.LayoutParams layoutParams2 = holder.itemView.getLayoutParams();
            Intrinsics.checkNotNull(layoutParams2, "null cannot be cast to non-null type android.view.ViewGroup.MarginLayoutParams");
            ((ViewGroup.MarginLayoutParams) layoutParams2).topMargin = DensityUtil.dp2px(0.0f);
        } else {
            holder.getView(R.id.bg_image_view).setVisibility(8);
            holder.getView(R.id.bg_image_view).getLayoutParams().width = DensityUtil.dp2px(32.0f);
            holder.getView(R.id.bg_image_view).getLayoutParams().height = DensityUtil.dp2px(32.0f);
            holder.getView(R.id.image_view).getLayoutParams().width = DensityUtil.dp2px(32.0f);
            holder.getView(R.id.image_view).getLayoutParams().height = DensityUtil.dp2px(32.0f);
            ViewGroup.LayoutParams layoutParams3 = holder.itemView.getLayoutParams();
            Intrinsics.checkNotNull(layoutParams3, "null cannot be cast to non-null type android.view.ViewGroup.MarginLayoutParams");
            ((ViewGroup.MarginLayoutParams) layoutParams3).topMargin = DensityUtil.dp2px(4.0f);
        }
        hc.a.r(imageView, this.$urls.get(i9), R.mipmap.default_head, 4);
        View view = holder.itemView;
        final UserHomePageAct userHomePageAct = this.this$0;
        final Banner banner = this.$photoWalls;
        view.setOnClickListener(new View.OnClickListener() { // from class: com.guochao.faceshow.userhomepage.act.u
            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                UserHomePageAct$startBanner$5.m798onBindViewHolder$lambda0(UserHomePageAct.this, banner, i9, view2);
            }
        });
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    @NotNull
    public BaseViewHolder onCreateViewHolder(@NotNull ViewGroup parent, int i9) {
        Intrinsics.checkNotNullParameter(parent, "parent");
        return new BaseViewHolder(LayoutInflater.from(parent.getContext()).inflate(R.layout.item_user_avatar_img, parent, false));
    }
}
