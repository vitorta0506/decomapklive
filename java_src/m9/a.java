package m9;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.text.TextUtils;
import androidx.annotation.Nullable;
import com.facebook.AccessToken;
import com.guochao.faceshow.BaseApplication;
import com.guochao.faceshow.aaspring.base.activity.BaseActivity;
import com.guochao.faceshow.aaspring.modulars.login.utils.ins.InstagramLoginActivity;
import com.guochao.faceshow.aaspring.modulars.login.utils.l;
import com.guochao.faceshow.aaspring.utils.LogUtils;
import com.guochao.faceshow.utils.HandlerGetter;
import java.io.IOException;
import java.util.HashMap;
import java.util.Objects;
import okhttp3.Call;
import okhttp3.Callback;
import okhttp3.FormBody;
import okhttp3.OkHttpClient;
import okhttp3.Request;
import okhttp3.Response;
import org.jetbrains.annotations.NotNull;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes3.dex */
public class a extends l {

    /* renamed from: e  reason: collision with root package name */
    private String f54930e;

    /* renamed from: f  reason: collision with root package name */
    private Runnable f54931f;

    /* renamed from: m9.a$a  reason: collision with other inner class name */
    /* loaded from: classes3.dex */
    class RunnableC0568a implements Runnable {
        RunnableC0568a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            if (((l) a.this).f20570b instanceof BaseActivity) {
                ((BaseActivity) ((l) a.this).f20570b).dismissProgressDialog();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class b implements Callback {
        b() {
        }

        @Override // okhttp3.Callback
        public void onFailure(@NotNull Call call, @NotNull IOException iOException) {
            a.this.e(-1, iOException.getMessage());
            a.this.s();
        }

        @Override // okhttp3.Callback
        public void onResponse(@NotNull Call call, @NotNull Response response) throws IOException {
            String string = response.body().string();
            LogUtils.i("zune：", "getCode = " + string);
            try {
                try {
                    JSONObject jSONObject = new JSONObject(string);
                    a.this.a(10, (String) jSONObject.get("access_token"), String.valueOf((Long) jSONObject.get(AccessToken.USER_ID_KEY)), null);
                } catch (JSONException e10) {
                    e10.printStackTrace();
                }
            } finally {
                response.close();
            }
        }
    }

    public a(Activity activity) {
        super(activity);
        this.f54930e = "896255734201697";
        this.f54931f = new RunnableC0568a();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void s() {
        Context context = this.f20570b;
        if (context instanceof BaseActivity) {
            ((BaseActivity) context).dismissProgressDialog();
        }
    }

    private void t(String str) {
        Activity currTopActivity = BaseApplication.getInstance().getCurrTopActivity();
        if (currTopActivity instanceof BaseActivity) {
            ((BaseActivity) currTopActivity).showProgressDialog("");
        }
        HandlerGetter.getMainHandler().postDelayed(this.f54931f, 30000L);
        OkHttpClient okHttpClient = new OkHttpClient();
        HashMap hashMap = new HashMap();
        hashMap.put("client_id", this.f54930e);
        hashMap.put("client_secret", "7716268f129ecb1e6858358462cc09d7");
        LogUtils.i("zune：", "code = " + str);
        hashMap.put("code", str);
        hashMap.put("grant_type", "authorization_code");
        hashMap.put("redirect_uri", "https://socialsizzle.herokuapp.com/auth/");
        FormBody.Builder builder = new FormBody.Builder();
        for (String str2 : hashMap.keySet()) {
            String str3 = (String) hashMap.get(str2);
            Objects.requireNonNull(str3);
            builder.add(str2, str3);
        }
        okHttpClient.newCall(new Request.Builder().url("https://api.instagram.com/oauth/access_token").post(builder.build()).build()).enqueue(new b());
    }

    @Override // com.guochao.faceshow.aaspring.modulars.login.utils.l
    public void i(int i9, int i10, @Nullable Intent intent) {
        super.i(i9, i10, intent);
        if (i9 != 555 || i10 != -1 || intent == null) {
            if (i9 == 555 && i10 == -1) {
                e(-1, "cancel");
                return;
            }
            return;
        }
        String stringExtra = intent.getStringExtra("result");
        if (TextUtils.isEmpty(stringExtra)) {
            e(-2, "no code ");
        } else {
            t(stringExtra);
        }
    }

    @Override // com.guochao.faceshow.aaspring.modulars.login.utils.l
    public void m() {
        InstagramLoginActivity.b0((Activity) this.f20570b, String.format("https://api.instagram.com/oauth/authorize/?force_authentication=1&client_id=%s&redirect_uri=%s&scope=%s&state=1&response_type=code", this.f54930e, "https://socialsizzle.herokuapp.com/auth/", "user_profile,user_media"));
    }
}
