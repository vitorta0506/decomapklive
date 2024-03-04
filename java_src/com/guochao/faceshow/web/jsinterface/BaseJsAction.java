package com.guochao.faceshow.web.jsinterface;

import android.app.Activity;
import android.app.Dialog;
import android.content.Context;
import android.content.Intent;
import android.os.Handler;
import android.os.Looper;
import android.text.TextUtils;
import android.webkit.JavascriptInterface;
import androidx.annotation.Keep;
import androidx.annotation.NonNull;
import androidx.fragment.app.FragmentActivity;
import b8.e;
import c8.b;
import cn.jpush.android.api.JThirdPlatFormInterface;
import com.google.gson.JsonElement;
import com.google.gson.JsonObject;
import com.guochao.faceshow.BaseApplication;
import com.guochao.faceshow.R;
import com.guochao.faceshow.aaspring.base.activity.BaseActivity;
import com.guochao.faceshow.aaspring.base.httpclient.GCCommonRequestHandler;
import com.guochao.faceshow.aaspring.beans.UgcTopicBean;
import com.guochao.faceshow.aaspring.modulars.chat.activity.ChatActivity;
import com.guochao.faceshow.aaspring.modulars.customerservice.activity.FeedbackHistoryActivity;
import com.guochao.faceshow.aaspring.modulars.customerservice.activity.FeedbackQuestionTypeListActivity;
import com.guochao.faceshow.aaspring.modulars.dressmarket.DressUpMarketActivity;
import com.guochao.faceshow.aaspring.modulars.googlepay.d;
import com.guochao.faceshow.aaspring.modulars.googlepay.firstrecharge.RechargeDialog;
import com.guochao.faceshow.aaspring.modulars.live.activity.WatchLiveRoomActivity;
import com.guochao.faceshow.aaspring.modulars.personal.invite.H5WithdrawalMoneyWebActivity;
import com.guochao.faceshow.aaspring.modulars.rank.activity.RankListActivity;
import com.guochao.faceshow.aaspring.modulars.ugc.activity.TopicHomePageActivity;
import com.guochao.faceshow.aaspring.modulars.ugc.publish.activity.PublishUgcActivity;
import com.guochao.faceshow.aaspring.utils.AppManager;
import com.guochao.faceshow.aaspring.utils.Constants;
import com.guochao.faceshow.aaspring.utils.EmptyUtils;
import com.guochao.faceshow.aaspring.utils.EventTrackingV2Utils;
import com.guochao.faceshow.aaspring.utils.Language;
import com.guochao.faceshow.aaspring.utils.PackageUtils;
import com.guochao.faceshow.aaspring.utils.SpUtils;
import com.guochao.faceshow.aaspring.utils.StatusBarHelper;
import com.guochao.faceshow.aaspring.utils.StringUtils;
import com.guochao.faceshow.aaspring.utils.ToastUtils;
import com.guochao.faceshow.bean.UserBean;
import com.guochao.faceshow.mine.view.MyWalletActivity;
import com.guochao.faceshow.promotion.data.PromotionData;
import com.guochao.faceshow.promotion.data.ShortVideoActivityScheme;
import com.guochao.faceshow.promotion.view.WebViewDialog;
import com.guochao.faceshow.signin.activity.UserSigninCenterActivity;
import com.guochao.faceshow.utils.Contants;
import com.guochao.faceshow.utils.GsonGetter;
import com.guochao.faceshow.utils.LanguageGetUtils;
import com.guochao.faceshow.utils.LiveInfoUtils;
import com.guochao.faceshow.views.e;
import com.guochao.faceshow.web.WebViewActivity;
import com.unity3d.services.ads.adunit.AdUnitActivity;
import java.lang.ref.WeakReference;
import java.util.Objects;
import org.json.JSONException;
import org.json.JSONObject;
@Keep
/* loaded from: classes4.dex */
public class BaseJsAction implements IJSInterface {
    private static final String TAG = "BaseJsAction";
    protected Handler handler = new Handler(Looper.getMainLooper());
    protected WeakReference<Context> mContext;

    public BaseJsAction(Context context) {
        this.mContext = new WeakReference<>(context);
    }

    @Override // com.guochao.faceshow.web.jsinterface.IJSInterface
    @JavascriptInterface
    public String closeCurrentPage(Object obj) {
        Context context = getContext();
        if (context instanceof Activity) {
            ((Activity) context).finish();
            return "1";
        }
        return "1";
    }

