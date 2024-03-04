package com.guochao.faceshow.aaspring.modulars.ugc.activity;

import android.app.Activity;
import android.content.Intent;
import android.os.Handler;
import android.util.Log;
import android.view.SurfaceHolder;
import android.view.SurfaceView;
import android.view.View;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.appcompat.app.AppCompatDelegate;
import butterknife.BindView;
import butterknife.OnClick;
import com.google.zxing.Result;
import com.guochao.faceshow.R;
import com.guochao.faceshow.aaspring.base.activity.BaseActivity;
import com.guochao.faceshow.aaspring.base.activity.a;
import com.guochao.faceshow.aaspring.beans.LocalImageOrVideoBean;
import com.guochao.faceshow.aaspring.modulars.onevone.face2face.FaceToFaceFloatWindowManager;
import com.guochao.faceshow.aaspring.modulars.ugc.zxing.bean.ZxingConfig;
import com.guochao.faceshow.aaspring.modulars.ugc.zxing.view.ViewfinderView;
import com.guochao.faceshow.aaspring.utils.SimpleObserver;
import com.guochao.faceshow.aaspring.utils.ToastUtils;
import java.io.IOException;
/* loaded from: classes3.dex */
public class ScanActivity extends BaseActivity implements SurfaceHolder.Callback, View.OnClickListener {

    /* renamed from: i  reason: collision with root package name */
    private static final String f22371i = ScanActivity.class.getSimpleName();

    /* renamed from: a  reason: collision with root package name */
    private SurfaceView f22372a;

    /* renamed from: b  reason: collision with root package name */
    private ViewfinderView f22373b;

    /* renamed from: c  reason: collision with root package name */
    private boolean f22374c;

    /* renamed from: d  reason: collision with root package name */
    private ca.b f22375d;

    /* renamed from: e  reason: collision with root package name */
    private da.c f22376e;

    /* renamed from: f  reason: collision with root package name */
    private ca.a f22377f;

    /* renamed from: g  reason: collision with root package name */
    private SurfaceHolder f22378g;

    /* renamed from: h  reason: collision with root package name */
    public ZxingConfig f22379h;
    @BindView
    LinearLayout llQrCode;
    @BindView
    TextView title;

    /* loaded from: classes3.dex */
    class a extends SimpleObserver<te.a> {
        a() {
        }

        @Override // com.guochao.faceshow.aaspring.utils.SimpleObserver, io.reactivex.r
        public void onNext(te.a aVar) {
            if (aVar.f58133b) {
                ScanActivity.this.startActivityForResult(new Intent(ScanActivity.this, PhotoActivity.class), 10023);
                ScanActivity.this.overridePendingTransition(R.anim.bottom_to_top, R.anim.activity_stay);
            }
        }
    }

    /* loaded from: classes3.dex */
    class b extends SimpleObserver<Result> {
        b() {
        }

        @Override // com.guochao.faceshow.aaspring.utils.SimpleObserver, io.reactivex.r
        /* renamed from: a */
        public void onNext(Result result) {
            super.onNext(result);
            ScanActivity.this.f22377f.c(result);
        }

        @Override // com.guochao.faceshow.aaspring.utils.SimpleObserver, io.reactivex.r
        public void onError(Throwable th2) {
            super.onError(th2);
            ToastUtils.showToast(ScanActivity.this.getApplicationContext(), (int) R.string.ugc_no_facecast_qr_code);
        }
    }

    /* loaded from: classes3.dex */
    class c implements vh.o<Integer, Result> {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ LocalImageOrVideoBean f22382a;

        c(LocalImageOrVideoBean localImageOrVideoBean) {
            this.f22382a = localImageOrVideoBean;
        }

        @Override // vh.o
        /* renamed from: a */
        public Result apply(Integer num) throws Exception {
            return new ea.d(this.f22382a.getDisplayUri()).c();
        }
    }

    static {
        AppCompatDelegate.setCompatVectorFromResourcesEnabled(true);
    }

    private void k0(SurfaceHolder surfaceHolder) {
        if (surfaceHolder != null) {
            if (this.f22376e.e()) {
                return;
            }
            try {
                this.f22376e.f(surfaceHolder);
                if (this.f22377f == null) {
                    this.f22377f = new ca.a(this, this.f22376e);
                    return;
                }
                return;
            } catch (IOException e10) {
                Log.w(f22371i, e10);
                return;
            } catch (RuntimeException e11) {
                Log.w(f22371i, "Unexpected error initializing camera", e11);
                return;
            }
        }
        throw new IllegalStateException("No SurfaceHolder provided");
    }

