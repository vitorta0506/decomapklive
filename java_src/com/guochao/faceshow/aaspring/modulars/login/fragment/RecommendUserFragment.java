package com.guochao.faceshow.aaspring.modulars.login.fragment;

import android.content.Context;
import android.content.Intent;
import android.graphics.drawable.AnimationDrawable;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import butterknife.BindView;
import butterknife.OnClick;
import com.guochao.faceshow.R;
import com.guochao.faceshow.aaspring.base.activity.BaseActivity;
import com.guochao.faceshow.aaspring.base.fragment.BaseFragment;
import com.guochao.faceshow.aaspring.base.http.v2.GCRequestJava;
import com.guochao.faceshow.aaspring.base.http.v2.Response;
import com.guochao.faceshow.aaspring.beans.RecommendUser;
import com.guochao.faceshow.aaspring.modulars.login.cloud.view.SoulPlanetsView;
import com.guochao.faceshow.aaspring.utils.EventTrackingUtils;
import com.guochao.faceshow.aaspring.utils.GCEventUtils;
import com.guochao.faceshow.aaspring.utils.LogUtils;
import com.guochao.faceshow.aaspring.views.HeadPortraitView;
import com.guochao.faceshow.activity.MainActivity;
import com.guochao.faceshow.bean.UserBean;
import com.guochao.faceshow.utils.Contants;
import com.guochao.faceshow.utils.HandlerGetter;
import com.tencent.imsdk.v2.V2TIMMessage;
import com.tencent.imsdk.v2.V2TIMSendCallback;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes3.dex */
public class RecommendUserFragment extends BaseFragment {

    /* renamed from: a  reason: collision with root package name */
    RecommendUser f20479a;

    /* renamed from: b  reason: collision with root package name */
    boolean f20480b = false;

    /* renamed from: c  reason: collision with root package name */
    V2TIMSendCallback<V2TIMMessage> f20481c = new d();

    /* renamed from: d  reason: collision with root package name */
    List<View> f20482d = new ArrayList();

    /* renamed from: e  reason: collision with root package name */
    int f20483e = 0;

    /* renamed from: f  reason: collision with root package name */
    g f20484f = new g();
    @BindView
    ImageView mImageView;
    @BindView
    SoulPlanetsView mPlanetView;

    /* loaded from: classes3.dex */
    class a implements GCRequestJava.c<g7.a> {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ View f20485a;

        a(View view) {
            this.f20485a = view;
        }

        @Override // com.guochao.faceshow.aaspring.base.http.v2.GCRequestJava.c
        public void a(Response<g7.a> response) {
            RecommendUserFragment.this.showToast(response.getMsg());
            RecommendUserFragment.this.mImageView.setVisibility(4);
            this.f20485a.findViewById(R.id.next).setVisibility(0);
            ((AnimationDrawable) RecommendUserFragment.this.mImageView.getDrawable()).stop();
        }
    }

    /* loaded from: classes3.dex */
    class b implements GCRequestJava.d<Object> {
        b() {
        }

        @Override // com.guochao.faceshow.aaspring.base.http.v2.GCRequestJava.d
        public void a(@NonNull Response<Object> response) {
            RecommendUserFragment.this.skip(null);
        }
    }

    /* loaded from: classes3.dex */
    class c implements SoulPlanetsView.c {
        c() {
        }

        @Override // com.guochao.faceshow.aaspring.modulars.login.cloud.view.SoulPlanetsView.c
        public void onItemClick(ViewGroup viewGroup, View view, int i9) {
            RecommendUser recommendUser = RecommendUserFragment.this.f20479a;
            if (recommendUser == null) {
                return;
            }
            RecommendUser.RecommendListBean recommendListBean = recommendUser.getRecommendList().get(i9);
            recommendListBean.setCheck(!recommendListBean.isCheck());
            view.findViewById(R.id.check).setSelected(recommendListBean.isCheck());
        }
    }

    /* loaded from: classes3.dex */
    static class d implements V2TIMSendCallback<V2TIMMessage> {
        d() {
        }

        @Override // com.tencent.imsdk.v2.V2TIMValueCallback
        /* renamed from: a */
        public void onSuccess(V2TIMMessage v2TIMMessage) {
            LogUtils.i("RecommendUsersActivity", "onSuccess: " + v2TIMMessage.getMsgID());
        }

        @Override // com.tencent.imsdk.v2.V2TIMValueCallback
        public void onError(int i9, String str) {
            LogUtils.i("RecommendUsersActivity", "onError: " + i9 + "   " + str);
        }

        @Override // com.tencent.imsdk.v2.V2TIMSendCallback
        public void onProgress(int i9) {
        }
    }

    /* loaded from: classes3.dex */
    public interface e {
        void i(SoulPlanetsView soulPlanetsView);
    }

    /* loaded from: classes3.dex */
    class f extends k9.b {
        f() {
        }

        @Override // k9.b
        public int getCount() {
            RecommendUser recommendUser = RecommendUserFragment.this.f20479a;
            if (recommendUser == null) {
                return 0;
            }
            return recommendUser.getRecommendList().size();
        }

