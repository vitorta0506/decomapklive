package com.guochao.faceshow.aaspring.base.http.client;

import android.content.Context;
import android.os.Build;
import android.text.TextUtils;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.lifecycle.Lifecycle;
import androidx.lifecycle.LifecycleObserver;
import androidx.lifecycle.LifecycleOwner;
import androidx.lifecycle.OnLifecycleEvent;
import com.facebook.AccessToken;
import com.facebook.devicerequests.internal.DeviceRequestsHelper;
import com.guochao.faceshow.aaspring.base.http.api.FaceCastApi;
import com.guochao.faceshow.aaspring.base.http.callback.d;
import com.guochao.faceshow.aaspring.base.http.request.BaseFaceCastRequest;
import com.guochao.faceshow.aaspring.base.http.response.FaceCastBaseResponse;
import com.guochao.faceshow.aaspring.utils.ContentTypeUtils;
import com.guochao.faceshow.aaspring.utils.Language;
import com.guochao.faceshow.aaspring.utils.MemoryCache;
import com.guochao.faceshow.aaspring.utils.location.FcLocation;
import com.guochao.faceshow.context.GCApplication;
import com.guochao.faceshow.utils.BaseConfig;
import com.guochao.faceshow.utils.Contants;
import com.guochao.faceshow.utils.SystemUtil;
import io.reactivex.k;
import io.reactivex.p;
import io.reactivex.q;
import io.reactivex.r;
import java.io.File;
import java.io.UnsupportedEncodingException;
import java.lang.reflect.Type;
import java.net.URLEncoder;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.TimeZone;
import java.util.concurrent.TimeUnit;
import okhttp3.MediaType;
import okhttp3.MultipartBody;
import okhttp3.OkHttpClient;
import okhttp3.RequestBody;
import okhttp3.ResponseBody;
import retrofit2.Retrofit;
import retrofit2.adapter.rxjava2.RxJava2CallAdapterFactory;
import retrofit2.converter.gson.GsonConverterFactory;
@Deprecated
/* loaded from: classes3.dex */
public class FaceCastHttpClientImpl implements com.guochao.faceshow.aaspring.base.http.client.a {

    /* renamed from: g  reason: collision with root package name */
    private static FaceCastHttpClientImpl f16217g;

    /* renamed from: a  reason: collision with root package name */
    private Context f16222a;

    /* renamed from: b  reason: collision with root package name */
    private FaceCastApi f16223b;

    /* renamed from: c  reason: collision with root package name */
    private FaceCastApi f16224c;

    /* renamed from: d  reason: collision with root package name */
    private OkHttpClient f16225d;

    /* renamed from: e  reason: collision with root package name */
    private static final MediaType f16215e = MediaType.parse("multipart/form-data;charset=utf-8");

    /* renamed from: f  reason: collision with root package name */
    private static final MediaType f16216f = MediaType.parse("application/json;charset=utf-8");

    /* renamed from: h  reason: collision with root package name */
    private static final String[] f16218h = {"", ""};

    /* renamed from: i  reason: collision with root package name */
    public static String f16219i = "";

    /* renamed from: j  reason: collision with root package name */
    public static String f16220j = "";

    /* renamed from: k  reason: collision with root package name */
    public static String f16221k = "";

    /* renamed from: com.guochao.faceshow.aaspring.base.http.client.FaceCastHttpClientImpl$3  reason: invalid class name */
    /* loaded from: classes3.dex */
    class AnonymousClass3 implements LifecycleObserver {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ r f16226a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ LifecycleOwner f16227b;

        @OnLifecycleEvent(Lifecycle.Event.ON_DESTROY)
        public void cancel() {
            r rVar = this.f16226a;
            if ((rVar instanceof th.b) && !((th.b) rVar).isDisposed()) {
                ((th.b) this.f16226a).dispose();
            }
            this.f16227b.getLifecycle().removeObserver(this);
        }
    }

    /* JADX INFO: Add missing generic type declarations: [T] */
    /* loaded from: classes3.dex */
    class a<T> extends l7.a<FaceCastBaseResponse<T>, T> {
        a(com.guochao.faceshow.aaspring.base.http.callback.b bVar) {
            super(bVar);
        }
    }

