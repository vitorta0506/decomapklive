package com.guochao.faceshow.aaspring.modulars.live.adapter;

import android.animation.ObjectAnimator;
import android.animation.ValueAnimator;
import android.content.Context;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.text.Spannable;
import android.text.SpannableString;
import android.text.SpannableStringBuilder;
import android.text.TextUtils;
import android.text.method.LinkMovementMethod;
import android.text.style.AbsoluteSizeSpan;
import android.text.style.ForegroundColorSpan;
import android.util.SparseArray;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.view.animation.LinearInterpolator;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.CallSuper;
import androidx.annotation.ColorInt;
import androidx.annotation.NonNull;
import androidx.annotation.StringRes;
import androidx.annotation.UiThread;
import androidx.core.content.ContextCompat;
import androidx.core.text.BidiFormatter;
import androidx.core.text.TextDirectionHeuristicsCompat;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import butterknife.BindView;
import butterknife.Unbinder;
import com.google.gson.Gson;
import com.guochao.faceshow.BaseApplication;
import com.guochao.faceshow.R;
import com.guochao.faceshow.aaspring.base.adapter.BaseViewHolder;
import com.guochao.faceshow.aaspring.beans.CloudCustomData;
import com.guochao.faceshow.aaspring.beans.ConversationInfo;
import com.guochao.faceshow.aaspring.beans.LiveGameBean;
import com.guochao.faceshow.aaspring.beans.UserVipData;
import com.guochao.faceshow.aaspring.modulars.chat.models.TextMessage;
import com.guochao.faceshow.aaspring.modulars.gift.SendGiftResponseModel;
import com.guochao.faceshow.aaspring.modulars.live.adapter.livechatholder.LuckyGiftTipsHolder;
import com.guochao.faceshow.aaspring.modulars.live.adapter.livechatholder.VoiceRoomInviteHolder;
import com.guochao.faceshow.aaspring.modulars.live.adapter.livechatholder.VoiceRoomJoinHolder;
import com.guochao.faceshow.aaspring.modulars.live.adapter.livechatholder.VoiceRoomTakeSeatHolder;
import com.guochao.faceshow.aaspring.modulars.live.adapter.span.IconSpan;
import com.guochao.faceshow.aaspring.modulars.live.adapter.span.LiveChatSpanUtils;
import com.guochao.faceshow.aaspring.modulars.live.adapter.span.g;
import com.guochao.faceshow.aaspring.modulars.live.common.LiveChatFragment;
import com.guochao.faceshow.aaspring.modulars.live.game.model.LiveGameLuckyResultMessage;
import com.guochao.faceshow.aaspring.modulars.live.model.BaseLiveGameMessage;
import com.guochao.faceshow.aaspring.modulars.live.model.BaseLiveMessage;
import com.guochao.faceshow.aaspring.modulars.live.model.GiftLiveMessage;
import com.guochao.faceshow.aaspring.modulars.live.model.LiveFullScreenMessage;
import com.guochao.faceshow.aaspring.modulars.live.model.LiveLuckyWinMessage;
import com.guochao.faceshow.aaspring.modulars.live.model.LiveMessageModel;
import com.guochao.faceshow.aaspring.modulars.live.model.PkResultMessage;
import com.guochao.faceshow.aaspring.modulars.live.watcher.liveactivity.LiveMusicActivityView;
import com.guochao.faceshow.aaspring.utils.EventTrackingUtils;
import com.guochao.faceshow.aaspring.utils.FriendFromSource;
import com.guochao.faceshow.aaspring.utils.Language;
import com.guochao.faceshow.aaspring.utils.LiveMessageModelFactory;
import com.guochao.faceshow.aaspring.utils.SendMessageHandle;
import com.guochao.faceshow.aaspring.utils.StringUtils;
import com.guochao.faceshow.aaspring.utils.ToastUtils;
import com.guochao.faceshow.aaspring.views.ChatBgView;
import com.guochao.faceshow.aaspring.views.LevelView;
import com.guochao.faceshow.aaspring.views.LiveChatAutoBackgroundView;
import com.guochao.faceshow.aaspring.views.VerticalCenterRoateImageSpan;
import com.guochao.faceshow.aaspring.views.VipIndicatorView;
import com.guochao.faceshow.utils.DensityUtil;
import com.guochao.faceshow.utils.GsonGetter;
import com.guochao.faceshow.views.r;
import com.tencent.bugly.crashreport.CrashReport;
import com.tencent.imsdk.v2.V2TIMConversation;
import com.tencent.imsdk.v2.V2TIMConversationManager;
import com.tencent.imsdk.v2.V2TIMManager;
import com.tencent.imsdk.v2.V2TIMMessage;
import com.tencent.imsdk.v2.V2TIMSendCallback;
import com.tencent.imsdk.v2.V2TIMValueCallback;
import d9.e;
import java.text.MessageFormat;
import java.util.ArrayList;
import java.util.List;
import java.util.Objects;
import java.util.concurrent.CopyOnWriteArrayList;
import org.jetbrains.annotations.NotNull;
import org.light.utils.IOUtils;
/* loaded from: classes3.dex */
public class AutoLiveChatAdapter extends RecyclerView.Adapter<BaseViewHolder> {

    /* renamed from: a  reason: collision with root package name */
    private LiveChatFragment f18111a;

    /* renamed from: b  reason: collision with root package name */
    private d9.g f18112b;

    /* renamed from: c  reason: collision with root package name */
    private RecyclerView f18113c;

    /* renamed from: e  reason: collision with root package name */
    private Context f18115e;

    /* renamed from: h  reason: collision with root package name */
    LinearLayoutManager f18118h;

    /* renamed from: i  reason: collision with root package name */
    SparseArray<BitmapDrawable> f18119i;

    /* renamed from: j  reason: collision with root package name */
    BitmapDrawable f18120j;

    /* renamed from: k  reason: collision with root package name */
    private int f18121k;

    /* renamed from: l  reason: collision with root package name */
    private int f18122l;

    /* renamed from: m  reason: collision with root package name */
    private boolean f18123m;

    /* renamed from: d  reason: collision with root package name */
    private List<LiveMessageModel<?>> f18114d = new ArrayList();

    /* renamed from: f  reason: collision with root package name */
    private List<LiveMessageModel<?>> f18116f = new CopyOnWriteArrayList();

    /* renamed from: g  reason: collision with root package name */
    private long f18117g = 0;

    /* renamed from: n  reason: collision with root package name */
    private final SparseArray<BitmapDrawable> f18124n = new SparseArray<>();

    /* renamed from: o  reason: collision with root package name */
    boolean f18125o = false;

    /* renamed from: p  reason: collision with root package name */
    private Runnable f18126p = new i();

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public static class AutoChatViewHolder extends BaseViewHolder {
        @BindView
        TextView chatContent;
        @BindView
        View line;
        @BindView
        TextView translate_content;

        AutoChatViewHolder(View view) {
            super(view);
        }
    }

    /* loaded from: classes3.dex */
    public class AutoChatViewHolder_ViewBinding implements Unbinder {

        /* renamed from: b  reason: collision with root package name */
        private AutoChatViewHolder f18127b;

        @UiThread
        public AutoChatViewHolder_ViewBinding(AutoChatViewHolder autoChatViewHolder, View view) {
            this.f18127b = autoChatViewHolder;
            autoChatViewHolder.chatContent = (TextView) butterknife.internal.c.d(view, R.id.chat_content, "field 'chatContent'", TextView.class);
            autoChatViewHolder.line = butterknife.internal.c.c(view, R.id.line, "field 'line'");
            autoChatViewHolder.translate_content = (TextView) butterknife.internal.c.d(view, R.id.translate_content, "field 'translate_content'", TextView.class);
        }

