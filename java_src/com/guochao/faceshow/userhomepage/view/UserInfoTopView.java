package com.guochao.faceshow.userhomepage.view;

import android.content.Context;
import android.graphics.drawable.AnimationDrawable;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.viewpager.widget.ViewPager;
import butterknife.BindView;
import butterknife.ButterKnife;
import com.guochao.component.voiceliveroom.helper.VoiceRoomMiniHelper;
import com.guochao.component.voiceliveroom.model.VoiceRoomInfoModel;
import com.guochao.faceshow.R;
import com.guochao.faceshow.aaspring.views.HeadPortraitView;
import com.guochao.faceshow.aaspring.views.LevelView;
import com.guochao.faceshow.aaspring.views.VipIndicatorView;
import com.guochao.faceshow.bean.UserVoiceRoomInfoBean;
import com.guochao.faceshow.utils.ScreenTools;
import com.rd.PageIndicatorView;
import com.youth.banner.Banner;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes4.dex */
public class UserInfoTopView extends LinearLayout {
    private VipIndicatorView A;
    private ImageView B;
    private ViewPager.OnPageChangeListener C;

    /* renamed from: a  reason: collision with root package name */
    private LinearLayout f26511a;

    /* renamed from: b  reason: collision with root package name */
    private TextView f26512b;

    /* renamed from: c  reason: collision with root package name */
    private LevelView f26513c;

    /* renamed from: d  reason: collision with root package name */
    private TextView f26514d;

    /* renamed from: e  reason: collision with root package name */
    private LinearLayout f26515e;

    /* renamed from: f  reason: collision with root package name */
    private TextView f26516f;

    /* renamed from: g  reason: collision with root package name */
    private TextView f26517g;

    /* renamed from: h  reason: collision with root package name */
    private TextView f26518h;

    /* renamed from: i  reason: collision with root package name */
    private TextView f26519i;

    /* renamed from: j  reason: collision with root package name */
    private TextView f26520j;

    /* renamed from: k  reason: collision with root package name */
    private TextView f26521k;

    /* renamed from: l  reason: collision with root package name */
    public String f26522l;

    /* renamed from: m  reason: collision with root package name */
    private boolean f26523m;
    @BindView
    View mOnlineInfoArea;
    @BindView
    TextView mTextViewOnlineInfo;
    @BindView
    TextView mTextViewOnlineInfoExtra;
    @BindView
    ImageView mvpIV;

    /* renamed from: n  reason: collision with root package name */
    private LinearLayout f26524n;

    /* renamed from: o  reason: collision with root package name */
    private LinearLayout f26525o;

    /* renamed from: p  reason: collision with root package name */
    private AnimationDrawable f26526p;

    /* renamed from: q  reason: collision with root package name */
    private ImageView f26527q;

    /* renamed from: r  reason: collision with root package name */
    private ImageView f26528r;

    /* renamed from: s  reason: collision with root package name */
    private ViewGroup f26529s;

    /* renamed from: t  reason: collision with root package name */
    private ViewGroup f26530t;

    /* renamed from: u  reason: collision with root package name */
    private HeadPortraitView f26531u;

    /* renamed from: v  reason: collision with root package name */
    private Banner f26532v;

    /* renamed from: w  reason: collision with root package name */
    private PageIndicatorView f26533w;

    /* renamed from: x  reason: collision with root package name */
    private List<String> f26534x;

    /* renamed from: y  reason: collision with root package name */
    private FrameLayout f26535y;

    /* renamed from: z  reason: collision with root package name */
    private TextView f26536z;

    /* loaded from: classes4.dex */
    class a implements View.OnClickListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ UserVoiceRoomInfoBean f26537a;

