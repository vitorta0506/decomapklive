package com.guochao.faceshow.aaspring.modulars.live.common;

import android.animation.AnimatorSet;
import android.animation.ObjectAnimator;
import android.os.Bundle;
import android.os.Handler;
import android.text.TextUtils;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewTreeObserver;
import android.view.animation.DecelerateInterpolator;
import android.view.animation.LinearInterpolator;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.fragment.app.Fragment;
import androidx.lifecycle.LifecycleOwner;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import butterknife.BindView;
import butterknife.OnClick;
import com.guochao.faceshow.R;
import com.guochao.faceshow.aaspring.base.http.response.FaceCastBaseResponse;
import com.guochao.faceshow.aaspring.beans.AudienceInformation;
import com.guochao.faceshow.aaspring.manager.DownloadableResourceManager;
import com.guochao.faceshow.aaspring.modulars.live.adapter.MarqueeRecycleViewAdapter;
import com.guochao.faceshow.aaspring.modulars.live.fragment.RichListDialogFragment;
import com.guochao.faceshow.aaspring.modulars.live.model.BaseLiveMessage;
import com.guochao.faceshow.aaspring.modulars.live.model.LiveMessageModel;
import com.guochao.faceshow.aaspring.modulars.live.model.PkResult;
import com.guochao.faceshow.aaspring.modulars.live.model.PkResultMessage;
import com.guochao.faceshow.aaspring.modulars.live.model.PkUser;
import com.guochao.faceshow.aaspring.utils.FriendFromSource;
import com.guochao.faceshow.aaspring.utils.Language;
import com.guochao.faceshow.aaspring.utils.LogUtils;
import com.guochao.faceshow.aaspring.utils.SvgaImageViewUtils;
import com.guochao.faceshow.aaspring.views.AvatarView;
import com.guochao.faceshow.aaspring.views.LiveScrollToClearScreenView;
import com.guochao.faceshow.aaspring.views.PKProgressView;
import com.guochao.faceshow.aaspring.views.RatioFrameLayout;
import com.guochao.faceshow.utils.BaseConfig;
import com.guochao.faceshow.utils.DensityUtil;
import com.guochao.faceshow.utils.Foreground;
import com.guochao.faceshow.utils.TimeUtil;
import com.guochao.faceshow.views.SvgaImageViewV2;
import com.opensource.svgaplayer.SVGACallback;
import com.opensource.svgaplayer.SVGAImageView;
import com.opensource.svgaplayer.SVGAVideoEntity;
import d9.e;
import java.util.ArrayList;
import java.util.List;
import java.util.Objects;
import java.util.Random;
import java.util.TimerTask;
/* loaded from: classes3.dex */
public class PKLiveInfoFragment extends BaseLiveInfoFragment implements View.OnClickListener {
    public static final int[] D = {R.mipmap.icon_zb_jin1, R.mipmap.icon_zb_yin1, R.mipmap.icon_zb_tong1};
    public static final int[] E = {R.mipmap.icon_zb_jin1_123, R.mipmap.icon_zb_yin1_123, R.mipmap.icon_zb_tong1_123};
    private long A;
    private long B;
    PkUser.PkUserInfo C;
    @BindView
    View addSVGA;

    /* renamed from: c  reason: collision with root package name */
    PkUser f18910c;

    /* renamed from: d  reason: collision with root package name */
    boolean f18911d;

    /* renamed from: f  reason: collision with root package name */
    boolean f18913f;

    /* renamed from: g  reason: collision with root package name */
    int f18914g;

    /* renamed from: h  reason: collision with root package name */
    private boolean f18915h;
    @BindView
    ImageView ivAdd;

    /* renamed from: k  reason: collision with root package name */
    private List<String> f18918k;

    /* renamed from: l  reason: collision with root package name */
    private MarqueeRecycleViewAdapter f18919l;

    /* renamed from: m  reason: collision with root package name */
    long f18920m;
    @BindView
    View mAnimEndLeftView;
    @BindView
    View mAnimEndRightView;
    @BindView
    SVGAImageView mAnimStartLeftView;
    @BindView
    SVGAImageView mAnimStartRightView;
    @BindView
    ImageView mImageViewCountryFlag;
    @BindView
    View mLeftArea;
    @BindView
    TextView mLeftCoinTextView;
    @BindView
    LinearLayout mLlImageViewCountryFlag;
    @BindView
    PKProgressView mPKProgressView;
    @BindView
    RatioFrameLayout mRatioFrameLayout;
    @BindView
    View mRightArea;
    @BindView
    TextView mRightCoinTextView;
    @BindView
    SVGAImageView mSVGAImageViewVS;
    @BindView
    TextView mTextViewCountDown;
    @BindView
    TextView mTextViewPunishTimeTip;
    @BindView
    View marqueeView;

    /* renamed from: n  reason: collision with root package name */
    long f18921n;

    /* renamed from: o  reason: collision with root package name */
    long f18922o;

    /* renamed from: p  reason: collision with root package name */
    long f18923p;
    @BindView
    TextView pkBroadcastName;
    @BindView
    RecyclerView recyclerView;

    /* renamed from: s  reason: collision with root package name */
    com.guochao.faceshow.views.g f18926s;

    /* renamed from: u  reason: collision with root package name */
    long f18928u;

    /* renamed from: w  reason: collision with root package name */
    private int f18930w;

    /* renamed from: a  reason: collision with root package name */
    AvatarView[] f18908a = new AvatarView[3];

    /* renamed from: b  reason: collision with root package name */
    AvatarView[] f18909b = new AvatarView[3];

    /* renamed from: e  reason: collision with root package name */
    boolean f18912e = false;

    /* renamed from: i  reason: collision with root package name */
    private boolean f18916i = false;

    /* renamed from: j  reason: collision with root package name */
    private boolean f18917j = false;

    /* renamed from: q  reason: collision with root package name */
    private boolean f18924q = false;

    /* renamed from: r  reason: collision with root package name */
    private boolean f18925r = false;

