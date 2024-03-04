package com.guochao.faceshow.activity;

import android.app.Dialog;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.text.TextUtils;
import android.view.View;
import android.widget.CheckBox;
import android.widget.CompoundButton;
import android.widget.EditText;
import android.widget.Toast;
import androidx.localbroadcastmanager.content.LocalBroadcastManager;
import androidx.recyclerview.widget.GridLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import butterknife.BindView;
import butterknife.OnClick;
import com.facebook.share.internal.ShareConstants;
import com.guochao.faceshow.BaseApplication;
import com.guochao.faceshow.R;
import com.guochao.faceshow.aaspring.base.activity.BaseActivity;
import com.guochao.faceshow.aaspring.beans.LocalImageOrVideoBean;
import com.guochao.faceshow.aaspring.utils.DisableDoubleClickUtils;
import com.guochao.faceshow.aaspring.utils.FilePathProvider;
import com.guochao.faceshow.aaspring.utils.MemoryCache;
import com.guochao.faceshow.aaspring.utils.SimpleObserver;
import com.guochao.faceshow.aaspring.utils.ToastUtils;
import com.guochao.faceshow.aaspring.views.v;
import com.guochao.faceshow.adapters.ReportRecycleAdapter;
import com.guochao.faceshow.service.AppBackgroundService;
import com.guochao.faceshow.utils.Contants;
import com.guochao.faceshow.utils.FileUtil;
import com.guochao.faceshow.utils.LOCAL_EVENT_MSG;
import com.guochao.faceshow.utils.ReportController;
import com.guochao.faceshow.utils.SoftKeyBoardUtils;
import com.guochao.faceshow.views.e;
import com.guochao.faceshow.views.l;
import io.reactivex.k;
import java.io.File;
import java.util.ArrayList;
import java.util.List;
import java.util.Objects;
import org.light.utils.FileUtils;
import vh.o;
/* loaded from: classes3.dex */
public class ReportDetailActivity extends BaseActivity implements ReportRecycleAdapter.e {

    /* renamed from: a  reason: collision with root package name */
    private String f24799a;

    /* renamed from: b  reason: collision with root package name */
    private String f24800b;

    /* renamed from: c  reason: collision with root package name */
    private String f24801c;
    @BindView
    CheckBox cbChild;
    @BindView
    CheckBox cbEight;
    @BindView
    CheckBox cbEleven;
    @BindView
    CheckBox cbFifth;
    @BindView
    CheckBox cbFirst;
    @BindView
    CheckBox cbForth;
    @BindView
    CheckBox cbNinth;
    @BindView
    CheckBox cbSecond;
    @BindView
    CheckBox cbSeventh;
    @BindView
    CheckBox cbSixth;
    @BindView
    CheckBox cbTenth;
    @BindView
    CheckBox cbThird;

    /* renamed from: e  reason: collision with root package name */
    private String f24803e;
    @BindView
    EditText etReportContent;

    /* renamed from: f  reason: collision with root package name */
    private ReportRecycleAdapter f24804f;

    /* renamed from: g  reason: collision with root package name */
    private List<LocalImageOrVideoBean> f24805g;

    /* renamed from: h  reason: collision with root package name */
    private String f24806h;

    /* renamed from: j  reason: collision with root package name */
    private g f24808j;

    /* renamed from: k  reason: collision with root package name */
    private l f24809k;

    /* renamed from: l  reason: collision with root package name */
    private com.guochao.faceshow.views.e f24810l;
    @BindView
    public RecyclerView mGridRecyclerView;

    /* renamed from: d  reason: collision with root package name */
    private String f24802d = "";

    /* renamed from: i  reason: collision with root package name */
    private ArrayList<String> f24807i = new ArrayList<>();

    /* loaded from: classes3.dex */
    class a implements v.e {
        a() {
        }

