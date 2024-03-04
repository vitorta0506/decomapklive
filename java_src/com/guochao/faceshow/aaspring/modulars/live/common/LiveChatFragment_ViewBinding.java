package com.guochao.faceshow.aaspring.modulars.live.common;

import android.view.View;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.Space;
import android.widget.TextView;
import androidx.annotation.UiThread;
import com.guochao.faceshow.R;
import com.guochao.faceshow.aaspring.views.NoBottomEdgeRecyclerView;
import com.guochao.faceshow.views.SvgaImageViewV2;
/* loaded from: classes3.dex */
public class LiveChatFragment_ViewBinding extends BaseLiveInfoFragment_ViewBinding {

    /* renamed from: d  reason: collision with root package name */
    private LiveChatFragment f18664d;

    /* renamed from: e  reason: collision with root package name */
    private View f18665e;

    /* renamed from: f  reason: collision with root package name */
    private View f18666f;

    /* renamed from: g  reason: collision with root package name */
    private View f18667g;

    /* renamed from: h  reason: collision with root package name */
    private View f18668h;

    /* renamed from: i  reason: collision with root package name */
    private View f18669i;

    /* renamed from: j  reason: collision with root package name */
    private View f18670j;

    /* renamed from: k  reason: collision with root package name */
    private View f18671k;

    /* renamed from: l  reason: collision with root package name */
    private View f18672l;

    /* loaded from: classes3.dex */
    class a extends butterknife.internal.b {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ LiveChatFragment f18673a;

        a(LiveChatFragment liveChatFragment) {
            this.f18673a = liveChatFragment;
        }

        @Override // butterknife.internal.b
        public void doClick(View view) {
            this.f18673a.showGift(view);
        }
    }

    /* loaded from: classes3.dex */
    class b extends butterknife.internal.b {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ LiveChatFragment f18675a;

        b(LiveChatFragment liveChatFragment) {
            this.f18675a = liveChatFragment;
        }

        @Override // butterknife.internal.b
        public void doClick(View view) {
            this.f18675a.showGift(view);
        }
    }

    /* loaded from: classes3.dex */
    class c extends butterknife.internal.b {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ LiveChatFragment f18677a;

        c(LiveChatFragment liveChatFragment) {
            this.f18677a = liveChatFragment;
        }

        @Override // butterknife.internal.b
        public void doClick(View view) {
            this.f18677a.onViewClicked(view);
        }
    }

    /* loaded from: classes3.dex */
    class d extends butterknife.internal.b {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ LiveChatFragment f18679a;

        d(LiveChatFragment liveChatFragment) {
            this.f18679a = liveChatFragment;
        }

        @Override // butterknife.internal.b
        public void doClick(View view) {
            this.f18679a.onNewMessageClick(view);
        }
    }

    /* loaded from: classes3.dex */
    class e extends butterknife.internal.b {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ LiveChatFragment f18681a;

        e(LiveChatFragment liveChatFragment) {
            this.f18681a = liveChatFragment;
        }

        @Override // butterknife.internal.b
        public void doClick(View view) {
            this.f18681a.onViewClick(view);
        }
    }

    /* loaded from: classes3.dex */
    class f extends butterknife.internal.b {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ LiveChatFragment f18683a;

        f(LiveChatFragment liveChatFragment) {
            this.f18683a = liveChatFragment;
        }

        @Override // butterknife.internal.b
        public void doClick(View view) {
            this.f18683a.startCalling(view);
        }
    }

    /* loaded from: classes3.dex */
    class g extends butterknife.internal.b {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ LiveChatFragment f18685a;

        g(LiveChatFragment liveChatFragment) {
            this.f18685a = liveChatFragment;
        }

        @Override // butterknife.internal.b
        public void doClick(View view) {
            this.f18685a.startIMChat(view);
        }
    }

    /* loaded from: classes3.dex */
    class h extends butterknife.internal.b {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ LiveChatFragment f18687a;

        h(LiveChatFragment liveChatFragment) {
            this.f18687a = liveChatFragment;
        }

        @Override // butterknife.internal.b
        public void doClick(View view) {
            this.f18687a.showMore(view);
        }
    }

