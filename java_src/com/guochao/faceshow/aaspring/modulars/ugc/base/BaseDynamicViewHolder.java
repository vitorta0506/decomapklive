package com.guochao.faceshow.aaspring.modulars.ugc.base;

import android.app.Activity;
import android.app.Dialog;
import android.content.ClipData;
import android.content.ClipboardManager;
import android.content.Context;
import android.content.Intent;
import android.graphics.drawable.AnimationDrawable;
import android.text.SpannableStringBuilder;
import android.text.TextUtils;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.fragment.app.DialogFragment;
import androidx.fragment.app.FragmentActivity;
import butterknife.BindView;
import butterknife.OnClick;
import butterknife.OnLongClick;
import com.guochao.faceshow.R;
import com.guochao.faceshow.aaspring.base.adapter.BaseViewHolder;
import com.guochao.faceshow.aaspring.base.fragment.BottomMenuFragment;
import com.guochao.faceshow.aaspring.base.http.request.PostRequest;
import com.guochao.faceshow.aaspring.base.http.response.FaceCastBaseResponse;
import com.guochao.faceshow.aaspring.beans.BlackResponse;
import com.guochao.faceshow.aaspring.beans.BottomMenuBean;
import com.guochao.faceshow.aaspring.beans.DynamicBean;
import com.guochao.faceshow.aaspring.beans.PopupMenuItem;
import com.guochao.faceshow.aaspring.beans.PublishUgcBean;
import com.guochao.faceshow.aaspring.beans.RoomItemData;
import com.guochao.faceshow.aaspring.modulars.chat.activity.ChatActivity;
import com.guochao.faceshow.aaspring.modulars.live.interfaces.LiveRoomModel;
import com.guochao.faceshow.aaspring.modulars.translate.DynamicTranslateHolder;
import com.guochao.faceshow.aaspring.modulars.ugc.activity.AddressDynamicListActivity;
import com.guochao.faceshow.aaspring.modulars.ugc.activity.DynamicLikeUserListActivity;
import com.guochao.faceshow.aaspring.modulars.ugc.fragment.DynamicCommentListFragment;
import com.guochao.faceshow.aaspring.modulars.ugc.fragment.NewestDynamicListFragment;
import com.guochao.faceshow.aaspring.modulars.user.view.UserCenterSexLevel;
import com.guochao.faceshow.aaspring.utils.DisableDoubleClickUtils;
import com.guochao.faceshow.aaspring.utils.EventTrackingV2Utils;
import com.guochao.faceshow.aaspring.utils.Formatter;
import com.guochao.faceshow.aaspring.utils.FriendFromSource;
import com.guochao.faceshow.aaspring.utils.Language;
import com.guochao.faceshow.aaspring.utils.LogUtils;
import com.guochao.faceshow.aaspring.utils.PopupMenu;
import com.guochao.faceshow.aaspring.utils.SvgaImageViewUtils;
import com.guochao.faceshow.aaspring.utils.ToastUtils;
import com.guochao.faceshow.aaspring.utils.TopicAndAtTextHelper;
import com.guochao.faceshow.aaspring.views.ExpandableTextView;
import com.guochao.faceshow.aaspring.views.HeadPortraitView;
import com.guochao.faceshow.aaspring.views.TopicAndAtTextView;
import com.guochao.faceshow.aaspring.views.h;
import com.guochao.faceshow.utils.AppContentFilter;
import com.guochao.faceshow.utils.BaseConfig;
import com.guochao.faceshow.utils.Contants;
import com.guochao.faceshow.utils.DensityUtil;
import com.guochao.faceshow.utils.GsonGetter;
import com.guochao.faceshow.utils.HandlerGetter;
import com.guochao.faceshow.utils.LOCAL_EVENT_MSG;
import com.guochao.faceshow.utils.LiveInfoUtils;
import com.guochao.faceshow.utils.ReportController;
import com.guochao.faceshow.utils.TimeUtil;
import com.guochao.faceshow.views.NormalCircleImageView;
import com.guochao.faceshow.views.e;
import com.opensource.svgaplayer.SVGACallback;
import com.opensource.svgaplayer.SVGAImageView;
import com.opensource.svgaplayer.SVGAParser;
import com.opensource.svgaplayer.SVGAVideoEntity;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.CopyOnWriteArrayList;
import org.greenrobot.eventbus.EventBus;
import org.jetbrains.annotations.NotNull;
/* loaded from: classes3.dex */
public class BaseDynamicViewHolder extends BaseViewHolder {

    /* renamed from: m  reason: collision with root package name */
    private static final int f22546m = ViewConfiguration.getDoubleTapTimeout();

    /* renamed from: n  reason: collision with root package name */
    static int f22547n = 0;

    /* renamed from: o  reason: collision with root package name */
    static int f22548o = 0;

    /* renamed from: p  reason: collision with root package name */
    static int f22549p = 0;

    /* renamed from: q  reason: collision with root package name */
    static int f22550q = 0;

    /* renamed from: a  reason: collision with root package name */
    protected final Context f22551a;

    /* renamed from: b  reason: collision with root package name */
    protected aa.e f22552b;

    /* renamed from: c  reason: collision with root package name */
    private boolean f22553c;
    @BindView
    View contentLayout;

    /* renamed from: d  reason: collision with root package name */
    private boolean f22554d;

    /* renamed from: e  reason: collision with root package name */
    private DynamicTranslateHolder f22555e;

    /* renamed from: f  reason: collision with root package name */
    private boolean f22556f;
    @BindView
    SVGAImageView focusSVGAImage;

    /* renamed from: g  reason: collision with root package name */
    protected DynamicBean f22557g;

    /* renamed from: h  reason: collision with root package name */
    SimpleDateFormat f22558h;

    /* renamed from: i  reason: collision with root package name */
    List<ImageView> f22559i;
    @BindView
    ImageView iconFocus;

    /* renamed from: j  reason: collision with root package name */
    private long f22560j;

    /* renamed from: k  reason: collision with root package name */
    private View.OnClickListener f22561k;

    /* renamed from: l  reason: collision with root package name */
    public Runnable f22562l;
    @BindView
    HeadPortraitView mAvatarView;
    @BindView
    ExpandableTextView mContentTextView;
    @BindView
    ImageView mImageViewLiveAnim;
    @BindView
    ImageView mImageViewPublishFail;
    @BindView
    View mLiveStatusView;
    @BindView
    SVGAImageView mSVGAImageView;
    @BindView
    ImageView mSVGAImageViewBg;
    @BindView
    TopicAndAtTextView mTopicAndAtTextView;
    @BindView
    View translateLay;

    /* loaded from: classes3.dex */
    class a implements h.b {
        a() {
        }

