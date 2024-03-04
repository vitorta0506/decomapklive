package com.guochao.faceshow.aaspring.modulars.live.common;

import android.view.View;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.CallSuper;
import androidx.annotation.UiThread;
import butterknife.Unbinder;
import com.guochao.faceshow.R;
import com.guochao.faceshow.aaspring.views.HeadPortraitView;
/* loaded from: classes3.dex */
public class LivePeopleInfoCardFragment_ViewBinding implements Unbinder {

    /* renamed from: b  reason: collision with root package name */
    private LivePeopleInfoCardFragment f18787b;

    /* renamed from: c  reason: collision with root package name */
    private View f18788c;

    /* renamed from: d  reason: collision with root package name */
    private View f18789d;

    /* renamed from: e  reason: collision with root package name */
    private View f18790e;

    /* renamed from: f  reason: collision with root package name */
    private View f18791f;

    /* renamed from: g  reason: collision with root package name */
    private View f18792g;

    /* renamed from: h  reason: collision with root package name */
    private View f18793h;

    /* renamed from: i  reason: collision with root package name */
    private View f18794i;

    /* renamed from: j  reason: collision with root package name */
    private View f18795j;

    /* loaded from: classes3.dex */
    class a extends butterknife.internal.b {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ LivePeopleInfoCardFragment f18796a;

        a(LivePeopleInfoCardFragment livePeopleInfoCardFragment) {
            this.f18796a = livePeopleInfoCardFragment;
        }

        @Override // butterknife.internal.b
        public void doClick(View view) {
            this.f18796a.seeUser(view);
        }
    }

    /* loaded from: classes3.dex */
    class b extends butterknife.internal.b {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ LivePeopleInfoCardFragment f18798a;

        b(LivePeopleInfoCardFragment livePeopleInfoCardFragment) {
            this.f18798a = livePeopleInfoCardFragment;
        }

        @Override // butterknife.internal.b
        public void doClick(View view) {
            this.f18798a.report(view);
        }
    }

    /* loaded from: classes3.dex */
    class c extends butterknife.internal.b {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ LivePeopleInfoCardFragment f18800a;

        c(LivePeopleInfoCardFragment livePeopleInfoCardFragment) {
            this.f18800a = livePeopleInfoCardFragment;
        }

        @Override // butterknife.internal.b
        public void doClick(View view) {
            this.f18800a.onViewClicked(view);
        }
    }

    /* loaded from: classes3.dex */
    class d extends butterknife.internal.b {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ LivePeopleInfoCardFragment f18802a;

        d(LivePeopleInfoCardFragment livePeopleInfoCardFragment) {
            this.f18802a = livePeopleInfoCardFragment;
        }

        @Override // butterknife.internal.b
        public void doClick(View view) {
            this.f18802a.menuButtonClick(view);
        }
    }

    /* loaded from: classes3.dex */
    class e extends butterknife.internal.b {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ LivePeopleInfoCardFragment f18804a;

        e(LivePeopleInfoCardFragment livePeopleInfoCardFragment) {
            this.f18804a = livePeopleInfoCardFragment;
        }

        @Override // butterknife.internal.b
        public void doClick(View view) {
            this.f18804a.operationButtonClick(view);
        }
    }

    /* loaded from: classes3.dex */
    class f extends butterknife.internal.b {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ LivePeopleInfoCardFragment f18806a;

        f(LivePeopleInfoCardFragment livePeopleInfoCardFragment) {
            this.f18806a = livePeopleInfoCardFragment;
        }

        @Override // butterknife.internal.b
        public void doClick(View view) {
            this.f18806a.operationButtonClick(view);
        }
    }

    /* loaded from: classes3.dex */
    class g extends butterknife.internal.b {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ LivePeopleInfoCardFragment f18808a;

        g(LivePeopleInfoCardFragment livePeopleInfoCardFragment) {
            this.f18808a = livePeopleInfoCardFragment;
        }

        @Override // butterknife.internal.b
        public void doClick(View view) {
            this.f18808a.operationButtonClick(view);
        }
    }

    /* loaded from: classes3.dex */
    class h extends butterknife.internal.b {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ LivePeopleInfoCardFragment f18810a;

        h(LivePeopleInfoCardFragment livePeopleInfoCardFragment) {
            this.f18810a = livePeopleInfoCardFragment;
        }

        @Override // butterknife.internal.b
        public void doClick(View view) {
            this.f18810a.menuButtonClick(view);
        }
    }

