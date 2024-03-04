package com.guochao.faceshow.aaspring.modulars.setting;

import android.app.Activity;
import android.content.ClipData;
import android.content.ClipboardManager;
import android.content.Context;
import android.content.Intent;
import android.net.DhcpInfo;
import android.net.wifi.WifiManager;
import android.os.Build;
import android.os.Looper;
import android.telephony.TelephonyManager;
import android.text.TextUtils;
import android.view.View;
import android.widget.ScrollView;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.webkit.ProxyConfig;
import butterknife.BindView;
import butterknife.OnClick;
import com.facebook.share.internal.ShareInternalUtility;
import com.guochao.faceshow.R;
import com.guochao.faceshow.aaspring.base.activity.BaseActivity;
import com.guochao.faceshow.aaspring.base.http.response.FaceCastBaseResponse;
import com.guochao.faceshow.aaspring.utils.FilePathProvider;
import com.guochao.faceshow.aaspring.utils.LogUtils;
import com.guochao.faceshow.aaspring.utils.ShellUtils;
import com.guochao.faceshow.aaspring.utils.TextViewUtils;
import com.guochao.faceshow.aaspring.utils.TraceUtils;
import com.guochao.faceshow.utils.BaseConfig;
import com.guochao.faceshow.utils.Contants;
import com.guochao.faceshow.utils.DensityUtil;
import com.guochao.faceshow.utils.SystemUtil;
import io.reactivex.k;
import java.io.BufferedReader;
import java.io.File;
import java.io.IOException;
import java.io.InputStreamReader;
import java.lang.ref.WeakReference;
import java.net.InetAddress;
import java.net.UnknownHostException;
import org.json.JSONException;
import org.json.JSONObject;
import org.light.utils.FileUtils;
import org.light.utils.IOUtils;
import vh.o;
/* loaded from: classes3.dex */
public class NetworkAnalysisActivity extends BaseActivity {

    /* renamed from: a  reason: collision with root package name */
    TelephonyManager f21707a;

    /* renamed from: b  reason: collision with root package name */
    io.reactivex.observers.b<Object> f21708b;

    /* renamed from: c  reason: collision with root package name */
    int f21709c;

    /* renamed from: d  reason: collision with root package name */
    String f21710d;

    /* renamed from: e  reason: collision with root package name */
    int f21711e = -1;

    /* renamed from: f  reason: collision with root package name */
    StringBuffer f21712f;