    public static void m0(Activity activity) {
        if (FaceToFaceFloatWindowManager.getInstance().isFaceToFaceFloatShowing()) {
            ToastUtils.showToast(activity, (int) R.string.one_v_one_is_matching);
            return;
        }
        Intent intent = new Intent(activity, ScanActivity.class);
        ZxingConfig zxingConfig = new ZxingConfig();
        zxingConfig.setFullScreenScan(false);
        zxingConfig.setShake(false);
        zxingConfig.setFrameLineColor(R.color.scan_line);
        zxingConfig.setReactColor(R.color.colorPrimary);
        zxingConfig.setScanLineColor(R.color.colorPrimary);
        intent.putExtra("zxingConfig", zxingConfig);
        activity.startActivityForResult(intent, 1001);
        activity.overridePendingTransition(R.anim.bottom_to_top, R.anim.activity_stay);
    }

    public void d0() {
        this.f22373b.i();
    }

    public da.c e0() {
        return this.f22376e;
    }

    @Override // com.guochao.faceshow.aaspring.base.activity.BaseActivity, android.app.Activity
    public void finish() {
        super.finish();
        overridePendingTransition(R.anim.activity_stay, R.anim.top_to_bottom);
    }

    public Handler g0() {
        return this.f22377f;
    }

    @Override // com.guochao.faceshow.aaspring.base.activity.BaseActivity
    public com.guochao.faceshow.aaspring.base.activity.a getActivityConfig() {
        return new a.C0147a(this).b(true).a();
    }

    @Override // com.guochao.faceshow.aaspring.base.activity.BaseActivity
    public int getLayoutId() {
        getWindow().addFlags(128);
        return R.layout.activity_scan;
    }

    public ViewfinderView i0() {
        return this.f22373b;
    }

    @Override // com.guochao.faceshow.aaspring.base.activity.BaseActivity
    public void initView() {
        setLightStatusBar(false);
        try {
            this.f22379h = (ZxingConfig) getIntent().getExtras().get("zxingConfig");
        } catch (Exception e10) {
            Log.i("config", e10.toString());
        }
        if (this.f22379h == null) {
            this.f22379h = new ZxingConfig();
        }
        setTitle(R.string.ugc_qr_scan);
        this.f22374c = false;
        this.f22375d = new ca.b(this);
        SurfaceView surfaceView = (SurfaceView) findViewById(R.id.preview_view);
        this.f22372a = surfaceView;
        surfaceView.setOnClickListener(this);
        ViewfinderView viewfinderView = (ViewfinderView) findViewById(R.id.viewfinder_view);
        this.f22373b = viewfinderView;
        viewfinderView.setZxingConfig(this.f22379h);
        this.llQrCode.setVisibility(0);
    }

    public void l0() {
        da.c cVar = new da.c(getApplication(), this.f22379h);
        this.f22376e = cVar;
        this.f22373b.setCameraManager(cVar);
        this.f22377f = null;
        SurfaceHolder holder = this.f22372a.getHolder();
        this.f22378g = holder;
        if (this.f22374c) {
            k0(holder);
        } else {
            holder.addCallback(this);
        }
        this.f22375d.g();
    }

    @Override // com.guochao.faceshow.aaspring.base.activity.BaseActivity
    public void loadData() {
    }

    public void n0(int i9) {
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.guochao.faceshow.aaspring.base.activity.BaseActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, android.app.Activity
    public void onActivityResult(int i9, int i10, Intent intent) {
        super.onActivityResult(i9, i10, intent);
        if (i9 == 10023 && i10 == -1 && intent != null && intent.getExtras() != null) {
            LocalImageOrVideoBean localImageOrVideoBean = (LocalImageOrVideoBean) intent.getExtras().getParcelable("data");
            if (localImageOrVideoBean == null) {
                return;
            }
            io.reactivex.k.just(1).map(new c(localImageOrVideoBean)).subscribeOn(di.a.b()).observeOn(sh.a.a()).subscribe(new b());
        }
        if (i9 == 1024 && i10 == -1) {
            finish();
        }
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.guochao.faceshow.aaspring.base.activity.BaseActivity, com.guochao.faceshow.aaspring.base.mvvm.activity.GCCoreActivity, androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onDestroy() {
        this.f22375d.h();
        this.f22375d.f();
        this.f22373b.n();
        this.f22376e.b();
        super.onDestroy();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.guochao.faceshow.aaspring.base.activity.BaseActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onResume() {
        super.onResume();
        l0();
    }

    @OnClick
    public void showMore() {
        new com.tbruyelle.rxpermissions2.a(this).p("android.permission.READ_EXTERNAL_STORAGE", "android.permission.WRITE_EXTERNAL_STORAGE").subscribe(new a());
    }

    @Override // android.view.SurfaceHolder.Callback
    public void surfaceChanged(SurfaceHolder surfaceHolder, int i9, int i10, int i11) {
    }

    @Override // android.view.SurfaceHolder.Callback
    public void surfaceCreated(SurfaceHolder surfaceHolder) {
        if (this.f22374c) {
            return;
        }
        this.f22374c = true;
        k0(surfaceHolder);
    }

    @Override // android.view.SurfaceHolder.Callback
    public void surfaceDestroyed(SurfaceHolder surfaceHolder) {
        this.f22374c = false;
    }
}
