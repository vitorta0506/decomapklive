package com.guochao.faceshow.aaspring.modulars.main;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import android.text.TextUtils;
import android.widget.FrameLayout;
import androidx.annotation.Nullable;
import bb.c;
import com.facebook.AccessToken;
import com.guochao.component.mvp.activity.MVPActivity;
import com.guochao.faceshow.BaseAppContext;
import com.guochao.faceshow.aaspring.base.adapter.BaseViewHolder;
import com.guochao.faceshow.aaspring.base.fragment.BaseRecyclerViewFragment;
import com.guochao.faceshow.aaspring.modulars.ugc.activity.MusicVideoActivity;
import com.guochao.faceshow.aaspring.modulars.ugc.activity.VideoTopicsActivity;
import com.guochao.faceshow.aaspring.utils.EventTrackingV2Utils;
import com.guochao.faceshow.activity.MainActivity;
import com.guochao.faceshow.activity.VideoPlayActivity;
import com.guochao.faceshow.promotion.data.PromotionData;
import com.guochao.faceshow.promotion.data.ShortVideoActivityScheme;
import com.guochao.faceshow.userhomepage.act.UserHomePageAct;
import com.guochao.faceshow.utils.AAMethod;
import com.guochao.faceshow.utils.Contants;
import com.guochao.faceshow.utils.DensityUtil;
import com.guochao.faceshow.utils.TCConstants;
import com.guochao.faceshow.views.floatwindow.FloatView;
import com.guochao.faceshow.web.WebViewActivity;
import com.huawei.hms.framework.common.ContainerUtils;
import java.util.HashMap;
/* loaded from: classes3.dex */
public abstract class FloatingViewFragment<T, VH extends BaseViewHolder> extends BaseRecyclerViewFragment<T, VH> {

    /* renamed from: f  reason: collision with root package name */
    public static c f20634f = null;

    /* renamed from: g  reason: collision with root package name */
    public static PromotionData.ResultItem f20635g = null;
    @Deprecated

    /* renamed from: h  reason: collision with root package name */
    public static String f20636h = "";

    /* renamed from: i  reason: collision with root package name */
    public static Boolean f20637i = Boolean.FALSE;

    /* renamed from: a  reason: collision with root package name */
    FloatView f20638a;

    /* renamed from: b  reason: collision with root package name */
    FrameLayout f20639b;

    /* renamed from: c  reason: collision with root package name */
    kb.b f20640c;

    /* renamed from: d  reason: collision with root package name */
    HashMap<String, String> f20641d = new HashMap<>();

