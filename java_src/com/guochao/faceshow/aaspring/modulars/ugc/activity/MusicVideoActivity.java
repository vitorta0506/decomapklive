package com.guochao.faceshow.aaspring.modulars.ugc.activity;

import android.content.ComponentName;
import android.content.Intent;
import android.content.ServiceConnection;
import android.graphics.Color;
import android.os.Bundle;
import android.os.Handler;
import android.os.IBinder;
import android.os.Message;
import android.text.TextUtils;
import android.view.View;
import android.view.animation.Animation;
import android.view.animation.AnimationUtils;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentManager;
import androidx.fragment.app.FragmentPagerAdapter;
import androidx.lifecycle.ViewModelProvider;
import androidx.viewpager.widget.ViewPager;
import butterknife.BindView;
import butterknife.OnClick;
import com.guochao.faceshow.R;
import com.guochao.faceshow.aaspring.base.activity.BaseActivity;
import com.guochao.faceshow.aaspring.base.activity.a;
import com.guochao.faceshow.aaspring.base.http.response.FaceCastBaseResponse;
import com.guochao.faceshow.aaspring.base.http.v2.GCRequestJava;
import com.guochao.faceshow.aaspring.base.http.v2.Response;
import com.guochao.faceshow.aaspring.modulars.main.viewmodel.ShortVideoViewModel;
import com.guochao.faceshow.aaspring.modulars.onevone.face2face.FaceToFaceFloatWindowManager;
import com.guochao.faceshow.aaspring.modulars.ugc.fragment.MusicVideoFragment;
import com.guochao.faceshow.aaspring.utils.DisableDoubleClickUtils;
import com.guochao.faceshow.aaspring.utils.FilePathProvider;
import com.guochao.faceshow.aaspring.utils.Formatter;
import com.guochao.faceshow.aaspring.utils.ToastUtils;
import com.guochao.faceshow.aaspring.views.TabLayout;
import com.guochao.faceshow.aaspring.views.v;
import com.guochao.faceshow.activity.TCVideoRecordActivity;
import com.guochao.faceshow.bean.FirstSixBean;
import com.guochao.faceshow.service.MediaService;
import com.guochao.faceshow.utils.Contants;
import java.io.File;
import java.util.ArrayList;
import java.util.List;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
/* loaded from: classes3.dex */
public class MusicVideoActivity extends BaseActivity {

    /* renamed from: a  reason: collision with root package name */
    private String f22260a;

    /* renamed from: d  reason: collision with root package name */
    public String f22263d;

    /* renamed from: e  reason: collision with root package name */
    private String f22264e;

    /* renamed from: f  reason: collision with root package name */
    private double f22265f;

    /* renamed from: l  reason: collision with root package name */
    private String f22271l;
    @BindView
    TabLayout mTabLayout;
    @BindView
    TextView mTextViewCount;
    @BindView
    TextView mTextViewCreator;
    @BindView
    ViewPager mViewPager;
    @BindView
    ImageView music_img;

    /* renamed from: n  reason: collision with root package name */
    private MediaService.a f22273n;
    @BindView
    ImageView play_icon;

    /* renamed from: b  reason: collision with root package name */
    private String f22261b = "";

    /* renamed from: c  reason: collision with root package name */
    private String f22262c = "";

    /* renamed from: g  reason: collision with root package name */
    private boolean f22266g = true;

    /* renamed from: h  reason: collision with root package name */
    private String f22267h = "";

    /* renamed from: i  reason: collision with root package name */
    private boolean f22268i = true;

    /* renamed from: j  reason: collision with root package name */
    private int f22269j = 0;

    /* renamed from: k  reason: collision with root package name */
    public int f22270k = 0;

    /* renamed from: m  reason: collision with root package name */
    private Handler f22272m = new a();

    /* renamed from: o  reason: collision with root package name */
    private ServiceConnection f22274o = new c();

    /* loaded from: classes3.dex */
    class a extends Handler {
        a() {
        }

        @Override // android.os.Handler
        public void handleMessage(Message message) {
            switch (message.what) {
                case 100:
                    MusicVideoActivity.this.f22273n.c();
                    MusicVideoActivity.this.f22270k = 2;
                    return;
                case 101:
                    MusicVideoActivity.this.f22273n.b(MusicVideoActivity.this.f22267h);
                    MusicVideoActivity.this.f22270k = 1;
                    return;
                case 102:
                    MusicVideoActivity.this.f22273n.d();
                    MusicVideoActivity.this.f22270k = 1;
                    return;
                default:
                    return;
            }
        }
    }

    /* loaded from: classes3.dex */
    class b extends v.d {
        b() {
        }

