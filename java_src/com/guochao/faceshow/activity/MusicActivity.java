package com.guochao.faceshow.activity;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
import android.graphics.Color;
import android.graphics.Typeface;
import android.os.Bundle;
import android.os.Handler;
import android.os.IBinder;
import android.os.Message;
import android.text.Editable;
import android.text.TextUtils;
import android.text.TextWatcher;
import android.view.KeyEvent;
import android.view.View;
import android.view.animation.Animation;
import android.view.animation.AnimationUtils;
import android.widget.EditText;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ListAdapter;
import android.widget.ListView;
import android.widget.RadioButton;
import android.widget.RadioGroup;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.recyclerview.widget.GridLayoutManager;
import androidx.recyclerview.widget.LinearLayoutManager;
import butterknife.OnClick;
import com.guochao.faceshow.R;
import com.guochao.faceshow.aaspring.base.activity.BaseActivity;
import com.guochao.faceshow.aaspring.base.activity.a;
import com.guochao.faceshow.aaspring.base.http.response.FaceCastBaseResponse;
import com.guochao.faceshow.aaspring.base.http.v2.GCRequest;
import com.guochao.faceshow.aaspring.base.http.v2.GCRequestJava;
import com.guochao.faceshow.aaspring.base.http.v2.Response;
import com.guochao.faceshow.aaspring.modulars.push.ThirdPushHelper;
import com.guochao.faceshow.aaspring.utils.FilePathProvider;
import com.guochao.faceshow.aaspring.utils.ToastUtils;
import com.guochao.faceshow.activity.MusicActivity;
import com.guochao.faceshow.adapter.ZZ_RecycleAdapter;
import com.guochao.faceshow.bean.CollectMusicData;
import com.guochao.faceshow.bean.MusicBean;
import com.guochao.faceshow.bean.MusicList;
import com.guochao.faceshow.bean.MusicState;
import com.guochao.faceshow.bean.MusicType;
import com.guochao.faceshow.bean.MusicTypeList;
import com.guochao.faceshow.service.MediaService;
import com.guochao.faceshow.utils.AAComAdapter;
import com.guochao.faceshow.utils.AAImageUtil;
import com.guochao.faceshow.utils.AAViewHolder;
import com.guochao.faceshow.utils.Contants;
import com.guochao.faceshow.utils.SoftKeyBoardUtils;
import com.lcodecore.tkrefreshlayout.TwinklingRefreshLayout;
import com.lcodecore.tkrefreshlayout.header.progresslayout.ProgressLayout;
import com.yanzhenjie.recyclerview.swipe.SwipeMenuRecyclerView;
import java.io.File;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import org.greenrobot.eventbus.EventBus;
import org.greenrobot.eventbus.Subscribe;
import org.greenrobot.eventbus.ThreadMode;
/* loaded from: classes3.dex */
public class MusicActivity extends BaseActivity {
    private boolean A;
    private RadioButton D;
    private LinearLayout E;
    private MediaService.a F;
    AAComAdapter H;

    /* renamed from: a  reason: collision with root package name */
    private SwipeMenuRecyclerView f24589a;

    /* renamed from: b  reason: collision with root package name */
    private TwinklingRefreshLayout f24590b;

    /* renamed from: c  reason: collision with root package name */
    private TwinklingRefreshLayout f24591c;

    /* renamed from: d  reason: collision with root package name */
    private ListView f24592d;

    /* renamed from: e  reason: collision with root package name */
    private ZZ_RecycleAdapter<MusicType> f24593e;

    /* renamed from: f  reason: collision with root package name */
    private RadioButton f24594f;

    /* renamed from: g  reason: collision with root package name */
    private RadioButton f24595g;

    /* renamed from: h  reason: collision with root package name */
    private RadioGroup f24596h;

    /* renamed from: j  reason: collision with root package name */
    private int f24598j;

    /* renamed from: k  reason: collision with root package name */
    private int f24599k;

    /* renamed from: m  reason: collision with root package name */
    private int f24601m;

    /* renamed from: n  reason: collision with root package name */
    private EditText f24602n;

    /* renamed from: o  reason: collision with root package name */
    private ImageView f24603o;

    /* renamed from: r  reason: collision with root package name */
    private ListView f24606r;

    /* renamed from: s  reason: collision with root package name */
    private TwinklingRefreshLayout f24607s;

    /* renamed from: t  reason: collision with root package name */
    private AAComAdapter<MusicBean> f24608t;

    /* renamed from: w  reason: collision with root package name */
    private LinearLayout f24611w;

    /* renamed from: x  reason: collision with root package name */
    private ImageView f24612x;

    /* renamed from: i  reason: collision with root package name */
    private int f24597i = 1;

    /* renamed from: l  reason: collision with root package name */
    private int f24600l = 1;

