package com.guochao.faceshow.activity;

import android.content.Context;
import android.content.Intent;
import android.graphics.Color;
import android.os.Bundle;
import android.text.TextUtils;
import android.view.KeyEvent;
import android.view.View;
import android.view.animation.Animation;
import android.view.animation.AnimationUtils;
import android.widget.EditText;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ListAdapter;
import android.widget.ListView;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.guochao.faceshow.R;
import com.guochao.faceshow.aaspring.base.activity.BaseActivity;
import com.guochao.faceshow.aaspring.base.http.response.FaceCastBaseResponse;
import com.guochao.faceshow.aaspring.base.http.v2.GCRequestJava;
import com.guochao.faceshow.aaspring.base.http.v2.Response;
import com.guochao.faceshow.aaspring.modulars.push.ThirdPushHelper;
import com.guochao.faceshow.aaspring.utils.FilePathProvider;
import com.guochao.faceshow.aaspring.utils.ToastUtils;
import com.guochao.faceshow.bean.MusicBean;
import com.guochao.faceshow.bean.MusicList;
import com.guochao.faceshow.bean.MusicState;
import com.guochao.faceshow.utils.AAComAdapter;
import com.guochao.faceshow.utils.AAViewHolder;
import com.guochao.faceshow.utils.Contants;
import com.guochao.faceshow.utils.SoftKeyBoardUtils;
import com.lcodecore.tkrefreshlayout.TwinklingRefreshLayout;
import com.lcodecore.tkrefreshlayout.header.progresslayout.ProgressLayout;
import java.io.File;
import org.greenrobot.eventbus.EventBus;
/* loaded from: classes3.dex */
public class MusicResultActivity extends BaseActivity {

    /* renamed from: a  reason: collision with root package name */
    private ListView f24662a;

    /* renamed from: b  reason: collision with root package name */
    private TwinklingRefreshLayout f24663b;

    /* renamed from: d  reason: collision with root package name */
    private int f24665d;

    /* renamed from: e  reason: collision with root package name */
    private String f24666e;

    /* renamed from: h  reason: collision with root package name */
    private EditText f24669h;

    /* renamed from: i  reason: collision with root package name */
    private ImageView f24670i;

    /* renamed from: k  reason: collision with root package name */
    private AAComAdapter<MusicBean> f24672k;

    /* renamed from: o  reason: collision with root package name */
    private boolean f24676o;

    /* renamed from: q  reason: collision with root package name */
    private LinearLayout f24678q;

    /* renamed from: r  reason: collision with root package name */
    private ImageView f24679r;

    /* renamed from: c  reason: collision with root package name */
    private int f24664c = 1;

    /* renamed from: f  reason: collision with root package name */
    private String f24667f = "";

    /* renamed from: g  reason: collision with root package name */
    private String f24668g = "";

    /* renamed from: j  reason: collision with root package name */
    private boolean f24671j = false;

    /* renamed from: l  reason: collision with root package name */
    private boolean f24673l = true;

    /* renamed from: m  reason: collision with root package name */
    private int f24674m = -1;

    /* renamed from: n  reason: collision with root package name */
    private String f24675n = "";

    /* renamed from: p  reason: collision with root package name */
    private boolean f24677p = true;

    /* renamed from: s  reason: collision with root package name */
    public int f24680s = 500000;

    /* loaded from: classes3.dex */
    class a extends AAComAdapter<MusicBean> {

        /* JADX INFO: Access modifiers changed from: package-private */
        /* renamed from: com.guochao.faceshow.activity.MusicResultActivity$a$a  reason: collision with other inner class name */
        /* loaded from: classes3.dex */
        public class View$OnClickListenerC0239a implements View.OnClickListener {

            /* renamed from: a  reason: collision with root package name */
            final /* synthetic */ ImageView f24682a;

            /* renamed from: b  reason: collision with root package name */
            final /* synthetic */ MusicBean f24683b;

            View$OnClickListenerC0239a(ImageView imageView, MusicBean musicBean) {
                this.f24682a = imageView;
                this.f24683b = musicBean;
            }

            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                ImageView imageView = this.f24682a;
                imageView.setSelected(!imageView.isSelected());
                MusicResultActivity.this.T0(this.f24683b.musicId);
            }
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        /* loaded from: classes3.dex */
        public class b implements View.OnClickListener {

            /* renamed from: a  reason: collision with root package name */
            final /* synthetic */ int f24685a;

            /* renamed from: b  reason: collision with root package name */
            final /* synthetic */ ImageView f24686b;

            /* renamed from: c  reason: collision with root package name */
            final /* synthetic */ MusicBean f24687c;

            /* renamed from: d  reason: collision with root package name */
            final /* synthetic */ LinearLayout f24688d;