        @Override // com.guochao.faceshow.aaspring.views.h.b
        public void onClick(View view) {
            if (BaseDynamicViewHolder.this.D()) {
                BaseDynamicViewHolder.this.Q();
            } else {
                BaseDynamicViewHolder.this.P();
            }
        }

        @Override // com.guochao.faceshow.aaspring.views.h.b
        public void onDoubleTabClick(View view) {
            BaseDynamicViewHolder.this.q();
        }
    }

    /* loaded from: classes3.dex */
    class b implements PopupMenu.OnMenuItemClickListener {
        b() {
        }

        @Override // com.guochao.faceshow.aaspring.utils.PopupMenu.OnMenuItemClickListener
        public void onItemClick(PopupMenuItem popupMenuItem, View view) {
            ((ClipboardManager) BaseDynamicViewHolder.this.f22551a.getSystemService("clipboard")).setPrimaryClip(ClipData.newPlainText("FaceCast", BaseDynamicViewHolder.this.f22557g.getContent()));
        }
    }

    /* loaded from: classes3.dex */
    class c implements PopupMenu.OnDismissListener {
        c() {
        }

        @Override // com.guochao.faceshow.aaspring.utils.PopupMenu.OnDismissListener
        public void onDismiss() {
            BaseDynamicViewHolder.this.mTopicAndAtTextView.a(true);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class d implements BottomMenuFragment.b {
        d() {
        }

        @Override // com.guochao.faceshow.aaspring.base.fragment.BottomMenuFragment.b
        public void a(BottomMenuBean bottomMenuBean, Dialog dialog, DialogFragment dialogFragment) {
            switch (bottomMenuBean.getItemId()) {
                case R.string.Cancel_the_attention /* 2131886092 */:
                    BaseDynamicViewHolder.this.R();
                    return;
                case R.string.blacklist /* 2131886359 */:
                    BaseDynamicViewHolder.this.M();
                    return;
                case R.string.no_interest /* 2131887750 */:
                    AppContentFilter.INSTANCE.doNotWantToSee(BaseDynamicViewHolder.this.f22557g);
                    BaseDynamicViewHolder baseDynamicViewHolder = BaseDynamicViewHolder.this;
                    aa.e eVar = baseDynamicViewHolder.f22552b;
                    if (eVar != null) {
                        eVar.onDeleteDynamic(baseDynamicViewHolder, baseDynamicViewHolder.f22557g);
                        return;
                    }
                    return;
                case R.string.report /* 2131888039 */:
                    BaseDynamicViewHolder baseDynamicViewHolder2 = BaseDynamicViewHolder.this;
                    ReportController.report((Activity) baseDynamicViewHolder2.f22551a, baseDynamicViewHolder2.f22557g.getUserId(), String.valueOf(BaseDynamicViewHolder.this.f22557g.getFriendId()), "12");
                    return;
                case R.string.unblock /* 2131888524 */:
                    BaseDynamicViewHolder.this.S();
                    return;
                default:
                    return;
            }
        }

        @Override // com.guochao.faceshow.aaspring.base.fragment.BottomMenuFragment.b
        public void onCancel(Dialog dialog, DialogFragment dialogFragment) {
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class e implements hb.b {
        e() {
        }

        @Override // hb.b
        public /* synthetic */ void onFail(Object obj) {
            hb.a.a(this, obj);
        }

        @Override // hb.b
        public void onResponse(Object obj) {
            int userAttentStatus = BaseDynamicViewHolder.this.f22557g.getUserAttentStatus();
            if (userAttentStatus == 3) {
                userAttentStatus = 1;
            } else if (userAttentStatus == 4) {
                userAttentStatus = 2;
            }
            ToastUtils.showToast(BaseDynamicViewHolder.this.f22551a, (int) R.string.Unfollow_success);
            BaseDynamicViewHolder.this.f22557g.setUserAttentStatus(userAttentStatus);
            BaseDynamicViewHolder baseDynamicViewHolder = BaseDynamicViewHolder.this;
            aa.e eVar = baseDynamicViewHolder.f22552b;
            if (eVar != null) {
                eVar.onFocusStateChanged(baseDynamicViewHolder, baseDynamicViewHolder.f22557g, false);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class f implements e.a {
        f() {
        }

        @Override // com.guochao.faceshow.views.e.a
        public void onClick(Dialog dialog, boolean z10) {
            if (z10) {
                dialog.dismiss();
                BaseDynamicViewHolder.this.p();
            }
        }

        @Override // com.guochao.faceshow.views.e.a
        public /* synthetic */ void onCreate(com.guochao.faceshow.views.e eVar) {
            com.guochao.faceshow.views.d.a(this, eVar);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class g extends com.guochao.faceshow.aaspring.base.http.callback.c<String> {
        g() {
        }

        @Override // com.guochao.faceshow.aaspring.base.http.callback.c
        public void onFailure(g7.a<String> aVar) {
        }

        @Override // com.guochao.faceshow.aaspring.base.http.callback.c
        public void onResponse(String str, @NonNull FaceCastBaseResponse<String> faceCastBaseResponse) {
            try {
                BlackResponse blackResponse = (BlackResponse) GsonGetter.getGson().fromJson(str, (Class<Object>) BlackResponse.class);
                if (blackResponse.getErrorCode() != 0 || blackResponse.getResultItem() == null || blackResponse.getResultItem().isEmpty() || blackResponse.getResultItem().get(0).getResultCode() != 0) {
                    return;
                }
                ToastUtils.showToast(BaseDynamicViewHolder.this.f22551a, (int) R.string.Shielding_success);
                BaseDynamicViewHolder.this.f22557g.setBlacked(true);
                BaseDynamicViewHolder baseDynamicViewHolder = BaseDynamicViewHolder.this;
                aa.e eVar = baseDynamicViewHolder.f22552b;
                if (eVar != null) {
                    eVar.onBlackStateChanged(baseDynamicViewHolder, baseDynamicViewHolder.f22557g, true);
                }
                EventBus.getDefault().post(new Intent(LOCAL_EVENT_MSG.BLACK_NAME_ADD_OTHER));
            } catch (Exception e10) {
                e10.printStackTrace();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class h extends com.guochao.faceshow.aaspring.base.http.callback.c<String> {
        h() {
        }

        @Override // com.guochao.faceshow.aaspring.base.http.callback.c
        public void onFailure(g7.a<String> aVar) {
        }

        @Override // com.guochao.faceshow.aaspring.base.http.callback.c
        public void onResponse(String str, @NonNull FaceCastBaseResponse<String> faceCastBaseResponse) {
            ToastUtils.showToast(BaseDynamicViewHolder.this.f22551a, (int) R.string.Successfully_unmasking);
            EventBus.getDefault().post(new Intent(LOCAL_EVENT_MSG.BLACK_NAME_CANCLE_OTHER));
            BaseDynamicViewHolder.this.f22557g.setBlacked(false);
            BaseDynamicViewHolder baseDynamicViewHolder = BaseDynamicViewHolder.this;
            aa.e eVar = baseDynamicViewHolder.f22552b;
            if (eVar != null) {
                eVar.onBlackStateChanged(baseDynamicViewHolder, baseDynamicViewHolder.f22557g, false);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class i implements BottomMenuFragment.b {

        /* loaded from: classes3.dex */
        class a implements e.a {
            a() {
            }

            @Override // com.guochao.faceshow.views.e.a
            public void onClick(Dialog dialog, boolean z10) {
                if (z10) {
                    dialog.dismiss();
                    BaseDynamicViewHolder.this.A();
                }
            }

            @Override // com.guochao.faceshow.views.e.a
            public /* synthetic */ void onCreate(com.guochao.faceshow.views.e eVar) {
                com.guochao.faceshow.views.d.a(this, eVar);
            }
        }

        i() {
        }

        @Override // com.guochao.faceshow.aaspring.base.fragment.BottomMenuFragment.b
        public void a(BottomMenuBean bottomMenuBean, Dialog dialog, DialogFragment dialogFragment) {
            int itemId = bottomMenuBean.getItemId();
            if (itemId == R.string.delete) {
                new com.guochao.faceshow.views.e(BaseDynamicViewHolder.this.f22551a, new a()).b(BaseDynamicViewHolder.this.f22551a.getText(R.string.ugc_are_you_sure_to_delete_the_dynamic)).show();
            } else if (itemId != R.string.who_can_look) {
            } else {
                BaseDynamicViewHolder.this.N();
            }
        }

        @Override // com.guochao.faceshow.aaspring.base.fragment.BottomMenuFragment.b
        public void onCancel(Dialog dialog, DialogFragment dialogFragment) {
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class j extends com.guochao.faceshow.aaspring.base.http.callback.c<Object> {
        j() {
        }

        @Override // com.guochao.faceshow.aaspring.base.http.callback.c
        public void onFailure(@NonNull g7.a<Object> aVar) {
            LogUtils.i("DynamicViewHolder", "onFailure:  delete dynamic failed" + aVar.b());
        }

        @Override // com.guochao.faceshow.aaspring.base.http.callback.c
        public void onResponse(@Nullable Object obj, @NonNull FaceCastBaseResponse<Object> faceCastBaseResponse) {
            BaseDynamicViewHolder baseDynamicViewHolder = BaseDynamicViewHolder.this;
            aa.e eVar = baseDynamicViewHolder.f22552b;
            if (eVar != null) {
                eVar.onDeleteDynamic(baseDynamicViewHolder, baseDynamicViewHolder.f22557g);
            }
        }
    }

    /* loaded from: classes3.dex */
    class k implements TopicAndAtTextHelper.OnDoubleTapClickListener {
        k() {
        }

        @Override // com.guochao.faceshow.aaspring.utils.TopicAndAtTextHelper.OnDoubleTapClickListener
        public void onDoubleTap() {
            BaseDynamicViewHolder.this.q();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class l implements SVGAParser.ParseCompletion {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ int f22575a;

        /* loaded from: classes3.dex */
        class a implements SVGACallback {
            a() {
            }

            @Override // com.opensource.svgaplayer.SVGACallback
            public void onFinished() {
                BaseDynamicViewHolder.this.mSVGAImageView.setVideoItem(null);
                BaseDynamicViewHolder.this.mSVGAImageView.setImageResource(R.mipmap.icon_ugc_like_red);
                BaseDynamicViewHolder.this.mSVGAImageViewBg.setImageResource(R.mipmap.icon_ugc_like_red);
                BaseDynamicViewHolder.this.mSVGAImageViewBg.setVisibility(0);
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

        l(int i9) {
            this.f22575a = i9;
        }

        @Override // com.opensource.svgaplayer.SVGAParser.ParseCompletion
        public void onComplete(@NotNull SVGAVideoEntity sVGAVideoEntity) {
            if (this.f22575a != BaseDynamicViewHolder.this.getAdapterPosition()) {
                return;
            }
            BaseDynamicViewHolder.this.mSVGAImageView.setVideoItem(sVGAVideoEntity);
            BaseDynamicViewHolder.this.mSVGAImageView.setLoops(1);
            BaseDynamicViewHolder.this.mSVGAImageView.setClearsAfterStop(false);
            BaseDynamicViewHolder.this.mSVGAImageView.startAnimation();
            BaseDynamicViewHolder.this.mSVGAImageView.setCallback(new a());
        }

        @Override // com.opensource.svgaplayer.SVGAParser.ParseCompletion
        public void onError() {
            LogUtils.i("DynamicViewHolder", "onError: ");
            BaseDynamicViewHolder.this.mSVGAImageView.setVideoItem(null);
            BaseDynamicViewHolder.this.mSVGAImageView.setImageResource(R.mipmap.icon_ugc_like_red);
            BaseDynamicViewHolder.this.mSVGAImageViewBg.setImageResource(R.mipmap.icon_ugc_like_red);
            BaseDynamicViewHolder.this.mSVGAImageViewBg.setVisibility(0);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class m implements BottomMenuFragment.b {
        m() {
        }

        @Override // com.guochao.faceshow.aaspring.base.fragment.BottomMenuFragment.b
        public void a(BottomMenuBean bottomMenuBean, Dialog dialog, DialogFragment dialogFragment) {
            switch (bottomMenuBean.getItemId()) {
                case R.string.open_video /* 2131887788 */:
                    BaseDynamicViewHolder.this.r(0);
                    return;
                case R.string.private_video /* 2131887931 */:
                    BaseDynamicViewHolder.this.r(6);
                    return;
                case R.string.ugc_fans_only /* 2131888467 */:
                    BaseDynamicViewHolder.this.r(5);
                    return;
                case R.string.ugc_friend_only /* 2131888469 */:
                    BaseDynamicViewHolder.this.r(3);
                    return;
                default:
                    return;
            }
        }

        @Override // com.guochao.faceshow.aaspring.base.fragment.BottomMenuFragment.b
        public void onCancel(Dialog dialog, DialogFragment dialogFragment) {
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class n extends com.guochao.faceshow.aaspring.base.http.callback.c<Object> {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ int f22579a;

        n(int i9) {
            this.f22579a = i9;
        }

        @Override // com.guochao.faceshow.aaspring.base.http.callback.c
        public void onFailure(@NonNull g7.a<Object> aVar) {
        }

        @Override // com.guochao.faceshow.aaspring.base.http.callback.c
        public void onResponse(@Nullable Object obj, @NonNull FaceCastBaseResponse<Object> faceCastBaseResponse) {
            ToastUtils.showToast(BaseDynamicViewHolder.this.f22551a, (int) R.string.ugc_visibility_permission_changed);
            BaseDynamicViewHolder.this.f22557g.setShield(this.f22579a);
            if (this.f22579a == 6) {
                BaseDynamicViewHolder.this.getView(R.id.icon_private_lock).setVisibility(0);
            } else {
                BaseDynamicViewHolder.this.getView(R.id.icon_private_lock).setVisibility(8);
            }
        }
    }

    /* loaded from: classes3.dex */
    class o implements Runnable {
        o() {
        }

        @Override // java.lang.Runnable
        public void run() {
            BaseDynamicViewHolder baseDynamicViewHolder = BaseDynamicViewHolder.this;
            aa.e eVar = baseDynamicViewHolder.f22552b;
            if (!(eVar instanceof NewestDynamicListFragment) || ((NewestDynamicListFragment) eVar).f22769a == baseDynamicViewHolder.getAdapterPosition()) {
                View view = BaseDynamicViewHolder.this.getView(R.id.like_tips);
                view.setVisibility(0);
                int i9 = BaseDynamicViewHolder.this.f22551a.getResources().getDisplayMetrics().widthPixels;
                int[] iArr = new int[2];
                BaseDynamicViewHolder.this.itemView.getLocationInWindow(new int[2]);
                BaseDynamicViewHolder.this.mSVGAImageView.getLocationInWindow(iArr);
                FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) view.getLayoutParams();
                if (Language.ARABIC.equalsIgnoreCase(q7.a.e().c())) {
                    layoutParams.setMarginEnd((iArr[0] - DensityUtil.dp2px(20.0f)) + (BaseDynamicViewHolder.this.mSVGAImageView.getMeasuredWidth() / 2));
                } else {
                    layoutParams.setMarginStart(DensityUtil.dp2px(74.25f));
                    layoutParams.setMarginEnd(((i9 - iArr[0]) - DensityUtil.dp2px(25.0f)) - (BaseDynamicViewHolder.this.mSVGAImageView.getMeasuredWidth() / 2));
                }
                view.setLayoutParams(layoutParams);
                view.setVisibility(0);
            }
        }
    }

    /* loaded from: classes3.dex */
    class p implements h.b {
        p() {
        }

        @Override // com.guochao.faceshow.aaspring.views.h.b
        public void onClick(View view) {
            BaseDynamicViewHolder baseDynamicViewHolder = BaseDynamicViewHolder.this;
            aa.e eVar = baseDynamicViewHolder.f22552b;
            if (eVar != null) {
                eVar.onAvatarClicked(baseDynamicViewHolder, baseDynamicViewHolder.f22557g);
            }
        }

        @Override // com.guochao.faceshow.aaspring.views.h.b
        public void onDoubleTabClick(View view) {
            BaseDynamicViewHolder.this.q();
        }
    }

    /* loaded from: classes3.dex */
    class q implements h.b {
        q() {
        }

        @Override // com.guochao.faceshow.aaspring.views.h.b
        public void onClick(View view) {
            if (BaseDynamicViewHolder.this.f22557g.getLiveState() == 1) {
                BaseDynamicViewHolder.this.w(view);
            }
        }

        @Override // com.guochao.faceshow.aaspring.views.h.b
        public void onDoubleTabClick(View view) {
            BaseDynamicViewHolder.this.q();
        }
    }

    /* loaded from: classes3.dex */
    class r implements h.b {
        r() {
        }

        @Override // com.guochao.faceshow.aaspring.views.h.b
        public void onClick(View view) {
            BaseDynamicViewHolder baseDynamicViewHolder;
            aa.e eVar;
            if ((BaseDynamicViewHolder.this.f22557g.isPublishable() || BaseDynamicViewHolder.this.f22557g.getPublishStatus() == 3) && (eVar = (baseDynamicViewHolder = BaseDynamicViewHolder.this).f22552b) != null) {
                eVar.onResendClicked(baseDynamicViewHolder, baseDynamicViewHolder.f22557g);
            }
        }

        @Override // com.guochao.faceshow.aaspring.views.h.b
        public void onDoubleTabClick(View view) {
            BaseDynamicViewHolder.this.q();
        }
    }

    /* loaded from: classes3.dex */
    class s implements h.b {
        s() {
        }

        @Override // com.guochao.faceshow.aaspring.views.h.b
        public void onClick(View view) {
            Context context;
            if (BaseDynamicViewHolder.this.f22557g.isPublishable() || BaseDynamicViewHolder.this.f22557g.getIsComment() == 1 || (context = BaseDynamicViewHolder.this.f22551a) == null) {
                return;
            }
            FragmentActivity fragmentActivity = (FragmentActivity) context;
            if (fragmentActivity.isDestroyed() || fragmentActivity.isFinishing()) {
                return;
            }
            BaseDynamicViewHolder baseDynamicViewHolder = BaseDynamicViewHolder.this;
            aa.e eVar = baseDynamicViewHolder.f22552b;
            if (eVar != null) {
                eVar.onCommentButtonClicked(baseDynamicViewHolder, baseDynamicViewHolder.f22557g);
            }
            DynamicCommentListFragment.h1(view.getContext(), BaseDynamicViewHolder.this.f22557g.getFriendId(), BaseDynamicViewHolder.this.f22557g.getUserId(), null);
        }

        @Override // com.guochao.faceshow.aaspring.views.h.b
        public void onDoubleTabClick(View view) {
            BaseDynamicViewHolder.this.q();
        }
    }

    /* loaded from: classes3.dex */
    class t implements h.b {
        t() {
        }

        @Override // com.guochao.faceshow.aaspring.views.h.b
        public void onClick(View view) {
            BaseDynamicViewHolder.this.H();
        }

        @Override // com.guochao.faceshow.aaspring.views.h.b
        public void onDoubleTabClick(View view) {
            BaseDynamicViewHolder.this.q();
        }
    }

    /* loaded from: classes3.dex */
    class u implements h.b {

        /* loaded from: classes3.dex */
        class a implements Runnable {
            a() {
            }

            @Override // java.lang.Runnable
            public void run() {
                BaseDynamicViewHolder.this.f22556f = false;
                DynamicBean dynamicBean = BaseDynamicViewHolder.this.f22557g;
                if (dynamicBean == null) {
                    return;
                }
                int userAttentStatus = dynamicBean.getUserAttentStatus();
                if (userAttentStatus == 1) {
                    userAttentStatus = 3;
                } else if (userAttentStatus == 2) {
                    userAttentStatus = 4;
                }
                BaseDynamicViewHolder.this.f22557g.setUserAttentStatus(userAttentStatus);
                BaseDynamicViewHolder baseDynamicViewHolder = BaseDynamicViewHolder.this;
                aa.e eVar = baseDynamicViewHolder.f22552b;
                if (eVar != null) {
                    eVar.onFocusStateChanged(baseDynamicViewHolder, baseDynamicViewHolder.f22557g, true);
                }
            }
        }

        /* loaded from: classes3.dex */
        class b implements hb.b<String> {
            b() {
            }

            @Override // hb.b
            /* renamed from: a */
            public void onResponse(String str) {
            }

            @Override // hb.b
            public /* synthetic */ void onFail(String str) {
                hb.a.a(this, str);
            }
        }

        u() {
        }

        @Override // com.guochao.faceshow.aaspring.views.h.b
        public void onClick(View view) {
            if (DisableDoubleClickUtils.canClick(view, 500L)) {
                if (BaseDynamicViewHolder.this.f22557g.getUserAttentStatus() > 2) {
                    if (b8.e.g().getUserId().equals(BaseDynamicViewHolder.this.f22557g.getUserId())) {
                        return;
                    }
                    EventTrackingV2Utils.INSTANCE.track(EventTrackingV2Utils.ugc_sayhi_click);
                    BaseDynamicViewHolder baseDynamicViewHolder = BaseDynamicViewHolder.this;
                    ChatActivity.navToChat(baseDynamicViewHolder.f22551a, baseDynamicViewHolder.f22557g.getUserId(), 1, BaseDynamicViewHolder.this.f22557g.getNickName());
                    return;
                }
                EventTrackingV2Utils.INSTANCE.track(EventTrackingV2Utils.ugc_focus_click);
                BaseDynamicViewHolder.this.f22556f = true;
                HandlerGetter.getMainHandler().postDelayed(new a(), ib.b.f41005a);
                BaseDynamicViewHolder baseDynamicViewHolder2 = BaseDynamicViewHolder.this;
                ib.a.b(baseDynamicViewHolder2.iconFocus, baseDynamicViewHolder2.focusSVGAImage, R.raw.focus_large_width, R.mipmap.ugc_hi);
                ib.b.b(BaseDynamicViewHolder.this.f22557g.getUserId(), FriendFromSource.UGC, (Activity) BaseDynamicViewHolder.this.itemView.getContext(), new b());
            }
        }

        @Override // com.guochao.faceshow.aaspring.views.h.b
        public void onDoubleTabClick(View view) {
            BaseDynamicViewHolder.this.q();
        }
    }

    /* loaded from: classes3.dex */
    class v implements View.OnClickListener {

        /* loaded from: classes3.dex */
        class a implements h.b {
            a() {
            }

            @Override // com.guochao.faceshow.aaspring.views.h.b
            public void onClick(View view) {
                if (BaseDynamicViewHolder.this.f22557g.isPublishable()) {
                    return;
                }
                BaseDynamicViewHolder.this.f22551a.startActivity(new Intent(BaseDynamicViewHolder.this.f22551a, DynamicLikeUserListActivity.class).putExtra("data", BaseDynamicViewHolder.this.f22557g));
            }

            @Override // com.guochao.faceshow.aaspring.views.h.b
            public void onDoubleTabClick(View view) {
                BaseDynamicViewHolder.this.q();
            }
        }

        v() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            com.guochao.faceshow.aaspring.views.h.c(view, new a());
        }
    }

    public BaseDynamicViewHolder(Context context, View view) {
        super(view);
        this.f22553c = false;
        this.f22554d = false;
        this.f22556f = false;
        this.f22558h = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
        this.f22559i = new CopyOnWriteArrayList();
        this.f22561k = new v();
        this.f22562l = new o();
        this.f22551a = context;
        this.f22555e = new DynamicTranslateHolder(this, this.translateLay);
        this.mTopicAndAtTextView.getTopicAndAtTextHelper().setOnDoubleTapClickListener(new k());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void A() {
        if (C(this.f22557g)) {
            ba.a.r().m(PublishUgcBean.fromDynamic(this.f22557g));
            aa.e eVar = this.f22552b;
            if (eVar != null) {
                eVar.onDeleteDynamic(this, this.f22557g);
                return;
            }
            return;
        }
        new PostRequest("tokens/friend/deleteV2").v("friendId", Integer.valueOf(this.f22557g.getFriendId())).M(new j());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void E(View view) {
        Object tag = view.getTag();
        if (tag instanceof String) {
            Context context = this.f22551a;
            if ((context instanceof AddressDynamicListActivity) && ((String) tag).equalsIgnoreCase(((AddressDynamicListActivity) context).b0())) {
                ((AddressDynamicListActivity) this.f22551a).d0();
            } else {
                AddressDynamicListActivity.start(this.f22551a, (String) view.getTag(), null);
            }
        }
    }

    private ImageView F(int i9) {
        for (int i10 = 0; i10 < this.f22559i.size(); i10++) {
            ImageView imageView = this.f22559i.get(i10);
            if (imageView.getParent() == null) {
                this.f22559i.remove(i10);
                return imageView;
            }
        }
        NormalCircleImageView normalCircleImageView = new NormalCircleImageView(this.f22551a);
        normalCircleImageView.setBorderColor(this.f22551a.getResources().getColor(R.color.white));
        normalCircleImageView.setBorderWidth(DensityUtil.dp2px(this.f22551a, 1.0f));
        LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(DensityUtil.dp2px(this.f22551a, 20.0f), DensityUtil.dp2px(this.f22551a, 20.0f));
        layoutParams.setMarginStart(-DensityUtil.dp2px(this.f22551a, 6.0f));
        normalCircleImageView.setLayoutParams(layoutParams);
        normalCircleImageView.setOnClickListener(this.f22561k);
        return normalCircleImageView;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void H() {
        aa.e eVar = this.f22552b;
        if (eVar != null) {
            eVar.onLikeClick(this, this.f22557g, getAdapterPosition());
        }
        if (!this.f22557g.isPublishable() && System.currentTimeMillis() - this.f22560j >= 500) {
            this.f22560j = System.currentTimeMillis();
            int i9 = 0;
            boolean z10 = this.f22557g.getIsLike() == 1;
            List<String> likeUserImgList = this.f22557g.getLikeUserImgList();
            if (likeUserImgList == null) {
                DynamicBean dynamicBean = this.f22557g;
                ArrayList arrayList = new ArrayList();
                dynamicBean.setLikeUserImgList(arrayList);
                likeUserImgList = arrayList;
            }
            int i10 = -1;
            if (z10) {
                this.f22557g.setIsLike(0);
                DynamicBean dynamicBean2 = this.f22557g;
                dynamicBean2.setLikeNum(dynamicBean2.getLikeNum() - 1);
                while (true) {
                    if (i9 >= likeUserImgList.size()) {
                        break;
                    } else if (likeUserImgList.get(i9).equals(b8.e.g().b())) {
                        i10 = i9;
                        break;
                    } else {
                        i9++;
                    }
                }
                if (i10 >= 0) {
                    likeUserImgList.remove(i10);
                }
            } else {
                this.f22557g.setIsLike(1);
                DynamicBean dynamicBean3 = this.f22557g;
                dynamicBean3.setLikeNum(dynamicBean3.getLikeNum() + 1);
                int i11 = 0;
                while (true) {
                    if (i11 >= likeUserImgList.size()) {
                        break;
                    } else if (likeUserImgList.get(i11).equals(b8.e.g().b())) {
                        i10 = i11;
                        break;
                    } else {
                        i11++;
                    }
                }
                if (i10 < 0) {
                    likeUserImgList.add(0, b8.e.g().b());
                }
                ja.a.b().e("KEY_UGC_LIKE");
            }
            t(this.f22557g, true);
            v(this.f22557g);
            if (z10) {
                new PostRequest("tokens/friend/cancelFriendLike").B("friendId", this.f22557g.getFriendId()).M(null);
                return;
            }
            EventTrackingV2Utils.INSTANCE.track(EventTrackingV2Utils.ugc_like);
            new PostRequest("tokens/friend/insertFriendLike").B("friendId", this.f22557g.getFriendId()).M(null);
        }
    }

    private void J(boolean z10, int i9, int i10, String str, int i11, String str2) {
        if (z10) {
            getView(i9).setVisibility(i10);
            setText(i9, str);
            return;
        }
        getView(i9).setVisibility(i11);
        setText(i9, str2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void M() {
        com.guochao.faceshow.views.e eVar = new com.guochao.faceshow.views.e(this.f22551a, new f());
        eVar.f(this.f22551a.getString(R.string.ugc_sure_to_block_this_user));
        eVar.k(this.f22551a.getString(R.string.f16064ok));
        eVar.i(this.f22551a.getString(R.string.str_no));
        eVar.show();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void N() {
        int[] iArr = (!BaseConfig.isChinese() || TextUtils.isEmpty(this.f22557g.getVideoId())) ? new int[]{R.string.ugc_fans_only, R.string.ugc_friend_only, R.string.open_video, R.string.private_video} : new int[]{R.string.open_video, R.string.private_video};
        ArrayList arrayList = new ArrayList();
        for (int i9 = 0; i9 < iArr.length; i9++) {
            BottomMenuBean bottomMenuBean = new BottomMenuBean();
            bottomMenuBean.setItemId(iArr[i9]);
            bottomMenuBean.setText(this.f22551a.getText(iArr[i9]));
            bottomMenuBean.setTextColor(this.f22551a.getResources().getColorStateList(R.color.color_ugc_text_level_1));
            arrayList.add(bottomMenuBean);
        }
        BottomMenuFragment.S1(((FragmentActivity) this.f22551a).getSupportFragmentManager(), arrayList, new m());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void P() {
        boolean z10 = this.f22557g.getUserAttentStatus() == 3 || this.f22557g.getUserAttentStatus() == 4;
        ArrayList arrayList = new ArrayList();
        BottomMenuBean bottomMenuBean = new BottomMenuBean();
        bottomMenuBean.setText(this.f22551a.getText(R.string.no_interest));
        bottomMenuBean.setItemId(R.string.no_interest);
        arrayList.add(bottomMenuBean);
        BottomMenuBean bottomMenuBean2 = new BottomMenuBean();
        bottomMenuBean2.setText(this.f22551a.getText(R.string.report));
        bottomMenuBean2.setItemId(R.string.report);
        arrayList.add(bottomMenuBean2);
        if (this.f22557g.isBlacked()) {
            BottomMenuBean bottomMenuBean3 = new BottomMenuBean();
            bottomMenuBean3.setText(this.f22551a.getText(R.string.unblock));
            bottomMenuBean3.setItemId(R.string.unblock);
            arrayList.add(bottomMenuBean3);
        } else {
            BottomMenuBean bottomMenuBean4 = new BottomMenuBean();
            bottomMenuBean4.setText(this.f22551a.getText(R.string.blacklist));
            bottomMenuBean4.setItemId(R.string.blacklist);
            arrayList.add(bottomMenuBean4);
        }
        if (z10) {
            BottomMenuBean bottomMenuBean5 = new BottomMenuBean();
            bottomMenuBean5.setText(this.f22551a.getText(R.string.Cancel_the_attention));
            bottomMenuBean5.setItemId(R.string.Cancel_the_attention);
            arrayList.add(bottomMenuBean5);
        }
        BottomMenuFragment.S1(((FragmentActivity) this.f22551a).getSupportFragmentManager(), arrayList, new d());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void Q() {
        if (C(this.f22557g) && this.f22557g.getPublishStatus() == 1) {
            return;
        }
        ArrayList arrayList = new ArrayList();
        if (!C(this.f22557g)) {
            BottomMenuBean bottomMenuBean = new BottomMenuBean();
            bottomMenuBean.setItemId(R.string.who_can_look);
            bottomMenuBean.setText(this.f22551a.getText(R.string.who_can_look));
            arrayList.add(bottomMenuBean);
        }
        BottomMenuBean bottomMenuBean2 = new BottomMenuBean();
        bottomMenuBean2.setItemId(R.string.delete);
        bottomMenuBean2.setText(this.f22551a.getText(R.string.delete));
        bottomMenuBean2.setTextColor(this.f22551a.getResources().getColorStateList(R.color.color_ugc_app_tips));
        arrayList.add(bottomMenuBean2);
        BottomMenuFragment.S1(((FragmentActivity) this.f22551a).getSupportFragmentManager(), arrayList, new i());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void R() {
        ib.b.a(this.f22557g.getUserId() + "", (Activity) this.f22551a, new e());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void S() {
        this.f22557g.setBlacked(false);
        new PostRequest("tokens/report/deletebacklist").D(Contants.USER_ID, this.f22557g.getUserId()).D("account", this.f22557g.getUserId()).M(new h());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void p() {
        this.f22557g.setBlacked(true);
        new PostRequest("tokens/im/Friend/black_list_add").D("From_Account", b8.e.g().c().getUserId()).D("To_Account", this.f22557g.getUserId()).M(new g());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void r(int i9) {
        new PostRequest("tokens/friend/updateRingInfo").v("friendId", Integer.valueOf(this.f22557g.getFriendId())).v("shield", Integer.valueOf(i9)).M(new n(i9));
    }

    private void s(DynamicBean dynamicBean) {
        String ugcTime;
        boolean isPublishable = dynamicBean.isPublishable();
        this.mImageViewPublishFail.setVisibility(8);
        boolean z10 = true;
        String str = "";
        if (isPublishable) {
            int publishStatus = dynamicBean.getPublishStatus();
            if (publishStatus == 0 || publishStatus == 1) {
                str = this.f22551a.getString(R.string.ugc_publishing);
            } else if (publishStatus == 3) {
                str = this.f22551a.getString(R.string.ugc_publish_fail_retry);
                this.mImageViewPublishFail.setVisibility(0);
            }
            setText(R.id.time, str);
        } else {
            try {
                if (this.f22557g.getPublishStatus() != 0) {
                    ugcTime = TimeUtil.getIMTime(this.f22551a, System.currentTimeMillis() - this.f22558h.parse(this.f22557g.getCreateTime()).getTime());
                } else {
                    ugcTime = TimeUtil.getUgcTime(this.f22551a, this.f22557g.getCreateTimeStamp());
                }
                str = ugcTime;
            } catch (Exception unused) {
            }
            if (this.f22553c && !TextUtils.isEmpty(this.f22557g.getDistance())) {
                str = str + "(" + this.f22557g.getDistance() + ")";
            }
            setText(R.id.time, str);
        }
        String address = dynamicBean.getAddress();
        z10 = (this.f22557g.getIsShowSeat() == 0 && this.f22557g.getRingFrom() == 0 && !TextUtils.isEmpty(address)) ? false : false;
        View view = getView(R.id.address_area);
        view.setTag(address);
        view.setOnClickListener(new View.OnClickListener() { // from class: com.guochao.faceshow.aaspring.modulars.ugc.base.a
            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                BaseDynamicViewHolder.this.E(view2);
            }
        });
        if (z10) {
            view.setVisibility(0);
            ((TextView) getView(R.id.address)).setText(new SpannableStringBuilder(address));
            return;
        }
        view.setVisibility(8);
    }

    private void t(DynamicBean dynamicBean, boolean z10) {
        if (dynamicBean.getShield() == 6) {
            getView(R.id.icon_private_lock).setVisibility(0);
        } else {
            getView(R.id.icon_private_lock).setVisibility(8);
        }
        getView(R.id.like_area).setVisibility(0);
        getView(R.id.comment_area).setVisibility(0);
        getView(R.id.like_count_tv).setVisibility(0);
        getView(R.id.comment_count_tv).setVisibility(0);
        if (dynamicBean.isPublishable()) {
            getView(R.id.like_count_tv).setVisibility(4);
            getView(R.id.comment_count_tv).setVisibility(4);
            return;
        }
        if (dynamicBean.getIsComment() == 0) {
            getView(R.id.comment_area).setVisibility(0);
            int commentNum = dynamicBean.getCommentNum();
            J(commentNum <= 0, R.id.comment_count_tv, 4, "", 0, Formatter.getFormat(commentNum));
        } else {
            getView(R.id.comment_area).setVisibility(4);
        }
        int likeNum = dynamicBean.getLikeNum();
        boolean z11 = dynamicBean.getIsLike() == 1;
        getView(R.id.like_area).setSelected(z11);
        if (!z11) {
            this.mSVGAImageView.setImageResource(R.mipmap.icon_ugc_like_gray);
            this.mSVGAImageViewBg.setImageResource(R.mipmap.icon_ugc_like_gray);
            this.mSVGAImageViewBg.setVisibility(0);
        } else if (z10) {
            this.mSVGAImageViewBg.setVisibility(8);
            SvgaImageViewUtils.getParser().decodeFromInputStream(this.f22551a.getResources().openRawResource(R.raw.short_video_like), "ugc_like", new l(getAdapterPosition()), true);
        } else {
            this.mSVGAImageView.setVideoItem(null);
            this.mSVGAImageView.setImageResource(R.mipmap.icon_ugc_like_red);
            this.mSVGAImageViewBg.setImageResource(R.mipmap.icon_ugc_like_red);
            this.mSVGAImageViewBg.setVisibility(0);
        }
        J(likeNum <= 0, R.id.like_count_tv, 4, "", 0, Formatter.getFormat(likeNum));
    }

    private void u(DynamicBean dynamicBean) {
        new UserCenterSexLevel(getView(R.id.user_center_age_level), false, false).d(dynamicBean);
    }

    private void v(DynamicBean dynamicBean) {
        ViewGroup viewGroup = (ViewGroup) getView(R.id.like_user_list_area);
        int childCount = viewGroup.getChildCount();
        for (int i9 = 0; i9 < childCount; i9++) {
            this.f22559i.add((ImageView) viewGroup.getChildAt(i9));
        }
        viewGroup.removeAllViews();
        if (dynamicBean.isPublishable()) {
            return;
        }
        List<String> likeUserImgList = dynamicBean.getLikeUserImgList();
        if (likeUserImgList == null) {
            likeUserImgList = new ArrayList<>();
            dynamicBean.setLikeUserImgList(likeUserImgList);
        }
        int size = likeUserImgList.size();
        boolean z10 = size > 2;
        if (z10) {
            size = 3;
        }
        for (int i10 = 0; i10 < size; i10++) {
            String str = likeUserImgList.get(i10);
            NormalCircleImageView normalCircleImageView = (NormalCircleImageView) F(i10);
            normalCircleImageView.setZ(i10);
            viewGroup.addView(normalCircleImageView, normalCircleImageView.getLayoutParams());
            if (z10 && i10 == size - 1) {
                hc.a.g(normalCircleImageView, Integer.valueOf((int) R.mipmap.icon_ugc_portrait_more));
            } else {
                hc.a.d(normalCircleImageView, str);
            }
        }
    }

    private void x(DynamicBean dynamicBean) {
        AnimationDrawable animationDrawable = (AnimationDrawable) this.mImageViewLiveAnim.getDrawable();
        if (dynamicBean.getLiveState() == 1) {
            animationDrawable.start();
            this.mLiveStatusView.setVisibility(0);
            return;
        }
        animationDrawable.stop();
        this.mLiveStatusView.setVisibility(8);
    }

    private void y(DynamicBean dynamicBean) {
        this.mTopicAndAtTextView.getTopicAndAtTextHelper().setClickable(!dynamicBean.isPublishable());
    }

    public void B() {
        getView(R.id.like_tips).setVisibility(8);
        this.itemView.removeCallbacks(this.f22562l);
    }

    boolean C(DynamicBean dynamicBean) {
        return dynamicBean.isPublishable();
    }

    boolean D() {
        DynamicBean dynamicBean = this.f22557g;
        return (dynamicBean == null || dynamicBean.getUserId() == null || !this.f22557g.getUserId().equals(b8.e.g().getUserId())) ? false : true;
    }

    public void G(DynamicBean dynamicBean) {
    }

    public void I(int i9) {
        int commentNum = this.f22557g.getCommentNum();
        if (i9 == 0) {
            this.f22557g.setCommentNum(commentNum + 1);
            J(this.f22557g.getCommentNum() > 0, R.id.comment_count_tv, 0, Formatter.getFormat(this.f22557g.getCommentNum()), 4, "");
        } else if (commentNum > 0) {
            this.f22557g.setCommentNum(commentNum - 1);
            J(this.f22557g.getCommentNum() > 0, R.id.comment_count_tv, 0, Formatter.getFormat(this.f22557g.getCommentNum()), 4, "");
        }
    }

    public void K(boolean z10) {
        this.f22554d = z10;
    }

    public void L(boolean z10) {
        this.f22553c = z10;
    }

    public void O(boolean z10) {
        this.itemView.removeCallbacks(this.f22562l);
        if (z10) {
            this.itemView.postDelayed(this.f22562l, 1500L);
        } else {
            this.itemView.post(this.f22562l);
        }
        View view = getView(R.id.like_tips);
        if (this.f22557g.getIsComment() == 0) {
            view.setBackgroundResource(R.drawable.ugc_qipao);
        } else {
            view.setBackgroundResource(R.drawable.ugc_qipao_no_comment);
        }
        view.setVisibility(4);
    }

    @OnClick
    public void clickAvatar(View view) {
        com.guochao.faceshow.aaspring.views.h.c(view, new p());
    }

    @OnClick
    public void focus(View view) {
        com.guochao.faceshow.aaspring.views.h.c(view, new u());
    }

    @OnClick
    public void like(View view) {
        com.guochao.faceshow.aaspring.views.h.c(view, new t());
    }

    public void o(DynamicBean dynamicBean) {
        View view = getView(R.id.like_tips);
        if (view.getVisibility() == 0) {
            view.setVisibility(8);
        } else if (view.getVisibility() == 4) {
            this.itemView.removeCallbacks(this.f22562l);
            view.setVisibility(8);
        }
        this.f22557g = dynamicBean;
        String content = dynamicBean.getContent();
        if (!BaseConfig.isChinese()) {
            this.f22555e.d(dynamicBean);
        }
        this.mContentTextView.h(content == null ? null : content.trim(), this.f22557g, this);
        z(dynamicBean);
        s(dynamicBean);
        x(dynamicBean);
        t(dynamicBean, false);
        u(dynamicBean);
        v(dynamicBean);
        y(dynamicBean);
        G(dynamicBean);
    }

    @OnClick
    public void openComment(View view) {
        com.guochao.faceshow.aaspring.views.h.c(view, new s());
    }

    public void q() {
        if (this.f22557g.getIsLike() != 1) {
            H();
        }
    }

    @OnClick
    public void retry(View view) {
        com.guochao.faceshow.aaspring.views.h.c(view, new r());
    }

    @OnClick
    public void seeLive(View view) {
        com.guochao.faceshow.aaspring.views.h.c(view, new q());
    }

    public void setOnDynamicOperationListener(aa.e eVar) {
        this.f22552b = eVar;
    }

    @OnLongClick
    public void showFloatMenu(View view) {
        ArrayList arrayList = new ArrayList();
        arrayList.add(new PopupMenuItem(0, this.f22551a.getString(R.string.copy)));
        PopupMenu popupMenu = new PopupMenu(this.f22551a);
        popupMenu.setMenus(arrayList);
        popupMenu.setOnMenuItemClickListener(new b());
        popupMenu.setOnDismissListener(new c());
        popupMenu.setAlpha(0.8f);
        this.mTopicAndAtTextView.a(false);
        popupMenu.show(view);
    }

    @OnClick
    public void showMore(View view) {
        com.guochao.faceshow.aaspring.views.h.c(view, new a());
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void w(View view) {
        if (DisableDoubleClickUtils.canClick(view)) {
            RoomItemData roomItemData = new RoomItemData();
            roomItemData.setUserId(String.valueOf(this.f22557g.getUserId()));
            roomItemData.setNickName(this.f22557g.getNickName());
            roomItemData.setLiveId(String.valueOf(this.f22557g.getLiveId()));
            roomItemData.setLiveImg(this.f22557g.getLiveImg());
            roomItemData.setImg(this.f22557g.getUserImg());
            roomItemData.setLiveType(String.valueOf(this.f22557g.getLiveType()));
            LiveInfoUtils.jumpToBaseLiveRoomAct((LiveRoomModel) roomItemData, this.f22551a, true);
        }
    }

    public void z(DynamicBean dynamicBean) {
        ImageView imageView = (ImageView) getView(R.id.mvpIV);
        if (!TextUtils.isEmpty(dynamicBean.getMVPUrl())) {
            imageView.setVisibility(0);
            com.bumptech.glide.c.v(imageView).r(dynamicBean.getMVPUrl()).m().Q0(imageView);
        } else {
            imageView.setVisibility(8);
        }
        TextView textView = (TextView) getView(R.id.user_name);
        if (dynamicBean.getUserVipMsg() != null && dynamicBean.getUserVipMsg().getVipLevel() == 2) {
            textView.setTextColor(this.f22551a.getResources().getColor(R.color.color_vvip_nick_name));
        } else {
            textView.setTextColor(this.f22551a.getResources().getColor(R.color.color_ugc_text_level_1));
        }
        setText(R.id.user_name, dynamicBean.getNickName());
        this.mAvatarView.d(dynamicBean);
        if (dynamicBean.getUserAttentStatus() == 4) {
            getView(R.id.is_friend).setVisibility(0);
        } else {
            getView(R.id.is_friend).setVisibility(8);
        }
        if (!D() && !this.f22556f) {
            this.iconFocus.setVisibility(0);
            if (this.f22557g.getUserAttentStatus() > 2) {
                this.iconFocus.setImageResource(R.mipmap.ugc_hi);
                return;
            } else {
                this.iconFocus.setImageResource(R.mipmap.icon_ugc_dynamic_focuson);
                return;
            }
        }
        this.iconFocus.setVisibility(8);
    }
}