    protected JSONObject covertArgsToJson(Object obj) {
        if (EmptyUtils.isEmpty(obj)) {
            return null;
        }
        try {
            return new JSONObject(String.valueOf(obj));
        } catch (JSONException e10) {
            e10.printStackTrace();
            return null;
        }
    }

    @Override // com.guochao.faceshow.web.jsinterface.IJSInterface
    @JavascriptInterface
    public String getApiCommon(Object obj) {
        return GCCommonRequestHandler.makeBase64Common(GCCommonRequestHandler.makeCommon());
    }

    @Override // com.guochao.faceshow.web.jsinterface.IJSInterface
    @JavascriptInterface
    public String getAppVersionCode(Object obj) {
        return String.valueOf((int) Constants.VERSION_CODE);
    }

    @NonNull
    protected Context getContext() {
        WeakReference<Context> weakReference = this.mContext;
        if (weakReference != null && weakReference.get() != null) {
            return this.mContext.get();
        }
        Activity currTopActivity = BaseApplication.getInstance().getCurrTopActivity();
        return currTopActivity != null ? currTopActivity : BaseApplication.getInstance();
    }

    @Override // com.guochao.faceshow.web.jsinterface.IJSInterface
    @JavascriptInterface
    public String getCurrentDiamonds(Object obj) {
        return String.valueOf(p9.a.g().e().getDiamond());
    }

    @Override // com.guochao.faceshow.web.jsinterface.IJSInterface
    @JavascriptInterface
    public String getCurrentGameCoin(Object obj) {
        return String.valueOf(p9.a.g().e().getTokenNum());
    }

    @Override // com.guochao.faceshow.web.jsinterface.IJSInterface
    @JavascriptInterface
    public String getCurrentLanguage(Object obj) {
        String c10 = q7.a.e().c();
        return TextUtils.isEmpty(c10) ? "en" : Language.INDONESIA.equalsIgnoreCase(c10) ? "id" : c10;
    }

    @Override // com.guochao.faceshow.web.jsinterface.IJSInterface
    @JavascriptInterface
    public String getCurrentUserId(Object obj) {
        return e.g().c().getUserId();
    }

    @Override // com.guochao.faceshow.web.jsinterface.IJSInterface
    @JavascriptInterface
    public String getCurrentUserInfo(Object obj) {
        JsonObject jsonObject = new JsonObject();
        UserBean c10 = e.g().c();
        jsonObject.addProperty(Contants.USER_ID, c10.getUserId());
        jsonObject.addProperty("nickName", c10.getUserName());
        jsonObject.addProperty("headImgUrl", c10.getAvatarUrl());
        jsonObject.addProperty(JThirdPlatFormInterface.KEY_TOKEN, c10.getToken());
        jsonObject.addProperty("level", Integer.valueOf(c10.getLevel()));
        jsonObject.addProperty("gender", Integer.valueOf(c10.getGender()));
        jsonObject.addProperty("vipLevel", Integer.valueOf(c10.getVipLevel()));
        return GsonGetter.getGson().toJson((JsonElement) jsonObject);
    }

    @Override // com.guochao.faceshow.web.jsinterface.IJSInterface
    @JavascriptInterface
    public String getCurrentUserToken(Object obj) {
        return e.g().c().getToken();
    }

    @JavascriptInterface
    public String getStatusBarHeight(Object obj) {
        return String.valueOf((int) (StatusBarHelper.getStatusbarHeight(BaseApplication.getInstance()) / BaseApplication.getInstance().getResources().getDisplayMetrics().density));
    }

    @JavascriptInterface
    public String goBack(Object obj) {
        WeakReference<Context> weakReference = this.mContext;
        if (weakReference == null || !(weakReference.get() instanceof Activity)) {
            return "1";
        }
        ((Activity) this.mContext.get()).finish();
        return "1";
    }