    /* renamed from: g  reason: collision with root package name */
    String f21713g;
    @BindView
    ScrollView mScrollView;
    @BindView
    TextView mTextView;
    @BindView
    TextView mTextViewProgress;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class a implements od.b<String> {
        a() {
        }

        @Override // od.b
        /* renamed from: a */
        public void onResponse(String str) {
            JSONObject optJSONObject;
            if (TextUtils.isEmpty(str)) {
                return;
            }
            try {
                JSONObject jSONObject = new JSONObject(str);
                if (jSONObject.optInt("code") != 1 || (optJSONObject = jSONObject.optJSONObject("result")) == null) {
                    return;
                }
                String optString = optJSONObject.optString("ip");
                NetworkAnalysisActivity networkAnalysisActivity = NetworkAnalysisActivity.this;
                networkAnalysisActivity.g0("IP : " + optString);
            } catch (JSONException e10) {
                e10.printStackTrace();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class b implements Runnable {
        b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            TextView textView;
            if (NetworkAnalysisActivity.this.isDestroyed() || NetworkAnalysisActivity.this.isFinishing() || (textView = NetworkAnalysisActivity.this.mTextViewProgress) == null) {
                return;
            }
            textView.setEnabled(true);
            NetworkAnalysisActivity networkAnalysisActivity = NetworkAnalysisActivity.this;
            if (networkAnalysisActivity.f21711e == -1) {
                networkAnalysisActivity.mTextViewProgress.setText(R.string.network_analysi_copy_report);
            } else {
                networkAnalysisActivity.mTextViewProgress.setText(R.string.upload_log_file);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class c implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ int f21716a;

        c(int i9) {
            this.f21716a = i9;
        }

        @Override // java.lang.Runnable
        public void run() {
            NetworkAnalysisActivity networkAnalysisActivity;
            TextView textView;
            if (NetworkAnalysisActivity.this.isDestroyed() || NetworkAnalysisActivity.this.isFinishing() || (textView = (networkAnalysisActivity = NetworkAnalysisActivity.this).mTextViewProgress) == null) {
                return;
            }
            textView.setText(networkAnalysisActivity.getString(R.string.network_analysising, new Object[]{this.f21716a + "%"}));
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class d implements TraceUtils.Callback {
        d() {
        }

        @Override // com.guochao.faceshow.aaspring.utils.TraceUtils.Callback
        public void onTrace(TraceUtils.TraceRouteContainer traceRouteContainer) {
            NetworkAnalysisActivity.this.g0(traceRouteContainer.toString());
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class e implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ String f21719a;

        /* loaded from: classes3.dex */
        class a implements Runnable {
            a() {
            }

            @Override // java.lang.Runnable
            public void run() {
                NetworkAnalysisActivity.this.mScrollView.fullScroll(130);
            }
        }

        e(String str) {
            this.f21719a = str;
        }

        @Override // java.lang.Runnable
        public void run() {
            TextView textView;
            if (NetworkAnalysisActivity.this.isDestroyed() || NetworkAnalysisActivity.this.isFinishing() || (textView = NetworkAnalysisActivity.this.mTextView) == null) {
                return;
            }
            String charSequence = textView.getText().toString();
            if (!TextUtils.isEmpty(this.f21719a)) {
                LogUtils.i("NetworkAnalysis", "run: " + this.f21719a);
                NetworkAnalysisActivity.this.mTextView.setText(charSequence + this.f21719a);
            }
            NetworkAnalysisActivity.this.mTextView.append(IOUtils.LINE_SEPARATOR_WINDOWS);
            NetworkAnalysisActivity.this.mScrollView.post(new a());
        }
    }

    /* loaded from: classes3.dex */
    class f extends com.guochao.faceshow.aaspring.base.http.callback.c<Object> {
        f() {
        }

        @Override // com.guochao.faceshow.aaspring.base.http.callback.c, com.guochao.faceshow.aaspring.base.http.callback.b
        public void onCompleted() {
            super.onCompleted();
            NetworkAnalysisActivity.this.dismissProgressDialog();
        }

        @Override // com.guochao.faceshow.aaspring.base.http.callback.c
        public void onFailure(@NonNull g7.a<Object> aVar) {
            NetworkAnalysisActivity.this.showToast(R.string.Network_Error);
        }

        @Override // com.guochao.faceshow.aaspring.base.http.callback.c
        public void onResponse(@Nullable Object obj, @NonNull FaceCastBaseResponse<Object> faceCastBaseResponse) {
            NetworkAnalysisActivity.this.showToast(R.string.upload_success_log);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes3.dex */
    public static class g implements o<Integer, Object> {

        /* renamed from: a  reason: collision with root package name */
        WeakReference<NetworkAnalysisActivity> f21723a;

        public g(NetworkAnalysisActivity networkAnalysisActivity) {
            this.f21723a = new WeakReference<>(networkAnalysisActivity);
        }

        @Override // vh.o
        /* renamed from: a */
        public Object apply(Integer num) throws Exception {
            NetworkAnalysisActivity networkAnalysisActivity = this.f21723a.get();
            return networkAnalysisActivity != null ? networkAnalysisActivity.i0(num) : "1";
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes3.dex */
    public static class h extends io.reactivex.observers.b<Object> {
        private h() {
        }

        @Override // io.reactivex.r
        public void onComplete() {
        }

        @Override // io.reactivex.r
        public void onError(Throwable th2) {
        }

        @Override // io.reactivex.r
        public void onNext(Object obj) {
        }

        /* synthetic */ h(a aVar) {
            this();
        }
    }

    private void e0() {
        g0(null);
        g0(this.f21710d);
        g0(null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void g0(String str) {
        io.reactivex.observers.b<Object> bVar;
        if (Looper.myLooper() != Looper.getMainLooper() && (bVar = this.f21708b) != null && bVar.isDisposed()) {
            throw new RuntimeException("disposed");
        }
        if (TextUtils.isEmpty(str)) {
            this.f21712f.append("");
        } else {
            this.f21712f.append(str);
        }
        this.f21712f.append(IOUtils.LINE_SEPARATOR_WINDOWS);
        runOnUiThread(new e(str));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public Object i0(Integer num) {
        try {
            qd.b.b(f7.b.f39644i0, null, null, String.class, false, null, new a());
            g0("Dns Server : " + l0());
            e0();
            k0(BaseConfig.API_DOMAIN_NAME);
            n0(15);
            e0();
            k0(BaseConfig.PUSH_DOMAIN_NAME);
            n0(30);
            e0();
            k0(BaseConfig.PUSH_DOMAIN_NAME_ALIAS);
            n0(45);
            e0();
            k0(BaseConfig.LIVE_DOMAIN_NAME);
            n0(60);
            e0();
            k0(BaseConfig.LIVE_DOMAIN_NAME_ALIAS);
            n0(80);
            e0();
            k0(BaseConfig.FILE_DOMAIN_NAME);
            n0(100);
            if (this.f21711e == 1) {
                String str = FilePathProvider.getCachePath() + FileUtils.RES_PREFIX_STORAGE + System.currentTimeMillis() + ".txt";
                com.guochao.faceshow.aaspring.utils.FileUtils.writeToFile(this.f21712f.toString(), str);
                this.f21713g = str;
            }
            runOnUiThread(new b());
            return "1";
        } catch (Exception e10) {
            LogUtils.e("NetworkAnalysis", "", e10);
            return "1";
        }
    }

    private void k0(String str) throws UnknownHostException {
        g0("Check Domain Hostname");
        long currentTimeMillis = System.currentTimeMillis();
        String str2 = "";
        try {
            str2 = InetAddress.getByName(str).getHostAddress();
            g0(String.format("Dns Ip: ( \"%s\" )", str2));
        } catch (Exception e10) {
            g0(String.format("Dns Ip: ( \"%s\" )", "resolve failed " + e10.getMessage()));
        }
        g0(String.format("(resolving time %d ms) ", Long.valueOf(System.currentTimeMillis() - currentTimeMillis)));
        if (TextUtils.isEmpty(str2)) {
            return;
        }
        g0("Start Ping , Please Wait...");
        ShellUtils.CommandResult execCmd = ShellUtils.execCmd(String.format("ping -c 4 %s", str2), false);
        if (!TextUtils.isEmpty(execCmd.successMsg)) {
            g0(execCmd.successMsg);
        } else {
            g0(execCmd.errorMsg);
        }
        g0(null);
        g0("Start TraceRoute , Please Wait...");
        new TraceUtils(new d()).doInBackground(str);
    }

    private String l0() {
        Process process;
        BufferedReader bufferedReader;
        Throwable th2;
        WifiManager wifiManager = (WifiManager) getApplicationContext().getSystemService("wifi");
        if (wifiManager != null) {
            DhcpInfo dhcpInfo = wifiManager.getDhcpInfo();
            return (("dns1: " + m0(dhcpInfo.dns1)) + " dns2:") + m0(dhcpInfo.dns2);
        }
        try {
            process = Runtime.getRuntime().exec("getprop net.dns1");
            try {
                bufferedReader = new BufferedReader(new InputStreamReader(process.getInputStream()));
                try {
                    String str = "dns1: " + bufferedReader.readLine();
                    try {
                        bufferedReader.close();
                    } catch (IOException unused) {
                    }
                    process.destroy();
                    return str;
                } catch (IOException unused2) {
                    try {
                        bufferedReader.close();
                    } catch (IOException unused3) {
                    }
                    process.destroy();
                    return null;
                } catch (Throwable th3) {
                    th2 = th3;
                    try {
                        bufferedReader.close();
                    } catch (IOException unused4) {
                    }
                    process.destroy();
                    throw th2;
                }
            } catch (IOException unused5) {
                bufferedReader = null;
            } catch (Throwable th4) {
                th = th4;
                bufferedReader = null;
                th2 = th;
                bufferedReader.close();
                process.destroy();
                throw th2;
            }
        } catch (IOException unused6) {
            process = null;
            bufferedReader = null;
        } catch (Throwable th5) {
            th = th5;
            process = null;
            bufferedReader = null;
        }
    }

    public static String m0(int i9) {
        StringBuilder sb2 = new StringBuilder();
        sb2.append(i9 & 255);
        sb2.append(".");
        int i10 = i9 >>> 8;
        sb2.append(i10 & 255);
        sb2.append(".");
        int i11 = i10 >>> 8;
        sb2.append(i11 & 255);
        sb2.append(".");
        sb2.append((i11 >>> 8) & 255);
        return sb2.toString();
    }

    private void n0(int i9) {
        runOnUiThread(new c(i9));
    }

    public static void p0(Context context, int i9) {
        Intent intent = new Intent(context, NetworkAnalysisActivity.class);
        intent.putExtra("from", i9);
        if (!(context instanceof Activity)) {
            intent.addFlags(268435456);
        }
        context.startActivity(intent);
    }

    @OnClick
    public void copy(View view) {
        if (this.f21711e == -1) {
            ((ClipboardManager) getSystemService("clipboard")).setPrimaryClip(ClipData.newPlainText("FaceCast", this.mTextView.getText()));
            showToast(R.string.copy_success);
            return;
        }
        showProgressDialog("");
        post(f7.b.f39645j0).R(ShareInternalUtility.STAGING_PARAM, new File(this.f21713g)).B(Contants.CURRENT_COUNTRY_FLAG, 5).M(new f());
    }

    @Override // com.guochao.faceshow.aaspring.base.activity.BaseActivity
    public int getLayoutId() {
        return R.layout.activity_network_analysis;
    }

    @Override // com.guochao.faceshow.aaspring.base.activity.BaseActivity
    public void initView() {
        this.f21711e = getIntent().getIntExtra("from", -1);
        this.f21709c = getResources().getDisplayMetrics().widthPixels - DensityUtil.dp2px(40.0f);
        this.f21710d = "";
        while (TextViewUtils.calTextWidth(this.mTextView, this.f21710d) < this.f21709c) {
            this.f21710d += ProxyConfig.MATCH_ALL_SCHEMES;
        }
        this.f21712f = new StringBuffer();
        this.f21707a = (TelephonyManager) getSystemService("phone");
        setTitle(R.string.setting_network_analysis);
        o0();
    }

    @Override // com.guochao.faceshow.aaspring.base.activity.BaseActivity
    public void loadData() {
    }

    public void o0() {
        g0("System: Android");
        g0("Device:" + SystemUtil.getDeviceBrand() + "  " + SystemUtil.getSystemModel());
        StringBuilder sb2 = new StringBuilder();
        sb2.append("Android api level: ");
        sb2.append(Build.VERSION.SDK_INT);
        g0(sb2.toString());
        g0("System version: Android " + SystemUtil.getSystemVersion());
        g0("App version: " + SystemUtil.getAPPVersionNameAndVersionCode());
        g0("Carrier name: " + SystemUtil.getSimOperator());
        g0("Network type: " + SystemUtil.getNetType());
        g0(null);
        g0(null);
        g0("User Id: " + getCurrentUser().getUserId());
        g0("User Name: " + getCurrentUser().getUserName());
        g0(null);
        n0(20);
        k map = k.just(1).subscribeOn(di.a.b()).map(new g(this));
        h hVar = new h(null);
        this.f21708b = hVar;
        map.subscribe(hVar);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.guochao.faceshow.aaspring.base.activity.BaseActivity, com.guochao.faceshow.aaspring.base.mvvm.activity.GCCoreActivity, androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onDestroy() {
        super.onDestroy();
        io.reactivex.observers.b<Object> bVar = this.f21708b;
        if (bVar == null || bVar.isDisposed()) {
            return;
        }
        this.f21708b.dispose();
    }
}
