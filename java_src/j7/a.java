package j7;

import android.os.Build;
import com.guochao.faceshow.aaspring.base.http.request.BaseFaceCastRequest;
import com.guochao.faceshow.aaspring.utils.CpuInfoUtils;
import com.guochao.faceshow.utils.BaseConfig;
import com.guochao.faceshow.utils.SystemUtil;
import java.io.IOException;
import okhttp3.Interceptor;
import okhttp3.Request;
import okhttp3.Response;
import org.light.utils.FileUtils;
/* loaded from: classes3.dex */
public class a implements Interceptor {

    /* renamed from: a  reason: collision with root package name */
    private static final String f53163a = "Android Api " + Build.VERSION.SDK_INT + "/BuzzCast " + SystemUtil.getVersionCode() + FileUtils.RES_PREFIX_STORAGE + Build.BRAND + FileUtils.RES_PREFIX_STORAGE + Build.MODEL + FileUtils.RES_PREFIX_STORAGE + Build.DEVICE + "/CPU " + CpuInfoUtils.getArchType() + "bit";

    @Override // okhttp3.Interceptor
    public Response intercept(Interceptor.Chain chain) throws IOException {
        Request request = chain.request();
        String httpUrl = request.url().toString();
        String str = BaseFaceCastRequest.f16245x;
        Request.Builder newBuilder = request.newBuilder();
        newBuilder.method(request.method(), request.body()).url(request.url()).header(BaseConfig.KEY_TOKEN, str).removeHeader("User-Agent").addHeader("User-Agent", f53163a);
        if (BaseFaceCastRequest.J(httpUrl)) {
            newBuilder.addHeader("nu_faceshow", "1");
        }
        return chain.proceed(newBuilder.build());
    }
}
