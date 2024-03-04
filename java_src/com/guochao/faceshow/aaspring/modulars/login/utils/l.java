package com.guochao.faceshow.aaspring.modulars.login.utils;

import android.content.Context;
import android.content.Intent;
import android.text.TextUtils;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.google.gson.Gson;
import com.guochao.faceshow.aaspring.base.http.request.PostRequest;
import com.guochao.faceshow.aaspring.base.http.response.FaceCastBaseResponse;
import com.guochao.faceshow.aaspring.beans.CheckThirdPartyResult;
import com.guochao.faceshow.aaspring.modulars.cancelaccount.CancelAccountActivity;
import com.guochao.faceshow.aaspring.modulars.login.bean.QqUserBean;
import com.guochao.faceshow.aaspring.modulars.login.bean.WeiBoUserBean;
import com.guochao.faceshow.aaspring.utils.EventTrackingUtils;
import com.guochao.faceshow.utils.Contants;
import java.util.ArrayList;
import java.util.List;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes3.dex */
public abstract class l extends com.guochao.faceshow.aaspring.modulars.login.utils.a {

    /* renamed from: b  reason: collision with root package name */
    protected Context f20570b;

    /* renamed from: c  reason: collision with root package name */
    private boolean f20571c;

    /* renamed from: d  reason: collision with root package name */
    private List<c> f20572d;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class a extends com.guochao.faceshow.aaspring.base.http.callback.c<CheckThirdPartyResult> {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ int f20573a;

        a(int i9) {
            this.f20573a = i9;
        }

        @Override // com.guochao.faceshow.aaspring.base.http.callback.c
        public void onFailure(@NonNull g7.a<CheckThirdPartyResult> aVar) {
            l.this.e(aVar.a(), aVar.c());
        }

        @Override // com.guochao.faceshow.aaspring.base.http.callback.c
        public void onResponse(@Nullable CheckThirdPartyResult checkThirdPartyResult, @NonNull FaceCastBaseResponse<CheckThirdPartyResult> faceCastBaseResponse) {
            if (checkThirdPartyResult == null) {
                l.this.e(faceCastBaseResponse.getCode(), faceCastBaseResponse.getMsg());
            } else if (checkThirdPartyResult.getReg() == 1) {
                if (checkThirdPartyResult.getUser() != null) {
                    l.this.f(null, checkThirdPartyResult);
                } else {
                    l.this.e(faceCastBaseResponse.getCode(), faceCastBaseResponse.getMsg());
                }
            } else {
                l.this.j(this.f20573a, checkThirdPartyResult);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public static class b {

        /* renamed from: a  reason: collision with root package name */
        String f20575a;

        public b(String str) {
            this.f20575a = str;
        }
    }

    /* loaded from: classes3.dex */
    public interface c {
        void A(l lVar);

        void H(d dVar, CheckThirdPartyResult checkThirdPartyResult, l lVar);

        void k(int i9, String str, l lVar);

        void onAuthResponse(String str);
    }

    /* loaded from: classes3.dex */
    public static class d {

        /* renamed from: a  reason: collision with root package name */
        private String f20576a;

        /* renamed from: b  reason: collision with root package name */
        private String f20577b;

        /* renamed from: c  reason: collision with root package name */
        private String f20578c;

        /* renamed from: d  reason: collision with root package name */
        private String f20579d;

        /* renamed from: e  reason: collision with root package name */
        private int f20580e;

        /* renamed from: f  reason: collision with root package name */
        private String f20581f;

        public int a() {
            return this.f20580e;
        }

        public String b() {
            return this.f20579d;
        }

        public String c() {
            return this.f20576a;
        }

        public String d() {
            return this.f20581f;
        }

        public String e() {
            return this.f20578c;
        }

        public String f() {
            return this.f20577b;
        }

        public void g(String str) {
            this.f20579d = str;
        }

        public void h(String str) {
            this.f20576a = str;
        }

        public void i(String str) {
            this.f20578c = str;
        }

        public void j(String str) {
            this.f20577b = str;
        }
    }

    public l(Context context) {
        this.f20570b = context;
    }

    private boolean c(String str) {
        List<c> list = this.f20572d;
        if (list != null) {
            for (c cVar : list) {
                if ((cVar instanceof CancelAccountActivity) && !TextUtils.isEmpty(str)) {
                    cVar.onAuthResponse(str);
                    return true;
                }
            }
            return false;
        }
        return false;
    }

    public void a(int i9, String str, String str2, String str3) {
        b(i9, str, str2, null, str3);
    }

    public void b(int i9, String str, String str2, String str3, String str4) {
        String str5;
        if (TextUtils.isEmpty(str3)) {
            str5 = !TextUtils.isEmpty(str2) ? str2 : null;
        } else {
            str5 = str3;
        }
        if (c(str5)) {
            return;
        }
        PostRequest y10 = new PostRequest("user/openid").y("type", Integer.valueOf(i9)).y("accessToken", str);
        if (TextUtils.isEmpty(str2)) {
            str2 = "";
        }
        y10.y("uid", str2).y("secret", str4).y("unionid", str3).M(new a(i9));
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void d() {
        List<c> list = this.f20572d;
        if (list != null) {
            for (c cVar : list) {
                cVar.A(this);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void e(int i9, String str) {
        List<c> list = this.f20572d;
        if (list != null) {
            for (c cVar : list) {
                cVar.k(i9, str, this);
            }
        }
    }

    protected void f(d dVar, CheckThirdPartyResult checkThirdPartyResult) {
        List<c> list = this.f20572d;
        if (list != null) {
            for (c cVar : list) {
                cVar.H(dVar, checkThirdPartyResult, this);
            }
        }
        b bVar = com.guochao.faceshow.aaspring.modulars.login.utils.a.f20531a.get(getClass().getName());
        if (bVar != null) {
            EventTrackingUtils.getInstance().track(bVar.f20575a);
        }
    }

    public void g() {
        this.f20571c = true;
        List<c> list = this.f20572d;
        if (list != null) {
            list.clear();
        }
    }

    public boolean h() {
        return this.f20571c;
    }

    public void i(int i9, int i10, @Nullable Intent intent) {
    }

    protected void j(int i9, CheckThirdPartyResult checkThirdPartyResult) {
        if (checkThirdPartyResult != null && !TextUtils.isEmpty(checkThirdPartyResult.getJson())) {
            try {
                Gson gson = new Gson();
                switch (i9) {
                    case 4:
                        e(0, null);
                        return;
                    case 5:
                        if (((QqUserBean) gson.fromJson(checkThirdPartyResult.getJson(), (Class<Object>) QqUserBean.class)) != null) {
                            e(0, null);
                            return;
                        } else {
                            e(0, null);
                            return;
                        }
                    case 6:
                        WeiBoUserBean weiBoUserBean = (WeiBoUserBean) gson.fromJson(checkThirdPartyResult.getJson(), (Class<Object>) WeiBoUserBean.class);
                        new d();
                        if (weiBoUserBean != null) {
                            e(0, null);
                            return;
                        } else {
                            e(0, null);
                            return;
                        }
                    case 7:
                        JSONObject jSONObject = new JSONObject(checkThirdPartyResult.getJson());
                        String optString = jSONObject.optString("id");
                        String optString2 = jSONObject.optString("name");
                        String format = String.format("http://graph.facebook.com/%s/picture?type=large", optString);
                        d dVar = new d();
                        if (TextUtils.isEmpty(optString2)) {
                            optString2 = "";
                        }
                        dVar.h(optString2);
                        if (TextUtils.isEmpty(format)) {
                            format = "";
                        }
                        dVar.i(format);
                        dVar.j(TextUtils.isEmpty(optString) ? "" : optString);
                        f(dVar, checkThirdPartyResult);
                        return;
                    case 8:
                        JSONObject jSONObject2 = new JSONObject(checkThirdPartyResult.getJson());
                        d dVar2 = new d();
                        String valueOf = String.valueOf(jSONObject2.optLong("id"));
                        String optString3 = jSONObject2.optString("name");
                        String optString4 = jSONObject2.optString("profile_image_url_https");
                        String optString5 = jSONObject2.optString("profile_image_url");
                        if (TextUtils.isEmpty(optString3)) {
                            optString3 = "";
                        }
                        dVar2.h(optString3);
                        if (TextUtils.isEmpty(optString4)) {
                            optString4 = !TextUtils.isEmpty(optString5) ? optString5 : "";
                        }
                        dVar2.i(optString4);
                        dVar2.j(TextUtils.isEmpty(valueOf) ? "" : valueOf);
                        f(dVar2, checkThirdPartyResult);
                        return;
                    case 9:
                        JSONObject jSONObject3 = new JSONObject(checkThirdPartyResult.getJson());
                        String string = jSONObject3.getString("sub");
                        String string2 = jSONObject3.getString("picture");
                        String string3 = jSONObject3.getString("name");
                        d dVar3 = new d();
                        dVar3.h(string3);
                        dVar3.j(string);
                        dVar3.i(string2);
                        f(dVar3, checkThirdPartyResult);
                        return;
                    case 10:
                        JSONObject jSONObject4 = new JSONObject(checkThirdPartyResult.getJson());
                        String str = (String) jSONObject4.get("username");
                        String str2 = (String) jSONObject4.get("id");
                        d dVar4 = new d();
                        if (TextUtils.isEmpty(str)) {
                            str = "";
                        }
                        dVar4.h(str);
                        dVar4.j(TextUtils.isEmpty(str2) ? "" : str2);
                        f(dVar4, checkThirdPartyResult);
                        return;
                    case 11:
                        JSONObject jSONObject5 = new JSONObject(checkThirdPartyResult.getJson());
                        String string4 = jSONObject5.has(Contants.USER_ID) ? jSONObject5.getString(Contants.USER_ID) : null;
                        String string5 = jSONObject5.has("displayName") ? jSONObject5.getString("displayName") : null;
                        String string6 = jSONObject5.has("pictureUrl") ? jSONObject5.getString("pictureUrl") : null;
                        d dVar5 = new d();
                        if (TextUtils.isEmpty(string5)) {
                            string5 = "";
                        }
                        dVar5.h(string5);
                        if (TextUtils.isEmpty(string6)) {
                            string6 = "";
                        }
                        dVar5.i(string6);
                        dVar5.j(TextUtils.isEmpty(string4) ? "" : string4);
                        f(dVar5, checkThirdPartyResult);
                        return;
                    case 12:
                        JSONObject jSONObject6 = new JSONObject(checkThirdPartyResult.getJson()).getJSONObject("response");
                        Object obj = jSONObject6.get("id");
                        int intValue = ((Integer) jSONObject6.get("sex")).intValue();
                        String str3 = (String) jSONObject6.get("first_name");
                        d dVar6 = new d();
                        if (TextUtils.isEmpty(str3)) {
                            str3 = "";
                        }
                        dVar6.h(str3);
                        dVar6.g(intValue == 2 ? "1" : "2");
                        dVar6.j(obj instanceof Integer ? String.valueOf(obj) : "");
                        f(dVar6, checkThirdPartyResult);
                        return;
                    default:
                        return;
                }
            } catch (JSONException e10) {
                e10.printStackTrace();
                return;
            }
        }
        e(0, null);
    }

    public void k(c cVar) {
        if (this.f20572d == null) {
            this.f20572d = new ArrayList();
        }
        if (this.f20572d.contains(cVar)) {
            return;
        }
        this.f20572d.add(cVar);
    }

    public boolean l() {
        return true;
    }

    public abstract void m();

    public void n(c cVar) {
        List<c> list = this.f20572d;
        if (list == null) {
            return;
        }
        list.remove(cVar);
    }
}