        @Override // com.guochao.faceshow.aaspring.views.v.e
        public void onClick(View view) {
            if (!ReportDetailActivity.this.cbFirst.isChecked() && !ReportDetailActivity.this.cbSecond.isChecked() && !ReportDetailActivity.this.cbThird.isChecked() && !ReportDetailActivity.this.cbForth.isChecked() && !ReportDetailActivity.this.cbFifth.isChecked() && !ReportDetailActivity.this.cbEight.isChecked() && !ReportDetailActivity.this.cbSixth.isChecked() && !ReportDetailActivity.this.cbSeventh.isChecked() && !ReportDetailActivity.this.cbNinth.isChecked() && !ReportDetailActivity.this.cbTenth.isChecked() && !ReportDetailActivity.this.cbEleven.isChecked() && !ReportDetailActivity.this.cbChild.isChecked()) {
                ReportDetailActivity reportDetailActivity = ReportDetailActivity.this;
                ToastUtils.showToast(reportDetailActivity, reportDetailActivity.getResources().getString(R.string.user_center_report_options_empty));
            } else if (DisableDoubleClickUtils.canClick(view, 3000L)) {
                ReportDetailActivity reportDetailActivity2 = ReportDetailActivity.this;
                reportDetailActivity2.f24802d = reportDetailActivity2.etReportContent.getText().toString().trim();
                if (TextUtils.isEmpty(ReportDetailActivity.this.f24802d)) {
                    ReportDetailActivity reportDetailActivity3 = ReportDetailActivity.this;
                    ToastUtils.showToast(reportDetailActivity3, reportDetailActivity3.getResources().getString(R.string.user_center_report_content));
                    return;
                }
                String str = "";
                if (ReportDetailActivity.this.cbFirst.isChecked()) {
                    str = "1,";
                }
                if (ReportDetailActivity.this.cbSecond.isChecked()) {
                    str = str + "2,";
                }
                if (ReportDetailActivity.this.cbThird.isChecked()) {
                    str = str + "3,";
                }
                if (ReportDetailActivity.this.cbForth.isChecked()) {
                    str = str + "4,";
                }
                if (ReportDetailActivity.this.cbFifth.isChecked()) {
                    str = str + "5,";
                }
                if (ReportDetailActivity.this.cbSixth.isChecked()) {
                    str = str + "6,";
                }
                if (ReportDetailActivity.this.cbSeventh.isChecked()) {
                    str = str + "7,";
                }
                if (ReportDetailActivity.this.cbEight.isChecked()) {
                    str = str + "8,";
                }
                if (ReportDetailActivity.this.cbNinth.isChecked()) {
                    str = str + "9,";
                }
                if (ReportDetailActivity.this.cbTenth.isChecked()) {
                    str = str + "10,";
                }
                if (ReportDetailActivity.this.cbEleven.isChecked()) {
                    str = str + "11,";
                }
                if (ReportDetailActivity.this.cbChild.isChecked()) {
                    str = str + "12,";
                }
                ReportDetailActivity.this.f24801c = str.substring(0, str.length() - 1);
                if (TextUtils.isEmpty(ReportDetailActivity.this.f24800b)) {
                    ReportDetailActivity reportDetailActivity4 = ReportDetailActivity.this;
                    ToastUtils.showToast(reportDetailActivity4, reportDetailActivity4.getString(R.string.report_succ));
                    ReportDetailActivity.this.finish();
                    return;
                }
                ReportDetailActivity.this.t0();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class b implements ReportRecycleAdapter.d {
        b() {
        }
    }

    /* loaded from: classes3.dex */
    class c implements CompoundButton.OnCheckedChangeListener {
        c() {
        }

        @Override // android.widget.CompoundButton.OnCheckedChangeListener
        public void onCheckedChanged(CompoundButton compoundButton, boolean z10) {
            ReportDetailActivity reportDetailActivity = ReportDetailActivity.this;
            SoftKeyBoardUtils.closeSoftKeyBoard(reportDetailActivity, reportDetailActivity.etReportContent);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class d extends SimpleObserver<Object> {
        d() {
        }

        @Override // com.guochao.faceshow.aaspring.utils.SimpleObserver, io.reactivex.r
        public void onNext(Object obj) {
            super.onNext(obj);
            Intent intent = new Intent(ReportDetailActivity.this, AppBackgroundService.class);
            intent.putExtra(LOCAL_EVENT_MSG.REPORT_UPLOAD, LOCAL_EVENT_MSG.REPORT_UPLOAD);
            intent.putExtra("content", ReportDetailActivity.this.f24802d);
            intent.putExtra("account", ReportDetailActivity.this.f24799a);
            intent.putExtra("files", ReportDetailActivity.this.f24807i);
            intent.putExtra("typeId", ReportDetailActivity.this.f24801c);
            intent.putExtra("infoId", ReportDetailActivity.this.f24800b + "");
            intent.putExtra("reportType", String.valueOf(ReportDetailActivity.this.f24803e));
            ReportDetailActivity.this.startService(intent);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class e implements o<Integer, Object> {
        e() {
        }

        @Override // vh.o
        /* renamed from: a */
        public Object apply(Integer num) throws Exception {
            for (LocalImageOrVideoBean localImageOrVideoBean : ReportDetailActivity.this.f24805g) {
                if (!localImageOrVideoBean.getPath().equals("add_com_guochao")) {
                    Uri displayUri = localImageOrVideoBean.getDisplayUri();
                    String str = FilePathProvider.getCachePath("crop") + FileUtils.RES_PREFIX_STORAGE + System.currentTimeMillis() + localImageOrVideoBean.getPath().substring(localImageOrVideoBean.getPath().lastIndexOf("."));
                    FileUtil.copyUriToFile(BaseApplication.getInstance(), displayUri, new File(str));
                    ReportDetailActivity.this.f24807i.add(str);
                }
            }
            return "1";
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class f implements e.a {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ String f24816a;

        f(String str) {
            this.f24816a = str;
        }

        @Override // com.guochao.faceshow.views.e.a
        public void onClick(Dialog dialog, boolean z10) {
            if (z10) {
                Intent intent = new Intent(ReportDetailActivity.this.getActivity(), AppBackgroundService.class);
                String str = this.f24816a;
                intent.putExtra(str, str);
                intent.putExtra("retry", true);
                ReportDetailActivity.this.startService(intent);
                dialog.dismiss();
            }
        }

        @Override // com.guochao.faceshow.views.e.a
        public /* synthetic */ void onCreate(com.guochao.faceshow.views.e eVar) {
            com.guochao.faceshow.views.d.a(this, eVar);
        }
    }

    /* loaded from: classes3.dex */
    private class g extends BroadcastReceiver {
        private g() {
        }

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            try {
                if (!ReportDetailActivity.this.getActivity().isDestroyed() && !ReportDetailActivity.this.getActivity().isFinishing()) {
                    int intExtra = intent.getIntExtra("type", 0);
                    long longExtra = intent.getLongExtra("total", 0L);
                    long longExtra2 = intent.getLongExtra("current", 0L);
                    if (LOCAL_EVENT_MSG.REPORT_PIC_TEXT_UPLOAD_STATUS.equals(intent.getAction())) {
                        if (intExtra == 1) {
                            if (ReportDetailActivity.this.f24809k != null) {
                                ReportDetailActivity.this.f24809k.h("100%");
                                ReportDetailActivity.this.f24809k.d();
                                ReportDetailActivity.this.f24809k = null;
                            }
                            Toast.makeText(ReportDetailActivity.this, (int) R.string.report_succ, 0).show();
                            ReportDetailActivity.this.finish();
                        } else if (intExtra == 2) {
                            if (ReportDetailActivity.this.f24809k != null) {
                                ReportDetailActivity.this.f24809k.d();
                            }
                            ReportDetailActivity.this.u0(LOCAL_EVENT_MSG.REPORT_UPLOAD);
                        } else if (intExtra == 3) {
                            if (ReportDetailActivity.this.f24809k == null) {
                                ReportDetailActivity.this.f24809k = new l();
                                ReportDetailActivity.this.f24809k.c(ReportDetailActivity.this.getActivity(), "");
                                ReportDetailActivity.this.f24809k.f(false);
                                ReportDetailActivity.this.f24809k.g(false);
                            }
                            if (!ReportDetailActivity.this.f24809k.e()) {
                                ReportDetailActivity.this.f24809k.i();
                            }
                            long j10 = (longExtra2 * 100) / longExtra;
                            if (j10 >= 100) {
                                j10 = 99;
                            }
                            l lVar = ReportDetailActivity.this.f24809k;
                            lVar.h(j10 + "%");
                        }
                    }
                }
            } catch (Exception unused) {
            }
        }

        /* synthetic */ g(ReportDetailActivity reportDetailActivity, a aVar) {
            this();
        }
    }

    private void s0() {
        this.mGridRecyclerView.setLayoutManager(new GridLayoutManager(this, 4));
        this.f24805g = new ArrayList();
        if (!TextUtils.isEmpty(this.f24806h)) {
            LocalImageOrVideoBean localImageOrVideoBean = new LocalImageOrVideoBean(1);
            localImageOrVideoBean.setPath(this.f24806h);
            this.f24805g.add(localImageOrVideoBean);
        }
        boolean isEmpty = this.f24805g.isEmpty();
        if (this.f24805g.size() < 9 && !"2".equals(this.f24803e)) {
            LocalImageOrVideoBean localImageOrVideoBean2 = new LocalImageOrVideoBean(1);
            localImageOrVideoBean2.setPath("add_com_guochao");
            this.f24805g.add(localImageOrVideoBean2);
        }
        ReportRecycleAdapter reportRecycleAdapter = new ReportRecycleAdapter(this, R.layout.item_grid_img, this.f24805g, this, !"2".equals(this.f24803e));
        this.f24804f = reportRecycleAdapter;
        reportRecycleAdapter.setOnItemListener(new b());
        this.f24804f.g(isEmpty);
        this.mGridRecyclerView.setAdapter(this.f24804f);
    }

    public static void start(Context context, String str, String str2, @ReportController.ReportType String str3) {
        Intent intent = new Intent(context, ReportDetailActivity.class);
        intent.putExtra("account", str);
        intent.putExtra("infoId", str2);
        intent.putExtra("reportType", str3);
        context.startActivity(intent);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void t0() {
        this.f24807i.clear();
        if (this.f24809k == null) {
            l lVar = new l();
            this.f24809k = lVar;
            lVar.c(getActivity(), "");
            this.f24809k.f(false);
            this.f24809k.g(false);
        }
        if (!this.f24809k.e()) {
            this.f24809k.i();
        }
        if (Build.VERSION.SDK_INT >= 29) {
            k.just(1).map(new e()).subscribeOn(di.a.b()).observeOn(sh.a.a()).subscribe(new d());
            return;
        }
        for (LocalImageOrVideoBean localImageOrVideoBean : this.f24805g) {
            if (!localImageOrVideoBean.getPath().equals("add_com_guochao")) {
                this.f24807i.add(localImageOrVideoBean.getPath());
            }
        }
        Intent intent = new Intent(this, AppBackgroundService.class);
        intent.putExtra(LOCAL_EVENT_MSG.REPORT_UPLOAD, LOCAL_EVENT_MSG.REPORT_UPLOAD);
        intent.putExtra("content", this.f24802d);
        intent.putExtra("account", this.f24799a);
        intent.putExtra("files", this.f24807i);
        intent.putExtra("typeId", this.f24801c);
        intent.putExtra("infoId", this.f24800b + "");
        intent.putExtra("reportType", String.valueOf(this.f24803e));
        startService(intent);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void u0(String str) {
        if (this.f24810l == null) {
            com.guochao.faceshow.views.e eVar = new com.guochao.faceshow.views.e(getActivity(), new f(str));
            this.f24810l = eVar;
            eVar.f(getResources().getString(R.string.upload_retry_tip));
            this.f24810l.k(getResources().getString(R.string.upload_retry_confirm));
            this.f24810l.i(getResources().getString(R.string.str_no));
            this.f24810l.g();
            this.f24810l.h(48);
        }
        this.f24810l.show();
    }

    @Override // com.guochao.faceshow.aaspring.base.activity.BaseActivity
    public int getLayoutId() {
        return R.layout.activity_user_report_detail;
    }

    @Override // com.guochao.faceshow.aaspring.base.activity.BaseActivity
    public void initView() {
        setTitle(getResources().getString(R.string.report));
        Intent intent = getIntent();
        this.f24806h = intent.getStringExtra("pathPhoto");
        this.f24799a = intent.getStringExtra("account");
        this.f24800b = intent.getStringExtra("infoId");
        String stringExtra = intent.getStringExtra("reportType");
        this.f24803e = stringExtra;
        if (Objects.equals(stringExtra, ReportController.REPORT_TYPE_ONE_V_ONE)) {
            this.mGridRecyclerView.setVisibility(8);
        }
        if (intent.getIntExtra(Contants.SP_KEY_SWITCH_SCREEN_SHOTS, Contants.SWITCH_SCREEN_SHOTS_ON) == Contants.SWITCH_SCREEN_SHOTS_OFF) {
            this.mGridRecyclerView.setVisibility(8);
        }
        this.f24808j = new g(this, null);
        IntentFilter intentFilter = new IntentFilter();
        intentFilter.addAction(LOCAL_EVENT_MSG.REPORT_PIC_TEXT_UPLOAD_STATUS);
        LocalBroadcastManager.getInstance(this).registerReceiver(this.f24808j, intentFilter);
        c cVar = new c();
        this.cbFirst.setOnCheckedChangeListener(cVar);
        this.cbSecond.setOnCheckedChangeListener(cVar);
        this.cbThird.setOnCheckedChangeListener(cVar);
        this.cbForth.setOnCheckedChangeListener(cVar);
        this.cbFifth.setOnCheckedChangeListener(cVar);
        this.cbSixth.setOnCheckedChangeListener(cVar);
        this.cbSeventh.setOnCheckedChangeListener(cVar);
        this.cbEight.setOnCheckedChangeListener(cVar);
        this.cbNinth.setOnCheckedChangeListener(cVar);
        this.cbTenth.setOnCheckedChangeListener(cVar);
        v vVar = this.mTitleBarHelper;
        if (vVar != null) {
            vVar.f();
        }
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
        ArrayList arrayList = (ArrayList) MemoryCache.getInstance().remove(ShareConstants.WEB_DIALOG_PARAM_MEDIA);
        if (arrayList == null) {
            arrayList = intent.getParcelableArrayListExtra(ShareConstants.WEB_DIALOG_PARAM_MEDIA);
        }
        if (arrayList == null) {
            return;
        }
        List<LocalImageOrVideoBean> list = this.f24805g;
        list.remove(list.size() - 1);
        this.f24805g.addAll(arrayList);
        if (this.f24805g.size() < 9 && !"2".equals(this.f24803e)) {
            LocalImageOrVideoBean localImageOrVideoBean = new LocalImageOrVideoBean(1);
            localImageOrVideoBean.setPath("add_com_guochao");
            this.f24805g.add(localImageOrVideoBean);
        }
        this.f24804f.notifyDataSetChanged();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.guochao.faceshow.aaspring.base.activity.BaseActivity, com.guochao.faceshow.aaspring.base.mvvm.activity.GCCoreActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        s0();
        setEndText(getString(R.string.send), R.color.color_ugc_app_primary);
        v vVar = this.mTitleBarHelper;
        if (vVar != null) {
            vVar.setOnRightTextClickListener(new a());
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.guochao.faceshow.aaspring.base.activity.BaseActivity, com.guochao.faceshow.aaspring.base.mvvm.activity.GCCoreActivity, androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onDestroy() {
        if (!TextUtils.isEmpty(this.f24806h)) {
            FileUtil.deleteFile(this.f24806h);
        }
        LocalBroadcastManager.getInstance(this).unregisterReceiver(this.f24808j);
        super.onDestroy();
    }

    @OnClick
    public void onViewClicked(View view) {
        view.getId();
        SoftKeyBoardUtils.closeSoftKeyBoard(this, this.etReportContent);
    }
}