        @Override // k9.b
        public Object getItem(int i9) {
            RecommendUser recommendUser = RecommendUserFragment.this.f20479a;
            if (recommendUser == null) {
                return null;
            }
            return recommendUser.getRecommendList().get(i9);
        }

        @Override // k9.b
        public int getPopularity(int i9) {
            return 0;
        }

        @Override // k9.b
        public View getView(Context context, int i9, ViewGroup viewGroup) {
            return RecommendUserFragment.this.f20482d.get(i9);
        }

        @Override // k9.b
        public void onThemeColorChanged(View view, int i9) {
        }
    }

    /* loaded from: classes3.dex */
    class g implements Runnable {
        g() {
        }

        @Override // java.lang.Runnable
        public void run() {
            if (RecommendUserFragment.this.getActivity() == null) {
                return;
            }
            RecommendUserFragment recommendUserFragment = RecommendUserFragment.this;
            int min = Math.min(4, recommendUserFragment.f20479a.getRecommendList().size() - recommendUserFragment.f20483e);
            if (min == 0) {
                RecommendUserFragment recommendUserFragment2 = RecommendUserFragment.this;
                recommendUserFragment2.mPlanetView.setAdapter(new f());
                if (RecommendUserFragment.this.getActivity() instanceof e) {
                    ((e) RecommendUserFragment.this.getActivity()).i(RecommendUserFragment.this.mPlanetView);
                    return;
                }
                return;
            }
            for (int i9 = 0; i9 < min; i9++) {
                View inflate = LayoutInflater.from(RecommendUserFragment.this.getActivity()).inflate(R.layout.list_item_recommend_user, (ViewGroup) RecommendUserFragment.this.mPlanetView, false);
                RecommendUser.RecommendListBean recommendListBean = RecommendUserFragment.this.f20479a.getRecommendList().get(RecommendUserFragment.this.f20483e);
                RecommendUserFragment.this.f20483e++;
                if (recommendListBean != null) {
                    TextView textView = (TextView) inflate.findViewById(R.id.user_name);
                    textView.setText(recommendListBean.getNickName());
                    textView.setSelected(true);
                    ((HeadPortraitView) inflate.findViewById(R.id.avatar_view)).d(recommendListBean);
                    inflate.findViewById(R.id.check).setSelected(recommendListBean.isCheck());
                }
                RecommendUserFragment.this.f20482d.add(inflate);
            }
            HandlerGetter.getMainHandler().post(RecommendUserFragment.this.f20484f);
        }
    }

    public void P1(RecommendUser recommendUser) {
        this.f20479a = recommendUser;
        HandlerGetter.getMainHandler().post(this.f20484f);
        this.mPlanetView.setOnTagClickListener(new c());
    }

    @OnClick
    public void enter(View view) {
        if (this.f20479a == null || this.f20480b) {
            return;
        }
        this.f20480b = true;
        this.mImageView.setVisibility(0);
        view.findViewById(R.id.next).setVisibility(4);
        ((AnimationDrawable) this.mImageView.getDrawable()).start();
        List<RecommendUser.RecommendListBean> recommendList = this.f20479a.getRecommendList();
        ArrayList arrayList = new ArrayList();
        for (int i9 = 0; i9 < recommendList.size(); i9++) {
            RecommendUser.RecommendListBean recommendListBean = recommendList.get(i9);
            if (recommendListBean != null && recommendListBean.isCheck()) {
                arrayList.add(recommendListBean);
            }
        }
        EventTrackingUtils.getInstance().track("enter_click");
        if (arrayList.isEmpty()) {
            skip(null);
            return;
        }
        int size = arrayList.size();
        String[] strArr = new String[size];
        for (int i10 = 0; i10 < size; i10++) {
            strArr[i10] = ((RecommendUser.RecommendListBean) arrayList.get(i10)).getUserId();
        }
        new GCRequestJava(Contants.friend_add).bindToLifecycle(this).putBody("fromSource", 3).putBody("aids", strArr).j(new b()).d(new a(view)).request();
    }

    @Override // com.guochao.faceshow.aaspring.base.fragment.BaseFragment
    public int getLayoutId() {
        return R.layout.fragment_recommend_user;
    }

    @Override // com.guochao.faceshow.aaspring.base.fragment.BaseFragment
    public void initView(View view) {
        UserBean.isFirstRegist = true;
    }

    @Override // com.guochao.faceshow.aaspring.base.fragment.BaseFragment
    public void loadData() {
    }

    @Override // com.guochao.faceshow.aaspring.base.fragment.BaseFragment, androidx.fragment.app.Fragment
    public void onDestroy() {
        super.onDestroy();
        HandlerGetter.getMainHandler().removeCallbacks(this.f20484f);
    }

    @OnClick
    public void skip(@Nullable View view) {
        if (getActivity() instanceof BaseActivity) {
            if (view != null) {
                EventTrackingUtils.getInstance().track("skip_click");
            }
            ((BaseActivity) getActivity()).startActivityUpIn(new Intent(getActivity(), MainActivity.class));
            GCEventUtils.track(GCEventUtils.NEW_USER_EFFECTIVE);
            getActivity().finish();
        }
    }
}
