package com.guochao.faceshow.component.live.fragment;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.text.SpannableStringBuilder;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import androidx.core.content.ContextCompat;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentActivity;
import androidx.fragment.app.FragmentManager;
import com.guochao.faceshow.R;
import com.guochao.faceshow.aaspring.base.mvvm.annotations.GCViewBinding;
import com.guochao.faceshow.aaspring.beans.ChatStatusBean;
import com.guochao.faceshow.aaspring.beans.ConversationInfo;
import com.guochao.faceshow.aaspring.modulars.chat.activity.ChatDetailActivity;
import com.guochao.faceshow.aaspring.modulars.chat.fragment.ChatControllerFragment;
import com.guochao.faceshow.aaspring.modulars.live.activity.BaseLiveActivity;
import com.guochao.faceshow.aaspring.utils.SpUtils;
import com.guochao.faceshow.aaspring.utils.SpanColorUtils;
import com.guochao.faceshow.component.live.activity.FakeLiveChatActivity;
import com.guochao.faceshow.component.live.utils.FloatFragmentUtils;
import com.guochao.faceshow.databinding.FragmentLiveIMChatFloatBinding;
import com.guochao.faceshow.utils.Contants;
import com.guochao.faceshow.utils.ScreenTools;
import com.guochao.faceshow.utils.SoftKeyBoardUtils;
import kotlin.Metadata;
import kotlin.jvm.JvmStatic;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.greenrobot.eventbus.Subscribe;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(bv = {}, d1 = {"\u0000H\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\u000b\u0018\u0000 ,2\u00020\u0001:\u0001,B\u0007¢\u0006\u0004\b+\u0010*J\u0018\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u0004H\u0002J\u001a\u0010\f\u001a\u00020\u00062\u0006\u0010\t\u001a\u00020\b2\b\u0010\u000b\u001a\u0004\u0018\u00010\nH\u0014J\u0010\u0010\u000e\u001a\u00020\u00062\u0006\u0010\u000e\u001a\u00020\rH\u0007J\b\u0010\u000f\u001a\u00020\u0006H\u0016J\u0010\u0010\u0012\u001a\u00020\u00062\b\u0010\u0011\u001a\u0004\u0018\u00010\u0010R$\u0010\u0013\u001a\u0004\u0018\u00010\b8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0013\u0010\u0014\u001a\u0004\b\u0015\u0010\u0016\"\u0004\b\u0017\u0010\u0018R$\u0010\u001a\u001a\u0004\u0018\u00010\u00198\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u001a\u0010\u001b\u001a\u0004\b\u001c\u0010\u001d\"\u0004\b\u001e\u0010\u001fR\u0016\u0010 \u001a\u00020\u00048\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b \u0010!R(\u0010#\u001a\u00020\"8\u0006@\u0006X\u0087.¢\u0006\u0018\n\u0004\b#\u0010$\u0012\u0004\b)\u0010*\u001a\u0004\b%\u0010&\"\u0004\b'\u0010(¨\u0006-"}, d2 = {"Lcom/guochao/faceshow/component/live/fragment/LiveIMChatFloatFragment;", "Lcom/guochao/faceshow/component/live/fragment/BaseChatFragment;", "", "keyboardShow", "", "keyboardHeigh", "", "setViewHeight", "Landroid/view/View;", "root", "Landroid/os/Bundle;", "savedInstanceState", "initView", "Ly7/j;", "keyboardEvent", "onDestroy", "Lcom/guochao/faceshow/aaspring/beans/ChatStatusBean;", "statusBean", "refreshStatus", "chatView", "Landroid/view/View;", "getChatView", "()Landroid/view/View;", "setChatView", "(Landroid/view/View;)V", "Lcom/guochao/faceshow/component/live/activity/FakeLiveChatActivity;", "chatActivity", "Lcom/guochao/faceshow/component/live/activity/FakeLiveChatActivity;", "getChatActivity", "()Lcom/guochao/faceshow/component/live/activity/FakeLiveChatActivity;", "setChatActivity", "(Lcom/guochao/faceshow/component/live/activity/FakeLiveChatActivity;)V", "currentMode", "I", "Lcom/guochao/faceshow/databinding/FragmentLiveIMChatFloatBinding;", "viewBinding", "Lcom/guochao/faceshow/databinding/FragmentLiveIMChatFloatBinding;", "getViewBinding", "()Lcom/guochao/faceshow/databinding/FragmentLiveIMChatFloatBinding;", "setViewBinding", "(Lcom/guochao/faceshow/databinding/FragmentLiveIMChatFloatBinding;)V", "getViewBinding$annotations", "()V", "<init>", "Companion", "app_GooglePlayRelease"}, k = 1, mv = {1, 7, 1})
/* loaded from: classes2.dex */
public final class LiveIMChatFloatFragment extends BaseChatFragment {
    @NotNull
    public static final Companion Companion = new Companion(null);
    @Nullable
    private FakeLiveChatActivity chatActivity;
    @Nullable
    private View chatView;
    private int currentMode = 1;
    public FragmentLiveIMChatFloatBinding viewBinding;