        @Override // com.guochao.faceshow.aaspring.views.v.d
        public void onFirstIconClick(View view) {
            if (DisableDoubleClickUtils.canClick(view)) {
                MusicVideoActivity.this.E0();
            }
        }
    }

    /* loaded from: classes3.dex */
    class c implements ServiceConnection {
        c() {
        }

        @Override // android.content.ServiceConnection
        public void onServiceConnected(ComponentName componentName, IBinder iBinder) {
            MusicVideoActivity.this.f22273n = (MediaService.a) iBinder;
        }

        @Override // android.content.ServiceConnection
        public void onServiceDisconnected(ComponentName componentName) {
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class d implements Function1<Response<FirstSixBean>, Unit> {
        d() {
        }

        @Override // kotlin.jvm.functions.Function1
        /* renamed from: a */
        public Unit invoke(Response<FirstSixBean> response) {
            if (response != null && response.getData() != null) {
                FirstSixBean data = response.getData();
                if (data != null) {
                    if (!TextUtils.isEmpty(data.getAvatarUrl()) || data.getAvatarUrl() == null) {
                        hc.a.j(MusicVideoActivity.this.music_img, data.getAvatarUrl());
                    }
                    int i9 = data.useNum;
                    if (i9 > 10000) {
                        MusicVideoActivity.this.f22265f = i9 / 10000.0d;
                        TextView textView = MusicVideoActivity.this.mTextViewCount;
                        textView.setText(Formatter.priceFormat(MusicVideoActivity.this.f22265f) + "w " + MusicVideoActivity.this.getString(R.string.cy_topic_count));
                    } else if (i9 > 1000) {
                        MusicVideoActivity.this.f22265f = i9 / 1000.0d;
                        TextView textView2 = MusicVideoActivity.this.mTextViewCount;
                        textView2.setText(Formatter.priceFormat(MusicVideoActivity.this.f22265f) + "K " + MusicVideoActivity.this.getString(R.string.cy_topic_count));
                    } else {
                        TextView textView3 = MusicVideoActivity.this.mTextViewCount;
                        textView3.setText(data.useNum + " " + MusicVideoActivity.this.getString(R.string.cy_topic_count));
                    }
                    MusicVideoActivity.this.f22269j = data.collect;
                    MusicVideoActivity musicVideoActivity = MusicVideoActivity.this;
                    musicVideoActivity.v0(musicVideoActivity.f22269j);
                }
                return Unit.INSTANCE;
            }
            return Unit.INSTANCE;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class e extends com.guochao.faceshow.aaspring.base.http.callback.d<File> {
        e() {
        }

        @Override // com.guochao.faceshow.aaspring.base.http.callback.c, com.guochao.faceshow.aaspring.base.http.callback.b
        public void onCompleted() {
            super.onCompleted();
            if (MusicVideoActivity.this.isDestroyed() || MusicVideoActivity.this.isFinishing()) {
                return;
            }
            MusicVideoActivity.this.f22266g = true;
            MusicVideoActivity.this.play_icon.clearAnimation();
        }

        @Override // com.guochao.faceshow.aaspring.base.http.callback.c
        public void onFailure(@NonNull g7.a<File> aVar) {
            if (MusicVideoActivity.this.isDestroyed() || MusicVideoActivity.this.isFinishing()) {
                return;
            }
            MusicVideoActivity.this.play_icon.clearAnimation();
            MusicVideoActivity.this.play_icon.setImageResource(R.drawable.ic_video_play);
        }

        @Override // com.guochao.faceshow.aaspring.base.http.callback.d
        public void onProgress(long j10, long j11, double d10) {
        }

        @Override // com.guochao.faceshow.aaspring.base.http.callback.c
        public /* bridge */ /* synthetic */ void onResponse(@Nullable Object obj, @NonNull FaceCastBaseResponse faceCastBaseResponse) {
            onResponse((File) obj, (FaceCastBaseResponse<File>) faceCastBaseResponse);
        }

        public void onResponse(@Nullable File file, @NonNull FaceCastBaseResponse<File> faceCastBaseResponse) {
            if (MusicVideoActivity.this.isDestroyed() || MusicVideoActivity.this.isFinishing()) {
                return;
            }
            MusicVideoActivity.this.play_icon.setImageResource(R.drawable.ic_video_pause);
            if (MusicVideoActivity.this.f22268i) {
                MusicVideoActivity.this.f22272m.sendEmptyMessage(101);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class f implements GCRequestJava.c<Object> {
        f() {
        }

        @Override // com.guochao.faceshow.aaspring.base.http.v2.GCRequestJava.c
        public void a(Response<Object> response) {
            MusicVideoActivity.this.mTitleBarHelper.r(true);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class g implements GCRequestJava.d<Object> {
        g() {
        }

        @Override // com.guochao.faceshow.aaspring.base.http.v2.GCRequestJava.d
        public void a(@NonNull Response<Object> response) {
            if (MusicVideoActivity.this.f22269j == 0) {
                MusicVideoActivity.this.f22269j = 1;
                MusicVideoActivity.this.v0(1);
                return;
            }
            MusicVideoActivity.this.f22269j = 0;
            MusicVideoActivity.this.v0(0);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class h extends com.guochao.faceshow.aaspring.base.http.callback.d<File> {
        h() {
        }

        @Override // com.guochao.faceshow.aaspring.base.http.callback.c, com.guochao.faceshow.aaspring.base.http.callback.b
        public void onCompleted() {
            super.onCompleted();
            MusicVideoActivity.this.dismissProgressDialog();
        }

        @Override // com.guochao.faceshow.aaspring.base.http.callback.c
        public void onFailure(@NonNull g7.a<File> aVar) {
            MusicVideoActivity musicVideoActivity = MusicVideoActivity.this;
            ToastUtils.showToast(musicVideoActivity, musicVideoActivity.getString(R.string.download_fail));
        }

        @Override // com.guochao.faceshow.aaspring.base.http.callback.d
        public void onProgress(long j10, long j11, double d10) {
        }

        @Override // com.guochao.faceshow.aaspring.base.http.callback.c
        public /* bridge */ /* synthetic */ void onResponse(@Nullable Object obj, @NonNull FaceCastBaseResponse faceCastBaseResponse) {
            onResponse((File) obj, (FaceCastBaseResponse<File>) faceCastBaseResponse);
        }

        public void onResponse(@Nullable File file, @NonNull FaceCastBaseResponse<File> faceCastBaseResponse) {
            Intent intent = new Intent(MusicVideoActivity.this, TCVideoRecordActivity.class);
            intent.putExtra("from", 3);
            intent.putExtra("musicPath", file.getAbsolutePath());
            intent.putExtra("musicId", MusicVideoActivity.this.f22261b);
            intent.putExtra("musicName", MusicVideoActivity.this.f22271l);
            intent.putExtra("type_id", MusicVideoActivity.this.f22260a);
            intent.putExtra("tyPeName", MusicVideoActivity.this.f22264e);
            MusicVideoActivity.this.startActivity(intent);
        }
    }

    /* loaded from: classes3.dex */
    class i extends FragmentPagerAdapter {

        /* renamed from: a  reason: collision with root package name */
        List<String> f22283a;

        public i(@NonNull FragmentManager fragmentManager) {
            super(fragmentManager);
            ArrayList arrayList = new ArrayList();
            this.f22283a = arrayList;
            arrayList.add(MusicVideoActivity.this.getString(R.string.worldhot));
            this.f22283a.add(MusicVideoActivity.this.getString(R.string.countryhot));
            this.f22283a.add(MusicVideoActivity.this.getString(R.string.new_video));
        }

        @Override // androidx.viewpager.widget.PagerAdapter
        public int getCount() {
            return this.f22283a.size();
        }

        @Override // androidx.fragment.app.FragmentPagerAdapter
        @NonNull
        public Fragment getItem(int i9) {
            return MusicVideoFragment.R1(i9, MusicVideoActivity.this.f22261b, MusicVideoActivity.this.f22271l);
        }

        @Override // androidx.viewpager.widget.PagerAdapter
        @Nullable
        public CharSequence getPageTitle(int i9) {
            return this.f22283a.get(i9);
        }
    }

    private void A0(String str, String str2) {
        showProgressDialog("");
        com.guochao.faceshow.aaspring.base.http.client.a httpClient = getHttpClient();
        httpClient.a(null, str, FilePathProvider.getMusicPath("Music") + File.separator + this.f22261b + ".mp3", new h());
    }

    private void B0() {
        ((ShortVideoViewModel) new ViewModelProvider(this).get(ShortVideoViewModel.class)).intoMusic(this.f22261b, new d());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void E0() {
        new GCRequestJava(Contants.saveOrDelete).putBody("musicId", this.f22261b).j(new g()).d(new f()).request();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void v0(int i9) {
        if (i9 == 0) {
            setEndIcon(R.mipmap.video_mus_collect_);
        } else {
            setEndIcon(R.mipmap.video_mus_collect_sel);
        }
    }

    private void y0(String str, String str2) {
        Animation loadAnimation = AnimationUtils.loadAnimation(this, R.anim.roatate_anim);
        this.play_icon.setImageResource(R.mipmap.music_loading);
        this.play_icon.startAnimation(loadAnimation);
        com.guochao.faceshow.aaspring.base.http.client.a httpClient = getHttpClient();
        httpClient.a(null, str, FilePathProvider.getMusicPath("Music") + File.separator + str2 + ".mp3", new e());
    }

    @Override // com.guochao.faceshow.aaspring.base.activity.BaseActivity
    public com.guochao.faceshow.aaspring.base.activity.a getActivityConfig() {
        return new a.C0147a(this).b(true).f(Color.parseColor("#F4F6F9")).a();
    }

    @Override // com.guochao.faceshow.aaspring.base.activity.BaseActivity
    public int getLayoutId() {
        return R.layout.activity_video_types;
    }

    @Override // com.guochao.faceshow.aaspring.base.activity.BaseActivity
    public void initView() {
    }

    @OnClick
    public void join(View view) {
        if (FaceToFaceFloatWindowManager.getInstance().isFaceToFaceFloatShowing()) {
            showToast(R.string.one_v_one_is_matching);
        } else if (!TextUtils.isEmpty(this.f22267h)) {
            Intent intent = new Intent(this, TCVideoRecordActivity.class);
            intent.putExtra("from", 3);
            intent.putExtra("musicPath", this.f22267h);
            intent.putExtra("musicId", this.f22261b);
            intent.putExtra("musicName", this.f22271l);
            intent.putExtra("type_id", this.f22260a);
            intent.putExtra("tyPeName", this.f22264e);
            startActivity(intent);
        } else {
            A0(this.f22262c, this.f22261b);
        }
    }

    @Override // com.guochao.faceshow.aaspring.base.activity.BaseActivity
    public void loadData() {
        setEndIcon(R.mipmap.video_mus_collect_);
        v vVar = this.mTitleBarHelper;
        if (vVar != null) {
            vVar.r(false);
            this.mTitleBarHelper.setOnRightIconClickListener(new b());
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.guochao.faceshow.aaspring.base.activity.BaseActivity, com.guochao.faceshow.aaspring.base.mvvm.activity.GCCoreActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        Intent intent = getIntent();
        this.f22260a = intent.getStringExtra("type_id");
        this.f22261b = intent.getStringExtra("musicId");
        this.f22271l = intent.getStringExtra("musicName");
        this.f22263d = intent.getStringExtra("titleName");
        this.f22264e = intent.getStringExtra("tyPeName");
        this.f22262c = intent.getStringExtra("musicUrl");
        super.onCreate(bundle);
        setTitle(this.f22263d);
        this.mTextViewCreator.setText(this.f22263d);
        bindService(new Intent(this, MediaService.class), this.f22274o, 1);
        B0();
        this.mViewPager.setAdapter(new i(getSupportFragmentManager()));
        this.mTabLayout.setupWithViewPager(this.mViewPager);
        setLightStatusBar(true);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.guochao.faceshow.aaspring.base.activity.BaseActivity, com.guochao.faceshow.aaspring.base.mvvm.activity.GCCoreActivity, androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onDestroy() {
        super.onDestroy();
        MediaService.a aVar = this.f22273n;
        if (aVar != null) {
            aVar.a();
        }
        unbindService(this.f22274o);
        this.f22272m.removeCallbacksAndMessages(null);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onPause() {
        super.onPause();
        this.f22268i = false;
        if (this.f22270k == 1) {
            this.f22272m.sendEmptyMessage(100);
        }
        ImageView imageView = this.play_icon;
        if (imageView != null) {
            imageView.setImageResource(R.drawable.ic_video_play);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.guochao.faceshow.aaspring.base.activity.BaseActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onResume() {
        super.onResume();
        this.f22268i = true;
    }

    @OnClick
    public void useMusic(View view) {
        if (this.f22266g) {
            int i9 = this.f22270k;
            if (i9 != 0) {
                if (i9 == 1) {
                    this.play_icon.setImageResource(R.drawable.ic_video_play);
                    this.f22272m.sendEmptyMessage(100);
                    return;
                } else if (i9 == 2) {
                    this.play_icon.setImageResource(R.drawable.ic_video_pause);
                    this.f22272m.sendEmptyMessage(102);
                    return;
                } else {
                    return;
                }
            }
            this.f22267h = FilePathProvider.getMusicPath("Music") + File.separator + this.f22261b + ".mp3";
            if (new File(this.f22267h).exists()) {
                this.play_icon.setImageResource(R.drawable.ic_video_pause);
                this.f22272m.sendEmptyMessage(101);
                return;
            }
            this.f22266g = false;
            y0(this.f22262c, this.f22261b);
        }
    }
}
