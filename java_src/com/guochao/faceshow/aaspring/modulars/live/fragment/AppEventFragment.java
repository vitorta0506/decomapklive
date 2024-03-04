package com.guochao.faceshow.aaspring.modulars.live.fragment;

import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import android.text.TextUtils;
import android.view.View;
import android.widget.ImageView;
import androidx.annotation.Nullable;
import butterknife.BindView;
import butterknife.OnClick;
import com.facebook.AccessToken;
import com.guochao.component.mvp.activity.MVPActivity;
import com.guochao.faceshow.BaseApplication;
import com.guochao.faceshow.R;
import com.guochao.faceshow.aaspring.base.fragment.BaseFragment;
import com.guochao.faceshow.aaspring.beans.BannerBeanData;
import com.guochao.faceshow.aaspring.modulars.ugc.activity.MusicVideoActivity;
import com.guochao.faceshow.aaspring.modulars.ugc.activity.VideoTopicsActivity;
import com.guochao.faceshow.aaspring.utils.PackageUtils;
import com.guochao.faceshow.aaspring.utils.SpUtils;
import com.guochao.faceshow.aaspring.utils.StringUtils;
import com.guochao.faceshow.activity.VideoPlayActivity;
import com.guochao.faceshow.userhomepage.act.UserHomePageAct;
import com.guochao.faceshow.utils.Contants;
import com.guochao.faceshow.utils.LiveInfoUtils;
import com.guochao.faceshow.utils.TCConstants;
import com.guochao.faceshow.web.WebViewActivity;
import java.util.HashMap;
import java.util.Map;
import java.util.Set;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes3.dex */
public class AppEventFragment extends BaseFragment {

    /* renamed from: a  reason: collision with root package name */
    BannerBeanData f19160a;
    @BindView
    ImageView mImageView;

    private static Map<String, String> P1(Uri uri) {
        HashMap hashMap = new HashMap();
        Set<String> queryParameterNames = uri.getQueryParameterNames();
        if (queryParameterNames != null && !queryParameterNames.isEmpty()) {
            for (String str : queryParameterNames) {
                hashMap.put(str, uri.getQueryParameter(str));
            }
        }
        return hashMap;
    }

