package com.guochao.faceshow.aaspring.modulars.chat.fragment;

import android.app.Dialog;
import android.content.DialogInterface;
import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.text.SpannableStringBuilder;
import android.text.TextUtils;
import android.util.SparseArray;
import android.view.KeyEvent;
import android.view.View;
import android.view.Window;
import android.widget.TextView;
import androidx.core.content.ContextCompat;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentActivity;
import androidx.fragment.app.FragmentManager;
import androidx.fragment.app.FragmentTransaction;
import com.facebook.appevents.internal.ViewHierarchyConstants;
import com.guochao.faceshow.R;
import com.guochao.faceshow.aaspring.base.fragment.BaseDialogFragment;
import com.guochao.faceshow.aaspring.base.http.response.FaceCastBaseResponse;
import com.guochao.faceshow.aaspring.beans.ChatStatusBean;
import com.guochao.faceshow.aaspring.beans.ResourceCategoryItem;
import com.guochao.faceshow.aaspring.beans.ResourceListItemBean;
import com.guochao.faceshow.aaspring.modulars.chat.activity.ChatActivity;
import com.guochao.faceshow.aaspring.modulars.gift.fragment.GiftFragment;
import com.guochao.faceshow.aaspring.modulars.googlepay.firstrecharge.RechargeDialog;
import com.guochao.faceshow.component.live.activity.FakeLiveChatActivity;
import com.guochao.faceshow.component.live.fragment.LiveIMChatFloatFragment;
import com.guochao.faceshow.gift.SendGiftCallBack;
import com.guochao.faceshow.mine.model.MyWalletBean;
import com.guochao.faceshow.utils.DensityUtil;
import com.guochao.faceshow.utils.ScreenTools;
import com.guochao.faceshow.views.r;
import java.util.Collections;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.JvmStatic;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Ref;
import kotlin.text.StringsKt__StringsKt;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import p9.a;
@Metadata(d1 = {"\u0000N\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0007\u0018\u0000 !2\u00020\u0001:\u0001!B\u0005¢\u0006\u0002\u0010\u0002J\b\u0010\u0010\u001a\u00020\u0011H\u0002J\b\u0010\u0012\u001a\u00020\u0013H\u0016J\u0012\u0010\u0014\u001a\u00020\u00112\b\u0010\u0015\u001a\u0004\u0018\u00010\u0016H\u0016J\b\u0010\u0017\u001a\u00020\u0011H\u0014J\u0012\u0010\u0018\u001a\u00020\u00192\b\u0010\u001a\u001a\u0004\u0018\u00010\u001bH\u0016J\b\u0010\u001c\u001a\u00020\u0011H\u0002J\u0012\u0010\u001d\u001a\u00020\u00112\b\u0010\u001e\u001a\u0004\u0018\u00010\u0004H\u0002J\b\u0010\u001f\u001a\u00020\u0011H\u0002J\b\u0010 \u001a\u00020\u0011H\u0002R\u0010\u0010\u0003\u001a\u0004\u0018\u00010\u0004X\u0082\u000e¢\u0006\u0002\n\u0000R$\u0010\u0005\u001a\f\u0012\u0006\u0012\u0004\u0018\u00010\u0007\u0018\u00010\u0006X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\b\u0010\t\"\u0004\b\n\u0010\u000bR\u0010\u0010\f\u001a\u0004\u0018\u00010\rX\u0082\u000e¢\u0006\u0002\n\u0000R\u0010\u0010\u000e\u001a\u0004\u0018\u00010\u000fX\u0082\u000e¢\u0006\u0002\n\u0000¨\u0006\""}, d2 = {"Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/ChatLimitDialog;", "Lcom/guochao/faceshow/aaspring/base/fragment/BaseDialogFragment;", "()V", "dialogTitleView", "Landroid/widget/TextView;", "mData", "", "Lcom/guochao/faceshow/aaspring/beans/ResourceCategoryItem;", "getMData", "()Ljava/util/List;", "setMData", "(Ljava/util/List;)V", "mNormalFragment", "Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/ChatLimitNormalFragment;", "mVipFragment", "Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/ChatLimitVipFragment;", "dismissSelf", "", "getLayoutId", "", "initView", ViewHierarchyConstants.VIEW_KEY, "Landroid/view/View;", "loadData", "onCreateDialog", "Landroid/app/Dialog;", "savedInstanceState", "Landroid/os/Bundle;", "refreshChildData", "resetText", "textView", "sendGiftToChat", "showChargeDialog", "Companion", "app_GooglePlayRelease"}, k = 1, mv = {1, 7, 1}, xi = 48)
/* loaded from: classes3.dex */
public final class ChatLimitDialog extends BaseDialogFragment {
    @NotNull
    public static final Companion Companion = new Companion(null);
    @Nullable
    private TextView dialogTitleView;
    @Nullable
    private List<? extends ResourceCategoryItem> mData;
    @Nullable
    private ChatLimitNormalFragment mNormalFragment;
    @Nullable
    private ChatLimitVipFragment mVipFragment;

