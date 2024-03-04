package com.guochao.faceshow.aaspring.modulars.welcome;

import android.content.Intent;
import android.text.TextUtils;
import android.view.View;
import androidx.annotation.Nullable;
import com.guochao.faceshow.aaspring.beans.PowOffBean;
import com.guochao.faceshow.aaspring.modulars.poweroff.PowOffActivity;
import com.guochao.faceshow.aaspring.modulars.welcome.SplashFragment;
import com.guochao.faceshow.utils.GsonGetter;
import com.guochao.faceshow.utils.HandlerGetter;
import java.io.IOException;
import java.util.concurrent.TimeUnit;
import okhttp3.Call;
import okhttp3.Callback;
import okhttp3.OkHttpClient;
import okhttp3.Request;
import okhttp3.Response;
/* loaded from: classes3.dex */
public class SplashFragment extends BaseSplashFragment {

    /* renamed from: g  reason: collision with root package name */
    private boolean f23406g = false;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class a implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ Call f23407a;

        a(Call call) {
            this.f23407a = call;
        }

        @Override // java.lang.Runnable
        public void run() {
            if (SplashFragment.this.isDetached() || !SplashFragment.this.isAdded() || SplashFragment.this.getActivity() == null || SplashFragment.this.getActivity().isFinishing() || SplashFragment.this.getActivity().isDestroyed() || SplashFragment.this.f23406g) {
                return;
            }
            this.f23407a.cancel();
            SplashFragment.this.U1();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class b implements Callback {

        /* loaded from: classes3.dex */
        class a implements Runnable {

            /* renamed from: a  reason: collision with root package name */
            final /* synthetic */ PowOffBean f23410a;

            a(PowOffBean powOffBean) {
                this.f23410a = powOffBean;
            }

            @Override // java.lang.Runnable
            public void run() {
                if (SplashFragment.this.getActivity() == null || SplashFragment.this.getActivity().isDestroyed() || SplashFragment.this.getActivity().isFinishing()) {
                    return;
                }
                Intent intent = new Intent(SplashFragment.this.getActivity(), PowOffActivity.class);
                intent.putExtra("PowOffBean", this.f23410a);
                SplashFragment.this.startActivity(intent);
                if (SplashFragment.this.getActivity() != null) {
                    SplashFragment.this.getActivity().finish();
                }
            }
        }

        b() {
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void b() {
            SplashFragment.this.U1();
        }

        @Override // okhttp3.Callback
        public void onFailure(@Nullable Call call, @Nullable IOException iOException) {
            SplashFragment.this.f23406g = true;
            HandlerGetter.getMainHandler().post(new Runnable() { // from class: com.guochao.faceshow.aaspring.modulars.welcome.a
                @Override // java.lang.Runnable
                public final void run() {
                    SplashFragment.b.this.b();
                }
            });
        }

        @Override // okhttp3.Callback
        public void onResponse(@Nullable Call call, @Nullable Response response) throws IOException {
            if (response != null && response.body() != null && response.body().contentLength() > 0) {
                String string = response.body().string();
                response.close();
                try {
                    PowOffBean powOffBean = (PowOffBean) GsonGetter.getGson().fromJson(string, (Class<Object>) PowOffBean.class);
                    if (!TextUtils.isEmpty(string) && powOffBean != null && powOffBean.getData() != null && 1 == powOffBean.getData().getStatus()) {
                        HandlerGetter.getMainHandler().post(new a(powOffBean));
                        return;
                    }
                    onFailure(call, null);
                    return;
                } catch (Exception unused) {
                    onFailure(call, null);
                    return;
                }
            }
            if (response != null) {
                response.close();
            }
            onFailure(call, null);
        }
    }

    private void c2() {
        Call newCall = new OkHttpClient.Builder().connectTimeout(3L, TimeUnit.SECONDS).build().newCall(new Request.Builder().url(String.format("%s?%s=%s", "https://mt.buzzcast.info/app/fc/status.json", "timestamp", Long.valueOf(System.currentTimeMillis()))).get().build());
        HandlerGetter.getMainHandler().postDelayed(new a(newCall), 3000L);
        newCall.enqueue(new b());
    }

    @Override // com.guochao.faceshow.aaspring.modulars.welcome.BaseSplashFragment, com.guochao.faceshow.aaspring.base.fragment.BaseFragment
    public void initView(View view) {
        super.initView(view);
        c2();
    }
}
