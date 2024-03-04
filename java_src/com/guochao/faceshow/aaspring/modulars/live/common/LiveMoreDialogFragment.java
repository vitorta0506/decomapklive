package com.guochao.faceshow.aaspring.modulars.live.common;

import android.app.Dialog;
import android.content.Context;
import android.content.DialogInterface;
import android.graphics.Rect;
import android.os.Bundle;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.annotation.DrawableRes;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.StringRes;
import androidx.core.content.ContextCompat;
import androidx.fragment.app.Fragment;
import androidx.recyclerview.widget.GridLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import butterknife.BindView;
import com.guochao.faceshow.BaseApplication;
import com.guochao.faceshow.R;
import com.guochao.faceshow.aaspring.base.adapter.BaseViewHolder;
import com.guochao.faceshow.aaspring.base.fragment.BaseDialogFragment;
import com.guochao.faceshow.aaspring.base.http.response.FaceCastBaseResponse;
import com.guochao.faceshow.aaspring.modulars.live.activity.LiveRoomSetActivity;
import com.guochao.faceshow.aaspring.modulars.live.broadcaster.BroadCastFragment;
import com.guochao.faceshow.aaspring.modulars.live.broadcaster.LiveClearDialog;
import com.guochao.faceshow.aaspring.modulars.live.fragment.LiveDebugFragment;
import com.guochao.faceshow.aaspring.modulars.live.hello.HelloGiftNewUserDialog;
import com.guochao.faceshow.aaspring.modulars.live.hello.HelloStarHelp;
import com.guochao.faceshow.aaspring.modulars.live.model.BroadCasterLiveModel;
import com.guochao.faceshow.aaspring.utils.DisableDoubleClickUtils;
import com.guochao.faceshow.aaspring.utils.EventTrackingUtils;
import com.guochao.faceshow.aaspring.utils.LiveMessageModelFactory;
import com.guochao.faceshow.aaspring.utils.MemoryCache;
import com.guochao.faceshow.aaspring.utils.ScreenshotsUtils;
import com.guochao.faceshow.aaspring.utils.SpUtils;
import com.guochao.faceshow.aaspring.utils.ToastUtils;
import com.guochao.faceshow.aaspring.utils.UserStateHolder;
import com.guochao.faceshow.utils.BaseConfig;
import com.guochao.faceshow.utils.Contants;
import com.guochao.faceshow.utils.DensityUtil;
import com.yanzhenjie.recyclerview.swipe.widget.DefaultItemDecoration;
import d9.e;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
/* loaded from: classes3.dex */
public class LiveMoreDialogFragment extends BaseDialogFragment {

    /* renamed from: i  reason: collision with root package name */
    public static final f[] f18736i = {X1(R.mipmap.icon_zb_chat, R.string.chat), Y1(R.mipmap.icon_zb_voice, R.mipmap.icon_zb_voice_close, R.string.live_sound), X1(R.mipmap.icon_zb_d_efinition, R.string.clarity), X1(R.mipmap.icon_zb_flip, R.string.live_flip), Y1(R.mipmap.icon_zb_jiangxiang, R.mipmap.icon_zb_un_mirror, R.string.mirror), X1(R.mipmap.icon_zb_beautify, R.string.live_beauty), X1(R.mipmap.icon_zb_guanli, R.string.management), X1(R.mipmap.icon_zb_jinyan, R.string.livemute), X1(R.mipmap.icon_zb_yinxiao, R.string.live_sound_effect), Y1(R.mipmap.icon_zb_suoshangmai, R.mipmap.icon_zb_suoshangmai_close, R.string.live_lock_mic)};

    /* renamed from: j  reason: collision with root package name */
    private static final f f18737j = Y1(R.drawable.ic_more_icon_nocall, R.drawable.ic_more_icon_call, R.string.video_call_during_living_menu_title);

