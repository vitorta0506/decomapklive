package d0;

import android.util.Log;
import androidx.annotation.NonNull;
import com.bumptech.glide.Priority;
import com.bumptech.glide.load.DataSource;
import com.bumptech.glide.load.HttpException;
import com.bumptech.glide.load.data.d;
import j0.g;
import java.io.IOException;
import java.io.InputStream;
import java.util.Map;
import okhttp3.Call;
import okhttp3.Callback;
import okhttp3.Request;
import okhttp3.Response;
import okhttp3.ResponseBody;
import v0.b;
import v0.j;
/* loaded from: classes.dex */
public class a implements d<InputStream>, Callback {

    /* renamed from: a  reason: collision with root package name */
    private final Call.Factory f37876a;

    /* renamed from: b  reason: collision with root package name */
    private final g f37877b;

    /* renamed from: c  reason: collision with root package name */
    private InputStream f37878c;

    /* renamed from: d  reason: collision with root package name */
    private ResponseBody f37879d;

    /* renamed from: e  reason: collision with root package name */
    private d.a<? super InputStream> f37880e;

    /* renamed from: f  reason: collision with root package name */
    private volatile Call f37881f;

    public a(Call.Factory factory, g gVar) {
        this.f37876a = factory;
        this.f37877b = gVar;
    }

    @Override // com.bumptech.glide.load.data.d
    @NonNull
    public Class<InputStream> a() {
        return InputStream.class;
    }

    @Override // com.bumptech.glide.load.data.d
    public void b() {
        try {
            InputStream inputStream = this.f37878c;
            if (inputStream != null) {
                inputStream.close();
            }
        } catch (IOException unused) {
        }
        ResponseBody responseBody = this.f37879d;
        if (responseBody != null) {
            responseBody.close();
        }
        this.f37880e = null;
    }

    @Override // com.bumptech.glide.load.data.d
    public void cancel() {
        Call call = this.f37881f;
        if (call != null) {
            call.cancel();
        }
    }

    @Override // com.bumptech.glide.load.data.d
    @NonNull
    public DataSource d() {
        return DataSource.REMOTE;
    }

    @Override // com.bumptech.glide.load.data.d
    public void e(@NonNull Priority priority, @NonNull d.a<? super InputStream> aVar) {
        Request.Builder url = new Request.Builder().url(this.f37877b.f());
        for (Map.Entry<String, String> entry : this.f37877b.c().entrySet()) {
            url.addHeader(entry.getKey(), entry.getValue());
        }
        Request build = url.build();
        this.f37880e = aVar;
        this.f37881f = this.f37876a.newCall(build);
        this.f37881f.enqueue(this);
    }

    @Override // okhttp3.Callback
    public void onFailure(@NonNull Call call, @NonNull IOException iOException) {
        if (Log.isLoggable("OkHttpFetcher", 3)) {
            Log.d("OkHttpFetcher", "OkHttp failed to obtain result", iOException);
        }
        this.f37880e.c(iOException);
    }

    @Override // okhttp3.Callback
    public void onResponse(@NonNull Call call, @NonNull Response response) {
        this.f37879d = response.body();
        if (response.isSuccessful()) {
            InputStream b10 = b.b(this.f37879d.byteStream(), ((ResponseBody) j.d(this.f37879d)).contentLength());
            this.f37878c = b10;
            this.f37880e.f(b10);
            return;
        }
        this.f37880e.c(new HttpException(response.message(), response.code()));
    }
}
