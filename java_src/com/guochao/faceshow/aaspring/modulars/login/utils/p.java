package com.guochao.faceshow.aaspring.modulars.login.utils;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.guochao.faceshow.aaspring.utils.LogUtils;
import com.vk.api.sdk.VK;
import com.vk.api.sdk.auth.VKAccessToken;
import com.vk.api.sdk.auth.VKAuthCallback;
import com.vk.api.sdk.auth.VKScope;
import com.vk.api.sdk.exceptions.VKAuthException;
import java.util.Collections;
import okhttp3.OkHttpClient;
import org.jetbrains.annotations.NotNull;
/* loaded from: classes3.dex */
public class p extends l {

    /* renamed from: e  reason: collision with root package name */
    OkHttpClient f20585e;

    /* loaded from: classes3.dex */
    class a implements VKAuthCallback {
        a() {
        }

        @Override // com.vk.api.sdk.auth.VKAuthCallback
        public void onLogin(@NotNull VKAccessToken vKAccessToken) {
            String valueOf = String.valueOf(vKAccessToken.getUserId());
            p.this.a(12, vKAccessToken.getAccessToken(), valueOf, null);
        }

        @Override // com.vk.api.sdk.auth.VKAuthCallback
        public void onLoginFailed(@NonNull VKAuthException vKAuthException) {
            p.this.d();
            LogUtils.i("VKLoginManager", "onLoginFailed: " + vKAuthException.getMessage());
        }
    }

    public p(Context context) {
        super(context);
        VK.initialize(context);
        this.f20585e = new OkHttpClient();
    }

    @Override // com.guochao.faceshow.aaspring.modulars.login.utils.l
    public void i(int i9, int i10, @Nullable Intent intent) {
        super.i(i9, i10, intent);
        VK.onActivityResult(i9, i10, intent, new a());
    }

    @Override // com.guochao.faceshow.aaspring.modulars.login.utils.l
    public void m() {
        VK.login((Activity) this.f20570b, Collections.singleton(VKScope.OFFLINE));
    }
}
