package com.guochao.faceshow.aaspring.modulars.live.game.luckynumber;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.ObjectAnimator;
import android.content.Context;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.LinearInterpolator;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.annotation.CallSuper;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.UiThread;
import androidx.constraintlayout.core.widgets.analyzer.BasicMeasure;
import butterknife.BindView;
import butterknife.ButterKnife;
import butterknife.Unbinder;
import butterknife.internal.c;
import com.guochao.faceshow.BaseApplication;
import com.guochao.faceshow.R;
import com.guochao.faceshow.aaspring.base.adapter.BaseViewHolder;
import com.guochao.faceshow.aaspring.base.http.response.FaceCastBaseResponse;
import com.guochao.faceshow.aaspring.beans.LiveGameUserInfo;
import com.guochao.faceshow.aaspring.beans.LuckyNumberStartGameBean;
import com.guochao.faceshow.aaspring.modulars.live.common.LivePeopleInfoCardFragment;
import com.guochao.faceshow.aaspring.modulars.live.game.LiveGameConfig;
import com.guochao.faceshow.aaspring.modulars.live.game.LiveGamePlayer;
import com.guochao.faceshow.aaspring.modulars.live.game.model.LiveGameSwitchSeatMessage;
import com.guochao.faceshow.aaspring.utils.LiveMessageModelFactory;
import com.guochao.faceshow.aaspring.utils.SoundPoolManager;
import com.guochao.faceshow.aaspring.utils.SvgaImageViewUtils;
import com.guochao.faceshow.aaspring.utils.ToastUtils;
import com.guochao.faceshow.aaspring.views.LuckyNumberItemProgressView;
import com.guochao.faceshow.utils.DensityUtil;
import com.opensource.svgaplayer.SVGAImageView;
import com.opensource.svgaplayer.SVGAParser;
import com.opensource.svgaplayer.SVGAVideoEntity;
import d9.e;
import java.util.ArrayList;
import java.util.List;
import java.util.Objects;
import jc.e;
import org.jetbrains.annotations.NotNull;
/* loaded from: classes3.dex */
public class LuckyNumberGameView extends ViewGroup {

    /* renamed from: a  reason: collision with root package name */
    private boolean f19571a;

    /* renamed from: b  reason: collision with root package name */
    private LiveGameConfig f19572b;

    /* renamed from: c  reason: collision with root package name */
    LiveGamePlayer[] f19573c;

    /* renamed from: d  reason: collision with root package name */
    View[] f19574d;

    /* renamed from: e  reason: collision with root package name */
    LuckyNumberFragment f19575e;

    /* renamed from: f  reason: collision with root package name */
    InputtingNumberFloatWindow f19576f;

    /* renamed from: g  reason: collision with root package name */
    InputtingNumberFloatWindow f19577g;

    /* renamed from: h  reason: collision with root package name */
    private boolean f19578h;