            /* renamed from: com.guochao.faceshow.activity.MusicResultActivity$a$b$a  reason: collision with other inner class name */
            /* loaded from: classes3.dex */
            class View$OnClickListenerC0240a implements View.OnClickListener {
                View$OnClickListenerC0240a() {
                }

                @Override // android.view.View.OnClickListener
                public void onClick(View view) {
                    Intent intent = new Intent();
                    intent.putExtra("music_url", MusicResultActivity.this.f24675n);
                    intent.putExtra("musicId", b.this.f24687c.musicId);
                    intent.putExtra("musicImg", b.this.f24687c.img);
                    intent.putExtra("musicName", b.this.f24687c.mname);
                    MusicResultActivity.this.setResult(-1, intent);
                    MusicResultActivity.this.finish();
                }
            }

            b(int i9, ImageView imageView, MusicBean musicBean, LinearLayout linearLayout) {
                this.f24685a = i9;
                this.f24686b = imageView;
                this.f24687c = musicBean;
                this.f24688d = linearLayout;
            }

            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                if (MusicResultActivity.this.f24673l) {
                    if (MusicResultActivity.this.f24674m == this.f24685a) {
                        if (MusicResultActivity.this.f24676o) {
                            this.f24686b.setImageResource(R.mipmap.stop_music);
                            EventBus.getDefault().post(new MusicState(100, ""));
                            MusicResultActivity.this.f24676o = false;
                        } else {
                            this.f24686b.setImageResource(R.mipmap.play_music);
                            EventBus.getDefault().post(new MusicState(102, ""));
                            MusicResultActivity.this.f24676o = true;
                        }
                    } else {
                        if (MusicResultActivity.this.f24678q != null) {
                            MusicResultActivity.this.f24678q.setVisibility(8);
                            EventBus.getDefault().post(new MusicState(103, ""));
                            MusicResultActivity.this.f24676o = false;
                        }
                        if (MusicResultActivity.this.f24679r != null) {
                            MusicResultActivity.this.f24679r.setImageResource(R.mipmap.stop_music);
                        }
                        MusicResultActivity.this.f24674m = this.f24685a;
                        MusicResultActivity musicResultActivity = MusicResultActivity.this;
                        musicResultActivity.f24675n = FilePathProvider.getMusicPath("Music") + File.separator + this.f24687c.musicId + ".mp3";
                        if (new File(MusicResultActivity.this.f24675n).exists()) {
                            this.f24686b.setImageResource(R.mipmap.play_music);
                            this.f24688d.setVisibility(0);
                            MusicResultActivity.this.f24678q = this.f24688d;
                            MusicResultActivity.this.f24679r = this.f24686b;
                            EventBus.getDefault().post(new MusicState(101, MusicResultActivity.this.f24675n));
                            MusicResultActivity.this.f24676o = true;
                        } else {
                            MusicResultActivity.this.f24673l = false;
                            MusicResultActivity musicResultActivity2 = MusicResultActivity.this;
                            MusicBean musicBean = this.f24687c;
                            musicResultActivity2.Q0(musicBean.url, musicBean.musicId, this.f24686b, this.f24688d);
                        }
                    }
                }
                this.f24688d.setOnClickListener(new View$OnClickListenerC0240a());
            }
        }

        a(Context context, int i9) {
            super(context, i9);
        }