    @Override // com.guochao.faceshow.web.jsinterface.IJSInterface
    @JavascriptInterface
    public String goCharge(Object obj) {
        String str;
        FragmentActivity fragmentActivity;
        Context context = getContext();
        if (context == null) {
            return "1";
        }
        int i9 = 1;
        if ((context instanceof WebViewActivity) && ((WebViewActivity) context).getIntent().getIntExtra("from", -1) == 13) {
            i9 = 0;
        }
        try {
            str = new JSONObject(String.valueOf(obj)).optString("type");
        } catch (Exception e10) {
            e10.printStackTrace();
            str = "1";
        }
        if (TextUtils.isEmpty(str) || "1".equals(str)) {
            if (context instanceof FragmentActivity) {
                fragmentActivity = (FragmentActivity) context;
            } else {
                Activity currTopActivity = BaseApplication.getInstance().getCurrTopActivity();
                fragmentActivity = currTopActivity instanceof FragmentActivity ? (FragmentActivity) currTopActivity : null;
            }
            if (fragmentActivity != null) {
                RechargeDialog.showDialog(fragmentActivity.getSupportFragmentManager(), Integer.valueOf(i9), 3);
                return "1";
            }
        }
        WatchLiveRoomActivity watchLiveRoomActivity = (WatchLiveRoomActivity) AppManager.getInstance().getActivity(WatchLiveRoomActivity.class);
        Intent e02 = MyWalletActivity.e0(context, i9, watchLiveRoomActivity != null ? d.X(watchLiveRoomActivity.e0().getCurrentLiveRoom().getBroadCasterUserId()) : null);
        e02.putExtra("isToken", "2".equals(str) ? "1" : "0");
        e02.addFlags(131072);
        if (!(context instanceof Activity)) {
            e02.addFlags(268435456);
        }
        context.startActivity(e02);
        return "1";
    }

    @Override // com.guochao.faceshow.web.jsinterface.IJSInterface
    @JavascriptInterface
    public String goFeedbackHistory(Object obj) {
        Context context = getContext();
        Intent intent = new Intent(context, FeedbackHistoryActivity.class);
        PackageUtils.checkIntent(context, intent);
        context.startActivity(intent);
        return "1";
    }

    @Override // com.guochao.faceshow.web.jsinterface.IJSInterface
    @JavascriptInterface
    public String goLive(final Object obj) {
        this.handler.post(new Runnable() { // from class: com.guochao.faceshow.web.jsinterface.BaseJsAction.1
            @Override // java.lang.Runnable
            public void run() {
                try {
                    LiveInfoUtils.getLiveInfoAndJumpIfNeed(new JSONObject(String.valueOf(obj)).optString("liveId"), BaseApplication.getInstance());
                } catch (JSONException e10) {
                    e10.printStackTrace();
                }
            }
        });
        return "1";
    }

    @Override // com.guochao.faceshow.web.jsinterface.IJSInterface
    @JavascriptInterface
    public String goLiveRanking(Object obj) {
        Context context = getContext();
        Intent intent = new Intent(context, RankListActivity.class);
        PackageUtils.checkIntent(context, intent);
        context.startActivity(intent);
        return "1";
    }

    @Override // com.guochao.faceshow.web.jsinterface.IJSInterface
    @JavascriptInterface
    public String goToAppMall(Object obj) {
        Context context = getContext();
        Intent intent = new Intent(context, DressUpMarketActivity.class);
        PackageUtils.checkIntent(context, intent);
        context.startActivity(intent);
        return "1";
    }

    @Override // com.guochao.faceshow.web.jsinterface.IJSInterface
    @JavascriptInterface
    public String goToFeedback(Object obj) {
        WeakReference<Context> weakReference = this.mContext;
        Context context = weakReference != null ? weakReference.get() : null;
        if (context != null) {
            try {
                new FeedbackQuestionTypeListActivity().show(((FragmentActivity) context).getSupportFragmentManager(), "feedback");
                return "1";
            } catch (Exception e10) {
                e10.printStackTrace();
                return "1";
            }
        }
        return "1";
    }

    @Override // com.guochao.faceshow.web.jsinterface.IJSInterface
    @JavascriptInterface
    public String goToIMChat(Object obj) {
        try {
            JSONObject jSONObject = new JSONObject(String.valueOf(obj));
            String optString = jSONObject.optString(Contants.USER_ID);
            if (Objects.equals(optString, e.g().getUserId())) {
                return "0";
            }
            String optString2 = jSONObject.optString("userName");
            Context context = getContext();
            Intent intent = new Intent(context, ChatActivity.class);
            intent.putExtra(Contants.USER_ID, optString);
            intent.putExtra("name", optString2);
            PackageUtils.checkIntent(context, intent);
            context.startActivity(intent);
            return "1";
        } catch (Exception e10) {
            e10.printStackTrace();
            return "1";
        }
    }

    @Override // com.guochao.faceshow.web.jsinterface.IJSInterface
    @JavascriptInterface
    public String goToTaskCenterPage(Object obj) {
        try {
            if (new JSONObject(String.valueOf(obj)).optInt("type") == 2) {
                UserSigninCenterActivity.start(getContext(), "activity_task");
            } else {
                UserSigninCenterActivity.start(getContext());
            }
            return "1";
        } catch (JSONException e10) {
            e10.printStackTrace();
            return "1";
        }
    }

