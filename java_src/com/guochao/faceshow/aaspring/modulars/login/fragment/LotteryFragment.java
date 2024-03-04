package com.guochao.faceshow.aaspring.modulars.login.fragment;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.ValueAnimator;
import android.app.Dialog;
import android.os.Bundle;
import android.os.Handler;
import android.text.TextUtils;
import android.view.View;
import android.view.ViewGroup;
import android.view.WindowManager;
import android.view.animation.LinearInterpolator;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import butterknife.BindView;
import butterknife.OnClick;
import com.guochao.faceshow.BaseApplication;
import com.guochao.faceshow.R;
import com.guochao.faceshow.aaspring.base.dialog.FaceCastDialog;
import com.guochao.faceshow.aaspring.base.fragment.BaseDialogFragment;
import com.guochao.faceshow.aaspring.base.http.response.FaceCastBaseResponse;
import com.guochao.faceshow.aaspring.modulars.live.model.LotteryResult;
import com.guochao.faceshow.aaspring.utils.SoundPoolManager;
import com.guochao.faceshow.aaspring.utils.SvgaImageViewUtils;
import com.guochao.faceshow.signin.dialog.LotteryResultDialog;
import com.opensource.svgaplayer.SVGACallback;
import com.opensource.svgaplayer.SVGADrawable;
import com.opensource.svgaplayer.SVGAImageView;
import com.opensource.svgaplayer.SVGAParser;
import com.opensource.svgaplayer.SVGAVideoEntity;
import com.tencent.ugc.UGCTransitionRules;
import io.reactivex.k;
import java.util.ArrayList;
import java.util.List;
import org.jetbrains.annotations.NotNull;
import vh.o;
/* loaded from: classes3.dex */
public class LotteryFragment extends BaseDialogFragment implements View.OnClickListener {

    /* renamed from: b  reason: collision with root package name */
    LotteryResult f20456b;

    /* renamed from: f  reason: collision with root package name */
    ValueAnimator f20460f;
    @BindView
    SVGAImageView mSVGAImageView;
    @BindView
    TextView mTextViewDiamondCount;
    @BindView
    TextView mTextViewIKnow;
    @BindView
    View mViewFreeDiamonds;
    @BindView
    View mViewGrid;
    @BindView
    ViewGroup mViewGroupGrid;
    @BindView
    View mViewNewAvatar;
    @BindView
    View mViewResult;

    /* renamed from: a  reason: collision with root package name */
    Handler f20455a = new Handler();

    /* renamed from: c  reason: collision with root package name */
    boolean f20457c = false;

    /* renamed from: d  reason: collision with root package name */
    boolean f20458d = false;

    /* renamed from: e  reason: collision with root package name */
    List<ImageView> f20459e = new ArrayList();

    /* renamed from: g  reason: collision with root package name */
    int f20461g = 5;

    /* renamed from: h  reason: collision with root package name */
    Runnable f20462h = new c();

