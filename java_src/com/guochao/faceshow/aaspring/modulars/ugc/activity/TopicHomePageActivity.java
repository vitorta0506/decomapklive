package com.guochao.faceshow.aaspring.modulars.ugc.activity;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.AnimatorSet;
import android.animation.ObjectAnimator;
import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import android.text.TextUtils;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.AccelerateInterpolator;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.Space;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.appcompat.widget.Toolbar;
import androidx.core.content.ContextCompat;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentManager;
import androidx.fragment.app.FragmentPagerAdapter;
import androidx.viewpager.widget.ViewPager;
import butterknife.BindView;
import butterknife.OnClick;
import com.google.android.material.appbar.AppBarLayout;
import com.guochao.faceshow.BaseApplication;
import com.guochao.faceshow.R;
import com.guochao.faceshow.aaspring.base.activity.BaseActivity;
import com.guochao.faceshow.aaspring.base.activity.a;
import com.guochao.faceshow.aaspring.base.http.response.FaceCastBaseResponse;
import com.guochao.faceshow.aaspring.beans.ShareContentBean;
import com.guochao.faceshow.aaspring.beans.UgcTopicBean;
import com.guochao.faceshow.aaspring.beans.UgcTopicDetailBean;
import com.guochao.faceshow.aaspring.modulars.main.fragment.MainMenuDialogFragment;
import com.guochao.faceshow.aaspring.modulars.onevone.face2face.FaceToFaceFloatWindowManager;
import com.guochao.faceshow.aaspring.modulars.share.fragment.ShareFragment;
import com.guochao.faceshow.aaspring.modulars.ugc.fragment.TopicDynamicListFragment;
import com.guochao.faceshow.aaspring.modulars.ugc.publish.activity.PublishUgcActivity;
import com.guochao.faceshow.aaspring.utils.ActivityTransitionAnimUtils;
import com.guochao.faceshow.aaspring.utils.SimpleObserver;
import com.guochao.faceshow.aaspring.utils.StatusBarHelper;
import com.guochao.faceshow.aaspring.utils.ToastUtils;
import com.guochao.faceshow.aaspring.utils.UserStateHolder;
import com.guochao.faceshow.aaspring.views.HeadPortraitView;
import com.guochao.faceshow.aaspring.views.TabLayout;
import com.guochao.faceshow.aaspring.views.v;
import com.guochao.faceshow.activity.TCVideoRecordActivity;
import com.guochao.faceshow.userhomepage.act.UserHomePageAct;
import com.guochao.faceshow.utils.BaseConfig;
import com.guochao.faceshow.utils.DensityUtil;
import java.util.Arrays;
import java.util.List;
import java.util.concurrent.TimeUnit;
/* loaded from: classes3.dex */
public class TopicHomePageActivity extends BaseActivity implements AppBarLayout.OnOffsetChangedListener {

    /* renamed from: h  reason: collision with root package name */
    public static final String[] f22397h = {"android.permission.CAMERA", "android.permission.RECORD_AUDIO", "android.permission.READ_EXTERNAL_STORAGE", "android.permission.WRITE_EXTERNAL_STORAGE"};

    /* renamed from: a  reason: collision with root package name */
    UgcTopicBean f22398a;

    /* renamed from: b  reason: collision with root package name */
    UgcTopicDetailBean f22399b;
    @BindView
    View bottomDivider;

    /* renamed from: c  reason: collision with root package name */
    g f22400c;

    /* renamed from: d  reason: collision with root package name */
    boolean f22401d = false;

    /* renamed from: e  reason: collision with root package name */
    Runnable f22402e = new a();

    /* renamed from: f  reason: collision with root package name */
    private boolean f22403f = false;

    /* renamed from: g  reason: collision with root package name */
    boolean f22404g = false;
    @BindView
    AppBarLayout mAppBarLayout;
    @BindView
    HeadPortraitView mAvatarView;
    @Nullable
    @BindView
    ImageView mImageView;
    @BindView
    ImageView mImageViewPublish;
    @BindView
    ImageView mImageViewPublishImage;
    @BindView
    ImageView mImageViewPublishVideo;
    @BindView
    Space mSpace;
    @BindView
    TabLayout mTabLayout;
    @BindView
    TabLayout mTabLayoutSticky;
    @BindView
    View mTabLayoutStickyArea;
    @BindView
    View mTitleView;
    @BindView
    ViewPager mViewPager;

