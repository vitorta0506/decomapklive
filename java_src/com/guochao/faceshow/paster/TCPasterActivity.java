package com.guochao.faceshow.paster;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.os.Bundle;
import android.text.TextUtils;
import android.view.KeyEvent;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.annotation.Nullable;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.guochao.faceshow.R;
import com.guochao.faceshow.aaspring.base.activity.BaseActivity;
import com.guochao.faceshow.aaspring.beans.ResourceListItemBean;
import com.guochao.faceshow.aaspring.modulars.onevone.pendant.PendantDialog;
import com.guochao.faceshow.aaspring.utils.MemoryCache;
import com.guochao.faceshow.aaspring.utils.ToastUtils;
import com.guochao.faceshow.adapter.ZZ_RecycleAdapter;
import com.guochao.faceshow.utils.TCVideoEditerWrapper;
import com.guochao.faceshow.views.PasterOperationView;
import com.guochao.faceshow.views.TCLayerOperationView;
import com.guochao.faceshow.views.TCLayerViewGroup;
import com.guochao.faceshow.views.TimeSeekBar;
import com.guochao.faceshow.views.q;
import com.tencent.ugc.TXVideoEditConstants;
import com.tencent.ugc.TXVideoEditer;
import com.tencent.ugc.UGCTransitionRules;
import java.io.File;
import java.util.ArrayList;
import java.util.List;
import org.greenrobot.eventbus.EventBus;
import org.light.utils.FileUtils;
/* loaded from: classes4.dex */
public class TCPasterActivity extends BaseActivity implements View.OnClickListener, TCLayerViewGroup.a, TCLayerOperationView.a, TCVideoEditerWrapper.TXVideoPreviewListenerWrapper {

    /* renamed from: a  reason: collision with root package name */
    private long f26083a;

    /* renamed from: b  reason: collision with root package name */
    private long f26084b;

    /* renamed from: d  reason: collision with root package name */
    private TXVideoEditer f26086d;

    /* renamed from: e  reason: collision with root package name */
    private FrameLayout f26087e;

    /* renamed from: f  reason: collision with root package name */
    private long f26088f;

    /* renamed from: g  reason: collision with root package name */
    private long f26089g;

    /* renamed from: h  reason: collision with root package name */
    private TextView f26090h;

    /* renamed from: i  reason: collision with root package name */
    private TCLayerViewGroup f26091i;

    /* renamed from: j  reason: collision with root package name */
    private View f26092j;

    /* renamed from: k  reason: collision with root package name */
    private ImageView f26093k;

    /* renamed from: l  reason: collision with root package name */
    private ImageView f26094l;

    /* renamed from: o  reason: collision with root package name */
    private TXVideoEditConstants.TXVideoInfo f26097o;

    /* renamed from: p  reason: collision with root package name */
    private long f26098p;

    /* renamed from: q  reason: collision with root package name */
    private TimeSeekBar f26099q;

    /* renamed from: r  reason: collision with root package name */
    private RecyclerView f26100r;

    /* renamed from: s  reason: collision with root package name */
    private ZZ_RecycleAdapter<ResourceListItemBean> f26101s;

    /* renamed from: t  reason: collision with root package name */
    private TextView f26102t;

    /* renamed from: u  reason: collision with root package name */
    private List<Bitmap> f26103u;

    /* renamed from: v  reason: collision with root package name */
    private List<ResourceListItemBean> f26104v;

    /* renamed from: c  reason: collision with root package name */
    private int f26085c = 4;

    /* renamed from: m  reason: collision with root package name */
    private int f26095m = -1;

    /* renamed from: n  reason: collision with root package name */
    private boolean f26096n = false;

    /* renamed from: w  reason: collision with root package name */
    int f26105w = 8;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes4.dex */
    public class a extends ZZ_RecycleAdapter<ResourceListItemBean> {

        /* JADX INFO: Access modifiers changed from: package-private */
        /* renamed from: com.guochao.faceshow.paster.TCPasterActivity$a$a  reason: collision with other inner class name */
        /* loaded from: classes4.dex */
        public class View$OnClickListenerC0262a implements View.OnClickListener {