        a(UserVoiceRoomInfoBean userVoiceRoomInfoBean) {
            this.f26537a = userVoiceRoomInfoBean;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            ArrayList arrayList = new ArrayList();
            VoiceRoomInfoModel voiceRoomInfoModel = new VoiceRoomInfoModel();
            voiceRoomInfoModel.setRoomId(this.f26537a.getUserOnlineRoomId() + "");
            voiceRoomInfoModel.setUserId(this.f26537a.getUserOnlineRoomId() + "");
            voiceRoomInfoModel.setId(this.f26537a.getUserOnlineRoomId());
            voiceRoomInfoModel.setChatGroupId(this.f26537a.getUserOnlineImGroupId());
            arrayList.add(voiceRoomInfoModel);
            VoiceRoomMiniHelper.gotoVoiceRoom(UserInfoTopView.this.getContext(), 0, arrayList);
        }
    }

    /* loaded from: classes4.dex */
    class b implements ViewPager.OnPageChangeListener {
        b() {
        }

        @Override // androidx.viewpager.widget.ViewPager.OnPageChangeListener
        public void onPageScrollStateChanged(int i9) {
            UserInfoTopView.this.f26533w.onPageScrollStateChanged(i9);
        }

        @Override // androidx.viewpager.widget.ViewPager.OnPageChangeListener
        public void onPageScrolled(int i9, float f10, int i10) {
            UserInfoTopView.this.f26533w.onPageScrolled(i9 % UserInfoTopView.this.f26534x.size(), f10, i10);
        }

        @Override // androidx.viewpager.widget.ViewPager.OnPageChangeListener
        public void onPageSelected(int i9) {
            UserInfoTopView.this.f26533w.onPageSelected(i9 % UserInfoTopView.this.f26534x.size());
        }
    }

    public UserInfoTopView(Context context) {
        this(context, null);
    }

    private void c() {
        ((LinearLayout.LayoutParams) this.f26535y.getLayoutParams()).height = ScreenTools.getScreenHeight() / 2;
        ((LinearLayout.LayoutParams) this.f26511a.getLayoutParams()).topMargin = ScreenTools.get375STValue(-10.0f);
        LinearLayout.LayoutParams layoutParams = (LinearLayout.LayoutParams) this.f26514d.getLayoutParams();
        layoutParams.leftMargin = ScreenTools.get375STValue(20.0f);
        layoutParams.rightMargin = ScreenTools.get375STValue(20.0f);
        layoutParams.topMargin = ScreenTools.get375STValue(11.0f);
        LinearLayout.LayoutParams layoutParams2 = (LinearLayout.LayoutParams) this.f26515e.getLayoutParams();
        layoutParams2.topMargin = ScreenTools.get375STValue(22.0f);
        layoutParams2.bottomMargin = ScreenTools.get375STValue(22.0f);
        layoutParams2.leftMargin = ScreenTools.get375STValue(25.0f);
        layoutParams2.rightMargin = ScreenTools.get375STValue(25.0f);
    }

    private void d() {
        LayoutInflater.from(getContext()).inflate(R.layout.user_page_top_info_view, (ViewGroup) this, true);
        setOrientation(1);
        setBackgroundColor(getResources().getColor(R.color.colorTextWhite));
        setGravity(1);
        ButterKnife.c(this, this);
        this.f26531u = (HeadPortraitView) findViewById(R.id.user_avatar);
        this.A = (VipIndicatorView) findViewById(R.id.vip_indicator);
        this.f26513c = (LevelView) findViewById(R.id.level_view);
        this.f26511a = (LinearLayout) findViewById(R.id.user_info_name_ly);
        this.f26512b = (TextView) findViewById(R.id.user_info_name);
        this.f26514d = (TextView) findViewById(R.id.user_info_signature);
        this.B = (ImageView) findViewById(R.id.default_head);
        this.f26515e = (LinearLayout) findViewById(R.id.number_info_ly);
        this.f26524n = (LinearLayout) findViewById(R.id.user_info_follow_ly);
        this.f26525o = (LinearLayout) findViewById(R.id.user_info_fans_ly);
        this.f26516f = (TextView) findViewById(R.id.user_info_follow_value);
        this.f26517g = (TextView) findViewById(R.id.user_info_follow);
        this.f26518h = (TextView) findViewById(R.id.user_info_gift_value);
        this.f26519i = (TextView) findViewById(R.id.user_info_gift);
        this.f26520j = (TextView) findViewById(R.id.user_info_fans_value);
        this.f26521k = (TextView) findViewById(R.id.user_info_fans);
        this.f26536z = (TextView) findViewById(R.id.user_info_send_value);
        this.f26527q = (ImageView) findViewById(R.id.living_status);
        this.f26528r = (ImageView) findViewById(R.id.voice_room_living_status);
        this.f26529s = (ViewGroup) findViewById(R.id.living);
        this.f26530t = (ViewGroup) findViewById(R.id.voiceLiving);
        this.f26535y = (FrameLayout) findViewById(R.id.user_info_scroll_pager_ly);
        this.f26532v = (Banner) findViewById(R.id.banner);
        this.f26533w = (PageIndicatorView) findViewById(R.id.pageIndicatorView);
        c();
    }

    public void setInRoom(UserVoiceRoomInfoBean userVoiceRoomInfoBean) {
        if (userVoiceRoomInfoBean == null) {
            return;
        }
        if (!TextUtils.isEmpty(userVoiceRoomInfoBean.getUserOnlineImGroupId()) && this.f26529s.getVisibility() != 0) {
            AnimationDrawable animationDrawable = (AnimationDrawable) this.f26528r.getDrawable();
            this.f26526p = animationDrawable;
            animationDrawable.start();
            this.f26530t.setVisibility(0);
        } else {
            this.f26530t.setVisibility(4);
        }
        this.f26530t.setOnClickListener(new a(userVoiceRoomInfoBean));
    }

    public void setOnFansClickListener(View.OnClickListener onClickListener) {
        this.f26525o.setOnClickListener(onClickListener);
    }

    public void setOnFollowClickListener(View.OnClickListener onClickListener) {
        this.f26524n.setOnClickListener(onClickListener);
    }

    public void setOnHeadClickListener(View.OnClickListener onClickListener) {
        this.f26531u.setOnClickListener(onClickListener);
    }

    public void setOnLiveClickLister(View.OnClickListener onClickListener) {
        this.f26529s.setOnClickListener(onClickListener);
    }

    public void setOnVoiceRoomLiveClickLister(View.OnClickListener onClickListener) {
        this.f26530t.setOnClickListener(onClickListener);
    }

    public UserInfoTopView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public UserInfoTopView(Context context, AttributeSet attributeSet, int i9) {
        super(context, attributeSet, i9);
        this.f26522l = "";
        this.f26523m = false;
        this.f26534x = new ArrayList();
        this.C = new b();
        d();
    }
}
