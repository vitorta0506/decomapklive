package com.guochao.faceshow.aaspring.modulars.welcome;

import android.content.Context;
import android.content.Intent;
import android.os.Build;
import android.os.Bundle;
import android.text.TextUtils;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.annotation.Nullable;
import butterknife.BindView;
import com.guochao.faceshow.R;
import com.guochao.faceshow.aaspring.base.activity.BaseActivity;
import com.guochao.faceshow.aaspring.base.fragment.BaseFragment;
import com.guochao.faceshow.aaspring.beans.PushBean;
import com.guochao.faceshow.aaspring.beans.SplashInfoData;
import com.guochao.faceshow.aaspring.modulars.login.activity.ChooseLoginTypeActivity;
import com.guochao.faceshow.aaspring.utils.LogUtils;
import com.guochao.faceshow.aaspring.utils.MemoryCache;
import com.guochao.faceshow.aaspring.utils.PhoneUtils;
import com.guochao.faceshow.aaspring.utils.SpUtils;
import com.guochao.faceshow.aaspring.utils.SplashUtils;
import com.guochao.faceshow.aaspring.utils.location.FcLocation;
import com.guochao.faceshow.activity.MainActivity;
import com.guochao.faceshow.utils.Contants;
import com.guochao.faceshow.utils.DataCleanManager;
import com.guochao.faceshow.utils.PushUtils;
import com.guochao.faceshow.views.g;
import java.util.HashMap;
import java.util.Iterator;
import org.greenrobot.eventbus.EventBus;
import org.json.JSONObject;
/* loaded from: classes3.dex */
public class BaseSplashFragment extends BaseFragment {

    /* renamed from: a  reason: collision with root package name */
    private String f23388a;

    /* renamed from: b  reason: collision with root package name */
    private int f23389b = -1;

    /* renamed from: c  reason: collision with root package name */
    private g f23390c;

    /* renamed from: d  reason: collision with root package name */
    SplashInfoData f23391d;

    /* renamed from: e  reason: collision with root package name */
    g f23392e;

