package com.guochao.faceshow.aaspring.modulars.date.fragment;

import android.view.View;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.CallSuper;
import androidx.annotation.UiThread;
import butterknife.Unbinder;
import com.guochao.faceshow.R;
/* loaded from: classes3.dex */
public class ChatBottomFragment_ViewBinding implements Unbinder {

    /* renamed from: b  reason: collision with root package name */
    private ChatBottomFragment f17583b;

    /* renamed from: c  reason: collision with root package name */
    private View f17584c;

    /* renamed from: d  reason: collision with root package name */
    private View f17585d;

    /* renamed from: e  reason: collision with root package name */
    private View f17586e;

    /* loaded from: classes3.dex */
    class a extends butterknife.internal.b {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ ChatBottomFragment f17587a;

        a(ChatBottomFragment chatBottomFragment) {
            this.f17587a = chatBottomFragment;
        }

        @Override // butterknife.internal.b
        public void doClick(View view) {
            this.f17587a.onViewClicked(view);
        }
    }

    /* loaded from: classes3.dex */
    class b extends butterknife.internal.b {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ ChatBottomFragment f17589a;

        b(ChatBottomFragment chatBottomFragment) {
            this.f17589a = chatBottomFragment;
        }

        @Override // butterknife.internal.b
        public void doClick(View view) {
            this.f17589a.onViewClicked(view);
        }
    }

    /* loaded from: classes3.dex */
    class c extends butterknife.internal.b {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ ChatBottomFragment f17591a;

        c(ChatBottomFragment chatBottomFragment) {
            this.f17591a = chatBottomFragment;
        }

        @Override // butterknife.internal.b
        public void doClick(View view) {
            this.f17591a.onViewClicked(view);
        }
    }

    @UiThread
    public ChatBottomFragment_ViewBinding(ChatBottomFragment chatBottomFragment, View view) {
        this.f17583b = chatBottomFragment;
        chatBottomFragment.tvVideo = (TextView) butterknife.internal.c.d(view, R.id.tv_video, "field 'tvVideo'", TextView.class);
        View c10 = butterknife.internal.c.c(view, R.id.ll_video, "field 'llVideo' and method 'onViewClicked'");
        chatBottomFragment.llVideo = (LinearLayout) butterknife.internal.c.a(c10, R.id.ll_video, "field 'llVideo'", LinearLayout.class);
        this.f17584c = c10;
        c10.setOnClickListener(new a(chatBottomFragment));
        chatBottomFragment.tvVoice = (TextView) butterknife.internal.c.d(view, R.id.tv_voice, "field 'tvVoice'", TextView.class);
        chatBottomFragment.videoPrice = (TextView) butterknife.internal.c.d(view, R.id.video_price, "field 'videoPrice'", TextView.class);
        chatBottomFragment.audioPrice = (TextView) butterknife.internal.c.d(view, R.id.audio_price, "field 'audioPrice'", TextView.class);
        View c11 = butterknife.internal.c.c(view, R.id.ll_voice, "field 'llVoice' and method 'onViewClicked'");
        chatBottomFragment.llVoice = (LinearLayout) butterknife.internal.c.a(c11, R.id.ll_voice, "field 'llVoice'", LinearLayout.class);
        this.f17585d = c11;
        c11.setOnClickListener(new b(chatBottomFragment));
        chatBottomFragment.tvClose = (TextView) butterknife.internal.c.d(view, R.id.tv_close, "field 'tvClose'", TextView.class);
        View c12 = butterknife.internal.c.c(view, R.id.ll_close, "field 'llClose' and method 'onViewClicked'");
        chatBottomFragment.llClose = (LinearLayout) butterknife.internal.c.a(c12, R.id.ll_close, "field 'llClose'", LinearLayout.class);
        this.f17586e = c12;
        c12.setOnClickListener(new c(chatBottomFragment));
        chatBottomFragment.viewLine = butterknife.internal.c.c(view, R.id.view_line, "field 'viewLine'");
    }

    @Override // butterknife.Unbinder
    @CallSuper
    public void unbind() {
        ChatBottomFragment chatBottomFragment = this.f17583b;
        if (chatBottomFragment != null) {
            this.f17583b = null;
            chatBottomFragment.tvVideo = null;
            chatBottomFragment.llVideo = null;
            chatBottomFragment.tvVoice = null;
            chatBottomFragment.videoPrice = null;
            chatBottomFragment.audioPrice = null;
            chatBottomFragment.llVoice = null;
            chatBottomFragment.tvClose = null;
            chatBottomFragment.llClose = null;
            chatBottomFragment.viewLine = null;
            this.f17584c.setOnClickListener(null);
            this.f17584c = null;
            this.f17585d.setOnClickListener(null);
            this.f17585d = null;
            this.f17586e.setOnClickListener(null);
            this.f17586e = null;
            return;
        }
        throw new IllegalStateException("Bindings already cleared.");
    }
}