    @Metadata(d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0018\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u0006H\u0007¨\u0006\b"}, d2 = {"Lcom/guochao/faceshow/component/live/fragment/LiveIMChatFloatFragment$Companion;", "", "()V", "newInstance", "Lcom/guochao/faceshow/component/live/fragment/LiveIMChatFloatFragment;", Contants.USER_ID, "", "userName", "app_GooglePlayRelease"}, k = 1, mv = {1, 7, 1}, xi = 48)
    /* loaded from: classes2.dex */
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @JvmStatic
        @NotNull
        public final LiveIMChatFloatFragment newInstance(@NotNull String userId, @NotNull String userName) {
            Intrinsics.checkNotNullParameter(userId, "userId");
            Intrinsics.checkNotNullParameter(userName, "userName");
            LiveIMChatFloatFragment liveIMChatFloatFragment = new LiveIMChatFloatFragment();
            Bundle bundle = new Bundle();
            bundle.putString(Contants.USER_ID, userId);
            bundle.putString("userName", userName);
            liveIMChatFloatFragment.setArguments(bundle);
            return liveIMChatFloatFragment;
        }
    }

    @GCViewBinding
    public static /* synthetic */ void getViewBinding$annotations() {
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: initView$lambda-4$lambda-2  reason: not valid java name */
    public static final void m667initView$lambda4$lambda2(LiveIMChatFloatFragment this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        FragmentActivity activity = this$0.getActivity();
        if (activity != null) {
            try {
                activity.getSupportFragmentManager().popBackStackImmediate();
                if (activity.getSupportFragmentManager().getBackStackEntryCount() == 0) {
                    LiveIMConversationFloatFragment liveIMConversationFloatFragment = new LiveIMConversationFloatFragment();
                    FragmentActivity requireActivity = this$0.requireActivity();
                    Intrinsics.checkNotNull(requireActivity, "null cannot be cast to non-null type com.guochao.faceshow.aaspring.modulars.live.activity.BaseLiveActivity");
                    FloatFragmentUtils.addFloatFragment(liveIMConversationFloatFragment, (BaseLiveActivity) requireActivity);
                }
            } catch (Exception unused) {
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: initView$lambda-4$lambda-3  reason: not valid java name */
    public static final void m668initView$lambda4$lambda3(LiveIMChatFloatFragment this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        FragmentActivity requireActivity = this$0.requireActivity();
        FakeLiveChatActivity fakeLiveChatActivity = this$0.chatActivity;
        ChatDetailActivity.B0(requireActivity, null, fakeLiveChatActivity != null ? fakeLiveChatActivity.mChatStatusBean : null, this$0.getUserId(), 1001);
    }

    @JvmStatic
    @NotNull
    public static final LiveIMChatFloatFragment newInstance(@NotNull String str, @NotNull String str2) {
        return Companion.newInstance(str, str2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void setViewHeight(boolean z10, int i9) {
        FragmentActivity activity;
        FragmentManager supportFragmentManager;
        View findViewById;
        Fragment fragment = null;
        if (getActivity() != null) {
            LinearLayout root = getViewBinding().getRoot();
            ViewGroup.LayoutParams layoutParams = getViewBinding().getRoot().getLayoutParams();
            if (layoutParams != null) {
                Intrinsics.checkNotNullExpressionValue(layoutParams, "layoutParams");
                if (z10) {
                    layoutParams.height = (int) (ScreenTools.getScreenRealHeight(activity) * 0.9f);
                } else {
                    layoutParams.height = (int) (ScreenTools.getScreenRealHeight(activity) * 0.7f);
                }
            } else {
                layoutParams = null;
            }
            root.setLayoutParams(layoutParams);
        }
        View view = this.chatView;
        if (view != null && (findViewById = view.findViewById(R.id.keyboard_space)) != null) {
            ViewGroup.LayoutParams layoutParams2 = findViewById.getLayoutParams();
            layoutParams2.height = i9;
            findViewById.setLayoutParams(layoutParams2);
        }
        if (!z10 || i9 <= 0) {
            return;
        }
        FakeLiveChatActivity fakeLiveChatActivity = this.chatActivity;
        if (fakeLiveChatActivity != null && (supportFragmentManager = fakeLiveChatActivity.getSupportFragmentManager()) != null) {
            fragment = supportFragmentManager.findFragmentById(R.id.chat_controller);
        }
        if (fragment instanceof ChatControllerFragment) {
            ((ChatControllerFragment) fragment).q2(1);
        }
    }

    @Nullable
    public final FakeLiveChatActivity getChatActivity() {
        return this.chatActivity;
    }

    @Nullable
    public final View getChatView() {
        return this.chatView;
    }

    @NotNull
    public final FragmentLiveIMChatFloatBinding getViewBinding() {
        FragmentLiveIMChatFloatBinding fragmentLiveIMChatFloatBinding = this.viewBinding;
        if (fragmentLiveIMChatFloatBinding != null) {
            return fragmentLiveIMChatFloatBinding;
        }
        Intrinsics.throwUninitializedPropertyAccessException("viewBinding");
        return null;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.guochao.faceshow.aaspring.base.mvvm.fragment.GCCoreFragment
    public void initView(@NotNull View root, @Nullable Bundle bundle) {
        Intrinsics.checkNotNullParameter(root, "root");
        super.initView(root, bundle);
        FloatFragmentUtils.setDefaultFragmentViewHeight(root);
        getViewBinding().titleName.setText(getUserName());
        ConversationInfo e02 = com.guochao.faceshow.aaspring.manager.im.b.l0().e0(getUserId(), false);
        com.guochao.faceshow.aaspring.manager.im.b.l0().N0(e02);
        Intent intent = new Intent(requireActivity(), FakeLiveChatActivity.class);
        if (e02.getConversationInfoDetail() != null) {
            Context requireContext = requireContext();
            intent.putExtra("otherLanguage", SpUtils.getStr(requireContext, b8.e.g().c().getCurrentUserId() + e02.getConversationInfoDetail().getCurrentUserId() + "otherLanguage"));
        }
        Window startActivity = getLocalActivityManager().startActivity("chat_activity", intent);
        Activity activity = getLocalActivityManager().getActivity("chat_activity");
        Intrinsics.checkNotNull(activity, "null cannot be cast to non-null type com.guochao.faceshow.component.live.activity.FakeLiveChatActivity");
        FakeLiveChatActivity fakeLiveChatActivity = (FakeLiveChatActivity) activity;
        this.chatActivity = fakeLiveChatActivity;
        if (fakeLiveChatActivity != null) {
            fakeLiveChatActivity.setParentFragment(this);
            fakeLiveChatActivity.setModeChangeListener(new FakeLiveChatActivity.InputModeChangeListener() { // from class: com.guochao.faceshow.component.live.fragment.LiveIMChatFloatFragment$initView$1$1
                @Override // com.guochao.faceshow.component.live.activity.FakeLiveChatActivity.InputModeChangeListener
                public void onInputModeChange(int i9) {
                    int i10;
                    LiveIMChatFloatFragment.this.currentMode = i9;
                    if (i9 == 1) {
                        return;
                    }
                    i10 = LiveIMChatFloatFragment.this.currentMode;
                    if (i10 == -1) {
                        LiveIMChatFloatFragment.this.setViewHeight(false, 0);
                    } else {
                        LiveIMChatFloatFragment.this.setViewHeight(true, 0);
                    }
                }
            });
        }
        View findViewById = startActivity.getDecorView().findViewById(R.id.content);
        ViewGroup viewGroup = (ViewGroup) findViewById.getParent();
        if (viewGroup != null) {
            viewGroup.removeView(findViewById);
        }
        findViewById.setLayoutParams(new FrameLayout.LayoutParams(-1, -1));
        this.chatView = findViewById;
        FakeLiveChatActivity fakeLiveChatActivity2 = this.chatActivity;
        if (fakeLiveChatActivity2 != null) {
            fakeLiveChatActivity2.setRealView(findViewById);
        }
        getViewBinding().rootView.addView(findViewById);
        setViewHeight(false, 0);
        FragmentLiveIMChatFloatBinding viewBinding = getViewBinding();
        viewBinding.back.setOnClickListener(new View.OnClickListener() { // from class: com.guochao.faceshow.component.live.fragment.j
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                LiveIMChatFloatFragment.m667initView$lambda4$lambda2(LiveIMChatFloatFragment.this, view);
            }
        });
        viewBinding.ivMore.setOnClickListener(new View.OnClickListener() { // from class: com.guochao.faceshow.component.live.fragment.k
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                LiveIMChatFloatFragment.m668initView$lambda4$lambda3(LiveIMChatFloatFragment.this, view);
            }
        });
    }

    @Subscribe
    public final void keyboardEvent(@NotNull y7.j keyboardEvent) {
        Intrinsics.checkNotNullParameter(keyboardEvent, "keyboardEvent");
        int i9 = this.currentMode;
        if (i9 == 1 || keyboardEvent.f60141b > 0) {
            if (i9 != -1 || keyboardEvent.f60141b <= 0) {
                int i10 = keyboardEvent.f60141b;
                if (i10 > 0) {
                    setViewHeight(true, i10);
                } else {
                    setViewHeight(false, 0);
                }
            }
        }
    }

    @Override // com.guochao.faceshow.component.live.fragment.BaseChatFragment, com.guochao.faceshow.component.live.fragment.BaseEmbedActivityFragment, androidx.fragment.app.Fragment
    public void onDestroy() {
        Window window;
        super.onDestroy();
        FragmentActivity activity = getActivity();
        FragmentActivity activity2 = getActivity();
        SoftKeyBoardUtils.closeSoftKeyBoardV2(activity, (activity2 == null || (window = activity2.getWindow()) == null) ? null : window.getDecorView());
        this.chatActivity = null;
    }

    public final void refreshStatus(@Nullable ChatStatusBean chatStatusBean) {
        boolean z10 = true;
        if ((chatStatusBean == null || chatStatusBean.getOnlineCode() != 1) ? false : false) {
            Drawable drawable = ContextCompat.getDrawable(requireContext(), R.mipmap.trtc_appointment_online);
            if (drawable != null) {
                SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder();
                drawable.setBounds(0, 0, ScreenTools.dip2px(10.0f), ScreenTools.dip2px(10.0f));
                SpanColorUtils.append(spannableStringBuilder, new com.guochao.faceshow.aaspring.modulars.live.adapter.a(drawable));
                spannableStringBuilder.append((CharSequence) " ").append((CharSequence) getUserName());
                getViewBinding().titleName.setText(spannableStringBuilder);
                return;
            }
            return;
        }
        getViewBinding().titleName.setText(getUserName());
    }

    public final void setChatActivity(@Nullable FakeLiveChatActivity fakeLiveChatActivity) {
        this.chatActivity = fakeLiveChatActivity;
    }

    public final void setChatView(@Nullable View view) {
        this.chatView = view;
    }

    public final void setViewBinding(@NotNull FragmentLiveIMChatFloatBinding fragmentLiveIMChatFloatBinding) {
        Intrinsics.checkNotNullParameter(fragmentLiveIMChatFloatBinding, "<set-?>");
        this.viewBinding = fragmentLiveIMChatFloatBinding;
    }
}
