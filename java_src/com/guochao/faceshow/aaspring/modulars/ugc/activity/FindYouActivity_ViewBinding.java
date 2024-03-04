package com.guochao.faceshow.aaspring.modulars.ugc.activity;

import android.view.View;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.annotation.UiThread;
import com.guochao.faceshow.R;
import com.guochao.faceshow.aaspring.base.activity.BaseActivity_ViewBinding;
import com.guochao.faceshow.aaspring.views.RangeSeekBar;
/* loaded from: classes3.dex */
public class FindYouActivity_ViewBinding extends BaseActivity_ViewBinding {

    /* renamed from: c  reason: collision with root package name */
    private FindYouActivity f22223c;

    /* renamed from: d  reason: collision with root package name */
    private View f22224d;

    /* renamed from: e  reason: collision with root package name */
    private View f22225e;

    /* renamed from: f  reason: collision with root package name */
    private View f22226f;

    /* renamed from: g  reason: collision with root package name */
    private View f22227g;

    /* renamed from: h  reason: collision with root package name */
    private View f22228h;

    /* renamed from: i  reason: collision with root package name */
    private View f22229i;

    /* renamed from: j  reason: collision with root package name */
    private View f22230j;

    /* loaded from: classes3.dex */
    class a extends butterknife.internal.b {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ FindYouActivity f22231a;

        a(FindYouActivity findYouActivity) {
            this.f22231a = findYouActivity;
        }

        @Override // butterknife.internal.b
        public void doClick(View view) {
            this.f22231a.onViewClicked(view);
        }
    }

    /* loaded from: classes3.dex */
    class b extends butterknife.internal.b {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ FindYouActivity f22233a;

        b(FindYouActivity findYouActivity) {
            this.f22233a = findYouActivity;
        }

        @Override // butterknife.internal.b
        public void doClick(View view) {
            this.f22233a.onViewClicked(view);
        }
    }

    /* loaded from: classes3.dex */
    class c extends butterknife.internal.b {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ FindYouActivity f22235a;

        c(FindYouActivity findYouActivity) {
            this.f22235a = findYouActivity;
        }

        @Override // butterknife.internal.b
        public void doClick(View view) {
            this.f22235a.onViewClicked(view);
        }
    }

    /* loaded from: classes3.dex */
    class d extends butterknife.internal.b {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ FindYouActivity f22237a;

        d(FindYouActivity findYouActivity) {
            this.f22237a = findYouActivity;
        }

        @Override // butterknife.internal.b
        public void doClick(View view) {
            this.f22237a.onViewClicked(view);
        }
    }

    /* loaded from: classes3.dex */
    class e extends butterknife.internal.b {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ FindYouActivity f22239a;

        e(FindYouActivity findYouActivity) {
            this.f22239a = findYouActivity;
        }

        @Override // butterknife.internal.b
        public void doClick(View view) {
            this.f22239a.onViewClicked(view);
        }
    }

    /* loaded from: classes3.dex */
    class f extends butterknife.internal.b {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ FindYouActivity f22241a;

        f(FindYouActivity findYouActivity) {
            this.f22241a = findYouActivity;
        }

        @Override // butterknife.internal.b
        public void doClick(View view) {
            this.f22241a.onViewClicked(view);
        }
    }

    /* loaded from: classes3.dex */
    class g extends butterknife.internal.b {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ FindYouActivity f22243a;

        g(FindYouActivity findYouActivity) {
            this.f22243a = findYouActivity;
        }

        @Override // butterknife.internal.b
        public void doClick(View view) {
            this.f22243a.onViewClicked(view);
        }
    }