    /* JADX INFO: Add missing generic type declarations: [T] */
    /* loaded from: classes3.dex */
    class b<T> extends l7.a<FaceCastBaseResponse<T>, T> {
        b(com.guochao.faceshow.aaspring.base.http.callback.b bVar) {
            super(bVar);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX INFO: Add missing generic type declarations: [T] */
    /* loaded from: classes3.dex */
    public class c<T> implements q<ResponseBody, FaceCastBaseResponse<T>> {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ String f16239a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ LifecycleOwner f16240b;

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ Type f16241c;

        c(String str, LifecycleOwner lifecycleOwner, Type type) {
            this.f16239a = str;
            this.f16240b = lifecycleOwner;
            this.f16241c = type;
        }

        @Override // io.reactivex.q
        public p<FaceCastBaseResponse<T>> a(k<ResponseBody> kVar) {
            return kVar.map(new i7.a(this.f16239a, this.f16240b, this.f16241c)).subscribeOn(di.a.b()).observeOn(sh.a.a());
        }
    }

    public FaceCastHttpClientImpl(Context context) {
        this.f16222a = context.getApplicationContext();
        OkHttpClient.Builder addInterceptor = new OkHttpClient.Builder().addInterceptor(new j7.a());
        addInterceptor.addInterceptor(new j7.b());
        TimeUnit timeUnit = TimeUnit.SECONDS;
        addInterceptor.connectTimeout(30L, timeUnit);
        addInterceptor.readTimeout(30L, timeUnit);
        addInterceptor.writeTimeout(30L, timeUnit);
        OkHttpClient build = addInterceptor.build();
        Retrofit build2 = new Retrofit.Builder().baseUrl(x6.a.f59625a).client(build).addConverterFactory(GsonConverterFactory.create()).addCallAdapterFactory(RxJava2CallAdapterFactory.create()).build();
        this.f16223b = (FaceCastApi) build2.create(FaceCastApi.class);
        Retrofit.Builder newBuilder = build2.newBuilder();
        OkHttpClient build3 = build.newBuilder().connectTimeout(300L, timeUnit).readTimeout(300L, timeUnit).writeTimeout(300L, timeUnit).build();
        this.f16225d = build3;
        this.f16224c = (FaceCastApi) newBuilder.client(build3).build().create(FaceCastApi.class);
    }

    private <T> boolean c(LifecycleOwner lifecycleOwner, com.guochao.faceshow.aaspring.base.http.callback.c<T> cVar) {
        return n7.c.a(lifecycleOwner instanceof Context ? (Context) lifecycleOwner : GCApplication.app(), cVar);
    }

    private <T> boolean d(LifecycleOwner lifecycleOwner, com.guochao.faceshow.aaspring.base.http.callback.c<T> cVar, boolean z10) {
        return n7.c.b(lifecycleOwner instanceof Context ? (Context) lifecycleOwner : GCApplication.app(), cVar, z10);
    }

    private <T> r<FaceCastBaseResponse<T>> e(String str, LifecycleOwner lifecycleOwner, Context context, k<ResponseBody> kVar, Type type, com.guochao.faceshow.aaspring.base.http.callback.c<T> cVar) {
        return kVar.subscribeOn(di.a.b()).compose(new c(str, lifecycleOwner, type)).subscribeWith(new m7.b(lifecycleOwner, cVar));
    }

    public static FaceCastHttpClientImpl h(Context context) {
        if (f16217g == null) {
            synchronized (FaceCastHttpClientImpl.class) {
                if (f16217g == null) {
                    f16217g = new FaceCastHttpClientImpl(context);
                }
            }
        }
        return f16217g;
    }

    @Override // com.guochao.faceshow.aaspring.base.http.client.a
    public com.guochao.faceshow.aaspring.base.utils.a a(LifecycleOwner lifecycleOwner, String str, String str2, com.guochao.faceshow.aaspring.base.http.callback.c<File> cVar) {
        if (d(lifecycleOwner, cVar, false)) {
            return com.guochao.faceshow.aaspring.base.utils.a.f16300c0;
        }
        k<ResponseBody> download = this.f16224c.download(str, k(null));
        i7.b bVar = new i7.b(str2, cVar);
        download.subscribeOn(di.a.b()).map(bVar).observeOn(sh.a.a()).subscribeWith(new m7.b(lifecycleOwner, cVar));
        return bVar;
    }

    @Override // com.guochao.faceshow.aaspring.base.http.client.a
    public <T> com.guochao.faceshow.aaspring.base.utils.a b(LifecycleOwner lifecycleOwner, String str, Map<String, String> map, com.guochao.faceshow.aaspring.base.http.callback.c<T> cVar) {
        return m(lifecycleOwner, str, map, null, new a(cVar).a(), cVar);
    }

    public <T> com.guochao.faceshow.aaspring.base.utils.a f(@Nullable final LifecycleOwner lifecycleOwner, @NonNull String str, @Nullable Map<String, String> map, @Nullable Type type, @Nullable com.guochao.faceshow.aaspring.base.http.callback.c<T> cVar) {
        if (c(lifecycleOwner, cVar)) {
            return com.guochao.faceshow.aaspring.base.utils.a.f16300c0;
        }
        if (cVar != null) {
            cVar.setLifecycleOwner(lifecycleOwner);
        }
        k<ResponseBody> kVar = this.f16223b.get(str, map, k(map));
        final r<FaceCastBaseResponse<T>> e10 = e(str, lifecycleOwner, this.f16222a, kVar, type, cVar);
        if (lifecycleOwner != null) {
            lifecycleOwner.getLifecycle().addObserver(new LifecycleObserver() { // from class: com.guochao.faceshow.aaspring.base.http.client.FaceCastHttpClientImpl.6
                @OnLifecycleEvent(Lifecycle.Event.ON_DESTROY)
                public void cancel() {
                    r rVar = e10;
                    if ((rVar instanceof th.b) && !((th.b) rVar).isDisposed()) {
                        ((th.b) e10).dispose();
                    }
                    lifecycleOwner.getLifecycle().removeObserver(this);
                }
            });
        }
        return new n7.a(kVar);
    }

    public OkHttpClient g() {
        return this.f16225d;
    }

    public Map<String, String> i(Map<String, String> map) {
        return j(map, true);
    }

    public Map<String, String> j(Map<String, String> map, boolean z10) {
        if (map == null) {
            map = new HashMap<>();
        }
        String valueOf = String.valueOf(System.currentTimeMillis());
        String str = BaseFaceCastRequest.f16245x;
        FcLocation fcLocation = (FcLocation) MemoryCache.getInstance().get(FcLocation.class);
        map.put("api_version", "3");
        map.put("platform", "android");
        map.put("platform_version", SystemUtil.getSystemVersion());
        map.put("versionCode", String.valueOf(SystemUtil.getVersionCode()));
        map.put("app_version", SystemUtil.getVersionName());
        map.put(DeviceRequestsHelper.DEVICE_INFO_DEVICE, SystemUtil.getSystemModel());
        map.put("deviceId", SystemUtil.getDeviceId());
        if (!map.containsKey("unixTime")) {
            map.put("unixTime", valueOf);
        }
        if (str == null) {
            str = "";
        }
        map.put(BaseConfig.KEY_TOKEN, str);
        map.put("longitude", fcLocation == null ? f16218h[1] : String.valueOf(fcLocation.getLongitude()));
        map.put("latitude", fcLocation == null ? f16218h[0] : String.valueOf(fcLocation.getLatitude()));
        if (!map.containsKey("language")) {
            String str2 = f16221k;
            if (TextUtils.isEmpty(str2)) {
                str2 = "en";
            }
            map.put("language", str2);
        } else {
            map.remove("language");
        }
        map.put("phone_country", f16219i);
        String str3 = f16220j;
        if (Language.INDONESIA.equalsIgnoreCase(str3)) {
            str3 = "id";
        }
        map.put("phone_lang", str3);
        map.put("cpuArch", GCApplication.sCpuArch);
        map.put("androidSdkLevel", String.valueOf(Build.VERSION.SDK_INT));
        map.put("timeZone", TimeZone.getDefault().getID());
        if (z10) {
            String str4 = BaseFaceCastRequest.f16244w;
            if (!map.containsKey(Contants.USER_ID)) {
                map.put(Contants.USER_ID, str4);
            }
            if (!map.containsKey(AccessToken.USER_ID_KEY)) {
                map.put(AccessToken.USER_ID_KEY, str4);
            }
        }
        return map;
    }

    public Map<String, String> k(Map<String, String> map) {
        return l(map, null);
    }

    public Map<String, String> l(Map<String, String> map, Map<String, String> map2) {
        if (map != null && map.containsKey("unixTime")) {
            HashMap hashMap = new HashMap();
            hashMap.put("unixTime", map.get("unixTime"));
            if (map2 != null) {
                hashMap.putAll(map2);
            }
            return i(hashMap);
        }
        return i(map2);
    }

    public <T> com.guochao.faceshow.aaspring.base.utils.a m(final LifecycleOwner lifecycleOwner, String str, Map<String, String> map, Map<String, List<File>> map2, Type type, com.guochao.faceshow.aaspring.base.http.callback.c<T> cVar) {
        k<ResponseBody> postDataWithFile;
        if (c(lifecycleOwner, cVar)) {
            return com.guochao.faceshow.aaspring.base.utils.a.f16300c0;
        }
        Map<String, String> k10 = k(map);
        Map<String, String> i9 = i(map);
        if (map2 == null || map2.isEmpty()) {
            postDataWithFile = this.f16223b.postData(str, i9, k10);
        } else {
            ArrayList arrayList = new ArrayList(i9.entrySet());
            MultipartBody.Builder builder = new MultipartBody.Builder();
            for (int i10 = 0; i10 < arrayList.size(); i10++) {
                String str2 = (String) ((Map.Entry) arrayList.get(i10)).getValue();
                if (TextUtils.isEmpty(str2)) {
                    str2 = "";
                }
                builder.addFormDataPart((String) ((Map.Entry) arrayList.get(i10)).getKey(), str2);
            }
            ArrayList arrayList2 = new ArrayList(map2.entrySet());
            for (int i11 = 0; i11 < arrayList2.size(); i11++) {
                List list = (List) ((Map.Entry) arrayList2.get(i11)).getValue();
                for (int i12 = 0; i12 < list.size(); i12++) {
                    File file = (File) list.get(i12);
                    String findContentType = ContentTypeUtils.findContentType(file.getAbsolutePath());
                    try {
                        builder.addPart(MultipartBody.Part.createFormData((String) ((Map.Entry) arrayList2.get(i11)).getKey(), URLEncoder.encode(((File) list.get(i12)).getName(), "UTF-8"), TextUtils.isEmpty(findContentType) ? RequestBody.create(f16215e, file) : RequestBody.create(MediaType.parse(findContentType + ";charset=utf-8"), file)));
                    } catch (UnsupportedEncodingException e10) {
                        e10.printStackTrace();
                    }
                }
            }
            RequestBody build = builder.setType(f16215e).build();
            if (cVar instanceof d) {
                build = new com.guochao.faceshow.aaspring.base.http.request.b(build, (d) cVar);
            }
            postDataWithFile = this.f16224c.postDataWithFile(str, build, k10);
        }
        if (cVar != null) {
            cVar.setLifecycleOwner(lifecycleOwner);
        }
        final r<FaceCastBaseResponse<T>> e11 = e(str, lifecycleOwner, this.f16222a, postDataWithFile, type, cVar);
        if (lifecycleOwner != null) {
            lifecycleOwner.getLifecycle().addObserver(new LifecycleObserver() { // from class: com.guochao.faceshow.aaspring.base.http.client.FaceCastHttpClientImpl.5
                @OnLifecycleEvent(Lifecycle.Event.ON_DESTROY)
                public void cancel() {
                    r rVar = e11;
                    if ((rVar instanceof th.b) && !((th.b) rVar).isDisposed()) {
                        ((th.b) e11).dispose();
                    }
                    lifecycleOwner.getLifecycle().removeObserver(this);
                }
            });
        }
        return new n7.a(postDataWithFile);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:34:0x00a4  */
    /* JADX WARN: Removed duplicated region for block: B:79:0x01ea  */
    /* JADX WARN: Removed duplicated region for block: B:82:0x01f3  */
    /* JADX WARN: Removed duplicated region for block: B:83:0x01f8  */
    /* JADX WARN: Removed duplicated region for block: B:86:0x0210  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public <T> com.guochao.faceshow.aaspring.base.utils.a n(@androidx.annotation.NonNull com.guochao.faceshow.aaspring.base.http.request.PostRequest r14, @androidx.annotation.Nullable com.guochao.faceshow.aaspring.base.http.callback.c<T> r15) {
        /*
            Method dump skipped, instructions count: 546
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.guochao.faceshow.aaspring.base.http.client.FaceCastHttpClientImpl.n(com.guochao.faceshow.aaspring.base.http.request.PostRequest, com.guochao.faceshow.aaspring.base.http.callback.c):com.guochao.faceshow.aaspring.base.utils.a");
    }
}
