package com.guochao.faceshow.aaspring.modulars.chat.activity;

import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.annotation.UiThread;
import androidx.appcompat.widget.Toolbar;
import androidx.recyclerview.widget.RecyclerView;
import butterknife.internal.c;
import com.guochao.faceshow.R;
import com.guochao.faceshow.views.SvgaImageViewV2;
/* loaded from: classes3.dex */
public class ChatActivity_ViewBinding extends BaseChatActivity_ViewBinding {

    /* renamed from: d  reason: collision with root package name */
    private ChatActivity f16712d;

    /* renamed from: e  reason: collision with root package name */
    private View f16713e;

    /* renamed from: f  reason: collision with root package name */
    private View f16714f;

    /* loaded from: classes3.dex */
    class a extends butterknife.internal.b {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ ChatActivity f16715a;

        a(ChatActivity chatActivity) {
            this.f16715a = chatActivity;
        }

        @Override // butterknife.internal.b
        public void doClick(View view) {
            this.f16715a.cancel(view);
        }
    }

    /* loaded from: classes3.dex */
    class b extends butterknife.internal.b {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ ChatActivity f16717a;

        b(ChatActivity chatActivity) {
            this.f16717a = chatActivity;
        }

        @Override // butterknife.internal.b
        public void doClick(View view) {
            this.f16717a.follow(view);
        }
    }

    @UiThread
    public ChatActivity_ViewBinding(ChatActivity chatActivity, View view) {
        super(chatActivity, view);
        this.f16712d = chatActivity;
        chatActivity.merge = (FrameLayout) c.d(view, R.id.content, "field 'merge'", FrameLayout.class);
        chatActivity.mRecyclerView = (RecyclerView) c.d(view, R.id.recycler_view, "field 'mRecyclerView'", RecyclerView.class);
        View c10 = c.c(view, R.id.cancel, "field 'mCancel' and method 'cancel'");
        chatActivity.mCancel = c10;
        this.f16713e = c10;
        c10.setOnClickListener(new a(chatActivity));
        View c11 = c.c(view, R.id.follow, "field 'mFollow' and method 'follow'");
        chatActivity.mFollow = c11;
        this.f16714f = c11;
        c11.setOnClickListener(new b(chatActivity));
        chatActivity.animViewLay = (ViewGroup) c.d(view, R.id.anim_view_lay, "field 'animViewLay'", ViewGroup.class);
        chatActivity.mFloatingView = (FrameLayout) c.d(view, R.id.floating, "field 'mFloatingView'", FrameLayout.class);
        chatActivity.ivBack = (ImageView) c.d(view, R.id.iv_back, "field 'ivBack'", ImageView.class);
        chatActivity.floatTitle = (TextView) c.d(view, R.id.float_title, "field 'floatTitle'", TextView.class);
        chatActivity.ivFocus = (ImageView) c.d(view, R.id.iv_focus, "field 'ivFocus'", ImageView.class);
        chatActivity.focusSVGA = (SvgaImageViewV2) c.b(view, R.id.focusSVGA, "field 'focusSVGA'", SvgaImageViewV2.class);
        chatActivity.ivMore = (ImageView) c.d(view, R.id.iv_more, "field 'ivMore'", ImageView.class);
        chatActivity.toolbar = (Toolbar) c.d(view, R.id.toolbar, "field 'toolbar'", Toolbar.class);
        chatActivity.mMainContentView = c.c(view, R.id.main_content, "field 'mMainContentView'");
    }

    @Override // com.guochao.faceshow.aaspring.modulars.chat.activity.BaseChatActivity_ViewBinding, com.guochao.faceshow.aaspring.base.activity.BaseActivity_ViewBinding, butterknife.Unbinder
    public void unbind() {
        ChatActivity chatActivity = this.f16712d;
        if (chatActivity != null) {
            this.f16712d = null;
            chatActivity.merge = null;
            chatActivity.mRecyclerView = null;
            chatActivity.mCancel = null;
            chatActivity.mFollow = null;
            chatActivity.animViewLay = null;
            chatActivity.mFloatingView = null;
            chatActivity.ivBack = null;
            chatActivity.floatTitle = null;
            chatActivity.ivFocus = null;
            chatActivity.focusSVGA = null;
            chatActivity.ivMore = null;
            chatActivity.toolbar = null;
            chatActivity.mMainContentView = null;
            this.f16713e.setOnClickListener(null);
            this.f16713e = null;
            this.f16714f.setOnClickListener(null);
            this.f16714f = null;
            super.unbind();
            return;
        }
        throw new IllegalStateException("Bindings already cleared.");
    }
}
