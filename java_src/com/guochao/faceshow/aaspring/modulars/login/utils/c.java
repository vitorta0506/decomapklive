package com.guochao.faceshow.aaspring.modulars.login.utils;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.text.TextUtils;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.google.android.gms.auth.api.signin.GoogleSignInAccount;
import com.google.android.gms.auth.api.signin.GoogleSignInOptions;
import com.google.android.gms.common.api.ApiException;
import com.google.gson.Gson;
import com.guochao.faceshow.aaspring.beans.GoogleBean;
import com.guochao.faceshow.aaspring.utils.LogUtils;
import com.guochao.faceshow.aaspring.utils.ToastUtils;
import com.guochao.faceshow.utils.HandlerGetter;
import java.io.IOException;
import okhttp3.Call;
import okhttp3.Callback;
import okhttp3.FormBody;
import okhttp3.OkHttpClient;
import okhttp3.Request;
import okhttp3.Response;
import okhttp3.ResponseBody;
/* loaded from: classes3.dex */
public class c extends l {

    /* renamed from: e  reason: collision with root package name */
    private com.google.android.gms.auth.api.signin.b f20539e;

    /* renamed from: f  reason: collision with root package name */
    private final GoogleSignInOptions f20540f;

    /* renamed from: g  reason: collision with root package name */
    Activity f20541g;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class a implements Callback {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ String f20542a;

        /* renamed from: com.guochao.faceshow.aaspring.modulars.login.utils.c$a$a  reason: collision with other inner class name */
        /* loaded from: classes3.dex */
        class RunnableC0201a implements Runnable {

            /* renamed from: a  reason: collision with root package name */
            final /* synthetic */ IOException f20544a;

            RunnableC0201a(IOException iOException) {
                this.f20544a = iOException;
            }

            @Override // java.lang.Runnable
            public void run() {
                c.this.e(-1, this.f20544a.toString());
            }
        }

        /* loaded from: classes3.dex */
        class b implements Runnable {
            b() {
            }

            @Override // java.lang.Runnable
            public void run() {
                c.this.e(-2, "response body is null");
            }
        }

        a(String str) {
            this.f20542a = str;
        }

        @Override // okhttp3.Callback
        public void onFailure(Call call, IOException iOException) {
            LogUtils.e("onFailure", iOException.getMessage());
            HandlerGetter.runOnUIThread(new RunnableC0201a(iOException));
        }

        @Override // okhttp3.Callback
        public void onResponse(@NonNull Call call, @NonNull Response response) throws IOException {
            ResponseBody body = response.body();
            if (body == null) {
                HandlerGetter.runOnUIThread(new b());
                return;
            }
            String string = body.string();
            LogUtils.e("onResponse", string);
            c.this.a(9, ((GoogleBean) new Gson().fromJson(string, (Class<Object>) GoogleBean.class)).getAccess_token(), this.f20542a, "");
        }
    }

    public c(Context context) {
        super(context);
        this.f20540f = new GoogleSignInOptions.a(GoogleSignInOptions.DEFAULT_SIGN_IN).b().g("608585919828-m85rs3dlf3v5h32ju76sdqu3jjlbuoho.apps.googleusercontent.com").d("608585919828-m85rs3dlf3v5h32ju76sdqu3jjlbuoho.apps.googleusercontent.com").a();
        this.f20541g = (Activity) context;
    }

    private void o(String str, String str2, String str3) {
        OkHttpClient okHttpClient = new OkHttpClient();
        FormBody.Builder add = new FormBody.Builder().add("client_id", "608585919828-m85rs3dlf3v5h32ju76sdqu3jjlbuoho.apps.googleusercontent.com").add("client_secret", "3cqu8zuFINHsHHo2hbbcqVAl");
        if (TextUtils.isEmpty(str2)) {
            str2 = "";
        }
        okHttpClient.newCall(new Request.Builder().url("https://oauth2.googleapis.com/token").post(add.add("code", str2).add("redirect_uri", "https://facecast-1522727057744.firebaseapp.com/__/auth/handler").add("grant_type", "authorization_code").build()).build()).enqueue(new a(str3));
    }

    @Override // com.guochao.faceshow.aaspring.modulars.login.utils.l
    public void i(int i9, int i10, @Nullable Intent intent) {
        super.i(i9, i10, intent);
        if (i9 == 101) {
            try {
                GoogleSignInAccount l10 = com.google.android.gms.auth.api.signin.a.c(intent).l(ApiException.class);
                if (l10 != null) {
                    l10.I();
                    l10.M();
                    l10.L();
                    l10.K();
                    String P = l10.P();
                    l10.c0();
                    o(l10.R(), l10.p0(), P);
                }
            } catch (ApiException e10) {
                ToastUtils.debug("谷歌登录失败," + e10.getStatus().M());
                e(-1, e10.toString());
                LogUtils.i("zune", "signInResult:failed code=" + e10.getStatusCode());
            }
        }
    }

    @Override // com.guochao.faceshow.aaspring.modulars.login.utils.l
    public void m() {
        com.google.android.gms.auth.api.signin.b a10 = com.google.android.gms.auth.api.signin.a.a(this.f20541g, this.f20540f);
        this.f20539e = a10;
        this.f20541g.startActivityForResult(a10.s(), 101);
    }
}
