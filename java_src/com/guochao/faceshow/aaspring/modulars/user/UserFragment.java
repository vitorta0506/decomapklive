package com.guochao.faceshow.aaspring.modulars.user;

import android.os.Bundle;
import android.util.Log;
import androidx.annotation.NonNull;
import b8.e;
import com.facebook.internal.NativeProtocol;
import com.guochao.faceshow.aaspring.base.http.callback.c;
import com.guochao.faceshow.aaspring.base.http.response.FaceCastBaseResponse;
import com.guochao.faceshow.aaspring.beans.GooglePlayPurchaseResult;
import com.guochao.faceshow.aaspring.modulars.googlepay.GooglePayOrderViewModel;
import com.guochao.faceshow.aaspring.modulars.googlepay.d;
import com.guochao.faceshow.aaspring.modulars.googlepay.i;
import com.guochao.faceshow.aaspring.utils.EventTrackingUtils;
import com.guochao.faceshow.aaspring.utils.EventTrackingV2Utils;
import com.guochao.faceshow.aaspring.utils.SpUtils;
import com.guochao.faceshow.aaspring.utils.VideoPlayPauseUtils;
import com.guochao.faceshow.utils.Contants;
import com.guochao.faceshow.utils.GsonGetter;
import java.util.HashMap;
import java.util.List;
/* loaded from: classes3.dex */
public class UserFragment extends BaseUserFragment {

    /* renamed from: d  reason: collision with root package name */
    private GooglePayOrderViewModel f23163d;

    /* renamed from: e  reason: collision with root package name */
    private boolean f23164e = false;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class a extends c<String> {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ GooglePlayPurchaseResult f23165a;

        a(GooglePlayPurchaseResult googlePlayPurchaseResult) {
            this.f23165a = googlePlayPurchaseResult;
        }

        @Override // com.guochao.faceshow.aaspring.base.http.callback.c, com.guochao.faceshow.aaspring.base.http.callback.b
        public void onCompleted() {
            super.onCompleted();
            UserFragment.this.f23164e = false;
        }

        @Override // com.guochao.faceshow.aaspring.base.http.callback.c
        public void onFailure(g7.a<String> aVar) {
            Bundle bundle = new Bundle();
            bundle.putString(NativeProtocol.WEB_DIALOG_PARAMS, "进入个人中心重试完成订单失败");
            String str = EventTrackingV2Utils.g_pay_after_server_fail;
            bundle.putInt(str, aVar.a());
            EventTrackingV2Utils.INSTANCE.track(str, bundle);
        }

        @Override // com.guochao.faceshow.aaspring.base.http.callback.c
        public void onResponse(String str, @NonNull FaceCastBaseResponse<String> faceCastBaseResponse) {
            u7.c.c().a(this.f23165a.getUserId(), this.f23165a.getSignture(), this.f23165a.getSigntureData());
            i.e().k(this.f23165a.getSignture());
            Bundle bundle = new Bundle();
            bundle.putString(EventTrackingUtils.ITEM_ID, UserFragment.this.getCurrentUser().getUserId());
            bundle.putString(EventTrackingUtils.ITEM_NAME, SpUtils.getStr(UserFragment.this.getActivity(), Contants.USER_NICKNAME));
            bundle.putString(EventTrackingUtils.CONTENT_TYPE, "googlepay");
            EventTrackingUtils.getInstance().track(EventTrackingUtils.GOOGLE_COMPLETE_PURCHASE, bundle);
            Bundle bundle2 = new Bundle();
            String str2 = EventTrackingV2Utils.g_pay_after_server_success;
            bundle2.putString(str2, "进入个人中心重试完成订单成功");
            EventTrackingV2Utils.INSTANCE.track(str2, bundle2);
            e.h();
            p9.a.g().o();
        }
    }

    private void e2() {
        List<GooglePlayPurchaseResult> e10 = u7.c.c().e(getCurrentUser().getUserId());
        Log.i("zune user: ", GsonGetter.getGson().toJson(e10));
        for (int i9 = 0; i9 < e10.size(); i9++) {
            GooglePlayPurchaseResult googlePlayPurchaseResult = e10.get(i9);
            if (googlePlayPurchaseResult.isTimeout()) {
                return;
            }
            f2(googlePlayPurchaseResult);
        }
    }

    @Deprecated
    public void f2(GooglePlayPurchaseResult googlePlayPurchaseResult) {
        if (!this.f23164e && i.e().c(googlePlayPurchaseResult.getSignture())) {
            i.e().i(googlePlayPurchaseResult.getSignture());
            Bundle bundle = new Bundle();
            String str = EventTrackingV2Utils.g_pay_before_server;
            bundle.putString(str, "进入个人中心重试未完成的订单");
            EventTrackingV2Utils.INSTANCE.track(str, bundle);
            HashMap hashMap = new HashMap();
            hashMap.put(Contants.USER_ID, getCurrentUser().getUserId());
            hashMap.put("signture", googlePlayPurchaseResult.getSignture());
            hashMap.put("signtureData", googlePlayPurchaseResult.getSigntureData());
            hashMap.put("sceneType", String.valueOf(googlePlayPurchaseResult.getScene()));
            this.f23164e = true;
            getHttpClient().b(this, Contants.GOOGLE_PAY_WAY, hashMap, new a(googlePlayPurchaseResult));
        }
    }

    @Override // com.guochao.faceshow.aaspring.modulars.user.BaseUserFragment, androidx.fragment.app.Fragment
    public void onResume() {
        super.onResume();
        VideoPlayPauseUtils.startVideoPlayPause();
        e2();
        d.Z().O();
        if (this.f23163d == null) {
            this.f23163d = (GooglePayOrderViewModel) d7.e.a().get(GooglePayOrderViewModel.class);
        }
        this.f23163d.checkSavedPayOrder();
    }
}
