package com.guochao.faceshow.aaspring.modulars.live.game.luckynumber;

import android.app.Dialog;
import android.content.Context;
import android.content.DialogInterface;
import android.graphics.drawable.Drawable;
import android.media.MediaPlayer;
import android.os.Bundle;
import android.os.Parcelable;
import android.text.SpannableStringBuilder;
import android.text.TextUtils;
import android.view.View;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.core.content.ContextCompat;
import androidx.fragment.app.FragmentManager;
import com.guochao.faceshow.R;
import com.guochao.faceshow.aaspring.modulars.live.common.LivePeopleInfoCardFragment;
import com.guochao.faceshow.aaspring.modulars.live.game.BaseGameWinDialogFragment;
import com.guochao.faceshow.aaspring.modulars.live.game.luckynumber.LuckyNumberWinDialog;
import com.guochao.faceshow.aaspring.modulars.live.interfaces.LiveRoomModel;
import com.guochao.faceshow.aaspring.modulars.trtc.call.CallingActivity;
import com.guochao.faceshow.aaspring.utils.AppManager;
import com.guochao.faceshow.aaspring.utils.SvgaImageViewUtils;
import com.guochao.faceshow.utils.Contants;
import com.guochao.faceshow.utils.DensityUtil;
import com.guochao.faceshow.utils.HandlerGetter;
import com.guochao.faceshow.views.NormalCircleImageView;
import com.guochao.faceshow.views.r;
import com.opensource.svgaplayer.SVGACallback;
import com.opensource.svgaplayer.SVGADrawable;
import com.opensource.svgaplayer.SVGAImageView;
import com.opensource.svgaplayer.SVGAParser;
import com.opensource.svgaplayer.SVGAVideoEntity;
import io.reactivex.k;
import org.jetbrains.annotations.NotNull;
import p7.h;
import vh.o;
/* loaded from: classes3.dex */
public class LuckyNumberWinDialog extends BaseGameWinDialogFragment {

    /* renamed from: d  reason: collision with root package name */
    private SVGAImageView f19602d;

    /* renamed from: e  reason: collision with root package name */
    private View f19603e;

    /* renamed from: f  reason: collision with root package name */
    private NormalCircleImageView f19604f;

    /* renamed from: g  reason: collision with root package name */
    private TextView f19605g;

    /* renamed from: h  reason: collision with root package name */
    private TextView f19606h;

    /* renamed from: i  reason: collision with root package name */
    private View f19607i;

    /* renamed from: j  reason: collision with root package name */
    private h f19608j;

    /* renamed from: k  reason: collision with root package name */
    private MediaPlayer f19609k;