    /* renamed from: k  reason: collision with root package name */
    private static final f[] f18738k = {X1(R.mipmap.icon_zb_chat, R.string.chat), Y1(R.mipmap.icon_zb_voice, R.mipmap.icon_zb_voice_close, R.string.live_sound), Y1(R.mipmap.icon_zb_video, R.mipmap.icon_zb_video_close, R.string.video), X1(R.mipmap.icon_zb_d_efinition, R.string.clarity), X1(R.mipmap.icon_zb_flip, R.string.live_flip), Y1(R.mipmap.icon_zb_jiangxiang, R.mipmap.icon_zb_un_mirror, R.string.mirror), X1(R.mipmap.icon_zb_beautify, R.string.live_beauty), X1(R.mipmap.icon_zb_guanli, R.string.management), X1(R.mipmap.icon_zb_jinyan, R.string.livemute), X1(R.mipmap.icon_zb_yinxiao, R.string.live_sound_effect), Y1(R.mipmap.icon_zb_suoshangmai, R.mipmap.icon_zb_suoshangmai_close, R.string.live_lock_mic), Y1(R.mipmap.icon_zb_shangmai_unauto, R.mipmap.icon_zb_shangmai, R.string.live_send_mic_mode)};

    /* renamed from: a  reason: collision with root package name */
    private Fragment f18739a;

    /* renamed from: d  reason: collision with root package name */
    private d9.c f18742d;

    /* renamed from: e  reason: collision with root package name */
    private boolean f18743e;

    /* renamed from: f  reason: collision with root package name */
    private int f18744f;

    /* renamed from: h  reason: collision with root package name */
    private g f18746h;
    @BindView
    public RecyclerView mRecyclerView;
    @BindView
    TextView modelTitle;

    /* renamed from: b  reason: collision with root package name */
    private int f18740b = 1;

    /* renamed from: c  reason: collision with root package name */
    private List<f> f18741c = new ArrayList();

    /* renamed from: g  reason: collision with root package name */
    private boolean f18745g = false;

    /* loaded from: classes3.dex */
    public class MenuAdapter extends RecyclerView.Adapter<BaseViewHolder> {

        /* JADX INFO: Access modifiers changed from: package-private */
        /* loaded from: classes3.dex */
        public class a implements View.OnClickListener {
            a() {
            }

            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                int intValue = ((Integer) view.getTag()).intValue();
                LiveMoreDialogFragment.this.a2(view, (f) LiveMoreDialogFragment.this.f18741c.get(intValue));
            }
        }