            /* renamed from: a  reason: collision with root package name */
            final /* synthetic */ int f26107a;

            View$OnClickListenerC0262a(int i9) {
                this.f26107a = i9;
            }

            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                if (TCPasterActivity.this.f26085c == 2 || TCPasterActivity.this.f26085c == 1) {
                    TCPasterActivity.this.E0(true);
                }
                TCPasterActivity.this.f26099q.p();
                TCPasterActivity.this.f26091i.setViewVisiable(this.f26107a);
                TCLayerOperationView selectedLayerOperationView = TCPasterActivity.this.f26091i.getSelectedLayerOperationView();
                TCPasterActivity.this.f26099q.o(selectedLayerOperationView.getStartTime(), selectedLayerOperationView.getEndTime());
            }
        }

        a(Context context, int i9) {
            super(context, i9);
        }

        @Override // com.guochao.faceshow.adapter.ZZ_RecycleAdapter
        /* renamed from: a */
        public void convert(ZZ_RecycleAdapter.ViewHolder viewHolder, ResourceListItemBean resourceListItemBean) {
            ImageView c10 = viewHolder.c(R.id.iv_paster);
            hc.a.j(c10, resourceListItemBean.getImg());
            c10.setOnClickListener(new View$OnClickListenerC0262a(viewHolder.getPosition()));
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes4.dex */
    public class b implements TimeSeekBar.d {
        b() {
        }

        @Override // com.guochao.faceshow.views.TimeSeekBar.d
        public void a(long j10, long j11) {
            TCLayerOperationView selectedLayerOperationView = TCPasterActivity.this.f26091i.getSelectedLayerOperationView();
            if (selectedLayerOperationView != null) {
                selectedLayerOperationView.n(j10, j11);
                TCPasterActivity.this.r0();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes4.dex */
    public class c implements TimeSeekBar.c {
        c() {
        }

        @Override // com.guochao.faceshow.views.TimeSeekBar.c
        public void a(long j10) {
            TCPasterActivity tCPasterActivity = TCPasterActivity.this;
            ToastUtils.showToast(tCPasterActivity, j10 + "");
            TCPasterActivity.this.E0(false);
            TCPasterActivity.this.f26098p = j10;
            TCPasterActivity.this.f26085c = 5;
            TCPasterActivity.this.f26086d.previewAtTime(j10);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes4.dex */
    public class d implements Runnable {
        d() {
        }

        @Override // java.lang.Runnable
        public void run() {
            TCPasterActivity.this.r0();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes4.dex */
    public class e implements Runnable {
        e() {
        }

        @Override // java.lang.Runnable
        public void run() {
            TCPasterActivity.this.f26093k.setImageResource(R.mipmap.icon_video_stop);
            TCPasterActivity.this.f26091i.setVisibility(4);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes4.dex */
    public class f implements PendantDialog.c {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ PendantDialog f26113a;

        f(PendantDialog pendantDialog) {
            this.f26113a = pendantDialog;
        }

        @Override // com.guochao.faceshow.aaspring.modulars.onevone.pendant.PendantDialog.c
        public void a() {
        }

        @Override // com.guochao.faceshow.aaspring.modulars.onevone.pendant.PendantDialog.c
        public void b(String str, ResourceListItemBean resourceListItemBean) {
            TCPasterActivity.this.s0(str, resourceListItemBean);
            this.f26113a.W1(resourceListItemBean.getId(), 8, 3);
            this.f26113a.dismiss();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes4.dex */
    public class g implements PendantDialog.b {
        g() {
        }

        @Override // com.guochao.faceshow.aaspring.modulars.onevone.pendant.PendantDialog.b
        public void onDismiss() {
            TCPasterActivity.this.N0();
        }
    }

    /* loaded from: classes4.dex */
    class h implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ int f26116a;

        h(int i9) {
            this.f26116a = i9;
        }

        @Override // java.lang.Runnable
        public void run() {
            if (TCPasterActivity.this.f26085c == 2 || TCPasterActivity.this.f26085c == 1) {
                TCPasterActivity.this.f26099q.setCurrentTimeMs(this.f26116a);
            }
        }
    }

    /* loaded from: classes4.dex */
    class i implements Runnable {
        i() {
        }

        @Override // java.lang.Runnable
        public void run() {
            if (TCPasterActivity.this.f26085c == 2 || TCPasterActivity.this.f26085c == 1) {
                TCPasterActivity.this.f26099q.setCurrentTimeMs((int) TCPasterActivity.this.f26097o.duration);
            }
        }
    }

    private void A0() {
        findViewById(R.id.back_ll).setOnClickListener(this);
        ((TextView) findViewById(R.id.tv_title)).setText(R.string.post);
        TextView textView = (TextView) findViewById(R.id.tv_done);
        this.f26090h = textView;
        textView.setOnClickListener(this);
        TCLayerViewGroup tCLayerViewGroup = (TCLayerViewGroup) findViewById(R.id.paster_container);
        this.f26091i = tCLayerViewGroup;
        tCLayerViewGroup.setOnItemClickListener(this);
        View findViewById = findViewById(R.id.paster_fl_player);
        this.f26092j = findViewById;
        findViewById.setOnClickListener(this);
        this.f26087e = (FrameLayout) findViewById(R.id.paster_fl_video_view);
        ImageView imageView = (ImageView) findViewById(R.id.btn_play);
        this.f26093k = imageView;
        imageView.setOnClickListener(this);
        TextView textView2 = (TextView) findViewById(R.id.tv_done);
        this.f26102t = textView2;
        textView2.setOnClickListener(this);
        ImageView imageView2 = (ImageView) findViewById(R.id.paster_btn_add);
        this.f26094l = imageView2;
        imageView2.setOnClickListener(this);
        TimeSeekBar timeSeekBar = (TimeSeekBar) findViewById(R.id.myTimeSeekBar);
        this.f26099q = timeSeekBar;
        TXVideoEditConstants.TXVideoInfo tXVideoInfo = this.f26097o;
        timeSeekBar.setMaxDurationMs(tXVideoInfo != null ? tXVideoInfo.duration : 0L);
        this.f26099q.m(0L, 2000L);
        this.f26100r = (RecyclerView) findViewById(R.id.pster_recyclerView);
        LinearLayoutManager linearLayoutManager = new LinearLayoutManager(this);
        linearLayoutManager.setOrientation(0);
        this.f26100r.setLayoutManager(linearLayoutManager);
        a aVar = new a(this, R.layout.layout_paster_select_view);
        this.f26101s = aVar;
        aVar.setEmptyIcon(0);
        this.f26100r.setAdapter(this.f26101s);
        this.f26101s.resetData(this.f26104v);
        this.f26099q.setRangeChangeListener(new b());
        this.f26099q.setProgressChangeListener(new c());
    }

    private void B0() {
        int i9 = this.f26085c;
        if (i9 == 3 || i9 == 5) {
            this.f26094l.setVisibility(0);
            this.f26100r.setVisibility(0);
            H0();
        } else if (i9 == 2 || i9 == 1) {
            E0(true);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void E0(boolean z10) {
        this.f26099q.setProgressChange(true);
        if (z10) {
            this.f26086d.refreshOneFrame();
            this.f26091i.setVisibility(0);
        }
        int i9 = this.f26085c;
        if (i9 == 1 || i9 == 2) {
            this.f26086d.pausePlay();
            this.f26085c = 3;
            this.f26093k.setImageResource(R.mipmap.icon_ugc_video);
        } else if (i9 == 5) {
            this.f26085c = 3;
            this.f26086d.pausePlay();
            this.f26093k.setImageResource(R.mipmap.icon_ugc_video);
        }
    }

    private void F0() {
        if (this.f26096n) {
            return;
        }
        G0();
    }

    private void G0() {
        ab.b d10 = ab.b.d();
        for (int i9 = 0; i9 < d10.e(); i9++) {
            ab.a c10 = d10.c(i9);
            Bitmap decodeFile = BitmapFactory.decodeFile(c10.d());
            if (decodeFile != null) {
                PasterOperationView a10 = q.a(this);
                a10.setImageBitamp(decodeFile);
                a10.setChildType(c10.i());
                a10.setCenterX(c10.g());
                a10.setCenterY(c10.h());
                a10.setImageRotate(c10.e());
                a10.setImageScale(c10.b());
                a10.setPasterPath(c10.d());
                a10.setPasterName(c10.c());
                a10.setIOperationViewClickListener(this);
                a10.n(c10.f(), c10.a());
                this.f26091i.a(a10);
            }
        }
        this.f26095m = d10.e() - 1;
    }

    private void H0() {
        this.f26099q.setProgressChange(false);
        this.f26099q.l();
        this.f26093k.setImageResource(R.mipmap.icon_video_stop);
        this.f26091i.setVisibility(4);
        int i9 = this.f26085c;
        if (i9 == 3) {
            this.f26086d.startPlayFromTime(this.f26089g, this.f26088f);
        } else if (i9 == 5) {
            this.f26086d.startPlayFromTime(this.f26098p, this.f26088f);
        }
        this.f26085c = 2;
    }

    private void I0() {
        ab.b d10 = ab.b.d();
        d10.b();
        for (int i9 = 0; i9 < this.f26091i.getChildCount(); i9++) {
            PasterOperationView pasterOperationView = (PasterOperationView) this.f26091i.b(i9);
            ab.a aVar = new ab.a();
            aVar.p(pasterOperationView.getCenterX());
            aVar.q(pasterOperationView.getCenterY());
            aVar.n(pasterOperationView.getImageRotate());
            aVar.k(pasterOperationView.getImageScale());
            aVar.m(pasterOperationView.getPasterPath());
            aVar.o(pasterOperationView.getStartTime());
            aVar.j(pasterOperationView.getEndTime());
            aVar.l(pasterOperationView.getPasterName());
            aVar.r(pasterOperationView.getChildType());
            d10.a(aVar);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void N0() {
        this.f26099q.o(this.f26083a, this.f26084b);
        this.f26094l.setVisibility(0);
        this.f26101s.resetData(this.f26104v);
        this.f26100r.setVisibility(0);
    }

    private void P0() {
        this.f26099q.p();
        this.f26094l.setVisibility(8);
        this.f26100r.setVisibility(8);
        PendantDialog pendantDialog = new PendantDialog();
        pendantDialog.setType(this.f26105w);
        pendantDialog.show(getSupportFragmentManager(), "");
        pendantDialog.setOnItemClickListener(new f(pendantDialog));
        pendantDialog.setOnDismissListener(new g());
    }

    private void Q0() {
        this.f26099q.l();
        int i9 = this.f26085c;
        if (i9 == 0 || i9 == 4) {
            this.f26086d.startPlayFromTime(this.f26089g, this.f26088f);
            this.f26085c = 1;
            runOnUiThread(new e());
        }
    }

    private void S0() {
        int i9 = this.f26085c;
        if (i9 == 2 || i9 == 1) {
            this.f26086d.stopPlay();
            this.f26085c = 4;
            this.f26093k.setImageResource(R.mipmap.icon_ugc_video);
        }
    }

    private void T0() {
        TCLayerViewGroup tCLayerViewGroup = this.f26091i;
        long childCount = this.f26089g + ((tCLayerViewGroup != null ? tCLayerViewGroup.getChildCount() : 0) * 3000);
        this.f26083a = childCount;
        long j10 = childCount + 2000;
        this.f26084b = j10;
        long j11 = this.f26088f;
        if (childCount > j11) {
            this.f26083a = j11 - 2000;
            this.f26084b = j11;
        } else if (j10 > j11) {
            this.f26084b = j11;
        }
    }

    private void initData() {
        TCVideoEditerWrapper tCVideoEditerWrapper = TCVideoEditerWrapper.getInstance();
        tCVideoEditerWrapper.addTXVideoPreviewListenerWrapper(this);
        this.f26086d = tCVideoEditerWrapper.getEditer();
        TXVideoEditConstants.TXVideoInfo tXVideoInfo = tCVideoEditerWrapper.getTXVideoInfo();
        this.f26097o = tXVideoInfo;
        if (tXVideoInfo == null) {
            return;
        }
        this.f26089g = 0L;
        this.f26088f = tXVideoInfo.duration;
        T0();
        this.f26103u = tCVideoEditerWrapper.getAllThumbnails();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void r0() {
        ArrayList arrayList = new ArrayList();
        if (this.f26091i == null) {
            return;
        }
        for (int i9 = 0; i9 < this.f26091i.getChildCount(); i9++) {
            PasterOperationView pasterOperationView = (PasterOperationView) this.f26091i.b(i9);
            TXVideoEditConstants.TXRect tXRect = new TXVideoEditConstants.TXRect();
            pasterOperationView.getImageX();
            tXRect.f34645x = pasterOperationView.getImageX();
            tXRect.f34646y = pasterOperationView.getImageY();
            tXRect.width = pasterOperationView.getImageWidth();
            TXVideoEditConstants.TXPaster tXPaster = new TXVideoEditConstants.TXPaster();
            tXPaster.pasterImage = pasterOperationView.getRotateBitmap();
            tXPaster.startTime = pasterOperationView.getStartTime();
            tXPaster.endTime = pasterOperationView.getEndTime();
            tXPaster.frame = tXRect;
            arrayList.add(tXPaster);
        }
        this.f26086d.setPasterList(arrayList);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void s0(String str, ResourceListItemBean resourceListItemBean) {
        File[] listFiles;
        File file = new File(str);
        String str2 = null;
        if (file.exists() && file.isDirectory()) {
            for (File file2 : file.listFiles()) {
                if (file2.getName().endsWith(FileUtils.PIC_POSTFIX_PNG)) {
                    str2 = file2.getPath();
                }
            }
            if (TextUtils.isEmpty(str2)) {
                return;
            }
        } else if (!file.exists()) {
            return;
        } else {
            if (file.getName().endsWith(FileUtils.PIC_POSTFIX_PNG)) {
                str2 = file.getPath();
            }
        }
        y7.c cVar = new y7.c();
        cVar.f60129a = resourceListItemBean;
        cVar.f60130b = true;
        EventBus.getDefault().post(cVar);
        Bitmap decodeFile = BitmapFactory.decodeFile(str2);
        T0();
        PasterOperationView a10 = q.a(this);
        a10.setPasterPath(str2);
        a10.setChildType(1);
        a10.setImageBitamp(decodeFile);
        a10.setCenterX(this.f26091i.getWidth() / 2);
        a10.setCenterY(this.f26091i.getHeight() / 2);
        a10.n(this.f26083a, this.f26084b);
        a10.setIOperationViewClickListener(this);
        a10.setPasterName(resourceListItemBean.getName());
        this.f26091i.a(a10);
        this.f26091i.post(new d());
    }

    private void t0() {
        ab.b.d().b();
        this.f26086d.setPasterList(null);
        this.f26104v.clear();
        int i9 = this.f26085c;
        if (i9 == 3 || i9 == 5) {
            this.f26086d.stopPlay();
            this.f26085c = 4;
        }
        finish();
    }

    private void u0() {
        I0();
        finish();
    }

    private void v0() {
        E0(true);
        P0();
    }

    private void y0() {
        TXVideoEditer tXVideoEditer = this.f26086d;
        if (tXVideoEditer == null) {
            return;
        }
        tXVideoEditer.stopPlay();
        TXVideoEditConstants.TXPreviewParam tXPreviewParam = new TXVideoEditConstants.TXPreviewParam();
        tXPreviewParam.videoView = this.f26087e;
        tXPreviewParam.renderMode = 2;
        this.f26086d.initWithPreview(tXPreviewParam);
    }

    @Override // com.guochao.faceshow.views.TCLayerOperationView.a
    public void E() {
        r0();
    }

    @Override // com.guochao.faceshow.views.TCLayerOperationView.a
    public void O() {
        r0();
    }

    @Override // com.guochao.faceshow.views.TCLayerViewGroup.a
    public void f(TCLayerOperationView tCLayerOperationView, int i9, int i10) {
        this.f26095m = i10;
    }

    @Override // com.guochao.faceshow.views.TCLayerOperationView.a
    public void g() {
        PasterOperationView pasterOperationView = (PasterOperationView) this.f26091i.getSelectedLayerOperationView();
        int selectedViewIndex = this.f26091i.getSelectedViewIndex();
        if (pasterOperationView != null) {
            this.f26091i.d(pasterOperationView);
            y7.c cVar = new y7.c();
            cVar.f60129a = this.f26104v.get(selectedViewIndex);
            cVar.f60130b = false;
            EventBus.getDefault().post(cVar);
            this.f26101s.resetData(this.f26104v);
        }
        r0();
    }

    @Override // com.guochao.faceshow.aaspring.base.activity.BaseActivity
    public int getLayoutId() {
        return R.layout.activity_paster_edit;
    }

    @Override // com.guochao.faceshow.aaspring.base.activity.BaseActivity
    public void initView() {
        getWindow().getDecorView().setSystemUiVisibility(UGCTransitionRules.DEFAULT_IMAGE_HEIGHT);
    }

    @Override // com.guochao.faceshow.aaspring.base.activity.BaseActivity
    public void loadData() {
    }

    @Override // androidx.activity.ComponentActivity, android.app.Activity
    public void onBackPressed() {
        u0();
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        switch (view.getId()) {
            case R.id.back_ll /* 2131362050 */:
                t0();
                return;
            case R.id.btn_play /* 2131362198 */:
                B0();
                return;
            case R.id.paster_btn_add /* 2131363939 */:
                v0();
                return;
            case R.id.tv_done /* 2131364980 */:
                int i9 = this.f26085c;
                if (i9 == 3 || i9 == 5) {
                    this.f26094l.setVisibility(0);
                    this.f26100r.setVisibility(0);
                    this.f26085c = 2;
                }
                u0();
                return;
            default:
                return;
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.guochao.faceshow.aaspring.base.activity.BaseActivity, com.guochao.faceshow.aaspring.base.mvvm.activity.GCCoreActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(@Nullable Bundle bundle) {
        super.onCreate(bundle);
        getWindow().setFlags(1024, 1024);
        getWindow().addFlags(2097152);
        getWindow().addFlags(128);
        List<ResourceListItemBean> list = (List) MemoryCache.getInstance().remove("ResourceListItemBean");
        this.f26104v = list;
        if (list == null) {
            this.f26104v = new ArrayList();
        }
        initData();
        A0();
        y0();
        F0();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.guochao.faceshow.aaspring.base.activity.BaseActivity, com.guochao.faceshow.aaspring.base.mvvm.activity.GCCoreActivity, androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onDestroy() {
        super.onDestroy();
        TCVideoEditerWrapper.getInstance().removeTXVideoPreviewListenerWrapper(this);
    }

    @Override // com.guochao.faceshow.aaspring.base.mvvm.activity.GCCoreActivity, androidx.appcompat.app.AppCompatActivity, android.app.Activity, android.view.KeyEvent.Callback
    public boolean onKeyDown(int i9, KeyEvent keyEvent) {
        if (i9 == 4) {
            t0();
            finish();
            return false;
        }
        return super.onKeyDown(i9, keyEvent);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onPause() {
        super.onPause();
        S0();
    }

    @Override // com.guochao.faceshow.utils.TCVideoEditerWrapper.TXVideoPreviewListenerWrapper
    public void onPreviewFinishedWrapper() {
        runOnUiThread(new i());
        this.f26085c = 4;
        Q0();
    }

    @Override // com.guochao.faceshow.utils.TCVideoEditerWrapper.TXVideoPreviewListenerWrapper
    public void onPreviewProgressWrapper(int i9) {
        runOnUiThread(new h(i9));
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.guochao.faceshow.aaspring.base.activity.BaseActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onResume() {
        super.onResume();
        int i9 = this.f26085c;
        if (i9 == 3 || i9 == 5) {
            H0();
        } else if (i9 == 4 || i9 == 0) {
            Q0();
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onStart() {
        super.onStart();
        Q0();
    }
}