    public static void Q1(Context context, BannerBeanData bannerBeanData) {
        String schemeType = bannerBeanData.getSchemeType();
        String schemeUrl = bannerBeanData.getSchemeUrl();
        if (TextUtils.isEmpty(schemeUrl) || TextUtils.isEmpty(schemeType)) {
            return;
        }
        Uri parse = Uri.parse(schemeUrl);
        Map<String, String> P1 = P1(parse);
        if (TextUtils.equals(schemeType, "3")) {
            Intent intent = new Intent(context, VideoPlayActivity.class);
            intent.putExtra(TCConstants.PLAYER_VIDEO_ID, P1.get("videoId"));
            intent.putExtra("videoUrl", P1.get("videoUrl"));
            intent.putExtra("imgUrl", P1.get("videoImg"));
            intent.putExtra(AccessToken.USER_ID_KEY, P1.get(Contants.USER_ID));
            context.startActivity(intent);
        } else if (TextUtils.equals(schemeType, "4")) {
            Intent intent2 = new Intent(context, VideoTopicsActivity.class);
            intent2.setFlags(268435456);
            intent2.putExtra("topic_id", P1.get("topicId"));
            intent2.putExtra("titleName", "#" + P1.get("topicName"));
            context.startActivity(intent2);
        } else if (TextUtils.equals(schemeType, "5")) {
            Intent intent3 = new Intent(context, MusicVideoActivity.class);
            String str = P1.get("musicName");
            intent3.putExtra("musicName", str);
            intent3.putExtra("musicId", P1.get("musicId"));
            intent3.putExtra("titleName", str);
            intent3.putExtra("musicUrl", P1.get("musicUrl"));
            context.startActivity(intent3);
        } else if (TextUtils.equals(schemeType, MVPActivity.FROM_BAG_BADGE)) {
            Intent intent4 = new Intent(context, UserHomePageAct.class);
            intent4.putExtra(Contants.USER_ID, P1.get(Contants.USER_ID));
            context.startActivity(intent4);
        } else if (TextUtils.equals(schemeType, "1")) {
            if (bannerBeanData.getBelongLang() != null) {
                try {
                    JSONObject jSONObject = new JSONObject(bannerBeanData.getSchemeData());
                    String optString = jSONObject.optString("h5Url");
                    jSONObject.optInt("isNeedToken");
                    String optString2 = jSONObject.optString("shareTitle");
                    String optString3 = jSONObject.optString("shareText");
                    String optString4 = jSONObject.optString("shareImg");
                    String optString5 = jSONObject.optString("h5Type");
                    String optString6 = jSONObject.optString("isShare");
                    String str2 = (optString + StringUtils.getUrlFromType() + SpUtils.getStr(BaseApplication.getInstance(), Contants.USER_TOKEN)) + "&name=" + bannerBeanData.getBannerName();
                    if (TextUtils.equals("0", optString5)) {
                        WebViewActivity.createBuilder().m(str2).g("1".equals(optString6)).k(str2).h(optString4).i(optString3).l(bannerBeanData.getBannerName()).j(optString2).f(bannerBeanData.getBannerId()).a(context);
                    } else {
                        context.startActivity(new Intent("android.intent.action.VIEW", Uri.parse(str2)));
                    }
                    return;
                } catch (JSONException e10) {
                    e10.printStackTrace();
                    return;
                }
            }
            String str3 = (P1.get("h5Url") + StringUtils.getUrlFromType() + SpUtils.getStr(BaseApplication.getInstance(), Contants.USER_TOKEN)) + "&name=" + bannerBeanData.getBannerName();
            if (TextUtils.equals("0", P1.get("h5Type"))) {
                WebViewActivity.createBuilder().m(str3).g(true).k(str3).h(P1.get("shareImg")).i(P1.get("shareText")).a(context);
            } else {
                context.startActivity(new Intent("android.intent.action.VIEW", Uri.parse(str3)));
            }
        } else if (TextUtils.equals(schemeType, "2")) {
            if (parse.isOpaque()) {
                return;
            }
            String queryParameter = parse.getQueryParameter("liveId");
            if (TextUtils.isEmpty(queryParameter)) {
                return;
            }
            LiveInfoUtils.getLiveInfoAndJumpIfNeed(queryParameter, context);
        } else {
            PackageUtils.viewUri(context, parse);
        }
    }

    @Override // com.guochao.faceshow.aaspring.base.fragment.BaseFragment
    public int getLayoutId() {
        return R.layout.fragment_app_event;
    }

    @Override // com.guochao.faceshow.aaspring.base.fragment.BaseFragment
    public void initView(View view) {
        BannerBeanData bannerBeanData = this.f19160a;
        if (bannerBeanData != null) {
            hc.a.b(this.mImageView, bannerBeanData.getFileUrl(), R.drawable.banner_place_holder);
        }
    }

    @Override // com.guochao.faceshow.aaspring.base.fragment.BaseFragment
    protected void loadData() {
    }

    @OnClick
    public void onBannerClick(View view) {
        if (this.f19160a == null) {
            return;
        }
        try {
            Q1(getActivity(), this.f19160a);
        } catch (Exception unused) {
        }
    }

    @Override // com.guochao.faceshow.aaspring.base.fragment.BaseFragment, com.guochao.faceshow.aaspring.base.mvvm.fragment.GCCoreFragment, androidx.fragment.app.DialogFragment, androidx.fragment.app.Fragment
    public void onCreate(@Nullable Bundle bundle) {
        super.onCreate(bundle);
        if (getArguments() != null) {
            this.f19160a = (BannerBeanData) getArguments().getParcelable("data");
        }
    }
}
