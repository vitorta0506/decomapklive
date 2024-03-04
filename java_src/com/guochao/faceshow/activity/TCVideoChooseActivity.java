package com.guochao.faceshow.activity;

import android.app.AlertDialog;
import android.content.DialogInterface;
import android.content.Intent;
import android.media.MediaMetadataRetriever;
import android.os.Bundle;
import android.os.Message;
import android.text.TextUtils;
import androidx.lifecycle.Observer;
import androidx.recyclerview.widget.GridLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.facebook.share.internal.ShareConstants;
import com.guochao.faceshow.R;
import com.guochao.faceshow.aaspring.base.activity.BaseActivity;
import com.guochao.faceshow.aaspring.beans.LocalImageOrVideoBean;
import com.guochao.faceshow.aaspring.utils.BasePermissionObserver;
import com.guochao.faceshow.aaspring.utils.MediaFileFinder;
import com.guochao.faceshow.aaspring.utils.ToastUtils;
import com.guochao.faceshow.adapters.TCVideoEditerListAdapter;
import com.guochao.faceshow.bean.TCVideoFileInfo;
import com.guochao.faceshow.utils.TCConstants;
import com.tencent.liteav.basic.log.TXCLog;
import java.io.File;
import java.util.List;
import org.greenrobot.eventbus.EventBus;
import org.greenrobot.eventbus.Subscribe;
import org.greenrobot.eventbus.ThreadMode;
/* loaded from: classes3.dex */
public class TCVideoChooseActivity extends BaseActivity {

    /* renamed from: n  reason: collision with root package name */
    private static final String f24826n = "TCVideoChooseActivity";

    /* renamed from: a  reason: collision with root package name */
    private RecyclerView f24827a;

    /* renamed from: b  reason: collision with root package name */
    private int f24828b;

    /* renamed from: c  reason: collision with root package name */
    private TCVideoEditerListAdapter f24829c;

    /* renamed from: d  reason: collision with root package name */
    private com.guochao.faceshow.adapters.a f24830d;

    /* renamed from: e  reason: collision with root package name */
    private int f24831e;

    /* renamed from: f  reason: collision with root package name */
    private boolean f24832f = true;

    /* renamed from: g  reason: collision with root package name */
    private String f24833g;

    /* renamed from: h  reason: collision with root package name */
    private String f24834h;

    /* renamed from: i  reason: collision with root package name */
    private String f24835i;

    /* renamed from: j  reason: collision with root package name */
    private String f24836j;

    /* renamed from: k  reason: collision with root package name */
    private String f24837k;

    /* renamed from: l  reason: collision with root package name */
    private String f24838l;

