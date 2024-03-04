package com.guochao.faceshow.aaspring.modulars.live.common;

import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.UiThread;
import com.guochao.faceshow.R;
import com.guochao.faceshow.aaspring.views.HeadPortraitView;
import com.guochao.faceshow.aaspring.views.InnerRecyclerView;
/* loaded from: classes3.dex */
public class LiveUserInfoFragment_ViewBinding extends BaseLiveInfoFragment_ViewBinding {

    /* renamed from: d  reason: collision with root package name */
    private LiveUserInfoFragment f18859d;

    /* renamed from: e  reason: collision with root package name */
    private View f18860e;

    /* renamed from: f  reason: collision with root package name */
    private View f18861f;

    /* renamed from: g  reason: collision with root package name */
    private View f18862g;

    /* loaded from: classes3.dex */
    class a extends butterknife.internal.b {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ LiveUserInfoFragment f18863a;

        a(LiveUserInfoFragment liveUserInfoFragment) {
            this.f18863a = liveUserInfoFragment;
        }

        @Override // butterknife.internal.b
        public void doClick(View view) {
            this.f18863a.onViewClicked(view);
        }
    }

    /* loaded from: classes3.dex */
    class b extends butterknife.internal.b {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ LiveUserInfoFragment f18865a;

        b(LiveUserInfoFragment liveUserInfoFragment) {
            this.f18865a = liveUserInfoFragment;
        }

        @Override // butterknife.internal.b
        public void doClick(View view) {
            this.f18865a.onViewClicked(view);
        }
    }

    /* loaded from: classes3.dex */
    class c extends butterknife.internal.b {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ LiveUserInfoFragment f18867a;

        c(LiveUserInfoFragment liveUserInfoFragment) {
            this.f18867a = liveUserInfoFragment;
        }

        @Override // butterknife.internal.b
        public void doClick(View view) {
            this.f18867a.onViewClicked(view);
        }
    }

    @UiThread
    public LiveUserInfoFragment_ViewBinding(LiveUserInfoFragment liveUserInfoFragment, View view) {
        super(liveUserInfoFragment, view);
        this.f18859d = liveUserInfoFragment;
        liveUserInfoFragment.llLocationAndName = (LinearLayout) butterknife.internal.c.b(view, R.id.ll_location_and_name, "field 'llLocationAndName'", LinearLayout.class);
        liveUserInfoFragment.backToLast = view.findViewById(R.id.back_to_last);
        liveUserInfoFragment.littleAvatar = (ImageView) butterknife.internal.c.b(view, R.id.little_avatar, "field 'littleAvatar'", ImageView.class);
        liveUserInfoFragment.tvLiveName = (TextView) butterknife.internal.c.d(view, R.id.tv_live_name, "field 'tvLiveName'", TextView.class);
        liveUserInfoFragment.tvLiveLocation = (TextView) butterknife.internal.c.d(view, R.id.tv_live_location, "field 'tvLiveLocation'", TextView.class);
        liveUserInfoFragment.llLocation = (LinearLayout) butterknife.internal.c.d(view, R.id.ll_location, "field 'llLocation'", LinearLayout.class);
        liveUserInfoFragment.mAvatarView = (HeadPortraitView) butterknife.internal.c.b(view, R.id.avatar_view, "field 'mAvatarView'", HeadPortraitView.class);
        liveUserInfoFragment.mRecyclerViewUsers = (InnerRecyclerView) butterknife.internal.c.d(view, R.id.user_info_recycler_view, "field 'mRecyclerViewUsers'", InnerRecyclerView.class);
        liveUserInfoFragment.masterName = (TextView) butterknife.internal.c.d(view, R.id.master_name, "field 'masterName'", TextView.class);
        liveUserInfoFragment.onlineCountText = (TextView) butterknife.internal.c.b(view, R.id.online_count_text, "field 'onlineCountText'", TextView.class);
        View c10 = butterknife.internal.c.c(view, R.id.focus_btn, "field 'focusBtn'");
        liveUserInfoFragment.focusBtn = (ImageView) butterknife.internal.c.a(c10, R.id.focus_btn, "field 'focusBtn'", ImageView.class);
        this.f18860e = c10;
        c10.setOnClickListener(new a(liveUserInfoFragment));
        liveUserInfoFragment.focusSVGA = butterknife.internal.c.c(view, R.id.focusSVGA, "field 'focusSVGA'");
        liveUserInfoFragment.liveFbCount = (TextView) butterknife.internal.c.b(view, R.id.live_fb_count, "field 'liveFbCount'", TextView.class);
        liveUserInfoFragment.liveLikeCount = (TextView) butterknife.internal.c.b(view, R.id.live_like_count, "field 'liveLikeCount'", TextView.class);
        liveUserInfoFragment.nameLy = (LinearLayout) butterknife.internal.c.b(view, R.id.name_ly, "field 'nameLy'", LinearLayout.class);
        View findViewById = view.findViewById(R.id.ll_fb);
        liveUserInfoFragment.llFb = (LinearLayout) butterknife.internal.c.a(findViewById, R.id.ll_fb, "field 'llFb'", LinearLayout.class);
        if (findViewById != null) {
            this.f18861f = findViewById;
            findViewById.setOnClickListener(new b(liveUserInfoFragment));
        }
        liveUserInfoFragment.llLikeCount = (LinearLayout) butterknife.internal.c.b(view, R.id.ll_like_count, "field 'llLikeCount'", LinearLayout.class);
        liveUserInfoFragment.ivMotion = (ImageView) butterknife.internal.c.b(view, R.id.iv_motion, "field 'ivMotion'", ImageView.class);
        liveUserInfoFragment.mLiveFCoinAndLike = view.findViewById(R.id.live_fb_and_like_ly);
        liveUserInfoFragment.rankListMulti = (ViewGroup) butterknife.internal.c.b(view, R.id.rank_multi, "field 'rankListMulti'", ViewGroup.class);
        liveUserInfoFragment.rankListSingle = (ViewGroup) butterknife.internal.c.b(view, R.id.rank_single, "field 'rankListSingle'", ViewGroup.class);
        View findViewById2 = view.findViewById(R.id.top_info_click);
        if (findViewById2 != null) {
            this.f18862g = findViewById2;
            findViewById2.setOnClickListener(new c(liveUserInfoFragment));
        }
    }