    @Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0010\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006H\u0007¨\u0006\u0007"}, d2 = {"Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/ChatLimitDialog$Companion;", "", "()V", "show", "", "fragmentManager", "Landroidx/fragment/app/FragmentManager;", "app_GooglePlayRelease"}, k = 1, mv = {1, 7, 1}, xi = 48)
    /* loaded from: classes3.dex */
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @JvmStatic
        public final void show(@NotNull FragmentManager fragmentManager) {
            Intrinsics.checkNotNullParameter(fragmentManager, "fragmentManager");
            new ChatLimitDialog().show(fragmentManager, ChatLimitDialog.class.getSimpleName());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void dismissSelf() {
        FragmentManager supportFragmentManager;
        List<Fragment> fragments;
        FragmentManager supportFragmentManager2;
        List<Fragment> fragments2;
        if (getActivity() instanceof ChatActivity) {
            FragmentActivity activity = getActivity();
            if (activity == null || (supportFragmentManager2 = activity.getSupportFragmentManager()) == null || (fragments2 = supportFragmentManager2.getFragments()) == null) {
                return;
            }
            for (Fragment fragment : fragments2) {
                if (fragment instanceof ChatLimitDialog) {
                    FragmentActivity activity2 = getActivity();
                    Intrinsics.checkNotNull(activity2, "null cannot be cast to non-null type com.guochao.faceshow.aaspring.modulars.chat.activity.ChatActivity");
                    ((ChatActivity) activity2).getSupportFragmentManager().beginTransaction().remove(fragment).commitAllowingStateLoss();
                    Dialog dialog = ((ChatLimitDialog) fragment).getDialog();
                    if (dialog != null) {
                        dialog.dismiss();
                    }
                }
            }
            return;
        }
        FragmentActivity activity3 = getActivity();
        if (activity3 == null || (supportFragmentManager = activity3.getSupportFragmentManager()) == null || (fragments = supportFragmentManager.getFragments()) == null) {
            return;
        }
        for (Fragment fragment2 : fragments) {
            if (fragment2 instanceof LiveIMChatFloatFragment) {
                LiveIMChatFloatFragment liveIMChatFloatFragment = (LiveIMChatFloatFragment) fragment2;
                liveIMChatFloatFragment.getChildFragmentManager().beginTransaction().remove(this).commitAllowingStateLoss();
                Dialog dialog2 = liveIMChatFloatFragment.getDialog();
                if (dialog2 != null) {
                    dialog2.dismiss();
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: initView$lambda-0  reason: not valid java name */
    public static final void m349initView$lambda0(ChatLimitDialog this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        FragmentActivity activity = this$0.getActivity();
        if (activity != null) {
            activity.onBackPressed();
        }
        this$0.dismissSelf();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: initView$lambda-2$lambda-1  reason: not valid java name */
    public static final void m350initView$lambda2$lambda1(ChatLimitDialog this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.sendGiftToChat();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: initView$lambda-3  reason: not valid java name */
    public static final void m351initView$lambda3(TextView textView, TextView textView2, ChatLimitDialog this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        textView.setSelected(true);
        if (textView2 != null) {
            textView2.setSelected(false);
        }
        textView.setPadding(DensityUtil.dp2px(5.0f), DensityUtil.dp2px(20.0f), DensityUtil.dp2px(5.0f), DensityUtil.dp2px(7.0f));
        if (textView2 != null) {
            textView2.setPadding(DensityUtil.dp2px(5.0f), DensityUtil.dp2px(9.0f), DensityUtil.dp2px(5.0f), DensityUtil.dp2px(7.0f));
        }
        if (this$0.mNormalFragment == null) {
            this$0.mNormalFragment = new ChatLimitNormalFragment();
        }
        FragmentTransaction beginTransaction = this$0.getChildFragmentManager().beginTransaction();
        ChatLimitNormalFragment chatLimitNormalFragment = this$0.mNormalFragment;
        Intrinsics.checkNotNull(chatLimitNormalFragment);
        beginTransaction.replace(R.id.fragment_container, chatLimitNormalFragment).commitAllowingStateLoss();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: initView$lambda-4  reason: not valid java name */
    public static final void m352initView$lambda4(TextView textView, TextView textView2, ChatLimitDialog this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        if (textView != null) {
            textView.setSelected(false);
        }
        textView2.setSelected(true);
        if (textView != null) {
            textView.setPadding(DensityUtil.dp2px(5.0f), DensityUtil.dp2px(9.0f), DensityUtil.dp2px(5.0f), DensityUtil.dp2px(7.0f));
        }
        textView2.setPadding(DensityUtil.dp2px(5.0f), DensityUtil.dp2px(20.0f), DensityUtil.dp2px(5.0f), DensityUtil.dp2px(7.0f));
        if (this$0.mVipFragment == null) {
            this$0.mVipFragment = new ChatLimitVipFragment();
        }
        FragmentTransaction beginTransaction = this$0.getChildFragmentManager().beginTransaction();
        ChatLimitVipFragment chatLimitVipFragment = this$0.mVipFragment;
        Intrinsics.checkNotNull(chatLimitVipFragment);
        beginTransaction.replace(R.id.fragment_container, chatLimitVipFragment).commitAllowingStateLoss();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void refreshChildData() {
        ChatLimitNormalFragment chatLimitNormalFragment = this.mNormalFragment;
        if (chatLimitNormalFragment != null) {
            chatLimitNormalFragment.setCurData();
        }
        ChatLimitVipFragment chatLimitVipFragment = this.mVipFragment;
        if (chatLimitVipFragment != null) {
            chatLimitVipFragment.setCurData();
        }
    }

    private final void resetText(TextView textView) {
        int indexOf$default;
        int i9;
        Drawable drawable = ContextCompat.getDrawable(requireContext(), R.mipmap.icon_chat_limit_vip);
        SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder("{icon} " + getString(R.string.chat_limit_gift_vip));
        if (drawable == null) {
            if (textView == null) {
                return;
            }
            textView.setText(spannableStringBuilder);
            return;
        }
        int minimumWidth = drawable.getMinimumWidth();
        int minimumHeight = drawable.getMinimumHeight();
        TextView textView2 = new TextView(textView != null ? textView.getContext() : null);
        textView2.setTextSize(2, 12.0f);
        textView2.measure(0, 0);
        float measuredHeight = textView2.getMeasuredHeight();
        drawable.setBounds(0, 0, (int) ((minimumWidth * measuredHeight) / minimumHeight), (int) measuredHeight);
        r rVar = new r(drawable);
        String spannableStringBuilder2 = spannableStringBuilder.toString();
        Intrinsics.checkNotNullExpressionValue(spannableStringBuilder2, "spannableStringBuilder.toString()");
        indexOf$default = StringsKt__StringsKt.indexOf$default((CharSequence) spannableStringBuilder2, "{icon}", 0, false, 6, (Object) null);
        if (indexOf$default >= 0 && (i9 = indexOf$default + 6) <= spannableStringBuilder.length()) {
            spannableStringBuilder.setSpan(rVar, indexOf$default, i9, 17);
        }
        if (textView == null) {
            return;
        }
        textView.setText(spannableStringBuilder);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v25, types: [T, com.guochao.faceshow.aaspring.beans.ResourceListItemBean] */
    /* JADX WARN: Type inference failed for: r0v26, types: [T, com.guochao.faceshow.aaspring.beans.ResourceListItemBean] */
    /* JADX WARN: Type inference failed for: r0v29, types: [T, java.lang.String] */
    /* JADX WARN: Type inference failed for: r0v32, types: [T, java.lang.String] */
    private final void sendGiftToChat() {
        String price;
        final Ref.ObjectRef objectRef = new Ref.ObjectRef();
        final Ref.ObjectRef objectRef2 = new Ref.ObjectRef();
        final Ref.ObjectRef objectRef3 = new Ref.ObjectRef();
        if (getActivity() instanceof ChatActivity) {
            FragmentActivity activity = getActivity();
            Intrinsics.checkNotNull(activity, "null cannot be cast to non-null type com.guochao.faceshow.aaspring.modulars.chat.activity.ChatActivity");
            objectRef.element = ((ChatActivity) activity).mChatUserId;
            FragmentActivity activity2 = getActivity();
            Intrinsics.checkNotNull(activity2, "null cannot be cast to non-null type com.guochao.faceshow.aaspring.modulars.chat.activity.ChatActivity");
            objectRef2.element = ((ChatActivity) activity2).mChatUserName;
        } else if (getParentFragment() instanceof LiveIMChatFloatFragment) {
            Fragment parentFragment = getParentFragment();
            Intrinsics.checkNotNull(parentFragment, "null cannot be cast to non-null type com.guochao.faceshow.component.live.fragment.LiveIMChatFloatFragment");
            FakeLiveChatActivity chatActivity = ((LiveIMChatFloatFragment) parentFragment).getChatActivity();
            objectRef.element = chatActivity != null ? chatActivity.mChatUserId : 0;
            Fragment parentFragment2 = getParentFragment();
            Intrinsics.checkNotNull(parentFragment2, "null cannot be cast to non-null type com.guochao.faceshow.component.live.fragment.LiveIMChatFloatFragment");
            FakeLiveChatActivity chatActivity2 = ((LiveIMChatFloatFragment) parentFragment2).getChatActivity();
            objectRef2.element = chatActivity2 != null ? chatActivity2.mChatUserName : 0;
        }
        ChatLimitNormalFragment chatLimitNormalFragment = this.mNormalFragment;
        if (chatLimitNormalFragment != null && chatLimitNormalFragment.isAdded() && !chatLimitNormalFragment.isDetached()) {
            objectRef3.element = chatLimitNormalFragment.getMSelectItem();
        }
        ChatLimitVipFragment chatLimitVipFragment = this.mVipFragment;
        if (chatLimitVipFragment != null && chatLimitVipFragment.isAdded() && !chatLimitVipFragment.isDetached()) {
            objectRef3.element = chatLimitVipFragment.getMSelectItem();
        }
        if (!TextUtils.isEmpty((CharSequence) objectRef.element) && objectRef3.element != 0) {
            final ResourceCategoryItem resourceCategoryItem = new ResourceCategoryItem();
            resourceCategoryItem.setSourctTypeId(163);
            ResourceListItemBean resourceListItemBean = (ResourceListItemBean) objectRef3.element;
            if (resourceListItemBean == null || (price = resourceListItemBean.getPrice()) == null) {
                return;
            }
            p9.a.g().q(this, Integer.parseInt(price), false, true, new a.f() { // from class: com.guochao.faceshow.aaspring.modulars.chat.fragment.ChatLimitDialog$sendGiftToChat$3
                @Override // p9.a.f
                public void onCustomRecharge() {
                    this.showChargeDialog();
                }

                @Override // p9.a.f
                public void onResponse() {
                    ChatActivity chatActivity3;
                    ChatControllerFragment chatControllerFragment;
                    ChatLimitNormalFragment chatLimitNormalFragment2;
                    int i9;
                    ChatLimitNormalFragment chatLimitNormalFragment3;
                    Integer diamond;
                    ResourceListItemBean resourceListItemBean2;
                    String price2;
                    MyWalletBean e10 = p9.a.g().e();
                    if (e10 != null && (diamond = e10.getDiamond()) != null && (resourceListItemBean2 = objectRef3.element) != null && (price2 = resourceListItemBean2.getPrice()) != null) {
                        Intrinsics.checkNotNullExpressionValue(price2, "price");
                        int intValue = Integer.valueOf(Integer.parseInt(price2)).intValue();
                        MyWalletBean e11 = p9.a.g().e();
                        if (e11 != null) {
                            e11.setDiamond(Integer.valueOf(diamond.intValue() - intValue));
                        }
                    }
                    GiftFragment.r rVar = new GiftFragment.r();
                    rVar.f17819a = objectRef.element;
                    rVar.f17820b = objectRef2.element;
                    ChatStatusBean chatStatusBean = null;
                    if (this.getActivity() instanceof ChatActivity) {
                        FragmentActivity activity3 = this.getActivity();
                        Intrinsics.checkNotNull(activity3, "null cannot be cast to non-null type com.guochao.faceshow.aaspring.modulars.chat.activity.ChatActivity");
                        chatActivity3 = (ChatActivity) activity3;
                    } else if (this.getParentFragment() instanceof LiveIMChatFloatFragment) {
                        Fragment parentFragment3 = this.getParentFragment();
                        Intrinsics.checkNotNull(parentFragment3, "null cannot be cast to non-null type com.guochao.faceshow.component.live.fragment.LiveIMChatFloatFragment");
                        chatActivity3 = ((LiveIMChatFloatFragment) parentFragment3).getChatActivity();
                    } else {
                        chatActivity3 = null;
                    }
                    if (chatActivity3 != null) {
                        ResourceCategoryItem resourceCategoryItem2 = resourceCategoryItem;
                        ResourceListItemBean resourceListItemBean3 = objectRef3.element;
                        List<GiftFragment.r> singletonList = Collections.singletonList(rVar);
                        chatLimitNormalFragment2 = this.mNormalFragment;
                        if (chatLimitNormalFragment2 != null && chatLimitNormalFragment2.isAdded()) {
                            chatLimitNormalFragment3 = this.mNormalFragment;
                            if ((chatLimitNormalFragment3 == null || chatLimitNormalFragment3.isDetached()) ? false : true) {
                                i9 = 1;
                                chatActivity3.onSelectGift(resourceCategoryItem2, resourceListItemBean3, singletonList, 1, false, 115, i9, (SendGiftCallBack) null);
                            }
                        }
                        i9 = 2;
                        chatActivity3.onSelectGift(resourceCategoryItem2, resourceListItemBean3, singletonList, 1, false, 115, i9, (SendGiftCallBack) null);
                    }
                    ChatControllerFragment chatControllerFragment2 = chatActivity3 != null ? chatActivity3.getChatControllerFragment() : null;
                    if (chatControllerFragment2 != null) {
                        chatControllerFragment2.n2(true);
                    }
                    if (chatActivity3 != null && (chatControllerFragment = chatActivity3.getChatControllerFragment()) != null) {
                        chatStatusBean = chatControllerFragment.c2();
                    }
                    if (chatStatusBean != null) {
                        chatStatusBean.setIsChat(0);
                    }
                    this.dismissSelf();
                }
            });
            return;
        }
        showToast(R.string.chat_limit_send_gift_waiting);
    }

    @JvmStatic
    public static final void show(@NotNull FragmentManager fragmentManager) {
        Companion.show(fragmentManager);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void showChargeDialog() {
        RechargeDialog.Companion companion = RechargeDialog.Companion;
        FragmentManager childFragmentManager = getChildFragmentManager();
        Intrinsics.checkNotNullExpressionValue(childFragmentManager, "childFragmentManager");
        companion.showDialog(childFragmentManager, 0, 4);
    }

    @Override // com.guochao.faceshow.aaspring.base.fragment.BaseFragment
    public int getLayoutId() {
        return R.layout.dialog_chat_limit;
    }

    @Nullable
    public final List<ResourceCategoryItem> getMData() {
        return this.mData;
    }

    @Override // com.guochao.faceshow.aaspring.base.fragment.BaseFragment
    public void initView(@Nullable View view) {
        TextView textView;
        View findViewById;
        this.dialogTitleView = view != null ? (TextView) view.findViewById(R.id.dialog_title) : null;
        if (getCurrentUser().getRiskLevel() >= 3) {
            TextView textView2 = this.dialogTitleView;
            if (textView2 != null) {
                textView2.setText(R.string.chat_limit_unlimited_chat);
            }
        } else {
            TextView textView3 = this.dialogTitleView;
            if (textView3 != null) {
                textView3.setText(R.string.chat_limit_title);
            }
        }
        if (view != null && (findViewById = view.findViewById(R.id.chat_limit_ignore)) != null) {
            findViewById.setOnClickListener(new View.OnClickListener() { // from class: com.guochao.faceshow.aaspring.modulars.chat.fragment.d
                @Override // android.view.View.OnClickListener
                public final void onClick(View view2) {
                    ChatLimitDialog.m349initView$lambda0(ChatLimitDialog.this, view2);
                }
            });
        }
        if (view != null && (textView = (TextView) view.findViewById(R.id.chat_limit_open)) != null) {
            int makeMeasureSpec = View.MeasureSpec.makeMeasureSpec(0, 0);
            textView.measure(makeMeasureSpec, makeMeasureSpec);
            if (textView.getMeasuredWidth() > ((ScreenTools.getScreenWidth() - DensityUtil.dp2px(63.0f)) / 2.0f) - DensityUtil.dp2px(20.0f)) {
                textView.setTextSize(2, 11.0f);
                ((TextView) view.findViewById(R.id.chat_limit_ignore)).setTextSize(2, 11.0f);
            } else {
                textView.setMaxLines(1);
            }
            textView.setOnClickListener(new View.OnClickListener() { // from class: com.guochao.faceshow.aaspring.modulars.chat.fragment.e
                @Override // android.view.View.OnClickListener
                public final void onClick(View view2) {
                    ChatLimitDialog.m350initView$lambda2$lambda1(ChatLimitDialog.this, view2);
                }
            });
        }
        final TextView textView4 = view != null ? (TextView) view.findViewById(R.id.tab_left) : null;
        final TextView textView5 = view != null ? (TextView) view.findViewById(R.id.tab_right) : null;
        resetText(textView5);
        if (textView4 != null) {
            textView4.setOnClickListener(new View.OnClickListener() { // from class: com.guochao.faceshow.aaspring.modulars.chat.fragment.c
                @Override // android.view.View.OnClickListener
                public final void onClick(View view2) {
                    ChatLimitDialog.m351initView$lambda3(textView4, textView5, this, view2);
                }
            });
        }
        if (textView5 != null) {
            textView5.setOnClickListener(new View.OnClickListener() { // from class: com.guochao.faceshow.aaspring.modulars.chat.fragment.b
                @Override // android.view.View.OnClickListener
                public final void onClick(View view2) {
                    ChatLimitDialog.m352initView$lambda4(textView4, textView5, this, view2);
                }
            });
        }
        if (textView4 != null) {
            textView4.performClick();
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.guochao.faceshow.aaspring.base.fragment.BaseFragment
    protected void loadData() {
        com.guochao.faceshow.aaspring.manager.a.g().w(this, new com.guochao.faceshow.aaspring.base.http.callback.c<SparseArray<List<? extends ResourceCategoryItem>>>() { // from class: com.guochao.faceshow.aaspring.modulars.chat.fragment.ChatLimitDialog$loadData$1
            @Override // com.guochao.faceshow.aaspring.base.http.callback.c
            public void onFailure(@NotNull g7.a<SparseArray<List<? extends ResourceCategoryItem>>> exp) {
                Intrinsics.checkNotNullParameter(exp, "exp");
            }

            @Override // com.guochao.faceshow.aaspring.base.http.callback.c
            public /* bridge */ /* synthetic */ void onResponse(SparseArray<List<? extends ResourceCategoryItem>> sparseArray, FaceCastBaseResponse<SparseArray<List<? extends ResourceCategoryItem>>> faceCastBaseResponse) {
                onResponse2((SparseArray<List<ResourceCategoryItem>>) sparseArray, (FaceCastBaseResponse<SparseArray<List<ResourceCategoryItem>>>) faceCastBaseResponse);
            }

            /* renamed from: onResponse  reason: avoid collision after fix types in other method */
            public void onResponse2(@Nullable SparseArray<List<ResourceCategoryItem>> sparseArray, @NotNull FaceCastBaseResponse<SparseArray<List<ResourceCategoryItem>>> baseResponse) {
                Intrinsics.checkNotNullParameter(baseResponse, "baseResponse");
                if (sparseArray != null) {
                    ChatLimitDialog chatLimitDialog = ChatLimitDialog.this;
                    chatLimitDialog.setMData(sparseArray.get(15));
                    chatLimitDialog.refreshChildData();
                }
            }
        }, 15);
    }

    @Override // androidx.fragment.app.DialogFragment
    @NotNull
    public Dialog onCreateDialog(@Nullable Bundle bundle) {
        Dialog createBottomDialog = createBottomDialog(R.style.NormalDialog);
        createBottomDialog.setCanceledOnTouchOutside(false);
        Window window = createBottomDialog.getWindow();
        Intrinsics.checkNotNull(window);
        window.setDimAmount(0.6f);
        createBottomDialog.setOnKeyListener(new DialogInterface.OnKeyListener() { // from class: com.guochao.faceshow.aaspring.modulars.chat.fragment.ChatLimitDialog$onCreateDialog$1
            @Override // android.content.DialogInterface.OnKeyListener
            public boolean onKey(@Nullable DialogInterface dialogInterface, int i9, @Nullable KeyEvent keyEvent) {
                if (i9 == 4) {
                    FragmentActivity activity = ChatLimitDialog.this.getActivity();
                    if (activity != null) {
                        activity.onBackPressed();
                        return true;
                    }
                    return true;
                }
                return false;
            }
        });
        return createBottomDialog;
    }

    public final void setMData(@Nullable List<? extends ResourceCategoryItem> list) {
        this.mData = list;
    }
}