    /* renamed from: m  reason: collision with root package name */
    private String f24839m;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class a extends BasePermissionObserver {

        /* renamed from: com.guochao.faceshow.activity.TCVideoChooseActivity$a$a  reason: collision with other inner class name */
        /* loaded from: classes3.dex */
        class C0242a implements Observer<List<LocalImageOrVideoBean>> {
            C0242a() {
            }

            @Override // androidx.lifecycle.Observer
            /* renamed from: a */
            public void onChanged(List<LocalImageOrVideoBean> list) {
                List<TCVideoFileInfo> a10 = TCVideoChooseActivity.this.f24830d.a(list);
                new Message().obj = a10;
                if (a10.size() == 0) {
                    TCVideoChooseActivity.this.f24827a.setLayoutManager(new GridLayoutManager(TCVideoChooseActivity.this, 1));
                } else {
                    TCVideoChooseActivity.this.f24827a.setLayoutManager(new GridLayoutManager(TCVideoChooseActivity.this, 4));
                }
                TCVideoChooseActivity.this.f24829c.b(a10);
                TCVideoChooseActivity.this.dismissProgressDialog();
            }
        }

        a() {
        }

        @Override // com.guochao.faceshow.aaspring.utils.BasePermissionObserver
        public void onGranted(te.a aVar) {
            TCVideoChooseActivity.this.showProgressDialog("");
            MediaFileFinder.getInstance().observeVideos(TCVideoChooseActivity.this, new C0242a());
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class b implements TCVideoEditerListAdapter.b {
        b() {
        }

        @Override // com.guochao.faceshow.adapters.TCVideoEditerListAdapter.b
        public void a(long j10) {
            if (TCVideoChooseActivity.this.f24832f) {
                if (j10 > 60000) {
                    TCVideoChooseActivity tCVideoChooseActivity = TCVideoChooseActivity.this;
                    ToastUtils.showToast(tCVideoChooseActivity, tCVideoChooseActivity.getString(R.string.video_too_long));
                    return;
                }
                TCVideoChooseActivity.this.k0();
            }
        }
    }

    private void init() {
        RecyclerView recyclerView = (RecyclerView) findViewById(R.id.recycler_view);
        this.f24827a = recyclerView;
        recyclerView.setLayoutManager(new GridLayoutManager(this, 4));
        TCVideoEditerListAdapter tCVideoEditerListAdapter = new TCVideoEditerListAdapter(this);
        this.f24829c = tCVideoEditerListAdapter;
        this.f24827a.setAdapter(tCVideoEditerListAdapter);
        if (this.f24828b == 0) {
            this.f24829c.h(false);
            this.f24829c.setOnItemClickListener(new b());
            return;
        }
        this.f24829c.h(true);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void k0() {
        if (this.f24828b == 0) {
            Intent intent = new Intent(this, ZTCVideoEditerActivity.class);
            TCVideoFileInfo e10 = this.f24829c.e();
            if (e10 == null) {
                this.f24832f = true;
                TXCLog.d(f24826n, "select file null");
                return;
            }
            long duration = e10.getDuration();
            if (duration > 60000) {
                this.f24832f = true;
                ToastUtils.showToast(this, getString(R.string.video_too_long));
            } else if (l0(e10)) {
                this.f24832f = true;
                n0(getString(R.string.video_file_damaged));
            } else if (!new File(e10.getFilePath()).exists()) {
                this.f24832f = true;
                n0(getString(R.string.file_does_not_exist));
            } else {
                intent.putExtra("duration", duration);
                intent.putExtra(TCConstants.VIDEO_EDITER_PATH, e10.getThumbPath());
                intent.putExtra(TCConstants.VIDEO_EDITER_URI, e10.getDisplayUri());
                if (this.f24831e == 1) {
                    intent.putExtra("from", 1);
                } else {
                    intent.putExtra("from", 12);
                }
                intent.putExtra("choose", 1);
                intent.putExtra("titleName", this.f24836j);
                intent.putExtra("typeId", this.f24833g);
                intent.putExtra("topic_id", this.f24834h);
                intent.putExtra("topicName", this.f24839m);
                intent.putExtra("musicId", this.f24835i);
                intent.putExtra("musicName", this.f24838l);
                intent.putExtra("tyPeName", this.f24837k);
                intent.putExtra(ShareConstants.FEED_SOURCE_PARAM, "1");
                startActivity(intent);
            }
        }
    }

    private boolean l0(TCVideoFileInfo tCVideoFileInfo) {
        if (tCVideoFileInfo.getDuration() == 0) {
            MediaMetadataRetriever mediaMetadataRetriever = new MediaMetadataRetriever();
            try {
                mediaMetadataRetriever.setDataSource(tCVideoFileInfo.getFilePath());
                String extractMetadata = mediaMetadataRetriever.extractMetadata(9);
                return TextUtils.isEmpty(extractMetadata) || Integer.parseInt(extractMetadata) == 0;
            } catch (Exception unused) {
                return true;
            }
        }
        return false;
    }

    private void m0() {
        new com.tbruyelle.rxpermissions2.a(this).p("android.permission.READ_EXTERNAL_STORAGE", "android.permission.WRITE_EXTERNAL_STORAGE").subscribe(new a());
    }

    private void n0(String str) {
        AlertDialog.Builder builder = new AlertDialog.Builder(this, R.style.ConfirmDialogStyle);
        builder.setMessage(str);
        builder.setCancelable(false);
        builder.setPositiveButton("知道了", (DialogInterface.OnClickListener) null);
        builder.show();
    }

    @Override // com.guochao.faceshow.aaspring.base.activity.BaseActivity
    public int getLayoutId() {
        return R.layout.activity_ugc_video_list;
    }

    @Override // com.guochao.faceshow.aaspring.base.activity.BaseActivity
    public void initView() {
    }

    @Override // com.guochao.faceshow.aaspring.base.activity.BaseActivity
    public void loadData() {
    }

    @Override // com.guochao.faceshow.aaspring.base.activity.BaseActivity, com.guochao.faceshow.aaspring.base.mvvm.activity.GCCoreActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        this.f24830d = com.guochao.faceshow.adapters.a.b();
        this.f24828b = getIntent().getIntExtra("CHOOSE_TYPE", 0);
        this.f24831e = getIntent().getIntExtra("from", 0);
        this.f24833g = getIntent().getStringExtra("type_id");
        this.f24834h = getIntent().getStringExtra("topic_id");
        this.f24839m = getIntent().getStringExtra("topicName");
        this.f24835i = getIntent().getStringExtra("musicId");
        this.f24838l = getIntent().getStringExtra("musicName");
        this.f24836j = getIntent().getStringExtra("titleName");
        this.f24837k = getIntent().getStringExtra("tyPeName");
        EventBus.getDefault().register(this);
        init();
        m0();
        setTitle(R.string.luxiang);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.guochao.faceshow.aaspring.base.activity.BaseActivity, com.guochao.faceshow.aaspring.base.mvvm.activity.GCCoreActivity, androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onDestroy() {
        EventBus.getDefault().unregister(this);
        super.onDestroy();
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public void onEventBus(String str) {
        if ("upLoadOver".equals(str)) {
            finish();
        }
    }
}
