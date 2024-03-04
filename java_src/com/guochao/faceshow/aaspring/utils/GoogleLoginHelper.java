package com.guochao.faceshow.aaspring.utils;

import android.app.Activity;
import android.content.Intent;
import android.text.TextUtils;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.google.android.gms.auth.api.signin.GoogleSignInAccount;
import com.google.android.gms.auth.api.signin.GoogleSignInOptions;
import com.google.android.gms.common.api.ApiException;
import com.google.gson.Gson;
import com.guochao.faceshow.aaspring.base.activity.BaseActivity;
import com.guochao.faceshow.aaspring.base.http.request.PostRequest;
import com.guochao.faceshow.aaspring.base.http.response.FaceCastBaseResponse;
import com.guochao.faceshow.aaspring.beans.CheckThirdPartyResult;
import com.guochao.faceshow.aaspring.beans.GoogleBean;
import com.guochao.faceshow.aaspring.modulars.cancelaccount.CancelAccountActivity;
import java.io.IOException;
import okhttp3.Call;
import okhttp3.Callback;
import okhttp3.FormBody;
import okhttp3.OkHttpClient;
import okhttp3.Request;
import okhttp3.Response;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes3.dex */
public class GoogleLoginHelper {
    public static final int RC_SIGN_IN = 101;
    private static final String SERVER_CLIENT_ID = "608585919828-m85rs3dlf3v5h32ju76sdqu3jjlbuoho.apps.googleusercontent.com";
    private static GoogleLoginHelper sHelper;
    private Activity activity;
    private com.google.android.gms.auth.api.signin.b mGoogleSignInClient;
    private final GoogleSignInOptions mGso = new GoogleSignInOptions.a(GoogleSignInOptions.DEFAULT_SIGN_IN).b().g(SERVER_CLIENT_ID).d(SERVER_CLIENT_ID).a();
    private boolean showLogin;

    /* loaded from: classes3.dex */
    public interface OnGoogleResponse {
        void onAuthResponse(String str);

        void onResponse(String str, String str2, String str3, CheckThirdPartyResult checkThirdPartyResult);
    }

    private GoogleLoginHelper() {
    }

    private void getAccessToken(String str, String str2, final String str3, final OnGoogleResponse onGoogleResponse) {
        OkHttpClient okHttpClient = new OkHttpClient();
        FormBody.Builder add = new FormBody.Builder().add("client_id", SERVER_CLIENT_ID).add("client_secret", "3cqu8zuFINHsHHo2hbbcqVAl");
        if (TextUtils.isEmpty(str2)) {
            str2 = "";
        }
        okHttpClient.newCall(new Request.Builder().url("https://oauth2.googleapis.com/token").post(add.add("code", str2).add("redirect_uri", "https://facecast-1522727057744.firebaseapp.com/__/auth/handler").add("grant_type", "authorization_code").build()).build()).enqueue(new Callback() { // from class: com.guochao.faceshow.aaspring.utils.GoogleLoginHelper.1
            @Override // okhttp3.Callback
            public void onFailure(Call call, IOException iOException) {
                LogUtils.e("onFailure", iOException.getMessage());
            }

            @Override // okhttp3.Callback
            public void onResponse(Call call, Response response) throws IOException {
                String string = response.body().string();
                LogUtils.e("onResponse", string);
                GoogleLoginHelper.this.accessTokenGetId(9, ((GoogleBean) new Gson().fromJson(string, (Class<Object>) GoogleBean.class)).getAccess_token(), str3, onGoogleResponse);
            }
        });
    }

    public static GoogleLoginHelper getInstance() {
        if (sHelper == null) {
            synchronized (GoogleLoginHelper.class) {
                if (sHelper == null) {
                    sHelper = new GoogleLoginHelper();
                }
            }
        }
        return sHelper;
    }