    @UiThread
    public LivePeopleInfoCardFragment_ViewBinding(LivePeopleInfoCardFragment livePeopleInfoCardFragment, View view) {
        this.f18787b = livePeopleInfoCardFragment;
        livePeopleInfoCardFragment.userInfoLayout = (LinearLayout) butterknife.internal.c.d(view, R.id.user_info_1_layout, "field 'userInfoLayout'", LinearLayout.class);
        livePeopleInfoCardFragment.cmdArea = butterknife.internal.c.c(view, R.id.cmd_area, "field 'cmdArea'");
        livePeopleInfoCardFragment.kickArea = butterknife.internal.c.c(view, R.id.kick_area, "field 'kickArea'");
        livePeopleInfoCardFragment.adminArea = butterknife.internal.c.c(view, R.id.admin_area, "field 'adminArea'");
        livePeopleInfoCardFragment.muteArea = butterknife.internal.c.c(view, R.id.mute_area, "field 'muteArea'");
        View c10 = butterknife.internal.c.c(view, R.id.avatar_view, "field 'mAvatarView' and method 'seeUser'");
        livePeopleInfoCardFragment.mAvatarView = (HeadPortraitView) butterknife.internal.c.a(c10, R.id.avatar_view, "field 'mAvatarView'", HeadPortraitView.class);
        this.f18788c = c10;
        c10.setOnClickListener(new a(livePeopleInfoCardFragment));
        livePeopleInfoCardFragment.mFansCount = (TextView) butterknife.internal.c.d(view, R.id.people_card_user_fans, "field 'mFansCount'", TextView.class);
        livePeopleInfoCardFragment.mFCoins = (TextView) butterknife.internal.c.d(view, R.id.people_card_user_fcoin, "field 'mFCoins'", TextView.class);
        livePeopleInfoCardFragment.mSentCount = (TextView) butterknife.internal.c.d(view, R.id.people_card_user_sent, "field 'mSentCount'", TextView.class);
        livePeopleInfoCardFragment.mUserIdView = (TextView) butterknife.internal.c.d(view, R.id.people_card_user_id, "field 'mUserIdView'", TextView.class);
        livePeopleInfoCardFragment.mUserNameView = (TextView) butterknife.internal.c.d(view, R.id.people_card_nick_name, "field 'mUserNameView'", TextView.class);
        livePeopleInfoCardFragment.mGenderAndSexView = butterknife.internal.c.c(view, R.id.user_center_age_level, "field 'mGenderAndSexView'");
        View c11 = butterknife.internal.c.c(view, R.id.people_card_report, "field 'mReportView' and method 'report'");
        livePeopleInfoCardFragment.mReportView = c11;
        this.f18789d = c11;
        c11.setOnClickListener(new b(livePeopleInfoCardFragment));
        livePeopleInfoCardFragment.peopleCardUserFocus = (TextView) butterknife.internal.c.d(view, R.id.people_card_user_focus, "field 'peopleCardUserFocus'", TextView.class);
        View c12 = butterknife.internal.c.c(view, R.id.focus, "field 'focus' and method 'onViewClicked'");
        livePeopleInfoCardFragment.focus = c12;
        this.f18790e = c12;
        c12.setOnClickListener(new c(livePeopleInfoCardFragment));
        livePeopleInfoCardFragment.spaceView = butterknife.internal.c.c(view, R.id.spaceView, "field 'spaceView'");
        View c13 = butterknife.internal.c.c(view, R.id.people_card_chat, "field 'peopleCardChat' and method 'menuButtonClick'");
        livePeopleInfoCardFragment.peopleCardChat = c13;
        this.f18791f = c13;
        c13.setOnClickListener(new d(livePeopleInfoCardFragment));
        livePeopleInfoCardFragment.chatTV = (TextView) butterknife.internal.c.d(view, R.id.chatTV, "field 'chatTV'", TextView.class);
        View c14 = butterknife.internal.c.c(view, R.id.mute, "method 'operationButtonClick'");
        this.f18792g = c14;
        c14.setOnClickListener(new e(livePeopleInfoCardFragment));
        View c15 = butterknife.internal.c.c(view, R.id.kick, "method 'operationButtonClick'");
        this.f18793h = c15;
        c15.setOnClickListener(new f(livePeopleInfoCardFragment));
        View c16 = butterknife.internal.c.c(view, R.id.admin, "method 'operationButtonClick'");
        this.f18794i = c16;
        c16.setOnClickListener(new g(livePeopleInfoCardFragment));
        View c17 = butterknife.internal.c.c(view, R.id.people_card_at_btn, "method 'menuButtonClick'");
        this.f18795j = c17;
        c17.setOnClickListener(new h(livePeopleInfoCardFragment));
    }

    @Override // butterknife.Unbinder
    @CallSuper
    public void unbind() {
        LivePeopleInfoCardFragment livePeopleInfoCardFragment = this.f18787b;
        if (livePeopleInfoCardFragment != null) {
            this.f18787b = null;
            livePeopleInfoCardFragment.userInfoLayout = null;
            livePeopleInfoCardFragment.cmdArea = null;
            livePeopleInfoCardFragment.kickArea = null;
            livePeopleInfoCardFragment.adminArea = null;
            livePeopleInfoCardFragment.muteArea = null;
            livePeopleInfoCardFragment.mAvatarView = null;
            livePeopleInfoCardFragment.mFansCount = null;
            livePeopleInfoCardFragment.mFCoins = null;
            livePeopleInfoCardFragment.mSentCount = null;
            livePeopleInfoCardFragment.mUserIdView = null;
            livePeopleInfoCardFragment.mUserNameView = null;
            livePeopleInfoCardFragment.mGenderAndSexView = null;
            livePeopleInfoCardFragment.mReportView = null;
            livePeopleInfoCardFragment.peopleCardUserFocus = null;
            livePeopleInfoCardFragment.focus = null;
            livePeopleInfoCardFragment.spaceView = null;
            livePeopleInfoCardFragment.peopleCardChat = null;
            livePeopleInfoCardFragment.chatTV = null;
            this.f18788c.setOnClickListener(null);
            this.f18788c = null;
            this.f18789d.setOnClickListener(null);
            this.f18789d = null;
            this.f18790e.setOnClickListener(null);
            this.f18790e = null;
            this.f18791f.setOnClickListener(null);
            this.f18791f = null;
            this.f18792g.setOnClickListener(null);
            this.f18792g = null;
            this.f18793h.setOnClickListener(null);
            this.f18793h = null;
            this.f18794i.setOnClickListener(null);
            this.f18794i = null;
            this.f18795j.setOnClickListener(null);
            this.f18795j = null;
            return;
        }
        throw new IllegalStateException("Bindings already cleared.");
    }
}