    @Override // com.guochao.faceshow.web.jsinterface.IJSInterface
    @JavascriptInterface
    public String goUgcTopicHomePage(Object obj) {
        String valueOf = String.valueOf(obj);
        try {
            TopicHomePageActivity.r0(getContext(), (UgcTopicBean) GsonGetter.getGson().fromJson(valueOf, (Class<Object>) UgcTopicBean.class));
            return "1";
        } catch (Exception e10) {
            Context context = getContext();
            ToastUtils.debugToast(context, "跳转话题出现错误：" + e10.toString());
            return "1";
        }
    }

    @Override // com.guochao.faceshow.web.jsinterface.IJSInterface
    @JavascriptInterface
    public String goWithdrawalSpecificationActivity(Object obj) {
        Context context = getContext();
        if (context == null) {
            return "1";
        }
        Intent intent = new Intent(context, H5WithdrawalMoneyWebActivity.class);
        intent.addFlags(131072);
        if (!(context instanceof Activity)) {
            intent.addFlags(268435456);
        }
        context.startActivity(intent);
        return "1";
    }

    @Override // com.guochao.faceshow.web.jsinterface.IJSInterface
    @JavascriptInterface
    public String openLiveInfoDialog(Object obj) {
        return "1";
    }

    @Override // com.guochao.faceshow.web.jsinterface.IJSInterface
    @JavascriptInterface
    public String pageLoadSuccess(Object obj) {
        try {
            new JSONObject(String.valueOf(obj)).optInt(AdUnitActivity.EXTRA_ACTIVITY_ID);
            EventTrackingV2Utils.INSTANCE.track(EventTrackingV2Utils.activity_load_success, "1");
        } catch (JSONException e10) {
            e10.printStackTrace();
        }
        return "1";
    }

    @Override // com.guochao.faceshow.web.jsinterface.IJSInterface
    @JavascriptInterface
    public String publishUgc(Object obj) {
        if (EmptyUtils.isEmpty(obj)) {
            PublishUgcActivity.start(getContext());
            return "1";
        }
        String valueOf = String.valueOf(obj);
        try {
            PublishUgcActivity.q0(getContext(), (UgcTopicBean) GsonGetter.getGson().fromJson(valueOf, (Class<Object>) UgcTopicBean.class));
        } catch (Exception unused) {
            PublishUgcActivity.start(getContext());
        }
        return "1";
    }

    @Override // com.guochao.faceshow.web.jsinterface.IJSInterface
    @JavascriptInterface
    public String setCurrentDiamonds(Object obj) {
        try {
            int optInt = new JSONObject(String.valueOf(obj)).optInt("currentDiamonds");
            if (optInt >= 0) {
                p9.a.g().C(optInt, false);
                return "1";
            }
            return "1";
        } catch (JSONException e10) {
            e10.printStackTrace();
            return "1";
        }
    }

    @JavascriptInterface
    public String setCurrentGameCoin(Object obj) {
        try {
            int optInt = new JSONObject(String.valueOf(obj)).optInt("currentGameCoin");
            if (optInt >= 0) {
                p9.a.g().e().setTokenNum(optInt);
                return "1";
            }
            return "1";
        } catch (JSONException e10) {
            e10.printStackTrace();
            return "1";
        }
    }

    @JavascriptInterface
    public void shareUrl(Object obj) {
        covertArgsToJson(obj);
    }

