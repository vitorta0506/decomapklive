package com.guochao.faceshow.signin.activity;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.core.content.ContextCompat;
import androidx.recyclerview.widget.RecyclerView;
import com.guochao.faceshow.aaspring.utils.DisableDoubleClickUtils;
import com.guochao.faceshow.adapter.BaseViewHolder;
import com.guochao.faceshow.signin.R$drawable;
import com.guochao.faceshow.signin.R$id;
import com.guochao.faceshow.signin.R$layout;
import com.guochao.faceshow.signin.R$mipmap;
import com.guochao.faceshow.signin.R$raw;
import com.guochao.faceshow.signin.bean.RewardList;
import com.guochao.faceshow.signin.bean.SignList;
import com.guochao.faceshow.signin.bean.SigninBean;
import com.guochao.faceshow.utils.DensityUtil;
import com.guochao.faceshow.utils.ScreenTools;
import com.guochao.faceshow.views.SvgaImageViewV2;
import com.guochao.lib_base.R$color;
import java.util.ArrayList;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.BuildersKt__Builders_commonKt;
import kotlinx.coroutines.CoroutineScopeKt;
import kotlinx.coroutines.Dispatchers;
import org.jetbrains.annotations.NotNull;
@Metadata(d1 = {"\u00001\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000*\u0001\u0000\b\n\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001J\b\u0010\u0003\u001a\u00020\u0004H\u0016J\u0018\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u00022\u0006\u0010\b\u001a\u00020\u0004H\u0016J\u0018\u0010\t\u001a\u00020\u00022\u0006\u0010\n\u001a\u00020\u000b2\u0006\u0010\f\u001a\u00020\u0004H\u0016J\u0016\u0010\r\u001a\u00020\u00062\u0006\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u0011¨\u0006\u0012"}, d2 = {"com/guochao/faceshow/signin/activity/UserSigninCenterActivity$initRecyclerView$1", "Landroidx/recyclerview/widget/RecyclerView$Adapter;", "Lcom/guochao/faceshow/adapter/BaseViewHolder;", "getItemCount", "", "onBindViewHolder", "", "holder", "position", "onCreateViewHolder", "parent", "Landroid/view/ViewGroup;", "viewType", "setImageResource", "imageView", "Landroid/widget/ImageView;", "rewardBean", "Lcom/guochao/faceshow/signin/bean/RewardList;", "lib_sign_in_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
/* loaded from: classes4.dex */
public final class UserSigninCenterActivity$initRecyclerView$1 extends RecyclerView.Adapter<BaseViewHolder> {
    final /* synthetic */ UserSigninCenterActivity this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    public UserSigninCenterActivity$initRecyclerView$1(UserSigninCenterActivity userSigninCenterActivity) {
        this.this$0 = userSigninCenterActivity;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: onCreateViewHolder$lambda-1  reason: not valid java name */
    public static final void m743onCreateViewHolder$lambda1(UserSigninCenterActivity this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        if (DisableDoubleClickUtils.canClick(view) && Intrinsics.areEqual(view.getTag(), Integer.valueOf(this$0.getSignedCount())) && !this$0.isTodaySigned()) {
            BuildersKt__Builders_commonKt.launch$default(CoroutineScopeKt.MainScope(), Dispatchers.getMain(), null, new UserSigninCenterActivity$initRecyclerView$1$onCreateViewHolder$2$1(this$0, null), 2, null);
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public int getItemCount() {
        return 7;
    }

    public final void setImageResource(@NotNull ImageView imageView, @NotNull RewardList rewardBean) {
        Intrinsics.checkNotNullParameter(imageView, "imageView");
        Intrinsics.checkNotNullParameter(rewardBean, "rewardBean");
        Integer prizeAttribute = rewardBean.getPrizeAttribute();
        if (prizeAttribute != null && prizeAttribute.intValue() == 0) {
            imageView.setBackgroundResource(R$mipmap.gift_clip_light);
            imageView.measure(0, 0);
            int dp2px = DensityUtil.dp2px(5.0f);
            imageView.setPadding(dp2px, dp2px, dp2px, dp2px);
        }
        Integer prizeType = rewardBean.getPrizeType();
        if (prizeType != null && prizeType.intValue() == 0) {
            imageView.setImageResource(R$mipmap.icon_signin_fifth);
        } else if (prizeType != null && prizeType.intValue() == 1) {
            imageView.setImageResource(R$mipmap.icon_signin_first);
        } else if (prizeType != null && prizeType.intValue() == 2) {
            imageView.setImageResource(R$mipmap.icon_signin_shuijing);
        } else {
            com.bumptech.glide.c.v(imageView).r(rewardBean.getRewardImg()).Q0(imageView);
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public void onBindViewHolder(@NotNull BaseViewHolder holder, int i9) {
        List<RewardList> arrayList;
        Integer dayFlag;
        List<RewardList> luckList;
        List<SignList> signList;
        Intrinsics.checkNotNullParameter(holder, "holder");
        holder.itemView.setTag(Integer.valueOf(i9));
        View view = holder.itemView;
        Intrinsics.checkNotNull(view, "null cannot be cast to non-null type android.view.ViewGroup");
        View childAt = ((ViewGroup) view).getChildAt(0);
        Intrinsics.checkNotNull(childAt, "null cannot be cast to non-null type android.view.ViewGroup");
        View childAt2 = ((ViewGroup) childAt).getChildAt(1);
        Intrinsics.checkNotNull(childAt2, "null cannot be cast to non-null type android.widget.TextView");
        StringBuilder sb2 = new StringBuilder();
        sb2.append("day");
        int i10 = i9 + 1;
        sb2.append(i10);
        ((TextView) childAt2).setText(sb2.toString());
        SigninBean signList2 = this.this$0.getSignList();
        SignList signList3 = (signList2 == null || (signList = signList2.getSignList()) == null) ? null : signList.get(i9);
        if (signList3 == null || (arrayList = signList3.getFixList()) == null) {
            arrayList = new ArrayList<>();
        }
        if (arrayList.isEmpty() && signList3 != null && (luckList = signList3.getLuckList()) != null) {
            arrayList.addAll(luckList);
        }
        ImageView ivGiftIcon = (ImageView) holder.itemView.findViewById(R$id.iv_gift_icon);
        SvgaImageViewV2 svgaImageViewV2 = (SvgaImageViewV2) holder.itemView.findViewById(R$id.iv_gift_icon_svga);
        svgaImageViewV2.setVisibility(8);
        switch (i9) {
            case 0:
                if (arrayList.isEmpty()) {
                    ivGiftIcon.setImageResource(R$mipmap.icon_sign_user_center);
                    break;
                } else {
                    Intrinsics.checkNotNullExpressionValue(ivGiftIcon, "ivGiftIcon");
                    setImageResource(ivGiftIcon, arrayList.get(0));
                    break;
                }
            case 1:
                ivGiftIcon.setImageResource(R$mipmap.icon_signinresult_box);
                break;
            case 2:
                if (arrayList.isEmpty()) {
                    ivGiftIcon.setImageResource(R$mipmap.icon_signin_first);
                    break;
                } else {
                    Intrinsics.checkNotNullExpressionValue(ivGiftIcon, "ivGiftIcon");
                    setImageResource(ivGiftIcon, arrayList.get(0));
                    break;
                }
            case 3:
                ivGiftIcon.setImageResource(R$mipmap.icon_signinresult_box);
                break;
            case 4:
                if (arrayList.isEmpty()) {
                    ivGiftIcon.setImageResource(R$mipmap.icon_signin_task_header);
                    break;
                } else {
                    Intrinsics.checkNotNullExpressionValue(ivGiftIcon, "ivGiftIcon");
                    setImageResource(ivGiftIcon, arrayList.get(0));
                    break;
                }
            case 5:
                ivGiftIcon.setImageResource(R$mipmap.icon_signinresult_box);
                break;
            case 6:
                ivGiftIcon.setImageResource(R$mipmap.icon_signin_big_gift);
                if (this.this$0.getSignedCount() < 7) {
                    svgaImageViewV2.setVisibility(0);
                    svgaImageViewV2.playRaw(R$raw.signin_seventh_day);
                    break;
                }
                break;
        }
        View view2 = holder.itemView;
        Intrinsics.checkNotNull(view2, "null cannot be cast to non-null type android.view.ViewGroup");
        ViewGroup viewGroup = (ViewGroup) view2;
        UserSigninCenterActivity userSigninCenterActivity = this.this$0;
        viewGroup.getChildAt(0).setBackgroundResource(R$drawable.bg_item_signin_content);
        if (i10 <= userSigninCenterActivity.getSignedCount()) {
            viewGroup.getChildAt(1).setVisibility(0);
            viewGroup.getChildAt(1).setEnabled(false);
            viewGroup.getChildAt(1).setBackgroundResource(R$drawable.bg_item_signined);
            viewGroup.getChildAt(2).setVisibility(0);
            return;
        }
        if (i10 == userSigninCenterActivity.getSignedCount() + 1) {
            SigninBean signList4 = userSigninCenterActivity.getSignList();
            if (!((signList4 == null || (dayFlag = signList4.getDayFlag()) == null || dayFlag.intValue() != 1) ? false : true)) {
                viewGroup.getChildAt(1).setVisibility(8);
                viewGroup.getChildAt(2).setVisibility(8);
                viewGroup.getChildAt(0).setBackgroundResource(R$drawable.bg_item_to_signin);
                View childAt3 = viewGroup.getChildAt(0);
                Intrinsics.checkNotNull(childAt3, "null cannot be cast to non-null type android.view.ViewGroup");
                ((ViewGroup) childAt3).getChildAt(0).setBackgroundTintList(ContextCompat.getColorStateList(viewGroup.getContext(), R$color.white));
                ViewParent parent = ivGiftIcon.getParent();
                Intrinsics.checkNotNull(parent, "null cannot be cast to non-null type android.view.ViewGroup");
                ViewGroup viewGroup2 = (ViewGroup) parent;
                Context context = viewGroup2.getContext();
                Intrinsics.checkNotNullExpressionValue(context, "viewGroup.context");
                SvgaImageViewV2 svgaImageViewV22 = new SvgaImageViewV2(context, null, 2, null);
                viewGroup2.addView(svgaImageViewV22, 0, new ViewGroup.LayoutParams(DensityUtil.dp2px(44.0f), DensityUtil.dp2px(44.0f)));
                svgaImageViewV22.playRaw(R$raw.task_center_light);
                viewGroup2.setTranslationY(-DensityUtil.dp2px(6.0f));
                View view3 = holder.itemView;
                Intrinsics.checkNotNull(view3, "null cannot be cast to non-null type android.view.ViewGroup");
                View childAt4 = ((ViewGroup) view3).getChildAt(0);
                Intrinsics.checkNotNull(childAt4, "null cannot be cast to non-null type android.view.ViewGroup");
                View childAt5 = ((ViewGroup) childAt4).getChildAt(1);
                Intrinsics.checkNotNull(childAt5, "null cannot be cast to non-null type android.widget.TextView");
                TextView textView = (TextView) childAt5;
                ViewGroup.LayoutParams layoutParams = textView.getLayoutParams();
                Intrinsics.checkNotNull(layoutParams, "null cannot be cast to non-null type android.view.ViewGroup.MarginLayoutParams");
                ((ViewGroup.MarginLayoutParams) layoutParams).topMargin = -DensityUtil.dp2px(9.0f);
                textView.setTextColor(-1);
                return;
            }
        }
        View childAt6 = viewGroup.getChildAt(0);
        Intrinsics.checkNotNull(childAt6, "null cannot be cast to non-null type android.view.ViewGroup");
        ((ViewGroup) childAt6).getChildAt(0).setBackgroundTintList(ContextCompat.getColorStateList(viewGroup.getContext(), R$color.transparent));
        viewGroup.getChildAt(1).setVisibility(8);
        viewGroup.getChildAt(2).setVisibility(8);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    @NotNull
    public BaseViewHolder onCreateViewHolder(@NotNull ViewGroup parent, int i9) {
        Intrinsics.checkNotNullParameter(parent, "parent");
        BaseViewHolder baseViewHolder = new BaseViewHolder(LayoutInflater.from(parent.getContext()).inflate(R$layout.item_signin_center_header, parent, false));
        baseViewHolder.itemView.getLayoutParams().width = (int) (((ScreenTools.getScreenWidth() - DensityUtil.dp2px(38.0f)) - DensityUtil.dp2px(42.0f)) / 7.0f);
        ViewGroup.LayoutParams layoutParams = baseViewHolder.itemView.getLayoutParams();
        Intrinsics.checkNotNull(layoutParams, "null cannot be cast to non-null type android.view.ViewGroup.MarginLayoutParams");
        ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) layoutParams;
        marginLayoutParams.setMarginStart(DensityUtil.dp2px(3.0f));
        marginLayoutParams.setMarginEnd(DensityUtil.dp2px(3.0f));
        View view = baseViewHolder.itemView;
        final UserSigninCenterActivity userSigninCenterActivity = this.this$0;
        view.setOnClickListener(new View.OnClickListener() { // from class: com.guochao.faceshow.signin.activity.f
            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                UserSigninCenterActivity$initRecyclerView$1.m743onCreateViewHolder$lambda1(UserSigninCenterActivity.this, view2);
            }
        });
        return baseViewHolder;
    }
}
