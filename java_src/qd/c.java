package qd;

import android.app.Application;
import com.guochao.faceshow.aaspring.base.http.client.FaceCastHttpClientImpl;
import com.guochao.faceshow.context.GCApplication;
import com.guochao.faceshow.utils.AAMethod;
import com.guochao.faceshow.utils.BaseConfig;
import com.guochao.faceshow.utils.HandlerGetter;
import java.io.File;
import java.util.Map;
import okhttp3.FormBody;
import okhttp3.HttpUrl;
import okhttp3.MediaType;
import okhttp3.MultipartBody;
import okhttp3.Request;
import okhttp3.RequestBody;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes4.dex */
public class c {

    /* renamed from: a  reason: collision with root package name */
    static Application f57184a = GCApplication.app();

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes4.dex */
    public class a implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ od.b f57185a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ Object f57186b;

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ int f57187c;

        /* renamed from: d  reason: collision with root package name */
        final /* synthetic */ String f57188d;

        a(od.b bVar, Object obj, int i9, String str) {
            this.f57185a = bVar;
            this.f57186b = obj;
            this.f57187c = i9;
            this.f57188d = str;
        }

        @Override // java.lang.Runnable
        public void run() {
            od.b bVar = this.f57185a;
            if (bVar instanceof od.a) {
                ((od.a) bVar).a(this.f57186b, this.f57187c, this.f57188d);
            }
            this.f57185a.onResponse(this.f57186b);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static Request a(String str, Map<String, String> map, Map<String, String> map2, boolean z10, Object obj, od.b bVar) {
        if (HttpUrl.parse(str) == null) {
            c(bVar, null, -1, "url is null or format url error,please check your code!!!");
            return null;
        }
        Map<String, String> d10 = d(map);
        RequestBody f10 = f(d10, map2, z10);
        Map<String, String> k10 = FaceCastHttpClientImpl.h(f57184a).k(d10);
        Request.Builder header = new Request.Builder().url(str).post(f10).header(BaseConfig.KEY_TOKEN, d10.get(BaseConfig.KEY_TOKEN));
        for (Map.Entry<String, String> entry : k10.entrySet()) {
            header.header(entry.getKey(), entry.getValue());
        }
        if (obj != null) {
            header.tag(obj);
        }
        return header.build();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static <T> void b(od.b<T> bVar, T t10, int i9, String str) {
        if (bVar == null) {
            return;
        }
        if (bVar instanceof od.a) {
            ((od.a) bVar).a(t10, i9, str);
        }
        bVar.onResponse(t10);
    }

    public static <T> void c(od.b<T> bVar, T t10, int i9, String str) {
        if (bVar == null) {
            return;
        }
        HandlerGetter.getMainHandler().post(new a(bVar, t10, i9, str));
    }

    static Map<String, String> d(Map<String, String> map) {
        return FaceCastHttpClientImpl.h(f57184a).i(map);
    }

    public static String e(Throwable th2) {
        String str = "";
        if (th2 == null) {
            return "";
        }
        try {
            str = th2.toString();
        } catch (Exception e10) {
            e10.printStackTrace();
        }
        if (!str.contains("errorCode: 564") && !str.contains("errorCode: 502") && !str.contains("errorCode: 504")) {
            if (str.contains("timeout")) {
                g();
                return str;
            }
            if (!str.contains("UnknownHostException") && !str.contains("ConnectException")) {
                th2.printStackTrace();
                return str;
            }
            g();
            return str;
        }
        g();
        return str;
    }

    static RequestBody f(Map<String, String> map, Map<String, String> map2, boolean z10) {
        if (z10) {
            JSONObject jSONObject = new JSONObject();
            try {
                for (String str : map.keySet()) {
                    jSONObject.put(str, map.get(str));
                }
            } catch (JSONException e10) {
                e10.printStackTrace();
            }
            return RequestBody.create(MediaType.parse("application/json"), jSONObject.toString());
        } else if (map2 != null && map2.size() != 0) {
            MultipartBody.Builder type = new MultipartBody.Builder().setType(MultipartBody.FORM);
            for (String str2 : map.keySet()) {
                type.addFormDataPart(str2, map.get(str2));
            }
            for (String str3 : map2.keySet()) {
                File file = new File(map2.get(str3));
                type.addFormDataPart(str3, file.getName(), RequestBody.create(MediaType.parse(AAMethod.getMIMEType(file)), file));
            }
            return type.build();
        } else {
            FormBody.Builder builder = new FormBody.Builder();
            for (String str4 : map.keySet()) {
                if (str4 != null && map.get(str4) != null) {
                    builder.add(str4, map.get(str4));
                }
            }
            return builder.build();
        }
    }

    static void g() {
    }
}