    /* renamed from: i  reason: collision with root package name */
    int f19579i;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class InputtingNumberFloatWindow {

        /* renamed from: a  reason: collision with root package name */
        private View f19580a;

        /* renamed from: b  reason: collision with root package name */
        ImageView f19581b;

        /* renamed from: c  reason: collision with root package name */
        Runnable f19582c = new a();

        /* renamed from: d  reason: collision with root package name */
        boolean f19583d;
        @Nullable
        @BindView
        SVGAImageView mSVGAImageView;
        @Nullable
        @BindView
        TextView mTextView;

        /* loaded from: classes3.dex */
        class a implements Runnable {
            a() {
            }

            @Override // java.lang.Runnable
            public void run() {
                InputtingNumberFloatWindow.this.a();
            }
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        /* loaded from: classes3.dex */
        public class b implements SVGAParser.ParseCompletion {
            b() {
            }

            @Override // com.opensource.svgaplayer.SVGAParser.ParseCompletion
            public void onComplete(@NotNull SVGAVideoEntity sVGAVideoEntity) {
                InputtingNumberFloatWindow.this.mSVGAImageView.setVideoItem(sVGAVideoEntity);
                SvgaImageViewUtils.fitImageView(sVGAVideoEntity, InputtingNumberFloatWindow.this.mSVGAImageView, 2.0f);
                InputtingNumberFloatWindow.this.mSVGAImageView.startAnimation();
            }

            @Override // com.opensource.svgaplayer.SVGAParser.ParseCompletion
            public void onError() {
            }
        }

        public InputtingNumberFloatWindow(View view) {
            this.f19580a = view;
            b(view);
        }

        private void b(View view) {
            ButterKnife.c(this, view);
            SVGAImageView sVGAImageView = this.mSVGAImageView;
            this.f19583d = sVGAImageView != null;
            if (sVGAImageView != null) {
                SvgaImageViewUtils.getParser().decodeFromInputStream(LuckyNumberGameView.this.getContext().getResources().openRawResource(R.raw.lucky_game_inputting), "lucky_inputting", new b(), true);
            }
        }

        private void c(View view, long j10) {
            float x10 = view.getX();
            float y10 = view.getY();
            this.f19580a.setX(x10 + DensityUtil.dp2px(8.0f));
            this.f19580a.setY(y10);
            this.f19580a.setVisibility(0);
            LuckyNumberGameView.this.removeCallbacks(this.f19582c);
            LuckyNumberGameView.this.postDelayed(this.f19582c, j10);
        }

        public void a() {
            this.f19580a.setVisibility(4);
            ImageView imageView = this.f19581b;
            if (imageView != null) {
                imageView.setImageResource(R.mipmap.lucky_number_item_pink);
            }
        }

        public void d(View view, ImageView imageView) {
            ImageView imageView2 = this.f19581b;
            if (imageView2 != null) {
                imageView2.setImageResource(R.mipmap.lucky_number_item_pink);
            }
            this.f19581b = imageView;
            imageView.setImageResource(R.mipmap.lucky_number_item_purple);
            c(view, 15000L);
        }

        public void e(View view, String str) {
            TextView textView = this.mTextView;
            if (textView != null) {
                textView.setText(str);
                this.mTextView.setVisibility(0);
                c(view, 3000L);
            }
        }
    }

    /* loaded from: classes3.dex */
    public class InputtingNumberFloatWindow_ViewBinding implements Unbinder {

        /* renamed from: b  reason: collision with root package name */
        private InputtingNumberFloatWindow f19587b;

        @UiThread
        public InputtingNumberFloatWindow_ViewBinding(InputtingNumberFloatWindow inputtingNumberFloatWindow, View view) {
            this.f19587b = inputtingNumberFloatWindow;
            inputtingNumberFloatWindow.mTextView = (TextView) c.b(view, R.id.text, "field 'mTextView'", TextView.class);
            inputtingNumberFloatWindow.mSVGAImageView = (SVGAImageView) c.b(view, R.id.sVGAImageView, "field 'mSVGAImageView'", SVGAImageView.class);
        }

        @Override // butterknife.Unbinder
        @CallSuper
        public void unbind() {
            InputtingNumberFloatWindow inputtingNumberFloatWindow = this.f19587b;
            if (inputtingNumberFloatWindow != null) {
                this.f19587b = null;
                inputtingNumberFloatWindow.mTextView = null;
                inputtingNumberFloatWindow.mSVGAImageView = null;
                return;
            }
            throw new IllegalStateException("Bindings already cleared.");
        }
    }

    /* loaded from: classes3.dex */
    public class LuckyNumberPlayerHolder extends BaseViewHolder {

        /* renamed from: a  reason: collision with root package name */
        View.OnClickListener f19588a;

        /* renamed from: b  reason: collision with root package name */
        private int f19589b;
        @BindView
        ImageView mCardBg;
        @BindView
        ImageView mImageViewAvatar;
        @BindView
        ImageView mImageViewFlag;
        @BindView
        ImageView mImageViewGender;
        @BindView
        ImageView mImageViewMask;
        @BindView
        LuckyNumberItemProgressView mInfoView;

        /* loaded from: classes3.dex */
        class a implements View.OnClickListener {
            a() {
            }

            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                if (LuckyNumberGameView.this.f19571a) {
                    return;
                }
                int intValue = ((Integer) view.getTag()).intValue();
                LuckyNumberGameView luckyNumberGameView = LuckyNumberGameView.this;
                if (luckyNumberGameView.f19573c[intValue] != null) {
                    ToastUtils.debugToast(BaseApplication.getInstance(), "已经有人了");
                    LivePeopleInfoCardFragment.showPeopleInfo(LuckyNumberGameView.this.f19575e.getParentFragmentManager(), LuckyNumberGameView.this.f19573c[intValue].getCurrentUserId(), LuckyNumberGameView.this.f19573c[intValue].getUserName());
                    return;
                }
                int h10 = luckyNumberGameView.h();
                if (h10 == -1) {
                    LuckyNumberGameView.this.f19575e.q2(intValue);
                    SoundPoolManager.getInstance(LuckyNumberGameView.this.getContext()).playDefaultButtonSound();
                } else if (h10 != intValue) {
                    LuckyNumberGameView.this.q(h10, intValue);
                    SoundPoolManager.getInstance(LuckyNumberGameView.this.getContext()).playDefaultButtonSound();
                } else {
                    ToastUtils.debugToast(BaseApplication.getInstance(), "你已经在这个位置上了");
                }
            }
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        /* loaded from: classes3.dex */
        public class b extends AnimatorListenerAdapter {
            b() {
            }

            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator animator) {
                super.onAnimationEnd(animator);
                LuckyNumberPlayerHolder.this.mInfoView.setVisibility(0);
                LuckyNumberPlayerHolder.this.mCardBg.setVisibility(8);
                LuckyNumberPlayerHolder.this.itemView.setRotationY(-90.0f);
                ObjectAnimator ofFloat = ObjectAnimator.ofFloat(LuckyNumberPlayerHolder.this.itemView, "rotationY", 0.0f);
                ofFloat.setInterpolator(new LinearInterpolator());
                ofFloat.setDuration(180L);
                ofFloat.start();
                LuckyNumberPlayerHolder.this.j();
            }
        }

        public LuckyNumberPlayerHolder(View view) {
            super(view);
            a aVar = new a();
            this.f19588a = aVar;
            view.setTag(R.id.click_view, aVar);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void e() {
            this.mInfoView.setVisibility(8);
            this.mCardBg.setVisibility(0);
            ObjectAnimator ofFloat = ObjectAnimator.ofFloat(this.itemView, "rotationY", 90.0f);
            ofFloat.setDuration(180L);
            ofFloat.setInterpolator(new LinearInterpolator());
            ofFloat.addListener(new b());
            ofFloat.start();
        }

        public void d() {
            this.mInfoView.b();
        }

        public void f(int i9) {
            this.f19589b = i9;
        }

        void g() {
            LuckyNumberGameView.this.f19576f.d(this.itemView, this.mImageViewMask);
        }

        public void h(int i9) {
            LuckyNumberGameView.this.f19577g.e(this.itemView, String.valueOf(i9));
        }

        void i(int i9) {
            g();
            this.mImageViewMask.setVisibility(0);
            this.mImageViewMask.setImageResource(R.mipmap.lucky_number_item_purple);
            this.mInfoView.d(i9);
        }

        public void j() {
            TextView textView = (TextView) getView(R.id.nickname);
            textView.setSelected(true);
            this.itemView.setTag(Integer.valueOf(this.f19589b));
            if (LuckyNumberGameView.this.f19573c[this.f19589b] == null) {
                this.mCardBg.setVisibility(0);
                if (!LuckyNumberGameView.this.f19571a && LuckyNumberGameView.this.f() < LuckyNumberGameView.this.f19572b.b()) {
                    this.mCardBg.setImageResource(R.mipmap.lucky_number_join_bg);
                } else {
                    this.mCardBg.setImageResource(R.mipmap.lucky_number_card_bg);
                }
                this.mInfoView.setVisibility(8);
                this.mImageViewMask.setVisibility(4);
            } else {
                this.mCardBg.setVisibility(8);
                this.mInfoView.setVisibility(0);
                this.mImageViewMask.setVisibility(0);
            }
            LiveGamePlayer liveGamePlayer = LuckyNumberGameView.this.f19573c[this.f19589b];
            if (liveGamePlayer != null) {
                hc.a.i(this.mImageViewAvatar, liveGamePlayer.getAvatarUrl(), R.mipmap.default_head_square, new e(LuckyNumberGameView.this.getContext(), 3));
                hc.a.h(this.mImageViewFlag, liveGamePlayer.getCountryFlag(), R.mipmap.ic_earth);
                this.mImageViewGender.setImageResource(liveGamePlayer.getGender() == 1 ? R.mipmap.lucky_number_gender_man : R.mipmap.lucky_number_gender_woman);
                textView.setText(liveGamePlayer.getUserName());
            }
        }
    }

    /* loaded from: classes3.dex */
    public class LuckyNumberPlayerHolder_ViewBinding implements Unbinder {

        /* renamed from: b  reason: collision with root package name */
        private LuckyNumberPlayerHolder f19593b;

        @UiThread
        public LuckyNumberPlayerHolder_ViewBinding(LuckyNumberPlayerHolder luckyNumberPlayerHolder, View view) {
            this.f19593b = luckyNumberPlayerHolder;
            luckyNumberPlayerHolder.mCardBg = (ImageView) c.d(view, R.id.card_bg, "field 'mCardBg'", ImageView.class);
            luckyNumberPlayerHolder.mInfoView = (LuckyNumberItemProgressView) c.d(view, R.id.info_area, "field 'mInfoView'", LuckyNumberItemProgressView.class);
            luckyNumberPlayerHolder.mImageViewAvatar = (ImageView) c.d(view, R.id.avatar, "field 'mImageViewAvatar'", ImageView.class);
            luckyNumberPlayerHolder.mImageViewFlag = (ImageView) c.d(view, R.id.flag, "field 'mImageViewFlag'", ImageView.class);
            luckyNumberPlayerHolder.mImageViewGender = (ImageView) c.d(view, R.id.gender, "field 'mImageViewGender'", ImageView.class);
            luckyNumberPlayerHolder.mImageViewMask = (ImageView) c.d(view, R.id.mask, "field 'mImageViewMask'", ImageView.class);
        }

        @Override // butterknife.Unbinder
        @CallSuper
        public void unbind() {
            LuckyNumberPlayerHolder luckyNumberPlayerHolder = this.f19593b;
            if (luckyNumberPlayerHolder != null) {
                this.f19593b = null;
                luckyNumberPlayerHolder.mCardBg = null;
                luckyNumberPlayerHolder.mInfoView = null;
                luckyNumberPlayerHolder.mImageViewAvatar = null;
                luckyNumberPlayerHolder.mImageViewFlag = null;
                luckyNumberPlayerHolder.mImageViewGender = null;
                luckyNumberPlayerHolder.mImageViewMask = null;
                return;
            }
            throw new IllegalStateException("Bindings already cleared.");
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class a extends com.guochao.faceshow.aaspring.base.http.callback.c<Integer> {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ int f19594a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ int f19595b;

        a(int i9, int i10) {
            this.f19594a = i9;
            this.f19595b = i10;
        }

        @Override // com.guochao.faceshow.aaspring.base.http.callback.c
        /* renamed from: a */
        public void onResponse(@Nullable Integer num, @NonNull FaceCastBaseResponse<Integer> faceCastBaseResponse) {
            if (num == null) {
                onFailure(new g7.a<>());
            } else if (num.intValue() != 1) {
                ToastUtils.showToast(LuckyNumberGameView.this.getContext(), (int) R.string.minigame_position_has_been_used);
            } else {
                LuckyNumberGameView.this.r(this.f19594a, this.f19595b);
                LuckyNumberGameView.this.f19575e.f19373e = faceCastBaseResponse.getSelectTime();
                LuckyNumberFragment luckyNumberFragment = LuckyNumberGameView.this.f19575e;
                luckyNumberFragment.f19372d.sendLiveMessage(LiveMessageModelFactory.createLiveGameSwitchSeatMessage(luckyNumberFragment.p0(), this.f19594a, this.f19595b, LuckyNumberGameView.this.f19572b.d(), faceCastBaseResponse.getSelectTime()), (e.a<Boolean>) null);
            }
        }

        @Override // com.guochao.faceshow.aaspring.base.http.callback.c, com.guochao.faceshow.aaspring.base.http.callback.b
        public void onCompleted() {
            super.onCompleted();
            LuckyNumberGameView.this.f19578h = false;
        }

        @Override // com.guochao.faceshow.aaspring.base.http.callback.c
        public void onFailure(@NonNull g7.a<Integer> aVar) {
            Context context = LuckyNumberGameView.this.getContext();
            ToastUtils.debugToast(context, "换位失败了，" + aVar.toString());
        }
    }

    public LuckyNumberGameView(Context context) {
        this(context, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public int h() {
        int i9 = 0;
        while (true) {
            LiveGamePlayer[] liveGamePlayerArr = this.f19573c;
            if (i9 >= liveGamePlayerArr.length) {
                return -1;
            }
            LiveGamePlayer liveGamePlayer = liveGamePlayerArr[i9];
            if (liveGamePlayer != null && Objects.equals(liveGamePlayer.getCurrentUserId(), b8.e.g().c().getUserId())) {
                return i9;
            }
            i9++;
        }
    }

    private void j() {
        for (int i9 = 0; i9 < this.f19574d.length; i9++) {
            View inflate = LayoutInflater.from(getContext()).inflate(R.layout.layout_lucky_number, (ViewGroup) this, false);
            addView(inflate);
            LuckyNumberPlayerHolder luckyNumberPlayerHolder = new LuckyNumberPlayerHolder(inflate);
            inflate.setTag(R.id.btn_ok, luckyNumberPlayerHolder);
            luckyNumberPlayerHolder.f(i9);
            this.f19574d[i9] = inflate;
        }
    }

    private void k() {
        for (int i9 = 0; i9 < this.f19573c.length; i9++) {
            l((LuckyNumberPlayerHolder) getChildAt(i9).getTag(R.id.btn_ok), i9);
        }
        this.f19575e.y2();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void q(int i9, int i10) {
        if (this.f19578h) {
            return;
        }
        this.f19578h = true;
        this.f19575e.post("tokens/game/v2/round/changePosition").y("position", Integer.valueOf(i10)).M(new a(i9, i10));
    }

    public int f() {
        int i9 = 0;
        for (LiveGamePlayer liveGamePlayer : this.f19573c) {
            if (liveGamePlayer != null) {
                i9++;
            }
        }
        return i9;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public LuckyNumberPlayerHolder g(int i9) {
        return (LuckyNumberPlayerHolder) getChildAt(i9).getTag(R.id.btn_ok);
    }

    @Override // android.view.ViewGroup
    protected ViewGroup.LayoutParams generateDefaultLayoutParams() {
        return new ViewGroup.MarginLayoutParams(-2, -2);
    }

    @Override // android.view.ViewGroup
    public ViewGroup.LayoutParams generateLayoutParams(AttributeSet attributeSet) {
        return new ViewGroup.MarginLayoutParams(getContext(), attributeSet);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int i(String str) {
        int i9 = 0;
        while (true) {
            LiveGamePlayer[] liveGamePlayerArr = this.f19573c;
            if (i9 >= liveGamePlayerArr.length) {
                return -1;
            }
            LiveGamePlayer liveGamePlayer = liveGamePlayerArr[i9];
            if (liveGamePlayer != null && Objects.equals(liveGamePlayer.getCurrentUserId(), str)) {
                return i9;
            }
            i9++;
        }
    }

    public void l(@NonNull LuckyNumberPlayerHolder luckyNumberPlayerHolder, int i9) {
        luckyNumberPlayerHolder.j();
    }

    public void m(LiveGameSwitchSeatMessage liveGameSwitchSeatMessage) {
        LiveGameUserInfo liveGameUserInfo = liveGameSwitchSeatMessage.getLiveGameUserInfo();
        if (liveGameUserInfo == null) {
            r(liveGameSwitchSeatMessage.getFromPosition(), liveGameSwitchSeatMessage.getPosition());
            return;
        }
        String userId = liveGameUserInfo.getUserId();
        int i9 = 0;
        while (true) {
            LiveGamePlayer[] liveGamePlayerArr = this.f19573c;
            if (i9 < liveGamePlayerArr.length) {
                if (userId != null && liveGamePlayerArr[i9] != null && userId.equals(liveGamePlayerArr[i9].getCurrentUserId())) {
                    r(i9, liveGameSwitchSeatMessage.getPosition());
                    return;
                }
                i9++;
            } else {
                r(liveGameSwitchSeatMessage.getFromPosition(), liveGameSwitchSeatMessage.getPosition());
                return;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void n(int i9) {
        this.f19573c[i9] = b8.e.g().c();
        LuckyNumberPlayerHolder g10 = g(i9);
        if (g10 != null) {
            g10.j();
            g10.e();
        }
        this.f19575e.y2();
    }

    public void o(View view, View view2) {
        this.f19576f = new InputtingNumberFloatWindow(view);
        this.f19577g = new InputtingNumberFloatWindow(view2);
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onLayout(boolean z10, int i9, int i10, int i11, int i12) {
        int i13 = 0;
        int i14 = 0;
        for (int i15 = 0; i15 <= 4; i15++) {
            View childAt = getChildAt(i15);
            ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) childAt.getLayoutParams();
            int marginStart = marginLayoutParams.getMarginStart() + i14;
            int i16 = marginLayoutParams.topMargin;
            i14 += marginLayoutParams.getMarginStart() + childAt.getMeasuredWidth() + marginLayoutParams.getMarginEnd();
            childAt.layout(marginStart, i16, childAt.getMeasuredWidth() + marginStart, childAt.getMeasuredHeight() + i16);
        }
        for (int i17 = 5; i17 < 10; i17++) {
            View childAt2 = getChildAt(i17);
            ViewGroup.MarginLayoutParams marginLayoutParams2 = (ViewGroup.MarginLayoutParams) childAt2.getLayoutParams();
            int marginStart2 = marginLayoutParams2.getMarginStart() + i13;
            int i18 = marginLayoutParams2.topMargin;
            int measuredHeight = marginLayoutParams2.bottomMargin + i18 + i18 + childAt2.getMeasuredHeight();
            i13 += marginLayoutParams2.getMarginStart() + childAt2.getMeasuredWidth() + marginLayoutParams2.getMarginEnd();
            childAt2.layout(marginStart2, measuredHeight, childAt2.getMeasuredWidth() + marginStart2, childAt2.getMeasuredHeight() + measuredHeight);
        }
    }

    @Override // android.view.View
    protected void onMeasure(int i9, int i10) {
        int mode = View.MeasureSpec.getMode(i9);
        int size = View.MeasureSpec.getSize(i9);
        int size2 = View.MeasureSpec.getSize(i10);
        int i11 = 0;
        if (mode != Integer.MIN_VALUE && mode != 0) {
            int dp2px = size - (DensityUtil.dp2px(4.0f) * 10);
            int childCount = getChildCount();
            int i12 = 0;
            while (i11 < childCount) {
                View childAt = getChildAt(i11);
                ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) childAt.getLayoutParams();
                int i13 = dp2px / 5;
                marginLayoutParams.width = i13;
                int i14 = (int) ((i13 / 42.0f) * 62.0f);
                marginLayoutParams.height = i14;
                if (i11 <= 4) {
                    marginLayoutParams.getMarginStart();
                    marginLayoutParams.getMarginEnd();
                }
                if (i11 <= 1) {
                    i12 = i12 + i14 + marginLayoutParams.topMargin + marginLayoutParams.bottomMargin;
                }
                childAt.measure(View.MeasureSpec.makeMeasureSpec(i13, BasicMeasure.EXACTLY), View.MeasureSpec.makeMeasureSpec(i14, BasicMeasure.EXACTLY));
                i11++;
            }
            setMeasuredDimension(size, i12);
            return;
        }
        int childCount2 = getChildCount();
        int i15 = 0;
        int i16 = 0;
        while (i11 < childCount2) {
            View childAt2 = getChildAt(i11);
            ViewGroup.MarginLayoutParams marginLayoutParams2 = (ViewGroup.MarginLayoutParams) childAt2.getLayoutParams();
            childAt2.measure(View.MeasureSpec.makeMeasureSpec(size / 5, Integer.MIN_VALUE), View.MeasureSpec.makeMeasureSpec(size2 / 2, Integer.MIN_VALUE));
            int measuredWidth = childAt2.getMeasuredWidth();
            int measuredHeight = childAt2.getMeasuredHeight();
            if (i11 <= 4) {
                i15 = i15 + measuredWidth + marginLayoutParams2.getMarginStart() + marginLayoutParams2.getMarginEnd();
            }
            if (i11 <= 1) {
                i16 = i16 + measuredHeight + marginLayoutParams2.topMargin + marginLayoutParams2.bottomMargin;
            }
            childAt2.measure(View.MeasureSpec.makeMeasureSpec(measuredWidth, BasicMeasure.EXACTLY), View.MeasureSpec.makeMeasureSpec(measuredHeight, BasicMeasure.EXACTLY));
            i11++;
        }
        setMeasuredDimension(i15, i16);
    }

    public void p(int i9, LiveGamePlayer liveGamePlayer) {
        this.f19573c[i9] = liveGamePlayer;
        l(g(i9), i9);
    }

    public void r(int i9, int i10) {
        LiveGamePlayer[] liveGamePlayerArr = this.f19573c;
        LiveGamePlayer liveGamePlayer = liveGamePlayerArr[i9];
        liveGamePlayerArr[i9] = liveGamePlayerArr[i10];
        liveGamePlayerArr[i10] = liveGamePlayer;
        l(g(i9), i9);
        l(g(i10), i10);
    }

    public void s(LiveGameConfig liveGameConfig) {
        this.f19572b = liveGameConfig;
        k();
    }

    public void setGamedStarted(boolean z10) {
        if (this.f19571a != z10) {
            this.f19571a = z10;
            k();
        }
    }

    public void setLiveGameHandler(LuckyNumberFragment luckyNumberFragment) {
        this.f19575e = luckyNumberFragment;
    }

    public void t(LuckyNumberStartGameBean luckyNumberStartGameBean, int i9) {
        int i10 = i(luckyNumberStartGameBean.getAppNumGameJoin().getUserId());
        if (i10 < 0) {
            return;
        }
        int i11 = this.f19579i;
        if (i11 >= 0) {
            g(i11).h(luckyNumberStartGameBean.getInputNum());
            g(this.f19579i).d();
        }
        g(i10).i(i9);
        this.f19579i = i10;
    }

    public void u(List<? extends LiveGamePlayer> list) {
        if (list == null) {
            return;
        }
        ArrayList arrayList = new ArrayList(list);
        while (arrayList.size() < 10) {
            arrayList.add(null);
        }
        this.f19573c = (LiveGamePlayer[]) arrayList.toArray(this.f19573c);
        k();
    }

    public void v(int i9, LiveGamePlayer liveGamePlayer) {
        this.f19573c[i9] = liveGamePlayer;
        k();
    }

    public LuckyNumberGameView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public LuckyNumberGameView(Context context, AttributeSet attributeSet, int i9) {
        this(context, attributeSet, i9, 0);
    }

    public LuckyNumberGameView(Context context, AttributeSet attributeSet, int i9, int i10) {
        super(context, attributeSet, i9, i10);
        this.f19573c = new LiveGamePlayer[10];
        this.f19574d = new View[10];
        this.f19578h = false;
        this.f19579i = -1;
        j();
    }
}
