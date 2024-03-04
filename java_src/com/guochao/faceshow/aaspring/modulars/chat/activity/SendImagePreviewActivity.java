package com.guochao.faceshow.aaspring.modulars.chat.activity;

import android.content.Intent;
import android.graphics.Color;
import android.net.Uri;
import android.text.TextUtils;
import android.view.View;
import android.view.animation.AlphaAnimation;
import android.widget.FrameLayout;
import android.widget.TextView;
import androidx.annotation.Nullable;
import androidx.appcompat.widget.Toolbar;
import androidx.core.app.ActivityCompat;
import androidx.core.internal.view.SupportMenu;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentManager;
import androidx.lifecycle.Observer;
import androidx.viewpager.widget.ViewPager;
import butterknife.BindView;
import butterknife.OnClick;
import com.facebook.share.internal.ShareConstants;
import com.guochao.faceshow.BaseApplication;
import com.guochao.faceshow.R;
import com.guochao.faceshow.aaspring.base.activity.BaseActivity;
import com.guochao.faceshow.aaspring.base.activity.a;
import com.guochao.faceshow.aaspring.base.fragment.BaseFragment;
import com.guochao.faceshow.aaspring.beans.LocalImageOrVideoBean;
import com.guochao.faceshow.aaspring.modulars.chat.fragment.BaseFragmentPagerAdapter;
import com.guochao.faceshow.aaspring.modulars.chat.fragment.ImagePreviewFragment;
import com.guochao.faceshow.aaspring.modulars.chat.fragment.VideoPreviewFragment;
import com.guochao.faceshow.aaspring.modulars.chat.utils.g;
import com.guochao.faceshow.aaspring.utils.MediaFileFinder;
import com.guochao.faceshow.aaspring.utils.MemoryCache;
import com.guochao.faceshow.aaspring.utils.ToastUtils;
import com.guochao.faceshow.aaspring.views.TitleBackgroundView;
import com.guochao.faceshow.aaspring.views.doodle.DoodleParams;
import com.guochao.faceshow.aaspring.views.v;
import com.guochao.faceshow.utils.Contants;
import java.io.File;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import org.greenrobot.eventbus.EventBus;
/* loaded from: classes3.dex */
public class SendImagePreviewActivity extends BaseActivity implements g {
    @BindView
    FrameLayout bottomNavigation;

    /* renamed from: c  reason: collision with root package name */
    private AlphaAnimation f16841c;

    /* renamed from: d  reason: collision with root package name */
    private AlphaAnimation f16842d;
    @BindView
    FrameLayout flContent;

    /* renamed from: g  reason: collision with root package name */
    private int f16845g;

    /* renamed from: i  reason: collision with root package name */
    private f f16847i;

    /* renamed from: j  reason: collision with root package name */
    private List<BaseFragment> f16848j;

    /* renamed from: k  reason: collision with root package name */
    private List<LocalImageOrVideoBean> f16849k;

    /* renamed from: m  reason: collision with root package name */
    private List<LocalImageOrVideoBean> f16851m;
    @BindView
    TextView mTextViewCount;
    @BindView
    View mTitleBackground;
    @BindView
    ViewPager mViewPager;

    /* renamed from: n  reason: collision with root package name */
    private int f16852n;
    @BindView
    Toolbar titleBackgroundView;
    @BindView
    TextView tvCompile;

    /* renamed from: a  reason: collision with root package name */
    List<LocalImageOrVideoBean> f16839a = new ArrayList();

    /* renamed from: b  reason: collision with root package name */
    private boolean f16840b = true;

    /* renamed from: e  reason: collision with root package name */
    private ArrayList<LocalImageOrVideoBean> f16843e = new ArrayList<>();

    /* renamed from: f  reason: collision with root package name */
    private String f16844f = BaseApplication.getInstance().getString(R.string.send);

    /* renamed from: h  reason: collision with root package name */
    private int f16846h = 0;

    /* renamed from: l  reason: collision with root package name */
    private int f16850l = 0;

    /* loaded from: classes3.dex */
    class a extends v.d {
        a() {
        }

        @Override // com.guochao.faceshow.aaspring.views.v.d
        public void onFirstIconClick(View view) {
            SendImagePreviewActivity sendImagePreviewActivity = SendImagePreviewActivity.this;
            sendImagePreviewActivity.v0(sendImagePreviewActivity.f16839a.get(sendImagePreviewActivity.f16846h));
        }
    }

    /* loaded from: classes3.dex */
    class b implements ViewPager.OnPageChangeListener {
        b() {
        }

        @Override // androidx.viewpager.widget.ViewPager.OnPageChangeListener
        public void onPageScrollStateChanged(int i9) {
        }