    @Override // com.guochao.faceshow.web.jsinterface.IJSInterface
    @JavascriptInterface
    public String showDiamondsNotEnoughDialog(Object obj) {
        String str;
        Activity currTopActivity;
        try {
            str = new JSONObject(String.valueOf(obj)).optString("type");
        } catch (Exception e10) {
            e10.printStackTrace();
            str = "1";
        }
        Context context = this.mContext.get();
        boolean z10 = context instanceof Activity;
        if (z10) {
            currTopActivity = (Activity) context;
        } else {
            currTopActivity = BaseApplication.getInstance().getCurrTopActivity();
        }
        if (currTopActivity == null) {
            return "1";
        }
        WatchLiveRoomActivity watchLiveRoomActivity = (WatchLiveRoomActivity) AppManager.getInstance().getActivity(WatchLiveRoomActivity.class);
        final String X = watchLiveRoomActivity != null ? d.X(watchLiveRoomActivity.e0().getCurrentLiveRoom().getBroadCasterUserId()) : null;
        if ("2".equals(str)) {
            new com.guochao.faceshow.views.e(currTopActivity, new e.a() { // from class: com.guochao.faceshow.web.jsinterface.BaseJsAction.2
                @Override // com.guochao.faceshow.views.e.a
                public void onClick(Dialog dialog, boolean z11) {
                    dialog.dismiss();
                    if (z11) {
                        Activity ownerActivity = dialog.getOwnerActivity();
                        if (ownerActivity == null) {
                            ownerActivity = BaseApplication.getInstance().getCurrTopActivity();
                        }
                        if (ownerActivity == null) {
                            return;
                        }
                        Intent e02 = MyWalletActivity.e0(ownerActivity, 1, X);
                        e02.putExtra("isToken", "1");
                        ownerActivity.startActivity(e02);
                    }
                }

                @Override // com.guochao.faceshow.views.e.a
                public /* bridge */ /* synthetic */ void onCreate(com.guochao.faceshow.views.e eVar) {
                    com.guochao.faceshow.views.d.a(this, eVar);
                }
            }).b(currTopActivity.getString(R.string.shuijing_not_enough)).show();
            p9.a.g().o();
            return "1";
        }
        Activity currTopActivity2 = BaseApplication.getInstance().getCurrTopActivity();
        if (currTopActivity2 instanceof FragmentActivity) {
            RechargeDialog.showDialog(((FragmentActivity) currTopActivity2).getSupportFragmentManager(), 0, 0);
            return "1";
        }
        if (z10) {
            p9.a.g().z((Activity) context, X);
        } else {
            p9.a.g().z(BaseApplication.getInstance().getCurrTopActivity(), X);
        }
        p9.a.g().o();
        return "1";
    }

    @Override // com.guochao.faceshow.web.jsinterface.IJSInterface
    @JavascriptInterface
    public String showHellStarDialog(Object obj) {
        String str;
        String str2;
        String str3;
        String str4;
        String str5;
        ShortVideoActivityScheme shortVideoActivityScheme;
        try {
            Context context = getContext();
            int optInt = new JSONObject(String.valueOf(obj)).optInt(AdUnitActivity.EXTRA_ACTIVITY_ID);
            for (PromotionData.ResultItem resultItem : b.k().j().result.getNormalLive()) {
                if (optInt == resultItem.f26120id) {
                    String str6 = resultItem.shareImgUrl;
                    if (LanguageGetUtils.isLanguageChinese()) {
                        str = resultItem.shareTextCn;
                    } else {
                        str = resultItem.shareTextEn;
                    }
                    String str7 = resultItem.webPageUrl + StringUtils.getUrlFromType() + SpUtils.getStr(BaseApplication.getInstance(), Contants.USER_TOKEN);
                    String str8 = resultItem.webPageUrl + StringUtils.getUrlFromType() + SpUtils.getStr(BaseApplication.getInstance(), Contants.USER_TOKEN) + "&name=" + resultItem.name;
                    String y10 = eb.b.y();
                    int i9 = resultItem.f26120id;
                    String str9 = null;
                    if (!TextUtils.isEmpty(str) || (shortVideoActivityScheme = resultItem.appScheme) == null || TextUtils.isEmpty(shortVideoActivityScheme.getSchemeData())) {
                        str2 = str6;
                        str3 = str;
                        str4 = str8;
                        str5 = str7;
                    } else {
                        JSONObject jSONObject = new JSONObject(resultItem.appScheme.getSchemeData());
                        String optString = jSONObject.optString("h5Url");
                        jSONObject.optInt("isNeedToken");
                        String optString2 = jSONObject.optString("shareTitle");
                        String optString3 = jSONObject.optString("shareText");
                        String optString4 = jSONObject.optString("shareImg");
                        jSONObject.optString("h5Type");
                        str9 = jSONObject.optString("isShare");
                        str4 = (optString + StringUtils.getUrlFromType() + SpUtils.getStr(BaseApplication.getInstance(), Contants.USER_TOKEN)) + "&name=" + resultItem.name;
                        str2 = optString4;
                        y10 = optString2;
                        str3 = optString3;
                        str5 = str4;
                    }
                    WebViewDialog webViewDialog = new WebViewDialog();
                    if (context instanceof BaseActivity) {
                        boolean z10 = true;
                        if (!TextUtils.isEmpty(str9) && !"1".equals(str9)) {
                            z10 = false;
                        }
                        webViewDialog.R1(((BaseActivity) context).getSupportFragmentManager(), str5, y10, str3, str2, str4, i9 + "", resultItem, z10);
                    }
                }
            }
        } catch (JSONException e10) {
            e10.printStackTrace();
        }
        return "1";
    }
}
