package i7;

import android.content.Context;
import androidx.annotation.RequiresApi;
import androidx.fragment.app.Fragment;
import androidx.lifecycle.LifecycleOwner;
import com.google.gson.Gson;
import com.google.gson.GsonBuilder;
import com.google.gson.reflect.TypeToken;
import com.guochao.faceshow.aaspring.base.http.request.BaseFaceCastRequest;
import com.guochao.faceshow.aaspring.base.http.response.FaceCastBaseResponse;
import com.guochao.faceshow.aaspring.utils.NativeBridge;
import java.lang.ref.WeakReference;
import java.lang.reflect.ParameterizedType;
import java.lang.reflect.Type;
import n7.d;
import okhttp3.ResponseBody;
import org.json.JSONObject;
import vh.o;
/* loaded from: classes3.dex */
public class a<T> implements o<ResponseBody, FaceCastBaseResponse<T>> {

    /* renamed from: d  reason: collision with root package name */
    public static b f40981d;

    /* renamed from: e  reason: collision with root package name */
    static final Gson f40982e = new GsonBuilder().excludeFieldsWithModifiers(16, 128, 8).serializeNulls().create();

    /* renamed from: a  reason: collision with root package name */
    protected Type f40983a;

    /* renamed from: b  reason: collision with root package name */
    private WeakReference<Context> f40984b;

    /* renamed from: c  reason: collision with root package name */
    private String f40985c;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: i7.a$a  reason: collision with other inner class name */
    /* loaded from: classes3.dex */
    public class C0454a extends TypeToken<FaceCastBaseResponse<T>> {
        C0454a() {
        }
    }

    /* loaded from: classes3.dex */
    public interface b {
        boolean checkFreeze(int i9, JSONObject jSONObject);
    }

    public a(String str, LifecycleOwner lifecycleOwner, Type type) {
        this.f40983a = type;
        this.f40985c = str;
        if (lifecycleOwner != null) {
            if (lifecycleOwner instanceof Context) {
                this.f40984b = new WeakReference<>((Context) lifecycleOwner);
            } else if (lifecycleOwner instanceof Fragment) {
                this.f40984b = new WeakReference<>(((Fragment) lifecycleOwner).getActivity());
            }
        }
    }

    private boolean b(int i9, JSONObject jSONObject) {
        b bVar = f40981d;
        return bVar != null && bVar.checkFreeze(i9, jSONObject);
    }

    @Override // vh.o
    @RequiresApi(api = 26)
    /* renamed from: a */
    public FaceCastBaseResponse<T> apply(ResponseBody responseBody) throws Exception {
        String str;
        FaceCastBaseResponse faceCastBaseResponse = new FaceCastBaseResponse();
        faceCastBaseResponse.setCode(-1);
        try {
            ((ParameterizedType) this.f40983a).getActualTypeArguments();
            Class d10 = d.d(this.f40983a, 0);
            String string = responseBody.string();
            JSONObject jSONObject = new JSONObject(string);
            int optInt = jSONObject.optInt("code");
            if (optInt == 1) {
                if (d10.equals(String.class)) {
                    if (jSONObject.has("result")) {
                        Object opt = jSONObject.opt("result");
                        if (opt instanceof String) {
                            faceCastBaseResponse.setResult(opt);
                            faceCastBaseResponse.setCode(jSONObject.optInt("code"));
                            return faceCastBaseResponse;
                        }
                    }
                    faceCastBaseResponse.setResult(string);
                    faceCastBaseResponse.setCode(optInt);
                    return faceCastBaseResponse;
                }
                FaceCastBaseResponse faceCastBaseResponse2 = (FaceCastBaseResponse) f40982e.fromJson(string, this.f40983a);
                if (faceCastBaseResponse2 != null) {
                    faceCastBaseResponse = faceCastBaseResponse2;
                } else {
                    faceCastBaseResponse.setMsg("json is null");
                }
                return faceCastBaseResponse;
            } else if (optInt == 99998) {
                Object fromJson = f40982e.fromJson(NativeBridge.d(jSONObject.getString("result"), BaseFaceCastRequest.f16243v), (Type) d10);
                faceCastBaseResponse.setCode(1);
                faceCastBaseResponse.setResult(fromJson);
                return faceCastBaseResponse;
            } else if (optInt == 99999) {
                Object fromJson2 = f40982e.fromJson(NativeBridge.h(jSONObject.getString("result")), (Type) d10);
                faceCastBaseResponse.setCode(1);
                faceCastBaseResponse.setResult(fromJson2);
                return faceCastBaseResponse;
            } else if (!b(optInt, jSONObject)) {
                FaceCastBaseResponse faceCastBaseResponse3 = null;
                if (String.class.equals(d.d(this.f40983a, 0)) && (str = this.f40985c) != null && str.contains("userLookAdvertisement")) {
                    try {
                        FaceCastBaseResponse faceCastBaseResponse4 = (FaceCastBaseResponse) f40982e.fromJson(string, new C0454a().getType());
                        faceCastBaseResponse4.setResult(jSONObject.getString("result"));
                        faceCastBaseResponse = faceCastBaseResponse4;
                    } catch (Exception unused) {
                        faceCastBaseResponse3 = (FaceCastBaseResponse) f40982e.fromJson(string, this.f40983a);
                    }
                } else {
                    faceCastBaseResponse3 = (FaceCastBaseResponse) f40982e.fromJson(string, this.f40983a);
                }
                if (faceCastBaseResponse3 == null) {
                    faceCastBaseResponse.setMsg("json is null");
                    faceCastBaseResponse3 = faceCastBaseResponse;
                }
                return faceCastBaseResponse3;
            } else {
                faceCastBaseResponse.setCode(optInt);
                return faceCastBaseResponse;
            }
        } catch (Exception e10) {
            e10.printStackTrace();
            faceCastBaseResponse.setMsg(e10.getMessage());
            return faceCastBaseResponse;
        } finally {
            responseBody.close();
        }
    }
}
