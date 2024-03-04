package com.guochao.faceshow.aaspring.modulars.live.watcher;

import android.view.View;
import android.widget.TextView;
import androidx.annotation.UiThread;
import com.guochao.faceshow.R;
import com.guochao.faceshow.aaspring.modulars.live.common.BaseLiveInfoFragment_ViewBinding;
import com.guochao.faceshow.aaspring.views.HeadPortraitView;
/* loaded from: classes3.dex */
public class LiveEndWatcherFragment_ViewBinding extends BaseLiveInfoFragment_ViewBinding {

    /* renamed from: d  reason: collision with root package name */
    private LiveEndWatcherFragment f19991d;

    /* renamed from: e  reason: collision with root package name */
    private View f19992e;

    /* renamed from: f  reason: collision with root package name */
    private View f19993f;

    /* renamed from: g  reason: collision with root package name */
    private View f19994g;

    /* renamed from: h  reason: collision with root package name */
    private View f19995h;

    /* loaded from: classes3.dex */
    class a extends butterknife.internal.b {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ LiveEndWatcherFragment f19996a;

        a(LiveEndWatcherFragment liveEndWatcherFragment) {
            this.f19996a = liveEndWatcherFragment;
        }

        @Override // butterknife.internal.b
        public void doClick(View view) {
            this.f19996a.toUserHome(view);
        }
    }

    /* loaded from: classes3.dex */
    class b extends butterknife.internal.b {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ LiveEndWatcherFragment f19998a;

        b(LiveEndWatcherFragment liveEndWatcherFragment) {
            this.f19998a = liveEndWatcherFragment;
        }

        @Override // butterknife.internal.b
        public void doClick(View view) {
            this.f19998a.toUserHome(view);
        }
    }

    /* loaded from: classes3.dex */
    class c extends butterknife.internal.b {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ LiveEndWatcherFragment f20000a;

        c(LiveEndWatcherFragment liveEndWatcherFragment) {
            this.f20000a = liveEndWatcherFragment;
        }

        @Override // butterknife.internal.b
        public void doClick(View view) {
            this.f20000a.focus(view);
        }
    }

    /* loaded from: classes3.dex */
    class d extends butterknife.internal.b {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ LiveEndWatcherFragment f20002a;

        d(LiveEndWatcherFragment liveEndWatcherFragment) {
            this.f20002a = liveEndWatcherFragment;
        }

        @Override // butterknife.internal.b
        public void doClick(View view) {
            this.f20002a.close(view);
        }
    }

    @UiThread
    public LiveEndWatcherFragment_ViewBinding(LiveEndWatcherFragment liveEndWatcherFragment, View view) {
        super(liveEndWatcherFragment, view);
        this.f19991d = liveEndWatcherFragment;
        liveEndWatcherFragment.mTextViewFansAdded = (TextView) butterknife.internal.c.d(view, R.id.fans_added, "field 'mTextViewFansAdded'", TextView.class);
        liveEndWatcherFragment.mTextViewFCoinAdded = (TextView) butterknife.internal.c.d(view, R.id.fcoin_added, "field 'mTextViewFCoinAdded'", TextView.class);
        liveEndWatcherFragment.mTextViewLiveTotalPeople = (TextView) butterknife.internal.c.d(view, R.id.live_total_people, "field 'mTextViewLiveTotalPeople'", TextView.class);
        View c10 = butterknife.internal.c.c(view, R.id.user_name, "field 'mTextViewUserName' and method 'toUserHome'");
        liveEndWatcherFragment.mTextViewUserName = (TextView) butterknife.internal.c.a(c10, R.id.user_name, "field 'mTextViewUserName'", TextView.class);
        this.f19992e = c10;
        c10.setOnClickListener(new a(liveEndWatcherFragment));
        View c11 = butterknife.internal.c.c(view, R.id.avatar_view, "field 'mAvatarView' and method 'toUserHome'");
        liveEndWatcherFragment.mAvatarView = (HeadPortraitView) butterknife.internal.c.a(c11, R.id.avatar_view, "field 'mAvatarView'", HeadPortraitView.class);
        this.f19993f = c11;
        c11.setOnClickListener(new b(liveEndWatcherFragment));
        View c12 = butterknife.internal.c.c(view, R.id.focus, "field 'mFoucesView' and method 'focus'");
        liveEndWatcherFragment.mFoucesView = (TextView) butterknife.internal.c.a(c12, R.id.focus, "field 'mFoucesView'", TextView.class);
        this.f19994g = c12;
        c12.setOnClickListener(new c(liveEndWatcherFragment));
        liveEndWatcherFragment.endTitle = (TextView) butterknife.internal.c.d(view, R.id.end_title, "field 'endTitle'", TextView.class);
        liveEndWatcherFragment.mRecommendView = butterknife.internal.c.c(view, R.id.recommend_view, "field 'mRecommendView'");
        View c13 = butterknife.internal.c.c(view, R.id.close, "method 'close'");
        this.f19995h = c13;
        c13.setOnClickListener(new d(liveEndWatcherFragment));
    }

    @Override // com.guochao.faceshow.aaspring.modulars.live.common.BaseLiveInfoFragment_ViewBinding, butterknife.Unbinder
    public void unbind() {
        LiveEndWatcherFragment liveEndWatcherFragment = this.f19991d;
        if (liveEndWatcherFragment != null) {
            this.f19991d = null;
            liveEndWatcherFragment.mTextViewFansAdded = null;
            liveEndWatcherFragment.mTextViewFCoinAdded = null;
            liveEndWatcherFragment.mTextViewLiveTotalPeople = null;
            liveEndWatcherFragment.mTextViewUserName = null;
            liveEndWatcherFragment.mAvatarView = null;
            liveEndWatcherFragment.mFoucesView = null;
            liveEndWatcherFragment.endTitle = null;
            liveEndWatcherFragment.mRecommendView = null;
            this.f19992e.setOnClickListener(null);
            this.f19992e = null;
            this.f19993f.setOnClickListener(null);
            this.f19993f = null;
            this.f19994g.setOnClickListener(null);
            this.f19994g = null;
            this.f19995h.setOnClickListener(null);
            this.f19995h = null;
            super.unbind();
            return;
        }
        throw new IllegalStateException("Bindings already cleared.");
    }
}