    /* renamed from: p  reason: collision with root package name */
    private String f24604p = "";

    /* renamed from: q  reason: collision with root package name */
    private boolean f24605q = false;

    /* renamed from: u  reason: collision with root package name */
    private int f24609u = -1;

    /* renamed from: v  reason: collision with root package name */
    private int f24610v = -1;

    /* renamed from: y  reason: collision with root package name */
    private String f24613y = "";

    /* renamed from: z  reason: collision with root package name */
    public boolean f24614z = true;
    private Handler B = new j();
    private boolean C = true;
    private ServiceConnection G = new k();

    /* loaded from: classes3.dex */
    class a implements TextView.OnEditorActionListener {
        a() {
        }

        @Override // android.widget.TextView.OnEditorActionListener
        public boolean onEditorAction(TextView textView, int i9, KeyEvent keyEvent) {
            if ((i9 == 0 || i9 == 3) && keyEvent != null) {
                MusicActivity musicActivity = MusicActivity.this;
                musicActivity.f24604p = musicActivity.f24602n.getText().toString().trim();
                if (TextUtils.isEmpty(MusicActivity.this.f24604p)) {
                    MusicActivity musicActivity2 = MusicActivity.this;
                    ToastUtils.showToast(musicActivity2, musicActivity2.getString(R.string.search_keyword));
                    MusicActivity.this.f24591c.setVisibility(8);
                    MusicActivity.this.f24590b.setVisibility(0);
                    MusicActivity.this.f24605q = false;
                    return true;
                }
                MusicActivity.this.f24590b.setVisibility(8);
                MusicActivity.this.f24591c.setVisibility(0);
                MusicActivity.this.f24605q = true;
                MusicActivity.this.f24597i = 1;
                MusicActivity musicActivity3 = MusicActivity.this;
                musicActivity3.t1(musicActivity3.f24604p);
                return true;
            }
            return false;
        }
    }

    /* loaded from: classes3.dex */
    class b implements TextWatcher {
        b() {
        }

        @Override // android.text.TextWatcher
        public void afterTextChanged(Editable editable) {
            if (TextUtils.isEmpty(MusicActivity.this.f24602n.getText().toString())) {
                MusicActivity.this.f24591c.setVisibility(8);
                MusicActivity.this.f24605q = false;
                MusicActivity.this.f24590b.setVisibility(0);
            }
        }

        @Override // android.text.TextWatcher
        public void beforeTextChanged(CharSequence charSequence, int i9, int i10, int i11) {
        }

