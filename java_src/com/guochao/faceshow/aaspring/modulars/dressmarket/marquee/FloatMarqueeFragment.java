package com.guochao.faceshow.aaspring.modulars.dressmarket.marquee;

import android.animation.AnimatorSet;
import android.animation.ObjectAnimator;
import android.view.View;
import androidx.annotation.NonNull;
import com.guochao.faceshow.R;
import com.guochao.faceshow.aaspring.base.fragment.BaseFragment;
import com.guochao.faceshow.aaspring.base.http.response.FaceCastBaseResponse;
import com.guochao.faceshow.aaspring.modulars.dressmarket.bean.MarqueeUser;
import com.guochao.faceshow.aaspring.modulars.dressmarket.marquee.FloatMarqueeFragment;
import com.guochao.faceshow.aaspring.modulars.dressmarket.marquee.FloatMarqueeScrollHolder;
import com.guochao.faceshow.utils.DensityUtil;
import com.guochao.faceshow.utils.HandlerGetter;
import java.util.ArrayList;
import java.util.List;
import org.greenrobot.eventbus.EventBus;
import org.greenrobot.eventbus.Subscribe;
import org.greenrobot.eventbus.ThreadMode;
/* loaded from: classes3.dex */
public class FloatMarqueeFragment extends BaseFragment {

    /* renamed from: a  reason: collision with root package name */
    private final List<MarqueeUser> f17676a = new ArrayList();

    /* renamed from: b  reason: collision with root package name */
    private FloatMarqueeScrollHolder f17677b;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class a extends com.guochao.faceshow.aaspring.base.http.callback.c<List<MarqueeUser>> {
        a() {
        }

        @Override // com.guochao.faceshow.aaspring.base.http.callback.c
        public void onFailure(g7.a<List<MarqueeUser>> aVar) {
        }

        @Override // com.guochao.faceshow.aaspring.base.http.callback.c
        public void onResponse(List<MarqueeUser> list, @NonNull FaceCastBaseResponse<List<MarqueeUser>> faceCastBaseResponse) {
            if (list == null) {
                onFailure(new g7.a<>(new Exception(""), -1));
            } else if (list.isEmpty()) {
                onFailure(new g7.a<>(new Exception(""), -1));
            } else {
                FloatMarqueeFragment.this.f17676a.addAll(list);
                if (FloatMarqueeFragment.this.getView() != null) {
                    FloatMarqueeFragment.this.getView().setVisibility(0);
                }
                FloatMarqueeFragment.this.T1();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class b implements FloatMarqueeScrollHolder.c {
        b() {
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void c() {
            FloatMarqueeFragment.this.T1();
        }

        @Override // com.guochao.faceshow.aaspring.modulars.dressmarket.marquee.FloatMarqueeScrollHolder.c
        public void a() {
            if (FloatMarqueeFragment.this.isDetached() || FloatMarqueeFragment.this.getActivity() == null || FloatMarqueeFragment.this.getActivity().isDestroyed() || FloatMarqueeFragment.this.getActivity().isFinishing() || FloatMarqueeFragment.this.getView() == null) {
                return;
            }
            FloatMarqueeFragment.this.f17676a.add((MarqueeUser) FloatMarqueeFragment.this.f17676a.remove(0));
            ObjectAnimator ofFloat = ObjectAnimator.ofFloat(FloatMarqueeFragment.this.getView(), "alpha", 1.0f, 0.0f);
            ObjectAnimator ofFloat2 = ObjectAnimator.ofFloat(FloatMarqueeFragment.this.getView(), "translationY", 0.0f, -DensityUtil.dp2px(28.0f));
            AnimatorSet animatorSet = new AnimatorSet();
            animatorSet.setDuration(300L);
            animatorSet.playTogether(ofFloat, ofFloat2);
            animatorSet.start();
            HandlerGetter.getMainHandler().postDelayed(new Runnable() { // from class: com.guochao.faceshow.aaspring.modulars.dressmarket.marquee.a
                @Override // java.lang.Runnable
                public final void run() {
                    FloatMarqueeFragment.b.this.c();
                }
            }, 300L);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class c implements Runnable {
        c() {
        }

        @Override // java.lang.Runnable
        public void run() {
            if (FloatMarqueeFragment.this.isDetached() || FloatMarqueeFragment.this.getActivity() == null || FloatMarqueeFragment.this.getActivity().isDestroyed() || FloatMarqueeFragment.this.getActivity().isFinishing() || FloatMarqueeFragment.this.getView() == null) {
                return;
            }
            ObjectAnimator ofFloat = ObjectAnimator.ofFloat(FloatMarqueeFragment.this.getView(), "alpha", 0.0f, 1.0f);
            ObjectAnimator ofFloat2 = ObjectAnimator.ofFloat(FloatMarqueeFragment.this.getView(), "translationY", DensityUtil.dp2px(28.0f), 0.0f);
            AnimatorSet animatorSet = new AnimatorSet();
            animatorSet.setDuration(300L);
            animatorSet.playTogether(ofFloat, ofFloat2);
            animatorSet.start();
            FloatMarqueeFragment.this.f17677b.q();
        }
    }

    /* loaded from: classes3.dex */
    public static class d {

        /* renamed from: a  reason: collision with root package name */
        public String f17681a;

        /* renamed from: b  reason: collision with root package name */
        public int f17682b;
    }

    private void S1() {
        post("tokens/mall/getMsgList").M(new a());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void T1() {
        if (isDetached() || getActivity() == null || getActivity().isDestroyed() || getActivity().isFinishing() || getView() == null) {
            return;
        }
        if (this.f17677b == null) {
            FloatMarqueeScrollHolder floatMarqueeScrollHolder = new FloatMarqueeScrollHolder(getView().findViewById(R.id.item_view));
            this.f17677b = floatMarqueeScrollHolder;
            floatMarqueeScrollHolder.setOnScrollListener(new b());
        }
        this.f17677b.k(this.f17676a.get(0));
        getView().postDelayed(new c(), 5000L);
    }

    @Override // com.guochao.faceshow.aaspring.base.fragment.BaseFragment
    public int getLayoutId() {
        return R.layout.fragment_float_marquee;
    }

    @Override // com.guochao.faceshow.aaspring.base.fragment.BaseFragment
    public void initView(View view) {
        if (!EventBus.getDefault().isRegistered(this)) {
            EventBus.getDefault().register(this);
        }
        S1();
    }

    @Override // com.guochao.faceshow.aaspring.base.fragment.BaseFragment
    protected void loadData() {
    }

    @Override // com.guochao.faceshow.aaspring.base.fragment.BaseFragment, androidx.fragment.app.DialogFragment, androidx.fragment.app.Fragment
    public void onDestroyView() {
        super.onDestroyView();
        FloatMarqueeScrollHolder floatMarqueeScrollHolder = this.f17677b;
        if (floatMarqueeScrollHolder != null) {
            floatMarqueeScrollHolder.destroy();
        }
        if (EventBus.getDefault().isRegistered(this)) {
            EventBus.getDefault().unregister(this);
        }
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public void onSelfBuy(d dVar) {
        MarqueeUser marqueeUser = new MarqueeUser();
        marqueeUser.setCountry(getCurrentUser().country);
        marqueeUser.setMallName(dVar.f17681a);
        marqueeUser.setNickName(getCurrentUser().nickName);
        marqueeUser.setType(dVar.f17682b);
        marqueeUser.setUserId(getCurrentUser().userId);
        marqueeUser.setUserImg(getCurrentUser().img);
        List<MarqueeUser> list = this.f17676a;
        list.add(list.size() > 0 ? 1 : 0, marqueeUser);
    }
}