        @Override // androidx.viewpager.widget.ViewPager.OnPageChangeListener
        public void onPageScrolled(int i9, float f10, int i10) {
        }

        @Override // androidx.viewpager.widget.ViewPager.OnPageChangeListener
        public void onPageSelected(int i9) {
            SendImagePreviewActivity.this.f16846h = i9;
            SendImagePreviewActivity sendImagePreviewActivity = SendImagePreviewActivity.this;
            sendImagePreviewActivity.y0(sendImagePreviewActivity.f16839a.get(i9));
            if (!SendImagePreviewActivity.this.f16839a.get(i9).getPath().endsWith("jpg") && !SendImagePreviewActivity.this.f16839a.get(i9).getPath().endsWith("png") && !SendImagePreviewActivity.this.f16839a.get(i9).getPath().endsWith("gif")) {
                SendImagePreviewActivity.this.tvCompile.setVisibility(8);
            } else {
                SendImagePreviewActivity.this.tvCompile.setVisibility(0);
            }
        }
    }

    /* loaded from: classes3.dex */
    class c implements Observer<List<LocalImageOrVideoBean>> {
        c() {
        }

        @Override // androidx.lifecycle.Observer
        /* renamed from: a */
        public void onChanged(List<LocalImageOrVideoBean> list) {
            SendImagePreviewActivity.this.f16839a.clear();
            SendImagePreviewActivity.this.f16839a.addAll(list);
            if (SendImagePreviewActivity.this.f16851m != null && SendImagePreviewActivity.this.f16851m.size() > 0) {
                for (LocalImageOrVideoBean localImageOrVideoBean : SendImagePreviewActivity.this.f16851m) {
                    SendImagePreviewActivity.this.f16839a.add(localImageOrVideoBean.getSelectPosition(), localImageOrVideoBean);
                }
            }
            if (SendImagePreviewActivity.this.f16849k != null) {
                Collections.reverse(SendImagePreviewActivity.this.f16849k);
                for (LocalImageOrVideoBean localImageOrVideoBean2 : SendImagePreviewActivity.this.f16849k) {
                    SendImagePreviewActivity sendImagePreviewActivity = SendImagePreviewActivity.this;
                    sendImagePreviewActivity.f16839a.add(sendImagePreviewActivity.f16850l, localImageOrVideoBean2);
                }
            }
            for (int i9 = 0; i9 < SendImagePreviewActivity.this.f16839a.size(); i9++) {
                if (SendImagePreviewActivity.this.f16839a.get(i9) != null && SendImagePreviewActivity.this.f16839a.get(i9).isSelected()) {
                    SendImagePreviewActivity.this.f16843e.add(SendImagePreviewActivity.this.f16839a.get(i9));
                }
            }
            SendImagePreviewActivity.this.A0();
            SendImagePreviewActivity.this.f16848j = new ArrayList();
            for (LocalImageOrVideoBean localImageOrVideoBean3 : SendImagePreviewActivity.this.f16839a) {
                if (localImageOrVideoBean3.getFileType() == 2) {
                    SendImagePreviewActivity.this.f16848j.add(VideoPreviewFragment.P1(localImageOrVideoBean3));
                } else {
                    SendImagePreviewActivity.this.f16848j.add(ImagePreviewFragment.P1(localImageOrVideoBean3));
                }
            }
            SendImagePreviewActivity sendImagePreviewActivity2 = SendImagePreviewActivity.this;
            sendImagePreviewActivity2.f16847i = new f(sendImagePreviewActivity2.getSupportFragmentManager(), SendImagePreviewActivity.this.f16848j);
            SendImagePreviewActivity sendImagePreviewActivity3 = SendImagePreviewActivity.this;
            sendImagePreviewActivity3.mViewPager.setAdapter(sendImagePreviewActivity3.f16847i);
            SendImagePreviewActivity sendImagePreviewActivity4 = SendImagePreviewActivity.this;
            sendImagePreviewActivity4.mViewPager.setCurrentItem(sendImagePreviewActivity4.getIntent().getIntExtra("currentPosition", 0));
            SendImagePreviewActivity.this.f16841c = new AlphaAnimation(0.0f, 1.0f);
            SendImagePreviewActivity.this.f16841c.setDuration(150L);
            SendImagePreviewActivity.this.f16842d = new AlphaAnimation(1.0f, 0.0f);
            SendImagePreviewActivity.this.f16842d.setDuration(150L);
        }
    }

    /* loaded from: classes3.dex */
    class d implements aa.b<LocalImageOrVideoBean> {
        d() {
        }

        @Override // aa.b
        /* renamed from: a */
        public boolean accept(LocalImageOrVideoBean localImageOrVideoBean) {
            return !localImageOrVideoBean.getFileName().toLowerCase().endsWith(".gif");
        }
    }