        @Override // android.text.TextWatcher
        public void onTextChanged(CharSequence charSequence, int i9, int i10, int i11) {
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class c implements Function1<GCRequest, Unit> {
        c() {
        }

        @Override // kotlin.jvm.functions.Function1
        /* renamed from: a */
        public Unit invoke(GCRequest gCRequest) {
            MusicActivity.this.f24590b.D();
            MusicActivity.this.f24590b.C();
            return Unit.INSTANCE;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class d implements GCRequestJava.d<MusicTypeList.Page> {
        d() {
        }

        @Override // com.guochao.faceshow.aaspring.base.http.v2.GCRequestJava.d
        public void a(@NonNull Response<MusicTypeList.Page> response) {
            MusicTypeList.Page data;
            if (response == null || (data = response.getData()) == null) {
                return;
            }
            MusicActivity.this.f24598j = data.totalPage;
            if (MusicActivity.this.f24597i == 1) {
                if (data.list.size() == 0) {
                    MusicActivity.this.f24589a.setLayoutManager(new LinearLayoutManager(MusicActivity.this));
                } else {
                    MusicActivity.this.f24589a.setLayoutManager(new GridLayoutManager(MusicActivity.this, 3));
                }
                MusicActivity.this.f24593e.resetData(data.list);
            } else {
                MusicActivity.this.f24593e.addData(data.list);
            }
            if (MusicActivity.this.f24597i > MusicActivity.this.f24598j) {
                MusicActivity.this.f24590b.setEnableLoadmore(false);
            } else {
                MusicActivity.this.f24590b.setEnableLoadmore(true);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class e implements Function1<GCRequest, Unit> {
        e() {
        }

        @Override // kotlin.jvm.functions.Function1
        /* renamed from: a */
        public Unit invoke(GCRequest gCRequest) {
            MusicActivity.this.f24590b.D();
            MusicActivity.this.f24590b.C();
            return Unit.INSTANCE;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class f implements GCRequestJava.d<CollectMusicData> {
        f() {
        }

        @Override // com.guochao.faceshow.aaspring.base.http.v2.GCRequestJava.d
        public void a(@NonNull Response<CollectMusicData> response) {
            CollectMusicData data;
            if (response == null || (data = response.getData()) == null) {
                return;
            }
            MusicActivity.this.f24598j = data.getTotalPage();
            if (MusicActivity.this.f24597i == 1) {
                MusicActivity.this.f24608t.resetData(data.getList());
            } else {
                MusicActivity.this.f24608t.addData(data.getList());
            }
            if (MusicActivity.this.f24597i > MusicActivity.this.f24598j) {
                MusicActivity.this.f24607s.setEnableLoadmore(false);
            } else {
                MusicActivity.this.f24607s.setEnableLoadmore(true);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class g extends com.guochao.faceshow.aaspring.base.http.callback.d<File> {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ ImageView f24621a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ LinearLayout f24622b;

        g(ImageView imageView, LinearLayout linearLayout) {
            this.f24621a = imageView;
            this.f24622b = linearLayout;
        }

        @Override // com.guochao.faceshow.aaspring.base.http.callback.c, com.guochao.faceshow.aaspring.base.http.callback.b
        public void onCompleted() {
            super.onCompleted();
            MusicActivity.this.f24614z = true;
            this.f24621a.clearAnimation();
        }

        @Override // com.guochao.faceshow.aaspring.base.http.callback.c
        public void onFailure(@NonNull g7.a<File> aVar) {
            this.f24621a.clearAnimation();
            this.f24621a.setImageResource(R.mipmap.stop_music);
        }

        @Override // com.guochao.faceshow.aaspring.base.http.callback.d
        public void onProgress(long j10, long j11, double d10) {
        }

        @Override // com.guochao.faceshow.aaspring.base.http.callback.c
        public /* bridge */ /* synthetic */ void onResponse(@Nullable Object obj, @NonNull FaceCastBaseResponse faceCastBaseResponse) {
            onResponse((File) obj, (FaceCastBaseResponse<File>) faceCastBaseResponse);
        }

        public void onResponse(@Nullable File file, @NonNull FaceCastBaseResponse<File> faceCastBaseResponse) {
            this.f24621a.setImageResource(R.mipmap.play_music);
            this.f24622b.setVisibility(0);
            MusicActivity.this.f24611w = this.f24622b;
            MusicActivity.this.f24612x = this.f24621a;
            if (MusicActivity.this.C) {
                MusicActivity.this.B.sendEmptyMessage(101);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class h implements Function1<GCRequest, Unit> {
        h() {
        }

        @Override // kotlin.jvm.functions.Function1
        /* renamed from: a */
        public Unit invoke(GCRequest gCRequest) {
            return Unit.INSTANCE;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class i implements GCRequestJava.d<MusicList> {
        i() {
        }

        @Override // com.guochao.faceshow.aaspring.base.http.v2.GCRequestJava.d
        public void a(@NonNull Response<MusicList> response) {
            MusicList data = response.getData();
            if (data != null) {
                MusicActivity.this.f24601m = data.total;
                if (MusicActivity.this.f24600l == 1) {
                    MusicActivity.this.H.resetData(data.list);
                } else {
                    MusicActivity.this.H.addData(data.list);
                }
                if (MusicActivity.this.f24600l > MusicActivity.this.f24601m) {
                    MusicActivity.this.f24591c.setEnableLoadmore(false);
                } else {
                    MusicActivity.this.f24591c.setEnableLoadmore(true);
                }
            }
        }
    }

    /* loaded from: classes3.dex */
    class j extends Handler {
        j() {
        }

        @Override // android.os.Handler
        public void handleMessage(Message message) {
            switch (message.what) {
                case 100:
                    MusicActivity.this.F.c();
                    MusicActivity.this.A = false;
                    return;
                case 101:
                    MusicActivity.this.F.b(MusicActivity.this.f24613y);
                    MusicActivity.this.A = true;
                    return;
                case 102:
                    MusicActivity.this.F.d();
                    MusicActivity.this.A = true;
                    return;
                case 103:
                    MusicActivity.this.F.e();
                    MusicActivity.this.A = false;
                    return;
                default:
                    return;
            }
        }
    }

    /* loaded from: classes3.dex */
    class k implements ServiceConnection {
        k() {
        }

        @Override // android.content.ServiceConnection
        public void onServiceConnected(ComponentName componentName, IBinder iBinder) {
            MusicActivity.this.F = (MediaService.a) iBinder;
        }

        @Override // android.content.ServiceConnection
        public void onServiceDisconnected(ComponentName componentName) {
        }
    }

    /* loaded from: classes3.dex */
    class l extends kc.f {
        l() {
        }

        @Override // kc.f, kc.e
        public void b(TwinklingRefreshLayout twinklingRefreshLayout) {
            MusicActivity.this.f24600l = 1;
            MusicActivity.this.f24610v = -1;
            EventBus.getDefault().post(new MusicState(103, ""));
            MusicActivity musicActivity = MusicActivity.this;
            musicActivity.t1(musicActivity.f24604p);
        }

        @Override // kc.f, kc.e
        public void e(TwinklingRefreshLayout twinklingRefreshLayout) {
            if (MusicActivity.this.f24600l < MusicActivity.this.f24601m) {
                MusicActivity.X0(MusicActivity.this);
                MusicActivity musicActivity = MusicActivity.this;
                musicActivity.t1(musicActivity.f24604p);
                return;
            }
            twinklingRefreshLayout.B(true);
        }
    }

    /* loaded from: classes3.dex */
    class m extends AAComAdapter<MusicBean> {

        /* JADX INFO: Access modifiers changed from: package-private */
        /* loaded from: classes3.dex */
        public class a implements View.OnClickListener {

            /* renamed from: a  reason: collision with root package name */
            final /* synthetic */ ImageView f24630a;

            /* renamed from: b  reason: collision with root package name */
            final /* synthetic */ MusicBean f24631b;

            a(ImageView imageView, MusicBean musicBean) {
                this.f24630a = imageView;
                this.f24631b = musicBean;
            }

            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                ImageView imageView = this.f24630a;
                imageView.setSelected(!imageView.isSelected());
                MusicActivity.this.B1(this.f24631b.musicId);
            }
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        /* loaded from: classes3.dex */
        public class b implements View.OnClickListener {

            /* renamed from: a  reason: collision with root package name */
            final /* synthetic */ int f24633a;

            /* renamed from: b  reason: collision with root package name */
            final /* synthetic */ ImageView f24634b;

            /* renamed from: c  reason: collision with root package name */
            final /* synthetic */ MusicBean f24635c;

            /* renamed from: d  reason: collision with root package name */
            final /* synthetic */ LinearLayout f24636d;

            /* loaded from: classes3.dex */
            class a implements View.OnClickListener {
                a() {
                }

                @Override // android.view.View.OnClickListener
                public void onClick(View view) {
                    Intent intent = new Intent();
                    intent.putExtra("music_url", MusicActivity.this.f24613y);
                    intent.putExtra("musicId", b.this.f24635c.musicId);
                    intent.putExtra("musicImg", b.this.f24635c.img);
                    MusicActivity.this.setResult(-1, intent);
                    MusicActivity.this.finish();
                }
            }

            b(int i9, ImageView imageView, MusicBean musicBean, LinearLayout linearLayout) {
                this.f24633a = i9;
                this.f24634b = imageView;
                this.f24635c = musicBean;
                this.f24636d = linearLayout;
            }

            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                MusicActivity musicActivity = MusicActivity.this;
                if (musicActivity.f24614z) {
                    if (musicActivity.f24610v == this.f24633a) {
                        if (MusicActivity.this.A) {
                            this.f24634b.setImageResource(R.mipmap.stop_music);
                            EventBus.getDefault().post(new MusicState(100, ""));
                            MusicActivity.this.A = false;
                        } else {
                            this.f24634b.setImageResource(R.mipmap.play_music);
                            EventBus.getDefault().post(new MusicState(102, ""));
                            MusicActivity.this.A = true;
                        }
                    } else {
                        if (MusicActivity.this.f24611w != null) {
                            MusicActivity.this.f24611w.setVisibility(8);
                            EventBus.getDefault().post(new MusicState(103, ""));
                            MusicActivity.this.A = false;
                        }
                        if (MusicActivity.this.f24612x != null) {
                            MusicActivity.this.f24612x.setImageResource(R.mipmap.stop_music);
                        }
                        MusicActivity.this.f24610v = this.f24633a;
                        MusicActivity musicActivity2 = MusicActivity.this;
                        musicActivity2.f24613y = FilePathProvider.getMusicPath("Music") + File.separator + this.f24635c.musicId + ".mp3";
                        if (new File(MusicActivity.this.f24613y).exists()) {
                            this.f24634b.setImageResource(R.mipmap.play_music);
                            this.f24636d.setVisibility(0);
                            MusicActivity.this.f24611w = this.f24636d;
                            MusicActivity.this.f24612x = this.f24634b;
                            EventBus.getDefault().post(new MusicState(101, MusicActivity.this.f24613y));
                            MusicActivity.this.A = true;
                        } else {
                            MusicActivity musicActivity3 = MusicActivity.this;
                            musicActivity3.f24614z = false;
                            MusicBean musicBean = this.f24635c;
                            musicActivity3.o1(musicBean.url, musicBean.musicId, this.f24634b, this.f24636d);
                        }
                    }
                }
                this.f24636d.setOnClickListener(new a());
            }
        }

        m(Context context, int i9) {
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
            image2.setOnClickListener(new a(image2, musicBean));
            LinearLayout line = aAViewHolder.getLine(R.id.useMusic);
            ImageView image3 = aAViewHolder.getImage(R.id.play_icon);
            int position = aAViewHolder.getPosition();
            if (MusicActivity.this.f24610v == position) {
                image3.setImageResource(R.mipmap.play_music);
                line.setVisibility(0);
                view.setBackgroundColor(Color.parseColor("#F9F9F9"));
            } else {
                line.setVisibility(8);
                aAViewHolder.setImgResourceId(R.id.play_icon, R.mipmap.stop_music);
                view.setBackgroundColor(Color.parseColor("#FfFfFf"));
            }
            aAViewHolder.getView(R.id.item).setOnClickListener(new b(position, image3, musicBean, line));
        }
    }

    /* loaded from: classes3.dex */
    class n extends ZZ_RecycleAdapter<MusicType> {

        /* JADX INFO: Access modifiers changed from: package-private */
        /* loaded from: classes3.dex */
        public class a implements View.OnClickListener {

            /* renamed from: a  reason: collision with root package name */
            final /* synthetic */ MusicType f24640a;

            a(MusicType musicType) {
                this.f24640a = musicType;
            }

            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                Intent intent = new Intent(MusicActivity.this, MusicResultActivity.class);
                intent.putExtra("type_id", this.f24640a.type_id);
                intent.putExtra("type", MusicActivity.this.f24599k);
                intent.putExtra("type_name", this.f24640a.type_name);
                MusicActivity.this.startActivityForResult(intent, 1000);
            }
        }

        n(Context context, int i9) {
            super(context, i9);
        }

        @Override // com.guochao.faceshow.adapter.ZZ_RecycleAdapter
        /* renamed from: a */
        public void convert(ZZ_RecycleAdapter.ViewHolder viewHolder, MusicType musicType) {
            viewHolder.f(R.id.count_tv, musicType.type_name);
            hc.a.r(viewHolder.c(R.id.lift_iv), musicType.type_img, R.drawable.default_image, 8);
            viewHolder.getView(R.id.item).setOnClickListener(new a(musicType));
        }
    }

    /* loaded from: classes3.dex */
    class o extends kc.f {
        o() {
        }

        @Override // kc.f, kc.e
        public void b(TwinklingRefreshLayout twinklingRefreshLayout) {
            MusicActivity.this.f24597i = 1;
            MusicActivity.this.f24604p = "";
            MusicActivity.this.f24602n.setText("");
            MusicActivity.this.q1();
        }

        @Override // kc.f, kc.e
        public void e(TwinklingRefreshLayout twinklingRefreshLayout) {
            if (MusicActivity.this.f24597i < MusicActivity.this.f24598j) {
                MusicActivity.p0(MusicActivity.this);
                MusicActivity.this.q1();
                return;
            }
            twinklingRefreshLayout.B(true);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class p extends AAComAdapter<MusicBean> {

        /* JADX INFO: Access modifiers changed from: package-private */
        /* loaded from: classes3.dex */
        public class a implements View.OnClickListener {

            /* renamed from: a  reason: collision with root package name */
            final /* synthetic */ int f24644a;

            /* renamed from: b  reason: collision with root package name */
            final /* synthetic */ ImageView f24645b;

            /* renamed from: c  reason: collision with root package name */
            final /* synthetic */ MusicBean f24646c;

            /* renamed from: d  reason: collision with root package name */
            final /* synthetic */ LinearLayout f24647d;

            /* renamed from: com.guochao.faceshow.activity.MusicActivity$p$a$a  reason: collision with other inner class name */
            /* loaded from: classes3.dex */
            class View$OnClickListenerC0238a implements View.OnClickListener {
                View$OnClickListenerC0238a() {
                }

                @Override // android.view.View.OnClickListener
                public void onClick(View view) {
                    Intent intent = new Intent();
                    intent.putExtra("music_url", MusicActivity.this.f24613y);
                    intent.putExtra("musicId", a.this.f24646c.musicId);
                    intent.putExtra("musicImg", a.this.f24646c.img);
                    MusicActivity.this.setResult(-1, intent);
                    MusicActivity.this.finish();
                }
            }

            a(int i9, ImageView imageView, MusicBean musicBean, LinearLayout linearLayout) {
                this.f24644a = i9;
                this.f24645b = imageView;
                this.f24646c = musicBean;
                this.f24647d = linearLayout;
            }

            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                MusicActivity musicActivity = MusicActivity.this;
                if (musicActivity.f24614z) {
                    if (musicActivity.f24609u == this.f24644a) {
                        if (MusicActivity.this.A) {
                            this.f24645b.setImageResource(R.mipmap.stop_music);
                            MusicActivity.this.B.sendEmptyMessage(100);
                        } else {
                            this.f24645b.setImageResource(R.mipmap.play_music);
                            MusicActivity.this.B.sendEmptyMessage(102);
                        }
                    } else {
                        if (MusicActivity.this.f24611w != null) {
                            MusicActivity.this.f24611w.setVisibility(8);
                            MusicActivity.this.B.sendEmptyMessage(103);
                        }
                        if (MusicActivity.this.f24612x != null) {
                            MusicActivity.this.f24612x.setImageResource(R.mipmap.stop_music);
                        }
                        MusicActivity.this.f24609u = this.f24644a;
                        MusicActivity musicActivity2 = MusicActivity.this;
                        musicActivity2.f24613y = FilePathProvider.getMusicPath("Music") + File.separator + this.f24646c.musicId + ".mp3";
                        if (new File(MusicActivity.this.f24613y).exists()) {
                            this.f24645b.setImageResource(R.mipmap.play_music);
                            this.f24647d.setVisibility(0);
                            MusicActivity.this.f24611w = this.f24647d;
                            MusicActivity.this.f24612x = this.f24645b;
                            MusicActivity.this.B.sendEmptyMessage(101);
                        } else {
                            MusicActivity musicActivity3 = MusicActivity.this;
                            musicActivity3.f24614z = false;
                            MusicBean musicBean = this.f24646c;
                            musicActivity3.o1(musicBean.url, musicBean.musicId, this.f24645b, this.f24647d);
                        }
                    }
                }
                this.f24647d.setOnClickListener(new View$OnClickListenerC0238a());
            }
        }

        p(Context context, int i9) {
            super(context, i9);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void c(ImageView imageView, MusicBean musicBean, View view) {
            imageView.setSelected(!imageView.isSelected());
            MusicActivity.this.B1(musicBean.musicId);
        }

        @Override // com.guochao.faceshow.utils.AAComAdapter
        /* renamed from: b */
        public void convert(AAViewHolder aAViewHolder, final MusicBean musicBean) {
            aAViewHolder.setText(R.id.music_name, musicBean.mname);
            hc.a.l(musicBean.img, aAViewHolder.getImage(R.id.music_img), R.drawable.default_image, MusicActivity.this);
            aAViewHolder.setText(R.id.music_info, musicBean.introduce);
            final ImageView image = aAViewHolder.getImage(R.id.checkbox);
            if (musicBean.collect == 0) {
                image.setSelected(false);
            } else {
                image.setSelected(true);
            }
            image.setOnClickListener(new View.OnClickListener() { // from class: com.guochao.faceshow.activity.a
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    MusicActivity.p.this.c(image, musicBean, view);
                }
            });
            LinearLayout line = aAViewHolder.getLine(R.id.useMusic);
            ImageView image2 = aAViewHolder.getImage(R.id.play_icon);
            int position = aAViewHolder.getPosition();
            if (MusicActivity.this.f24609u == position) {
                image2.setImageResource(R.mipmap.play_music);
                line.setVisibility(0);
            } else {
                line.setVisibility(8);
                aAViewHolder.setImgResourceId(R.id.play_icon, R.mipmap.stop_music);
            }
            aAViewHolder.getView(R.id.item).setOnClickListener(new a(position, image2, musicBean, line));
        }
    }

    /* loaded from: classes3.dex */
    class q extends kc.f {
        q() {
        }

        @Override // kc.f, kc.e
        public void b(TwinklingRefreshLayout twinklingRefreshLayout) {
            MusicActivity.this.f24597i = 1;
            MusicActivity.this.f24609u = -1;
            MusicActivity.this.B.sendEmptyMessage(103);
            MusicActivity.this.r1();
        }

        @Override // kc.f, kc.e
        public void e(TwinklingRefreshLayout twinklingRefreshLayout) {
            if (MusicActivity.this.f24597i < MusicActivity.this.f24598j) {
                MusicActivity.p0(MusicActivity.this);
                MusicActivity.this.r1();
                return;
            }
            twinklingRefreshLayout.B(true);
        }
    }

    /* loaded from: classes3.dex */
    class r implements View.OnClickListener {
        r() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            MusicActivity.this.x1();
            MusicActivity musicActivity = MusicActivity.this;
            musicActivity.f24604p = musicActivity.f24602n.getText().toString().trim();
            if (TextUtils.isEmpty(MusicActivity.this.f24604p)) {
                MusicActivity musicActivity2 = MusicActivity.this;
                ToastUtils.showToast(musicActivity2, musicActivity2.getString(R.string.search_keyword));
                MusicActivity.this.f24591c.setVisibility(8);
                MusicActivity.this.f24590b.setVisibility(0);
                return;
            }
            MusicActivity.this.f24590b.setVisibility(8);
            MusicActivity.this.f24591c.setVisibility(0);
            MusicActivity.this.f24605q = true;
            MusicActivity.this.f24597i = 1;
            MusicActivity musicActivity3 = MusicActivity.this;
            musicActivity3.t1(musicActivity3.f24604p);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void B1(String str) {
        new GCRequestJava(Contants.saveOrDelete).putBody("musicId", str).request();
    }

    static /* synthetic */ int X0(MusicActivity musicActivity) {
        int i9 = musicActivity.f24600l;
        musicActivity.f24600l = i9 + 1;
        return i9;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void o1(String str, String str2, ImageView imageView, LinearLayout linearLayout) {
        Animation loadAnimation = AnimationUtils.loadAnimation(this, R.anim.roatate_anim);
        imageView.setImageResource(R.mipmap.music_loading);
        imageView.startAnimation(loadAnimation);
        com.guochao.faceshow.aaspring.base.http.client.a httpClient = getHttpClient();
        httpClient.a(null, str, FilePathProvider.getMusicPath("Music") + File.separator + str2 + ".mp3", new g(imageView, linearLayout));
    }

    static /* synthetic */ int p0(MusicActivity musicActivity) {
        int i9 = musicActivity.f24597i;
        musicActivity.f24597i = i9 + 1;
        return i9;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void q1() {
        new GCRequestJava("api/token/social/music/getMusicType").putBody("page", Integer.valueOf(this.f24597i)).putBody("limit", ThirdPushHelper.TYPE_HUAWEI).j(new d()).complete(new c()).request();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void r1() {
        new GCRequestJava("api/token/social/music/collectionList").putBody("page", Integer.valueOf(this.f24597i)).putBody("limit", ThirdPushHelper.TYPE_HUAWEI).j(new f()).complete(new e()).request();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void t1(String str) {
        new GCRequestJava("api/token/social/music/getMusics").putBody("page", Integer.valueOf(this.f24597i)).putBody("limit", ThirdPushHelper.TYPE_HUAWEI).putBody("mname", str).j(new i()).complete(new h()).request();
    }

    @Override // com.guochao.faceshow.aaspring.base.activity.BaseActivity
    public com.guochao.faceshow.aaspring.base.activity.a getActivityConfig() {
        return new a.C0147a(this).b(false).a();
    }

    @OnClick
    public void getEvent(View view) {
        int id2 = view.getId();
        if (id2 == R.id.music_conllect) {
            this.C = true;
            this.D.setTypeface(Typeface.defaultFromStyle(1));
            this.D.setTextSize(18.0f);
            this.f24594f.setTypeface(Typeface.defaultFromStyle(0));
            this.f24594f.setTextSize(14.0f);
            this.f24590b.setVisibility(8);
            this.E.setVisibility(8);
            this.f24591c.setVisibility(8);
            this.f24607s.setVisibility(0);
            this.f24597i = 1;
            r1();
        } else if (id2 == R.id.music_mine) {
            Intent intent = new Intent();
            intent.setAction("android.intent.action.GET_CONTENT");
            intent.setType("audio/*");
            startActivityForResult(intent, 1001);
        } else if (id2 != R.id.music_online) {
        } else {
            this.C = false;
            if (this.A) {
                this.B.sendEmptyMessage(100);
            }
            ImageView imageView = this.f24612x;
            if (imageView != null) {
                imageView.setImageResource(R.mipmap.stop_music);
            }
            this.f24594f.setTypeface(Typeface.defaultFromStyle(1));
            this.f24594f.setTextSize(18.0f);
            this.D.setTypeface(Typeface.defaultFromStyle(0));
            this.D.setTextSize(14.0f);
            if (this.f24605q) {
                this.f24590b.setVisibility(8);
                this.f24591c.setVisibility(0);
            } else {
                this.f24590b.setVisibility(0);
                this.f24591c.setVisibility(8);
            }
            this.E.setVisibility(0);
            this.f24607s.setVisibility(8);
            this.f24597i = 1;
            q1();
        }
    }

    @Override // com.guochao.faceshow.aaspring.base.activity.BaseActivity
    public int getLayoutId() {
        return R.layout.activity_music;
    }

    @Override // com.guochao.faceshow.aaspring.base.activity.BaseActivity
    public void initView() {
        this.E = (LinearLayout) findViewById(R.id.search_et_layout);
        this.f24602n = (EditText) findViewById(R.id.search_et);
        this.f24603o = (ImageView) findViewById(R.id.search);
        this.f24589a = (SwipeMenuRecyclerView) findViewById(R.id.mRecyclerView);
        this.f24590b = (TwinklingRefreshLayout) findViewById(R.id.refreshLayout);
        this.f24591c = (TwinklingRefreshLayout) findViewById(R.id.search_refreshLayout);
        this.f24592d = (ListView) findViewById(R.id.search_listView);
        this.f24606r = (ListView) findViewById(R.id.mListView);
        this.f24607s = (TwinklingRefreshLayout) findViewById(R.id.mrefreshLayout);
        this.f24594f = (RadioButton) findViewById(R.id.music_online);
        this.f24595g = (RadioButton) findViewById(R.id.music_mine);
        this.D = (RadioButton) findViewById(R.id.music_conllect);
        this.f24596h = (RadioGroup) findViewById(R.id.radiogroup);
        this.f24594f.setChecked(true);
        this.f24589a.setLayoutManager(new GridLayoutManager(this, 3));
        this.f24602n.setHint(getResources().getString(R.string.please_enter_music_type));
        this.f24591c.setFloatRefresh(true);
        this.f24591c.setEnableOverScroll(false);
        this.f24591c.setEnableRefresh(false);
        this.f24591c.setOnRefreshListener(new l());
        m mVar = new m(this, R.layout.item_music_try);
        this.H = mVar;
        this.f24592d.setAdapter((ListAdapter) mVar);
        n nVar = new n(this, R.layout.item_music_type);
        this.f24593e = nVar;
        this.f24589a.setAdapter(nVar);
        this.f24590b.setHeaderView(new ProgressLayout(this));
        this.f24590b.setFloatRefresh(true);
        this.f24590b.setEnableOverScroll(false);
        this.f24590b.setHeaderHeight(120.0f);
        this.f24590b.setMaxHeadHeight(200.0f);
        this.f24590b.setOnRefreshListener(new o());
        q1();
        this.f24589a.setDescendantFocusability(262144);
        p pVar = new p(this, R.layout.item_music_try);
        this.f24608t = pVar;
        pVar.setEmptyAlert(getResources().getString(R.string.no_collection));
        this.f24606r.setAdapter((ListAdapter) this.f24608t);
        this.f24607s.setHeaderView(new ProgressLayout(this));
        this.f24607s.setFloatRefresh(true);
        this.f24607s.setEnableOverScroll(false);
        this.f24607s.setHeaderHeight(120.0f);
        this.f24607s.setMaxHeadHeight(200.0f);
        this.f24607s.setEnableRefresh(false);
        this.f24607s.setOnRefreshListener(new q());
        this.f24603o.setOnClickListener(new r());
        this.f24602n.setOnEditorActionListener(new a());
        this.f24602n.addTextChangedListener(new b());
    }

    @Override // com.guochao.faceshow.aaspring.base.activity.BaseActivity
    public void loadData() {
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.guochao.faceshow.aaspring.base.activity.BaseActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, android.app.Activity
    public void onActivityResult(int i9, int i10, Intent intent) {
        super.onActivityResult(i9, i10, intent);
        if (intent == null) {
            return;
        }
        if (i9 == 1000) {
            setResult(-1, intent);
        } else {
            String imageAbsolutePath = AAImageUtil.getImageAbsolutePath(getActivity(), intent.getData());
            Intent intent2 = new Intent();
            intent2.putExtra("musicPath", imageAbsolutePath);
            setResult(-1, intent2);
        }
        finish();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.guochao.faceshow.aaspring.base.activity.BaseActivity, com.guochao.faceshow.aaspring.base.mvvm.activity.GCCoreActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        getWindow().setSoftInputMode(3);
        this.f24599k = getIntent().getIntExtra("type", 0);
        bindService(new Intent(this, MediaService.class), this.G, 1);
        EventBus.getDefault().register(this);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.guochao.faceshow.aaspring.base.activity.BaseActivity, com.guochao.faceshow.aaspring.base.mvvm.activity.GCCoreActivity, androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onDestroy() {
        super.onDestroy();
        MediaService.a aVar = this.F;
        if (aVar != null) {
            aVar.a();
        }
        EventBus.getDefault().unregister(this);
        unbindService(this.G);
        this.B.removeCallbacksAndMessages(null);
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public void onEventBus(MusicState musicState) {
        switch (musicState.state) {
            case 100:
                this.F.c();
                this.A = false;
                return;
            case 101:
                this.f24609u = -1;
                String str = musicState.url;
                this.f24613y = str;
                this.F.b(str);
                this.A = true;
                return;
            case 102:
                this.F.d();
                this.A = true;
                return;
            case 103:
                this.F.e();
                this.A = false;
                return;
            default:
                return;
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onPause() {
        super.onPause();
        this.C = false;
        if (this.A) {
            this.B.sendEmptyMessage(100);
        }
        ImageView imageView = this.f24612x;
        if (imageView != null) {
            imageView.setImageResource(R.mipmap.stop_music);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.guochao.faceshow.aaspring.base.activity.BaseActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onResume() {
        super.onResume();
        this.C = true;
    }

    public void x1() {
        SoftKeyBoardUtils.closeSoftKeyBoard(getActivity(), this.f24602n);
    }
}
