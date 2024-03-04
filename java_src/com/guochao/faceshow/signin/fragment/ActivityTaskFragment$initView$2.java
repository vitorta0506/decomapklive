package com.guochao.faceshow.signin.fragment;

import android.graphics.Color;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.fragment.app.FragmentManager;
import androidx.recyclerview.widget.RecyclerView;
import com.guochao.faceshow.aaspring.utils.EventTrackingV2Utils;
import com.guochao.faceshow.adapter.BaseViewHolder;
import com.guochao.faceshow.signin.R$id;
import com.guochao.faceshow.signin.R$layout;
import com.guochao.faceshow.signin.R$mipmap;
import com.guochao.faceshow.signin.SigninManager;
import com.guochao.faceshow.signin.bean.GrowTaskBean;
import com.guochao.faceshow.signin.bean.RewardList;
import com.guochao.faceshow.signin.bean.SigninCache;
import com.guochao.faceshow.signin.dialog.GrowRewardDialog;
import com.guochao.faceshow.utils.DensityUtil;
import com.meizu.cloud.pushsdk.constants.PushConstants;
import java.util.Arrays;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.StringCompanionObject;
import org.jetbrains.annotations.NotNull;
import org.light.utils.IOUtils;
@Metadata(d1 = {"\u00001\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000*\u0001\u0000\b\n\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001J\b\u0010\u0003\u001a\u00020\u0004H\u0016J\u0018\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u00022\u0006\u0010\b\u001a\u00020\u0004H\u0016J\u0018\u0010\t\u001a\u00020\u00022\u0006\u0010\n\u001a\u00020\u000b2\u0006\u0010\f\u001a\u00020\u0004H\u0016J\u0016\u0010\r\u001a\u00020\u00062\u0006\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u0011¨\u0006\u0012"}, d2 = {"com/guochao/faceshow/signin/fragment/ActivityTaskFragment$initView$2", "Landroidx/recyclerview/widget/RecyclerView$Adapter;", "Lcom/guochao/faceshow/adapter/BaseViewHolder;", "getItemCount", "", "onBindViewHolder", "", "holder", "position", "onCreateViewHolder", "parent", "Landroid/view/ViewGroup;", "viewType", "setImageResource", "imageView", "Landroid/widget/ImageView;", "rewardBean", "Lcom/guochao/faceshow/signin/bean/RewardList;", "lib_sign_in_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
/* loaded from: classes4.dex */
public final class ActivityTaskFragment$initView$2 extends RecyclerView.Adapter<BaseViewHolder> {
    final /* synthetic */ ActivityTaskFragment this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    public ActivityTaskFragment$initView$2(ActivityTaskFragment activityTaskFragment) {
        this.this$0 = activityTaskFragment;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Code restructure failed: missing block: B:24:0x007c, code lost:
        if (r1.equals("FRIENDCOMMENT") == false) goto L53;
     */
    /* JADX WARN: Code restructure failed: missing block: B:37:0x00ae, code lost:
        if (r1.equals("FRIENDLIKE") == false) goto L53;
     */
    /* JADX WARN: Code restructure failed: missing block: B:39:0x00b1, code lost:
        r1 = r2.getActivity();
     */
    /* JADX WARN: Code restructure failed: missing block: B:40:0x00b5, code lost:
        if (r1 == null) goto L31;
     */
    /* JADX WARN: Code restructure failed: missing block: B:41:0x00b7, code lost:
        r1.finish();
     */
    /* JADX WARN: Code restructure failed: missing block: B:42:0x00ba, code lost:
        com.guochao.faceshow.utils.LiveRandomGo.INSTANCE.gotoUgc();
     */
    /* JADX WARN: Code restructure failed: missing block: B:66:?, code lost:
        return;
     */
    /* renamed from: onBindViewHolder$lambda-5$lambda-2  reason: not valid java name */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final void m764onBindViewHolder$lambda5$lambda2(com.guochao.faceshow.signin.bean.GrowTaskBean r1, final com.guochao.faceshow.signin.fragment.ActivityTaskFragment r2, android.view.View r3) {
        /*
            java.lang.String r3 = "$itemData"
            kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r1, r3)
            java.lang.String r3 = "this$0"
            kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r2, r3)
            java.lang.String r1 = r1.getTaskBelong()
            java.lang.String r3 = "null cannot be cast to non-null type com.guochao.faceshow.aaspring.base.mvvm.fragment.GCCoreFragment"
            if (r1 == 0) goto Ld8
            int r0 = r1.hashCode()
            switch(r0) {
                case -1460745773: goto Lc0;
                case -1270864075: goto La8;
                case -23564633: goto L99;
                case 517070042: goto L7f;
                case 601386465: goto L76;
                case 2030642360: goto L49;
                case 2097149580: goto L1c;
                default: goto L1a;
            }
        L1a:
            goto Ld8
        L1c:
            java.lang.String r0 = "gongliao"
            boolean r1 = r1.equals(r0)
            if (r1 != 0) goto L26
            goto Ld8
        L26:
            com.guochao.faceshow.utils.LiveRandomGo r1 = com.guochao.faceshow.utils.LiveRandomGo.INSTANCE
            r1.sendLiveMsg()
            androidx.fragment.app.FragmentActivity r1 = r2.getActivity()
            boolean r1 = r1 instanceof com.guochao.faceshow.signin.activity.UserSigninCenterActivity
            if (r1 != 0) goto Lfa
            androidx.fragment.app.Fragment r1 = r2.getParentFragment()
            boolean r1 = r1 instanceof com.guochao.faceshow.aaspring.base.mvvm.fragment.GCCoreFragment
            if (r1 == 0) goto Lfa
            androidx.fragment.app.Fragment r1 = r2.getParentFragment()
            kotlin.jvm.internal.Intrinsics.checkNotNull(r1, r3)
            com.guochao.faceshow.aaspring.base.mvvm.fragment.GCCoreFragment r1 = (com.guochao.faceshow.aaspring.base.mvvm.fragment.GCCoreFragment) r1
            r1.dismissAllowingStateLoss()
            goto Lfa
        L49:
            java.lang.String r0 = "SENDGIFT"
            boolean r1 = r1.equals(r0)
            if (r1 != 0) goto L53
            goto Ld8
        L53:
            com.guochao.faceshow.utils.LiveRandomGo r1 = com.guochao.faceshow.utils.LiveRandomGo.INSTANCE
            r1.sendLiveGift()
            androidx.fragment.app.FragmentActivity r1 = r2.getActivity()
            boolean r1 = r1 instanceof com.guochao.faceshow.signin.activity.UserSigninCenterActivity
            if (r1 != 0) goto Lfa
            androidx.fragment.app.Fragment r1 = r2.getParentFragment()
            boolean r1 = r1 instanceof com.guochao.faceshow.aaspring.base.mvvm.fragment.GCCoreFragment
            if (r1 == 0) goto Lfa
            androidx.fragment.app.Fragment r1 = r2.getParentFragment()
            kotlin.jvm.internal.Intrinsics.checkNotNull(r1, r3)
            com.guochao.faceshow.aaspring.base.mvvm.fragment.GCCoreFragment r1 = (com.guochao.faceshow.aaspring.base.mvvm.fragment.GCCoreFragment) r1
            r1.dismissAllowingStateLoss()
            goto Lfa
        L76:
            java.lang.String r0 = "FRIENDCOMMENT"
            boolean r1 = r1.equals(r0)
            if (r1 != 0) goto Lb1
            goto Ld8
        L7f:
            java.lang.String r0 = "USERSING"
            boolean r1 = r1.equals(r0)
            if (r1 != 0) goto L88
            goto Ld8
        L88:
            androidx.fragment.app.FragmentActivity r1 = r2.getActivity()
            if (r1 == 0) goto Lfa
            com.guochao.faceshow.signin.SigninManager r3 = com.guochao.faceshow.signin.SigninManager.INSTANCE
            com.guochao.faceshow.signin.fragment.ActivityTaskFragment$initView$2$onBindViewHolder$1$1$1$1 r0 = new com.guochao.faceshow.signin.fragment.ActivityTaskFragment$initView$2$onBindViewHolder$1$1$1$1
            r0.<init>()
            r3.checkSignInTask(r1, r0)
            goto Lfa
        L99:
            java.lang.String r0 = "RECHARGE"
            boolean r1 = r1.equals(r0)
            if (r1 != 0) goto La2
            goto Ld8
        La2:
            com.guochao.faceshow.utils.LiveRandomGo r1 = com.guochao.faceshow.utils.LiveRandomGo.INSTANCE
            r1.showRechargeDialog()
            goto Lfa
        La8:
            java.lang.String r0 = "FRIENDLIKE"
            boolean r1 = r1.equals(r0)
            if (r1 != 0) goto Lb1
            goto Ld8
        Lb1:
            androidx.fragment.app.FragmentActivity r1 = r2.getActivity()
            if (r1 == 0) goto Lba
            r1.finish()
        Lba:
            com.guochao.faceshow.utils.LiveRandomGo r1 = com.guochao.faceshow.utils.LiveRandomGo.INSTANCE
            r1.gotoUgc()
            goto Lfa
        Lc0:
            java.lang.String r0 = "SENDVIDEO"
            boolean r1 = r1.equals(r0)
            if (r1 != 0) goto Lc9
            goto Ld8
        Lc9:
            androidx.fragment.app.FragmentActivity r1 = r2.getActivity()
            if (r1 == 0) goto Ld2
            r1.finish()
        Ld2:
            com.guochao.faceshow.utils.LiveRandomGo r1 = com.guochao.faceshow.utils.LiveRandomGo.INSTANCE
            r1.sendVideo()
            goto Lfa
        Ld8:
            androidx.fragment.app.FragmentActivity r1 = r2.getActivity()
            boolean r1 = r1 instanceof com.guochao.faceshow.signin.activity.UserSigninCenterActivity
            if (r1 == 0) goto Le6
            com.guochao.faceshow.utils.LiveRandomGo r1 = com.guochao.faceshow.utils.LiveRandomGo.INSTANCE
            r1.goRandomLive()
            goto Lfa
        Le6:
            androidx.fragment.app.Fragment r1 = r2.getParentFragment()
            boolean r1 = r1 instanceof com.guochao.faceshow.aaspring.base.mvvm.fragment.GCCoreFragment
            if (r1 == 0) goto Lfa
            androidx.fragment.app.Fragment r1 = r2.getParentFragment()
            kotlin.jvm.internal.Intrinsics.checkNotNull(r1, r3)
            com.guochao.faceshow.aaspring.base.mvvm.fragment.GCCoreFragment r1 = (com.guochao.faceshow.aaspring.base.mvvm.fragment.GCCoreFragment) r1
            r1.dismissAllowingStateLoss()
        Lfa:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.guochao.faceshow.signin.fragment.ActivityTaskFragment$initView$2.m764onBindViewHolder$lambda5$lambda2(com.guochao.faceshow.signin.bean.GrowTaskBean, com.guochao.faceshow.signin.fragment.ActivityTaskFragment, android.view.View):void");
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: onBindViewHolder$lambda-5$lambda-3  reason: not valid java name */
    public static final void m765onBindViewHolder$lambda5$lambda3(ActivityTaskFragment this$0, GrowTaskBean itemData, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(itemData, "$itemData");
        this$0.getViewModel().getSigninReward(itemData);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: onBindViewHolder$lambda-5$lambda-4  reason: not valid java name */
    public static final void m766onBindViewHolder$lambda5$lambda4(ActivityTaskFragment this$0, GrowTaskBean itemData, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(itemData, "$itemData");
        this$0.gotoActivity(String.valueOf(itemData.getActivityId()), itemData.getActivityName(), itemData.getActivityData());
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: onCreateViewHolder$lambda-0  reason: not valid java name */
    public static final void m767onCreateViewHolder$lambda0(ActivityTaskFragment this$0, View view) {
        Integer taskStatus;
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Object tag = view.getTag();
        Intrinsics.checkNotNull(tag, "null cannot be cast to non-null type kotlin.Int");
        int intValue = ((Integer) tag).intValue();
        GrowTaskBean growTaskBean = this$0.getMDataList().get(intValue);
        Integer activityFlag = growTaskBean.getActivityFlag();
        if (activityFlag != null && activityFlag.intValue() == 1 && (taskStatus = growTaskBean.getTaskStatus()) != null && taskStatus.intValue() == 2) {
            EventTrackingV2Utils.INSTANCE.track(EventTrackingV2Utils.activity_load_from, "4");
            this$0.gotoActivity(String.valueOf(growTaskBean.getActivityId()), growTaskBean.getActivityName(), growTaskBean.getActivityData());
            return;
        }
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

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public void onBindViewHolder(@NotNull BaseViewHolder holder, int i9) {
        Intrinsics.checkNotNullParameter(holder, "holder");
        holder.itemView.setTag(Integer.valueOf(i9));
        final GrowTaskBean growTaskBean = this.this$0.getMDataList().get(i9);
        TextView textView = (TextView) holder.getView(R$id.activityNameTV);
        if (textView != null) {
            textView.setText(growTaskBean.getActivityName());
        }
        TextView textView2 = (TextView) holder.getView(R$id.btn_do_task);
        if (textView2 != null) {
            final ActivityTaskFragment activityTaskFragment = this.this$0;
            Integer taskStatus = growTaskBean.getTaskStatus();
            if (taskStatus != null && taskStatus.intValue() == 0) {
                textView2.setEnabled(true);
                textView2.setSelected(false);
                textView2.setText("Go");
                textView2.setTextColor(Color.parseColor("#556EFF"));
                textView2.setOnClickListener(new View.OnClickListener() { // from class: com.guochao.faceshow.signin.fragment.c
                    @Override // android.view.View.OnClickListener
                    public final void onClick(View view) {
                        ActivityTaskFragment$initView$2.m764onBindViewHolder$lambda5$lambda2(GrowTaskBean.this, activityTaskFragment, view);
                    }
                });
            } else if (taskStatus != null && taskStatus.intValue() == 1) {
                textView2.setEnabled(true);
                textView2.setSelected(true);
                textView2.setText("Get");
                textView2.setTextColor(Color.parseColor("#FFFFFF"));
                textView2.setOnClickListener(new View.OnClickListener() { // from class: com.guochao.faceshow.signin.fragment.f
                    @Override // android.view.View.OnClickListener
                    public final void onClick(View view) {
                        ActivityTaskFragment$initView$2.m765onBindViewHolder$lambda5$lambda3(ActivityTaskFragment.this, growTaskBean, view);
                    }
                });
            } else {
                textView2.setEnabled(true);
                textView2.setSelected(true);
                textView2.setText("Draw");
                textView2.setTextColor(Color.parseColor("#FFFFFF"));
                textView2.setOnClickListener(new View.OnClickListener() { // from class: com.guochao.faceshow.signin.fragment.e
                    @Override // android.view.View.OnClickListener
                    public final void onClick(View view) {
                        ActivityTaskFragment$initView$2.m766onBindViewHolder$lambda5$lambda4(ActivityTaskFragment.this, growTaskBean, view);
                    }
                });
            }
        }
        String str = null;
        if (PushConstants.EXTRA_APPLICATION_PENDING_INTENT.equals(growTaskBean.getCheckMode())) {
            if ("kanzhibao".equals(growTaskBean.getTaskBelong())) {
                TextView textView3 = (TextView) holder.getView(R$id.task_name);
                if (textView3 != null) {
                    String taskName = growTaskBean.getTaskName();
                    if (taskName != null) {
                        SigninManager signinManager = SigninManager.INSTANCE;
                        int mActivityWatchLiveSecond = signinManager.getMActivityWatchLiveSecond() / 60;
                        Integer param = growTaskBean.getParam();
                        Integer param2 = mActivityWatchLiveSecond > (param != null ? param.intValue() : 1) ? growTaskBean.getParam() : Integer.valueOf(signinManager.getMActivityWatchLiveSecond() / 60);
                        StringBuilder sb2 = new StringBuilder();
                        StringCompanionObject stringCompanionObject = StringCompanionObject.INSTANCE;
                        String format = String.format(taskName, Arrays.copyOf(new Object[]{growTaskBean.getParam()}, 1));
                        Intrinsics.checkNotNullExpressionValue(format, "format(format, *args)");
                        sb2.append(format);
                        sb2.append('(');
                        Integer taskStatus2 = growTaskBean.getTaskStatus();
                        if (taskStatus2 != null && taskStatus2.intValue() == 2) {
                            param2 = growTaskBean.getParam();
                        }
                        sb2.append(param2);
                        sb2.append(IOUtils.DIR_SEPARATOR_UNIX);
                        sb2.append(growTaskBean.getParam());
                        sb2.append(')');
                        str = sb2.toString();
                    }
                    textView3.setText(str);
                }
            } else if ("gongliao".equals(growTaskBean.getTaskBelong())) {
                SigninCache mSigninCache = SigninManager.INSTANCE.getMSigninCache();
                int daySendMsgCount = mSigninCache != null ? mSigninCache.getDaySendMsgCount() : 0;
                TextView textView4 = (TextView) holder.getView(R$id.task_name);
                if (textView4 != null) {
                    String taskName2 = growTaskBean.getTaskName();
                    if (taskName2 != null) {
                        Integer param3 = growTaskBean.getParam();
                        Integer param4 = daySendMsgCount > (param3 != null ? param3.intValue() : 1) ? growTaskBean.getParam() : Integer.valueOf(daySendMsgCount);
                        StringBuilder sb3 = new StringBuilder();
                        StringCompanionObject stringCompanionObject2 = StringCompanionObject.INSTANCE;
                        String format2 = String.format(taskName2, Arrays.copyOf(new Object[]{growTaskBean.getParam()}, 1));
                        Intrinsics.checkNotNullExpressionValue(format2, "format(format, *args)");
                        sb3.append(format2);
                        sb3.append('(');
                        Integer taskStatus3 = growTaskBean.getTaskStatus();
                        if (taskStatus3 != null && taskStatus3.intValue() == 2) {
                            param4 = growTaskBean.getParam();
                        }
                        sb3.append(param4);
                        sb3.append(IOUtils.DIR_SEPARATOR_UNIX);
                        sb3.append(growTaskBean.getParam());
                        sb3.append(')');
                        str = sb3.toString();
                    }
                    textView4.setText(str);
                }
            } else {
                TextView textView5 = (TextView) holder.getView(R$id.task_name);
                if (textView5 != null) {
                    String taskName3 = growTaskBean.getTaskName();
                    if (taskName3 != null) {
                        StringBuilder sb4 = new StringBuilder();
                        StringCompanionObject stringCompanionObject3 = StringCompanionObject.INSTANCE;
                        String format3 = String.format(taskName3, Arrays.copyOf(new Object[]{growTaskBean.getParam()}, 1));
                        Intrinsics.checkNotNullExpressionValue(format3, "format(format, *args)");
                        sb4.append(format3);
                        sb4.append('(');
                        Integer taskStatus4 = growTaskBean.getTaskStatus();
                        sb4.append((taskStatus4 != null && taskStatus4.intValue() == 0) ? 0 : 1);
                        sb4.append("/1)");
                        str = sb4.toString();
                    }
                    textView5.setText(str);
                }
            }
        } else {
            TextView textView6 = (TextView) holder.getView(R$id.task_name);
            if (textView6 != null) {
                String taskName4 = growTaskBean.getTaskName();
                if (taskName4 != null) {
                    StringBuilder sb5 = new StringBuilder();
                    StringCompanionObject stringCompanionObject4 = StringCompanionObject.INSTANCE;
                    String format4 = String.format(taskName4, Arrays.copyOf(new Object[]{growTaskBean.getParam()}, 1));
                    Intrinsics.checkNotNullExpressionValue(format4, "format(format, *args)");
                    sb5.append(format4);
                    sb5.append('(');
                    sb5.append(growTaskBean.getProgresNum());
                    sb5.append(IOUtils.DIR_SEPARATOR_UNIX);
                    sb5.append(growTaskBean.getParam());
                    sb5.append(')');
                    str = sb5.toString();
                }
                textView6.setText(str);
            }
        }
        View view = holder.getView(R$id.first_gift);
        Intrinsics.checkNotNull(view);
        ViewGroup viewGroup = (ViewGroup) view;
        View view2 = holder.getView(R$id.second_gift);
        Intrinsics.checkNotNull(view2);
        ViewGroup viewGroup2 = (ViewGroup) view2;
        View view3 = holder.getView(R$id.third_gift);
        Intrinsics.checkNotNull(view3);
        ViewGroup viewGroup3 = (ViewGroup) view3;
        List<RewardList> prizeVoList = growTaskBean.getPrizeVoList();
        if (prizeVoList != null) {
            int size = prizeVoList.size();
            if (size == 0) {
                ViewParent parent = viewGroup.getParent();
                Intrinsics.checkNotNull(parent, "null cannot be cast to non-null type android.view.ViewGroup");
                ((ViewGroup) parent).setVisibility(8);
            } else if (size == 1) {
                ViewParent parent2 = viewGroup.getParent();
                Intrinsics.checkNotNull(parent2, "null cannot be cast to non-null type android.view.ViewGroup");
                ((ViewGroup) parent2).setVisibility(0);
                viewGroup.setVisibility(0);
                viewGroup2.setVisibility(8);
                viewGroup3.setVisibility(8);
            } else if (size != 2) {
                ViewParent parent3 = viewGroup.getParent();
                Intrinsics.checkNotNull(parent3, "null cannot be cast to non-null type android.view.ViewGroup");
                ((ViewGroup) parent3).setVisibility(0);
                viewGroup.setVisibility(0);
                viewGroup2.setVisibility(0);
                viewGroup3.setVisibility(0);
            } else {
                ViewParent parent4 = viewGroup.getParent();
                Intrinsics.checkNotNull(parent4, "null cannot be cast to non-null type android.view.ViewGroup");
                ((ViewGroup) parent4).setVisibility(0);
                viewGroup.setVisibility(0);
                viewGroup2.setVisibility(0);
                viewGroup3.setVisibility(8);
            }
            if (prizeVoList.size() >= 3) {
                View childAt = viewGroup3.getChildAt(0);
                Intrinsics.checkNotNull(childAt, "null cannot be cast to non-null type android.widget.ImageView");
                View childAt2 = viewGroup3.getChildAt(1);
                Intrinsics.checkNotNull(childAt2, "null cannot be cast to non-null type android.widget.TextView");
                TextView textView7 = (TextView) childAt2;
                RewardList rewardList = prizeVoList.get(2);
                setImageResource((ImageView) childAt, rewardList);
                StringBuilder sb6 = new StringBuilder();
                sb6.append('x');
                Integer prizeNum = rewardList.getPrizeNum();
                sb6.append(prizeNum != null ? prizeNum.intValue() : 1);
                textView7.setText(sb6.toString());
            }
            if (prizeVoList.size() >= 2) {
                View childAt3 = viewGroup2.getChildAt(0);
                Intrinsics.checkNotNull(childAt3, "null cannot be cast to non-null type android.widget.ImageView");
                View childAt4 = viewGroup2.getChildAt(1);
                Intrinsics.checkNotNull(childAt4, "null cannot be cast to non-null type android.widget.TextView");
                TextView textView8 = (TextView) childAt4;
                setImageResource((ImageView) childAt3, prizeVoList.get(1));
                StringBuilder sb7 = new StringBuilder();
                sb7.append('x');
                Integer prizeNum2 = prizeVoList.get(1).getPrizeNum();
                sb7.append(prizeNum2 != null ? prizeNum2.intValue() : 1);
                textView8.setText(sb7.toString());
            }
            if (prizeVoList.size() >= 1) {
                View childAt5 = viewGroup.getChildAt(0);
                Intrinsics.checkNotNull(childAt5, "null cannot be cast to non-null type android.widget.ImageView");
                View childAt6 = viewGroup.getChildAt(1);
                Intrinsics.checkNotNull(childAt6, "null cannot be cast to non-null type android.widget.TextView");
                TextView textView9 = (TextView) childAt6;
                setImageResource((ImageView) childAt5, prizeVoList.get(0));
                StringBuilder sb8 = new StringBuilder();
                sb8.append('x');
                Integer prizeNum3 = prizeVoList.get(0).getPrizeNum();
                sb8.append(prizeNum3 != null ? prizeNum3.intValue() : 1);
                textView9.setText(sb8.toString());
            }
        }
        if (growTaskBean.getPrizeVoList() == null) {
            ViewParent parent5 = viewGroup.getParent();
            Intrinsics.checkNotNull(parent5, "null cannot be cast to non-null type android.view.ViewGroup");
            ((ViewGroup) parent5).setVisibility(8);
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    @NotNull
    public BaseViewHolder onCreateViewHolder(@NotNull ViewGroup parent, int i9) {
        Intrinsics.checkNotNullParameter(parent, "parent");
        BaseViewHolder baseViewHolder = new BaseViewHolder(LayoutInflater.from(parent.getContext()).inflate(R$layout.item_activity_task, parent, false));
        View view = baseViewHolder.itemView;
        final ActivityTaskFragment activityTaskFragment = this.this$0;
        view.setOnClickListener(new View.OnClickListener() { // from class: com.guochao.faceshow.signin.fragment.d
            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                ActivityTaskFragment$initView$2.m767onCreateViewHolder$lambda0(ActivityTaskFragment.this, view2);
            }
        });
        return baseViewHolder;
    }
}