    /* renamed from: f  reason: collision with root package name */
    com.guochao.faceshow.aaspring.base.utils.a f23393f;
    @BindView
    ImageView mImageViewSplash;
    @BindView
    ViewGroup mSplashViewGroup;
    @BindView
    TextView mTextViewSplashCountDown;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class a extends g {
        a(long j10, long j11) {
            super(j10, j11);
        }

        @Override // com.guochao.faceshow.views.g
        public void onFinish() {
            BaseSplashFragment.this.f23389b = 1;
            BaseSplashFragment.this.Z1();
        }

        @Override // com.guochao.faceshow.views.g
        public void onTick(long j10) {
            BaseSplashFragment baseSplashFragment;
            TextView textView;
            String valueOf;
            if (!BaseSplashFragment.this.isAdded() || BaseSplashFragment.this.isDetached() || BaseSplashFragment.this.getActivity() == null || BaseSplashFragment.this.getActivity().isFinishing() || BaseSplashFragment.this.getActivity().isDestroyed() || (textView = (baseSplashFragment = BaseSplashFragment.this).mTextViewSplashCountDown) == null) {
                return;
            }
            if (baseSplashFragment.f23391d.result.skippable) {
                valueOf = BaseSplashFragment.this.getResources().getString(R.string.skip) + " " + ((int) ((j10 / 1000.0d) + 0.5d));
            } else {
                valueOf = String.valueOf((int) ((j10 / 1000.0d) + 0.5d));
            }
            textView.setText(valueOf);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class b implements View.OnClickListener {
        b() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            String str = BaseSplashFragment.this.f23391d.result.clickAction;
            if ("0".equals(str) || "1".equals(str) || "2".equals(str) || "3".equals(str) || "4".equals(str) || "5".equals(str)) {
                PushBean pushBean = (PushBean) MemoryCache.getInstance().get(PushBean.class);
                if (pushBean == null) {
                    pushBean = new PushBean();
                }
                pushBean.goToWelcomePage = true;
                MemoryCache.getInstance().put(pushBean);
                BaseSplashFragment.this.f23389b = 1;
                BaseSplashFragment.this.Z1();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class c implements View.OnClickListener {
        c() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            BaseSplashFragment.this.f23389b = 1;
            BaseSplashFragment.this.Z1();
        }
    }

    private void Q1() {
        ((BaseActivity) getActivity()).redirectToMainActivity(new Intent(getActivity(), MainActivity.class), false);
        getActivity().finish();
    }

    private boolean R1() {
        return PhoneUtils.hasNotchScreen(getActivity());
    }

    private void S1() {
        this.f23391d = SplashUtils.getSplashData(getActivity());
        Y1();
    }

    private boolean T1(SplashInfoData splashInfoData) {
        return splashInfoData.result != null && splashInfoData.total > 0;
    }

    public static boolean W1(Intent intent, String str, Context context) {
        if (intent == null) {
            return false;
        }
        Bundle extras = intent.getExtras();
        LogUtils.e(PushUtils.KEY_FROM_PUSH, "Splash = " + str + "\nintent = " + intent.toString());
        if (extras != null) {
            String string = extras.getString("ext");
            LogUtils.e(PushUtils.KEY_FROM_PUSH, "腾讯华为推送，聊天格式 = " + extras);
            if (!TextUtils.isEmpty(string)) {
                extras.putString("type_id", "10000");
                if (extras.getString("google.message_id", null) != null) {
                    extras.putString("firm_type", "1");
                }
                try {
                    PushUtils.jumpToChat(new JSONObject(string));
                } catch (Exception e10) {
                    LogUtils.i("KEY_FROM_PUSH：", "jumpToChat = " + e10);
                }
                return false;
            }
        }
        String format = String.format("%s://%s?", context.getResources().getString(R.string.share_scheme), "com.guochao.faceshow");
        if (!TextUtils.isEmpty(str) && !str.contains(format)) {
            try {
                JSONObject jSONObject = new JSONObject(str).getJSONObject("n_extras");
                HashMap hashMap = new HashMap();
                Iterator<String> keys = jSONObject.keys();
                while (keys.hasNext()) {
                    String obj = keys.next().toString();
                    hashMap.put(obj, jSONObject.get(obj).toString());
                }
                PushUtils.savePushTag(context, hashMap);
            } catch (Exception e11) {
                e11.printStackTrace();
            }
            return false;
        } else if ("pushscheme://com.tencent.qcloud.tim/detail".equals(str)) {
            PushBean pushBean = (PushBean) MemoryCache.getInstance().get(PushBean.class);
            if (pushBean == null) {
                pushBean = new PushBean();
            }
            pushBean.withEmptyChat = true;
            MemoryCache.getInstance().put(pushBean);
            return false;
        } else if (TextUtils.isEmpty(str) || !str.contains(format)) {
            return false;
        } else {
            return PushUtils.saveShareTag(context, str);
        }
    }

    private void X1() {
        if (getActivity() == null) {
            return;
        }
        MemoryCache.getInstance().put(FcLocation.DEFAULT);
    }

    private void Y1() {
        SplashInfoData splashInfoData = this.f23391d;
        if (splashInfoData != null && T1(splashInfoData)) {
            this.mSplashViewGroup.setVisibility(0);
            this.mImageViewSplash.setVisibility(0);
            hc.a.j(this.mImageViewSplash, this.f23391d.result.fileUrl);
            if (this.f23390c == null) {
                int i9 = this.f23391d.result.stayTime;
                this.f23390c = new a(i9 > 0 ? i9 * 1000 : 5000, 1000L);
            }
            this.f23390c.start();
            this.mImageViewSplash.setOnClickListener(new b());
            this.mSplashViewGroup.setOnClickListener(new c());
            return;
        }
        this.f23389b = 1;
        Z1();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void U1() {
        if (getActivity() == null) {
            return;
        }
        Intent intent = getActivity().getIntent();
        String dataString = intent.getDataString();
        this.f23388a = dataString;
        W1(intent, dataString, getContext());
        if (PushUtils.isWithDataSplash()) {
            Boolean bool = (Boolean) MemoryCache.getInstance().get(ChooseLoginTypeActivity.class.getSimpleName());
            Boolean bool2 = (Boolean) MemoryCache.getInstance().get(MainActivity.class.getSimpleName());
            if (bool != null && bool.booleanValue()) {
                return;
            }
            if (bool2 != null && bool2.booleanValue()) {
                return;
            }
            this.f23389b = 1;
            Z1();
        } else {
            S1();
        }
        com.guochao.faceshow.aaspring.manager.im.b.l0().Q0();
        X1();
        DataCleanManager.clearThirdPartyDir();
    }

    protected void V1() {
        Intent intent;
        SpUtils.setBool(getActivity(), "checkNotch", R1());
        if (getActivity() instanceof SplashActivity) {
            intent = new Intent(getActivity(), PushChooseLoginTypeActivity.class);
        } else {
            intent = new Intent(getActivity(), ChooseLoginTypeActivity.class);
        }
        startActivity(intent);
        getActivity().finish();
    }

    public void Z1() {
        if (this.f23389b == -1 || getActivity() == null || getActivity().isFinishing()) {
            return;
        }
        g gVar = this.f23390c;
        if (gVar != null) {
            gVar.cancel();
        }
        g gVar2 = this.f23392e;
        if (gVar2 != null) {
            gVar2.cancel();
        }
        com.guochao.faceshow.aaspring.base.utils.a aVar = this.f23393f;
        if (aVar != null) {
            aVar.cancel();
        }
        String str = SpUtils.getStr(getActivity(), Contants.USER_TOKEN);
        SplashInfoData splashInfoData = this.f23391d;
        if (splashInfoData != null && splashInfoData.result != null) {
            MemoryCache.getInstance().put("splashInfoData", this.f23391d.result);
        }
        if (!TextUtils.isEmpty(str)) {
            Q1();
        } else {
            V1();
        }
    }

    @Override // com.guochao.faceshow.aaspring.base.fragment.BaseFragment
    public int getLayoutId() {
        return R.layout.activity_welcome;
    }

    @Override // com.guochao.faceshow.aaspring.base.fragment.BaseFragment
    public void initView(View view) {
        if (getActivity() != null && Build.VERSION.SDK_INT >= 23) {
            getActivity().getWindow().getDecorView().setSystemUiVisibility(getActivity().getWindow().getDecorView().getSystemUiVisibility() | 8192);
        }
    }

    @Override // com.guochao.faceshow.aaspring.base.fragment.BaseFragment
    public void loadData() {
    }

    @Override // com.guochao.faceshow.aaspring.base.fragment.BaseFragment, com.guochao.faceshow.aaspring.base.mvvm.fragment.GCCoreFragment, androidx.fragment.app.DialogFragment, androidx.fragment.app.Fragment
    public void onCreate(@Nullable Bundle bundle) {
        super.onCreate(bundle);
        MemoryCache.getInstance().put(SplashFragment.class.getSimpleName(), Boolean.TRUE);
    }

    @Override // com.guochao.faceshow.aaspring.base.fragment.BaseFragment, androidx.fragment.app.DialogFragment, androidx.fragment.app.Fragment
    public void onDestroyView() {
        super.onDestroyView();
        MemoryCache.getInstance().put(SplashFragment.class.getSimpleName(), Boolean.FALSE);
        g gVar = this.f23390c;
        if (gVar != null) {
            gVar.cancel();
        }
        if (EventBus.getDefault().isRegistered(this)) {
            EventBus.getDefault().unregister(this);
        }
    }
}
