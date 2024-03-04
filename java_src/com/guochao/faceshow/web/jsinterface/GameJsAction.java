package com.guochao.faceshow.web.jsinterface;

import android.webkit.JavascriptInterface;
import android.webkit.WebView;
import androidx.annotation.Keep;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.fragment.app.Fragment;
import com.guochao.faceshow.aaspring.base.http.callback.c;
import com.guochao.faceshow.aaspring.base.http.response.FaceCastBaseResponse;
import com.guochao.faceshow.aaspring.beans.LiveGameBean;
import com.guochao.faceshow.aaspring.modulars.game.WebGameFragment;
import com.guochao.faceshow.aaspring.modulars.gift.GiftSender;
import com.guochao.faceshow.aaspring.modulars.gift.SendGiftRequestModel;
import com.guochao.faceshow.aaspring.modulars.gift.SendGiftResponseModel;
import com.guochao.faceshow.aaspring.modulars.live.activity.BaseLiveActivity;
import com.guochao.faceshow.aaspring.modulars.live.common.LivePeopleInfoCardFragment;
import com.guochao.faceshow.aaspring.utils.ToastUtils;
import com.guochao.faceshow.utils.Contants;
import com.guochao.faceshow.utils.GsonGetter;
import com.guochao.faceshow.web.jsinterface.HalloweenJSAction;
import java.io.Closeable;
import java.io.IOException;
import java.lang.ref.WeakReference;
import java.util.Collections;
import org.greenrobot.eventbus.EventBus;
import org.json.JSONException;
import org.json.JSONObject;
import y7.e;
@Keep
/* loaded from: classes4.dex */
public class GameJsAction extends HalloweenJSAction {
    @Nullable
    private LiveGameBean mLiveGameBean;
    private WebGameFragment.LiveInfo mLiveInfo;
    WeakReference<Fragment> mWeakReference;
    WebView webView;

    public GameJsAction(Fragment fragment, WebGameFragment.LiveInfo liveInfo, @Nullable LiveGameBean liveGameBean) {
        super(fragment.getContext());
        this.mWeakReference = new WeakReference<>(fragment);
        this.mLiveInfo = liveInfo;
        this.mLiveGameBean = liveGameBean;
    }

    @JavascriptInterface
    public void exitGame(Object obj) {
        Fragment fragment = this.mWeakReference.get();
        if (fragment != null && fragment.isAdded() && (fragment instanceof Closeable)) {
            try {
                ((Closeable) fragment).close();
            } catch (IOException e10) {
                e10.printStackTrace();
            }
        }
    }

    @JavascriptInterface
    public String getCurrentGameInfo(Object obj) {
        return GsonGetter.getGson().toJson(this.mLiveGameBean);
    }

    @JavascriptInterface
    public String getCurrentLiveRoomInfo(Object obj) {
        return GsonGetter.getGson().toJson(this.mLiveInfo);
    }

    @Override // com.guochao.faceshow.web.jsinterface.BaseJsAction, com.guochao.faceshow.web.jsinterface.IJSInterface
    @JavascriptInterface
    public String openLiveInfoDialog(Object obj) {
        try {
            JSONObject jSONObject = new JSONObject(String.valueOf(obj));
            Fragment fragment = this.mWeakReference.get();
            if (fragment == null || !fragment.isAdded()) {
                return "1";
            }
            LivePeopleInfoCardFragment.showPeopleInfo(fragment.getParentFragmentManager(), jSONObject.optString(Contants.USER_ID), jSONObject.optString("userName"));
            return "1";
        } catch (JSONException e10) {
            e10.printStackTrace();
            return "1";
        }
    }

    @JavascriptInterface
    public String playWinAnimation(Object obj) {
        HalloweenJSAction.OnCallBack onCallBack = this.onCallBack;
        if (onCallBack != null) {
            onCallBack.playWinAnimation();
            return "1";
        }
        return "1";
    }

    @JavascriptInterface
    public String sendGiftToLiveRoom(Object obj) {
        try {
            ToastUtils.debug("js 调用 送礼接口");
            JSONObject jSONObject = new JSONObject(String.valueOf(obj));
            SendGiftRequestModel sendGiftRequestModel = new SendGiftRequestModel(jSONObject.optString("giftId"), false);
            sendGiftRequestModel.setBusinessId(jSONObject.optString("liveId"));
            sendGiftRequestModel.setSinglePrice(jSONObject.optString("giftUnitPrice"));
            sendGiftRequestModel.setSendNumber(Integer.parseInt(jSONObject.optString("giftNum", "1")));
            sendGiftRequestModel.setUseDiamonds("0");
            if (((BaseLiveActivity) this.mWeakReference.get().getActivity()).e0().getCurrentLiveRoom().isMultiLiveRoom()) {
                sendGiftRequestModel.setSendType(15);
            } else {
                sendGiftRequestModel.setSendType(2);
            }
            sendGiftRequestModel.setToUserIds(Collections.singletonList(jSONObject.optString("anchorId")));
            sendGiftRequestModel.setSendNumber(Integer.parseInt(jSONObject.optString("giftNum")));
            GiftSender.sendGift(sendGiftRequestModel, new c<SendGiftResponseModel>() { // from class: com.guochao.faceshow.web.jsinterface.GameJsAction.1
                @Override // com.guochao.faceshow.aaspring.base.http.callback.c
                public void onFailure(@NonNull g7.a<SendGiftResponseModel> aVar) {
                    ToastUtils.debug("js 调用 送礼接口  失败 " + aVar.a());
                    WebView webView = GameJsAction.this.webView;
                    if (webView != null) {
                        webView.evaluateJavascript(String.format("sendGiftFail(%s)", aVar.a() + ""), null);
                    }
                }

                @Override // com.guochao.faceshow.aaspring.base.http.callback.c
                public void onResponse(@Nullable SendGiftResponseModel sendGiftResponseModel, @NonNull FaceCastBaseResponse<SendGiftResponseModel> faceCastBaseResponse) {
                    WebView webView = GameJsAction.this.webView;
                    if (webView != null) {
                        webView.evaluateJavascript(String.format("sendGiftSuccess()", new Object[0]), null);
                    }
                    ToastUtils.debug("js 调用 送礼接口  成功");
                }
            });
        } catch (Exception e10) {
            e10.printStackTrace();
        }
        return "1";
    }

    @JavascriptInterface
    public void setFoucesd(Object obj) {
        try {
            JSONObject jSONObject = new JSONObject(String.valueOf(obj));
            String optString = jSONObject.optString(Contants.USER_ID);
            boolean equals = "1".equals(jSONObject.optString("focused"));
            e eVar = new e(optString);
            eVar.h(true);
            eVar.g(equals);
            EventBus.getDefault().post(eVar);
        } catch (Exception unused) {
        }
    }

    public GameJsAction(Fragment fragment, WebGameFragment.LiveInfo liveInfo, @Nullable LiveGameBean liveGameBean, WebView webView) {
        this(fragment, liveInfo, liveGameBean);
        this.webView = webView;
    }
}
