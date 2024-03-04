package ie;

import com.google.gson.Gson;
import com.google.gson.GsonBuilder;
import okhttp3.Cache;
import okhttp3.OkHttpClient;
import retrofit2.Converter;
import retrofit2.Retrofit;
import retrofit2.converter.gson.GsonConverterFactory;
import retrofit2.converter.wire.WireConverterFactory;
/* loaded from: classes4.dex */
public class a {

    /* renamed from: a  reason: collision with root package name */
    private final Cache f41033a;

    /* renamed from: b  reason: collision with root package name */
    private final Gson f41034b;

    /* renamed from: c  reason: collision with root package name */
    private final f f41035c;

    /* renamed from: d  reason: collision with root package name */
    private final h f41036d;

    /* JADX INFO: Access modifiers changed from: package-private */
    public a(Cache cache, Gson gson, f fVar, h hVar) {
        this.f41033a = cache;
        this.f41034b = gson;
        this.f41035c = fVar;
        this.f41036d = hVar;
    }

    private <T> T a(h hVar, String str, Class<T> cls, Converter.Factory factory) {
        OkHttpClient.Builder addInterceptor = new OkHttpClient.Builder().cache(this.f41033a).addInterceptor(hVar);
        if (str.startsWith("https://api.snapkit.com") || str.startsWith("https://us-central1-gcp.api.snapchat.com")) {
            addInterceptor.certificatePinner(l.a());
        }
        return (T) new Retrofit.Builder().baseUrl(str).client(addInterceptor.build()).addConverterFactory(factory).build().create(cls);
    }

    public <T> T b(String str, Class<T> cls) {
        return (T) a(this.f41035c, str, cls, WireConverterFactory.create());
    }

    public <T> T c(String str, Class<T> cls) {
        return (T) a(this.f41036d, str, cls, GsonConverterFactory.create(this.f41034b));
    }

    public <T> T d(String str, Class<T> cls) {
        return (T) a(this.f41036d, str, cls, WireConverterFactory.create());
    }

    public <T> T e(String str, Class<T> cls) {
        return (T) f(str, cls, GsonConverterFactory.create(new GsonBuilder().setLenient().create()));
    }

    public <T> T f(String str, Class<T> cls, Converter.Factory factory) {
        return (T) new Retrofit.Builder().baseUrl(str).client(new OkHttpClient.Builder().build()).addConverterFactory(factory).build().create(cls);
    }
}
