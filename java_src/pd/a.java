package pd;

import android.content.Context;
import androidx.annotation.NonNull;
import com.guochao.faceshow.BaseApplication;
import com.guochao.faceshow.R;
import com.guochao.faceshow.aaspring.beans.BaseRespData;
import com.guochao.faceshow.aaspring.utils.ToastUtils;
import com.guochao.faceshow.utils.LOCAL_EVENT_MSG;
import java.io.IOException;
import okhttp3.Interceptor;
import okhttp3.MediaType;
import okhttp3.Request;
import okhttp3.Response;
import okhttp3.ResponseBody;
/* loaded from: classes4.dex */
public class a implements Interceptor {

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: pd.a$a  reason: collision with other inner class name */
    /* loaded from: classes4.dex */
    public class RunnableC0616a implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ BaseRespData f56793a;

        RunnableC0616a(BaseRespData baseRespData) {
            this.f56793a = baseRespData;
        }

        @Override // java.lang.Runnable
        public void run() {
            ToastUtils.showToast(BaseApplication.getInstance(), this.f56793a.msg);
            BaseApplication.getInstance().accountForceLogout(LOCAL_EVENT_MSG.ACCOUNT_FORCE_LOGOUT, null);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes4.dex */
    public class b implements Runnable {
        b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            ToastUtils.showToast(BaseApplication.getInstance(), (int) R.string.Operation_failed);
            BaseApplication.getInstance().accountForceLogout(LOCAL_EVENT_MSG.ACCOUNT_FORCE_LOGOUT, null);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes4.dex */
    public class c implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ BaseRespData f56796a;

        c(BaseRespData baseRespData) {
            this.f56796a = baseRespData;
        }

        @Override // java.lang.Runnable
        public void run() {
            ToastUtils.showToast(BaseApplication.getInstance(), this.f56796a.msg);
            BaseApplication.getInstance().accountForceLogout(LOCAL_EVENT_MSG.ACCOUNT_FORCE_LOGOUT, null);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes4.dex */
    public class d implements Runnable {
        d() {
        }

        @Override // java.lang.Runnable
        public void run() {
            ToastUtils.showToast(BaseApplication.getInstance(), (int) R.string.other_verson_outdated_to_upgrade);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes4.dex */
    public class e implements Runnable {
        e() {
        }

        @Override // java.lang.Runnable
        public void run() {
            ToastUtils.showToast(BaseApplication.getInstance(), (int) R.string.the_version_is_too_low);
        }
    }

    private Response a(Response response, String str, MediaType mediaType) {
        if (response == null) {
            return null;
        }
        return response.newBuilder().body(ResponseBody.create(mediaType, str)).build();
    }

    private Context c() {
        return BaseApplication.getInstance();
    }

    private boolean d(BaseRespData baseRespData) {
        return baseRespData != null && baseRespData.code == 40002;
    }

    /* JADX WARN: Removed duplicated region for block: B:16:0x0037  */
    /* JADX WARN: Removed duplicated region for block: B:18:0x003c  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public okhttp3.Response b(okhttp3.Request r7, okhttp3.Response r8, okhttp3.Interceptor.Chain r9, int r10) throws java.io.IOException {
        /*
            Method dump skipped, instructions count: 281
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: pd.a.b(okhttp3.Request, okhttp3.Response, okhttp3.Interceptor$Chain, int):okhttp3.Response");
    }

    @Override // okhttp3.Interceptor
    @NonNull
    public Response intercept(@NonNull Interceptor.Chain chain) throws IOException {
        Request request = chain.request();
        Response proceed = chain.proceed(request);
        int i9 = 1;
        while (!proceed.isSuccessful() && i9 <= 3) {
            i9++;
            proceed.close();
            proceed = b(request, proceed, chain, i9);
            if (proceed.code() != 514) {
                if (proceed.code() == 429) {
                    break;
                }
            } else {
                break;
            }
        }
        return proceed;
    }
}