    /* renamed from: t  reason: collision with root package name */
    private Handler f18927t = new Handler();

    /* renamed from: v  reason: collision with root package name */
    private boolean f18929v = false;

    /* renamed from: x  reason: collision with root package name */
    private int f18931x = 2000;

    /* renamed from: y  reason: collision with root package name */
    LinearInterpolator f18932y = new LinearInterpolator();

    /* renamed from: z  reason: collision with root package name */
    private Runnable f18933z = new m();

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class a extends DownloadableResourceManager.SvgaCallback {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ SVGAImageView f18934a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        a(LifecycleOwner lifecycleOwner, SVGAImageView sVGAImageView) {
            super(lifecycleOwner);
            this.f18934a = sVGAImageView;
        }

        @Override // com.guochao.faceshow.aaspring.manager.DownloadableResourceManager.SvgaCallback
        public void success(@NonNull SVGAVideoEntity sVGAVideoEntity) {
            this.f18934a.setVideoItem(sVGAVideoEntity);
            this.f18934a.startAnimation();
            SvgaImageViewUtils.fitImageView(sVGAVideoEntity, this.f18934a);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class b extends p {

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ View f18936b;

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ SVGAImageView f18937c;

        /* renamed from: d  reason: collision with root package name */
        final /* synthetic */ int f18938d;

        /* renamed from: e  reason: collision with root package name */
        final /* synthetic */ int f18939e;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        b(SVGAImageView sVGAImageView, View view, SVGAImageView sVGAImageView2, int i9, int i10) {
            super(sVGAImageView);
            this.f18936b = view;
            this.f18937c = sVGAImageView2;
            this.f18938d = i9;
            this.f18939e = i10;
        }

        @Override // com.guochao.faceshow.aaspring.modulars.live.common.PKLiveInfoFragment.p, com.opensource.svgaplayer.SVGACallback
        public void onFinished() {
            super.onFinished();
            PKLiveInfoFragment.this.g2(this.f18936b, this.f18937c, this.f18938d, this.f18939e);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class c implements ViewTreeObserver.OnGlobalLayoutListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ SVGAImageView f18941a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ View f18942b;

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ int f18943c;

        /* renamed from: d  reason: collision with root package name */
        final /* synthetic */ int f18944d;

        c(SVGAImageView sVGAImageView, View view, int i9, int i10) {
            this.f18941a = sVGAImageView;
            this.f18942b = view;
            this.f18943c = i9;
            this.f18944d = i10;
        }

        @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
        public void onGlobalLayout() {
            int i9;
            if (this.f18941a.getWidth() > 0) {
                this.f18941a.getViewTreeObserver().removeOnGlobalLayoutListener(this);
                int[] iArr = new int[2];
                int[] iArr2 = new int[2];
                this.f18942b.getLocationInWindow(iArr);
                this.f18941a.getLocationInWindow(iArr2);
                int width = this.f18942b.getWidth();
                this.f18942b.getHeight();
                int width2 = this.f18941a.getWidth();
                int height = (int) ((((iArr[1] - iArr2[1]) - (this.f18941a.getHeight() * 0.6f)) + (this.f18943c * 0.6f)) - DensityUtil.dp2px(5.0f));
                if (this.f18941a == PKLiveInfoFragment.this.mAnimStartRightView) {
                    i9 = (((iArr[0] - iArr2[0]) - ((width2 - width) / 2)) - DensityUtil.dp2px(10.0f)) + this.f18944d;
                } else {
                    i9 = ((iArr[0] - iArr2[0]) - ((width2 - width) / 2)) - this.f18944d;
                }
                AnimatorSet animatorSet = new AnimatorSet();
                ObjectAnimator ofFloat = ObjectAnimator.ofFloat(this.f18941a, "translationX", i9);
                ObjectAnimator ofFloat2 = ObjectAnimator.ofFloat(this.f18941a, "translationY", height);
                ObjectAnimator ofFloat3 = ObjectAnimator.ofFloat(this.f18941a, "scaleX", 0.6f);
                ObjectAnimator ofFloat4 = ObjectAnimator.ofFloat(this.f18941a, "scaleY", 0.6f);
                animatorSet.setInterpolator(new DecelerateInterpolator());
                animatorSet.playTogether(ofFloat, ofFloat2, ofFloat3, ofFloat4);
                animatorSet.setStartDelay(500L);
                animatorSet.setDuration(200L);
                animatorSet.start();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class d extends com.guochao.faceshow.views.g {

        /* renamed from: a  reason: collision with root package name */
        boolean f18946a;

        d(long j10, long j11) {
            super(j10, j11);
            this.f18946a = false;
        }

        @Override // com.guochao.faceshow.views.g
        public void onFinish() {
            PKLiveInfoFragment.this.p2(0L, false);
            if (PKLiveInfoFragment.this.getCurrentLiveRoom().isBroadCaster()) {
                PKLiveInfoFragment.this.mILiveRoomManager.d(2, true);
            }
        }

        @Override // com.guochao.faceshow.views.g
        public void onTick(long j10) {
            PKLiveInfoFragment.this.p2(j10, false);
            if (!PKLiveInfoFragment.this.getCurrentLiveRoom().isBroadCaster() || this.f18946a || ((int) ((j10 + 500) / 1000)) > 3) {
                return;
            }
            this.f18946a = true;
            x.n().f();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class e extends com.guochao.faceshow.aaspring.base.http.callback.c<PkResult> {

        /* JADX INFO: Access modifiers changed from: package-private */
        /* loaded from: classes3.dex */
        public class a implements Runnable {
            a() {
            }

            @Override // java.lang.Runnable
            public void run() {
                PKLiveInfoFragment.this.e2();
            }
        }

        e() {
        }

        @Override // com.guochao.faceshow.aaspring.base.http.callback.c
        /* renamed from: a */
        public void onResponse(@Nullable PkResult pkResult, @NonNull FaceCastBaseResponse<PkResult> faceCastBaseResponse) {
            int i9;
            PkUser pkUser;
            if (pkResult == null) {
                LogUtils.i("LiveRoom", "pk result fail: list is null");
            } else if (pkResult.getRemainTime() > 0) {
                PKLiveInfoFragment.this.f18927t.postDelayed(new a(), pkResult.getRemainTime());
            } else {
                if (TextUtils.isEmpty(pkResult.getLeftAnchorMsg().getIsWin())) {
                    pkResult.getLeftAnchorMsg().setIsWin("0");
                }
                try {
                    i9 = Integer.parseInt(pkResult.getLeftAnchorMsg().getIsWin());
                } catch (Exception unused) {
                    i9 = 1;
                }
                x.n().C(i9);
                if (PKLiveInfoFragment.this.getCurrentLiveRoom().isBroadCaster()) {
                    PKLiveInfoFragment pKLiveInfoFragment = PKLiveInfoFragment.this;
                    if (pKLiveInfoFragment.mILiveRoomManager != null && (pkUser = pKLiveInfoFragment.f18910c) != null && pkUser.getRightAnchorMsg() != null && pkResult.getLeftAnchorMsg() != null) {
                        PKLiveInfoFragment pKLiveInfoFragment2 = PKLiveInfoFragment.this;
                        pKLiveInfoFragment2.mILiveRoomManager.c(i9, pKLiveInfoFragment2.f18910c.getRightAnchorMsg().getUserId(), PKLiveInfoFragment.this.f18910c.getRightAnchorMsg().getNickName(), pkResult.getLeftAnchorMsg().getPkEarnings(), pkResult.getRightAnchorMsg().getPkEarnings(), true, false);
                        try {
                            PKLiveInfoFragment.this.C2(Long.parseLong(pkResult.getLeftAnchorMsg().getPkEarnings()), Long.parseLong(pkResult.getRightAnchorMsg().getPkEarnings()));
                        } catch (Exception unused2) {
                        }
                    }
                }
                PKLiveInfoFragment.this.n2(i9);
                PKLiveInfoFragment.this.f18911d = true;
            }
        }

        @Override // com.guochao.faceshow.aaspring.base.http.callback.c
        public void onFailure(@NonNull g7.a<PkResult> aVar) {
            LogUtils.i("LiveRoom", "pk result fail:" + aVar.a() + "   " + aVar.c());
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class f implements Runnable {
        f() {
        }

        @Override // java.lang.Runnable
        public void run() {
            PKLiveInfoFragment.this.mILiveRoomManager.d(1, true);
        }
    }

    /* loaded from: classes3.dex */
    class g implements View.OnTouchListener {
        g() {
        }

        @Override // android.view.View.OnTouchListener
        public boolean onTouch(View view, MotionEvent motionEvent) {
            return true;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class h extends com.guochao.faceshow.views.g {
        h(long j10, long j11) {
            super(j10, j11);
        }

        @Override // com.guochao.faceshow.views.g
        public void onFinish() {
            PKLiveInfoFragment.this.mTextViewCountDown.setText("0");
            PKLiveInfoFragment.this.mILiveRoomManager.getCurrentLiveRoom().setInPkPunishmentTime(true);
            PKLiveInfoFragment.this.v2();
        }

        @Override // com.guochao.faceshow.views.g
        public void onTick(long j10) {
            PKLiveInfoFragment.this.p2(j10, true);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class i extends DownloadableResourceManager.SvgaCallback {
        i(LifecycleOwner lifecycleOwner) {
            super(lifecycleOwner);
        }

        @Override // com.guochao.faceshow.aaspring.manager.DownloadableResourceManager.SvgaCallback
        public void success(@NonNull SVGAVideoEntity sVGAVideoEntity) {
            SvgaImageViewUtils.fitImageView(sVGAVideoEntity, PKLiveInfoFragment.this.mSVGAImageViewVS);
            PKLiveInfoFragment.this.mSVGAImageViewVS.setLoops(1);
            PKLiveInfoFragment.this.mSVGAImageViewVS.setVideoItem(sVGAVideoEntity);
            PKLiveInfoFragment.this.mSVGAImageViewVS.startAnimation();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class j extends com.guochao.faceshow.aaspring.base.http.callback.c<Integer> {
        j() {
        }

        @Override // com.guochao.faceshow.aaspring.base.http.callback.c
        /* renamed from: a */
        public void onResponse(@Nullable Integer num, @NonNull FaceCastBaseResponse<Integer> faceCastBaseResponse) {
            if (num != null && num.intValue() == 1) {
                PKLiveInfoFragment.this.ivAdd.setVisibility(8);
            } else {
                PKLiveInfoFragment.this.ivAdd.setVisibility(0);
            }
        }

        @Override // com.guochao.faceshow.aaspring.base.http.callback.c
        public void onFailure(@NonNull g7.a<Integer> aVar) {
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class k implements e.a<Boolean> {
        k() {
        }

        @Override // d9.e.a
        /* renamed from: b */
        public void a(int i9, String str, @Nullable Boolean bool) {
        }

        @Override // d9.e.a
        /* renamed from: c */
        public void onSuccess(@NonNull Boolean bool) {
            PKLiveInfoFragment.this.mTextViewCountDown.setVisibility(0);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class l implements Runnable {
        l() {
        }

        @Override // java.lang.Runnable
        public void run() {
            PKLiveInfoFragment.this.w2();
        }
    }

    /* loaded from: classes3.dex */
    class m implements Runnable {

        /* loaded from: classes3.dex */
        class a extends TimerTask {

            /* renamed from: com.guochao.faceshow.aaspring.modulars.live.common.PKLiveInfoFragment$m$a$a  reason: collision with other inner class name */
            /* loaded from: classes3.dex */
            class C0180a implements d9.i {
                C0180a() {
                }

                @Override // d9.i
                public void onCallback() {
                    PKLiveInfoFragment.this.f18918k.clear();
                    if (PKLiveInfoFragment.this.f18930w == PKLiveInfoFragment.this.getCurrentLiveRoom().getIntroductionToPlay().size() - 1) {
                        PKLiveInfoFragment pKLiveInfoFragment = PKLiveInfoFragment.this;
                        pKLiveInfoFragment.u2(0, false, pKLiveInfoFragment.f18915h);
                        return;
                    }
                    PKLiveInfoFragment pKLiveInfoFragment2 = PKLiveInfoFragment.this;
                    pKLiveInfoFragment2.u2(pKLiveInfoFragment2.f18930w + 1, false, PKLiveInfoFragment.this.f18915h);
                }
            }

            a() {
            }

            @Override // java.util.TimerTask, java.lang.Runnable
            public void run() {
                PKLiveInfoFragment.this.f18927t.removeCallbacks(PKLiveInfoFragment.this.f18933z);
                PKLiveInfoFragment pKLiveInfoFragment = PKLiveInfoFragment.this;
                if (pKLiveInfoFragment.marqueeView == null || pKLiveInfoFragment.f18915h) {
                    return;
                }
                PKLiveInfoFragment pKLiveInfoFragment2 = PKLiveInfoFragment.this;
                u.e(pKLiveInfoFragment2.marqueeView, pKLiveInfoFragment2.recyclerView, new C0180a());
            }
        }

        /* loaded from: classes3.dex */
        class b extends TimerTask {

            /* loaded from: classes3.dex */
            class a implements d9.i {
                a() {
                }

                @Override // d9.i
                public void onCallback() {
                    PKLiveInfoFragment.this.f18918k.clear();
                    if (PKLiveInfoFragment.this.f18930w == PKLiveInfoFragment.this.getCurrentLiveRoom().getIntroductionToPlay().size() - 1) {
                        PKLiveInfoFragment pKLiveInfoFragment = PKLiveInfoFragment.this;
                        pKLiveInfoFragment.u2(0, false, pKLiveInfoFragment.f18915h);
                        return;
                    }
                    PKLiveInfoFragment pKLiveInfoFragment2 = PKLiveInfoFragment.this;
                    pKLiveInfoFragment2.u2(pKLiveInfoFragment2.f18930w + 1, false, PKLiveInfoFragment.this.f18915h);
                }
            }

            b() {
            }

            @Override // java.util.TimerTask, java.lang.Runnable
            public void run() {
                PKLiveInfoFragment.this.f18927t.removeCallbacks(PKLiveInfoFragment.this.f18933z);
                PKLiveInfoFragment pKLiveInfoFragment = PKLiveInfoFragment.this;
                if (pKLiveInfoFragment.marqueeView == null || pKLiveInfoFragment.f18915h) {
                    return;
                }
                PKLiveInfoFragment pKLiveInfoFragment2 = PKLiveInfoFragment.this;
                u.e(pKLiveInfoFragment2.marqueeView, pKLiveInfoFragment2.recyclerView, new a());
            }
        }

        m() {
        }

        @Override // java.lang.Runnable
        public void run() {
            if (PKLiveInfoFragment.this.recyclerView == null) {
                return;
            }
            if (Language.ARABIC.equalsIgnoreCase(q7.a.e().c())) {
                if (!PKLiveInfoFragment.this.recyclerView.canScrollHorizontally(-3)) {
                    PKLiveInfoFragment.this.f18927t.postDelayed(new a(), PKLiveInfoFragment.this.f18931x);
                    return;
                } else {
                    PKLiveInfoFragment pKLiveInfoFragment = PKLiveInfoFragment.this;
                    pKLiveInfoFragment.recyclerView.smoothScrollBy(-4, 0, pKLiveInfoFragment.f18932y, 50);
                }
            } else if (!PKLiveInfoFragment.this.recyclerView.canScrollHorizontally(3)) {
                PKLiveInfoFragment.this.f18927t.postDelayed(new b(), PKLiveInfoFragment.this.f18931x);
                return;
            } else {
                PKLiveInfoFragment pKLiveInfoFragment2 = PKLiveInfoFragment.this;
                pKLiveInfoFragment2.recyclerView.smoothScrollBy(4, 0, pKLiveInfoFragment2.f18932y, 50);
            }
            PKLiveInfoFragment.this.f18927t.postDelayed(this, 50L);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class n extends DownloadableResourceManager.SvgaCallback {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ SVGAImageView f18962a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        n(LifecycleOwner lifecycleOwner, SVGAImageView sVGAImageView) {
            super(lifecycleOwner);
            this.f18962a = sVGAImageView;
        }

        @Override // com.guochao.faceshow.aaspring.manager.DownloadableResourceManager.SvgaCallback
        public void success(@NonNull SVGAVideoEntity sVGAVideoEntity) {
            this.f18962a.setVideoItem(sVGAVideoEntity);
            this.f18962a.startAnimation();
            SvgaImageViewUtils.fitImageView(sVGAVideoEntity, this.f18962a);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class o extends DownloadableResourceManager.SvgaCallback {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ SVGAImageView f18964a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        o(LifecycleOwner lifecycleOwner, SVGAImageView sVGAImageView) {
            super(lifecycleOwner);
            this.f18964a = sVGAImageView;
        }

        @Override // com.guochao.faceshow.aaspring.manager.DownloadableResourceManager.SvgaCallback
        public void success(@NonNull SVGAVideoEntity sVGAVideoEntity) {
            this.f18964a.setVideoItem(sVGAVideoEntity);
            this.f18964a.startAnimation();
            SvgaImageViewUtils.fitImageView(sVGAVideoEntity, this.f18964a);
        }
    }

    /* loaded from: classes3.dex */
    static class p implements SVGACallback {

        /* renamed from: a  reason: collision with root package name */
        SVGAImageView f18966a;

        public p(SVGAImageView sVGAImageView) {
            this.f18966a = sVGAImageView;
        }

        @Override // com.opensource.svgaplayer.SVGACallback
        public void onFinished() {
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

    private void B2(List<AudienceInformation> list, AvatarView[] avatarViewArr) {
        int size = list == null ? -1 : list.size();
        int i9 = 0;
        if (size == -1) {
            while (i9 < avatarViewArr.length) {
                AvatarView avatarView = avatarViewArr[i9];
                if (avatarView != null) {
                    avatarView.b(null, D[i9]);
                }
                i9++;
            }
            return;
        }
        while (i9 < 3) {
            AvatarView avatarView2 = avatarViewArr[i9];
            if (avatarView2 != null) {
                if (size > i9) {
                    avatarViewArr[i9].setDefaultAvatarRes(R.mipmap.default_head_space);
                    avatarView2.b(list.get(i9), E[i9]);
                } else {
                    avatarViewArr[i9].setDefaultAvatarRes(-1);
                    avatarView2.b(null, D[i9]);
                }
            }
            i9++;
        }
    }

    private void addFocus() {
        ib.b.b(this.C.getUserId(), FriendFromSource.LIVE, getActivity(), new hb.b() { // from class: com.guochao.faceshow.aaspring.modulars.live.common.v
            @Override // hb.b
            public /* synthetic */ void onFail(Object obj) {
                hb.a.a(this, obj);
            }

            @Override // hb.b
            public final void onResponse(Object obj) {
                PKLiveInfoFragment.this.k2((String) obj);
            }
        });
    }

    private void d2() {
        if (!getCurrentLiveRoom().isBroadCaster() && !this.f18913f) {
            post("user/attention/getIsAttention").D("account", this.f18910c.getRightAnchorMsg().getUserId()).M(new j());
        } else if ("1".equals(this.f18910c.getRightAnchorMsg().getIsAttenion())) {
            this.ivAdd.setVisibility(8);
        } else {
            this.ivAdd.setVisibility(0);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void e2() {
        if (getCurrentLiveRoom().isBroadCaster()) {
            post("tokens/live/pk/getPkVictoryOrDefeat").M(new e());
        }
    }

    private void f2() {
        if (this.f18912e) {
            PkUser pkUser = this.f18910c;
            if (pkUser != null) {
                C2(pkUser.getLeftAnchorMsg().getFCoinCount(), this.f18910c.getRightAnchorMsg().getFCoinCount());
            }
            n2(this.f18914g);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void g2(View view, SVGAImageView sVGAImageView, int i9, int i10) {
        sVGAImageView.getViewTreeObserver().addOnGlobalLayoutListener(new c(sVGAImageView, view, i9, i10));
    }

    public static PKLiveInfoFragment h2(long j10, long j11, long j12, boolean z10) {
        PKLiveInfoFragment pKLiveInfoFragment = new PKLiveInfoFragment();
        Bundle bundle = new Bundle();
        bundle.putLong("server", j10);
        bundle.putLong("gameEnd", j11);
        bundle.putLong("punishEnd", j12);
        bundle.putBoolean("poll", z10);
        pKLiveInfoFragment.setArguments(bundle);
        return pKLiveInfoFragment;
    }

    private void i2(View view) {
        BasePkLiveRoomFragment basePkLiveRoomFragment;
        if (this.f18924q || (basePkLiveRoomFragment = (BasePkLiveRoomFragment) getParentFragment()) == null || basePkLiveRoomFragment.M5 == null) {
            return;
        }
        if (this.f18922o == -1 && this.f18921n == -1) {
            try {
                this.f18922o = Long.parseLong(this.f18910c.getPkPunishEndTime());
                this.f18921n = Long.parseLong(this.f18910c.getPkingEndTime());
            } catch (Exception unused) {
            }
        }
        this.f18923p = com.guochao.faceshow.aaspring.manager.i.u().s().getServerTimeDiff() - (this.f18920m - System.currentTimeMillis());
        this.f18928u = System.currentTimeMillis();
        q2(this.f18923p);
        PkUser pkUser = basePkLiveRoomFragment.M5;
        this.f18910c = pkUser;
        if (pkUser != null) {
            PkUser.PkUserInfo rightAnchorMsg = pkUser.getRightAnchorMsg();
            this.C = rightAnchorMsg;
            if (rightAnchorMsg != null) {
                this.pkBroadcastName.setText(rightAnchorMsg.getNickName());
                if (BaseConfig.isChinese()) {
                    this.mLlImageViewCountryFlag.setVisibility(8);
                } else {
                    hc.a.h(this.mImageViewCountryFlag, this.C.getCountryFlag(), R.mipmap.ic_earth);
                }
                d2();
            }
        }
        this.f18924q = true;
        LiveScrollToClearScreenView liveScrollToClearScreenView = basePkLiveRoomFragment.mLiveScrollToClearScreenView;
        liveScrollToClearScreenView.j(this.mLeftArea, this);
        liveScrollToClearScreenView.j(this.mRightArea, this);
        if (!getCurrentLiveRoom().isBroadCaster() && (this.f18921n - this.f18920m) - this.f18923p < 0) {
            this.f18916i = true;
            PkUser pkUser2 = this.f18910c;
            if (pkUser2 != null) {
                String pkWinOrFail = pkUser2.getLeftAnchorMsg().getPkWinOrFail();
                if (!TextUtils.isEmpty(pkWinOrFail)) {
                    try {
                        this.f18914g = Integer.parseInt(pkWinOrFail);
                        this.f18912e = true;
                    } catch (Exception unused2) {
                    }
                }
            }
        } else {
            o2();
        }
        this.f18926s = new h((this.f18921n - this.f18920m) - this.f18923p, 1000L);
        this.mTextViewCountDown.setVisibility(0);
        this.f18926s.start();
        this.f18908a[0] = (AvatarView) view.findViewById(R.id.left_1);
        this.f18908a[1] = (AvatarView) view.findViewById(R.id.left_2);
        this.f18908a[2] = (AvatarView) view.findViewById(R.id.left_3);
        this.f18909b[0] = (AvatarView) view.findViewById(R.id.right_1);
        this.f18909b[1] = (AvatarView) view.findViewById(R.id.right_2);
        this.f18909b[2] = (AvatarView) view.findViewById(R.id.right_3);
        for (int i9 = 0; i9 < 3; i9++) {
            this.f18908a[i9].setDefaultAvatarRes(-1);
            this.f18909b[i9].setDefaultAvatarRes(-1);
            AvatarView avatarView = this.f18908a[i9];
            int[] iArr = D;
            avatarView.b(null, iArr[i9]);
            this.f18909b[i9].b(null, iArr[i9]);
            this.f18908a[i9].setAvatarRatio(1.4909091f);
            this.f18909b[i9].setAvatarRatio(1.4909091f);
        }
        C2(0L, 0L);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void j2() {
        this.ivAdd.setVisibility(8);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void k2(String str) {
        this.ivAdd.setEnabled(true);
        ib.a.a(this.ivAdd, (SvgaImageViewV2) this.addSVGA, R.raw.focus_large);
        this.ivAdd.postDelayed(new Runnable() { // from class: com.guochao.faceshow.aaspring.modulars.live.common.w
            @Override // java.lang.Runnable
            public final void run() {
                PKLiveInfoFragment.this.j2();
            }
        }, 480L);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void n2(int i9) {
        if (!Foreground.get().isForeground()) {
            this.f18914g = i9;
            this.f18925r = true;
        } else if (this.f18917j) {
        } else {
            if (i9 == 0) {
                t2(this.mAnimStartRightView, this.mAnimEndRightView, 0);
                t2(this.mAnimStartLeftView, this.mAnimEndLeftView, 0);
                this.mTextViewPunishTimeTip.setText(R.string.pk_game_over);
            } else if (i9 == 1) {
                t2(this.mAnimStartRightView, this.mAnimEndRightView, 2);
                t2(this.mAnimStartLeftView, this.mAnimEndLeftView, 1);
                this.mTextViewPunishTimeTip.setText(R.string.pk_punish_time);
            } else if (i9 == 2) {
                t2(this.mAnimStartRightView, this.mAnimEndRightView, 1);
                t2(this.mAnimStartLeftView, this.mAnimEndLeftView, 2);
                this.mTextViewPunishTimeTip.setText(R.string.pk_punish_time);
            }
            this.f18917j = true;
            this.f18911d = true;
        }
    }

    private void o2() {
        DownloadableResourceManager.INSTANCE.getResource("pk_vs.svga", new i(this));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void p2(long j10, boolean z10) {
        if (getActivity() == null) {
            return;
        }
        int i9 = (int) ((500 + j10) / 1000);
        if (i9 <= 5 && z10) {
            if (this.f18929v) {
                return;
            }
            u.l(i9, 0, this.mTextViewCountDown, new k(), 0.5f, 1.1f);
            ((ViewGroup.MarginLayoutParams) this.mTextViewCountDown.getLayoutParams()).topMargin = (int) ((getResources().getDisplayMetrics().widthPixels * 0.8888889f) - DensityUtil.dp2px(35.0f));
            this.mTextViewCountDown.setTextSize(2, 40.0f);
            TextView textView = this.mTextViewCountDown;
            textView.setTypeface(textView.getTypeface(), 1);
            this.mTextViewCountDown.setText(String.valueOf(i9));
            this.f18929v = true;
            return;
        }
        this.mTextViewCountDown.setTextSize(2, 14.0f);
        TextView textView2 = this.mTextViewCountDown;
        textView2.setTypeface(textView2.getTypeface(), 0);
        this.mTextViewCountDown.setText(TimeUtil.timeToString(j10, false));
        ((ViewGroup.MarginLayoutParams) this.mTextViewCountDown.getLayoutParams()).topMargin = (int) ((getResources().getDisplayMetrics().widthPixels * 0.8888889f) - DensityUtil.dp2px(20.0f));
    }

    private void q2(long j10) {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void u2(int i9, boolean z10, boolean z11) {
        if (z11) {
            return;
        }
        if (getCurrentLiveRoom().getIntroductionToPlay() != null && getCurrentLiveRoom().getIntroductionToPlay().size() != 0) {
            if (!getCurrentLiveRoom().isBroadCaster()) {
                this.marqueeView.setVisibility(8);
                return;
            }
            this.f18918k.add(getCurrentLiveRoom().getIntroductionToPlay().get(i9));
            this.f18930w = i9;
            MarqueeRecycleViewAdapter marqueeRecycleViewAdapter = this.f18919l;
            if (marqueeRecycleViewAdapter != null) {
                marqueeRecycleViewAdapter.notifyDataSetChanged();
            }
            View view = this.marqueeView;
            if (view != null) {
                if (!z10) {
                    u.m(this, view, false);
                }
                this.f18927t.postDelayed(new l(), 2000L);
                return;
            }
            return;
        }
        this.marqueeView.setVisibility(8);
        this.mTextViewPunishTimeTip.setVisibility(0);
        this.mTextViewPunishTimeTip.setText(R.string.pk_time);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void v2() {
        long j10;
        x2();
        this.marqueeView.setVisibility(8);
        e2();
        this.mILiveRoomManager.u1(this.f18922o, 1);
        this.mTextViewPunishTimeTip.setVisibility(0);
        long j11 = this.f18920m;
        long j12 = this.f18921n;
        if (j11 > j12) {
            j10 = (this.f18922o - j11) - this.f18923p;
        } else {
            j10 = (this.f18922o - j12) - this.f18923p;
        }
        long j13 = j10;
        if (!getCurrentLiveRoom().isBroadCaster() && !this.f18917j) {
            this.mTextViewPunishTimeTip.setText(R.string.pk_punish_time);
            this.mTextViewPunishTimeTip.setVisibility(0);
        }
        d dVar = new d(j13, 1000L);
        this.f18926s = dVar;
        dVar.start();
    }

    private void x2() {
        this.f18915h = true;
        this.f18918k.clear();
        MarqueeRecycleViewAdapter marqueeRecycleViewAdapter = this.f18919l;
        if (marqueeRecycleViewAdapter != null) {
            marqueeRecycleViewAdapter.notifyDataSetChanged();
        }
    }

    public void A2(long j10) {
        C2(j10, this.B);
    }

    public void C2(long j10, long j11) {
        if (this.f18911d) {
            return;
        }
        this.A = j10;
        this.B = j11;
        this.mPKProgressView.h(j10, j11);
        this.mLeftCoinTextView.setText(String.valueOf(j10));
        this.mRightCoinTextView.setText(String.valueOf(j11));
    }

    @Override // com.guochao.faceshow.aaspring.modulars.live.common.BaseLiveInfoFragment, com.guochao.faceshow.aaspring.base.fragment.BaseFragment
    public int getLayoutId() {
        return R.layout.fragment_pk_live_info;
    }

    @Override // com.guochao.faceshow.aaspring.modulars.live.common.BaseLiveInfoFragment, com.guochao.faceshow.aaspring.base.fragment.BaseFragment
    public void initView(View view) {
        super.initView(view);
        this.mPKProgressView.f(this);
        this.f18918k = new ArrayList();
        this.mRatioFrameLayout.setRatio(0.8888889f);
        LinearLayoutManager linearLayoutManager = new LinearLayoutManager(getActivity(), 0, false);
        if (Language.ARABIC.equalsIgnoreCase(q7.a.e().c())) {
            linearLayoutManager.setReverseLayout(true);
        }
        this.recyclerView.setLayoutManager(linearLayoutManager);
        MarqueeRecycleViewAdapter marqueeRecycleViewAdapter = new MarqueeRecycleViewAdapter(getActivity(), this.f18918k);
        this.f18919l = marqueeRecycleViewAdapter;
        this.recyclerView.setAdapter(marqueeRecycleViewAdapter);
        this.recyclerView.setOnTouchListener(new g());
        if (getCurrentLiveRoom().isBroadCaster()) {
            if (getCurrentLiveRoom() == null || getCurrentLiveRoom().getIntroductionToPlay() == null) {
                return;
            }
            int size = getCurrentLiveRoom().getIntroductionToPlay().size() - 1;
            if (size <= 0) {
                u2(0, true, false);
            } else {
                u2(new Random().nextInt(size), true, false);
            }
            this.mTextViewPunishTimeTip.setVisibility(8);
        } else {
            this.mTextViewPunishTimeTip.setText(R.string.pk_time);
            this.mTextViewPunishTimeTip.setVisibility(0);
        }
        if (this.f18920m == -1 && this.f18922o == -1 && this.f18921n == -1) {
            return;
        }
        i2(view);
    }

    public void l2(int i9) {
        if (getActivity() == null || this.mAnimStartLeftView == null || this.mAnimStartRightView == null || getView() == null) {
            return;
        }
        getView().findViewById(R.id.left_rich_box).setVisibility(0);
        getView().findViewById(R.id.right_rich_box).setVisibility(0);
        getView().findViewById(R.id.icon_vs).setVisibility(0);
        this.mAnimStartLeftView.setVisibility(0);
        this.mAnimStartRightView.setVisibility(0);
    }

    public void m2(int i9) {
        if (getActivity() == null || this.mAnimStartLeftView == null || this.mAnimStartRightView == null || getView() == null) {
            return;
        }
        getView().findViewById(R.id.left_rich_box).setVisibility(4);
        getView().findViewById(R.id.right_rich_box).setVisibility(4);
        getView().findViewById(R.id.icon_vs).setVisibility(4);
        this.mAnimStartLeftView.setVisibility(4);
        this.mAnimStartRightView.setVisibility(4);
    }

    @Override // com.guochao.faceshow.aaspring.base.fragment.BaseFragment, androidx.fragment.app.DialogFragment, androidx.fragment.app.Fragment
    public void onActivityCreated(@Nullable Bundle bundle) {
        super.onActivityCreated(bundle);
        Fragment parentFragment = getParentFragment();
        if (parentFragment instanceof BasePkLiveRoomFragment) {
            try {
                if (((BasePkLiveRoomFragment) parentFragment).getCurrentLiveRoom() != null) {
                    BasePkLiveRoomFragment basePkLiveRoomFragment = (BasePkLiveRoomFragment) parentFragment;
                    basePkLiveRoomFragment.f18526v = true;
                    basePkLiveRoomFragment.C4 = this;
                    basePkLiveRoomFragment.k2(parentFragment.getView());
                }
            } catch (Exception unused) {
            }
        }
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        PkUser pkUser;
        int id2 = view.getId();
        if (id2 != R.id.left_area) {
            if (id2 != R.id.right_area || getFragmentManager() == null || (pkUser = this.f18910c) == null || pkUser.getRightAnchorMsg() == null) {
                return;
            }
            LivePeopleInfoCardFragment.showPeopleInfo(getFragmentManager(), this.C.getUserId(), this.C.getNickName(), true);
        } else if (getFragmentManager() == null) {
        } else {
            LivePeopleInfoCardFragment.showPeopleInfo(getFragmentManager(), getCurrentLiveRoom().getBroadCasterUserId(), getCurrentLiveRoom().getBroadCasterUserName());
        }
    }

    @Override // com.guochao.faceshow.aaspring.base.fragment.BaseFragment, com.guochao.faceshow.aaspring.base.mvvm.fragment.GCCoreFragment, androidx.fragment.app.DialogFragment, androidx.fragment.app.Fragment
    public void onCreate(@Nullable Bundle bundle) {
        super.onCreate(bundle);
        if (getArguments() != null) {
            this.f18920m = getArguments().getLong("server");
            this.f18921n = getArguments().getLong("gameEnd");
            this.f18922o = getArguments().getLong("punishEnd");
            this.f18913f = getArguments().getBoolean("poll");
        }
    }

    @Override // com.guochao.faceshow.aaspring.base.fragment.BaseFragment, androidx.fragment.app.DialogFragment, androidx.fragment.app.Fragment
    public void onDestroyView() {
        LiveScrollToClearScreenView liveScrollToClearScreenView;
        View view;
        super.onDestroyView();
        com.guochao.faceshow.views.g gVar = this.f18926s;
        if (gVar != null) {
            gVar.cancel();
        }
        this.f18927t.removeMessages(0);
        BasePkLiveRoomFragment basePkLiveRoomFragment = (BasePkLiveRoomFragment) getParentFragment();
        if (basePkLiveRoomFragment == null || (liveScrollToClearScreenView = basePkLiveRoomFragment.mLiveScrollToClearScreenView) == null || (view = this.mLeftArea) == null || this.mRightArea == null) {
            return;
        }
        liveScrollToClearScreenView.e(view);
        liveScrollToClearScreenView.e(this.mRightArea);
    }

    @Override // androidx.fragment.app.Fragment
    public void onResume() {
        super.onResume();
        if (this.f18925r) {
            n2(this.f18914g);
        }
    }

    @OnClick
    public void onViewClicked() {
        this.ivAdd.setEnabled(false);
        addFocus();
    }

    public void r2(LiveMessageModel<? extends BaseLiveMessage> liveMessageModel) {
        if (getActivity() == null) {
            return;
        }
        PkResultMessage pkResultMessage = (PkResultMessage) liveMessageModel.getData();
        int result = pkResultMessage.getResult();
        try {
            C2(Long.parseLong(pkResultMessage.getFcoin()), Long.parseLong(pkResultMessage.getOtherFcoin()));
        } catch (Exception unused) {
        }
        this.f18911d = true;
        n2(result);
    }

    @OnClick
    public void richList(View view) {
        int id2 = view.getId();
        if (id2 != R.id.left_rich_box) {
            if (id2 == R.id.right_rich_box && this.C != null) {
                RichListDialogFragment.T1(getFragmentManager(), this.C.getLiveRoomId(), this.C.getUserId());
                return;
            }
            return;
        }
        RichListDialogFragment.T1(getFragmentManager(), getCurrentLiveRoom().getLiveRoomId(), getCurrentLiveRoom().getBroadCasterUserId());
    }

    public void s2() {
        this.f18911d = true;
        n2(1);
        this.f18927t.postDelayed(new f(), 3000L);
    }

    @OnClick
    public void showTime(View view) {
    }

    public void t(String str, String str2) {
        PkUser pkUser;
        if (getActivity() == null || (pkUser = this.f18910c) == null || pkUser.getRightAnchorMsg() == null || !Objects.equals(str2, this.f18910c.getRightAnchorMsg().getUserId())) {
            return;
        }
        if ("1".equals(str)) {
            this.ivAdd.setVisibility(8);
        } else {
            this.ivAdd.setVisibility(0);
        }
    }

    public void t2(SVGAImageView sVGAImageView, View view, int i9) {
        int i10;
        int i11;
        if (i9 == 1) {
            int dp2px = DensityUtil.dp2px(63.333332f);
            DownloadableResourceManager.INSTANCE.getResource("win_29.svga", new o(this, sVGAImageView));
            i10 = dp2px;
            i11 = 15;
        } else if (i9 != 2) {
            int dp2px2 = DensityUtil.dp2px(25.333334f);
            DownloadableResourceManager.INSTANCE.getResource("tie_29.svga", new a(this, sVGAImageView));
            i10 = dp2px2;
            i11 = 7;
        } else {
            int dp2px3 = DensityUtil.dp2px(63.333332f);
            DownloadableResourceManager.INSTANCE.getResource("lose_29.svga", new n(this, sVGAImageView));
            i10 = dp2px3;
            i11 = 0;
        }
        sVGAImageView.setLoops(1);
        sVGAImageView.setClearsAfterStop(false);
        sVGAImageView.setVisibility(0);
        sVGAImageView.setCallback(new b(sVGAImageView, view, sVGAImageView, i10, i11));
        sVGAImageView.startAnimation();
    }

    public void w2() {
        this.f18927t.postDelayed(this.f18933z, 50L);
    }

    public void y2(PkUser pkUser, long j10) {
        if (pkUser == null) {
            return;
        }
        if (!this.f18924q) {
            this.f18910c = pkUser;
            this.f18920m = j10;
            i2(getView());
        }
        PkUser.PkUserInfo leftAnchorMsg = pkUser.getLeftAnchorMsg();
        PkUser.PkUserInfo rightAnchorMsg = pkUser.getRightAnchorMsg();
        if (leftAnchorMsg == null && rightAnchorMsg == null) {
            return;
        }
        int i9 = 0;
        if (leftAnchorMsg != null) {
            try {
                i9 = Integer.parseInt(leftAnchorMsg.getPkFcoin());
            } catch (Exception unused) {
            }
        }
        C2(i9, Integer.parseInt(rightAnchorMsg.getPkFcoin()));
        this.C = rightAnchorMsg;
        if (rightAnchorMsg != null) {
            this.pkBroadcastName.setText(rightAnchorMsg.getNickName());
        }
        if (rightAnchorMsg != null) {
            if (BaseConfig.isChinese()) {
                this.mLlImageViewCountryFlag.setVisibility(8);
            } else {
                hc.a.h(this.mImageViewCountryFlag, rightAnchorMsg.getCountryFlag(), R.mipmap.ic_earth);
            }
        }
        if (leftAnchorMsg != null) {
            B2(leftAnchorMsg.getPkAudienceList(), this.f18908a);
        }
        if (rightAnchorMsg != null) {
            B2(rightAnchorMsg.getPkAudienceList(), this.f18909b);
        }
        if ("2".equals(pkUser.getPkStage())) {
            String pkWinOrFail = pkUser.getLeftAnchorMsg().getPkWinOrFail();
            if (TextUtils.isEmpty(pkWinOrFail)) {
                return;
            }
            try {
                this.f18914g = Integer.parseInt(pkWinOrFail);
                this.f18912e = true;
                f2();
            } catch (Exception unused2) {
            }
        }
    }

    public void z2(long j10) {
        C2(this.A, j10);
    }
}