        public MenuAdapter() {
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public int getItemCount() {
            return LiveMoreDialogFragment.this.f18741c.size();
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public void onBindViewHolder(@NonNull BaseViewHolder baseViewHolder, int i9) {
            ImageView imageView = (ImageView) baseViewHolder.getView(R.id.icon);
            TextView textView = (TextView) baseViewHolder.getView(R.id.text);
            ImageView imageView2 = (ImageView) baseViewHolder.getView(R.id.hello_new);
            f fVar = (f) LiveMoreDialogFragment.this.f18741c.get(i9);
            if (((f) LiveMoreDialogFragment.this.f18741c.get(i9)).f18760d && R.string.live_send_mic_mode != ((f) LiveMoreDialogFragment.this.f18741c.get(i9)).f18759c) {
                imageView.setImageResource(((f) LiveMoreDialogFragment.this.f18741c.get(i9)).f18758b);
                textView.setTextColor(ContextCompat.getColor(BaseApplication.getInstance(), R.color.color_ugc_text_level_3));
            } else if (((f) LiveMoreDialogFragment.this.f18741c.get(i9)).f18760d) {
                imageView.setImageResource(((f) LiveMoreDialogFragment.this.f18741c.get(i9)).f18758b);
                textView.setTextColor(ContextCompat.getColor(BaseApplication.getInstance(), R.color.color_ugc_text_level_1));
            } else if (R.string.live_send_mic_mode != ((f) LiveMoreDialogFragment.this.f18741c.get(i9)).f18759c) {
                imageView.setImageResource(((f) LiveMoreDialogFragment.this.f18741c.get(i9)).f18757a);
                textView.setTextColor(ContextCompat.getColor(BaseApplication.getInstance(), R.color.color_ugc_text_level_1));
            } else {
                imageView.setImageResource(((f) LiveMoreDialogFragment.this.f18741c.get(i9)).f18757a);
                textView.setTextColor(ContextCompat.getColor(BaseApplication.getInstance(), R.color.color_ugc_text_level_3));
            }
            if (((f) LiveMoreDialogFragment.this.f18741c.get(i9)).f18759c == R.string.mirror) {
                textView.setTextColor(ContextCompat.getColor(BaseApplication.getInstance(), R.color.color_ugc_text_level_1));
            }
            if (fVar.f18759c == R.string.video_call_during_living_menu_title) {
                if (fVar.f18760d) {
                    imageView.setImageResource(fVar.f18758b);
                    textView.setTextColor(ContextCompat.getColor(BaseApplication.getInstance(), R.color.color_ugc_text_level_1));
                } else {
                    imageView.setImageResource(fVar.f18757a);
                    textView.setTextColor(ContextCompat.getColor(BaseApplication.getInstance(), R.color.color_ugc_text_level_3));
                }
            }
            if (fVar.f18759c == R.string.live_lock_screenshots) {
                if (fVar.f18760d) {
                    imageView.setImageResource(fVar.f18758b);
                    textView.setTextColor(ContextCompat.getColor(BaseApplication.getInstance(), R.color.color_ugc_text_level_1));
                } else {
                    imageView.setImageResource(fVar.f18757a);
                    textView.setTextColor(ContextCompat.getColor(BaseApplication.getInstance(), R.color.color_ugc_text_level_3));
                }
            }
            if (((f) LiveMoreDialogFragment.this.f18741c.get(i9)).f18759c == R.string.live_zb_hello) {
                if (ja.a.b().f("KEY_LIVE_CHAT_HELLO_DIALOG")) {
                    imageView2.setVisibility(0);
                } else {
                    imageView2.setVisibility(8);
                }
            } else {
                imageView2.setVisibility(8);
            }
            textView.setText(((f) LiveMoreDialogFragment.this.f18741c.get(i9)).f18759c);
            baseViewHolder.itemView.setTag(Integer.valueOf(i9));
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        @NonNull
        public BaseViewHolder onCreateViewHolder(@NonNull ViewGroup viewGroup, int i9) {
            View inflate = LiveMoreDialogFragment.this.getLayoutInflater().inflate(R.layout.live_more_item, viewGroup, false);
            inflate.setOnClickListener(new a());
            return new BaseViewHolder(inflate);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class a extends DefaultItemDecoration {
        a(int i9, int i10, int i11, int... iArr) {
            super(i9, i10, i11, iArr);
        }

        @Override // com.yanzhenjie.recyclerview.swipe.widget.DefaultItemDecoration, androidx.recyclerview.widget.RecyclerView.ItemDecoration
        public void getItemOffsets(Rect rect, View view, RecyclerView recyclerView, RecyclerView.State state) {
            super.getItemOffsets(rect, view, recyclerView, state);
            rect.set(DensityUtil.dp2px(2.5f), 0, DensityUtil.dp2px(2.5f), 0);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class b implements LiveClearDialog.a {
        b() {
        }

        @Override // com.guochao.faceshow.aaspring.modulars.live.broadcaster.LiveClearDialog.a
        public void a(int i9) {
            LiveMoreDialogFragment.this.f18744f = i9;
            if (LiveMoreDialogFragment.this.f18739a == null || !(LiveMoreDialogFragment.this.f18739a instanceof d9.c)) {
                return;
            }
            ((d9.c) LiveMoreDialogFragment.this.f18739a).setLiveResolution(LiveMoreDialogFragment.this.f18744f);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class c extends com.guochao.faceshow.aaspring.base.http.callback.c<Object> {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ f f18751a;

        c(f fVar) {
            this.f18751a = fVar;
        }

        @Override // com.guochao.faceshow.aaspring.base.http.callback.c, com.guochao.faceshow.aaspring.base.http.callback.b
        public void onCompleted() {
            super.onCompleted();
            LiveMoreDialogFragment.this.f18743e = false;
        }

        @Override // com.guochao.faceshow.aaspring.base.http.callback.c
        public void onFailure(@NonNull g7.a<Object> aVar) {
        }

        @Override // com.guochao.faceshow.aaspring.base.http.callback.c
        public void onResponse(@Nullable Object obj, @NonNull FaceCastBaseResponse<Object> faceCastBaseResponse) {
            f fVar = this.f18751a;
            boolean z10 = !fVar.f18760d;
            fVar.f18760d = z10;
            if (z10) {
                ToastUtils.showToast(LiveMoreDialogFragment.this.getContext(), (int) R.string.live_auto_mic);
            } else {
                ToastUtils.showToast(LiveMoreDialogFragment.this.getContext(), (int) R.string.live_unauto_mic);
            }
            LiveMoreDialogFragment.this.f18742d.setFreeLinkMic(this.f18751a.f18760d);
            if (LiveMoreDialogFragment.this.mRecyclerView.getAdapter() != null) {
                LiveMoreDialogFragment.this.mRecyclerView.getAdapter().notifyDataSetChanged();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class d implements d9.h {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ f f18753a;

        d(f fVar) {
            this.f18753a = fVar;
        }

        @Override // d9.h
        public void onCallback() {
            f fVar = this.f18753a;
            fVar.f18760d = !fVar.f18760d;
            LiveMoreDialogFragment.this.f18742d.sendLiveMessage(LiveMessageModelFactory.createCallingBtnOpenMessage(this.f18753a.f18760d), (e.a<Boolean>) null);
            if (LiveMoreDialogFragment.this.mRecyclerView.getAdapter() != null) {
                LiveMoreDialogFragment.this.mRecyclerView.getAdapter().notifyDataSetChanged();
            }
            LiveMoreDialogFragment.this.f18745g = false;
        }

        @Override // d9.h
        public void onErrorCallback() {
            LiveMoreDialogFragment.this.f18745g = false;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class e implements ScreenshotsUtils.CallBack {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ f f18755a;

        e(f fVar) {
            this.f18755a = fVar;
        }

        @Override // com.guochao.faceshow.aaspring.utils.ScreenshotsUtils.CallBack
        public void onCallback() {
            if (!this.f18755a.f18760d) {
                ToastUtils.showToast((int) R.string.live_lock_screenshots_on);
            } else {
                ToastUtils.showToast((int) R.string.live_lock_screenshots_off);
            }
            f fVar = this.f18755a;
            boolean z10 = !fVar.f18760d;
            fVar.f18760d = z10;
            if (z10) {
                ((BroadCasterLiveModel) LiveMoreDialogFragment.this.f18742d.getCurrentLiveRoom()).setScreenShotSwitch(Contants.SWITCH_SCREEN_SHOTS_ON);
            } else {
                ((BroadCasterLiveModel) LiveMoreDialogFragment.this.f18742d.getCurrentLiveRoom()).setScreenShotSwitch(Contants.SWITCH_SCREEN_SHOTS_OFF);
            }
            LiveMoreDialogFragment.this.f18742d.sendLiveMessage(LiveMessageModelFactory.createScreenShotBtnOpenMessage(this.f18755a.f18760d), (e.a<Boolean>) null);
            LiveMoreDialogFragment.this.mRecyclerView.getAdapter().notifyDataSetChanged();
        }

        @Override // com.guochao.faceshow.aaspring.utils.ScreenshotsUtils.CallBack
        public void onErrorCallback() {
        }
    }

    /* loaded from: classes3.dex */
    public static class f {
        @DrawableRes

        /* renamed from: a  reason: collision with root package name */
        int f18757a;
        @DrawableRes

        /* renamed from: b  reason: collision with root package name */
        int f18758b;
        @StringRes

        /* renamed from: c  reason: collision with root package name */
        public int f18759c;

        /* renamed from: d  reason: collision with root package name */
        public boolean f18760d;

        /* synthetic */ f(int i9, int i10, int i11, a aVar) {
            this(i9, i10, i11);
        }

        /* synthetic */ f(int i9, int i10, a aVar) {
            this(i9, i10);
        }

        private f(@DrawableRes int i9, @DrawableRes int i10, @StringRes int i11) {
            this.f18757a = i9;
            this.f18759c = i11;
            this.f18758b = i10;
        }

        private f(@DrawableRes int i9, @StringRes int i10) {
            this.f18757a = i9;
            this.f18759c = i10;
        }
    }

    /* loaded from: classes3.dex */
    public interface g {
        void a();

        void onDismiss();
    }

    public static f X1(@DrawableRes int i9, @StringRes int i10) {
        return new f(i9, i10, (a) null);
    }

    public static f Y1(@DrawableRes int i9, @DrawableRes int i10, @StringRes int i11) {
        return new f(i9, i10, i11, null);
    }

    public static LiveMoreDialogFragment Z1(int i9, int i10) {
        LiveMoreDialogFragment liveMoreDialogFragment = new LiveMoreDialogFragment();
        Bundle bundle = new Bundle();
        bundle.putInt("LiveSetType", i9);
        bundle.putInt("Quality", i10);
        liveMoreDialogFragment.setArguments(bundle);
        return liveMoreDialogFragment;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a2(View view, f fVar) {
        if (UserStateHolder.isLiving()) {
            switch (fVar.f18759c) {
                case R.string.chat /* 2131886443 */:
                    if (BaseConfig.isChinese() && com.guochao.faceshow.aaspring.manager.i.u().s().getIsBindMobile() == 0) {
                        com.guochao.faceshow.aaspring.modulars.live.broadcaster.d.e(getActivity(), getParentFragmentManager(), 0);
                        dismiss();
                        return;
                    }
                    dismiss();
                    Fragment fragment = this.f18739a;
                    if ((fragment instanceof BaseLiveRoomFragment) && fragment.getView() != null) {
                        this.f18739a.getView().findViewById(R.id.live_chat_btn).callOnClick();
                        break;
                    }
                    break;
                case R.string.clarity /* 2131886487 */:
                    if (((BaseLiveRoomFragment) this.f18739a).z2().size() <= 1 && !((BaseLiveRoomFragment) this.f18739a).Q && !UserStateHolder.isPkingInLive()) {
                        dismiss();
                        LiveClearDialog P1 = LiveClearDialog.P1(this.f18744f);
                        P1.show(this.f18739a.getChildFragmentManager(), LiveClearDialog.class.getSimpleName());
                        P1.setOnQualityListener(new b());
                        break;
                    } else {
                        return;
                    }
                    break;
                case R.string.debug_mode /* 2131886581 */:
                    Fragment parentFragment = getParentFragment();
                    if (parentFragment instanceof BroadCastFragment) {
                        BroadCastFragment broadCastFragment = (BroadCastFragment) parentFragment;
                        new LiveDebugFragment().show(getChildFragmentManager(), "livedbug");
                        break;
                    }
                    break;
                case R.string.live_beauty /* 2131887233 */:
                    dismiss();
                    Fragment fragment2 = this.f18739a;
                    if (fragment2 != null && (fragment2 instanceof d9.c)) {
                        ((d9.c) fragment2).C();
                        break;
                    }
                    break;
                case R.string.live_flip /* 2131887250 */:
                    if (!DisableDoubleClickUtils.canClick(view)) {
                        return;
                    }
                    Fragment fragment3 = this.f18739a;
                    if (fragment3 != null && (fragment3 instanceof d9.c)) {
                        ((d9.c) fragment3).switchCamera();
                        if (this.mRecyclerView.getAdapter() != null) {
                            this.mRecyclerView.getAdapter().notifyDataSetChanged();
                            break;
                        }
                    }
                    break;
                case R.string.live_lock_mic /* 2131887301 */:
                    Fragment fragment4 = this.f18739a;
                    if (fragment4 == null || !(fragment4 instanceof BaseLiveRoomFragment) || (!((BaseLiveRoomFragment) fragment4).getCurrentLiveRoom().isInPkMode() && !((BaseLiveRoomFragment) this.f18739a).getCurrentLiveRoom().getApplyPkState())) {
                        BaseLiveRoomFragment baseLiveRoomFragment = (BaseLiveRoomFragment) this.f18739a;
                        boolean z10 = !fVar.f18760d;
                        fVar.f18760d = z10;
                        if (z10) {
                            ToastUtils.showToast(getContext(), (int) R.string.live_connect_mic_closed);
                            this.f18742d.setLinkMicEnabled(false);
                            if (!baseLiveRoomFragment.getCurrentLiveRoom().isMultiLiveRoom()) {
                                SpUtils.setSelfInt2("last_mic_status", 1);
                            }
                            ((BaseLiveRoomFragment) this.f18739a).onLinkMicStatusChanged(false);
                        } else {
                            ToastUtils.showToast(getContext(), (int) R.string.live_connect_mic_open);
                            this.f18742d.setLinkMicEnabled(true);
                            if (!baseLiveRoomFragment.getCurrentLiveRoom().isMultiLiveRoom()) {
                                SpUtils.setSelfInt2("last_mic_status", 0);
                            }
                            ((BaseLiveRoomFragment) this.f18739a).onLinkMicStatusChanged(true);
                        }
                        if (this.mRecyclerView.getAdapter() != null) {
                            this.mRecyclerView.getAdapter().notifyDataSetChanged();
                            break;
                        }
                    } else {
                        return;
                    }
                    break;
                case R.string.live_lock_screenshots /* 2131887302 */:
                    ScreenshotsUtils.INSTANCE.updateScreenshotsSwitch(this, !fVar.f18760d ? 1 : 0, this.f18742d.getCurrentLiveRoom().getLiveRoomId(), new e(fVar));
                    break;
                case R.string.live_send_mic_mode /* 2131887336 */:
                    if (!this.f18743e) {
                        this.f18743e = true;
                        post("tokens/live/newLive/updateLiveInfo").v("liveId", this.f18742d.getCurrentLiveRoom().getLiveRoomId()).v("microphoneMode", Integer.valueOf(fVar.f18760d ? 1 : 2)).I(3).M(new c(fVar));
                        break;
                    } else {
                        return;
                    }
                case R.string.live_sound /* 2131887347 */:
                    boolean z11 = !fVar.f18760d;
                    fVar.f18760d = z11;
                    if (z11) {
                        ToastUtils.showToast(getContext(), (int) R.string.live_voice_closed);
                    } else {
                        ToastUtils.showToast(getContext(), (int) R.string.live_voice_opened);
                    }
                    this.f18742d.L(fVar.f18760d, getCurrentUser().getUserId(), getCurrentUser().getUserName(), null);
                    if (this.mRecyclerView.getAdapter() != null) {
                        this.mRecyclerView.getAdapter().notifyDataSetChanged();
                        break;
                    }
                    break;
                case R.string.live_sound_effect /* 2131887348 */:
                    dismiss();
                    Fragment fragment5 = this.f18739a;
                    if (fragment5 != null && (fragment5 instanceof d9.c)) {
                        LiveSoundDialogFragment.S1().show(this.f18739a.getChildFragmentManager(), LiveSoundDialogFragment.class.getSimpleName());
                        break;
                    }
                    break;
                case R.string.live_zb_hello /* 2131887366 */:
                    ja.a.b().e("KEY_LIVE_CHAT_HELLO_DIALOG");
                    g gVar = this.f18746h;
                    if (gVar != null) {
                        gVar.a();
                    }
                    dismiss();
                    EventTrackingUtils.getInstance().track(EventTrackingUtils.CLICK_HELLO_STAR_HELLO);
                    HelloGiftNewUserDialog.getInstance(this.f18742d.getCurrentLiveRoom().getLiveRoomId(), this.f18742d.getCurrentLiveRoom().getLiveStartTimestamp()).show(this.f18739a.getChildFragmentManager(), "HelloGiftNewUserDialog");
                    break;
                case R.string.livemute /* 2131887380 */:
                    dismiss();
                    Fragment fragment6 = this.f18739a;
                    if (fragment6 != null && (fragment6 instanceof d9.c)) {
                        ((d9.c) fragment6).j0();
                        break;
                    }
                    break;
                case R.string.management /* 2131887471 */:
                    dismiss();
                    Fragment fragment7 = this.f18739a;
                    if (fragment7 != null && (fragment7 instanceof d9.c)) {
                        LiveRoomSetActivity.b0(getContext(), ((d9.c) fragment7).getCurrentLiveRoom().getLiveRoomId(), (d9.c) this.f18739a);
                        break;
                    }
                    break;
                case R.string.mirror /* 2131887574 */:
                    Fragment fragment8 = this.f18739a;
                    if (fragment8 != null && (fragment8 instanceof d9.c)) {
                        boolean z12 = !fVar.f18760d;
                        fVar.f18760d = z12;
                        if (!z12) {
                            ToastUtils.showToast(getContext(), (int) R.string.live_mirror_closed);
                            ((d9.c) this.f18739a).setMirror(true);
                        } else {
                            ToastUtils.showToast(getContext(), (int) R.string.live_mirror_opened);
                            ((d9.c) this.f18739a).setMirror(false);
                        }
                        if (this.mRecyclerView.getAdapter() != null) {
                            this.mRecyclerView.getAdapter().notifyDataSetChanged();
                            break;
                        }
                    } else {
                        return;
                    }
                    break;
                case R.string.video /* 2131888581 */:
                    boolean z13 = !fVar.f18760d;
                    fVar.f18760d = z13;
                    if (z13) {
                        ToastUtils.showToast(getContext(), (int) R.string.live_camera_closed);
                    } else {
                        ToastUtils.showToast(getContext(), (int) R.string.live_camera_opened);
                    }
                    this.f18742d.p1(!fVar.f18760d, getCurrentUser().getUserId(), getCurrentUser().getUserName(), null);
                    if (this.mRecyclerView.getAdapter() != null) {
                        this.mRecyclerView.getAdapter().notifyDataSetChanged();
                        break;
                    }
                    break;
                case R.string.video_call_during_living_menu_title /* 2131888586 */:
                    if (!this.f18745g) {
                        this.f18745g = true;
                        this.f18742d.F(!fVar.f18760d, new d(fVar));
                        break;
                    } else {
                        return;
                    }
            }
            MemoryCache.getInstance().put("MenuIcons", this.f18741c);
        }
    }

    public static void b2() {
        for (f fVar : f18736i) {
            fVar.f18760d = false;
        }
        for (f fVar2 : f18738k) {
            fVar2.f18760d = false;
        }
    }

    @Override // com.guochao.faceshow.aaspring.base.fragment.BaseDialogFragment, com.guochao.faceshow.aaspring.base.mvvm.fragment.GCCoreFragment, androidx.fragment.app.DialogFragment
    public void dismiss() {
        super.dismiss();
        g gVar = this.f18746h;
        if (gVar != null) {
            gVar.onDismiss();
        }
    }

    @Override // com.guochao.faceshow.aaspring.base.fragment.BaseFragment
    public int getLayoutId() {
        return R.layout.live_more_menu;
    }

    @Override // com.guochao.faceshow.aaspring.base.fragment.BaseFragment
    public void initView(View view) {
        if (getArguments() != null) {
            this.f18740b = getArguments().getInt("LiveSetType");
            this.f18744f = getArguments().getInt("Quality");
        }
        List list = (List) MemoryCache.getInstance().remove("MenuIcons");
        if (list != null) {
            this.f18741c.addAll(list);
        }
        this.f18739a = getParentFragment();
        this.mRecyclerView.setLayoutManager(new GridLayoutManager((Context) getActivity(), 4, 1, false));
        this.mRecyclerView.setAdapter(new MenuAdapter());
        this.mRecyclerView.addItemDecoration(new a(ContextCompat.getColor(getContext(), R.color.transparent), 10, 10, new int[0]));
        ((ViewGroup.MarginLayoutParams) this.mRecyclerView.getLayoutParams()).leftMargin = DensityUtil.dp2px(2.5f);
        ((ViewGroup.MarginLayoutParams) this.mRecyclerView.getLayoutParams()).rightMargin = DensityUtil.dp2px(2.5f);
    }

    @Override // com.guochao.faceshow.aaspring.base.fragment.BaseFragment
    public void loadData() {
        Fragment fragment = this.f18739a;
        boolean canRequestLinkMic = (fragment == null || !(fragment instanceof BaseLiveRoomFragment) || ((BaseLiveRoomFragment) fragment).getCurrentLiveRoom() == null) ? false : ((BaseLiveRoomFragment) this.f18739a).getCurrentLiveRoom().canRequestLinkMic();
        int i9 = this.f18740b;
        if (i9 == 1) {
            this.f18741c.clear();
            Collections.addAll(this.f18741c, f18736i);
            if (!((BaseLiveRoomFragment) this.f18739a).getCurrentLiveRoom().isPrivateLiveRoom()) {
                HelloStarHelp helloStarHelp = HelloStarHelp.INSTANCE;
                if (helloStarHelp.getHelloConfigSwitch() == 1 && helloStarHelp.getHelloConfigData().getHelloAnchorSwitch() == 1) {
                    this.f18741c.add(X1(R.mipmap.icon_zb_set_hello, R.string.live_zb_hello));
                }
            }
            for (f fVar : this.f18741c) {
                if (R.string.live_lock_mic == fVar.f18759c) {
                    fVar.f18760d = !canRequestLinkMic;
                }
            }
            if (this.f18742d.getCurrentLiveRoom().canMakeVideoOrAudioCall()) {
                f fVar2 = f18737j;
                fVar2.f18760d = ((BroadCasterLiveModel) this.f18742d.getCurrentLiveRoom()).getVideoSwitch() == 1;
                this.f18741c.add(fVar2);
            }
            BroadCasterLiveModel broadCasterLiveModel = (BroadCasterLiveModel) this.f18742d.getCurrentLiveRoom();
            if (!((BaseLiveRoomFragment) this.f18739a).getCurrentLiveRoom().isPrivateLiveRoom()) {
                f Y1 = Y1(R.mipmap.icon_zb_screenshot_off, R.mipmap.icon_zb_screenshot_on, R.string.live_lock_screenshots);
                Y1.f18760d = broadCasterLiveModel.getScreenShotSwitch() == Contants.SWITCH_SCREEN_SHOTS_ON;
                this.f18741c.add(Y1);
            }
            this.modelTitle.setText(R.string.more);
        } else if (i9 == 2) {
            this.f18741c.clear();
            Collections.addAll(this.f18741c, f18738k);
            if (!((BaseLiveRoomFragment) this.f18739a).getCurrentLiveRoom().isPrivateLiveRoom()) {
                HelloStarHelp helloStarHelp2 = HelloStarHelp.INSTANCE;
                if (helloStarHelp2.getHelloConfigSwitch() == 1 && helloStarHelp2.getHelloConfigData().getHelloAnchorSwitch() == 1) {
                    this.f18741c.add(X1(R.mipmap.icon_zb_set_hello, R.string.live_zb_hello));
                }
            }
            for (f fVar3 : this.f18741c) {
                if (R.string.live_lock_mic == fVar3.f18759c) {
                    fVar3.f18760d = !canRequestLinkMic;
                }
            }
            BroadCasterLiveModel broadCasterLiveModel2 = (BroadCasterLiveModel) this.f18742d.getCurrentLiveRoom();
            if (!((BaseLiveRoomFragment) this.f18739a).getCurrentLiveRoom().isPrivateLiveRoom()) {
                f Y12 = Y1(R.mipmap.icon_zb_screenshot_off, R.mipmap.icon_zb_screenshot_on, R.string.live_lock_screenshots);
                Y12.f18760d = broadCasterLiveModel2.getScreenShotSwitch() == Contants.SWITCH_SCREEN_SHOTS_ON;
                this.f18741c.add(Y12);
            }
            this.modelTitle.setText(R.string.more);
        }
        if (this.mRecyclerView.getAdapter() != null) {
            this.mRecyclerView.getAdapter().notifyDataSetChanged();
        }
    }

    @Override // androidx.fragment.app.DialogFragment, androidx.fragment.app.Fragment
    public void onAttach(@NonNull Context context) {
        super.onAttach(context);
        this.f18742d = (d9.c) getParentFragment();
    }

    @Override // androidx.fragment.app.DialogFragment
    public Dialog onCreateDialog(@Nullable Bundle bundle) {
        Dialog createBottomDialog = createBottomDialog(R.style.BottomDialog_FullScreen);
        createBottomDialog.getWindow().setDimAmount(0.6f);
        createBottomDialog.setCanceledOnTouchOutside(true);
        return createBottomDialog;
    }

    @Override // com.guochao.faceshow.aaspring.base.fragment.BaseDialogFragment, androidx.fragment.app.DialogFragment, android.content.DialogInterface.OnDismissListener
    public void onDismiss(@NonNull DialogInterface dialogInterface) {
        super.onDismiss(dialogInterface);
        g gVar = this.f18746h;
        if (gVar != null) {
            gVar.onDismiss();
        }
    }

    public void setOnDismissListener(g gVar) {
        this.f18746h = gVar;
    }
}