    public void accessTokenGetId(int i9, String str, String str2, final OnGoogleResponse onGoogleResponse) {
        if (!(this.activity instanceof CancelAccountActivity)) {
            new PostRequest("user/openid").y("type", Integer.valueOf(i9)).y("accessToken", str).y("uid", str2).M(new com.guochao.faceshow.aaspring.base.http.callback.c<CheckThirdPartyResult>() { // from class: com.guochao.faceshow.aaspring.utils.GoogleLoginHelper.2
                @Override // com.guochao.faceshow.aaspring.base.http.callback.c
                public void onFailure(@NonNull g7.a<CheckThirdPartyResult> aVar) {
                    if (GoogleLoginHelper.this.activity instanceof BaseActivity) {
                        ((BaseActivity) GoogleLoginHelper.this.activity).dismissProgressDialog();
                    }
                }

                @Override // com.guochao.faceshow.aaspring.base.http.callback.c
                public void onResponse(@Nullable CheckThirdPartyResult checkThirdPartyResult, @NonNull FaceCastBaseResponse<CheckThirdPartyResult> faceCastBaseResponse) {
                    if (checkThirdPartyResult == null) {
                        if (GoogleLoginHelper.this.activity instanceof BaseActivity) {
                            ((BaseActivity) GoogleLoginHelper.this.activity).dismissProgressDialog();
                            return;
                        }
                        return;
                    }
                    try {
                        String str3 = "";
                        if (checkThirdPartyResult.getReg() == 1) {
                            if (checkThirdPartyResult.getUser() != null) {
                                EventTrackingUtils.getInstance().track("g_authority_success");
                                onGoogleResponse.onResponse("", "", "", checkThirdPartyResult);
                            } else if (GoogleLoginHelper.this.activity instanceof BaseActivity) {
                                ((BaseActivity) GoogleLoginHelper.this.activity).dismissProgressDialog();
                            }
                        } else if (!TextUtils.isEmpty(checkThirdPartyResult.getJson())) {
                            JSONObject jSONObject = new JSONObject(checkThirdPartyResult.getJson());
                            String string = jSONObject.getString("sub");
                            String string2 = jSONObject.getString("picture");
                            String string3 = jSONObject.getString("name");
                            EventTrackingUtils.getInstance().track("g_authority_success");
                            OnGoogleResponse onGoogleResponse2 = onGoogleResponse;
                            if (onGoogleResponse2 != null) {
                                if (string2 != null) {
                                    str3 = string2;
                                }
                                onGoogleResponse2.onResponse(str3, string3, string, checkThirdPartyResult);
                            }
                        } else if (GoogleLoginHelper.this.activity instanceof BaseActivity) {
                            ((BaseActivity) GoogleLoginHelper.this.activity).dismissProgressDialog();
                        }
                    } catch (JSONException e10) {
                        if (GoogleLoginHelper.this.activity instanceof BaseActivity) {
                            ((BaseActivity) GoogleLoginHelper.this.activity).dismissProgressDialog();
                        }
                        e10.printStackTrace();
                    }
                }
            });
        } else if (onGoogleResponse != null) {
            onGoogleResponse.onAuthResponse(str2);
        }
    }

    public void login(BaseActivity baseActivity, boolean z10) {
        if (z10) {
            baseActivity.showProgressDialog("");
        }
        com.google.android.gms.auth.api.signin.b bVar = this.mGoogleSignInClient;
        if (bVar != null) {
            baseActivity.startActivityForResult(bVar.s(), 101);
            return;
        }
        Activity activity = this.activity;
        if (activity == null) {
            this.showLogin = true;
        } else if (activity instanceof BaseActivity) {
            ((BaseActivity) activity).dismissProgressDialog();
        }
    }

    public void onActivityResult(int i9, int i10, Intent intent, OnGoogleResponse onGoogleResponse) {
        if (this.activity != null && i9 == 101) {
            try {
                GoogleSignInAccount l10 = com.google.android.gms.auth.api.signin.a.c(intent).l(ApiException.class);
                if (l10 != null) {
                    l10.I();
                    l10.M();
                    l10.L();
                    l10.K();
                    String P = l10.P();
                    l10.c0();
                    getAccessToken(l10.R(), l10.p0(), P, onGoogleResponse);
                }
            } catch (ApiException e10) {
                ToastUtils.debug("谷歌登录失败," + e10.toString());
                LogUtils.i("zune", "signInResult:failed code=" + e10.getStatusCode());
                Activity activity = this.activity;
                if (activity instanceof BaseActivity) {
                    ((BaseActivity) activity).dismissProgressDialog();
                }
            }
        }
    }

    public void register(Activity activity) {
        this.activity = activity;
        com.google.android.gms.auth.api.signin.b a10 = com.google.android.gms.auth.api.signin.a.a(activity, this.mGso);
        this.mGoogleSignInClient = a10;
        if (this.showLogin) {
            activity.startActivityForResult(a10.s(), 101);
        } else if (activity instanceof BaseActivity) {
            ((BaseActivity) activity).dismissProgressDialog();
        }
    }

    public void unregister() {
        this.activity = null;
        this.mGoogleSignInClient = null;
    }
}
