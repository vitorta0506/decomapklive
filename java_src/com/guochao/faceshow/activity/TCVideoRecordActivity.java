package com.guochao.faceshow.activity;

import android.app.Dialog;
import android.content.Intent;
import android.content.res.Configuration;
import android.graphics.Bitmap;
import android.media.AudioManager;
import android.net.Uri;
import android.os.Bundle;
import android.os.CountDownTimer;
import android.text.TextUtils;
import android.view.GestureDetector;
import android.view.KeyEvent;
import android.view.MotionEvent;
import android.view.ScaleGestureDetector;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RadioButton;
import android.widget.RadioGroup;
import android.widget.RelativeLayout;
import android.widget.TextView;
import android.widget.Toast;
import androidx.annotation.IdRes;
import androidx.annotation.NonNull;
import androidx.core.app.ActivityCompat;
import androidx.core.content.ContextCompat;
import androidx.core.view.GestureDetectorCompat;
import com.facebook.internal.AnalyticsEvents;
import com.guochao.component.mvp.activity.MVPActivity;
import com.guochao.component.voiceliveroom.helper.VoiceRoomMiniHelper;
import com.guochao.faceshow.BaseApplication;
import com.guochao.faceshow.R;
import com.guochao.faceshow.aaspring.base.activity.BaseActivity;
import com.guochao.faceshow.aaspring.beans.ResourceListItemBean;
import com.guochao.faceshow.aaspring.manager.BeautyItemCacheManager;
import com.guochao.faceshow.aaspring.modulars.live.common.LivePlayerProvider;
import com.guochao.faceshow.aaspring.modulars.live.fragment.HealthLiveTipsFragment;
import com.guochao.faceshow.aaspring.modulars.onevone.pendant.PendantDialog;
import com.guochao.faceshow.aaspring.utils.DisableDoubleClickUtils;
import com.guochao.faceshow.aaspring.utils.FilePathProvider;
import com.guochao.faceshow.aaspring.utils.Formatter;
import com.guochao.faceshow.aaspring.utils.LogUtils;
import com.guochao.faceshow.aaspring.utils.PackageUtils;
import com.guochao.faceshow.aaspring.utils.SpUtils;
import com.guochao.faceshow.aaspring.utils.ToastUtils;
import com.guochao.faceshow.utils.BaseConfig;
import com.guochao.faceshow.utils.Contants;
import com.guochao.faceshow.utils.FileUtil;
import com.guochao.faceshow.utils.ReportController;
import com.guochao.faceshow.utils.TCConstants;
import com.guochao.faceshow.utils.TCUtils;
import com.guochao.faceshow.utils.Tool;
import com.guochao.faceshow.views.ComposeRecordBtn;
import com.guochao.faceshow.views.RangeSlider;
import com.guochao.faceshow.views.RecordProgressView;
import com.guochao.faceshow.views.e;
import com.guochao.faceshow.views.l;
import com.guochao.pusher.beauty.FilterItem;
import com.guochao.pusher.beauty.XMagicBeautyManager;
import com.tencent.rtmp.ui.TXCloudVideoView;
import com.tencent.ugc.TXRecordCommon;
import com.tencent.ugc.TXUGCRecord;
import com.tencent.ugc.UGCTransitionRules;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.lang.reflect.Field;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import org.greenrobot.eventbus.EventBus;
import org.greenrobot.eventbus.Subscribe;
import org.greenrobot.eventbus.ThreadMode;
import org.light.utils.FileUtils;
/* loaded from: classes3.dex */
public class TCVideoRecordActivity extends BaseActivity implements View.OnClickListener, TXRecordCommon.ITXVideoRecordListener, View.OnTouchListener, GestureDetector.OnGestureListener, ScaleGestureDetector.OnScaleGestureListener {
    private ScaleGestureDetector A;
    private float B;
    private TextView B3;
    private float C;
    private RelativeLayout C4;
    private LinearLayout D4;
    private int E;
    private boolean E4;
    private int F;
    private boolean F4;
    private int G;
    private LinearLayout G4;
    private int H;
    private ImageView H4;
    private int J4;
    private int K;
    private ImageView K4;
    private int L;
    private RangeSlider L4;
    private int M;
    private RelativeLayout M4;
    private String N;
    int N4;
    private String O;
    int O4;
    private int P;
    private String P4;
    private RadioGroup Q;
    private String Q4;
    private String R4;
    private String S4;
    private ImageView T4;
    private TextView U4;
    private ImageView V2;
    private CountDownTimer V3;
    private String V4;
    private String W4;
    private String X4;
    private String Y4;

    /* renamed from: a1  reason: collision with root package name */
    private boolean f24860a1;

    /* renamed from: a2  reason: collision with root package name */
    private TextView f24861a2;

    /* renamed from: a5  reason: collision with root package name */
    private LinearLayout f24862a5;

    /* renamed from: b5  reason: collision with root package name */
    private ImageView f24864b5;

    /* renamed from: d  reason: collision with root package name */
    private TXUGCRecord f24867d;

    /* renamed from: e  reason: collision with root package name */
    private TXRecordCommon.TXRecordResult f24869e;

    /* renamed from: e5  reason: collision with root package name */
    private String f24870e5;

    /* renamed from: f  reason: collision with root package name */
    private long f24871f;

    /* renamed from: f5  reason: collision with root package name */
    private GestureDetectorCompat f24872f5;

    /* renamed from: g  reason: collision with root package name */
    private TXCloudVideoView f24873g;

    /* renamed from: h  reason: collision with root package name */
    private ImageView f24875h;

    /* renamed from: i  reason: collision with root package name */
    private TextView f24877i;

    /* renamed from: j  reason: collision with root package name */
    private TextView f24879j;

    /* renamed from: k  reason: collision with root package name */
    private l f24881k;

    /* renamed from: l  reason: collision with root package name */
    private ImageView f24883l;

    /* renamed from: m  reason: collision with root package name */
    private ImageView f24885m;

    /* renamed from: m5  reason: collision with root package name */
    Toast f24886m5;

    /* renamed from: n  reason: collision with root package name */
    private ComposeRecordBtn f24887n;

    /* renamed from: p  reason: collision with root package name */
    private AudioManager f24889p;

    /* renamed from: q  reason: collision with root package name */
    private AudioManager.OnAudioFocusChangeListener f24890q;

    /* renamed from: s  reason: collision with root package name */
    private int f24892s;

    /* renamed from: u  reason: collision with root package name */
    private FrameLayout f24894u;

    /* renamed from: v  reason: collision with root package name */
    private RecordProgressView f24895v;

    /* renamed from: w  reason: collision with root package name */
    private ImageView f24896w;

    /* renamed from: y  reason: collision with root package name */
    private long f24898y;

    /* renamed from: a  reason: collision with root package name */
    private boolean f24859a = false;

    /* renamed from: b  reason: collision with root package name */
    private boolean f24863b = false;

    /* renamed from: c  reason: collision with root package name */
    private boolean f24865c = true;

    /* renamed from: o  reason: collision with root package name */
    private boolean f24888o = false;

    /* renamed from: r  reason: collision with root package name */
    private boolean f24891r = false;

    /* renamed from: t  reason: collision with root package name */
    private LinearLayout f24893t = null;

    /* renamed from: x  reason: collision with root package name */
    private boolean f24897x = false;