        @Override // butterknife.Unbinder
        @CallSuper
        public void unbind() {
            AutoChatViewHolder autoChatViewHolder = this.f18127b;
            if (autoChatViewHolder != null) {
                this.f18127b = null;
                autoChatViewHolder.chatContent = null;
                autoChatViewHolder.line = null;
                autoChatViewHolder.translate_content = null;
                return;
            }
            throw new IllegalStateException("Bindings already cleared.");
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class a implements View.OnClickListener {
        a() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            c9.a.i().f();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class b implements View.OnClickListener {
        b() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            c9.a.i().f();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class c implements View.OnClickListener {
        c() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            if (AutoLiveChatAdapter.this.f18111a.getCurrentLiveRoom().isPrivateLiveRoom()) {
                AutoLiveChatAdapter.this.f18112b.s();
            } else {
                AutoLiveChatAdapter.this.f18111a.liveShareClicked(null);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class d implements View.OnClickListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ BaseViewHolder f18131a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ ImageView f18132b;

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ int f18133c;

        /* loaded from: classes3.dex */
        class a implements hb.b<String> {

            /* renamed from: a  reason: collision with root package name */
            final /* synthetic */ ImageView f18135a;

            /* renamed from: b  reason: collision with root package name */
            final /* synthetic */ ImageView f18136b;

            /* renamed from: c  reason: collision with root package name */
            final /* synthetic */ TextView f18137c;

            a(ImageView imageView, ImageView imageView2, TextView textView) {
                this.f18135a = imageView;
                this.f18136b = imageView2;
                this.f18137c = textView;
            }

            @Override // hb.b
            /* renamed from: a */
            public void onFail(String str) {
                hb.a.a(this, str);
                this.f18135a.setVisibility(0);
                this.f18136b.setVisibility(0);
                this.f18137c.setText(R.string.user_guide_focus_immedi);
                this.f18136b.setImageResource(R.drawable.follow_im_jia);
                ImageView imageView = d.this.f18132b;
                if (imageView != null) {
                    imageView.setVisibility(0);
                }
                AutoLiveChatAdapter.this.f18112b.t("0", AutoLiveChatAdapter.this.f18111a.getCurrentLiveRoom().getBroadCasterUserId());
                ((LiveMessageModel) AutoLiveChatAdapter.this.f18114d.get(d.this.f18133c)).getData().setIsAttention("0");
            }

            @Override // hb.b
            /* renamed from: b */
            public void onResponse(String str) {
                AutoLiveChatAdapter.this.f18112b.sendLiveMessage(LiveMessageModelFactory.createFocusBroadCasterModel(AutoLiveChatAdapter.this.f18111a.getCurrentUser().getUserId(), AutoLiveChatAdapter.this.f18111a.getCurrentUser().getUserName(), AutoLiveChatAdapter.this.f18111a.getCurrentUser().getLevel(), AutoLiveChatAdapter.this.f18111a.getCurrentLiveRoom().isAdministrator()), (e.a<Boolean>) null);
            }
        }

        d(BaseViewHolder baseViewHolder, ImageView imageView, int i9) {
            this.f18131a = baseViewHolder;
            this.f18132b = imageView;
            this.f18133c = i9;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            if (AutoLiveChatAdapter.this.f18112b.getCurrentLiveRoom().isFocused() || AutoLiveChatAdapter.this.f18111a.getActivity() == null || AutoLiveChatAdapter.this.f18111a.getActivity() == null) {
                return;
            }
            TextView textView = (TextView) this.f18131a.getView(R.id.text_view);
            textView.setText(R.string.focused);
            ImageView imageView = (ImageView) this.f18131a.getView(R.id.icon);
            imageView.setVisibility(8);
            ImageView imageView2 = (ImageView) this.f18131a.getView(R.id.icon_left);
            imageView2.setVisibility(0);
            ImageView imageView3 = this.f18132b;
            if (imageView3 != null) {
                imageView3.setVisibility(8);
            }
            imageView2.setImageResource(R.drawable.follow_im_dui);
            AutoLiveChatAdapter.this.f18112b.t("1", AutoLiveChatAdapter.this.f18111a.getCurrentLiveRoom().getBroadCasterUserId());
            AutoLiveChatAdapter.this.f18112b.getCurrentLiveRoom().setFocused(true);
            ((LiveMessageModel) AutoLiveChatAdapter.this.f18114d.get(this.f18133c)).getData().setIsAttention("1");
            ib.b.b(AutoLiveChatAdapter.this.f18111a.getCurrentLiveRoom().getBroadCasterUserId(), FriendFromSource.LIVE, AutoLiveChatAdapter.this.f18111a.getActivity(), new a(imageView, imageView2, textView));
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class e implements View.OnClickListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ BaseLiveMessage f18139a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ ImageView f18140b;

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ TextView f18141c;

        /* loaded from: classes3.dex */
        class a implements V2TIMValueCallback<V2TIMConversation> {

            /* renamed from: a  reason: collision with root package name */
            final /* synthetic */ TextMessage f18143a;

            /* renamed from: b  reason: collision with root package name */
            final /* synthetic */ ConversationInfo f18144b;

            a(TextMessage textMessage, ConversationInfo conversationInfo) {
                this.f18143a = textMessage;
                this.f18144b = conversationInfo;
            }

            @Override // com.tencent.imsdk.v2.V2TIMValueCallback
            /* renamed from: a */
            public void onSuccess(V2TIMConversation v2TIMConversation) {
                e eVar = e.this;
                AutoLiveChatAdapter.this.K(v2TIMConversation, this.f18143a, eVar.f18139a);
                this.f18144b.setTIMConversation2(v2TIMConversation);
            }

            @Override // com.tencent.imsdk.v2.V2TIMValueCallback
            public void onError(int i9, String str) {
            }
        }

        e(BaseLiveMessage baseLiveMessage, ImageView imageView, TextView textView) {
            this.f18139a = baseLiveMessage;
            this.f18140b = imageView;
            this.f18141c = textView;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            if (this.f18139a.isThankHelloGift()) {
                return;
            }
            this.f18139a.setThankHelloGift(true);
            this.f18140b.setVisibility(0);
            this.f18141c.setText(AutoLiveChatAdapter.this.f18115e.getString(R.string.live_hello_gift_thank));
            EventTrackingUtils.getInstance().track(EventTrackingUtils.CLICK_HELLO_STAR_THANKS);
            TextMessage from = TextMessage.from(AutoLiveChatAdapter.this.f18115e.getString(R.string.im_thank_send_hello_gift));
            from.getMessage().setCloudCustomData(GsonGetter.getGson().toJson(new CloudCustomData(-101, -101)));
            ConversationInfo b10 = com.guochao.faceshow.aaspring.manager.im.b.l0().b(this.f18139a.getFromUserId());
            if (b10.getTIMConversation() != null) {
                AutoLiveChatAdapter.this.K(b10.getTIMConversation(), from, this.f18139a);
            } else {
                a aVar = new a(from, b10);
                V2TIMConversationManager conversationManager = V2TIMManager.getConversationManager();
                conversationManager.getConversation("c2c_" + this.f18139a.getFromUserId(), aVar);
            }
            com.guochao.faceshow.aaspring.manager.im.b.l0().N0(b10);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class f implements V2TIMSendCallback<V2TIMMessage> {
        f() {
        }

        @Override // com.tencent.imsdk.v2.V2TIMValueCallback
        /* renamed from: a */
        public void onSuccess(V2TIMMessage v2TIMMessage) {
            ToastUtils.showToast(BaseApplication.getInstance(), BaseApplication.getInstance().getString(R.string.hello_star_gitf_thank));
        }

        @Override // com.tencent.imsdk.v2.V2TIMValueCallback
        public void onError(int i9, String str) {
            Context context = AutoLiveChatAdapter.this.f18115e;
            ToastUtils.debugToast(context, i9 + str);
        }

        @Override // com.tencent.imsdk.v2.V2TIMSendCallback
        public void onProgress(int i9) {
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class g implements ValueAnimator.AnimatorUpdateListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ AutoChatViewHolder f18147a;

        g(AutoChatViewHolder autoChatViewHolder) {
            this.f18147a = autoChatViewHolder;
        }

        @Override // android.animation.ValueAnimator.AnimatorUpdateListener
        public void onAnimationUpdate(ValueAnimator valueAnimator) {
            this.f18147a.chatContent.invalidate();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class h implements g.b {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ int f18149a;

        h(int i9) {
            this.f18149a = i9;
        }

        @Override // com.guochao.faceshow.aaspring.modulars.live.adapter.span.g.b
        public void a() {
            AutoLiveChatAdapter.this.notifyItemChanged(this.f18149a);
            if (AutoLiveChatAdapter.this.f18113c.canScrollVertically(1)) {
                return;
            }
            AutoLiveChatAdapter.this.f18113c.smoothScrollToPosition(AutoLiveChatAdapter.this.getItemCount() - 1);
        }
    }

    /* loaded from: classes3.dex */
    class i implements Runnable {
        i() {
        }

        @Override // java.lang.Runnable
        public void run() {
            AutoLiveChatAdapter autoLiveChatAdapter = AutoLiveChatAdapter.this;
            autoLiveChatAdapter.notifyItemChanged(autoLiveChatAdapter.f18114d.size() - 1);
        }
    }

    /* loaded from: classes3.dex */
    public static class j extends LinkMovementMethod {

        /* renamed from: a  reason: collision with root package name */
        private static j f18152a;

        public static j a() {
            if (f18152a == null) {
                f18152a = new j();
            }
            return f18152a;
        }

        @Override // android.text.method.LinkMovementMethod, android.text.method.ScrollingMovementMethod, android.text.method.BaseMovementMethod, android.text.method.MovementMethod
        public boolean onTouchEvent(TextView textView, Spannable spannable, MotionEvent motionEvent) {
            boolean onTouchEvent = super.onTouchEvent(textView, spannable, motionEvent);
            if (!onTouchEvent && motionEvent.getAction() == 1) {
                ViewParent parent = textView.getParent();
                if (parent instanceof ViewGroup) {
                    return ((ViewGroup) parent).performClick();
                }
            }
            return onTouchEvent;
        }
    }

    public AutoLiveChatAdapter(RecyclerView recyclerView, LiveChatFragment liveChatFragment, d9.g gVar) {
        this.f18113c = recyclerView;
        LinearLayoutManager linearLayoutManager = (LinearLayoutManager) recyclerView.getLayoutManager();
        if (linearLayoutManager != null) {
            ViewGroup.LayoutParams layoutParams = this.f18113c.getLayoutParams();
            if (gVar.getCurrentGCLiveRoomModel().isVoiceRoom()) {
                layoutParams.height = -2;
                linearLayoutManager.setStackFromEnd(true);
            } else {
                layoutParams.height = -2;
                linearLayoutManager.setStackFromEnd(true);
            }
        }
        this.f18111a = liveChatFragment;
        this.f18112b = gVar;
        this.f18115e = liveChatFragment.getActivity();
        this.f18123m = Language.ARABIC.equalsIgnoreCase(q7.a.e().c());
        this.f18118h = (LinearLayoutManager) recyclerView.getLayoutManager();
        this.f18121k = Color.parseColor("#D3D2D2");
        this.f18122l = E().getColor(R.color.live_vip_join);
    }

    private CharSequence A() {
        SpannableString spannableString = new SpannableString("   ");
        spannableString.setSpan(new com.guochao.faceshow.aaspring.modulars.live.adapter.a(z()), 1, 2, 33);
        return spannableString;
    }

    /* JADX WARN: Type inference failed for: r4v2, types: [com.guochao.faceshow.aaspring.modulars.live.model.BaseLiveMessage] */
    private CharSequence C(LiveMessageModel<?> liveMessageModel, String str, String str2, String str3, boolean z10, int i9) {
        if (TextUtils.isEmpty(str)) {
            k(liveMessageModel);
            str = liveMessageModel.getData().getDisplayFromNickName();
            if (TextUtils.isEmpty(str)) {
                return "";
            }
        }
        SpannableString spannableString = new SpannableString(str);
        spannableString.setSpan(new ForegroundColorSpan(i9), 0, str.length(), 33);
        if (z10) {
            spannableString.setSpan(new com.guochao.faceshow.aaspring.modulars.live.adapter.span.e(this.f18111a, str2, str3), 0, str.length(), 33);
        }
        return spannableString;
    }

    private CharSequence D(int i9) {
        SpannableString spannableString = new SpannableString(this.f18123m ? "ة" : "我");
        spannableString.setSpan(new ForegroundColorSpan(0), 0, 1, 33);
        spannableString.setSpan(new AbsoluteSizeSpan(DensityUtil.dp2px(5.0f)), 0, 1, 33);
        return spannableString;
    }

    private Resources E() {
        return this.f18115e.getResources();
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Type inference failed for: r12v0, types: [com.guochao.faceshow.aaspring.modulars.live.model.BaseLiveMessage] */
    /* JADX WARN: Type inference failed for: r12v3, types: [com.guochao.faceshow.aaspring.modulars.live.model.BaseLiveMessage] */
    /* JADX WARN: Type inference failed for: r13v0, types: [com.guochao.faceshow.aaspring.modulars.live.model.BaseLiveMessage] */
    /* JADX WARN: Type inference failed for: r1v0, types: [com.guochao.faceshow.aaspring.modulars.live.model.BaseLiveMessage] */
    /* JADX WARN: Type inference failed for: r2v12, types: [com.guochao.faceshow.aaspring.modulars.live.model.BaseLiveMessage] */
    /* JADX WARN: Type inference failed for: r2v14, types: [com.guochao.faceshow.aaspring.modulars.live.model.BaseLiveMessage] */
    /* JADX WARN: Type inference failed for: r2v34, types: [com.guochao.faceshow.aaspring.modulars.live.model.BaseLiveMessage] */
    private CharSequence F(LiveMessageModel<?> liveMessageModel, TextView textView) {
        char c10;
        int i9;
        ?? data = liveMessageModel.getData();
        boolean z10 = true;
        boolean z11 = data.getUserVipMsg().getVipLevel() == 2;
        boolean z12 = data.getUserType() == 3;
        boolean equals = Objects.equals(data.getFromUserId(), this.f18112b.getCurrentLiveRoom().getBroadCasterUserId());
        String str = " " + liveMessageModel.getData().getFromUserNickName();
        String str2 = liveMessageModel.getData().getToUserNickName() + " ";
        String operatedUserImg = liveMessageModel.getData().getOperatedUserImg();
        String cmd = liveMessageModel.getCmd();
        cmd.hashCode();
        switch (cmd.hashCode()) {
            case -2095033143:
                if (cmd.equals("LIVE_LUCKY_NUMBER_RESULT")) {
                    c10 = 0;
                    break;
                }
                c10 = 65535;
                break;
            case -1680604500:
                if (cmd.equals("LIVE_SHARE")) {
                    c10 = 1;
                    break;
                }
                c10 = 65535;
                break;
            case -1594615568:
                if (cmd.equals("LIVE_FOLLOW_ANCHOR")) {
                    c10 = 2;
                    break;
                }
                c10 = 65535;
                break;
            case -1264611414:
                if (cmd.equals(BaseLiveMessage.LIVE_HELLO_JOIN_GROUP)) {
                    c10 = 3;
                    break;
                }
                c10 = 65535;
                break;
            case -1095037310:
                if (cmd.equals("LIVE_TOBE_MEMBER_USER")) {
                    c10 = 4;
                    break;
                }
                c10 = 65535;
                break;
            case -1051830433:
                if (cmd.equals("LOCAL_VOICE_ROOM_WELCOME")) {
                    c10 = 5;
                    break;
                }
                c10 = 65535;
                break;
            case -791193586:
                if (cmd.equals("LIVE_ADMIN_USER")) {
                    c10 = 6;
                    break;
                }
                c10 = 65535;
                break;
            case -643342920:
                if (cmd.equals("LIVE_ROOM_NATURE")) {
                    c10 = 7;
                    break;
                }
                c10 = 65535;
                break;
            case -546460403:
                if (cmd.equals("LIVE_LUCKY_REMOTE_WIN")) {
                    c10 = '\b';
                    break;
                }
                c10 = 65535;
                break;
            case -495544855:
                if (cmd.equals("LIVE_EVENT_ANIM")) {
                    c10 = '\t';
                    break;
                }
                c10 = 65535;
                break;
            case -480508645:
                if (cmd.equals("LIVE_BAN_TALK_USER")) {
                    c10 = '\n';
                    break;
                }
                c10 = 65535;
                break;
            case -211458612:
                if (cmd.equals("LIVE_RECEIVE_HELLO_GIFT")) {
                    c10 = 11;
                    break;
                }
                c10 = 65535;
                break;
            case 121642060:
                if (cmd.equals("LIVE_LUCKY_REMOTE_WIN_V_COIN")) {
                    c10 = '\f';
                    break;
                }
                c10 = 65535;
                break;
            case 204859347:
                if (cmd.equals("LIVE_REMOVE_USER")) {
                    c10 = '\r';
                    break;
                }
                c10 = 65535;
                break;
            case 422851572:
                if (cmd.equals("LIVE_SEND_GIFT")) {
                    c10 = 14;
                    break;
                }
                c10 = 65535;
                break;
            case 455262234:
                if (cmd.equals("LIVE_SCREEN_SHOT")) {
                    c10 = 15;
                    break;
                }
                c10 = 65535;
                break;
            case 499143725:
                if (cmd.equals("LIVE_LINKMIC_MICLOCK")) {
                    c10 = 16;
                    break;
                }
                c10 = 65535;
                break;
            case 499173541:
                if (cmd.equals("LIVE_LINKMIC_MICMODE")) {
                    c10 = 17;
                    break;
                }
                c10 = 65535;
                break;
            case 1615504782:
                if (cmd.equals("LIVE_ADD_GROUP")) {
                    c10 = 18;
                    break;
                }
                c10 = 65535;
                break;
            case 1624957192:
                if (cmd.equals("LOCAL_LIVE_LUCKY_GIFT_REWARD")) {
                    c10 = 19;
                    break;
                }
                c10 = 65535;
                break;
            case 1693485328:
                if (cmd.equals("LIVE_LUCKY_NUMBER_RESULT_V_COIN")) {
                    c10 = 20;
                    break;
                }
                c10 = 65535;
                break;
            case 1702034254:
                if (cmd.equals("LIVE_PK_RESULT")) {
                    c10 = 21;
                    break;
                }
                c10 = 65535;
                break;
            case 1764309059:
                if (cmd.equals("LIVE_BROADCAST_THANK_HELLO_GIFT")) {
                    c10 = 22;
                    break;
                }
                c10 = 65535;
                break;
            case 1778386788:
                if (cmd.equals("LIVE_BEGIN_PK")) {
                    c10 = 23;
                    break;
                }
                c10 = 65535;
                break;
            case 1882469245:
                if (cmd.equals("LIVE_MEMBER_USER")) {
                    c10 = 24;
                    break;
                }
                c10 = 65535;
                break;
            case 1895529258:
                if (cmd.equals("LIVE_TAKE_SEAT")) {
                    c10 = 25;
                    break;
                }
                c10 = 65535;
                break;
            default:
                c10 = 65535;
                break;
        }
        switch (c10) {
            case 0:
            case 20:
                if (data instanceof BaseLiveGameMessage) {
                    BaseLiveGameMessage baseLiveGameMessage = (BaseLiveGameMessage) data;
                    if (baseLiveGameMessage.getLiveGameBean() == null) {
                        baseLiveGameMessage.setLiveGameBean(new LiveGameBean());
                    }
                    baseLiveGameMessage.getLiveGameBean().setFlag("LIVE_LUCKY_NUMBER_RESULT_V_COIN".equalsIgnoreCase(liveMessageModel.getCmd()) ? 1 : 0);
                }
                return x(data);
            case 1:
                return this.f18115e.getString(R.string.livesendshare);
            case 2:
                return this.f18115e.getString(R.string.livesendfollow);
            case 3:
                if (data.getIsOneHello() == 1) {
                    return this.f18115e.getString(R.string.live_hello_gift_join_two, liveMessageModel.getData().getFromUserNickName(), this.f18115e.getString(R.string.live_hello_gift_join_num, 3));
                }
                return this.f18115e.getString(R.string.live_hello_gift_join_one, liveMessageModel.getData().getFromUserNickName());
            case 4:
                return this.f18115e.getString(R.string.voice_room_add_room_message);
            case 5:
                return data.getRichContent();
            case 6:
                if (data.getToUserId().equals(b8.e.g().c().getUserId())) {
                    return this.f18115e.getString(data.isAction() ? R.string.livehaveadmin_self : R.string.livehaveadmin_self_cancel);
                }
                boolean isEmpty = TextUtils.isEmpty(operatedUserImg);
                int i10 = R.string.livehaveadmin_somebody;
                if (isEmpty) {
                    Context context = this.f18115e;
                    if (!data.isAction()) {
                        i10 = R.string.livehaveadmin_somebody_cancel;
                    }
                    return context.getString(i10, data.getToUserNickName());
                }
                String str3 = "  " + data.getToUserNickName();
                Context context2 = this.f18115e;
                if (!data.isAction()) {
                    i10 = R.string.livehaveadmin_somebody_cancel;
                }
                String string = context2.getString(i10, str3);
                int indexOf = string.indexOf(str3);
                SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder(string);
                if (indexOf >= 0) {
                    spannableStringBuilder.setSpan(new com.guochao.faceshow.aaspring.modulars.live.adapter.span.a(operatedUserImg, textView), indexOf, indexOf + 1, 33);
                }
                spannableStringBuilder.setSpan(new ForegroundColorSpan(this.f18121k), indexOf, str3.length() + indexOf, 33);
                return spannableStringBuilder;
            case 7:
                if (data.action) {
                    return this.f18115e.getString(R.string.voice_room_tips_open_status);
                }
                return this.f18115e.getString(R.string.voice_room_toast_set_private);
            case '\b':
            case '\f':
                return y(textView, data);
            case '\t':
                return LiveMusicActivityView.h(this.f18111a.getCurrentLiveRoom().isBroadCaster(), ((LiveFullScreenMessage) data).getActivityId());
            case '\n':
                if (!b8.e.g().getUserId().equalsIgnoreCase(data.toUserId)) {
                    int i11 = R.string.livehavemote_somebody;
                    if (equals) {
                        if (!data.isAction()) {
                            i11 = R.string.livemote_somebody_cancel;
                        }
                        return v(data, i11, textView);
                    } else if (z12) {
                        return L(this.f18115e.getResources().getString(data.isAction() ? R.string.vip_mall_has_been_muted_by_official : R.string.vip_mall_has_been_unmuted_by_official, str2), null, str2, E().getColor(R.color.live_im_banned), true);
                    } else if (z11) {
                        return L(String.format(this.f18115e.getResources().getString(data.isAction() ? R.string.vip_mall_has_been_muted_vvip : R.string.vip_mall_has_been_unmuted_vvip), str2, str), str, str2, E().getColor(R.color.live_im_banned), false);
                    } else {
                        if (!data.isAction()) {
                            i11 = R.string.livemote_somebody_cancel;
                        }
                        return v(data, i11, textView);
                    }
                }
                int i12 = R.string.livehavemote_self;
                if (equals) {
                    Resources resources = this.f18115e.getResources();
                    if (!data.isAction()) {
                        i12 = R.string.livemote_self_cancel;
                    }
                    SpannableString spannableString = new SpannableString(resources.getString(i12));
                    spannableString.setSpan(new ForegroundColorSpan(E().getColor(R.color.live_im_banned)), 0, spannableString.length(), 33);
                    return spannableString;
                } else if (z12) {
                    String string2 = this.f18115e.getResources().getString(data.isAction() ? R.string.vip_mall_has_been_muted_self_by_official : R.string.vip_mall_has_been_unmuted_self_by_offical);
                    SpannableString spannableString2 = new SpannableString(string2);
                    spannableString2.setSpan(new ForegroundColorSpan(E().getColor(R.color.live_im_banned)), 0, string2.length(), 33);
                    return spannableString2;
                } else if (z11) {
                    return L(this.f18115e.getResources().getString(data.isAction() ? R.string.vip_mall_has_been_muted_self : R.string.vip_mall_has_been_unmuted_self, str), str, null, E().getColor(R.color.live_im_banned), false);
                } else {
                    Resources resources2 = this.f18115e.getResources();
                    if (!data.isAction()) {
                        i12 = R.string.livemote_self_cancel;
                    }
                    SpannableString spannableString3 = new SpannableString(resources2.getString(i12));
                    spannableString3.setSpan(new ForegroundColorSpan(E().getColor(R.color.live_im_banned)), 0, spannableString3.length(), 33);
                    return spannableString3;
                }
            case 11:
                return this.f18115e.getString(R.string.live_hello_recevie_hello_gift, liveMessageModel.getData().getFromUserNickName());
            case '\r':
                if (!b8.e.g().getUserId().equalsIgnoreCase(data.toUserId)) {
                    if (equals) {
                        return v(data, R.string.liveremovemsg_somebody, textView);
                    }
                    if (z12) {
                        return L(this.f18115e.getResources().getString(R.string.vip_mall_has_been_kicked_by_official, str2), str, str2, E().getColor(R.color.live_im_banned), true);
                    }
                    if (z11) {
                        return L(String.format(this.f18115e.getResources().getString(R.string.vip_mall_has_been_kicked_by_vvip), str2, str), str, str2, E().getColor(R.color.live_im_banned), false);
                    }
                    return v(data, R.string.liveremovemsg_somebody, textView);
                } else if (equals) {
                    SpannableString spannableString4 = new SpannableString(this.f18115e.getString(R.string.liveremovemsg));
                    spannableString4.setSpan(new ForegroundColorSpan(E().getColor(R.color.live_im_banned)), 0, spannableString4.length(), 33);
                    return spannableString4;
                } else if (z12) {
                    SpannableString spannableString5 = new SpannableString(E().getString(R.string.vip_mall_has_been_kicked_self_by_official));
                    spannableString5.setSpan(new ForegroundColorSpan(E().getColor(R.color.live_im_banned)), 0, spannableString5.length(), 33);
                    return spannableString5;
                } else if (z11) {
                    return L(E().getString(R.string.vip_mall_has_been_kicked_self_by_vvip_dialog_tip), null, null, E().getColor(R.color.live_im_banned), false);
                } else {
                    SpannableString spannableString6 = new SpannableString(this.f18115e.getString(R.string.liveremovemsg));
                    spannableString6.setSpan(new ForegroundColorSpan(E().getColor(R.color.live_im_banned)), 0, spannableString6.length(), 33);
                    return spannableString6;
                }
            case 14:
                GiftLiveMessage giftLiveMessage = (GiftLiveMessage) data;
                boolean isHandyGiftMessage = giftLiveMessage.isHandyGiftMessage();
                boolean z13 = TextUtils.isEmpty(data.getToUserId()) || data.getToUserId().equals(this.f18111a.getCurrentLiveRoom().getBroadCasterUserId());
                if (isHandyGiftMessage) {
                    return LiveChatSpanUtils.getHandyGiftMessageSpan(giftLiveMessage, textView, (z13 && this.f18111a.getCurrentLiveRoom().isBroadCaster()) ? false : false);
                } else if (giftLiveMessage.getIsGiftAllSend() != 1) {
                    return this.f18111a.getCurrentLiveRoom().isVoiceRoom() ? this.f18115e.getString(R.string.live_im_gave, data.getToUserNickName()) : z13 ? this.f18111a.getCurrentLiveRoom().isMultiLiveRoom() ? this.f18115e.getString(R.string.live_im_gave, data.getToUserNickName()) : this.f18115e.getString(R.string.livesendgift) : this.f18111a.getCurrentLiveRoom().isMultiLiveRoom() ? this.f18115e.getString(R.string.live_im_gave, data.getToUserNickName()) : this.f18115e.getString(R.string.livesendgift);
                } else {
                    Context context3 = this.f18115e;
                    return context3.getString(R.string.live_im_gave, context3.getString(R.string.gift_all_on_the_mic));
                }
            case 15:
                return this.f18115e.getString(R.string.live_im_screen_shot, data.getFromUserNickName());
            case 16:
                if (this.f18111a.getCurrentLiveRoom().isVoiceRoom()) {
                    if (!data.action) {
                        return this.f18115e.getString(R.string.voice_room_tips_micro_type_all);
                    }
                    return this.f18115e.getString(R.string.voice_room_tips_micro_type_member_only);
                } else if (!data.action) {
                    return this.f18115e.getString(R.string.live_open_microphone);
                } else {
                    return this.f18115e.getString(R.string.live_close_microphone);
                }
            case 17:
                if (data.action) {
                    return this.f18115e.getString(R.string.live_free_microphone);
                }
                return this.f18115e.getString(R.string.live_audit_microphone);
            case 18:
                d9.g gVar = this.f18112b;
                if (gVar != null && gVar.getCurrentGCLiveRoomModel() != null && this.f18112b.getCurrentGCLiveRoomModel().isVoiceRoom()) {
                    return this.f18115e.getString(R.string.voice_room_enter_room_message);
                }
                return this.f18115e.getString(R.string.joined);
            case 19:
                return LiveChatSpanUtils.getLuckyGiftRewardSpan(liveMessageModel, ((GiftLiveMessage) data).getCurrentResult(), textView);
            case 21:
                try {
                    i9 = Integer.parseInt(((PkResultMessage) data).getFcoin());
                } catch (Exception unused) {
                    i9 = 0;
                }
                PkResultMessage pkResultMessage = (PkResultMessage) data;
                return pkResultMessage.getResult() == 0 ? this.f18111a.getCurrentLiveRoom().isBroadCaster() ? this.f18115e.getString(R.string.pk_over_dogfall, Integer.valueOf(i9)) : this.f18115e.getString(R.string.pk_over_dogfall_audience) : pkResultMessage.getResult() == 1 ? this.f18111a.getCurrentLiveRoom().isBroadCaster() ? this.f18115e.getString(R.string.pk_over_win, Integer.valueOf(i9)) : this.f18115e.getString(R.string.pk_over_win_audience) : this.f18111a.getCurrentLiveRoom().isBroadCaster() ? this.f18115e.getString(R.string.pk_over_lose, Integer.valueOf(i9)) : this.f18115e.getString(R.string.pk_over_lose_audience);
            case 22:
                return this.f18115e.getString(R.string.live_hello_broadcast_thank_hello_gift, b8.e.g().getUserName());
            case 23:
                if (this.f18111a.getCurrentLiveRoom().isBroadCaster()) {
                    return this.f18115e.getString(R.string.pk_match_successful, data.getToUserNickName());
                }
                return this.f18115e.getString(R.string.pk_match_successful_audience, data.getFromUserNickName());
            case 24:
                return this.f18115e.getString(R.string.livehavememeber_cancel);
            case 25:
                return this.f18115e.getString(R.string.voice_room_link_with_all);
            default:
                return data.getContent();
        }
    }

    private CharSequence G(int i9) {
        SpannableString spannableString = new SpannableString(" ");
        spannableString.setSpan(new com.guochao.faceshow.aaspring.modulars.live.adapter.a(H(i9)), 0, 1, 33);
        return spannableString;
    }

    private Drawable H(int i9) {
        if (this.f18119i == null) {
            this.f18119i = new SparseArray<>();
        }
        BitmapDrawable bitmapDrawable = this.f18119i.get(i9);
        if (bitmapDrawable != null) {
            return bitmapDrawable;
        }
        LinearLayout linearLayout = new LinearLayout(BaseApplication.getInstance());
        VipIndicatorView vipIndicatorView = new VipIndicatorView(BaseApplication.getInstance());
        vipIndicatorView.setVipLevel(i9);
        linearLayout.setPaddingRelative(0, 0, DensityUtil.dp2px(4.0f), 0);
        linearLayout.addView(vipIndicatorView, new LinearLayout.LayoutParams(-2, -2));
        linearLayout.setLayoutDirection(this.f18123m ? 1 : 0);
        linearLayout.setDrawingCacheEnabled(true);
        linearLayout.measure(View.MeasureSpec.makeMeasureSpec(0, 0), View.MeasureSpec.makeMeasureSpec(0, 0));
        linearLayout.layout(0, 0, vipIndicatorView.getMeasuredWidth() + DensityUtil.dp2px(4.0f), vipIndicatorView.getMeasuredHeight());
        BitmapDrawable bitmapDrawable2 = new BitmapDrawable(E(), Bitmap.createBitmap(linearLayout.getDrawingCache()));
        bitmapDrawable2.setBounds(0, 0, bitmapDrawable2.getIntrinsicWidth(), bitmapDrawable2.getIntrinsicHeight());
        linearLayout.destroyDrawingCache();
        this.f18119i.put(i9, bitmapDrawable2);
        return bitmapDrawable2;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void K(V2TIMConversation v2TIMConversation, TextMessage textMessage, BaseLiveMessage baseLiveMessage) {
        SendMessageHandle.sendMessage(v2TIMConversation, textMessage.getMessage(), o9.b.d().b(baseLiveMessage.getFromUserId(), textMessage), new f());
    }

    private CharSequence L(String str, String str2, String str3, int i9, boolean z10) {
        int indexOf;
        int indexOf2;
        SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder(str);
        spannableStringBuilder.setSpan(new ForegroundColorSpan(i9), 0, str.length(), 33);
        if (!TextUtils.isEmpty(str2) && (indexOf2 = str.indexOf(str2)) >= 0 && !z10) {
            spannableStringBuilder.setSpan(new ForegroundColorSpan(this.f18122l), indexOf2, str2.length() + indexOf2, 33);
            spannableStringBuilder.setSpan(new com.guochao.faceshow.aaspring.modulars.live.adapter.a(H(2)), indexOf2, indexOf2 + 1, 33);
        }
        if (!TextUtils.isEmpty(str3) && (indexOf = str.indexOf(str3)) >= 0) {
            spannableStringBuilder.setSpan(new ForegroundColorSpan(this.f18121k), indexOf, str3.length() + indexOf, 33);
        }
        return spannableStringBuilder;
    }

    private void M(TextView textView, CharSequence charSequence, LiveMessageModel<?> liveMessageModel) {
        N(textView, charSequence, liveMessageModel, false);
    }

    /* JADX WARN: Type inference failed for: r4v2, types: [com.guochao.faceshow.aaspring.modulars.live.model.BaseLiveMessage] */
    private void N(TextView textView, CharSequence charSequence, LiveMessageModel<?> liveMessageModel, boolean z10) {
        if (z10 && (charSequence instanceof SpannableStringBuilder)) {
            com.guochao.faceshow.aaspring.modulars.live.adapter.span.f[] fVarArr = (com.guochao.faceshow.aaspring.modulars.live.adapter.span.f[]) ((SpannableStringBuilder) charSequence).getSpans(0, charSequence.length(), com.guochao.faceshow.aaspring.modulars.live.adapter.span.f.class);
            if (fVarArr != null) {
                for (com.guochao.faceshow.aaspring.modulars.live.adapter.span.f fVar : fVarArr) {
                    fVar.bindTextView(textView);
                }
            }
        }
        if (this.f18123m) {
            textView.setText(BidiFormatter.getInstance().unicodeWrap(charSequence, TextDirectionHeuristicsCompat.RTL));
        } else {
            textView.setText(BidiFormatter.getInstance().unicodeWrap(charSequence, TextDirectionHeuristicsCompat.LTR));
        }
        if (charSequence instanceof SpannableStringBuilder) {
            liveMessageModel.getData().setFinalResultSpannableString((SpannableStringBuilder) charSequence);
        }
    }

    private void O(@NonNull AutoChatViewHolder autoChatViewHolder, LiveMessageModel liveMessageModel, BaseLiveMessage baseLiveMessage, CharSequence charSequence) {
        ((LiveChatAutoBackgroundView) autoChatViewHolder.itemView).setPaintColor(Color.parseColor("#BF6365FF"));
        CharSequence finalResultSpannableString = baseLiveMessage.getFinalResultSpannableString();
        if (!TextUtils.isEmpty(finalResultSpannableString)) {
            N(autoChatViewHolder.chatContent, finalResultSpannableString, liveMessageModel, true);
            return;
        }
        SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder(charSequence);
        if (!Objects.equals(liveMessageModel.getCmd(), BaseLiveMessage.RECOMMEND_LOCK_SUCCESS)) {
            String fromUserNickName = baseLiveMessage.getFromUserNickName();
            String string = this.f18115e.getString(R.string.live_hello_gift_join_num, 3);
            ForegroundColorSpan foregroundColorSpan = new ForegroundColorSpan(ContextCompat.getColor(this.f18115e, R.color.live_im_gift_giving_user_name));
            int indexOf = spannableStringBuilder.toString().indexOf(fromUserNickName);
            if (indexOf >= 0 && indexOf <= spannableStringBuilder.length()) {
                spannableStringBuilder.setSpan(foregroundColorSpan, indexOf, fromUserNickName.length(), 33);
                spannableStringBuilder.setSpan(new com.guochao.faceshow.aaspring.modulars.live.adapter.span.e(this.f18111a, fromUserNickName, baseLiveMessage.getFromUserId()), indexOf, fromUserNickName.length(), 33);
            }
            int indexOf2 = spannableStringBuilder.toString().indexOf(this.f18115e.getString(R.string.live_hello_gift_join_num, 3));
            if (indexOf2 >= 0 && indexOf2 <= spannableStringBuilder.length()) {
                spannableStringBuilder.setSpan(new ForegroundColorSpan(ContextCompat.getColor(this.f18115e, R.color.live_im_gift_giving_user_name)), indexOf2, string.length() + indexOf2, 33);
            }
        }
        M(autoChatViewHolder.chatContent, spannableStringBuilder, liveMessageModel);
    }

    private void P(@NonNull AutoChatViewHolder autoChatViewHolder, LiveMessageModel liveMessageModel, BaseLiveMessage baseLiveMessage, CharSequence charSequence) {
        ((LiveChatAutoBackgroundView) autoChatViewHolder.itemView).setPaintColor(Color.parseColor("#BF6365FF"));
        SpannableStringBuilder finalResultSpannableString = baseLiveMessage.getFinalResultSpannableString();
        if (!TextUtils.isEmpty(finalResultSpannableString)) {
            N(autoChatViewHolder.chatContent, finalResultSpannableString, liveMessageModel, true);
            return;
        }
        M(autoChatViewHolder.chatContent, new SpannableStringBuilder(charSequence), liveMessageModel);
    }

    /* JADX WARN: Type inference failed for: r1v1, types: [com.guochao.faceshow.aaspring.modulars.live.model.BaseLiveMessage] */
    private void Q(@NonNull AutoChatViewHolder autoChatViewHolder, LiveMessageModel<?> liveMessageModel, CharSequence charSequence, int i9, SpannableStringBuilder spannableStringBuilder) {
        if (charSequence == null) {
            charSequence = "";
        }
        autoChatViewHolder.chatContent.setTextColor(E().getColor(R.color.white));
        ?? data = liveMessageModel.getData();
        String toUserNickName = data.getToUserNickName();
        if (toUserNickName == null) {
            toUserNickName = "";
        }
        spannableStringBuilder.append(charSequence);
        ForegroundColorSpan foregroundColorSpan = new ForegroundColorSpan(this.f18121k);
        spannableStringBuilder.setSpan(new ForegroundColorSpan(i9), 0, charSequence.length(), 33);
        autoChatViewHolder.chatContent.setMovementMethod(null);
        if (this.f18123m && BaseLiveMessage.TYPE_ADMIN_USER.equals(data.getType()) && data.isAction()) {
            spannableStringBuilder.setSpan(foregroundColorSpan, 9, toUserNickName.length() + 9, 33);
        } else if (this.f18123m && BaseLiveMessage.TYPE_REMOVE_USER.equals(data.getType())) {
            spannableStringBuilder.setSpan(foregroundColorSpan, 7, toUserNickName.length() + 7, 33);
        } else if (this.f18123m && data.isAction() && !b8.e.g().getUserId().equalsIgnoreCase(data.toUserId) && BaseLiveMessage.TYPE_BAN_TALK_USER.equals(data.getType())) {
            spannableStringBuilder.setSpan(foregroundColorSpan, charSequence.length() - toUserNickName.length(), charSequence.length(), 33);
        } else {
            if (BaseLiveMessage.TYPE_SCREEN_SHOT.equalsIgnoreCase(data.getType())) {
                toUserNickName = data.getFromUserNickName();
            }
            String str = toUserNickName != null ? toUserNickName : "";
            if (BaseLiveMessage.TYPE_SCREEN_SHOT.equals(data.getType())) {
                spannableStringBuilder.setSpan(new com.guochao.faceshow.aaspring.modulars.live.adapter.span.e(this.f18111a, str, data.getFromUserId()), 0, str.length(), 33);
                spannableStringBuilder.setSpan(foregroundColorSpan, 0, str.length(), 33);
                autoChatViewHolder.chatContent.setMovementMethod(LinkMovementMethod.getInstance());
            } else {
                if (TextUtils.isEmpty(str)) {
                    str = data.getFromUserNickName();
                }
                if (!TextUtils.isEmpty(str)) {
                    spannableStringBuilder.setSpan(foregroundColorSpan, 0, str.length(), 33);
                }
            }
        }
        M(autoChatViewHolder.chatContent, spannableStringBuilder, liveMessageModel);
        autoChatViewHolder.chatContent.setText(spannableStringBuilder);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r1v1, types: [com.guochao.faceshow.aaspring.modulars.live.model.BaseLiveMessage] */
    /* JADX WARN: Type inference failed for: r8v1, types: [com.guochao.faceshow.aaspring.modulars.live.model.BaseLiveMessage] */
    private void R(SpannableStringBuilder spannableStringBuilder, boolean z10, LiveMessageModel<?> liveMessageModel, AutoChatViewHolder autoChatViewHolder, int i9, int i10) {
        Drawable drawable;
        if (Objects.equals(liveMessageModel.getCmd(), "LIVE_CUSTOM_MSG") && com.guochao.faceshow.aaspring.modulars.translate.a.a().e(liveMessageModel.getData())) {
            if (z10 && spannableStringBuilder.length() > 0) {
                spannableStringBuilder.replace(spannableStringBuilder.length() - 1, spannableStringBuilder.length(), "");
            }
            ?? data = liveMessageModel.getData();
            if (data.isShowtranslateContent() && !TextUtils.isEmpty(data.getTranslateContent())) {
                autoChatViewHolder.line.setVisibility(0);
                autoChatViewHolder.translate_content.setVisibility(0);
                if (this.f18123m) {
                    autoChatViewHolder.translate_content.setText(BidiFormatter.getInstance().unicodeWrap(data.getTranslateContent(), TextDirectionHeuristicsCompat.RTL));
                } else {
                    autoChatViewHolder.translate_content.setText(BidiFormatter.getInstance().unicodeWrap(data.getTranslateContent(), TextDirectionHeuristicsCompat.LTR));
                }
                autoChatViewHolder.translate_content.setTextColor(i10);
            } else {
                autoChatViewHolder.line.setVisibility(8);
                autoChatViewHolder.translate_content.setVisibility(8);
            }
            SpannableString spannableString = new SpannableString(" ");
            if (data.isTranslateing()) {
                drawable = E().getDrawable(R.drawable.icon_translate_ing);
            } else if (!TextUtils.isEmpty(data.getTranslateContent()) && data.isShowtranslateContent()) {
                drawable = E().getDrawable(R.drawable.icon_translate_blue);
            } else if (!TextUtils.isEmpty(data.getTranslateContent()) && !data.isShowtranslateContent()) {
                drawable = E().getDrawable(R.drawable.icon_translate_gray);
            } else {
                drawable = E().getDrawable(R.drawable.icon_translate_gray);
            }
            drawable.setBounds(0, 0, DensityUtil.dp2px(20.0f), DensityUtil.dp2px(20.0f));
            VerticalCenterRoateImageSpan verticalCenterRoateImageSpan = new VerticalCenterRoateImageSpan(drawable);
            spannableString.setSpan(verticalCenterRoateImageSpan, 0, 1, 33);
            if (data.isTranslateing()) {
                ObjectAnimator ofFloat = ObjectAnimator.ofFloat(verticalCenterRoateImageSpan, "roateX", 0.0f, 360.0f);
                ofFloat.setInterpolator(new LinearInterpolator());
                ofFloat.setDuration(1000L);
                ofFloat.setRepeatCount(-1);
                ofFloat.setRepeatMode(1);
                ofFloat.addUpdateListener(new g(autoChatViewHolder));
                ofFloat.start();
                autoChatViewHolder.chatContent.setTag(ofFloat);
            } else {
                if (autoChatViewHolder.chatContent.getTag() instanceof ObjectAnimator) {
                    ((ObjectAnimator) autoChatViewHolder.chatContent.getTag()).end();
                }
                autoChatViewHolder.chatContent.setTag(null);
            }
            spannableStringBuilder.append((CharSequence) spannableString);
            spannableStringBuilder.setSpan(new com.guochao.faceshow.aaspring.modulars.live.adapter.span.g(liveMessageModel, this.f18115e, this.f18111a, new h(i9)), spannableStringBuilder.length() - (data.getContent().length() + 1), spannableStringBuilder.length(), 33);
        }
    }

    private void j(GiftLiveMessage giftLiveMessage) {
        if (giftLiveMessage.getLuckyGiftResults() == null || giftLiveMessage.getIsGiftAllSend() == 1) {
            return;
        }
        Gson gson = GsonGetter.getGson();
        SendGiftResponseModel.LuckyGiftResult currentResult = giftLiveMessage.getCurrentResult();
        if (currentResult == null) {
            return;
        }
        GiftLiveMessage giftLiveMessage2 = (GiftLiveMessage) gson.fromJson(gson.toJson(giftLiveMessage), (Class<Object>) GiftLiveMessage.class);
        if (currentResult.getAwardMultiple() >= 1) {
            this.f18114d.add(new LiveMessageModel<>("LOCAL_LIVE_LUCKY_GIFT_REWARD", giftLiveMessage2));
        }
    }

    private <T extends BaseLiveMessage> void k(LiveMessageModel<T> liveMessageModel) {
        if (liveMessageModel.getData() == null) {
            return;
        }
        String fromUserNickName = liveMessageModel.getData().getFromUserNickName();
        liveMessageModel.getData().setDisplayFromNickName(fromUserNickName);
        if ("LIVE_CUSTOM_MSG".equals(liveMessageModel.getCmd())) {
            if (StringUtils.isChinese(liveMessageModel.getData().getFromUserNickName()) && this.f18123m) {
                T data = liveMessageModel.getData();
                data.setDisplayFromNickName(fromUserNickName + " : ");
            } else if (!StringUtils.hasChinese(liveMessageModel.getData().getFromUserNickName()) && this.f18123m) {
                T data2 = liveMessageModel.getData();
                data2.setDisplayFromNickName(fromUserNickName + " : ");
            } else if (StringUtils.isArabic(fromUserNickName)) {
                T data3 = liveMessageModel.getData();
                data3.setDisplayFromNickName(fromUserNickName + " : ");
            } else if (this.f18123m) {
                T data4 = liveMessageModel.getData();
                data4.setDisplayFromNickName(" : " + fromUserNickName);
            } else {
                T data5 = liveMessageModel.getData();
                data5.setDisplayFromNickName(fromUserNickName + " : ");
            }
        }
    }

    /* JADX WARN: Type inference failed for: r2v0, types: [com.guochao.faceshow.aaspring.modulars.live.model.BaseLiveMessage] */
    /* JADX WARN: Type inference failed for: r4v0, types: [com.guochao.faceshow.aaspring.modulars.live.model.BaseLiveMessage] */
    /* JADX WARN: Type inference failed for: r6v1, types: [com.guochao.faceshow.aaspring.modulars.live.model.BaseLiveMessage] */
    private CharSequence m(LiveMessageModel<?> liveMessageModel, TextView textView) {
        SpannableString spannableString = new SpannableString("  ");
        spannableString.setSpan(new com.guochao.faceshow.aaspring.modulars.live.adapter.span.a(liveMessageModel.getData().getFromUserAvatar(), textView), 0, 1, 33);
        spannableString.setSpan(new com.guochao.faceshow.aaspring.modulars.live.adapter.span.e(this.f18111a, liveMessageModel.getData().getFromUserNickName(), liveMessageModel.getData().getFromUserId()), 0, spannableString.length(), 33);
        return spannableString;
    }

    private r n(BaseLiveMessage baseLiveMessage) {
        int i9;
        Context context = this.f18115e;
        if (baseLiveMessage instanceof BaseLiveGameMessage) {
            BaseLiveGameMessage baseLiveGameMessage = (BaseLiveGameMessage) baseLiveMessage;
            if (baseLiveGameMessage.getLiveGameBean() != null && baseLiveGameMessage.getLiveGameBean().getFlag() == 1) {
                i9 = R.mipmap.icon_game_shuijing;
                Drawable drawable = ContextCompat.getDrawable(context, i9);
                drawable.setBounds(0, 0, DensityUtil.dp2px(14.0f), DensityUtil.dp2px(14.0f));
                return new r(drawable);
            }
        }
        i9 = R.mipmap.icon_game_diamond;
        Drawable drawable2 = ContextCompat.getDrawable(context, i9);
        drawable2.setBounds(0, 0, DensityUtil.dp2px(14.0f), DensityUtil.dp2px(14.0f));
        return new r(drawable2);
    }

    /* JADX WARN: Type inference failed for: r4v1, types: [com.guochao.faceshow.aaspring.modulars.live.model.BaseLiveMessage] */
    private CharSequence o(LiveMessageModel<?> liveMessageModel, TextView textView) {
        SpannableString spannableString = new SpannableString("  ");
        spannableString.setSpan(new com.guochao.faceshow.aaspring.modulars.live.adapter.span.d(liveMessageModel.getData().getMvpUrl(), textView), 0, 1, 33);
        return spannableString;
    }

    private Drawable p(int i9, int i10) {
        Bitmap createBitmap;
        int i11 = i10 + i9;
        BitmapDrawable bitmapDrawable = this.f18124n.get(i11);
        if (bitmapDrawable != null) {
            return bitmapDrawable;
        }
        LinearLayout linearLayout = new LinearLayout(BaseApplication.getInstance());
        LevelView levelView = new LevelView(BaseApplication.getInstance());
        levelView.setLevel(i9);
        linearLayout.addView(levelView, new LinearLayout.LayoutParams(-2, -2));
        linearLayout.setLayoutDirection(this.f18123m ? 1 : 0);
        linearLayout.setDrawingCacheEnabled(true);
        linearLayout.measure(View.MeasureSpec.makeMeasureSpec(0, 0), View.MeasureSpec.makeMeasureSpec(0, 0));
        linearLayout.layout(0, 0, levelView.getMeasuredWidth(), levelView.getMeasuredHeight());
        Bitmap drawingCache = linearLayout.getDrawingCache();
        if (drawingCache != null) {
            createBitmap = Bitmap.createBitmap(drawingCache);
        } else {
            createBitmap = Bitmap.createBitmap(linearLayout.getMeasuredWidth(), linearLayout.getMeasuredHeight(), Bitmap.Config.ARGB_8888);
            linearLayout.draw(new Canvas(createBitmap));
        }
        BitmapDrawable bitmapDrawable2 = new BitmapDrawable(E(), createBitmap);
        bitmapDrawable2.setBounds(0, 0, bitmapDrawable2.getIntrinsicWidth(), bitmapDrawable2.getIntrinsicHeight());
        this.f18124n.put(i11, bitmapDrawable2);
        linearLayout.destroyDrawingCache();
        return bitmapDrawable2;
    }

    private CharSequence q() {
        Drawable drawable = E().getDrawable(R.mipmap.icon_zb_admin);
        drawable.setBounds(0, 0, DensityUtil.dp2px(this.f18115e, 18.0f), DensityUtil.dp2px(BaseApplication.getInstance(), 18.0f));
        SpannableString spannableString = new SpannableString("  ");
        spannableString.setSpan(new com.guochao.faceshow.aaspring.modulars.live.adapter.a(drawable), 0, 1, 33);
        return spannableString;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    @ColorInt
    private int r(String str) {
        char c10;
        switch (str.hashCode()) {
            case -2095033143:
                if (str.equals("LIVE_LUCKY_NUMBER_RESULT")) {
                    c10 = '\f';
                    break;
                }
                c10 = 65535;
                break;
            case -2024670318:
                if (str.equals(BaseLiveMessage.RECOMMEND_LOCK_SUCCESS)) {
                    c10 = 6;
                    break;
                }
                c10 = 65535;
                break;
            case -1680604500:
                if (str.equals("LIVE_SHARE")) {
                    c10 = 2;
                    break;
                }
                c10 = 65535;
                break;
            case -1594615568:
                if (str.equals("LIVE_FOLLOW_ANCHOR")) {
                    c10 = 1;
                    break;
                }
                c10 = 65535;
                break;
            case -1264611414:
                if (str.equals(BaseLiveMessage.LIVE_HELLO_JOIN_GROUP)) {
                    c10 = 4;
                    break;
                }
                c10 = 65535;
                break;
            case -1095037310:
                if (str.equals("LIVE_TOBE_MEMBER_USER")) {
                    c10 = 21;
                    break;
                }
                c10 = 65535;
                break;
            case -791193586:
                if (str.equals("LIVE_ADMIN_USER")) {
                    c10 = 19;
                    break;
                }
                c10 = 65535;
                break;
            case -643342920:
                if (str.equals("LIVE_ROOM_NATURE")) {
                    c10 = 24;
                    break;
                }
                c10 = 65535;
                break;
            case -546460403:
                if (str.equals("LIVE_LUCKY_REMOTE_WIN")) {
                    c10 = 11;
                    break;
                }
                c10 = 65535;
                break;
            case -495544855:
                if (str.equals("LIVE_EVENT_ANIM")) {
                    c10 = '\n';
                    break;
                }
                c10 = 65535;
                break;
            case -480508645:
                if (str.equals("LIVE_BAN_TALK_USER")) {
                    c10 = 15;
                    break;
                }
                c10 = 65535;
                break;
            case -326112617:
                if (str.equals("LOCAL_LIVE_NOTICE")) {
                    c10 = 26;
                    break;
                }
                c10 = 65535;
                break;
            case -211458612:
                if (str.equals("LIVE_RECEIVE_HELLO_GIFT")) {
                    c10 = 5;
                    break;
                }
                c10 = 65535;
                break;
            case -29739025:
                if (str.equals(BaseLiveMessage.MVP_RECOMMEND_IM_LOCK_SUCCESS)) {
                    c10 = 7;
                    break;
                }
                c10 = 65535;
                break;
            case 204859347:
                if (str.equals("LIVE_REMOVE_USER")) {
                    c10 = 14;
                    break;
                }
                c10 = 65535;
                break;
            case 422851572:
                if (str.equals("LIVE_SEND_GIFT")) {
                    c10 = '\t';
                    break;
                }
                c10 = 65535;
                break;
            case 455262234:
                if (str.equals("LIVE_SCREEN_SHOT")) {
                    c10 = 16;
                    break;
                }
                c10 = 65535;
                break;
            case 499143725:
                if (str.equals("LIVE_LINKMIC_MICLOCK")) {
                    c10 = 23;
                    break;
                }
                c10 = 65535;
                break;
            case 499173541:
                if (str.equals("LIVE_LINKMIC_MICMODE")) {
                    c10 = 25;
                    break;
                }
                c10 = 65535;
                break;
            case 955635797:
                if (str.equals("LIVE_RESET_TITLE")) {
                    c10 = 18;
                    break;
                }
                c10 = 65535;
                break;
            case 1205656262:
                if (str.equals("LIVE_CUSTOM_MSG")) {
                    c10 = 3;
                    break;
                }
                c10 = 65535;
                break;
            case 1333976243:
                if (str.equals("LIVE_PUSH_CHECH")) {
                    c10 = 17;
                    break;
                }
                c10 = 65535;
                break;
            case 1615504782:
                if (str.equals("LIVE_ADD_GROUP")) {
                    c10 = 0;
                    break;
                }
                c10 = 65535;
                break;
            case 1624957192:
                if (str.equals("LOCAL_LIVE_LUCKY_GIFT_REWARD")) {
                    c10 = 29;
                    break;
                }
                c10 = 65535;
                break;
            case 1693485328:
                if (str.equals("LIVE_LUCKY_NUMBER_RESULT_V_COIN")) {
                    c10 = '\r';
                    break;
                }
                c10 = 65535;
                break;
            case 1702034254:
                if (str.equals("LIVE_PK_RESULT")) {
                    c10 = 27;
                    break;
                }
                c10 = 65535;
                break;
            case 1778386788:
                if (str.equals("LIVE_BEGIN_PK")) {
                    c10 = 28;
                    break;
                }
                c10 = 65535;
                break;
            case 1882469245:
                if (str.equals("LIVE_MEMBER_USER")) {
                    c10 = 20;
                    break;
                }
                c10 = 65535;
                break;
            case 1895529258:
                if (str.equals("LIVE_TAKE_SEAT")) {
                    c10 = 22;
                    break;
                }
                c10 = 65535;
                break;
            default:
                c10 = 65535;
                break;
        }
        if (c10 != 0 && c10 != 1 && c10 != 2) {
            switch (c10) {
                case '\t':
                case '\n':
                case 11:
                case '\f':
                case '\r':
                    return E().getColor(R.color.white);
                case 14:
                case 15:
                case 16:
                case 17:
                case 18:
                    return E().getColor(R.color.live_im_banned);
                case 19:
                case 20:
                case 21:
                case 22:
                    return E().getColor(R.color.live_im_admin);
                case 23:
                case 24:
                case 25:
                    return Color.parseColor("#FF8889F6");
                case 26:
                    return E().getColor(R.color.lv_chat_push_message);
                case 27:
                case 28:
                    return E().getColor(R.color.live_pk_record_fb);
                case 29:
                    return E().getColor(R.color.live_im_gift_giving);
                default:
                    return -1;
            }
        }
        return Color.parseColor("#FF709EFF");
    }

    private CharSequence s(LiveMessageModel<?> liveMessageModel, CharSequence charSequence, int i9) {
        SpannableString spannableString = new SpannableString(charSequence);
        String cmd = liveMessageModel.getCmd();
        cmd.hashCode();
        char c10 = 65535;
        switch (cmd.hashCode()) {
            case -1680604500:
                if (cmd.equals("LIVE_SHARE")) {
                    c10 = 0;
                    break;
                }
                break;
            case 422851572:
                if (cmd.equals("LIVE_SEND_GIFT")) {
                    c10 = 1;
                    break;
                }
                break;
            case 1205656262:
                if (cmd.equals("LIVE_CUSTOM_MSG")) {
                    c10 = 2;
                    break;
                }
                break;
            case 1615504782:
                if (cmd.equals("LIVE_ADD_GROUP")) {
                    c10 = 3;
                    break;
                }
                break;
        }
        switch (c10) {
            case 0:
            case 1:
            case 2:
            case 3:
                spannableString.setSpan(new ForegroundColorSpan(i9), 0, charSequence.length(), 33);
                break;
        }
        return spannableString;
    }

    private CharSequence t(TextView textView, GiftLiveMessage giftLiveMessage) {
        SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder();
        spannableStringBuilder.append((CharSequence) " ");
        spannableStringBuilder.append(u(textView, giftLiveMessage.getGiftImg()));
        spannableStringBuilder.append((CharSequence) " ");
        if (!TextUtils.isEmpty(giftLiveMessage.giftNum) && !"1".equalsIgnoreCase(giftLiveMessage.giftNum)) {
            SpannableString spannableString = new SpannableString(" x" + giftLiveMessage.giftNum);
            spannableString.setSpan(new ForegroundColorSpan(E().getColor(R.color.live_im_gift_giving)), 0, spannableString.length(), 33);
            spannableStringBuilder.append((CharSequence) spannableString);
        }
        return spannableStringBuilder;
    }

    private CharSequence u(TextView textView, String str) {
        SpannableString spannableString = new SpannableString("￼");
        BitmapFactory.Options options = new BitmapFactory.Options();
        options.inSampleSize = 4;
        spannableString.setSpan(new IconSpan(new BitmapDrawable(BitmapFactory.decodeResource(BaseApplication.getInstance().getResources(), R.mipmap.ic_launcher, options)), str, textView), 0, spannableString.length(), 33);
        return spannableString;
    }

    @NotNull
    private CharSequence v(BaseLiveMessage baseLiveMessage, @StringRes int i9, TextView textView) {
        String operatedUserImg = baseLiveMessage.getOperatedUserImg();
        String toUserNickName = baseLiveMessage.getToUserNickName();
        if (!TextUtils.isEmpty(operatedUserImg)) {
            toUserNickName = "  " + toUserNickName + " ";
        }
        String string = this.f18115e.getString(i9, toUserNickName);
        SpannableString spannableString = new SpannableString(string);
        spannableString.setSpan(new ForegroundColorSpan(E().getColor(R.color.live_im_banned)), 0, spannableString.length(), 33);
        int indexOf = string.indexOf(toUserNickName);
        if (indexOf >= 0) {
            spannableString.setSpan(new ForegroundColorSpan(this.f18121k), indexOf, toUserNickName.length() + indexOf, 33);
            if (!TextUtils.isEmpty(operatedUserImg)) {
                spannableString.setSpan(new com.guochao.faceshow.aaspring.modulars.live.adapter.span.a(operatedUserImg, textView), indexOf, indexOf + 1, 33);
            }
        }
        return spannableString;
    }

    private CharSequence w(int i9, boolean z10) {
        Drawable p10;
        SpannableString spannableString = new SpannableString(" ");
        if (z10) {
            p10 = p(i9, 100);
        } else {
            p10 = p(i9, 0);
        }
        spannableString.setSpan(new com.guochao.faceshow.aaspring.modulars.live.adapter.a(p10), 0, 1, 33);
        return spannableString;
    }

    private CharSequence x(BaseLiveMessage baseLiveMessage) {
        String str;
        if (!(baseLiveMessage instanceof LiveGameLuckyResultMessage)) {
            return baseLiveMessage.getContent();
        }
        LiveGameLuckyResultMessage liveGameLuckyResultMessage = (LiveGameLuckyResultMessage) baseLiveMessage;
        String string = E().getString(R.string.minigame_lucky_number_win);
        String userName = liveGameLuckyResultMessage.getWinner().getUserName();
        String userId = liveGameLuckyResultMessage.getWinner().getUserId();
        String valueOf = String.valueOf(liveGameLuckyResultMessage.getLuckyNumberStartGameBean().getPrizeNum());
        if (q7.a.e().j()) {
            str = MessageFormat.format(string, userName, " {Diamonds}", valueOf);
        } else {
            try {
                str = String.format(string, userName, " {Diamonds}", valueOf);
            } catch (Exception unused) {
                str = "";
            }
        }
        int indexOf = str.indexOf(userName);
        SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder(str);
        if (indexOf > 0) {
            spannableStringBuilder.setSpan(new ForegroundColorSpan(ContextCompat.getColor(this.f18115e, R.color.color_game_message)), indexOf, userName.length() + indexOf, 33);
            if (!TextUtils.isEmpty(userId)) {
                spannableStringBuilder.setSpan(new com.guochao.faceshow.aaspring.modulars.live.adapter.span.e(this.f18111a, userName, userId), indexOf, userName.length() + indexOf, 33);
            }
        }
        int indexOf2 = str.indexOf(" {Diamonds}") + 1;
        if (indexOf2 > 0) {
            spannableStringBuilder.setSpan(n(baseLiveMessage), indexOf2, (indexOf2 + 11) - 1, 33);
        }
        return spannableStringBuilder;
    }

    private CharSequence y(TextView textView, BaseLiveMessage baseLiveMessage) {
        int i9;
        String str = "";
        if (baseLiveMessage instanceof LiveLuckyWinMessage) {
            String toUserId = baseLiveMessage.getToUserId();
            String toUserNickName = baseLiveMessage.getToUserNickName();
            if (toUserNickName == null) {
                toUserNickName = "";
            }
            LiveLuckyWinMessage liveLuckyWinMessage = (LiveLuckyWinMessage) baseLiveMessage;
            int winDiamondNum = liveLuckyWinMessage.getWinDiamondNum();
            Drawable drawable = ContextCompat.getDrawable(this.f18115e, liveLuckyWinMessage.getFlag() == 0 ? R.mipmap.icon_game_diamond : R.mipmap.icon_game_shuijing);
            if (q7.a.e().j()) {
                str = MessageFormat.format(this.f18115e.getString(R.string.minigame_lucky_win), toUserNickName, " {diamond}", String.valueOf(winDiamondNum));
            } else {
                try {
                    str = this.f18115e.getString(R.string.minigame_lucky_win, toUserNickName, " {diamond}", String.valueOf(winDiamondNum));
                } catch (Exception unused) {
                }
            }
            SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder(str);
            if (drawable == null) {
                return spannableStringBuilder;
            }
            int minimumWidth = drawable.getMinimumWidth();
            int minimumHeight = drawable.getMinimumHeight();
            TextView textView2 = new TextView(textView.getContext());
            textView2.setTextSize(2, 14.0f);
            textView2.measure(0, 0);
            float measuredHeight = textView2.getMeasuredHeight();
            drawable.setBounds(0, (int) (0.075f * measuredHeight), (int) (((minimumWidth * measuredHeight) * 0.8f) / minimumHeight), (int) (measuredHeight * 0.85f));
            r rVar = new r(drawable);
            int indexOf = spannableStringBuilder.toString().indexOf("{diamond}");
            if (indexOf >= 0 && (i9 = indexOf + 9) <= spannableStringBuilder.length()) {
                spannableStringBuilder.setSpan(rVar, indexOf, i9, 17);
            }
            int indexOf2 = spannableStringBuilder.toString().indexOf(toUserNickName);
            ForegroundColorSpan foregroundColorSpan = new ForegroundColorSpan(ContextCompat.getColor(this.f18115e, R.color.white));
            if (indexOf2 <= spannableStringBuilder.length()) {
                spannableStringBuilder.setSpan(foregroundColorSpan, 0, indexOf2, 17);
            }
            ForegroundColorSpan foregroundColorSpan2 = new ForegroundColorSpan(ContextCompat.getColor(this.f18115e, R.color.color_game_message));
            if (indexOf2 >= 0 && toUserNickName.length() + indexOf2 <= spannableStringBuilder.length()) {
                spannableStringBuilder.setSpan(foregroundColorSpan2, indexOf2, toUserNickName.length() + indexOf2, 17);
                if (!TextUtils.isEmpty(toUserId) && !TextUtils.isEmpty(toUserNickName)) {
                    spannableStringBuilder.setSpan(new com.guochao.faceshow.aaspring.modulars.live.adapter.span.e(this.f18111a, toUserNickName, toUserId), indexOf2, toUserNickName.length() + indexOf2, 33);
                }
            }
            if (toUserNickName.length() + indexOf2 >= 0) {
                spannableStringBuilder.setSpan(foregroundColorSpan, indexOf2 + toUserNickName.length(), spannableStringBuilder.length(), 17);
            }
            return spannableStringBuilder;
        }
        return "";
    }

    private Drawable z() {
        BitmapDrawable bitmapDrawable = this.f18120j;
        if (bitmapDrawable != null) {
            return bitmapDrawable;
        }
        ImageView imageView = new ImageView(this.f18115e);
        imageView.setImageResource(R.mipmap.live_label_new);
        imageView.setLayoutParams(new ViewGroup.LayoutParams(-2, -2));
        imageView.measure(View.MeasureSpec.makeMeasureSpec(DensityUtil.dp2px(1000.0f), Integer.MIN_VALUE), View.MeasureSpec.makeMeasureSpec(DensityUtil.dp2px(1000.0f), Integer.MIN_VALUE));
        imageView.layout(0, 0, imageView.getMeasuredWidth(), imageView.getMeasuredHeight());
        Bitmap createBitmap = Bitmap.createBitmap(imageView.getMeasuredWidth(), imageView.getMeasuredHeight(), Bitmap.Config.ARGB_8888);
        imageView.draw(new Canvas(createBitmap));
        BitmapDrawable bitmapDrawable2 = new BitmapDrawable(E(), createBitmap);
        this.f18120j = bitmapDrawable2;
        bitmapDrawable2.setBounds(0, 0, DensityUtil.dp2px(38.0f), DensityUtil.dp2px(15.0f));
        return this.f18120j;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    /* renamed from: I */
    public void onBindViewHolder(@NonNull BaseViewHolder baseViewHolder, int i9, @NonNull List<Object> list) {
        super.onBindViewHolder(baseViewHolder, i9, list);
    }

    public void J() {
        if (this.f18124n.size() != 0) {
            for (int i9 = 0; i9 < this.f18124n.size(); i9++) {
                Bitmap bitmap = this.f18124n.valueAt(i9).getBitmap();
                if (bitmap != null) {
                    bitmap.recycle();
                }
            }
            this.f18124n.clear();
        }
        if (this.f18119i != null) {
            for (int i10 = 0; i10 < this.f18119i.size(); i10++) {
                Bitmap bitmap2 = this.f18119i.valueAt(i10).getBitmap();
                if (bitmap2 != null) {
                    bitmap2.recycle();
                }
            }
            this.f18119i.clear();
        }
    }

    public <T extends BaseLiveMessage> void g(LiveMessageModel<T> liveMessageModel, boolean z10) {
        if (liveMessageModel.getData().getChatDate() == null) {
            liveMessageModel.getData().setChatDate(Long.valueOf(System.currentTimeMillis()));
        }
        k(liveMessageModel);
        int size = this.f18114d.size();
        LiveMessageModel<?> liveMessageModel2 = size >= 1 ? this.f18114d.get(size - 1) : null;
        if (liveMessageModel2 != null && "LIVE_ADD_GROUP".equals(liveMessageModel2.getCmd()) && Objects.equals(liveMessageModel.getCmd(), "LIVE_ADD_GROUP") && !Objects.equals(liveMessageModel2.getData().getFromUserId(), b8.e.g().c().getUserId()) && liveMessageModel.getData().getChatDate().longValue() - liveMessageModel2.getData().getChatDate().longValue() <= 3000) {
            this.f18114d.set(size - 1, liveMessageModel);
            RecyclerView recyclerView = this.f18113c;
            if (recyclerView != null && recyclerView.isComputingLayout()) {
                this.f18113c.post(this.f18126p);
                return;
            } else {
                notifyItemChanged(this.f18114d.size() - 1);
                return;
            }
        }
        String fromUserId = liveMessageModel.getData().getFromUserId();
        if ("LIVE_CUSTOM_MSG".equals(liveMessageModel.getCmd())) {
            if (Objects.equals(fromUserId, b8.e.g().getUserId())) {
                this.f18114d.add(liveMessageModel);
                notifyDataSetChanged();
                this.f18113c.scrollToPosition(this.f18114d.size() - 1);
                return;
            } else if (z10) {
                this.f18114d.add(liveMessageModel);
                notifyDataSetChanged();
                return;
            } else {
                this.f18114d.add(liveMessageModel);
                notifyDataSetChanged();
                if (this.f18113c.canScrollVertically(1)) {
                    return;
                }
                this.f18113c.scrollToPosition(this.f18114d.size() - 1);
                return;
            }
        }
        this.f18114d.add(liveMessageModel);
        if ("LIVE_SEND_GIFT".equals(liveMessageModel.getCmd())) {
            j((GiftLiveMessage) liveMessageModel.getData());
        }
        notifyDataSetChanged();
        if (this.f18113c.canScrollVertically(1)) {
            return;
        }
        this.f18113c.scrollToPosition(this.f18114d.size() - 1);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public int getItemCount() {
        return this.f18114d.size();
    }

    /* JADX WARN: Type inference failed for: r0v3, types: [com.guochao.faceshow.aaspring.modulars.live.model.BaseLiveMessage] */
    /* JADX WARN: Type inference failed for: r0v7, types: [com.guochao.faceshow.aaspring.modulars.live.model.BaseLiveMessage] */
    /* JADX WARN: Type inference failed for: r1v1, types: [com.guochao.faceshow.aaspring.modulars.live.model.BaseLiveMessage] */
    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public int getItemViewType(int i9) {
        LiveMessageModel<?> liveMessageModel = this.f18114d.get(i9);
        String cmd = liveMessageModel.getCmd();
        cmd.hashCode();
        char c10 = 65535;
        switch (cmd.hashCode()) {
            case -1680604500:
                if (cmd.equals("LIVE_SHARE")) {
                    c10 = 0;
                    break;
                }
                break;
            case -1594615568:
                if (cmd.equals("LIVE_FOLLOW_ANCHOR")) {
                    c10 = 1;
                    break;
                }
                break;
            case -1554078803:
                if (cmd.equals("LOCAL_VOICE_ROOM_JOIN_ROOM")) {
                    c10 = 2;
                    break;
                }
                break;
            case -1218793833:
                if (cmd.equals("LIVE_RECEIVE_HELLO_GIFT_THANK")) {
                    c10 = 3;
                    break;
                }
                break;
            case -644307358:
                if (cmd.equals("LOCAL_LIVE_ADD_SHARE")) {
                    c10 = 4;
                    break;
                }
                break;
            case -480508645:
                if (cmd.equals("LIVE_BAN_TALK_USER")) {
                    c10 = 5;
                    break;
                }
                break;
            case 0:
                if (cmd.equals("")) {
                    c10 = 6;
                    break;
                }
                break;
            case 188692527:
                if (cmd.equals("LOCAL_LIVE_BROADCASTER_SHARE")) {
                    c10 = 7;
                    break;
                }
                break;
            case 204859347:
                if (cmd.equals("LIVE_REMOVE_USER")) {
                    c10 = '\b';
                    break;
                }
                break;
            case 422851572:
                if (cmd.equals("LIVE_SEND_GIFT")) {
                    c10 = '\t';
                    break;
                }
                break;
            case 841976657:
                if (cmd.equals("LOCAL_LIVE_LUCKY_GIFT_TIPS")) {
                    c10 = '\n';
                    break;
                }
                break;
            case 1205656262:
                if (cmd.equals("LIVE_CUSTOM_MSG")) {
                    c10 = 11;
                    break;
                }
                break;
            case 1615504782:
                if (cmd.equals("LIVE_ADD_GROUP")) {
                    c10 = '\f';
                    break;
                }
                break;
            case 1929182028:
                if (cmd.equals("LOCAL_VOICE_ROOM_INVITE")) {
                    c10 = '\r';
                    break;
                }
                break;
        }
        switch (c10) {
            case 0:
            case 1:
            case '\t':
            case 11:
            case '\f':
                if (TextUtils.isEmpty(liveMessageModel.getData().getUserVipMsg().getDressChatSource())) {
                    return super.getItemViewType(i9);
                }
                return 3;
            case 2:
                return 6;
            case 3:
                return 4;
            case 4:
                return 2;
            case 5:
            case '\b':
                String fromUserId = liveMessageModel.getData().getFromUserId();
                if (!TextUtils.isEmpty(fromUserId) && Objects.equals(fromUserId, this.f18112b.getCurrentLiveRoom().getBroadCasterUserId())) {
                    return super.getItemViewType(i9);
                }
                if (TextUtils.isEmpty(liveMessageModel.getData().getUserVipMsg().getDressChatSource())) {
                    return super.getItemViewType(i9);
                }
                return 3;
            case 6:
                return 7;
            case 7:
                return 1;
            case '\n':
                return 5;
            case '\r':
                return 8;
            default:
                return super.getItemViewType(i9);
        }
    }

    public List<LiveMessageModel<?>> getList() {
        return this.f18114d;
    }

    public void h(LiveMessageModel<?> liveMessageModel) {
        k(liveMessageModel);
        this.f18114d.add(liveMessageModel);
        notifyDataSetChanged();
        this.f18113c.scrollToPosition(this.f18114d.size() - 1);
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Type inference failed for: r1v69, types: [com.guochao.faceshow.aaspring.modulars.live.model.BaseLiveMessage] */
    /* JADX WARN: Type inference failed for: r3v17, types: [com.guochao.faceshow.aaspring.modulars.live.model.BaseLiveMessage] */
    public void i(@NonNull AutoChatViewHolder autoChatViewHolder, int i9) {
        CharSequence charSequence;
        char c10;
        int i10;
        int i11;
        SpannableStringBuilder spannableStringBuilder;
        LiveMessageModel liveMessageModel = this.f18114d.get(i9);
        BaseLiveMessage data = liveMessageModel.getData();
        autoChatViewHolder.chatContent.setMovementMethod(j.a());
        try {
            charSequence = F(liveMessageModel, autoChatViewHolder.chatContent);
        } catch (Exception e10) {
            CrashReport.postCatchedException(e10);
            charSequence = "";
        }
        int r10 = r(liveMessageModel.getCmd());
        autoChatViewHolder.line.setVisibility(8);
        autoChatViewHolder.translate_content.setVisibility(8);
        if (i9 == 0) {
            d9.g gVar = this.f18112b;
            if (gVar != null && gVar.getCurrentLiveRoom().isVoiceRoom()) {
                autoChatViewHolder.chatContent.setTextColor(-1);
            } else {
                autoChatViewHolder.chatContent.setTextColor(r10);
            }
            ((LiveChatAutoBackgroundView) autoChatViewHolder.itemView).setPaintColor(Color.parseColor("#40000000"));
            M(autoChatViewHolder.chatContent, charSequence, liveMessageModel);
            return;
        }
        autoChatViewHolder.chatContent.setTextColor(r10);
        if (!liveMessageModel.getCmd().equals(BaseLiveMessage.LIVE_HELLO_JOIN_GROUP) && !liveMessageModel.getCmd().equals("LIVE_RECEIVE_HELLO_GIFT") && !liveMessageModel.getCmd().equals(BaseLiveMessage.RECOMMEND_LOCK_SUCCESS)) {
            if (liveMessageModel.getCmd().equals(BaseLiveMessage.MVP_RECOMMEND_IM_LOCK_SUCCESS)) {
                P(autoChatViewHolder, liveMessageModel, data, charSequence);
                return;
            }
            if (autoChatViewHolder.getItemViewType() == 3) {
                ((ChatBgView) autoChatViewHolder.itemView).setVipChatBg(data.getUserVipMsg().getDressChatSource());
            } else {
                ((LiveChatAutoBackgroundView) autoChatViewHolder.itemView).setPaintColor(Color.parseColor("#66000000"));
            }
            int levelId = data.getLevelId();
            boolean z10 = data.getUserType() == 1;
            data.getUserType();
            boolean z11 = data.getUserVipMsg().getVipLevel() >= 1;
            boolean z12 = data.getUserVipMsg().getVipLevel() == 2;
            boolean z13 = data.getIsNewer() == 1;
            if (charSequence == null) {
                charSequence = "";
            }
            SpannableStringBuilder finalResultSpannableString = data.getFinalResultSpannableString();
            UserVipData userVipMsg = data.getUserVipMsg();
            if (userVipMsg != null) {
                String publicFontColor = userVipMsg.getPublicFontColor();
                if (!TextUtils.isEmpty(publicFontColor) && publicFontColor.startsWith("#")) {
                    try {
                        r10 = Color.parseColor(publicFontColor);
                        autoChatViewHolder.chatContent.setTextColor(r10);
                    } catch (Exception unused) {
                    }
                }
            }
            int i12 = r10;
            if (!TextUtils.isEmpty(finalResultSpannableString)) {
                R(finalResultSpannableString, true, liveMessageModel, autoChatViewHolder, i9, i12);
                N(autoChatViewHolder.chatContent, finalResultSpannableString, liveMessageModel, true);
                return;
            }
            SpannableStringBuilder spannableStringBuilder2 = new SpannableStringBuilder();
            String cmd = liveMessageModel.getCmd();
            boolean z14 = z12;
            switch (cmd.hashCode()) {
                case -1680604500:
                    if (cmd.equals("LIVE_SHARE")) {
                        c10 = 2;
                        break;
                    }
                    c10 = 65535;
                    break;
                case -1594615568:
                    if (cmd.equals("LIVE_FOLLOW_ANCHOR")) {
                        c10 = 3;
                        break;
                    }
                    c10 = 65535;
                    break;
                case -1095037310:
                    if (cmd.equals("LIVE_TOBE_MEMBER_USER")) {
                        c10 = 6;
                        break;
                    }
                    c10 = 65535;
                    break;
                case -1051830433:
                    if (cmd.equals("LOCAL_VOICE_ROOM_WELCOME")) {
                        c10 = 5;
                        break;
                    }
                    c10 = 65535;
                    break;
                case -791193586:
                    if (cmd.equals("LIVE_ADMIN_USER")) {
                        c10 = 21;
                        break;
                    }
                    c10 = 65535;
                    break;
                case -643342920:
                    if (cmd.equals("LIVE_ROOM_NATURE")) {
                        c10 = 16;
                        break;
                    }
                    c10 = 65535;
                    break;
                case -546460403:
                    if (cmd.equals("LIVE_LUCKY_REMOTE_WIN")) {
                        c10 = '\r';
                        break;
                    }
                    c10 = 65535;
                    break;
                case -495544855:
                    if (cmd.equals("LIVE_EVENT_ANIM")) {
                        c10 = 20;
                        break;
                    }
                    c10 = 65535;
                    break;
                case -480508645:
                    if (cmd.equals("LIVE_BAN_TALK_USER")) {
                        c10 = '\t';
                        break;
                    }
                    c10 = 65535;
                    break;
                case 121642060:
                    if (cmd.equals("LIVE_LUCKY_REMOTE_WIN_V_COIN")) {
                        c10 = 14;
                        break;
                    }
                    c10 = 65535;
                    break;
                case 204859347:
                    if (cmd.equals("LIVE_REMOVE_USER")) {
                        c10 = '\n';
                        break;
                    }
                    c10 = 65535;
                    break;
                case 422851572:
                    if (cmd.equals("LIVE_SEND_GIFT")) {
                        c10 = '\b';
                        break;
                    }
                    c10 = 65535;
                    break;
                case 455262234:
                    if (cmd.equals("LIVE_SCREEN_SHOT")) {
                        c10 = '\f';
                        break;
                    }
                    c10 = 65535;
                    break;
                case 499143725:
                    if (cmd.equals("LIVE_LINKMIC_MICLOCK")) {
                        c10 = 15;
                        break;
                    }
                    c10 = 65535;
                    break;
                case 499173541:
                    if (cmd.equals("LIVE_LINKMIC_MICMODE")) {
                        c10 = 19;
                        break;
                    }
                    c10 = 65535;
                    break;
                case 1205656262:
                    if (cmd.equals("LIVE_CUSTOM_MSG")) {
                        c10 = 0;
                        break;
                    }
                    c10 = 65535;
                    break;
                case 1615504782:
                    if (cmd.equals("LIVE_ADD_GROUP")) {
                        c10 = 1;
                        break;
                    }
                    c10 = 65535;
                    break;
                case 1624957192:
                    if (cmd.equals("LOCAL_LIVE_LUCKY_GIFT_REWARD")) {
                        c10 = 11;
                        break;
                    }
                    c10 = 65535;
                    break;
                case 1702034254:
                    if (cmd.equals("LIVE_PK_RESULT")) {
                        c10 = 18;
                        break;
                    }
                    c10 = 65535;
                    break;
                case 1764309059:
                    if (cmd.equals("LIVE_BROADCAST_THANK_HELLO_GIFT")) {
                        c10 = 4;
                        break;
                    }
                    c10 = 65535;
                    break;
                case 1778386788:
                    if (cmd.equals("LIVE_BEGIN_PK")) {
                        c10 = 17;
                        break;
                    }
                    c10 = 65535;
                    break;
                case 1882469245:
                    if (cmd.equals("LIVE_MEMBER_USER")) {
                        c10 = 22;
                        break;
                    }
                    c10 = 65535;
                    break;
                case 1895529258:
                    if (cmd.equals("LIVE_TAKE_SEAT")) {
                        c10 = 7;
                        break;
                    }
                    c10 = 65535;
                    break;
                default:
                    c10 = 65535;
                    break;
            }
            switch (c10) {
                case 0:
                case 1:
                case 2:
                case 3:
                case 4:
                case 5:
                case 6:
                case 7:
                    CharSequence charSequence2 = charSequence;
                    spannableStringBuilder2.append(m(liveMessageModel, autoChatViewHolder.chatContent));
                    if (TextUtils.isEmpty(data.getMvpUrl())) {
                        i10 = 0;
                    } else {
                        spannableStringBuilder2.append(o(liveMessageModel, autoChatViewHolder.chatContent));
                        i10 = 1;
                    }
                    if (z10) {
                        spannableStringBuilder2.append(q());
                        i10++;
                    }
                    if (z11 && !liveMessageModel.getCmd().equals("LIVE_BROADCAST_THANK_HELLO_GIFT")) {
                        spannableStringBuilder2.append(G(data.getUserVipMsg().getVipLevel()));
                        i10++;
                    }
                    if (z13) {
                        spannableStringBuilder2.append(A());
                        i10++;
                    }
                    int i13 = i10;
                    if (!liveMessageModel.getCmd().equals("LIVE_BROADCAST_THANK_HELLO_GIFT")) {
                        spannableStringBuilder2.append(w(levelId, z10));
                    }
                    spannableStringBuilder2.append(D(z10 ? 40 : 10));
                    if (i13 >= 3) {
                        spannableStringBuilder2.append(IOUtils.LINE_SEPARATOR_WINDOWS);
                    }
                    spannableStringBuilder2.append(C(liveMessageModel, data.getDisplayFromNickName(), data.getFromUserNickName(), data.getFromUserId(), true, z14 ? this.f18122l : this.f18121k));
                    if ("LOCAL_VOICE_ROOM_WELCOME".equals(liveMessageModel.getCmd()) || "LIVE_TOBE_MEMBER_USER".equals(liveMessageModel.getCmd()) || "LIVE_TAKE_SEAT".equals(liveMessageModel.getCmd())) {
                        spannableStringBuilder2.append(IOUtils.LINE_SEPARATOR_WINDOWS);
                    }
                    spannableStringBuilder2.append(D(20));
                    spannableStringBuilder2.append(s(liveMessageModel, charSequence2, i12));
                    R(spannableStringBuilder2, false, liveMessageModel, autoChatViewHolder, i9, i12);
                    M(autoChatViewHolder.chatContent, spannableStringBuilder2, liveMessageModel);
                    return;
                case '\b':
                    GiftLiveMessage giftLiveMessage = (GiftLiveMessage) liveMessageModel.getData();
                    spannableStringBuilder2.append(m(liveMessageModel, autoChatViewHolder.chatContent));
                    if (TextUtils.isEmpty(data.getMvpUrl())) {
                        i11 = 0;
                    } else {
                        spannableStringBuilder2.append(o(liveMessageModel, autoChatViewHolder.chatContent));
                        i11 = 1;
                    }
                    if (z10) {
                        i11++;
                        spannableStringBuilder2.append(q());
                    }
                    if (z11) {
                        i11++;
                        spannableStringBuilder2.append(G(liveMessageModel.getData().getUserVipMsg().getVipLevel()));
                    }
                    if (z13) {
                        spannableStringBuilder2.append(A());
                        i11++;
                    }
                    spannableStringBuilder2.append(w(levelId, z10));
                    spannableStringBuilder2.append(D(z10 ? 40 : 10));
                    if (i11 >= 3) {
                        spannableStringBuilder2.append(IOUtils.LINE_SEPARATOR_WINDOWS);
                    }
                    if (giftLiveMessage.isHandyGiftMessage()) {
                        spannableStringBuilder2.append(charSequence);
                        spannableStringBuilder = spannableStringBuilder2;
                    } else {
                        spannableStringBuilder = spannableStringBuilder2;
                        spannableStringBuilder.append(C(liveMessageModel, data.getDisplayFromNickName(), liveMessageModel.getData().getFromUserNickName(), data.getFromUserId(), true, E().getColor(R.color.live_im_gift_giving_user_name)));
                        spannableStringBuilder.append(D(20));
                        spannableStringBuilder.append(s(liveMessageModel, charSequence, E().getColor(R.color.live_im_gift_giving)));
                        spannableStringBuilder.append(t(autoChatViewHolder.chatContent, (GiftLiveMessage) data));
                    }
                    M(autoChatViewHolder.chatContent, spannableStringBuilder, liveMessageModel);
                    return;
                case '\t':
                case '\n':
                case 11:
                    spannableStringBuilder2.append(charSequence);
                    M(autoChatViewHolder.chatContent, spannableStringBuilder2, liveMessageModel);
                    return;
                case '\f':
                    Q(autoChatViewHolder, liveMessageModel, charSequence, i12, spannableStringBuilder2);
                    return;
                default:
                    autoChatViewHolder.chatContent.setText(charSequence);
                    autoChatViewHolder.chatContent.setTextColor(i12);
                    return;
            }
        }
        O(autoChatViewHolder, liveMessageModel, data, charSequence);
    }

    public void l() {
        this.f18116f.clear();
        this.f18114d.clear();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    @NonNull
    public BaseViewHolder onCreateViewHolder(@NonNull ViewGroup viewGroup, int i9) {
        switch (i9) {
            case 1:
                BaseViewHolder baseViewHolder = new BaseViewHolder(LayoutInflater.from(this.f18115e).inflate(R.layout.layout_broadcaster_share_my_room, viewGroup, false));
                if (this.f18111a.getCurrentLiveRoom().isPrivateLiveRoom()) {
                    ((TextView) baseViewHolder.getView(R.id.text_view)).setText(R.string.user_guide_invite_friend);
                }
                return baseViewHolder;
            case 2:
                BaseViewHolder baseViewHolder2 = new BaseViewHolder(LayoutInflater.from(this.f18115e).inflate(R.layout.layout_broadcaster_share_my_room, viewGroup, false));
                ((ImageView) baseViewHolder2.itemView.findViewById(R.id.avatar)).setVisibility(0);
                return baseViewHolder2;
            case 3:
                return new AutoChatViewHolder(LayoutInflater.from(this.f18115e).inflate(R.layout.adapter_live_chat_vvip, viewGroup, false));
            case 4:
                return new BaseViewHolder(LayoutInflater.from(this.f18115e).inflate(R.layout.layout_broadcaster_thank_send_hello_gift, viewGroup, false));
            case 5:
                return new LuckyGiftTipsHolder(LayoutInflater.from(this.f18115e).inflate(R.layout.list_item_lucky_gift_chat_tips, viewGroup, false), this.f18111a);
            case 6:
                return new VoiceRoomJoinHolder(LayoutInflater.from(this.f18115e).inflate(R.layout.layout_voice_room_join_room, viewGroup, false), this.f18111a);
            case 7:
                return new VoiceRoomTakeSeatHolder(LayoutInflater.from(this.f18115e).inflate(R.layout.layout_voice_room_take_seat, viewGroup, false), this.f18111a);
            case 8:
                return new VoiceRoomInviteHolder(LayoutInflater.from(this.f18115e).inflate(R.layout.layout_voice_room_chat_invite, viewGroup, false), this.f18111a);
            default:
                return new AutoChatViewHolder(LayoutInflater.from(this.f18115e).inflate(R.layout.adapter_live_chat, viewGroup, false));
        }
    }

    /* JADX WARN: Type inference failed for: r10v7, types: [com.guochao.faceshow.aaspring.modulars.live.model.BaseLiveMessage] */
    /* JADX WARN: Type inference failed for: r5v19, types: [com.guochao.faceshow.aaspring.modulars.live.model.BaseLiveMessage] */
    /* JADX WARN: Type inference failed for: r5v5, types: [com.guochao.faceshow.aaspring.modulars.live.model.BaseLiveMessage] */
    /* JADX WARN: Type inference failed for: r5v9, types: [com.guochao.faceshow.aaspring.modulars.live.model.BaseLiveMessage] */
    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public void onBindViewHolder(@NonNull BaseViewHolder baseViewHolder, int i9) {
        int itemViewType = baseViewHolder.getItemViewType();
        if (itemViewType != 0) {
            if (itemViewType == 1) {
                baseViewHolder.itemView.setOnClickListener(new b());
                baseViewHolder.itemView.findViewById(R.id.content_area).setOnClickListener(new c());
                return;
            } else if (itemViewType == 2) {
                TextView textView = (TextView) baseViewHolder.getView(R.id.text_view);
                ImageView imageView = (ImageView) baseViewHolder.getView(R.id.icon_left);
                textView.setLayoutParams(new LinearLayout.LayoutParams(-2, -2));
                ((ImageView) baseViewHolder.getView(R.id.icon)).setVisibility(8);
                imageView.setVisibility(0);
                ImageView imageView2 = (ImageView) baseViewHolder.getView(R.id.avatar);
                d9.g gVar = this.f18112b;
                if (gVar != null && gVar.getCurrentLiveRoom() != null && this.f18112b.getCurrentLiveRoom().isFocused()) {
                    this.f18114d.get(i9).getData().setIsAttention("1");
                } else {
                    this.f18114d.get(i9).getData().setIsAttention("0");
                }
                if ("1".equalsIgnoreCase(this.f18114d.get(i9).getData().getIsAttention())) {
                    imageView.setImageResource(R.drawable.follow_im_dui);
                    textView.setText(R.string.focused);
                    if (imageView2 != null) {
                        imageView2.setVisibility(8);
                    }
                } else {
                    textView.setText(R.string.user_guide_focus_immedi);
                    imageView.setImageResource(R.drawable.follow_im_jia);
                    if (imageView2 != null) {
                        imageView2.setVisibility(0);
                    }
                }
                hc.a.h(imageView2, this.f18112b.getCurrentLiveRoom().getAvatarUrl(), R.mipmap.default_head);
                baseViewHolder.itemView.setOnClickListener(new d(baseViewHolder, imageView2, i9));
                return;
            } else if (itemViewType != 3) {
                if (itemViewType != 4) {
                    return;
                }
                TextView textView2 = (TextView) baseViewHolder.getView(R.id.text);
                ImageView imageView3 = (ImageView) baseViewHolder.getView(R.id.icon_left);
                ?? data = this.f18114d.get(i9).getData();
                if (data.isThankHelloGift()) {
                    imageView3.setVisibility(0);
                    textView2.setText(this.f18115e.getString(R.string.live_hello_gift_thank));
                } else {
                    imageView3.setVisibility(8);
                    textView2.setText(this.f18115e.getString(R.string.live_hello_gift_un_thank));
                }
                baseViewHolder.itemView.setOnClickListener(new e(data, imageView3, textView2));
                return;
            }
        }
        i((AutoChatViewHolder) baseViewHolder, i9);
        baseViewHolder.itemView.setOnClickListener(new a());
    }
}
