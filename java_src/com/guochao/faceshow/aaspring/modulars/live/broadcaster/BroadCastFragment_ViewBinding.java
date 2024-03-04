package com.guochao.faceshow.aaspring.modulars.live.broadcaster;

import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import androidx.annotation.UiThread;
import com.guochao.faceshow.R;
import com.guochao.faceshow.aaspring.modulars.live.common.BaseLiveRoomFragment_ViewBinding;
import com.guochao.faceshow.aaspring.views.LiveBroadCastScrollDownView;
/* loaded from: classes3.dex */
public class BroadCastFragment_ViewBinding extends BaseLiveRoomFragment_ViewBinding {

    /* renamed from: g  reason: collision with root package name */
    private BroadCastFragment f18366g;

    /* renamed from: h  reason: collision with root package name */
    private View f18367h;

    /* renamed from: i  reason: collision with root package name */
    private View f18368i;

    /* renamed from: j  reason: collision with root package name */
    private View f18369j;

    /* renamed from: k  reason: collision with root package name */
    private View f18370k;

    /* loaded from: classes3.dex */
    class a extends butterknife.internal.b {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ BroadCastFragment f18371a;

        a(BroadCastFragment broadCastFragment) {
            this.f18371a = broadCastFragment;
        }

        @Override // butterknife.internal.b
        public void doClick(View view) {
            this.f18371a.onClick(view);
        }
    }

    /* loaded from: classes3.dex */
    class b extends butterknife.internal.b {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ BroadCastFragment f18373a;

        b(BroadCastFragment broadCastFragment) {
            this.f18373a = broadCastFragment;
        }

        @Override // butterknife.internal.b
        public void doClick(View view) {
            this.f18373a.shareRoom(view);
        }
    }

    /* loaded from: classes3.dex */
    class c extends butterknife.internal.b {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ BroadCastFragment f18375a;

        c(BroadCastFragment broadCastFragment) {
            this.f18375a = broadCastFragment;
        }

        @Override // butterknife.internal.b
        public void doClick(View view) {
            this.f18375a.onClick(view);
        }
    }

    /* loaded from: classes3.dex */
    class d extends butterknife.internal.b {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ BroadCastFragment f18377a;

        d(BroadCastFragment broadCastFragment) {
            this.f18377a = broadCastFragment;
        }

        @Override // butterknife.internal.b
        public void doClick(View view) {
            this.f18377a.onClick(view);
        }
    }

    @UiThread
    public BroadCastFragment_ViewBinding(BroadCastFragment broadCastFragment, View view) {
        super(broadCastFragment, view);
        this.f18366g = broadCastFragment;
        broadCastFragment.mCountDownTips = (TextView) butterknife.internal.c.d(view, R.id.count_down_tips, "field 'mCountDownTips'", TextView.class);
        broadCastFragment.mLaunchLiveView = (ViewGroup) butterknife.internal.c.d(view, R.id.launch_live, "field 'mLaunchLiveView'", ViewGroup.class);
        broadCastFragment.mLiveBroadCastScrollDownView = (LiveBroadCastScrollDownView) butterknife.internal.c.d(view, R.id.main_bg, "field 'mLiveBroadCastScrollDownView'", LiveBroadCastScrollDownView.class);
        broadCastFragment.mLiveInfoViewContainer = butterknife.internal.c.c(view, R.id.live_info_area, "field 'mLiveInfoViewContainer'");
        broadCastFragment.touchView = butterknife.internal.c.c(view, R.id.touch_view, "field 'touchView'");
        View c10 = butterknife.internal.c.c(view, R.id.btn_invite, "field 'btnInvite' and method 'onClick'");
        broadCastFragment.btnInvite = c10;
        this.f18367h = c10;
        c10.setOnClickListener(new a(broadCastFragment));
        broadCastFragment.mTextViewLinkMicTip = (TextView) butterknife.internal.c.d(view, R.id.link_mic_text, "field 'mTextViewLinkMicTip'", TextView.class);
        broadCastFragment.closeLL = butterknife.internal.c.c(view, R.id.closeLL, "field 'closeLL'");
        View c11 = butterknife.internal.c.c(view, R.id.share_room, "field 'mLiveShareBtn'");
        broadCastFragment.mLiveShareBtn = c11;
        this.f18368i = c11;
        c11.setOnClickListener(new b(broadCastFragment));
        broadCastFragment.dividerView = butterknife.internal.c.c(view, R.id.dividerView, "field 'dividerView'");
        View c12 = butterknife.internal.c.c(view, R.id.launch_live_beauty_filter_btn, "method 'onClick'");
        this.f18369j = c12;
        c12.setOnClickListener(new c(broadCastFragment));
        View c13 = butterknife.internal.c.c(view, R.id.close_live, "method 'onClick'");
        this.f18370k = c13;
        c13.setOnClickListener(new d(broadCastFragment));
    }

    @Override // com.guochao.faceshow.aaspring.modulars.live.common.BaseLiveRoomFragment_ViewBinding, butterknife.Unbinder
    public void unbind() {
        BroadCastFragment broadCastFragment = this.f18366g;
        if (broadCastFragment != null) {
            this.f18366g = null;
            broadCastFragment.mCountDownTips = null;
            broadCastFragment.mLaunchLiveView = null;
            broadCastFragment.mLiveBroadCastScrollDownView = null;
            broadCastFragment.mLiveInfoViewContainer = null;
            broadCastFragment.touchView = null;
            broadCastFragment.btnInvite = null;
            broadCastFragment.mTextViewLinkMicTip = null;
            broadCastFragment.closeLL = null;
            broadCastFragment.mLiveShareBtn = null;
            broadCastFragment.dividerView = null;
            this.f18367h.setOnClickListener(null);
            this.f18367h = null;
            this.f18368i.setOnClickListener(null);
            this.f18368i = null;
            this.f18369j.setOnClickListener(null);
            this.f18369j = null;
            this.f18370k.setOnClickListener(null);
            this.f18370k = null;
            super.unbind();
            return;
        }
        throw new IllegalStateException("Bindings already cleared.");
    }
}