    /* renamed from: e  reason: collision with root package name */
    private boolean f20642e = false;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class a extends od.a<PromotionData.ResultItem> {
        a() {
        }

        @Override // od.a
        /* renamed from: b */
        public void a(PromotionData.ResultItem resultItem, int i9, String str) {
            if (resultItem == null || resultItem.type != 0) {
                return;
            }
            FloatingViewFragment.f20635g = resultItem;
            FloatingViewFragment.f20636h = resultItem.webPageUrl;
            long currentTimeMillis = System.currentTimeMillis();
            if (currentTimeMillis < resultItem.endTime && currentTimeMillis > resultItem.startTime) {
                if (BaseAppContext.isClearHalloween) {
                    return;
                }
                FloatingViewFragment floatingViewFragment = FloatingViewFragment.this;
                FrameLayout frameLayout = floatingViewFragment.f20639b;
                if ((frameLayout == null || frameLayout.indexOfChild(floatingViewFragment.f20638a) <= 0) && !MainActivity.f24551w) {
                    FloatingViewFragment floatingViewFragment2 = FloatingViewFragment.this;
                    floatingViewFragment2.X1(floatingViewFragment2.getActivity());
                    return;
                }
                return;
            }
            FloatingViewFragment.this.Z1();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class b implements kb.a {
        b() {
        }

        @Override // kb.a
        public void a() {
            ShortVideoActivityScheme shortVideoActivityScheme;
            PromotionData.ResultItem resultItem = FloatingViewFragment.f20635g;
            if (resultItem == null || (shortVideoActivityScheme = resultItem.appScheme) == null || TextUtils.isEmpty(shortVideoActivityScheme.getSchemeUrl()) || TextUtils.isEmpty(FloatingViewFragment.f20635g.appScheme.getSchemeType())) {
                return;
            }
            EventTrackingV2Utils.INSTANCE.track(EventTrackingV2Utils.main_video_float_click);
            FloatingViewFragment.this.V1(FloatingViewFragment.f20635g.appScheme.getSchemeType(), FloatingViewFragment.f20635g.appScheme.getSchemeUrl());
        }

        @Override // kb.a
        public void onClose() {
            EventTrackingV2Utils.INSTANCE.track(EventTrackingV2Utils.main_video_float_close);
            FloatingViewFragment.this.Z1();
            BaseAppContext.isClearHalloween = true;
        }
    }

    private void T1() {
        FloatView floatView = this.f20638a;
        if (floatView == null) {
            return;
        }
        floatView.setFloatViewListener(new b());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void V1(String str, String str2) {
        if (TextUtils.isEmpty(str2)) {
            return;
        }
        String str3 = "";
        if (TextUtils.equals(str, "3")) {
            if (!TextUtils.isEmpty(str2) && str2.contains("facecast://video/detail?")) {
                String replace = str2.replace("facecast://video/detail?", "");
                if (!TextUtils.isEmpty(replace)) {
                    for (String str4 : replace.split(ContainerUtils.FIELD_DELIMITER)) {
                        String[] split = str4.split(ContainerUtils.KEY_VALUE_DELIMITER);
                        this.f20641d.put(split[0], split[1]);
                    }
                }
            }
            Intent intent = new Intent(getActivity(), VideoPlayActivity.class);
            intent.putExtra(TCConstants.PLAYER_VIDEO_ID, this.f20641d.get("videoId"));
            intent.putExtra("videoUrl", this.f20641d.get("videoUrl"));
            intent.putExtra("imgUrl", this.f20641d.get("videoImg"));
            intent.putExtra(AccessToken.USER_ID_KEY, this.f20641d.get(Contants.USER_ID));
            startActivity(intent);
        } else if (TextUtils.equals(str, "4")) {
            if (!TextUtils.isEmpty(str2) && str2.contains("facecast://videotopic?")) {
                String replace2 = str2.replace("facecast://videotopic?", "");
                if (!TextUtils.isEmpty(replace2)) {
                    for (String str5 : replace2.split(ContainerUtils.FIELD_DELIMITER)) {
                        String[] split2 = str5.split(ContainerUtils.KEY_VALUE_DELIMITER);
                        if (split2.length == 2) {
                            this.f20641d.put(split2[0], split2[1]);
                        }
                    }
                }
            }
            Intent intent2 = new Intent(getActivity(), VideoTopicsActivity.class);
            intent2.setFlags(268435456);
            intent2.putExtra("topic_id", this.f20641d.get("topicId"));
            intent2.putExtra("titleName", "#" + this.f20641d.get("topicName"));
            intent2.putExtra("fromdanke", true);
            startActivity(intent2);
        } else if (TextUtils.equals(str, "5")) {
            if (!TextUtils.isEmpty(str2) && str2.contains("facecast://musictopic?")) {
                String replace3 = str2.replace("facecast://musictopic?", "");
                if (!TextUtils.isEmpty(replace3)) {
                    for (String str6 : replace3.split(ContainerUtils.FIELD_DELIMITER)) {
                        String[] split3 = str6.split(ContainerUtils.KEY_VALUE_DELIMITER);
                        if (split3.length == 2) {
                            this.f20641d.put(split3[0], split3[1]);
                        }
                    }
                }
            }
            Intent intent3 = new Intent(getActivity(), MusicVideoActivity.class);
            intent3.putExtra("musicId", this.f20641d.get("musicId"));
            intent3.putExtra("titleName", this.f20641d.get("musicName"));
            intent3.putExtra("musicUrl", this.f20641d.get("musicUrl"));
            startActivity(intent3);
        } else if (TextUtils.equals(str, MVPActivity.FROM_BAG_BADGE)) {
            if (!TextUtils.isEmpty(str2) && str2.contains("facecast://homepage?")) {
                String replace4 = str2.replace("facecast://homepage?", "");
                if (!TextUtils.isEmpty(replace4)) {
                    for (String str7 : replace4.split(ContainerUtils.FIELD_DELIMITER)) {
                        String[] split4 = str7.split(ContainerUtils.KEY_VALUE_DELIMITER);
                        if (split4.length == 2) {
                            this.f20641d.put(split4[0], split4[1]);
                        }
                    }
                }
            }
            Intent intent4 = new Intent(getActivity(), UserHomePageAct.class);
            intent4.putExtra(Contants.USER_ID, this.f20641d.get(Contants.USER_ID));
            startActivity(intent4);
        } else if (TextUtils.equals(str, "1")) {
            if (!TextUtils.isEmpty(str2) && str2.contains("facecast://webview?")) {
                String replace5 = str2.replace("facecast://webview?", "");
                if (!TextUtils.isEmpty(replace5)) {
                    for (String str8 : replace5.split(ContainerUtils.FIELD_DELIMITER)) {
                        String[] split5 = str8.split(ContainerUtils.KEY_VALUE_DELIMITER);
                        if (split5.length == 2) {
                            this.f20641d.put(split5[0], split5[1]);
                        }
                    }
                    str = this.f20641d.get("h5Type");
                }
                str3 = this.f20641d.get("h5Url");
            }
            if (TextUtils.equals("0", str)) {
                WebViewActivity.createBuilder().m(str3).g(true).k(this.f20641d.get("shareUrl")).i(this.f20641d.get("shareText")).h(this.f20641d.get("shareImg")).a(getContext());
                return;
            }
            startActivity(new Intent("android.intent.action.VIEW", Uri.parse(str3)));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void X1(Context context) {
        try {
            if (getActivity() != null && !MainActivity.f24551w) {
                if (this.f20639b == null || this.f20638a == null) {
                    this.f20640c = Y1(getActivity());
                    this.f20638a = new FloatView(context, this.f20640c);
                    T1();
                    this.f20639b = (FrameLayout) getActivity().getWindow().getDecorView().getRootView().findViewById(16908290);
                    boolean z10 = false;
                    for (int i9 = 0; i9 < this.f20639b.getChildCount(); i9++) {
                        if (this.f20638a.getId() == this.f20639b.getChildAt(i9).getId()) {
                            z10 = true;
                        }
                    }
                    if (!z10) {
                        this.f20639b.addView(this.f20638a);
                    }
                    hc.a.j(this.f20638a.getVideoViewWrap(), f20635g.floatIconUrl);
                    MainActivity.f24551w = true;
                    this.f20642e = true;
                }
            }
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    private kb.b Y1(Activity activity) {
        kb.b bVar = new kb.b();
        int screenWidth = AAMethod.getScreenWidth(activity);
        int screenHeight = AAMethod.getScreenHeight(activity);
        bVar.f53662a = DensityUtil.dp2px(40.0f);
        bVar.f53663b = DensityUtil.dp2px(40.0f);
        int intValue = new Double(screenHeight * 0.77d).intValue();
        bVar.f53664c = screenWidth - DensityUtil.dp2px(activity, 12.0f);
        bVar.f53665d = screenHeight - intValue;
        bVar.f53666e = DensityUtil.dp2px(activity, 100.0f);
        bVar.f53667f = screenWidth;
        bVar.f53668g = screenHeight;
        bVar.f53672k = 2;
        bVar.f53670i = 200;
        bVar.f53669h = 200;
        bVar.f53671j = (screenHeight * 1.0f) / screenWidth;
        return bVar;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void Z1() {
        try {
            FrameLayout frameLayout = this.f20639b;
            if (frameLayout != null) {
                if (frameLayout.indexOfChild(this.f20638a) > 0) {
                    this.f20639b.removeView(this.f20638a);
                }
                this.f20638a = null;
            }
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    public void U1() {
        try {
            FrameLayout frameLayout = this.f20639b;
            if (frameLayout == null || frameLayout.indexOfChild(this.f20638a) <= 0) {
                return;
            }
            this.f20639b.removeView(this.f20638a);
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    public void W1() {
        c cVar = f20634f;
        if (cVar == null) {
            return;
        }
        cVar.l(new a());
    }

    public void a2() {
        try {
            FrameLayout frameLayout = this.f20639b;
            if (frameLayout == null || BaseAppContext.isClearHalloween || frameLayout.indexOfChild(this.f20638a) > 0 || this.f20638a == null) {
                return;
            }
            boolean z10 = false;
            for (int i9 = 0; i9 < this.f20639b.getChildCount(); i9++) {
                if (this.f20638a.getId() == this.f20639b.getChildAt(i9).getId()) {
                    z10 = true;
                }
            }
            if (z10) {
                return;
            }
            this.f20639b.addView(this.f20638a);
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    @Override // com.guochao.faceshow.aaspring.base.fragment.BaseRecyclerViewFragment, d7.c
    public void loadData(int i9) {
        W1();
    }

    @Override // com.guochao.faceshow.aaspring.base.fragment.BaseRecyclerViewFragment, com.guochao.faceshow.aaspring.base.fragment.BaseFragment, com.guochao.faceshow.aaspring.base.mvvm.fragment.GCCoreFragment, androidx.fragment.app.DialogFragment, androidx.fragment.app.Fragment
    public void onCreate(@Nullable Bundle bundle) {
        super.onCreate(bundle);
        f20634f = new c();
    }
}