    @UiThread
    public LiveChatFragment_ViewBinding(LiveChatFragment liveChatFragment, View view) {
        super(liveChatFragment, view);
        this.f18664d = liveChatFragment;
        liveChatFragment.mSpace = (Space) butterknife.internal.c.b(view, R.id.space, "field 'mSpace'", Space.class);
        liveChatFragment.mLiveBtns = butterknife.internal.c.c(view, R.id.live_btns, "field 'mLiveBtns'");
        liveChatFragment.mRecyclerView = (NoBottomEdgeRecyclerView) butterknife.internal.c.d(view, R.id.recycler_view, "field 'mRecyclerView'", NoBottomEdgeRecyclerView.class);
        View c10 = butterknife.internal.c.c(view, R.id.live_gift_btn, "method 'showGift'");
        liveChatFragment.mGiftSVGAImageView = (SvgaImageViewV2) butterknife.internal.c.a(c10, R.id.live_gift_btn, "field 'mGiftSVGAImageView'", SvgaImageViewV2.class);
        this.f18665e = c10;
        c10.setOnClickListener(new a(liveChatFragment));
        View c11 = butterknife.internal.c.c(view, R.id.live_normal_btn, "field 'mGiftImageView' and method 'showGift'");
        liveChatFragment.mGiftImageView = (ImageView) butterknife.internal.c.a(c11, R.id.live_normal_btn, "field 'mGiftImageView'", ImageView.class);
        this.f18666f = c11;
        c11.setOnClickListener(new b(liveChatFragment));
        View c12 = butterknife.internal.c.c(view, R.id.live_chat_btn, "field 'liveChatBtn' and method 'onViewClicked'");
        liveChatFragment.liveChatBtn = (ImageView) butterknife.internal.c.a(c12, R.id.live_chat_btn, "field 'liveChatBtn'", ImageView.class);
        this.f18667g = c12;
        c12.setOnClickListener(new c(liveChatFragment));
        View c13 = butterknife.internal.c.c(view, R.id.fl_new_message, "field 'newMessage' and method 'onNewMessageClick'");
        liveChatFragment.newMessage = (FrameLayout) butterknife.internal.c.a(c13, R.id.fl_new_message, "field 'newMessage'", FrameLayout.class);
        this.f18668h = c13;
        c13.setOnClickListener(new d(liveChatFragment));
        liveChatFragment.llNewMsg = (LinearLayout) butterknife.internal.c.d(view, R.id.ll_new_msg, "field 'llNewMsg'", LinearLayout.class);
        liveChatFragment.pkLayoutLive = view.findViewById(R.id.pk_layout_live);
        View c14 = butterknife.internal.c.c(view, R.id.icon_multi_game, "field 'multiGame' and method 'onViewClick'");
        liveChatFragment.multiGame = c14;
        this.f18669i = c14;
        c14.setOnClickListener(new e(liveChatFragment));
        View findViewById = view.findViewById(R.id.calling_btn);
        liveChatFragment.callingBtn = (SvgaImageViewV2) butterknife.internal.c.a(findViewById, R.id.calling_btn, "field 'callingBtn'", SvgaImageViewV2.class);
        if (findViewById != null) {
            this.f18670j = findViewById;
            findViewById.setOnClickListener(new f(liveChatFragment));
        }
        View c15 = butterknife.internal.c.c(view, R.id.live_im_btn, "field 'liveImBtn' and method 'startIMChat'");
        liveChatFragment.liveImBtn = c15;
        this.f18671k = c15;
        c15.setOnClickListener(new g(liveChatFragment));
        liveChatFragment.floatImUnread = butterknife.internal.c.c(view, R.id.im_dot, "field 'floatImUnread'");
        View c16 = butterknife.internal.c.c(view, R.id.live_more_btn, "field 'mLiveMore'");
        liveChatFragment.mLiveMore = c16;
        this.f18672l = c16;
        c16.setOnClickListener(new h(liveChatFragment));
        liveChatFragment.helloUnReadNum = (TextView) butterknife.internal.c.b(view, R.id.hello_unread_num, "field 'helloUnReadNum'", TextView.class);
    }

    @Override // com.guochao.faceshow.aaspring.modulars.live.common.BaseLiveInfoFragment_ViewBinding, butterknife.Unbinder
    public void unbind() {
        LiveChatFragment liveChatFragment = this.f18664d;
        if (liveChatFragment != null) {
            this.f18664d = null;
            liveChatFragment.mSpace = null;
            liveChatFragment.mLiveBtns = null;
            liveChatFragment.mRecyclerView = null;
            liveChatFragment.mGiftSVGAImageView = null;
            liveChatFragment.mGiftImageView = null;
            liveChatFragment.liveChatBtn = null;
            liveChatFragment.newMessage = null;
            liveChatFragment.llNewMsg = null;
            liveChatFragment.pkLayoutLive = null;
            liveChatFragment.multiGame = null;
            liveChatFragment.callingBtn = null;
            liveChatFragment.liveImBtn = null;
            liveChatFragment.floatImUnread = null;
            liveChatFragment.mLiveMore = null;
            liveChatFragment.helloUnReadNum = null;
            this.f18665e.setOnClickListener(null);
            this.f18665e = null;
            this.f18666f.setOnClickListener(null);
            this.f18666f = null;
            this.f18667g.setOnClickListener(null);
            this.f18667g = null;
            this.f18668h.setOnClickListener(null);
            this.f18668h = null;
            this.f18669i.setOnClickListener(null);
            this.f18669i = null;
            View view = this.f18670j;
            if (view != null) {
                view.setOnClickListener(null);
                this.f18670j = null;
            }
            this.f18671k.setOnClickListener(null);
            this.f18671k = null;
            this.f18672l.setOnClickListener(null);
            this.f18672l = null;
            super.unbind();
            return;
        }
        throw new IllegalStateException("Bindings already cleared.");
    }
}