    /* loaded from: classes3.dex */
    class e implements aa.b<LocalImageOrVideoBean> {
        e() {
        }

        @Override // aa.b
        /* renamed from: a */
        public boolean accept(LocalImageOrVideoBean localImageOrVideoBean) {
            return !localImageOrVideoBean.getFileName().toLowerCase().endsWith(".gif");
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class f extends BaseFragmentPagerAdapter {
        public f(FragmentManager fragmentManager, List<BaseFragment> list) {
            super(fragmentManager, list);
        }

        @Override // com.guochao.faceshow.aaspring.modulars.chat.fragment.BaseFragmentPagerAdapter, androidx.viewpager.widget.PagerAdapter
        public int getCount() {
            return SendImagePreviewActivity.this.f16839a.size();
        }

        @Override // com.guochao.faceshow.aaspring.modulars.chat.fragment.BaseFragmentPagerAdapter, androidx.fragment.app.FragmentPagerAdapter
        public Fragment getItem(int i9) {
            LocalImageOrVideoBean localImageOrVideoBean = SendImagePreviewActivity.this.f16839a.get(i9);
            if (localImageOrVideoBean.getFileType() == 2) {
                return VideoPreviewFragment.P1(localImageOrVideoBean);
            }
            return ImagePreviewFragment.P1(localImageOrVideoBean);
        }
    }

    private void B0(View view) {
        if (view.getVisibility() == 0) {
            return;
        }
        view.clearAnimation();
        view.startAnimation(this.f16841c);
        view.setVisibility(0);
    }

    private void u0(View view) {
        if (view.getVisibility() != 0) {
            return;
        }
        view.clearAnimation();
        view.startAnimation(this.f16842d);
        view.setVisibility(8);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void y0(LocalImageOrVideoBean localImageOrVideoBean) {
        if (!localImageOrVideoBean.isSelected()) {
            setEndIcon(R.mipmap.icon_im_nochoice);
        } else {
            setEndIcon(R.mipmap.icon_im_selection);
        }
    }

    public void A0() {
        int size = this.f16843e.size();
        if (size == 0) {
            this.mTextViewCount.setText(this.f16844f);
        } else {
            this.mTextViewCount.setText(String.format("%s(%d)", this.f16844f, Integer.valueOf(size)));
        }
    }

    @Override // com.guochao.faceshow.aaspring.modulars.chat.utils.g
    public void V() {
        if (this.f16840b) {
            u0(this.titleBackgroundView);
            u0(this.bottomNavigation);
            this.f16840b = false;
            return;
        }
        B0(this.titleBackgroundView);
        B0(this.bottomNavigation);
        this.f16840b = true;
    }

    @OnClick
    public void compile(View view) {
        DoodleParams doodleParams = new DoodleParams();
        doodleParams.mIsFullScreen = true;
        doodleParams.mImagePath = this.f16839a.get(this.f16846h).getPath();
        doodleParams.mUri = this.f16839a.get(this.f16846h).getDisplayUri();
        doodleParams.mPaintUnitSize = 6.0f;
        doodleParams.mPaintColor = SupportMenu.CATEGORY_MASK;
        doodleParams.mSupportScaleItem = true;
        DoodleActivity.d1(this, doodleParams, 101);
    }

    @Override // com.guochao.faceshow.aaspring.base.activity.BaseActivity
    public com.guochao.faceshow.aaspring.base.activity.a getActivityConfig() {
        return new a.C0147a(this).b(true).f(Color.parseColor("#66000000")).a();
    }

    @Override // com.guochao.faceshow.aaspring.base.activity.BaseActivity
    public int getLayoutId() {
        return R.layout.activity_send_image_preview;
    }

    @Override // com.guochao.faceshow.aaspring.base.activity.BaseActivity
    public void initView() {
        if (getIntent() != null) {
            String stringExtra = getIntent().getStringExtra(Contants.PARAMS_KEY1);
            this.f16845g = getIntent().getIntExtra(Contants.PARAMS_KEY2, 9);
            this.f16849k = getIntent().getParcelableArrayListExtra(Contants.PARAMS_KEY3);
            this.f16850l = getIntent().getIntExtra(Contants.PARAMS_KEY3_POSITION, 0);
            this.f16851m = getIntent().getParcelableArrayListExtra(Contants.DOODLE_LIST);
            if (!TextUtils.isEmpty(stringExtra)) {
                this.f16844f = stringExtra;
            }
            this.f16852n = getIntent().getIntExtra("mediaType", 0);
        }
        setTitle("");
        TitleBackgroundView titleBackgroundView = (TitleBackgroundView) findViewById(R.id.float_title_back);
        titleBackgroundView.setBackgroundColor(Color.parseColor("#66000000"));
        titleBackgroundView.setBottomEnable(false);
        setLeftBackIcon(R.drawable.bitmap_ugc_back_white);
        setEndIcon(R.mipmap.icon_im_nochoice);
        v vVar = this.mTitleBarHelper;
        if (vVar != null) {
            vVar.setOnRightIconClickListener(new a());
        }
        this.mViewPager.addOnPageChangeListener(new b());
    }

    @Override // com.guochao.faceshow.aaspring.base.activity.BaseActivity
    public void loadData() {
        c cVar = new c();
        if (this.f16852n == 101) {
            MediaFileFinder.getInstance().observeImages(this, cVar, new d());
        } else {
            MediaFileFinder.getInstance().observeAllMedia(this, cVar, new e());
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.guochao.faceshow.aaspring.base.activity.BaseActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, android.app.Activity
    public void onActivityResult(int i9, int i10, @Nullable Intent intent) {
        super.onActivityResult(i9, i10, intent);
        if (i9 != 101 || intent == null) {
            return;
        }
        if (i10 != -1) {
            if (i10 == -111) {
                ToastUtils.showToast(getActivity(), getString(R.string.saved_error));
                return;
            }
            return;
        }
        String stringExtra = intent.getStringExtra("key_image_path");
        boolean booleanExtra = intent.getBooleanExtra("key_image_selectable", false);
        long longExtra = intent.getLongExtra("key_image_duration", 0L);
        if (TextUtils.isEmpty(stringExtra)) {
            return;
        }
        LocalImageOrVideoBean localImageOrVideoBean = new LocalImageOrVideoBean(1);
        localImageOrVideoBean.setPath(stringExtra);
        localImageOrVideoBean.setSelected(true);
        localImageOrVideoBean.setUri(Uri.fromFile(new File(stringExtra)));
        localImageOrVideoBean.setDuration(longExtra);
        localImageOrVideoBean.setSelectable(booleanExtra);
        if (booleanExtra) {
            for (LocalImageOrVideoBean localImageOrVideoBean2 : this.f16839a) {
                if (localImageOrVideoBean2 != null && !TextUtils.isEmpty(localImageOrVideoBean2.getPath()) && !localImageOrVideoBean2.getPath().equals(localImageOrVideoBean.getPath())) {
                    localImageOrVideoBean2.setSelected(false);
                }
            }
            this.f16843e.clear();
            this.f16843e.add(localImageOrVideoBean);
            localImageOrVideoBean.setSelectPosition(this.f16846h + 1);
            EventBus.getDefault().post(localImageOrVideoBean);
        }
        this.f16839a.add(this.f16846h + 1, localImageOrVideoBean);
        this.f16847i.a(this.f16846h + 1, ImagePreviewFragment.P1(localImageOrVideoBean));
        this.mViewPager.setCurrentItem(this.f16846h + 1);
        A0();
    }

    @Override // androidx.activity.ComponentActivity, android.app.Activity
    public void onBackPressed() {
        setResult(-1, new Intent().putParcelableArrayListExtra("data", this.f16843e));
        ActivityCompat.finishAfterTransition(this);
    }

    @OnClick
    public void send(View view) {
        if (this.f16843e.size() == 0) {
            this.f16843e.add(this.f16839a.get(this.f16846h));
        }
        if (!BaseApplication.getInstance().getString(R.string.send).equals(this.f16844f)) {
            MemoryCache.getInstance().put(ShareConstants.WEB_DIALOG_PARAM_MEDIA, this.f16843e);
            EventBus.getDefault().post("FINISH_IMAGE_EVENT");
            finish();
            return;
        }
        setResult(-1, new Intent().putParcelableArrayListExtra("data", this.f16843e).putExtra("send", 1));
        ActivityCompat.finishAfterTransition(this);
    }

    public boolean v0(LocalImageOrVideoBean localImageOrVideoBean) {
        if (!localImageOrVideoBean.isSelectable()) {
            showToast(R.string.File_is_too_large);
            return false;
        }
        if (!localImageOrVideoBean.isSelected()) {
            int size = this.f16843e.size();
            int i9 = this.f16845g;
            if (size >= i9) {
                showToast(getString(R.string.Select_count_over_limit, new Object[]{Integer.valueOf(i9)}));
                return false;
            }
        }
        if (!localImageOrVideoBean.isSelected()) {
            this.f16843e.add(localImageOrVideoBean);
        } else {
            this.f16843e.remove(localImageOrVideoBean);
        }
        localImageOrVideoBean.setSelected(!localImageOrVideoBean.isSelected());
        if (!localImageOrVideoBean.isSelected()) {
            setEndIcon(R.mipmap.icon_im_nochoice);
        } else {
            setEndIcon(R.mipmap.icon_im_selection);
        }
        A0();
        return true;
    }
}
