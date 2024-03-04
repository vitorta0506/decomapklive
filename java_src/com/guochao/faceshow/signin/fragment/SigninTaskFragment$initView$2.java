package com.guochao.faceshow.signin.fragment;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.fragment.app.FragmentManager;
import androidx.recyclerview.widget.RecyclerView;
import com.guochao.faceshow.adapter.BaseViewHolder;
import com.guochao.faceshow.signin.R$layout;
import com.guochao.faceshow.signin.R$mipmap;
import com.guochao.faceshow.signin.R$string;
import com.guochao.faceshow.signin.bean.GrowTaskBean;
import com.guochao.faceshow.signin.bean.RewardList;
import com.guochao.faceshow.signin.dialog.GrowRewardDialog;
import com.guochao.faceshow.utils.DensityUtil;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(d1 = {"\u00009\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000*\u0001\u0000\b\n\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001J\b\u0010\u0003\u001a\u00020\u0004H\u0016J\u0018\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u00022\u0006\u0010\b\u001a\u00020\u0004H\u0016J\u0018\u0010\t\u001a\u00020\u00022\u0006\u0010\n\u001a\u00020\u000b2\u0006\u0010\f\u001a\u00020\u0004H\u0016J\u0016\u0010\r\u001a\u00020\u00062\u0006\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u0011J\u0018\u0010\u0012\u001a\u00020\u00062\u0006\u0010\u0013\u001a\u00020\u00142\b\u0010\u0010\u001a\u0004\u0018\u00010\u0011¨\u0006\u0015"}, d2 = {"com/guochao/faceshow/signin/fragment/SigninTaskFragment$initView$2", "Landroidx/recyclerview/widget/RecyclerView$Adapter;", "Lcom/guochao/faceshow/adapter/BaseViewHolder;", "getItemCount", "", "onBindViewHolder", "", "holder", "position", "onCreateViewHolder", "parent", "Landroid/view/ViewGroup;", "viewType", "setImageResource", "imageView", "Landroid/widget/ImageView;", "rewardBean", "Lcom/guochao/faceshow/signin/bean/RewardList;", "setNumberText", "textView", "Landroid/widget/TextView;", "lib_sign_in_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
/* loaded from: classes4.dex */
public final class SigninTaskFragment$initView$2 extends RecyclerView.Adapter<BaseViewHolder> {
    final /* synthetic */ SigninTaskFragment this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    public SigninTaskFragment$initView$2(SigninTaskFragment signinTaskFragment) {
        this.this$0 = signinTaskFragment;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Code restructure failed: missing block: B:24:0x007c, code lost:
        if (r1.equals("FRIENDCOMMENT") == false) goto L46;
     */
    /* JADX WARN: Code restructure failed: missing block: B:31:0x0094, code lost:
        if (r1.equals("FRIENDLIKE") == false) goto L46;
     */
    /* JADX WARN: Code restructure failed: missing block: B:33:0x0097, code lost:
        r1 = r2.getActivity();
     */
    /* JADX WARN: Code restructure failed: missing block: B:34:0x009b, code lost:
        if (r1 == null) goto L31;
     */
    /* JADX WARN: Code restructure failed: missing block: B:35:0x009d, code lost:
        r1.finish();
     */
    /* JADX WARN: Code restructure failed: missing block: B:36:0x00a0, code lost:
        com.guochao.faceshow.utils.LiveRandomGo.INSTANCE.gotoUgc();
     */
    /* JADX WARN: Code restructure failed: missing block: B:58:?, code lost:
        return;
     */
    /* renamed from: onBindViewHolder$lambda-3$lambda-1  reason: not valid java name */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final void m771onBindViewHolder$lambda3$lambda1(com.guochao.faceshow.signin.bean.GrowTaskBean r1, com.guochao.faceshow.signin.fragment.SigninTaskFragment r2, android.view.View r3) {
        /*
            java.lang.String r3 = "$itemData"
            kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r1, r3)
            java.lang.String r3 = "this$0"
            kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r2, r3)
            java.lang.String r1 = r1.getTaskBelong()
            java.lang.String r3 = "null cannot be cast to non-null type com.guochao.faceshow.aaspring.base.mvvm.fragment.GCCoreFragment"
            if (r1 == 0) goto Lbe
            int r0 = r1.hashCode()
            switch(r0) {
                case -1460745773: goto La6;
                case -1270864075: goto L8e;
                case -23564633: goto L7f;
                case 601386465: goto L76;
                case 2030642360: goto L49;
                case 2097149580: goto L1c;
                default: goto L1a;
            }
        L1a:
            goto Lbe
        L1c:
            java.lang.String r0 = "gongliao"
            boolean r1 = r1.equals(r0)
            if (r1 != 0) goto L26
            goto Lbe
        L26:
            com.guochao.faceshow.utils.LiveRandomGo r1 = com.guochao.faceshow.utils.LiveRandomGo.INSTANCE
            r1.sendLiveMsg()
            androidx.fragment.app.FragmentActivity r1 = r2.getActivity()
            boolean r1 = r1 instanceof com.guochao.faceshow.signin.activity.UserSigninCenterActivity
            if (r1 != 0) goto Le0
            androidx.fragment.app.Fragment r1 = r2.getParentFragment()
            boolean r1 = r1 instanceof com.guochao.faceshow.aaspring.base.mvvm.fragment.GCCoreFragment
            if (r1 == 0) goto Le0
            androidx.fragment.app.Fragment r1 = r2.getParentFragment()
            kotlin.jvm.internal.Intrinsics.checkNotNull(r1, r3)
            com.guochao.faceshow.aaspring.base.mvvm.fragment.GCCoreFragment r1 = (com.guochao.faceshow.aaspring.base.mvvm.fragment.GCCoreFragment) r1
            r1.dismissAllowingStateLoss()
            goto Le0
        L49:
            java.lang.String r0 = "SENDGIFT"
            boolean r1 = r1.equals(r0)
            if (r1 != 0) goto L53
            goto Lbe
        L53:
            com.guochao.faceshow.utils.LiveRandomGo r1 = com.guochao.faceshow.utils.LiveRandomGo.INSTANCE
            r1.sendLiveGift()
            androidx.fragment.app.FragmentActivity r1 = r2.getActivity()
            boolean r1 = r1 instanceof com.guochao.faceshow.signin.activity.UserSigninCenterActivity
            if (r1 != 0) goto Le0
            androidx.fragment.app.Fragment r1 = r2.getParentFragment()
            boolean r1 = r1 instanceof com.guochao.faceshow.aaspring.base.mvvm.fragment.GCCoreFragment
            if (r1 == 0) goto Le0
            androidx.fragment.app.Fragment r1 = r2.getParentFragment()
            kotlin.jvm.internal.Intrinsics.checkNotNull(r1, r3)
            com.guochao.faceshow.aaspring.base.mvvm.fragment.GCCoreFragment r1 = (com.guochao.faceshow.aaspring.base.mvvm.fragment.GCCoreFragment) r1
            r1.dismissAllowingStateLoss()
            goto Le0
        L76:
            java.lang.String r0 = "FRIENDCOMMENT"
            boolean r1 = r1.equals(r0)
            if (r1 != 0) goto L97
            goto Lbe
        L7f:
            java.lang.String r0 = "RECHARGE"
            boolean r1 = r1.equals(r0)
            if (r1 != 0) goto L88
            goto Lbe
        L88:
            com.guochao.faceshow.utils.LiveRandomGo r1 = com.guochao.faceshow.utils.LiveRandomGo.INSTANCE
            r1.showRechargeDialog()
            goto Le0
        L8e:
            java.lang.String r0 = "FRIENDLIKE"
            boolean r1 = r1.equals(r0)
            if (r1 != 0) goto L97
            goto Lbe
        L97:
            androidx.fragment.app.FragmentActivity r1 = r2.getActivity()
            if (r1 == 0) goto La0
            r1.finish()
        La0:
            com.guochao.faceshow.utils.LiveRandomGo r1 = com.guochao.faceshow.utils.LiveRandomGo.INSTANCE
            r1.gotoUgc()
            goto Le0
        La6:
            java.lang.String r0 = "SENDVIDEO"
            boolean r1 = r1.equals(r0)
            if (r1 != 0) goto Laf
            goto Lbe
        Laf:
            androidx.fragment.app.FragmentActivity r1 = r2.getActivity()
            if (r1 == 0) goto Lb8
            r1.finish()
        Lb8:
            com.guochao.faceshow.utils.LiveRandomGo r1 = com.guochao.faceshow.utils.LiveRandomGo.INSTANCE
            r1.sendVideo()
            goto Le0
        Lbe:
            androidx.fragment.app.FragmentActivity r1 = r2.getActivity()
            boolean r1 = r1 instanceof com.guochao.faceshow.signin.activity.UserSigninCenterActivity
            if (r1 == 0) goto Lcc
            com.guochao.faceshow.utils.LiveRandomGo r1 = com.guochao.faceshow.utils.LiveRandomGo.INSTANCE
            r1.goRandomLive()
            goto Le0
        Lcc:
            androidx.fragment.app.Fragment r1 = r2.getParentFragment()
            boolean r1 = r1 instanceof com.guochao.faceshow.aaspring.base.mvvm.fragment.GCCoreFragment
            if (r1 == 0) goto Le0
            androidx.fragment.app.Fragment r1 = r2.getParentFragment()
            kotlin.jvm.internal.Intrinsics.checkNotNull(r1, r3)
            com.guochao.faceshow.aaspring.base.mvvm.fragment.GCCoreFragment r1 = (com.guochao.faceshow.aaspring.base.mvvm.fragment.GCCoreFragment) r1
            r1.dismissAllowingStateLoss()
        Le0:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.guochao.faceshow.signin.fragment.SigninTaskFragment$initView$2.m771onBindViewHolder$lambda3$lambda1(com.guochao.faceshow.signin.bean.GrowTaskBean, com.guochao.faceshow.signin.fragment.SigninTaskFragment, android.view.View):void");
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: onBindViewHolder$lambda-3$lambda-2  reason: not valid java name */
    public static final void m772onBindViewHolder$lambda3$lambda2(SigninTaskFragment this$0, GrowTaskBean itemData, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(itemData, "$itemData");
        this$0.getViewModel().getSigninReward(itemData);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: onCreateViewHolder$lambda-0  reason: not valid java name */
    public static final void m773onCreateViewHolder$lambda0(SigninTaskFragment this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Object tag = view.getTag();
        Intrinsics.checkNotNull(tag, "null cannot be cast to non-null type kotlin.Int");
        int intValue = ((Integer) tag).intValue();
        GrowRewardDialog.Companion companion = GrowRewardDialog.Companion;
        FragmentManager childFragmentManager = this$0.getChildFragmentManager();
        Intrinsics.checkNotNullExpressionValue(childFragmentManager, "childFragmentManager");
        companion.showDialog(childFragmentManager, 1, this$0.getMDataList().get(intValue));
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public int getItemCount() {
        return this.this$0.getMDataList().size();
    }

    public final void setImageResource(@NotNull ImageView imageView, @NotNull RewardList rewardBean) {
        Intrinsics.checkNotNullParameter(imageView, "imageView");
        Intrinsics.checkNotNullParameter(rewardBean, "rewardBean");
        Integer prizeAttribute = rewardBean.getPrizeAttribute();
        if (prizeAttribute != null && prizeAttribute.intValue() == 0) {
            imageView.setBackgroundResource(R$mipmap.gift_clip_light);
            imageView.measure(0, 0);
            int dp2px = DensityUtil.dp2px(2.5f);
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

    public final void setNumberText(@NotNull TextView textView, @Nullable RewardList rewardList) {
        Intrinsics.checkNotNullParameter(textView, "textView");
        if (rewardList != null) {
            SigninTaskFragment signinTaskFragment = this.this$0;
            Integer prizeUseDay = rewardList.getPrizeUseDay();
            int intValue = prizeUseDay != null ? prizeUseDay.intValue() : 1;
            Integer prizeAttribute = rewardList.getPrizeAttribute();
            if (prizeAttribute != null && prizeAttribute.intValue() == 1) {
                Integer prizeType = rewardList.getPrizeType();
                if (prizeType != null && prizeType.intValue() == 3) {
                    StringBuilder sb2 = new StringBuilder();
                    sb2.append('x');
                    Integer prizeNum = rewardList.getPrizeNum();
                    sb2.append(prizeNum != null ? prizeNum.intValue() : 1);
                    textView.setText(sb2.toString());
                    return;
                } else if (prizeType != null && prizeType.intValue() == 4) {
                    StringBuilder sb3 = new StringBuilder();
                    sb3.append('x');
                    sb3.append(signinTaskFragment.getString(intValue == 1 ? R$string.f_dress_day : R$string.f_dress_days, Integer.valueOf(intValue)));
                    textView.setText(sb3.toString());
                    return;
                } else if (prizeType != null && prizeType.intValue() == 5) {
                    StringBuilder sb4 = new StringBuilder();
                    sb4.append('x');
                    sb4.append(signinTaskFragment.getString(intValue == 1 ? R$string.f_dress_day : R$string.f_dress_days, Integer.valueOf(intValue)));
                    textView.setText(sb4.toString());
                    return;
                } else if (prizeType != null && prizeType.intValue() == 6) {
                    StringBuilder sb5 = new StringBuilder();
                    sb5.append('x');
                    sb5.append(signinTaskFragment.getString(intValue == 1 ? R$string.f_dress_day : R$string.f_dress_days, Integer.valueOf(intValue)));
                    textView.setText(sb5.toString());
                    return;
                } else {
                    StringBuilder sb6 = new StringBuilder();
                    sb6.append('x');
                    Integer prizeNum2 = rewardList.getPrizeNum();
                    sb6.append(prizeNum2 != null ? prizeNum2.intValue() : 1);
                    textView.setText(sb6.toString());
                    return;
                }
            }
            StringBuilder sb7 = new StringBuilder();
            sb7.append('x');
            Integer prizeNum3 = rewardList.getPrizeNum();
            sb7.append(prizeNum3 != null ? prizeNum3.intValue() : 1);
            textView.setText(sb7.toString());
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:72:0x0190  */
    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void onBindViewHolder(@org.jetbrains.annotations.NotNull com.guochao.faceshow.adapter.BaseViewHolder r14, int r15) {
        /*
            Method dump skipped, instructions count: 942
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.guochao.faceshow.signin.fragment.SigninTaskFragment$initView$2.onBindViewHolder(com.guochao.faceshow.adapter.BaseViewHolder, int):void");
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    @NotNull
    public BaseViewHolder onCreateViewHolder(@NotNull ViewGroup parent, int i9) {
        Intrinsics.checkNotNullParameter(parent, "parent");
        BaseViewHolder baseViewHolder = new BaseViewHolder(LayoutInflater.from(parent.getContext()).inflate(R$layout.item_signin_task, parent, false));
        View view = baseViewHolder.itemView;
        final SigninTaskFragment signinTaskFragment = this.this$0;
        view.setOnClickListener(new View.OnClickListener() { // from class: com.guochao.faceshow.signin.fragment.k
            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                SigninTaskFragment$initView$2.m773onCreateViewHolder$lambda0(SigninTaskFragment.this, view2);
            }
        });
        return baseViewHolder;
    }
}