    /* loaded from: classes3.dex */
    class a implements Runnable {
        a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            LuckyNumberWinDialog.this.V1();
        }
    }

    /* loaded from: classes3.dex */
    class b implements SVGAParser.ParseCompletion {
        b() {
        }

        @Override // com.opensource.svgaplayer.SVGAParser.ParseCompletion
        public void onComplete(@NotNull SVGAVideoEntity sVGAVideoEntity) {
            SVGADrawable sVGADrawable = new SVGADrawable(sVGAVideoEntity);
            LuckyNumberWinDialog.this.f19602d.setVisibility(0);
            SvgaImageViewUtils.fitScreenWidth(sVGAVideoEntity, LuckyNumberWinDialog.this.f19602d);
            LuckyNumberWinDialog.this.f19602d.setImageDrawable(sVGADrawable);
            LuckyNumberWinDialog.this.f19602d.startAnimation();
        }

        @Override // com.opensource.svgaplayer.SVGAParser.ParseCompletion
        public void onError() {
        }
    }

    /* loaded from: classes3.dex */
    class c implements SVGACallback {

        /* JADX INFO: Access modifiers changed from: package-private */
        /* loaded from: classes3.dex */
        public class a implements o<Integer, Object> {

            /* renamed from: a  reason: collision with root package name */
            final /* synthetic */ SVGAVideoEntity f19613a;

            a(SVGAVideoEntity sVGAVideoEntity) {
                this.f19613a = sVGAVideoEntity;
            }

            @Override // vh.o
            /* renamed from: a */
            public Object apply(Integer num) throws Exception {
                this.f19613a.release();
                return 1;
            }
        }

        c() {
        }

        private void a() {
            SVGAVideoEntity mVideoItem = LuckyNumberWinDialog.this.f19602d.getMVideoItem();
            if (mVideoItem != null) {
                k.just(1).map(new a(mVideoItem)).subscribeOn(di.a.b()).subscribe();
            }
            LuckyNumberWinDialog.this.f19602d.setVisibility(8);
        }

        @Override // com.opensource.svgaplayer.SVGACallback
        public void onFinished() {
            a();
        }

        @Override // com.opensource.svgaplayer.SVGACallback
        public void onPause() {
        }

        @Override // com.opensource.svgaplayer.SVGACallback
        public void onRepeat() {
            a();
        }

        @Override // com.opensource.svgaplayer.SVGACallback
        public void onStep(int i9, double d10) {
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void V1() {
        if (!isAdded() || isDetached() || getActivity() == null || getActivity().isDestroyed() || getActivity().isFinishing()) {
            return;
        }
        dismissAllowingStateLoss();
    }

    private CharSequence W1(Context context, int i9, boolean z10, int i10) {
        int i11;
        Drawable drawable = ContextCompat.getDrawable(context, i10 == 1 ? R.mipmap.icon_game_shuijing : R.mipmap.icon_game_diamond);
        Object[] objArr = new Object[2];
        objArr[0] = z10 ? "Win" : getString(R.string.minigame_win_reward);
        objArr[1] = Integer.valueOf(i9);
        SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder(String.format("%s : {diamond} %s", objArr));
        if (drawable == null) {
            return spannableStringBuilder;
        }
        int minimumWidth = drawable.getMinimumWidth();
        int minimumHeight = drawable.getMinimumHeight();
        TextView textView = new TextView(context);
        textView.setTextSize(2, 16.0f);
        textView.measure(0, 0);
        float measuredHeight = textView.getMeasuredHeight();
        drawable.setBounds(0, (int) (0.0f * measuredHeight), (int) (((minimumWidth * measuredHeight) * 1.0f) / minimumHeight), (int) (measuredHeight * 1.0f));
        r rVar = new r(drawable);
        int indexOf = spannableStringBuilder.toString().indexOf("{diamond}");
        if (indexOf >= 0 && (i11 = indexOf + 9) <= spannableStringBuilder.length()) {
            spannableStringBuilder.setSpan(rVar, indexOf, i11, 17);
        }
        return spannableStringBuilder;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void X1(View view) {
        V1();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void Y1(View view) {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void Z1(View view) {
        h hVar = this.f19608j;
        if (hVar == null || TextUtils.isEmpty(hVar.getCurrentUserId()) || getParentFragment() == null || getParentFragment().getParentFragment() == null) {
            return;
        }
        LivePeopleInfoCardFragment.showPeopleInfo(getParentFragment().getParentFragment().getChildFragmentManager(), this.f19608j.getCurrentUserId(), this.f19608j.getUserName());
    }

    public static LuckyNumberWinDialog a2(FragmentManager fragmentManager, LiveRoomModel liveRoomModel, h hVar, int i9, String str, int i10, int i11) {
        LuckyNumberWinDialog luckyNumberWinDialog = new LuckyNumberWinDialog();
        Bundle bundle = new Bundle();
        bundle.putParcelable("userAvatar", (Parcelable) hVar);
        bundle.putParcelable("liveRoomModel", liveRoomModel);
        bundle.putInt("winDiamond", i9);
        bundle.putInt("realNumber", i10);
        bundle.putInt(Contants.CURRENT_COUNTRY_FLAG, i11);
        int i12 = 0;
        try {
            if (!TextUtils.isEmpty(str)) {
                i12 = Integer.parseInt(str);
            }
        } catch (Exception unused) {
        }
        bundle.putInt("rewardDiamond", i12);
        luckyNumberWinDialog.setArguments(bundle);
        luckyNumberWinDialog.show(fragmentManager, LuckyNumberWinDialog.class.getSimpleName());
        return luckyNumberWinDialog;
    }

    @Override // com.guochao.faceshow.aaspring.base.fragment.BaseFragment
    public int getLayoutId() {
        return R.layout.dialog_lucky_number_win;
    }

    @Override // com.guochao.faceshow.aaspring.base.fragment.BaseFragment
    public void initView(View view) {
        Bundle arguments = getArguments();
        if (arguments != null && getContext() != null) {
            this.f19608j = (h) arguments.getParcelable("userAvatar");
            LiveRoomModel liveRoomModel = (LiveRoomModel) arguments.getParcelable("liveRoomModel");
            int i9 = arguments.getInt("winDiamond");
            int i10 = arguments.getInt("rewardDiamond");
            int i11 = arguments.getInt("realNumber");
            int i12 = arguments.getInt(Contants.CURRENT_COUNTRY_FLAG);
            view.setOnClickListener(new View.OnClickListener() { // from class: a9.c
                @Override // android.view.View.OnClickListener
                public final void onClick(View view2) {
                    LuckyNumberWinDialog.this.X1(view2);
                }
            });
            this.f19602d = (SVGAImageView) view.findViewById(R.id.svga_win);
            View findViewById = view.findViewById(R.id.bg_win_layout);
            this.f19603e = findViewById;
            findViewById.setOnClickListener(new View.OnClickListener() { // from class: a9.e
                @Override // android.view.View.OnClickListener
                public final void onClick(View view2) {
                    LuckyNumberWinDialog.Y1(view2);
                }
            });
            this.f19604f = (NormalCircleImageView) view.findViewById(R.id.user_avatar);
            this.f19604f.setOnClickListener(new View.OnClickListener() { // from class: a9.d
                @Override // android.view.View.OnClickListener
                public final void onClick(View view2) {
                    LuckyNumberWinDialog.this.Z1(view2);
                }
            });
            this.f19605g = (TextView) view.findViewById(R.id.win_name);
            ((TextView) view.findViewById(R.id.real_number)).setText(String.valueOf(i11));
            this.f19605g.setText(this.f19608j.getUserName());
            ((TextView) view.findViewById(R.id.diamond_count)).setText(String.valueOf(i9));
            this.f19605g.setSelected(true);
            hc.a.j(this.f19604f, this.f19608j.getAvatarUrl());
            hc.a.h((NormalCircleImageView) view.findViewById(R.id.user_flag), this.f19608j.getCountryFlag(), R.mipmap.ic_earth);
            this.f19606h = (TextView) view.findViewById(R.id.reward_tip);
            View findViewById2 = view.findViewById(R.id.btn_continue);
            this.f19607i = findViewById2;
            findViewById2.setOnClickListener(new View.OnClickListener() { // from class: a9.b
                @Override // android.view.View.OnClickListener
                public final void onClick(View view2) {
                    LuckyNumberWinDialog.this.continueGame(view2);
                }
            });
            ImageView imageView = (ImageView) view.findViewById(R.id.diamond_icon);
            imageView.setImageResource(i12 == 1 ? R.mipmap.icon_minigame_shuijing : R.mipmap.icon_minigame_diamond);
            if (liveRoomModel != null && liveRoomModel.isBroadCaster()) {
                this.f19603e.setBackgroundResource(R.mipmap.bg_lucky_num_win);
                this.f19607i.setVisibility(0);
                this.f19606h.setTextColor(ContextCompat.getColor(getContext(), R.color.color_lucky_number_reward));
                this.f19606h.setText(W1(getContext(), i10, false, i12));
                if (i10 == 0) {
                    this.f19606h.setVisibility(8);
                }
            } else {
                view.findViewById(R.id.diamond_win).setVisibility(8);
                imageView.setVisibility(8);
                view.findViewById(R.id.diamond_count).setVisibility(8);
                this.f19605g.setMaxWidth(DensityUtil.dp2px(180.0f));
                this.f19607i.setVisibility(8);
                this.f19603e.setBackgroundResource(R.mipmap.bg_lucky_num_win_audiance);
                this.f19606h.setTextColor(ContextCompat.getColor(getContext(), R.color.color_lucky_number_red));
                this.f19606h.setText(W1(getContext(), i9, true, i12));
                HandlerGetter.getMainHandler().postDelayed(new a(), 3000L);
            }
            if (!AppManager.getInstance().containActivity(CallingActivity.class)) {
                MediaPlayer create = MediaPlayer.create(getContext(), (int) R.raw.newbie_gift);
                this.f19609k = create;
                create.start();
            }
            SvgaImageViewUtils.getParser().decodeFromInputStream(getResources().openRawResource(R.raw.lottery_svga), "lottery", new b(), true);
            this.f19602d.setCallback(new c());
            return;
        }
        dismissAllowingStateLoss();
    }

    @Override // com.guochao.faceshow.aaspring.base.fragment.BaseFragment
    public void loadData() {
    }

    @Override // androidx.fragment.app.DialogFragment
    @NonNull
    public Dialog onCreateDialog(@Nullable Bundle bundle) {
        Dialog createBottomDialog = createBottomDialog(R.style.NormalDialog);
        createBottomDialog.setCanceledOnTouchOutside(false);
        createBottomDialog.getWindow().setDimAmount(0.6f);
        return createBottomDialog;
    }

    @Override // com.guochao.faceshow.aaspring.base.fragment.BaseFragment, androidx.fragment.app.DialogFragment, androidx.fragment.app.Fragment
    public void onDestroyView() {
        super.onDestroyView();
        MediaPlayer mediaPlayer = this.f19609k;
        if (mediaPlayer != null) {
            mediaPlayer.stop();
            this.f19609k.release();
            this.f19609k = null;
        }
    }

    @Override // com.guochao.faceshow.aaspring.modulars.live.game.BaseGameWinDialogFragment, com.guochao.faceshow.aaspring.base.fragment.BaseDialogFragment, androidx.fragment.app.DialogFragment, android.content.DialogInterface.OnDismissListener
    public void onDismiss(@NonNull DialogInterface dialogInterface) {
        super.onDismiss(dialogInterface);
    }
}