    /* loaded from: classes3.dex */
    class a implements Runnable {
        a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            TopicHomePageActivity.this.f22401d = true;
        }
    }

    /* loaded from: classes3.dex */
    class b extends v.d {
        b() {
        }

        @Override // com.guochao.faceshow.aaspring.views.v.d
        public void onFirstIconClick(View view) {
            TopicHomePageActivity topicHomePageActivity = TopicHomePageActivity.this;
            if (topicHomePageActivity.f22399b == null) {
                topicHomePageActivity.f22399b = new UgcTopicDetailBean();
                TopicHomePageActivity.this.f22399b.setUserImg("");
                TopicHomePageActivity.this.f22399b.setShortUrl("");
            }
            ShareContentBean shareContentBean = new ShareContentBean();
            shareContentBean.setTitle(String.format("#%s | %s", TopicHomePageActivity.this.f22398a.getTopicName(), eb.b.y()));
            shareContentBean.setImgUrl(TopicHomePageActivity.this.f22399b.getUserImg());
            shareContentBean.setContent(BaseApplication.getInstance().getString(R.string.ugc_little_brother));
            shareContentBean.setShortUrl(TopicHomePageActivity.this.f22399b.getShortUrl());
            ShareFragment.d2(shareContentBean, TopicHomePageActivity.this.f22398a).show(TopicHomePageActivity.this.getSupportFragmentManager(), "ShareFragment");
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class c extends com.guochao.faceshow.aaspring.base.http.callback.c<UgcTopicDetailBean> {
        c() {
        }

        @Override // com.guochao.faceshow.aaspring.base.http.callback.c
        /* renamed from: a */
        public void onResponse(@Nullable UgcTopicDetailBean ugcTopicDetailBean, @NonNull FaceCastBaseResponse<UgcTopicDetailBean> faceCastBaseResponse) {
            TopicHomePageActivity topicHomePageActivity = TopicHomePageActivity.this;
            topicHomePageActivity.f22399b = ugcTopicDetailBean;
            topicHomePageActivity.p0(ugcTopicDetailBean);
        }

        @Override // com.guochao.faceshow.aaspring.base.http.callback.c
        public void onFailure(@NonNull g7.a<UgcTopicDetailBean> aVar) {
            if (aVar.a() == 30001) {
                TopicHomePageActivity.this.n0();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class d extends AnimatorListenerAdapter {
        d() {
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            super.onAnimationEnd(animator);
            TopicHomePageActivity.this.f22403f = false;
            TopicHomePageActivity.this.findViewById(R.id.publish_picture).setVisibility(4);
            TopicHomePageActivity.this.findViewById(R.id.publish_video).setVisibility(4);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class e extends SimpleObserver<Integer> {
        e() {
        }

        @Override // com.guochao.faceshow.aaspring.utils.SimpleObserver, io.reactivex.r
        public void onNext(Integer num) {
            if (TopicHomePageActivity.this.isDestroyed()) {
                return;
            }
            TopicHomePageActivity.this.findViewById(R.id.mask).setVisibility(8);
            TopicHomePageActivity.this.s0();
        }
    }

    /* loaded from: classes3.dex */
    class f extends SimpleObserver<te.a> {
        f() {
        }

        @Override // com.guochao.faceshow.aaspring.utils.SimpleObserver, io.reactivex.r
        public void onNext(te.a aVar) {
            if (aVar.f58133b) {
                Intent intent = new Intent(TopicHomePageActivity.this.getActivity(), TCVideoRecordActivity.class);
                intent.putExtra("from", 2);
                intent.putExtra("topicName", TopicHomePageActivity.this.f22398a.getTopicName());
                intent.putExtra("topic_id", TopicHomePageActivity.this.f22398a.getTopicId());
                ActivityTransitionAnimUtils.startActivityByDownToUp(TopicHomePageActivity.this.getActivity(), intent);
                TopicHomePageActivity.this.l0();
                return;
            }
            TopicHomePageActivity.this.o0(0, Arrays.asList(TopicHomePageActivity.f22397h));
        }
    }

    /* loaded from: classes3.dex */
    private class g extends FragmentPagerAdapter {

        /* renamed from: a  reason: collision with root package name */
        Fragment f22411a;

        public g(FragmentManager fragmentManager) {
            super(fragmentManager);
        }

        @Override // androidx.viewpager.widget.PagerAdapter
        public int getCount() {
            return 2;
        }

        @Override // androidx.fragment.app.FragmentPagerAdapter
        public Fragment getItem(int i9) {
            return TopicDynamicListFragment.R1(TopicHomePageActivity.this.f22398a, i9 + 1);
        }

        @Override // androidx.viewpager.widget.PagerAdapter
        @Nullable
        public CharSequence getPageTitle(int i9) {
            if (i9 == 0) {
                return TopicHomePageActivity.this.getString(R.string.new_video);
            }
            return TopicHomePageActivity.this.getString(R.string.ugc_hot);
        }

        @Override // androidx.fragment.app.FragmentPagerAdapter, androidx.viewpager.widget.PagerAdapter
        public void setPrimaryItem(@NonNull ViewGroup viewGroup, int i9, @NonNull Object obj) {
            this.f22411a = (Fragment) obj;
            super.setPrimaryItem(viewGroup, i9, obj);
        }
    }

    private boolean k0(String str) {
        return getActivity() == null || TextUtils.isEmpty(str) || ContextCompat.checkSelfPermission(getActivity(), str) == 0;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void l0() {
        io.reactivex.k.just(1).delay(500L, TimeUnit.MILLISECONDS).subscribeOn(di.a.b()).observeOn(sh.a.a()).subscribe(new e());
    }

    private void m0() {
        post("tokens/search/findTopicInfoByTopicIdOrName").v("topicName", this.f22398a.getTopicName()).v("topicId", this.f22398a.getTopicId()).M(new c());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void n0() {
        findViewById(R.id.mask).setVisibility(8);
        findViewById(R.id.real_content).setVisibility(8);
        findViewById(R.id.btn_area).setVisibility(8);
        findViewById(R.id.not_exist).setVisibility(0);
        this.bottomDivider.setVisibility(8);
        q0(true);
        setTitle("");
        this.f22404g = true;
        supportInvalidateOptionsMenu();
        setEndIcon(0);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void p0(UgcTopicDetailBean ugcTopicDetailBean) {
        if (ugcTopicDetailBean != null) {
            setTextViewText(R.id.count, this.f22398a.getPartakeTimes() + getString(R.string.cy_topic_count));
            StringBuilder sb2 = new StringBuilder();
            sb2.append(TextUtils.isEmpty(ugcTopicDetailBean.getUserNickName()) ? "" : ugcTopicDetailBean.getUserNickName());
            sb2.append("(#");
            sb2.append(getString(R.string.creat_by));
            sb2.append(")");
            setTextViewText(R.id.author, sb2.toString());
            this.mAvatarView.d(ugcTopicDetailBean);
            this.f22398a.setTopicId(ugcTopicDetailBean.getFriendTopicId());
        }
    }

    private void q0(boolean z10) {
        setLightStatusBar(z10);
        Toolbar toolbar = (Toolbar) findViewById(R.id.toolbar);
        FrameLayout frameLayout = (FrameLayout) findViewById(R.id.float_title_back);
        ((TextView) findViewById(16908310)).setTextColor(getResources().getColor(R.color.color_ugc_text_level_1));
        if (!z10) {
            setTitle("", R.color.color_ugc_text_level_1);
            frameLayout.setBackgroundResource(R.color.bg_gray);
            setEndIcon(R.mipmap.icon_ugc_share_white);
            this.bottomDivider.setVisibility(8);
            return;
        }
        toolbar.setNavigationIcon(R.drawable.icon_back);
        frameLayout.setBackgroundResource(R.color.bg_gray);
        setTitle("", R.color.color_ugc_text_level_1);
        this.bottomDivider.setVisibility(8);
    }

    public static void r0(Context context, UgcTopicBean ugcTopicBean) {
        Intent putExtra = new Intent(context, TopicHomePageActivity.class).putExtra("data", ugcTopicBean);
        if (!(context instanceof Activity)) {
            putExtra.addFlags(268435456);
        }
        context.startActivity(putExtra);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void s0() {
        int[] iArr = new int[2];
        int[] iArr2 = new int[2];
        int[] iArr3 = new int[2];
        this.mImageViewPublish.getLocationInWindow(iArr3);
        this.mImageViewPublishVideo.getLocationInWindow(iArr);
        this.mImageViewPublishImage.getLocationInWindow(iArr2);
        AnimatorSet animatorSet = new AnimatorSet();
        ObjectAnimator ofFloat = ObjectAnimator.ofFloat(this.mImageViewPublishImage, "translationY", -(iArr2[1] - iArr3[1]));
        ObjectAnimator ofFloat2 = ObjectAnimator.ofFloat(this.mImageViewPublishVideo, "translationY", -(iArr[1] - iArr3[1]));
        AccelerateInterpolator accelerateInterpolator = new AccelerateInterpolator();
        animatorSet.playTogether(ofFloat, ofFloat2);
        animatorSet.setDuration(200L);
        animatorSet.setInterpolator(accelerateInterpolator);
        this.f22403f = true;
        findViewById(R.id.close).setVisibility(8);
        animatorSet.addListener(new d());
        animatorSet.start();
    }

    @OnClick
    public void close(View view) {
        if (this.f22403f) {
            return;
        }
        findViewById(R.id.mask).setVisibility(8);
        s0();
    }

    @OnClick
    public void doPublishPicture(View view) {
        PublishUgcActivity.q0(this, this.f22398a);
        l0();
    }

    @OnClick
    public void doPublishVideo(View view) {
        if (UserStateHolder.isLiving()) {
            showToast(getString(R.string.live_living) + " " + getString(R.string.unavailable));
        } else if (FaceToFaceFloatWindowManager.getInstance().isFaceToFaceFloatShowing()) {
            ToastUtils.showToast(this, (int) R.string.one_v_one_is_matching);
        } else {
            new com.tbruyelle.rxpermissions2.a(getActivity()).p(f22397h).subscribe(new f());
        }
    }

    @OnClick
    public void emptyClick(View view) {
    }

    @Override // com.guochao.faceshow.aaspring.base.activity.BaseActivity
    public com.guochao.faceshow.aaspring.base.activity.a getActivityConfig() {
        return new a.C0147a(this).b(true).a();
    }

    @Override // com.guochao.faceshow.aaspring.base.activity.BaseActivity
    public int getLayoutId() {
        return R.layout.activity_topic_home;
    }

    @Override // com.guochao.faceshow.aaspring.base.activity.BaseActivity
    public void initView() {
        if (BaseConfig.isChinese()) {
            this.mImageViewPublishVideo.setVisibility(8);
        }
        Intent intent = getIntent();
        Uri data = intent.getData();
        if (data != null) {
            String queryParameter = data.getQueryParameter("topicId");
            String queryParameter2 = data.getQueryParameter("topicName");
            UgcTopicBean ugcTopicBean = new UgcTopicBean();
            this.f22398a = ugcTopicBean;
            ugcTopicBean.setTopicId(queryParameter);
            this.f22398a.setTopicName(queryParameter2);
        } else {
            this.f22398a = (UgcTopicBean) intent.getParcelableExtra("data");
        }
        m0();
        ImageView imageView = this.mImageView;
        if (imageView != null) {
            imageView.setImageResource(R.mipmap.default_head);
        }
        findViewById(R.id.content_area).getLayoutParams().height = (getResources().getDisplayMetrics().heightPixels * 340) / 1337;
        this.mSpace.getLayoutParams().height = (StatusBarHelper.getStatusbarHeight(getActivity()) + StatusBarHelper.getActionBarHeight(getActivity())) - DensityUtil.dp2px(getActivity(), 10.0f);
        setTextViewText(R.id.topic_name, this.f22398a.getTopicName());
        setTextViewText(R.id.count, this.f22398a.getPartakeTimes() + getString(R.string.cy_topic_count));
        ViewPager viewPager = this.mViewPager;
        g gVar = new g(getSupportFragmentManager());
        this.f22400c = gVar;
        viewPager.setAdapter(gVar);
        this.mTabLayout.setupWithViewPager(this.mViewPager);
        this.mTabLayoutSticky.setupWithViewPager(this.mViewPager);
        setEndIcon(R.mipmap.icon_ugc_share_white);
        q0(false);
        this.mTitleBarHelper.f();
        v vVar = this.mTitleBarHelper;
        if (vVar != null) {
            vVar.setOnRightIconClickListener(new b());
        }
        this.mTitleBarHelper.f();
    }

    @Override // com.guochao.faceshow.aaspring.base.activity.BaseActivity
    public void loadData() {
    }

    public void o0(int i9, @NonNull List<String> list) {
        String str = "";
        for (int i10 = 0; i10 < list.size(); i10++) {
            if (list.get(i10).equals("android.permission.CAMERA") && !k0(list.get(i10))) {
                str = str + getString(R.string.reject_per_first_camera);
            }
            if (list.get(i10).equals("android.permission.RECORD_AUDIO") && !k0(list.get(i10))) {
                str = str + (TextUtils.isEmpty(str) ? "" : ", ") + getString(R.string.reject_per_first_mic);
            }
            if (list.get(i10).equals("android.permission.WRITE_EXTERNAL_STORAGE") && !k0(list.get(i10))) {
                str = str + (TextUtils.isEmpty(str) ? "" : ", ") + getString(R.string.reject_per_first_storage);
            }
            if (list.get(i10).equals("android.permission.READ_PHONE_STATE") && !k0(list.get(i10))) {
                str = str + (TextUtils.isEmpty(str) ? "" : ", ") + getString(R.string.reject_per_first_phone_status);
            }
        }
        if (TextUtils.isEmpty(str)) {
            return;
        }
        showToast(str + getString(R.string.reject_per_second));
    }

    @Override // com.google.android.material.appbar.AppBarLayout.OnOffsetChangedListener, com.google.android.material.appbar.AppBarLayout.BaseOnOffsetChangedListener
    public void onOffsetChanged(AppBarLayout appBarLayout, int i9) {
        if (this.f22401d) {
            int[] iArr = new int[2];
            this.mTabLayout.getLocationInWindow(iArr);
            if (iArr[1] <= this.mTitleView.getHeight()) {
                this.mTabLayout.setVisibility(4);
                this.mTabLayoutStickyArea.setVisibility(0);
            } else {
                this.mTabLayout.setVisibility(0);
                this.mTabLayoutStickyArea.setVisibility(8);
            }
            if (i9 == 0) {
                q0(true);
            } else if (Math.abs(i9) >= findViewById(R.id.float_title_back).getHeight()) {
                q0(true);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onPause() {
        super.onPause();
        this.mAppBarLayout.removeCallbacks(this.f22402e);
        this.mAppBarLayout.removeOnOffsetChangedListener((AppBarLayout.OnOffsetChangedListener) this);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.guochao.faceshow.aaspring.base.activity.BaseActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onResume() {
        super.onResume();
        this.f22401d = false;
        this.mAppBarLayout.postDelayed(this.f22402e, 200L);
        this.mAppBarLayout.addOnOffsetChangedListener((AppBarLayout.OnOffsetChangedListener) this);
    }

    @OnClick
    public void seeUser(View view) {
        if (this.f22399b != null) {
            UserHomePageAct.start(getActivity(), this.f22399b.getUserId());
        }
    }

    @OnClick
    public void showPublish(View view) {
        MainMenuDialogFragment mainMenuDialogFragment = new MainMenuDialogFragment();
        Bundle bundle = new Bundle();
        bundle.putInt("from", 2);
        bundle.putString("topicName", this.f22398a.getTopicName());
        bundle.putString("topic_id", this.f22398a.getTopicId());
        mainMenuDialogFragment.setArguments(bundle);
        mainMenuDialogFragment.R1(this);
    }
}