    /* renamed from: z  reason: collision with root package name */
    private boolean f24899z = false;
    private int D = 3;
    private int I = 1;
    private int J = 0;
    private int R = 2;
    private final boolean V1 = true;
    private final int I4 = -1;
    private String Z4 = "";

    /* renamed from: c5  reason: collision with root package name */
    private boolean f24866c5 = false;

    /* renamed from: d5  reason: collision with root package name */
    int f24868d5 = 6;

    /* renamed from: g5  reason: collision with root package name */
    private List<FilterItem> f24874g5 = LivePlayerProvider.beautyManager().getFilterItems();

    /* renamed from: h5  reason: collision with root package name */
    XMagicBeautyManager f24876h5 = XMagicBeautyManager.getInstance(BaseApplication.getInstance());

    /* renamed from: i5  reason: collision with root package name */
    int f24878i5 = -1;

    /* renamed from: j5  reason: collision with root package name */
    private int f24880j5 = 0;

    /* renamed from: k5  reason: collision with root package name */
    private int f24882k5 = 0;

    /* renamed from: l5  reason: collision with root package name */
    private int f24884l5 = 0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class a implements e.a {
        a() {
        }

        @Override // com.guochao.faceshow.views.e.a
        public void onClick(Dialog dialog, boolean z10) {
            if (z10) {
                dialog.dismiss();
                TCVideoRecordActivity.this.B0();
            }
        }

        @Override // com.guochao.faceshow.views.e.a
        public /* synthetic */ void onCreate(com.guochao.faceshow.views.e eVar) {
            com.guochao.faceshow.views.d.a(this, eVar);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class b extends CountDownTimer {
        b(long j10, long j11) {
            super(j10, j11);
        }

        @Override // android.os.CountDownTimer
        public void onFinish() {
            TCVideoRecordActivity.this.B3.setVisibility(8);
            TCVideoRecordActivity.this.t1();
        }

        @Override // android.os.CountDownTimer
        public void onTick(long j10) {
            TextView textView = TCVideoRecordActivity.this.B3;
            textView.setText((j10 / 1000) + "");
        }
    }

    /* loaded from: classes3.dex */
    class c implements TXUGCRecord.VideoCustomProcessListener {
        c() {
        }

        @Override // com.tencent.ugc.TXUGCRecord.VideoCustomProcessListener
        public void onDetectFacePoints(float[] fArr) {
        }

        @Override // com.tencent.ugc.TXUGCRecord.VideoCustomProcessListener
        public int onTextureCustomProcess(int i9, int i10, int i11) {
            return TCVideoRecordActivity.this.f24876h5.process(i9, i10, i11);
        }

        @Override // com.tencent.ugc.TXUGCRecord.VideoCustomProcessListener
        public void onTextureDestroyed() {
            TCVideoRecordActivity.this.f24876h5.destroyOnGLThread();
            if ((TCVideoRecordActivity.this.isFinishing() || TCVideoRecordActivity.this.isDestroyed()) && TCVideoRecordActivity.this.f24867d != null) {
                TCVideoRecordActivity.this.f24867d.setVideoRecordListener(null);
                TCVideoRecordActivity.this.f24867d = null;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class d extends GestureDetector.SimpleOnGestureListener {
        d() {
        }

        @Override // android.view.GestureDetector.SimpleOnGestureListener, android.view.GestureDetector.OnGestureListener
        public void onLongPress(MotionEvent motionEvent) {
            TCVideoRecordActivity.this.E4 = true;
            if (!TCVideoRecordActivity.this.f24859a || TCVideoRecordActivity.this.f24891r) {
                if (TCVideoRecordActivity.this.F4) {
                    TCVideoRecordActivity.this.b1(8);
                }
                TCVideoRecordActivity.this.t1();
            }
        }

        @Override // android.view.GestureDetector.SimpleOnGestureListener, android.view.GestureDetector.OnDoubleTapListener
        public boolean onSingleTapConfirmed(MotionEvent motionEvent) {
            if (TCVideoRecordActivity.this.F4) {
                TCVideoRecordActivity.this.b1(8);
            }
            TCVideoRecordActivity.this.t1();
            return super.onSingleTapConfirmed(motionEvent);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class e implements View.OnTouchListener {
        e() {
        }

        @Override // android.view.View.OnTouchListener
        public boolean onTouch(View view, MotionEvent motionEvent) {
            TCVideoRecordActivity.this.f24872f5.onTouchEvent(motionEvent);
            int action = motionEvent.getAction();
            if (action != 0) {
                if ((action == 1 || action == 3) && TCVideoRecordActivity.this.f24859a && TCVideoRecordActivity.this.E4) {
                    TCVideoRecordActivity.this.E4 = false;
                    if (TCVideoRecordActivity.this.F4) {
                        TCVideoRecordActivity.this.b1(8);
                    }
                    if (!TCVideoRecordActivity.this.f24891r) {
                        TCVideoRecordActivity.this.T0();
                        TCVideoRecordActivity.this.b1(2);
                    }
                    TCVideoRecordActivity.this.f24862a5.setVisibility(4);
                }
            } else {
                TCVideoRecordActivity.this.E4 = false;
            }
            return true;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class f implements RadioGroup.OnCheckedChangeListener {
        f() {
        }

        @Override // android.widget.RadioGroup.OnCheckedChangeListener
        public void onCheckedChanged(RadioGroup radioGroup, @IdRes int i9) {
            switch (i9) {
                case R.id.rb_fast /* 2131364142 */:
                    TCVideoRecordActivity.this.R = 3;
                    break;
                case R.id.rb_fastest /* 2131364143 */:
                    TCVideoRecordActivity.this.R = 4;
                    break;
                case R.id.rb_normal /* 2131364144 */:
                    TCVideoRecordActivity.this.R = 2;
                    break;
                case R.id.rb_slow /* 2131364145 */:
                    TCVideoRecordActivity.this.R = 1;
                    break;
                case R.id.rb_slowest /* 2131364146 */:
                    TCVideoRecordActivity.this.R = 0;
                    break;
            }
            if (TCVideoRecordActivity.this.f24867d != null) {
                TCVideoRecordActivity.this.f24867d.setRecordSpeed(TCVideoRecordActivity.this.R);
            }
        }
    }

    /* loaded from: classes3.dex */
    class g implements PendantDialog.c {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ PendantDialog f24906a;

        g(PendantDialog pendantDialog) {
            this.f24906a = pendantDialog;
        }

        @Override // com.guochao.faceshow.aaspring.modulars.onevone.pendant.PendantDialog.c
        public void a() {
        }

        @Override // com.guochao.faceshow.aaspring.modulars.onevone.pendant.PendantDialog.c
        public void b(String str, ResourceListItemBean resourceListItemBean) {
            if (TCVideoRecordActivity.this.f24876h5 == null || TextUtils.isEmpty(str)) {
                return;
            }
            TCVideoRecordActivity.this.f24876h5.setMotionTmpl(str);
            this.f24906a.W1(resourceListItemBean.getId(), 6, 2);
        }
    }

    /* loaded from: classes3.dex */
    class h implements View.OnClickListener {
        h() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            Tool.dismissPopWindow();
        }
    }

    /* loaded from: classes3.dex */
    class i implements RangeSlider.c {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ TextView f24909a;

        i(TextView textView) {
            this.f24909a = textView;
        }

        @Override // com.guochao.faceshow.views.RangeSlider.c
        public void a(int i9, int i10, int i11) {
            TCVideoRecordActivity tCVideoRecordActivity = TCVideoRecordActivity.this;
            tCVideoRecordActivity.N4 = (tCVideoRecordActivity.P * i10) / 100;
            TCVideoRecordActivity tCVideoRecordActivity2 = TCVideoRecordActivity.this;
            tCVideoRecordActivity2.O4 = (tCVideoRecordActivity2.P * i11) / 100;
            TCVideoRecordActivity tCVideoRecordActivity3 = TCVideoRecordActivity.this;
            tCVideoRecordActivity3.S0(tCVideoRecordActivity3.N4, tCVideoRecordActivity3.O4);
            this.f24909a.setText(String.format(TCVideoRecordActivity.this.getString(R.string.time_left_right), TCUtils.duration(TCVideoRecordActivity.this.N4), TCUtils.duration(TCVideoRecordActivity.this.O4)));
        }

        @Override // com.guochao.faceshow.views.RangeSlider.c
        public void b(int i9) {
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class j implements TXRecordCommon.ITXSnapshotListener {
        j() {
        }

        @Override // com.tencent.ugc.TXRecordCommon.ITXSnapshotListener
        public void onSnapshot(Bitmap bitmap) {
            TCVideoRecordActivity.a1(bitmap);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class k implements AudioManager.OnAudioFocusChangeListener {
        k() {
        }

        @Override // android.media.AudioManager.OnAudioFocusChangeListener
        public void onAudioFocusChange(int i9) {
            try {
                if (i9 == -1) {
                    TCVideoRecordActivity.this.T0();
                } else if (i9 == -2) {
                    TCVideoRecordActivity.this.T0();
                } else if (i9 == 1) {
                } else {
                    TCVideoRecordActivity.this.T0();
                }
            } catch (Exception e10) {
                e10.printStackTrace();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void B0() {
        if (!this.f24859a) {
            finish();
        }
        if (this.f24891r) {
            TXUGCRecord tXUGCRecord = this.f24867d;
            if (tXUGCRecord != null) {
                tXUGCRecord.getPartsManager().deleteAllParts();
            }
            finish();
            return;
        }
        T0();
    }

    private void B1(int i9, String str) {
        Toast toast = this.f24886m5;
        if (toast != null) {
            toast.cancel();
        }
        View inflate = getLayoutInflater().inflate(R.layout.video_toast_bg, (ViewGroup) null);
        Toast toast2 = new Toast(this);
        this.f24886m5 = toast2;
        toast2.setView(inflate);
        TextView textView = (TextView) inflate.findViewById(R.id.show_text);
        TextView textView2 = (TextView) inflate.findViewById(R.id.show_unm);
        if (i9 == 0) {
            textView.setText(" ");
        } else {
            textView.setText("F ");
        }
        textView2.setText(str);
        this.f24886m5.setGravity(49, 0, 200);
        this.f24886m5.setDuration(0);
        this.f24886m5.show();
    }

    private void D1() {
        if (this.f24867d == null) {
            return;
        }
        if (this.f24899z) {
            this.f24883l.setImageResource(R.drawable.selector_torch_close);
            this.f24867d.toggleTorch(false);
        } else {
            this.f24883l.setImageResource(R.drawable.selector_torch_open);
            this.f24867d.toggleTorch(true);
        }
        this.f24899z = !this.f24899z;
    }

    private void E0(int i9, TextView textView) {
        if (i9 > this.f24874g5.size() - 1) {
            return;
        }
        FilterItem filterItem = this.f24874g5.get(i9);
        LivePlayerProvider.beautyManager().setFilter(BeautyItemCacheManager.getFilterPath(filterItem), filterItem.getDefaultValue());
    }

    private void F0() {
        if (!this.f24859a || this.f24891r) {
            if (!this.f24897x) {
                this.f24897x = true;
                this.f24895v.j();
                return;
            }
            this.f24897x = false;
            this.f24895v.g();
            if (this.f24867d == null) {
                this.f24867d = TXUGCRecord.getInstance(this);
            }
            this.f24867d.getPartsManager().deleteLastPart();
            float duration = this.f24867d.getPartsManager().getDuration() / 1000.0f;
            this.f24877i.setText(Formatter.timeFormat(Math.min(duration, this.F / 1000.0f)));
            if (duration < this.E / 1000.0f) {
                this.f24875h.setImageResource(R.drawable.record_confirm);
                this.f24875h.setEnabled(false);
            } else {
                this.f24875h.setImageResource(R.drawable.record_confirm_enable);
                this.f24875h.setEnabled(true);
                this.f24864b5.setVisibility(0);
            }
            if (this.f24867d.getPartsManager().getPartsPathList().size() == 0) {
                this.f24896w.setVisibility(8);
                this.f24885m.setImageResource(R.mipmap.ugc_record_music_hover);
                this.f24885m.setEnabled(true);
                this.f24862a5.setVisibility(0);
            }
        }
    }

    private String G0() {
        String format = new SimpleDateFormat("yyyyMMdd_HHmmssSSS").format(new Date(System.currentTimeMillis()));
        StringBuilder sb2 = new StringBuilder();
        sb2.append(getExternalCacheDir());
        String str = File.separator;
        sb2.append(str);
        sb2.append("TXUGC");
        String sb3 = sb2.toString();
        File file = new File(sb3);
        if (!file.exists()) {
            file.mkdirs();
        }
        String str2 = sb3 + str + "TXUGC_" + format + FileUtils.PIC_POSTFIX_MP4;
        File file2 = new File(str2);
        if (!file2.exists()) {
            try {
                file2.createNewFile();
            } catch (IOException e10) {
                e10.printStackTrace();
            }
        }
        return str2;
    }

    private String H0() {
        StringBuilder sb2 = new StringBuilder();
        sb2.append(getExternalCacheDir());
        String str = File.separator;
        sb2.append(str);
        sb2.append(TCConstants.DEFAULT_MEDIA_PACK_FOLDER);
        sb2.append(str);
        sb2.append("UGCParts");
        String sb3 = sb2.toString();
        File file = new File(sb3);
        if (!file.exists()) {
            file.mkdirs();
        }
        return sb3;
    }

    private void I0() {
        Intent intent = getIntent();
        if (intent == null) {
            return;
        }
        this.E = intent.getIntExtra("record_config_min_duration", BaseConfig.isChinese() ? 3000 : 5000);
        this.F = intent.getIntExtra("record_config_max_duration", 15000);
        if (BaseConfig.isChinese()) {
            ToastUtils.showToast(this, getString(R.string.video_record_self_video_tip));
        }
        this.G = intent.getIntExtra("record_config_aspect_ratio", 0);
        this.D = 4;
        this.f24860a1 = intent.getBooleanExtra("record_config_go_editer", true);
        this.f24892s = this.G;
        this.f24895v.setMaxDuration(this.F);
        this.f24895v.setMinDuration(this.E);
        this.K = 4800;
        this.L = 25;
        this.M = 3;
    }

    private boolean N0() {
        ArrayList arrayList = new ArrayList();
        if (ContextCompat.checkSelfPermission(this, "android.permission.CAMERA") != 0) {
            arrayList.add("android.permission.CAMERA");
        }
        if (ContextCompat.checkSelfPermission(this, "android.permission.RECORD_AUDIO") != 0) {
            arrayList.add("android.permission.RECORD_AUDIO");
        }
        if (arrayList.size() != 0) {
            if (!this.f24866c5) {
                ActivityCompat.requestPermissions(this, (String[]) arrayList.toArray(new String[0]), 100);
                this.f24866c5 = false;
            }
            return false;
        }
        return true;
    }

    private void P0() {
        this.C4 = (RelativeLayout) findViewById(R.id.rl_play_root);
        FrameLayout frameLayout = (FrameLayout) findViewById(R.id.mask);
        this.f24894u = frameLayout;
        frameLayout.setOnTouchListener(this);
        this.G4 = (LinearLayout) findViewById(R.id.edit_layout);
        ImageView imageView = (ImageView) findViewById(R.id.btn_confirm);
        this.f24875h = imageView;
        imageView.setOnClickListener(this);
        this.f24875h.setImageResource(R.drawable.record_confirm);
        this.f24875h.setEnabled(false);
        this.f24862a5 = (LinearLayout) findViewById(R.id.my_video_ll);
        this.f24873g = (TXCloudVideoView) findViewById(R.id.video_view);
        this.B3 = (TextView) findViewById(R.id.time_tv);
        this.f24877i = (TextView) findViewById(R.id.progress_time);
        ImageView imageView2 = (ImageView) findViewById(R.id.btn_delete_last_part);
        this.f24896w = imageView2;
        imageView2.setOnClickListener(this);
        ImageView imageView3 = (ImageView) findViewById(R.id.my_video);
        this.H4 = imageView3;
        imageView3.setOnClickListener(this);
        ImageView imageView4 = (ImageView) findViewById(R.id.cut_music);
        this.K4 = imageView4;
        imageView4.setOnClickListener(this);
        ImageView imageView5 = (ImageView) findViewById(R.id.time_clock);
        this.V2 = imageView5;
        imageView5.setOnClickListener(this);
        ImageView imageView6 = (ImageView) findViewById(R.id.btn_switch_camera);
        this.T4 = imageView6;
        imageView6.setOnClickListener(this);
        this.f24885m = (ImageView) findViewById(R.id.btn_music_pannel);
        this.f24893t = (LinearLayout) findViewById(R.id.record_layout);
        ComposeRecordBtn composeRecordBtn = (ComposeRecordBtn) findViewById(R.id.compose_record_btn);
        this.f24887n = composeRecordBtn;
        this.f24895v = composeRecordBtn.getProgressView();
        this.A = new ScaleGestureDetector(this, this);
        l lVar = new l(this, "");
        this.f24881k = lVar;
        lVar.f(false);
        this.f24881k.g(false);
        ImageView imageView7 = (ImageView) findViewById(R.id.btn_torch);
        this.f24883l = imageView7;
        imageView7.setOnClickListener(this);
        if (this.f24865c) {
            this.f24883l.setVisibility(8);
        } else {
            this.f24883l.setVisibility(0);
        }
        GestureDetectorCompat gestureDetectorCompat = new GestureDetectorCompat(this, new d());
        this.f24872f5 = gestureDetectorCompat;
        gestureDetectorCompat.setIsLongpressEnabled(true);
        this.f24887n.setOnTouchListener(new e());
        this.Q = (RadioGroup) findViewById(R.id.rg_record_speed);
        ((RadioButton) findViewById(R.id.rb_normal)).setChecked(true);
        this.Q.setOnCheckedChangeListener(new f());
        this.f24879j = (TextView) findViewById(R.id.btn_orientation);
        this.f24896w.setVisibility(8);
        this.f24861a2 = (TextView) findViewById(R.id.snapshot);
        LinearLayout linearLayout = (LinearLayout) findViewById(R.id.face_dongxiao);
        this.D4 = linearLayout;
        linearLayout.setOnClickListener(this);
        this.f24861a2.setOnClickListener(this);
        this.U4 = (TextView) findViewById(R.id.question_title);
        this.f24862a5.setVisibility(0);
        int i9 = this.J4;
        if (i9 == 1 || i9 == 2 || i9 == 4) {
            this.f24862a5.setVisibility(0);
        } else if (i9 == 3) {
            this.f24862a5.setVisibility(0);
            this.f24885m.setVisibility(8);
            this.K4.setVisibility(0);
            this.N = getIntent().getStringExtra("musicPath");
        } else if (i9 == 5 || i9 == 55) {
            this.f24885m.setVisibility(8);
            this.f24883l.setVisibility(8);
            this.f24896w.setVisibility(8);
            this.T4.setVisibility(8);
            this.U4.setVisibility(0);
            this.U4.setText(this.V4);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void S0(long j10, long j11) {
        TXUGCRecord tXUGCRecord = this.f24867d;
        if (tXUGCRecord != null) {
            tXUGCRecord.setRecordSpeed(2);
            this.f24867d.playBGMFromTime(this.N4, this.O4);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void T0() {
        TXUGCRecord tXUGCRecord = this.f24867d;
        if (tXUGCRecord != null) {
            tXUGCRecord.pauseRecord();
            if (!TextUtils.isEmpty(this.O)) {
                this.f24867d.pauseBGM();
            }
        }
        b0();
        this.f24887n.c();
        this.f24891r = true;
        this.f24896w.setVisibility(0);
        this.Q.setVisibility(0);
    }

    private void W0() {
        try {
            TXUGCRecord tXUGCRecord = TXUGCRecord.getInstance(this);
            Field declaredField = tXUGCRecord.getClass().getDeclaredField("instance");
            declaredField.setAccessible(true);
            if (declaredField.get(null) != null) {
                declaredField.set(tXUGCRecord, null);
            }
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    private void X0() {
        RecordProgressView recordProgressView = this.f24895v;
        if (recordProgressView != null) {
            recordProgressView.i();
        }
        TXUGCRecord tXUGCRecord = this.f24867d;
        if (tXUGCRecord != null) {
            tXUGCRecord.stopBGM();
            this.f24867d.stopCameraPreview();
            TXUGCRecord tXUGCRecord2 = this.f24867d;
            if (tXUGCRecord2 != null && tXUGCRecord2.getPartsManager() != null) {
                this.f24867d.getPartsManager().deleteAllParts();
            }
            TXUGCRecord tXUGCRecord3 = this.f24867d;
            if (tXUGCRecord3 != null) {
                tXUGCRecord3.release();
            }
            W0();
            this.f24863b = false;
            this.f24876h5.destroyOnMainThread();
        }
        b0();
    }

    private void Y0() {
        if (this.f24889p == null) {
            this.f24889p = (AudioManager) getApplicationContext().getSystemService("audio");
        }
        if (this.f24890q == null) {
            this.f24890q = new k();
        }
        try {
            this.f24889p.requestAudioFocus(this.f24890q, 3, 1);
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    private void Z0() {
        TXUGCRecord tXUGCRecord = this.f24867d;
        if (tXUGCRecord != null && tXUGCRecord.resumeRecord() == 0) {
            if (!TextUtils.isEmpty(this.N)) {
                this.f24867d.setMicVolume(0.0f);
                String str = this.O;
                if (str != null && this.N.equals(str)) {
                    this.f24867d.resumeBGM();
                } else {
                    this.f24867d.setBGM(this.N);
                    this.f24867d.playBGMFromTime(this.N4, this.O4);
                    this.O = this.N;
                }
            }
            this.f24887n.d();
            this.f24896w.setVisibility(8);
            this.f24891r = false;
            this.f24897x = false;
            Y0();
            this.Q.setVisibility(4);
        }
    }

    public static void a1(Bitmap bitmap) {
        File txugcPath = FilePathProvider.getTxugcPath();
        if (!txugcPath.exists()) {
            txugcPath.mkdirs();
        }
        String format = new SimpleDateFormat("yyyyMMdd_HHmmssSSS").format(new Date(System.currentTimeMillis()));
        File file = new File(txugcPath, format + FileUtils.PIC_POSTFIX_JPEG);
        if (file.exists()) {
            file.delete();
        }
        try {
            FileOutputStream fileOutputStream = new FileOutputStream(file);
            bitmap.compress(Bitmap.CompressFormat.PNG, 100, fileOutputStream);
            fileOutputStream.flush();
            fileOutputStream.close();
        } catch (FileNotFoundException e10) {
            e10.printStackTrace();
        } catch (IOException e11) {
            e11.printStackTrace();
        }
    }

    private void b0() {
        AudioManager.OnAudioFocusChangeListener onAudioFocusChangeListener;
        try {
            AudioManager audioManager = this.f24889p;
            if (audioManager == null || (onAudioFocusChangeListener = this.f24890q) == null) {
                return;
            }
            audioManager.abandonAudioFocus(onAudioFocusChangeListener);
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void b1(int i9) {
        switch (i9) {
            case 1:
                this.Q.setVisibility(4);
                this.D4.setVisibility(4);
                this.f24862a5.setVisibility(4);
                this.f24896w.setVisibility(4);
                this.G4.setVisibility(4);
                this.B3.setVisibility(8);
                this.f24864b5.setVisibility(4);
                return;
            case 2:
                this.Q.setVisibility(0);
                this.D4.setVisibility(0);
                this.f24862a5.setVisibility(0);
                this.f24896w.setVisibility(0);
                this.G4.setVisibility(0);
                this.B3.setVisibility(8);
                this.f24864b5.setVisibility(0);
                return;
            case 3:
                this.f24893t.setVisibility(8);
                this.G4.setVisibility(4);
                this.f24864b5.setVisibility(4);
                return;
            case 4:
                this.f24893t.setVisibility(0);
                this.G4.setVisibility(0);
                this.f24864b5.setVisibility(0);
                return;
            case 5:
                this.f24893t.setVisibility(8);
                this.G4.setVisibility(4);
                this.f24864b5.setVisibility(4);
                return;
            case 6:
                this.f24864b5.setVisibility(0);
                this.f24893t.setVisibility(0);
                this.G4.setVisibility(0);
                return;
            case 7:
                this.Q.setVisibility(4);
                this.D4.setVisibility(4);
                this.f24862a5.setVisibility(4);
                this.f24896w.setVisibility(8);
                this.G4.setVisibility(8);
                this.B3.setVisibility(0);
                return;
            case 8:
                this.F4 = false;
                this.Q.setVisibility(0);
                this.D4.setVisibility(0);
                this.f24862a5.setVisibility(4);
                this.f24896w.setVisibility(0);
                this.G4.setVisibility(0);
                this.B3.setVisibility(8);
                return;
            default:
                return;
        }
    }

    private void d1() {
        com.guochao.faceshow.views.e eVar = new com.guochao.faceshow.views.e(this, new a());
        eVar.f(getString(R.string.give_up_record));
        eVar.k(getString(R.string.f16064ok));
        eVar.i(getString(R.string.str_no));
        eVar.show();
    }

    private void g1(int i9) {
        if (i9 != 0) {
            switch (i9) {
                case 10:
                    B1(10, "1");
                    return;
                case 11:
                    B1(11, "2");
                    return;
                case 12:
                    B1(12, "3");
                    return;
                case 13:
                    B1(13, "4");
                    return;
                case 14:
                    B1(14, "5");
                    return;
                case 15:
                    B1(15, MVPActivity.FROM_BAG_BADGE);
                    return;
                case 16:
                    B1(16, "7");
                    return;
                case 17:
                    B1(17, ReportController.REPORT_TYPE_ONE_V_ONE);
                    return;
                case 18:
                    B1(18, "9");
                    return;
                default:
                    return;
            }
        }
        B1(0, getString(R.string.normal_my));
    }

    private void h1() {
        TXUGCRecord tXUGCRecord = this.f24867d;
        if (tXUGCRecord != null) {
            tXUGCRecord.snapshot(new j());
        }
    }

    private void i1() {
        if (this.f24863b) {
            return;
        }
        this.f24863b = true;
        BeautyItemCacheManager.setBeauty(6, this.f24876h5);
        TXRecordCommon.TXUGCCustomConfig tXUGCCustomConfig = new TXRecordCommon.TXUGCCustomConfig();
        tXUGCCustomConfig.videoResolution = 3;
        tXUGCCustomConfig.minDuration = this.E;
        tXUGCCustomConfig.maxDuration = this.F;
        tXUGCCustomConfig.videoGop = 3;
        tXUGCCustomConfig.videoFps = 25;
        tXUGCCustomConfig.isFront = this.f24865c;
        tXUGCCustomConfig.needEdit = this.f24860a1;
        this.f24867d.setRecordSpeed(this.R);
        this.f24867d.startCameraCustomPreview(tXUGCCustomConfig, this.f24873g);
        this.f24867d.setAspectRatio(this.f24892s);
    }

    private void k1(long j10) {
        b bVar = new b(j10 * 1000, 1000L);
        this.V3 = bVar;
        bVar.start();
    }

    private void m1() {
        this.D4.setVisibility(0);
        Intent intent = new Intent(this, ZTCVideoEditerActivity.class);
        intent.putExtra("from", this.J4);
        intent.putExtra("choose", 0);
        FileUtil.deleteFile(this.f24869e.coverPath);
        intent.putExtra("type", 3);
        intent.putExtra(TCConstants.VIDEO_EDITER_PATH, this.f24869e.videoPath);
        intent.putExtra(TCConstants.VIDEO_EDITER_URI, Uri.parse(this.f24869e.videoPath));
        intent.putExtra(TCConstants.VIDEO_RECORD_COVERPATH, this.f24869e.coverPath);
        intent.putExtra("resolution", this.H);
        intent.putExtra("record_config_bite_rate", this.K);
        intent.putExtra("musicId", this.P4);
        intent.putExtra("musicName", this.Q4);
        intent.putExtra("musicImg", this.Z4);
        if (!TextUtils.isEmpty(this.N)) {
            intent.putExtra("isHaveBGM", 1);
        }
        int i9 = this.J4;
        if (i9 == 5 || i9 == 55) {
            intent.putExtra("questionTitle", this.V4);
            intent.putExtra("infoId", this.W4);
        }
        intent.putExtra("titleName", this.R4);
        intent.putExtra("type_id", this.X4);
        intent.putExtra("topic_id", this.S4);
        intent.putExtra("topicName", this.f24870e5);
        intent.putExtra("tyPeName", this.Y4);
        intent.putExtra("duration", this.Y4);
        startActivity(intent);
        b1(2);
        this.f24877i.setText("0.0");
        this.f24877i.setVisibility(4);
    }

    private void o1() {
        TXRecordCommon.TXRecordResult tXRecordResult = this.f24869e;
        if (tXRecordResult != null) {
            int i9 = tXRecordResult.retCode;
            if (i9 == 0 || i9 == 2 || i9 == 1) {
                Intent intent = new Intent(getApplicationContext(), TCVideoPreviewActivity.class);
                intent.putExtra("type", 3);
                intent.putExtra("result", this.f24869e.retCode);
                intent.putExtra(TCConstants.VIDEO_RECORD_DESCMSG, this.f24869e.descMsg);
                intent.putExtra(TCConstants.VIDEO_RECORD_VIDEPATH, this.f24869e.videoPath);
                intent.putExtra(TCConstants.VIDEO_RECORD_COVERPATH, this.f24869e.coverPath);
                intent.putExtra("duration", this.f24871f);
                intent.putExtra("topicName", this.f24870e5);
                intent.putExtra("resolution", 4);
                this.H = 4;
                startActivity(intent);
                finish();
            }
        }
    }

    private void q1() {
        if (getResources().getConfiguration().orientation == 2) {
            setRequestedOrientation(0);
        } else {
            setRequestedOrientation(1);
        }
        if (this.f24867d == null) {
            this.f24867d = TXUGCRecord.getInstance(getApplicationContext());
        }
        String G0 = G0();
        String replace = G0.replace(FileUtils.PIC_POSTFIX_MP4, FileUtils.PIC_POSTFIX_JPEG);
        if (this.f24867d.startRecord(G0, H0(), replace) != 0) {
            return;
        }
        this.f24887n.d();
        z8.c.o().E(true);
        this.f24896w.setVisibility(8);
        if (TextUtils.isEmpty(this.Z4)) {
            this.f24885m.setImageResource(R.mipmap.ugc_record_music_hover_unable);
        }
        this.f24885m.setEnabled(false);
        if (!TextUtils.isEmpty(this.N)) {
            this.P = this.f24867d.setBGM(this.N);
            this.f24867d.playBGMFromTime(this.N4, this.O4);
            this.O = this.N;
            this.f24867d.setMicVolume(0.0f);
        }
        this.f24859a = true;
        this.f24891r = false;
        Y0();
        this.Q.setVisibility(4);
        this.f24877i.setVisibility(0);
    }

    private void r1() {
        TXUGCRecord tXUGCRecord = this.f24867d;
        if (tXUGCRecord != null) {
            tXUGCRecord.stopBGM();
            this.f24867d.stopRecord();
        }
        this.f24859a = false;
        this.f24891r = false;
        b0();
        this.Q.setVisibility(0);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void t1() {
        long currentTimeMillis = System.currentTimeMillis();
        if (currentTimeMillis - this.f24898y < 200) {
            return;
        }
        if (this.f24859a) {
            if (this.f24891r) {
                TXUGCRecord tXUGCRecord = this.f24867d;
                if (tXUGCRecord == null) {
                    return;
                }
                if (tXUGCRecord.getPartsManager().getPartsPathList().size() == 0) {
                    q1();
                    b1(1);
                } else {
                    Z0();
                    b1(1);
                }
            } else {
                T0();
                b1(2);
            }
        } else {
            q1();
            b1(1);
        }
        this.f24862a5.setVisibility(4);
        this.f24898y = currentTimeMillis;
    }

    private void x1() {
        Intent intent = new Intent(this, TCVideoChooseActivity.class);
        intent.putExtra("from", this.J4);
        intent.putExtra("titleName", this.R4);
        intent.putExtra("typeId", this.X4);
        intent.putExtra("topic_id", this.S4);
        intent.putExtra("topicName", this.f24870e5);
        intent.putExtra("tyPeName", this.Y4);
        intent.putExtra("CHOOSE_TYPE", 0);
        startActivity(intent);
    }

    protected void Q0() {
        int rotation = getWindowManager().getDefaultDisplay().getRotation();
        this.J = 0;
        this.I = 1;
        if (rotation == 0) {
            this.I = 1;
        } else if (rotation == 1) {
            this.I = 0;
        } else if (rotation != 3) {
        } else {
            this.I = 2;
        }
    }

    @Override // com.guochao.faceshow.aaspring.base.activity.BaseActivity, android.app.Activity
    public void finish() {
        super.finish();
        X0();
        overridePendingTransition(R.anim.do_nothing, R.anim.exit_down);
    }

    @Override // com.guochao.faceshow.aaspring.base.activity.BaseActivity
    public int getLayoutId() {
        return R.layout.activity_video_record;
    }

    @Override // com.guochao.faceshow.aaspring.base.activity.BaseActivity
    public void initView() {
        getWindow().getDecorView().setSystemUiVisibility(UGCTransitionRules.DEFAULT_IMAGE_HEIGHT);
        TXUGCRecord tXUGCRecord = TXUGCRecord.getInstance(this);
        this.f24867d = tXUGCRecord;
        tXUGCRecord.setVideoRenderMode(0);
        this.f24867d.setVideoRecordListener(this);
        this.f24867d.setHomeOrientation(this.I);
        this.f24867d.setRenderRotation(this.J);
        this.f24867d.setVideoProcessListener(new c());
    }

    @Override // com.guochao.faceshow.aaspring.base.activity.BaseActivity
    public void loadData() {
    }

    @Override // com.guochao.faceshow.aaspring.base.activity.BaseActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, android.app.Activity
    public void onActivityResult(int i9, int i10, Intent intent) {
        super.onActivityResult(i9, i10, intent);
        if (i10 == -1 && i9 == 1000) {
            String stringExtra = intent.getStringExtra("music_url");
            String stringExtra2 = intent.getStringExtra("musicPath");
            String stringExtra3 = intent.getStringExtra("musicImg");
            this.Z4 = stringExtra3;
            if (!TextUtils.isEmpty(stringExtra3)) {
                hc.a.q(this.Z4, this.f24885m, R.mipmap.dog, this);
            } else {
                String str = SpUtils.getStr(this, Contants.USER_HEADIMG);
                this.Z4 = str;
                hc.a.q(str, this.f24885m, R.mipmap.default_head, this);
            }
            this.P4 = intent.getStringExtra("musicId");
            this.Q4 = intent.getStringExtra("musicName");
            if (!TextUtils.isEmpty(stringExtra)) {
                this.N = stringExtra;
            }
            if (!TextUtils.isEmpty(stringExtra2)) {
                this.N = stringExtra2;
            }
            TXUGCRecord tXUGCRecord = this.f24867d;
            if (tXUGCRecord != null) {
                this.P = tXUGCRecord.setBGM(this.N);
            }
            this.O4 = this.P;
        }
    }

    @Override // androidx.activity.ComponentActivity, android.app.Activity
    public void onBackPressed() {
        B0();
        finish();
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        switch (view.getId()) {
            case R.id.back_ll /* 2131362050 */:
                d1();
                return;
            case R.id.btn_confirm /* 2131362182 */:
                this.f24875h.setEnabled(false);
                this.D4.setVisibility(0);
                r1();
                return;
            case R.id.btn_delete_last_part /* 2131362184 */:
                F0();
                return;
            case R.id.btn_music_pannel /* 2131362191 */:
                startActivityForResult(new Intent(this, MusicActivity.class), 1000);
                return;
            case R.id.btn_switch_camera /* 2131362204 */:
                boolean z10 = !this.f24865c;
                this.f24865c = z10;
                if (z10) {
                    this.f24883l.setVisibility(8);
                    this.T4.setBackgroundResource(R.mipmap.ugc_switch_precamera);
                } else {
                    this.f24883l.setVisibility(0);
                    this.T4.setBackgroundResource(R.mipmap.ugc_switch_precamera);
                }
                this.f24899z = false;
                this.f24883l.setImageResource(R.drawable.selector_torch_close);
                TXUGCRecord tXUGCRecord = this.f24867d;
                if (tXUGCRecord != null) {
                    tXUGCRecord.switchCamera(this.f24865c);
                    return;
                }
                return;
            case R.id.btn_torch /* 2131362205 */:
                D1();
                return;
            case R.id.compose_record_btn /* 2131362362 */:
                if (this.F4) {
                    b1(8);
                }
                t1();
                return;
            case R.id.cut_music /* 2131362443 */:
                if (TextUtils.isEmpty(this.N)) {
                    return;
                }
                Tool.dismissPopWindow();
                View inflate = View.inflate(this, R.layout.pop_bgm_layout, null);
                ((TextView) inflate.findViewById(R.id.sure)).setOnClickListener(new h());
                this.L4 = (RangeSlider) inflate.findViewById(R.id.bgm_range_slider);
                RelativeLayout relativeLayout = (RelativeLayout) inflate.findViewById(R.id.jianqie_bgm);
                this.M4 = relativeLayout;
                relativeLayout.setOnClickListener(this);
                this.L4.n();
                TextView textView = (TextView) inflate.findViewById(R.id.start_end_time);
                textView.setText(String.format(getString(R.string.time_left_right), TCUtils.duration(0L), TCUtils.duration(this.P)));
                this.L4.setRangeChangeListener(new i(textView));
                this.M4.setVisibility(0);
                Tool.creatPopWindowBottomAnim(inflate, this.C4, -1, -2);
                return;
            case R.id.face_dongxiao /* 2131362748 */:
                PendantDialog pendantDialog = new PendantDialog();
                pendantDialog.setType(this.f24868d5);
                pendantDialog.setOnItemClickListener(new g(pendantDialog));
                pendantDialog.show(getSupportFragmentManager(), "");
                return;
            case R.id.my_video /* 2131363808 */:
                if (DisableDoubleClickUtils.canClick(view)) {
                    x1();
                    return;
                }
                return;
            case R.id.snapshot /* 2131364528 */:
                h1();
                return;
            case R.id.sure /* 2131364592 */:
                Tool.dismissPopWindow();
                this.f24867d.stopBGM();
                this.f24867d.setRecordSpeed(this.R);
                return;
            case R.id.time_clock /* 2131364765 */:
                b1(7);
                this.F4 = true;
                k1(4L);
                return;
            default:
                return;
        }
    }

    @Override // androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity, android.content.ComponentCallbacks
    public void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
        Q0();
        TXUGCRecord tXUGCRecord = this.f24867d;
        if (tXUGCRecord != null) {
            tXUGCRecord.stopCameraPreview();
        }
        if (this.f24859a && !this.f24891r) {
            T0();
        }
        TXUGCRecord tXUGCRecord2 = this.f24867d;
        if (tXUGCRecord2 != null) {
            tXUGCRecord2.pauseBGM();
        }
        this.f24863b = false;
        i1();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.guochao.faceshow.aaspring.base.activity.BaseActivity, com.guochao.faceshow.aaspring.base.mvvm.activity.GCCoreActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        VoiceRoomMiniHelper.releaseAll();
        getWindow().setFlags(1024, 1024);
        getWindow().addFlags(2097152);
        getWindow().addFlags(128);
        super.onCreate(bundle);
        this.f24867d = TXUGCRecord.getInstance(this);
        EventBus.getDefault().register(this);
        ImageView imageView = (ImageView) findViewById(R.id.back_ll);
        this.f24864b5 = imageView;
        imageView.setOnClickListener(this);
        this.J4 = getIntent().getIntExtra("from", 0);
        this.f24870e5 = getIntent().getStringExtra("topicName");
        this.P4 = getIntent().getStringExtra("musicId");
        this.Q4 = getIntent().getStringExtra("musicName");
        this.R4 = getIntent().getStringExtra("titleName");
        this.S4 = getIntent().getStringExtra("topic_id");
        this.X4 = getIntent().getStringExtra("type_id");
        this.Y4 = getIntent().getStringExtra("tyPeName");
        if (this.J4 == 5) {
            this.V4 = getIntent().getStringExtra("questionTitle");
        }
        if (this.J4 == 55) {
            this.V4 = getIntent().getStringExtra("questionTitle");
            this.W4 = getIntent().getStringExtra("infoId");
        }
        P0();
        I0();
        if (HealthLiveTipsFragment.checkShouldShow(1)) {
            HealthLiveTipsFragment.getInstance(1).show(getSupportFragmentManager(), AnalyticsEvents.PARAMETER_SHARE_DIALOG_CONTENT_VIDEO);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.guochao.faceshow.aaspring.base.activity.BaseActivity, com.guochao.faceshow.aaspring.base.mvvm.activity.GCCoreActivity, androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onDestroy() {
        super.onDestroy();
        EventBus.getDefault().unregister(this);
        TXUGCRecord tXUGCRecord = this.f24867d;
        if (tXUGCRecord != null) {
            tXUGCRecord.stopBGM();
            this.f24867d.release();
            W0();
        }
        z8.c.o().E(false);
    }

    @Override // android.view.GestureDetector.OnGestureListener
    public boolean onDown(MotionEvent motionEvent) {
        return false;
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public void onEventBus(String str) {
        if (str.equals("upLoadOver")) {
            finish();
        } else if (str.equals("recordFinish")) {
            B0();
        } else if (str.equals("recordAgian")) {
            TXUGCRecord tXUGCRecord = this.f24867d;
            if (tXUGCRecord != null) {
                tXUGCRecord.getPartsManager().deleteAllParts();
                this.f24887n.a();
            }
            if (this.f24867d.getPartsManager().getPartsPathList().size() == 0) {
                this.f24877i.setText("0.0");
                this.f24877i.setVisibility(4);
                this.f24896w.setVisibility(8);
                this.f24885m.setImageResource(R.mipmap.ugc_record_music_hover);
                this.f24885m.setEnabled(true);
            }
        }
    }

    @Override // android.view.GestureDetector.OnGestureListener
    public boolean onFling(MotionEvent motionEvent, MotionEvent motionEvent2, float f10, float f11) {
        return false;
    }

    @Override // com.guochao.faceshow.aaspring.base.mvvm.activity.GCCoreActivity, androidx.appcompat.app.AppCompatActivity, android.app.Activity, android.view.KeyEvent.Callback
    public boolean onKeyDown(int i9, KeyEvent keyEvent) {
        if (i9 == 4) {
            d1();
            return true;
        }
        return super.onKeyDown(i9, keyEvent);
    }

    @Override // android.view.GestureDetector.OnGestureListener
    public void onLongPress(MotionEvent motionEvent) {
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onPause() {
        super.onPause();
        TXUGCRecord tXUGCRecord = this.f24867d;
        if (tXUGCRecord != null) {
            tXUGCRecord.stopCameraPreview();
            this.f24863b = false;
            if (this.f24899z) {
                this.f24899z = false;
                this.f24883l.setImageResource(R.drawable.selector_torch_close);
            }
        }
        if (this.f24859a && !this.f24891r) {
            T0();
        }
        TXUGCRecord tXUGCRecord2 = this.f24867d;
        if (tXUGCRecord2 != null) {
            tXUGCRecord2.pauseBGM();
        }
    }

    @Override // com.tencent.ugc.TXRecordCommon.ITXVideoRecordListener
    public void onRecordComplete(TXRecordCommon.TXRecordResult tXRecordResult) {
        if (isFinishing() || isDestroyed()) {
            return;
        }
        LogUtils.i("zune：", "onRecordComplete = " + tXRecordResult.toString());
        z8.c.o().E(false);
        l lVar = this.f24881k;
        if (lVar != null) {
            lVar.d();
        }
        this.f24869e = tXRecordResult;
        if (tXRecordResult.retCode < 0) {
            this.f24859a = false;
            this.f24877i.setText(Formatter.timeFormat(Math.min(this.f24867d.getPartsManager().getDuration() / 1000.0f, this.F / 1000.0f)));
            return;
        }
        this.f24871f = this.f24867d.getPartsManager().getDuration();
        TXUGCRecord tXUGCRecord = this.f24867d;
        if (tXUGCRecord != null) {
            tXUGCRecord.getPartsManager().deleteAllParts();
            this.f24887n.a();
            this.f24896w.setVisibility(8);
            this.f24885m.setImageResource(R.mipmap.ugc_record_music_hover);
            this.f24885m.setEnabled(true);
            this.f24875h.setImageResource(R.drawable.record_confirm);
            this.f24875h.setEnabled(false);
        }
        if (this.f24860a1) {
            m1();
        } else {
            o1();
        }
    }

    @Override // com.tencent.ugc.TXRecordCommon.ITXVideoRecordListener
    public void onRecordEvent(int i9, Bundle bundle) {
        LogUtils.i("zune：", "onRecordEvent = " + i9);
        if (i9 == 1) {
            this.f24895v.e();
        }
    }

    @Override // com.tencent.ugc.TXRecordCommon.ITXVideoRecordListener
    public void onRecordProgress(long j10) {
        RecordProgressView recordProgressView = this.f24895v;
        if (recordProgressView == null) {
            return;
        }
        recordProgressView.setProgress((int) j10);
        float f10 = ((float) j10) / 1000.0f;
        LogUtils.i("zune：", "onRecordProgress = " + j10);
        this.f24877i.setText(Formatter.timeFormat(Math.min(f10, ((float) this.F) / 1000.0f)));
        if (f10 < this.E / 1000.0f) {
            this.f24875h.setImageResource(R.drawable.record_confirm);
            this.f24875h.setEnabled(false);
            return;
        }
        this.f24875h.setImageResource(R.drawable.record_confirm_enable);
        this.f24875h.setEnabled(true);
    }

    @Override // androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, android.app.Activity
    public void onRequestPermissionsResult(int i9, @NonNull String[] strArr, @NonNull int[] iArr) {
        super.onRequestPermissionsResult(i9, strArr, iArr);
        if (i9 != 100) {
            return;
        }
        for (int i10 : iArr) {
            if (i10 != 0) {
                this.f24866c5 = true;
                PackageUtils.gotoSetting(getActivity());
                return;
            }
        }
        i1();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.guochao.faceshow.aaspring.base.activity.BaseActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onResume() {
        super.onResume();
        this.f24862a5.setVisibility(0);
        Q0();
        if (N0()) {
            i1();
            if (this.J4 == 3) {
                int bgm = this.f24867d.setBGM(this.N);
                this.P = bgm;
                this.O4 = bgm;
            }
        }
    }

    @Override // android.view.ScaleGestureDetector.OnScaleGestureListener
    public boolean onScale(ScaleGestureDetector scaleGestureDetector) {
        int maxZoom;
        TXUGCRecord tXUGCRecord = this.f24867d;
        if (tXUGCRecord == null || (maxZoom = tXUGCRecord.getMaxZoom()) == 0) {
            return false;
        }
        this.B += scaleGestureDetector.getScaleFactor() - this.C;
        this.C = scaleGestureDetector.getScaleFactor();
        if (this.B < 0.0f) {
            this.B = 0.0f;
        }
        if (this.B > 1.0f) {
            this.B = 1.0f;
        }
        this.f24867d.setZoom(Math.round(this.B * maxZoom));
        return false;
    }

    @Override // android.view.ScaleGestureDetector.OnScaleGestureListener
    public boolean onScaleBegin(ScaleGestureDetector scaleGestureDetector) {
        this.C = scaleGestureDetector.getScaleFactor();
        return true;
    }

    @Override // android.view.ScaleGestureDetector.OnScaleGestureListener
    public void onScaleEnd(ScaleGestureDetector scaleGestureDetector) {
    }

    @Override // android.view.GestureDetector.OnGestureListener
    public boolean onScroll(MotionEvent motionEvent, MotionEvent motionEvent2, float f10, float f11) {
        return false;
    }

    @Override // android.view.GestureDetector.OnGestureListener
    public void onShowPress(MotionEvent motionEvent) {
    }

    @Override // android.view.GestureDetector.OnGestureListener
    public boolean onSingleTapUp(MotionEvent motionEvent) {
        this.f24893t.setVisibility(0);
        return false;
    }

    @Override // android.view.View.OnTouchListener
    public boolean onTouch(View view, MotionEvent motionEvent) {
        if (view == this.f24894u) {
            if (motionEvent.getPointerCount() >= 2) {
                this.A.onTouchEvent(motionEvent);
            } else if (motionEvent.getPointerCount() == 1) {
                int action = motionEvent.getAction();
                if (action == 0) {
                    this.f24880j5 = (int) motionEvent.getX();
                    this.f24882k5 = (int) motionEvent.getY();
                } else if (action == 1) {
                    int x10 = (int) motionEvent.getX();
                    motionEvent.getY();
                    int i9 = this.f24880j5;
                    if (i9 - x10 > 200) {
                        int i10 = this.f24884l5;
                        if (i10 == 0) {
                            this.f24884l5 = 10;
                        } else if (i10 < 18) {
                            this.f24884l5 = i10 + 1;
                        } else {
                            this.f24884l5 = 0;
                        }
                        int i11 = this.f24884l5;
                        this.f24878i5 = i11;
                        g1(i11);
                        E0(this.f24884l5, null);
                        return true;
                    } else if (x10 - i9 > 200) {
                        int i12 = this.f24884l5;
                        if (i12 == 0) {
                            this.f24884l5 = 18;
                        } else if (i12 > 10) {
                            this.f24884l5 = i12 - 1;
                        } else {
                            this.f24884l5 = 0;
                        }
                        int i13 = this.f24884l5;
                        this.f24878i5 = i13;
                        g1(i13);
                        E0(this.f24884l5, null);
                        return true;
                    }
                }
            }
        }
        return true;
    }
}
