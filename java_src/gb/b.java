package gb;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.guochao.faceshow.BaseApplication;
import com.guochao.faceshow.R;
import com.guochao.faceshow.aaspring.base.http.client.FaceCastHttpClientImpl;
import com.guochao.faceshow.aaspring.base.http.response.FaceCastBaseResponse;
import com.guochao.faceshow.aaspring.utils.FilePathProvider;
import com.guochao.faceshow.aaspring.utils.ToastUtils;
import com.guochao.faceshow.utils.TimeUtil;
import java.io.File;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes4.dex */
public class b {

    /* renamed from: a  reason: collision with root package name */
    private com.guochao.faceshow.aaspring.base.utils.a f39990a;

    /* renamed from: b  reason: collision with root package name */
    private String f39991b;

    /* renamed from: c  reason: collision with root package name */
    private boolean f39992c = false;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes4.dex */
    public class a extends com.guochao.faceshow.aaspring.base.http.callback.d<File> {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ InterfaceC0431b f39993a;

        a(InterfaceC0431b interfaceC0431b) {
            this.f39993a = interfaceC0431b;
        }

        @Override // com.guochao.faceshow.aaspring.base.http.callback.c, com.guochao.faceshow.aaspring.base.http.callback.b
        public void onCompleted() {
            super.onCompleted();
            b.this.f39992c = false;
            b.this.f39990a = null;
        }

        @Override // com.guochao.faceshow.aaspring.base.http.callback.c
        public void onFailure(g7.a<File> aVar) {
            this.f39993a.onError(aVar.a(), aVar.c());
            b.this.f39992c = false;
        }

        @Override // com.guochao.faceshow.aaspring.base.http.callback.d
        public void onProgress(long j10, long j11, double d10) {
            this.f39993a.onProgress((int) ((j10 * 100) / j11));
        }

        @Override // com.guochao.faceshow.aaspring.base.http.callback.c
        public /* bridge */ /* synthetic */ void onResponse(@Nullable Object obj, @NonNull FaceCastBaseResponse faceCastBaseResponse) {
            onResponse((File) obj, (FaceCastBaseResponse<File>) faceCastBaseResponse);
        }

        public void onResponse(@Nullable File file, @NonNull FaceCastBaseResponse<File> faceCastBaseResponse) {
            this.f39993a.a(file, b.this.f39991b);
            b.this.f39992c = false;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: gb.b$b  reason: collision with other inner class name */
    /* loaded from: classes4.dex */
    public interface InterfaceC0431b {
        void a(File file, String str);

        void onError(int i9, String str);

        void onProgress(int i9);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void d() {
        com.guochao.faceshow.aaspring.base.utils.a aVar = this.f39990a;
        if (aVar != null) {
            aVar.cancel();
        }
        this.f39992c = false;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public synchronized void e(String str, InterfaceC0431b interfaceC0431b) {
        if (this.f39992c) {
            ToastUtils.showToast(BaseApplication.getInstance(), BaseApplication.getInstance().getResources().getString(R.string.already_update_show_tips));
            return;
        }
        this.f39992c = true;
        this.f39991b = FilePathProvider.getApkPath() + File.separator + TimeUtil.getDateStrName() + ".apk";
        this.f39990a = FaceCastHttpClientImpl.h(BaseApplication.getInstance()).a(null, str, this.f39991b, new a(interfaceC0431b));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean f() {
        return this.f39992c;
    }
}