        @Override // com.guochao.faceshow.utils.AAComAdapter
        /* renamed from: a */
        public void convert(AAViewHolder aAViewHolder, MusicBean musicBean) {
            aAViewHolder.setText(R.id.music_name, musicBean.mname);
            ImageView image = aAViewHolder.getImage(R.id.music_img);
            View view = aAViewHolder.getView(R.id.item);
            hc.a.r(image, musicBean.img, R.drawable.default_image, 4);
            aAViewHolder.setText(R.id.music_info, musicBean.introduce);
            ImageView image2 = aAViewHolder.getImage(R.id.checkbox);
            if (musicBean.collect == 0) {
                image2.setSelected(false);
            } else {
                image2.setSelected(true);
            }
            image2.setOnClickListener(new View$OnClickListenerC0239a(image2, musicBean));
            LinearLayout line = aAViewHolder.getLine(R.id.useMusic);
            ImageView image3 = aAViewHolder.getImage(R.id.play_icon);
            int position = aAViewHolder.getPosition();
            if (MusicResultActivity.this.f24674m == position) {
                image3.setImageResource(R.mipmap.play_music);
                line.setVisibility(0);
                view.setBackgroundColor(Color.parseColor("#F9F9F9"));
            } else {
                line.setVisibility(8);
                aAViewHolder.setImgResourceId(R.id.play_icon, R.mipmap.stop_music);
                view.setBackgroundColor(Color.parseColor("#FFFFFF"));
            }
            aAViewHolder.getView(R.id.item).setOnClickListener(new b(position, image3, musicBean, line));
        }
    }

    /* loaded from: classes3.dex */
    class b extends kc.f {
        b() {
        }

        @Override // kc.f, kc.e
        public void b(TwinklingRefreshLayout twinklingRefreshLayout) {
            MusicResultActivity.this.f24664c = 1;
            MusicResultActivity.this.f24674m = -1;
            EventBus.getDefault().post(new MusicState(103, ""));
            MusicResultActivity.this.S0();
        }

        @Override // kc.f, kc.e
        public void e(TwinklingRefreshLayout twinklingRefreshLayout) {
            if (MusicResultActivity.this.f24664c < MusicResultActivity.this.f24665d) {
                MusicResultActivity.N0(MusicResultActivity.this);
                MusicResultActivity.this.S0();
                return;
            }
            twinklingRefreshLayout.B(true);
        }
    }

    /* loaded from: classes3.dex */
    class c implements View.OnClickListener {
        c() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            SoftKeyBoardUtils.closeSoftKeyBoard(MusicResultActivity.this.getActivity(), MusicResultActivity.this.f24669h);
            MusicResultActivity musicResultActivity = MusicResultActivity.this;
            musicResultActivity.f24667f = musicResultActivity.f24669h.getText().toString().trim();
            if (TextUtils.isEmpty(MusicResultActivity.this.f24667f)) {
                MusicResultActivity musicResultActivity2 = MusicResultActivity.this;
                ToastUtils.showToast(musicResultActivity2, musicResultActivity2.getString(R.string.search_keyword));
                return;
            }
            MusicResultActivity.this.f24671j = true;
            MusicResultActivity.this.f24664c = 1;
            MusicResultActivity.this.S0();
        }
    }

    /* loaded from: classes3.dex */
    class d implements TextView.OnEditorActionListener {
        d() {
        }

        @Override // android.widget.TextView.OnEditorActionListener
        public boolean onEditorAction(TextView textView, int i9, KeyEvent keyEvent) {
            if ((i9 == 0 || i9 == 3) && keyEvent != null) {
                MusicResultActivity musicResultActivity = MusicResultActivity.this;
                musicResultActivity.f24667f = musicResultActivity.f24669h.getText().toString().trim();
                if (TextUtils.isEmpty(MusicResultActivity.this.f24667f)) {
                    MusicResultActivity musicResultActivity2 = MusicResultActivity.this;
                    ToastUtils.showToast(musicResultActivity2, musicResultActivity2.getString(R.string.search_keyword));
                    return true;
                }
                MusicResultActivity.this.f24671j = true;
                MusicResultActivity.this.f24664c = 1;
                MusicResultActivity.this.S0();
                return true;
            }
            return false;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class e implements GCRequestJava.c<Object> {
        e() {
        }

        @Override // com.guochao.faceshow.aaspring.base.http.v2.GCRequestJava.c
        public void a(Response<Object> response) {
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class f implements GCRequestJava.d<MusicList> {
        f() {
        }

        @Override // com.guochao.faceshow.aaspring.base.http.v2.GCRequestJava.d
        public void a(@NonNull Response<MusicList> response) {
            MusicList data = response.getData();
            if (data != null) {
                MusicResultActivity.this.f24665d = data.total;
                if (MusicResultActivity.this.f24664c == 1) {
                    MusicResultActivity.this.f24672k.resetData(data.list);
                } else {
                    MusicResultActivity.this.f24672k.addData(data.list);
                }
                if (MusicResultActivity.this.f24664c > MusicResultActivity.this.f24665d) {
                    MusicResultActivity.this.f24663b.setEnableLoadmore(false);
                } else {
                    MusicResultActivity.this.f24663b.setEnableLoadmore(true);
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class g extends com.guochao.faceshow.aaspring.base.http.callback.d<File> {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ ImageView f24696a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ LinearLayout f24697b;

        g(ImageView imageView, LinearLayout linearLayout) {
            this.f24696a = imageView;
            this.f24697b = linearLayout;
        }

        @Override // com.guochao.faceshow.aaspring.base.http.callback.c, com.guochao.faceshow.aaspring.base.http.callback.b
        public void onCompleted() {
            super.onCompleted();
            MusicResultActivity.this.f24673l = true;
            this.f24696a.clearAnimation();
        }

        @Override // com.guochao.faceshow.aaspring.base.http.callback.c
        public void onFailure(@NonNull g7.a<File> aVar) {
            this.f24696a.clearAnimation();
            this.f24696a.setImageResource(R.mipmap.stop_music);
        }

        @Override // com.guochao.faceshow.aaspring.base.http.callback.d
        public void onProgress(long j10, long j11, double d10) {
        }

        @Override // com.guochao.faceshow.aaspring.base.http.callback.c
        public /* bridge */ /* synthetic */ void onResponse(@Nullable Object obj, @NonNull FaceCastBaseResponse faceCastBaseResponse) {
            onResponse((File) obj, (FaceCastBaseResponse<File>) faceCastBaseResponse);
        }

        public void onResponse(@Nullable File file, @NonNull FaceCastBaseResponse<File> faceCastBaseResponse) {
            this.f24696a.setImageResource(R.mipmap.play_music);
            this.f24697b.setVisibility(0);
            MusicResultActivity.this.f24678q = this.f24697b;
            MusicResultActivity.this.f24679r = this.f24696a;
            if (MusicResultActivity.this.f24677p) {
                EventBus.getDefault().post(new MusicState(101, MusicResultActivity.this.f24675n));
                MusicResultActivity.this.f24676o = true;
            }
        }
    }

    static /* synthetic */ int N0(MusicResultActivity musicResultActivity) {
        int i9 = musicResultActivity.f24664c;
        musicResultActivity.f24664c = i9 + 1;
        return i9;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void Q0(String str, String str2, ImageView imageView, LinearLayout linearLayout) {
        Animation loadAnimation = AnimationUtils.loadAnimation(this, R.anim.roatate_anim);
        imageView.setImageResource(R.mipmap.music_loading);
        imageView.startAnimation(loadAnimation);
        com.guochao.faceshow.aaspring.base.http.client.a httpClient = getHttpClient();
        httpClient.a(null, str, FilePathProvider.getMusicPath("Music") + File.separator + str2 + ".mp3", new g(imageView, linearLayout));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void S0() {
        GCRequestJava gCRequestJava = new GCRequestJava(Contants.GETALLMUSIC);
        gCRequestJava.putBody("page", this.f24664c + "").putBody("limit", ThirdPushHelper.TYPE_XIAOMI_CHINA).putBody("mname", this.f24667f).putBody("type_id", this.f24666e).j(new f()).d(new e()).request();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void T0(String str) {
        new GCRequestJava(Contants.saveOrDelete).putBody("musicId", str).request();
    }

    @Override // com.guochao.faceshow.aaspring.base.activity.BaseActivity
    public int getLayoutId() {
        return R.layout.activity_music_result;
    }

    @Override // com.guochao.faceshow.aaspring.base.activity.BaseActivity
    public void initView() {
        View inflate = View.inflate(this, R.layout.layout_header, null);
        this.f24669h = (EditText) inflate.findViewById(R.id.search_et);
        this.f24670i = (ImageView) inflate.findViewById(R.id.search);
        this.f24662a = (ListView) findViewById(R.id.mRecyclerView);
        this.f24663b = (TwinklingRefreshLayout) findViewById(R.id.refreshLayout);
        this.f24669h.setHint(getResources().getString(R.string.please_enter_music_type));
        this.f24662a.addHeaderView(inflate);
        a aVar = new a(this, R.layout.item_music_try);
        this.f24672k = aVar;
        this.f24662a.setAdapter((ListAdapter) aVar);
        this.f24663b.setHeaderView(new ProgressLayout(this));
        this.f24663b.setFloatRefresh(true);
        this.f24663b.setEnableOverScroll(false);
        this.f24663b.setHeaderHeight(120.0f);
        this.f24663b.setMaxHeadHeight(200.0f);
        this.f24663b.setEnableRefresh(false);
        this.f24663b.setOnRefreshListener(new b());
        S0();
        this.f24670i.setOnClickListener(new c());
        this.f24669h.setOnEditorActionListener(new d());
        this.mTitleBarHelper.f();
    }

    @Override // com.guochao.faceshow.aaspring.base.activity.BaseActivity
    public void loadData() {
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.guochao.faceshow.aaspring.base.activity.BaseActivity, com.guochao.faceshow.aaspring.base.mvvm.activity.GCCoreActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        this.f24666e = getIntent().getStringExtra("type_id");
        super.onCreate(bundle);
        getWindow().setSoftInputMode(3);
        setTitle(getString(R.string.find));
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.guochao.faceshow.aaspring.base.activity.BaseActivity, com.guochao.faceshow.aaspring.base.mvvm.activity.GCCoreActivity, androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onDestroy() {
        super.onDestroy();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onPause() {
        super.onPause();
        this.f24677p = false;
        if (this.f24676o) {
            EventBus.getDefault().post(new MusicState(100, ""));
        }
        ImageView imageView = this.f24679r;
        if (imageView != null) {
            imageView.setImageResource(R.mipmap.stop_music);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.guochao.faceshow.aaspring.base.activity.BaseActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onResume() {
        super.onResume();
        this.f24677p = true;
    }
}