    /* loaded from: classes3.dex */
    class a implements Runnable {
        a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            LotteryFragment.this.mViewGrid.setVisibility(0);
            LotteryFragment.this.mViewGrid.setScaleX(0.0f);
            LotteryFragment.this.mViewGrid.setScaleY(0.0f);
            LotteryFragment.this.mViewGrid.animate().scaleY(1.0f).scaleX(1.0f).start();
        }
    }

    /* loaded from: classes3.dex */
    class b implements ValueAnimator.AnimatorUpdateListener {
        b() {
        }

        @Override // android.animation.ValueAnimator.AnimatorUpdateListener
        public void onAnimationUpdate(ValueAnimator valueAnimator) {
            LotteryFragment.this.Q1(((Float) valueAnimator.getAnimatedValue()).floatValue());
        }
    }

    /* loaded from: classes3.dex */
    class c implements Runnable {
        c() {
        }

        @Override // java.lang.Runnable
        public void run() {
            LotteryFragment lotteryFragment = LotteryFragment.this;
            int i9 = lotteryFragment.f20461g - 1;
            lotteryFragment.f20461g = i9;
            if (i9 <= 0) {
                lotteryFragment.mTextViewIKnow.setText(R.string.lottery_i_know);
                LotteryFragment.this.mTextViewIKnow.setEnabled(true);
                return;
            }
            lotteryFragment.mTextViewIKnow.setText(lotteryFragment.getResources().getString(R.string.lottery_i_know_second, String.valueOf(LotteryFragment.this.f20461g)));
            LotteryFragment lotteryFragment2 = LotteryFragment.this;
            lotteryFragment2.f20455a.postDelayed(lotteryFragment2.f20462h, 1000L);
        }
    }

    /* loaded from: classes3.dex */
    class d extends com.guochao.faceshow.aaspring.base.http.callback.c<LotteryResult> {
        d() {
        }

        @Override // com.guochao.faceshow.aaspring.base.http.callback.c
        /* renamed from: a */
        public void onResponse(@Nullable LotteryResult lotteryResult, @NonNull FaceCastBaseResponse<LotteryResult> faceCastBaseResponse) {
            LotteryFragment lotteryFragment = LotteryFragment.this;
            lotteryFragment.f20456b = lotteryResult;
            lotteryFragment.dismissAllowingStateLoss();
            if (lotteryResult == null || LotteryFragment.this.getActivity() == null || LotteryFragment.this.getActivity().isFinishing() || LotteryFragment.this.getActivity().isDestroyed()) {
                return;
            }
            try {
                String rewardDiamond = lotteryResult.getNewUserGiftBag().getRewardDiamond();
                p9.a.g().B(TextUtils.isEmpty(rewardDiamond) ? 0 : Integer.parseInt(rewardDiamond));
            } catch (Exception e10) {
                e10.printStackTrace();
            }
            LotteryResultDialog.showDialog(LotteryFragment.this.getActivity().getSupportFragmentManager(), lotteryResult);
        }

        @Override // com.guochao.faceshow.aaspring.base.http.callback.c
        public void onFailure(@NonNull g7.a<LotteryResult> aVar) {
        }
    }

    /* loaded from: classes3.dex */
    class e implements Runnable {
        e() {
        }

        @Override // java.lang.Runnable
        public void run() {
            if (LotteryFragment.this.getActivity() == null) {
                return;
            }
            LotteryFragment lotteryFragment = LotteryFragment.this;
            lotteryFragment.f20458d = true;
            lotteryFragment.R1(lotteryFragment.f20456b);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class f extends AnimatorListenerAdapter {
        f() {
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            super.onAnimationEnd(animator);
            LotteryFragment.this.mViewGrid.setVisibility(4);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class g implements SVGAParser.ParseCompletion {
        g() {
        }

        @Override // com.opensource.svgaplayer.SVGAParser.ParseCompletion
        public void onComplete(@NotNull SVGAVideoEntity sVGAVideoEntity) {
            SVGADrawable sVGADrawable = new SVGADrawable(sVGAVideoEntity);
            SvgaImageViewUtils.fitScreenWidth(sVGAVideoEntity, LotteryFragment.this.mSVGAImageView);
            LotteryFragment.this.mSVGAImageView.setImageDrawable(sVGADrawable);
            LotteryFragment.this.mSVGAImageView.startAnimation();
        }

        @Override // com.opensource.svgaplayer.SVGAParser.ParseCompletion
        public void onError() {
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class h implements SVGACallback {

        /* loaded from: classes3.dex */
        class a implements o<Integer, Object> {

            /* renamed from: a  reason: collision with root package name */
            final /* synthetic */ SVGAVideoEntity f20471a;

            a(SVGAVideoEntity sVGAVideoEntity) {
                this.f20471a = sVGAVideoEntity;
            }

            @Override // vh.o
            /* renamed from: a */
            public Object apply(Integer num) throws Exception {
                this.f20471a.release();
                return 1;
            }
        }

        h() {
        }

        @Override // com.opensource.svgaplayer.SVGACallback
        public void onFinished() {
            SVGAVideoEntity mVideoItem = LotteryFragment.this.mSVGAImageView.getMVideoItem();
            if (mVideoItem != null) {
                k.just(1).map(new a(mVideoItem)).subscribeOn(di.a.b()).subscribe();
            }
        }

        @Override // com.opensource.svgaplayer.SVGACallback
        public void onPause() {
        }

        @Override // com.opensource.svgaplayer.SVGACallback
        public void onRepeat() {
        }

        @Override // com.opensource.svgaplayer.SVGACallback
        public void onStep(int i9, double d10) {
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void R1(LotteryResult lotteryResult) {
        if (lotteryResult == null || lotteryResult.getNewUserGiftBag() == null || !this.f20458d) {
            return;
        }
        if (!TextUtils.isEmpty(lotteryResult.getNewUserGiftBag().getNewFCerHeadImg())) {
            this.mViewNewAvatar.setVisibility(0);
        }
        String rewardDiamond = lotteryResult.getNewUserGiftBag().getRewardDiamond();
        if (!TextUtils.isEmpty(rewardDiamond) && !"0".equals(rewardDiamond)) {
            this.mViewFreeDiamonds.setVisibility(0);
            this.mTextViewDiamondCount.setText(getString(R.string.lottery_free_diamonds, rewardDiamond));
        } else {
            this.mViewFreeDiamonds.setVisibility(8);
        }
        try {
            p9.a.g().B(TextUtils.isEmpty(rewardDiamond) ? 0 : Integer.parseInt(rewardDiamond));
        } catch (Exception e10) {
            e10.printStackTrace();
        }
        getCurrentUser().setIsOpenTurnTable(0);
        this.mViewGrid.animate().scaleX(0.0f).scaleY(0.0f).setListener(new f()).start();
        this.mViewResult.setScaleX(0.0f);
        this.mViewResult.setScaleY(0.0f);
        this.mViewResult.setVisibility(0);
        this.mViewResult.animate().scaleY(1.0f).scaleX(1.0f).start();
        this.f20455a.postDelayed(this.f20462h, 1000L);
        SvgaImageViewUtils.getParser().decodeFromInputStream(getResources().openRawResource(R.raw.lottery_svga), "lottery", new g(), true);
        this.mSVGAImageView.setCallback(new h());
    }

    void Q1(float f10) {
        for (ImageView imageView : this.f20459e) {
            imageView.setScaleX(f10);
            imageView.setScaleY(f10);
        }
    }

    @OnClick
    public void dismiss(View view) {
        dismissAllowingStateLoss();
    }

    @Override // com.guochao.faceshow.aaspring.base.fragment.BaseFragment
    public int getLayoutId() {
        return R.layout.fragment_lottery;
    }

    @Override // com.guochao.faceshow.aaspring.base.fragment.BaseFragment
    public void initView(View view) {
        this.mTextViewIKnow.setText(getResources().getString(R.string.lottery_i_know_second, String.valueOf(this.f20461g)));
        this.mTextViewIKnow.setEnabled(false);
        this.mViewGrid.setVisibility(4);
        this.f20455a.post(new a());
        int childCount = this.mViewGroupGrid.getChildCount();
        ValueAnimator ofFloat = ValueAnimator.ofFloat(1.12f, 1.0f, 1.12f);
        ofFloat.setRepeatMode(1);
        ofFloat.setInterpolator(new LinearInterpolator());
        ofFloat.addUpdateListener(new b());
        ofFloat.setDuration(1000L);
        for (int i9 = 0; i9 < childCount; i9++) {
            ViewGroup viewGroup = (ViewGroup) this.mViewGroupGrid.getChildAt(i9);
            int childCount2 = viewGroup.getChildCount();
            for (int i10 = 0; i10 < childCount2; i10++) {
                ViewGroup viewGroup2 = (ViewGroup) viewGroup.getChildAt(i10);
                this.f20459e.add((ImageView) viewGroup2.getChildAt(1));
                viewGroup2.setOnClickListener(this);
            }
        }
        ofFloat.setRepeatCount(-1);
        ofFloat.start();
        this.f20460f = ofFloat;
    }

    @Override // com.guochao.faceshow.aaspring.base.fragment.BaseFragment
    public void loadData() {
    }

    @Override // com.guochao.faceshow.aaspring.base.fragment.BaseDialogFragment, com.guochao.faceshow.aaspring.base.fragment.BaseFragment, androidx.fragment.app.DialogFragment, androidx.fragment.app.Fragment
    public void onActivityCreated(@Nullable Bundle bundle) {
        super.onActivityCreated(bundle);
        if (getDialog() != null) {
            getDialog().setCanceledOnTouchOutside(false);
            getDialog().setCancelable(false);
            WindowManager.LayoutParams attributes = getDialog().getWindow().getAttributes();
            attributes.gravity = 17;
            attributes.height = getResources().getDisplayMetrics().heightPixels;
            getView().findViewById(R.id.content).getLayoutParams().height = getResources().getDisplayMetrics().heightPixels;
            getDialog().getWindow().setAttributes(attributes);
            getDialog().getWindow().getDecorView().setSystemUiVisibility(UGCTransitionRules.DEFAULT_IMAGE_HEIGHT);
            getDialog().getWindow().setStatusBarColor(0);
            getDialog().getWindow().setDimAmount(0.6f);
        }
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        if (this.f20457c) {
            return;
        }
        this.f20457c = true;
        ValueAnimator valueAnimator = this.f20460f;
        if (valueAnimator != null) {
            valueAnimator.cancel();
        }
        Q1(1.0f);
        ((ImageView) ((ViewGroup) view).getChildAt(1)).setImageResource(R.mipmap.gift_open);
        SoundPoolManager.getInstance(BaseApplication.getInstance()).playRaw(R.raw.newbie_gift);
        post("tokens/user/info/slyDerAdventures").M(new d());
        this.f20455a.postDelayed(new e(), 1000L);
    }

    @Override // androidx.fragment.app.DialogFragment
    @NonNull
    public Dialog onCreateDialog(@Nullable Bundle bundle) {
        FaceCastDialog createCenterDialog = createCenterDialog();
        createCenterDialog.setCancelable(false);
        createCenterDialog.setCanceledOnTouchOutside(false);
        return createCenterDialog;
    }

    @Override // com.guochao.faceshow.aaspring.base.fragment.BaseFragment, androidx.fragment.app.Fragment
    public void onDestroy() {
        super.onDestroy();
        this.f20455a.removeMessages(0);
    }
}
