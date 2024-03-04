package ca;

import android.content.Intent;
import android.os.Handler;
import android.os.Message;
import android.text.TextUtils;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.google.zxing.Result;
import com.guochao.faceshow.BaseApplication;
import com.guochao.faceshow.aaspring.base.http.response.FaceCastBaseResponse;
import com.guochao.faceshow.aaspring.manager.i;
import com.guochao.faceshow.aaspring.modulars.ugc.activity.QRCodeLoginActivity;
import com.guochao.faceshow.aaspring.modulars.ugc.activity.ScanActivity;
import com.guochao.faceshow.aaspring.modulars.ugc.activity.ScanResultNoUrlActivity;
import com.guochao.faceshow.aaspring.utils.FileUtils;
import com.guochao.faceshow.aaspring.utils.SoundPoolManager;
import com.guochao.faceshow.aaspring.utils.UrlUtils;
import com.guochao.faceshow.userhomepage.act.UserHomePageAct;
import com.guochao.faceshow.utils.Contants;
import com.guochao.faceshow.web.WebViewActivity;
import da.c;
import ea.e;
/* loaded from: classes3.dex */
public final class a extends Handler {

    /* renamed from: e  reason: collision with root package name */
    private static final String f1663e = a.class.getSimpleName();

    /* renamed from: a  reason: collision with root package name */
    private final ScanActivity f1664a;

    /* renamed from: b  reason: collision with root package name */
    private final e f1665b;

    /* renamed from: c  reason: collision with root package name */
    private b f1666c;

    /* renamed from: d  reason: collision with root package name */
    private final c f1667d;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: ca.a$a  reason: collision with other inner class name */
    /* loaded from: classes3.dex */
    public class C0028a extends com.guochao.faceshow.aaspring.base.http.callback.c<Integer> {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ String f1668a;

        C0028a(String str) {
            this.f1668a = str;
        }

        @Override // com.guochao.faceshow.aaspring.base.http.callback.c
        /* renamed from: a */
        public void onResponse(@Nullable Integer num, @NonNull FaceCastBaseResponse<Integer> faceCastBaseResponse) {
            boolean z10 = true;
            QRCodeLoginActivity.e0(a.this.f1664a, this.f1668a, (num == null || num.intValue() != 1) ? false : false);
        }

        @Override // com.guochao.faceshow.aaspring.base.http.callback.c, com.guochao.faceshow.aaspring.base.http.callback.b
        public void onCompleted() {
            super.onCompleted();
            a.this.f1664a.dismissProgressDialog();
        }

        @Override // com.guochao.faceshow.aaspring.base.http.callback.c
        public void onFailure(@NonNull g7.a<Integer> aVar) {
            a.this.f();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes3.dex */
    public enum b {
        PREVIEW,
        SUCCESS,
        DONE
    }

    public a(ScanActivity scanActivity, c cVar) {
        this.f1664a = scanActivity;
        e eVar = new e(scanActivity, new ga.a(scanActivity.i0()));
        this.f1665b = eVar;
        eVar.start();
        this.f1666c = b.SUCCESS;
        this.f1667d = cVar;
        cVar.i();
        f();
    }

    private void b(String str) {
        if (e(str)) {
            String d10 = d(str);
            this.f1664a.showProgressDialog(null);
            this.f1664a.post("api/qrcode/scanCode").D("userKey", d10).M(new C0028a(d10));
            return;
        }
        String personalInformationScan = i.u().s().getPersonalInformationScan();
        if (str.contains(personalInformationScan)) {
            if (FileUtils.isNetworkConnected(this.f1664a)) {
                Intent intent = new Intent(this.f1664a, UserHomePageAct.class);
                intent.putExtra(Contants.USER_ID, str.replace(personalInformationScan, ""));
                this.f1664a.startActivity(intent);
                this.f1664a.finish();
                return;
            }
            return;
        }
        if (UrlUtils.isUrl(str)) {
            WebViewActivity.createBuilder().m(str).a(this.f1664a);
        } else {
            ScanResultNoUrlActivity.b0(this.f1664a, str);
        }
        this.f1664a.finish();
    }

    private String d(String str) {
        return str.replace("https://www.facecast.live/x/", "").trim();
    }

    private boolean e(String str) {
        return !TextUtils.isEmpty(str) && str.startsWith("https://www.facecast.live/x/");
    }

    public void c(Result result) {
        SoundPoolManager.getInstance(BaseApplication.getInstance()).playQrScanSound();
        b(result.getText());
    }

    public void f() {
        if (this.f1666c == b.SUCCESS) {
            this.f1666c = b.PREVIEW;
            this.f1667d.g(this.f1665b.b(), 1);
            this.f1664a.d0();
        }
    }

    @Override // android.os.Handler
    public void handleMessage(Message message) {
        int i9 = message.what;
        if (i9 == 2) {
            this.f1666c = b.PREVIEW;
            this.f1667d.g(this.f1665b.b(), 1);
        } else if (i9 != 3) {
            switch (i9) {
                case 6:
                    f();
                    return;
                case 7:
                    this.f1664a.setResult(-1, (Intent) message.obj);
                    this.f1664a.finish();
                    return;
                case 8:
                    this.f1664a.n0(8);
                    return;
                case 9:
                    this.f1664a.n0(9);
                    return;
                default:
                    return;
            }
        } else {
            this.f1666c = b.SUCCESS;
            c((Result) message.obj);
        }
    }
}