    @UiThread
    public FindYouActivity_ViewBinding(FindYouActivity findYouActivity, View view) {
        super(findYouActivity, view);
        this.f22223c = findYouActivity;
        findYouActivity.rsbYear = (RangeSeekBar) butterknife.internal.c.d(view, R.id.rsb_year, "field 'rsbYear'", RangeSeekBar.class);
        findYouActivity.tvMin = (TextView) butterknife.internal.c.d(view, R.id.tv_min_year, "field 'tvMin'", TextView.class);
        findYouActivity.tvMax = (TextView) butterknife.internal.c.d(view, R.id.tv_max_year, "field 'tvMax'", TextView.class);
        findYouActivity.ivMan = (ImageView) butterknife.internal.c.d(view, R.id.iv_man, "field 'ivMan'", ImageView.class);
        findYouActivity.ivWoman = (ImageView) butterknife.internal.c.d(view, R.id.iv_woman, "field 'ivWoman'", ImageView.class);
        findYouActivity.ivUnlimited = (ImageView) butterknife.internal.c.d(view, R.id.iv_unlimited, "field 'ivUnlimited'", ImageView.class);
        findYouActivity.tvResidence = (TextView) butterknife.internal.c.d(view, R.id.tv_residence, "field 'tvResidence'", TextView.class);
        findYouActivity.tvChooseLanguage = (TextView) butterknife.internal.c.d(view, R.id.tv_choose_language, "field 'tvChooseLanguage'", TextView.class);
        View c10 = butterknife.internal.c.c(view, R.id.btn_search, "field 'btnSearch' and method 'onViewClicked'");
        findYouActivity.btnSearch = c10;
        this.f22224d = c10;
        c10.setOnClickListener(new a(findYouActivity));
        findYouActivity.tvMan = (TextView) butterknife.internal.c.d(view, R.id.tv_man, "field 'tvMan'", TextView.class);
        findYouActivity.tvWonam = (TextView) butterknife.internal.c.d(view, R.id.tv_wonam, "field 'tvWonam'", TextView.class);
        findYouActivity.tvUnlimited = (TextView) butterknife.internal.c.d(view, R.id.tv_unlimited, "field 'tvUnlimited'", TextView.class);
        View c11 = butterknife.internal.c.c(view, R.id.rl_choose_friend_setting, "field 'rlChooseFriendSetting' and method 'onViewClicked'");
        findYouActivity.rlChooseFriendSetting = (RelativeLayout) butterknife.internal.c.a(c11, R.id.rl_choose_friend_setting, "field 'rlChooseFriendSetting'", RelativeLayout.class);
        this.f22225e = c11;
        c11.setOnClickListener(new b(findYouActivity));
        findYouActivity.tvFriendSetting = (TextView) butterknife.internal.c.d(view, R.id.tv_friend_setting, "field 'tvFriendSetting'", TextView.class);
        findYouActivity.ChooseFriendSetting = (TextView) butterknife.internal.c.d(view, R.id.tv_choose_friend_setting, "field 'ChooseFriendSetting'", TextView.class);
        View c12 = butterknife.internal.c.c(view, R.id.rl_residence, "field 'rlResidence' and method 'onViewClicked'");
        findYouActivity.rlResidence = (RelativeLayout) butterknife.internal.c.a(c12, R.id.rl_residence, "field 'rlResidence'", RelativeLayout.class);
        this.f22226f = c12;
        c12.setOnClickListener(new c(findYouActivity));
        View c13 = butterknife.internal.c.c(view, R.id.rl_choose_language, "field 'rlChooseLanguage' and method 'onViewClicked'");
        findYouActivity.rlChooseLanguage = (RelativeLayout) butterknife.internal.c.a(c13, R.id.rl_choose_language, "field 'rlChooseLanguage'", RelativeLayout.class);
        this.f22227g = c13;
        c13.setOnClickListener(new d(findYouActivity));
        View c14 = butterknife.internal.c.c(view, R.id.ll_iv_man, "method 'onViewClicked'");
        this.f22228h = c14;
        c14.setOnClickListener(new e(findYouActivity));
        View c15 = butterknife.internal.c.c(view, R.id.ll_iv_woman, "method 'onViewClicked'");
        this.f22229i = c15;
        c15.setOnClickListener(new f(findYouActivity));
        View c16 = butterknife.internal.c.c(view, R.id.ll_iv_unlimited, "method 'onViewClicked'");
        this.f22230j = c16;
        c16.setOnClickListener(new g(findYouActivity));
    }

    @Override // com.guochao.faceshow.aaspring.base.activity.BaseActivity_ViewBinding, butterknife.Unbinder
    public void unbind() {
        FindYouActivity findYouActivity = this.f22223c;
        if (findYouActivity != null) {
            this.f22223c = null;
            findYouActivity.rsbYear = null;
            findYouActivity.tvMin = null;
            findYouActivity.tvMax = null;
            findYouActivity.ivMan = null;
            findYouActivity.ivWoman = null;
            findYouActivity.ivUnlimited = null;
            findYouActivity.tvResidence = null;
            findYouActivity.tvChooseLanguage = null;
            findYouActivity.btnSearch = null;
            findYouActivity.tvMan = null;
            findYouActivity.tvWonam = null;
            findYouActivity.tvUnlimited = null;
            findYouActivity.rlChooseFriendSetting = null;
            findYouActivity.tvFriendSetting = null;
            findYouActivity.ChooseFriendSetting = null;
            findYouActivity.rlResidence = null;
            findYouActivity.rlChooseLanguage = null;
            this.f22224d.setOnClickListener(null);
            this.f22224d = null;
            this.f22225e.setOnClickListener(null);
            this.f22225e = null;
            this.f22226f.setOnClickListener(null);
            this.f22226f = null;
            this.f22227g.setOnClickListener(null);
            this.f22227g = null;
            this.f22228h.setOnClickListener(null);
            this.f22228h = null;
            this.f22229i.setOnClickListener(null);
            this.f22229i = null;
            this.f22230j.setOnClickListener(null);
            this.f22230j = null;
            super.unbind();
            return;
        }
        throw new IllegalStateException("Bindings already cleared.");
    }
}