    @Override // com.guochao.faceshow.aaspring.modulars.live.common.BaseLiveInfoFragment_ViewBinding, butterknife.Unbinder
    public void unbind() {
        LiveUserInfoFragment liveUserInfoFragment = this.f18859d;
        if (liveUserInfoFragment != null) {
            this.f18859d = null;
            liveUserInfoFragment.llLocationAndName = null;
            liveUserInfoFragment.backToLast = null;
            liveUserInfoFragment.littleAvatar = null;
            liveUserInfoFragment.tvLiveName = null;
            liveUserInfoFragment.tvLiveLocation = null;
            liveUserInfoFragment.llLocation = null;
            liveUserInfoFragment.mAvatarView = null;
            liveUserInfoFragment.mRecyclerViewUsers = null;
            liveUserInfoFragment.masterName = null;
            liveUserInfoFragment.onlineCountText = null;
            liveUserInfoFragment.focusBtn = null;
            liveUserInfoFragment.focusSVGA = null;
            liveUserInfoFragment.liveFbCount = null;
            liveUserInfoFragment.liveLikeCount = null;
            liveUserInfoFragment.nameLy = null;
            liveUserInfoFragment.llFb = null;
            liveUserInfoFragment.llLikeCount = null;
            liveUserInfoFragment.ivMotion = null;
            liveUserInfoFragment.mLiveFCoinAndLike = null;
            liveUserInfoFragment.rankListMulti = null;
            liveUserInfoFragment.rankListSingle = null;
            this.f18860e.setOnClickListener(null);
            this.f18860e = null;
            View view = this.f18861f;
            if (view != null) {
                view.setOnClickListener(null);
                this.f18861f = null;
            }
            View view2 = this.f18862g;
            if (view2 != null) {
                view2.setOnClickListener(null);
                this.f18862g = null;
            }
            super.unbind();
            return;
        }
        throw new IllegalStateException("Bindings already cleared.");
    }
}
