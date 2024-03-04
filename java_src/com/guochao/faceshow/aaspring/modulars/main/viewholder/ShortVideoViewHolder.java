package com.guochao.faceshow.aaspring.modulars.main.viewholder;

import android.animation.ObjectAnimator;
import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.graphics.drawable.AnimationDrawable;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.os.Bundle;
import android.os.Handler;
import android.text.TextUtils;
import android.view.GestureDetector;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.DecelerateInterpolator;
import android.view.animation.LinearInterpolator;
import android.widget.ImageView;
import android.widget.ProgressBar;
import android.widget.TextView;
import androidx.annotation.Nullable;
import androidx.constraintlayout.motion.widget.Key;
import androidx.core.view.GestureDetectorCompat;
import androidx.core.view.ViewCompat;
import androidx.fragment.app.FragmentActivity;
import androidx.lifecycle.Lifecycle;
import androidx.lifecycle.LifecycleObserver;
import androidx.lifecycle.OnLifecycleEvent;
import butterknife.BindView;
import com.guochao.component.voiceliveroom.event.VoiceRoomCloseEvent;
import com.guochao.component.voiceliveroom.helper.VoiceRoomMiniHelper;
import com.guochao.faceshow.BaseApplication;
import com.guochao.faceshow.R;
import com.guochao.faceshow.aaspring.base.adapter.BaseViewHolder;
import com.guochao.faceshow.aaspring.beans.Comment;
import com.guochao.faceshow.aaspring.beans.PageComment;
import com.guochao.faceshow.aaspring.beans.RoomItemData;
import com.guochao.faceshow.aaspring.beans.UserPageBaseData;
import com.guochao.faceshow.aaspring.beans.VideoItem;
import com.guochao.faceshow.aaspring.danmu.DanmuView;
import com.guochao.faceshow.aaspring.danmu.c;
import com.guochao.faceshow.aaspring.modulars.chat.activity.ChatActivity;
import com.guochao.faceshow.aaspring.modulars.main.fragment.BaseShortVideoFragment;
import com.guochao.faceshow.aaspring.modulars.main.fragment.CommentsFragment;
import com.guochao.faceshow.aaspring.modulars.main.viewmodel.ShortVideoViewModel;
import com.guochao.faceshow.aaspring.utils.AppSettings;
import com.guochao.faceshow.aaspring.utils.DanmuHelper;
import com.guochao.faceshow.aaspring.utils.DisableDoubleClickUtils;
import com.guochao.faceshow.aaspring.utils.DynamicVideoPlayer;
import com.guochao.faceshow.aaspring.utils.EventTrackingV2Utils;
import com.guochao.faceshow.aaspring.utils.Formatter;
import com.guochao.faceshow.aaspring.utils.FriendFromSource;
import com.guochao.faceshow.aaspring.utils.LogUtils;
import com.guochao.faceshow.aaspring.utils.MemoryCache;
import com.guochao.faceshow.aaspring.utils.SimpleObserver;
import com.guochao.faceshow.aaspring.utils.SpUtils;
import com.guochao.faceshow.aaspring.utils.SvgaImageViewUtils;
import com.guochao.faceshow.aaspring.utils.VideoPlayer;
import com.guochao.faceshow.aaspring.views.AgeAndSexView;
import com.guochao.faceshow.aaspring.views.HeadPortraitView;
import com.guochao.faceshow.bean.UserBean;
import com.guochao.faceshow.userhomepage.act.UserHomePageAct;
import com.guochao.faceshow.utils.AResult;
import com.guochao.faceshow.utils.Ahttp;
import com.guochao.faceshow.utils.ArequestCallBack;
import com.guochao.faceshow.utils.BaseConfig;
import com.guochao.faceshow.utils.Contants;
import com.guochao.faceshow.utils.DensityUtil;
import com.guochao.faceshow.utils.HandlerGetter;
import com.guochao.faceshow.utils.LiveInfoUtils;
import com.guochao.faceshow.utils.Tools;
import com.guochao.faceshow.views.Love;
import com.guochao.faceshow.views.SvgaImageViewV2;
import com.opensource.svgaplayer.SVGACallback;
import com.opensource.svgaplayer.SVGAImageView;
import com.opensource.svgaplayer.SVGAParser;
import com.opensource.svgaplayer.SVGAVideoEntity;
import com.tencent.rtmp.ITXVodPlayListener;
import com.tencent.rtmp.TXVodPlayer;
import com.tencent.rtmp.ui.TXCloudVideoView;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import org.greenrobot.eventbus.EventBus;
import org.greenrobot.eventbus.Subscribe;
import org.greenrobot.eventbus.ThreadMode;
import org.jetbrains.annotations.NotNull;
/* loaded from: classes3.dex */
public class ShortVideoViewHolder extends BaseViewHolder implements LifecycleObserver {
    DanmuView A;
    boolean B;
    public boolean C;
    public boolean D;
    private boolean E;
    View F;
    private boolean G;
    AnimationDrawable H;
    long I;
    @Nullable

    /* renamed from: a  reason: collision with root package name */
    public SVGAImageView f20825a;
    @Nullable

    /* renamed from: b  reason: collision with root package name */
    public ViewGroup f20826b;

    /* renamed from: c  reason: collision with root package name */
    protected boolean f20827c;
    @Nullable

    /* renamed from: d  reason: collision with root package name */
    public DanmuHelper f20828d;

    /* renamed from: e  reason: collision with root package name */
    protected Context f20829e;

    /* renamed from: f  reason: collision with root package name */
    public TXVodPlayer f20830f;

    /* renamed from: g  reason: collision with root package name */
    private final BaseShortVideoFragment f20831g;

    /* renamed from: h  reason: collision with root package name */
    public TXCloudVideoView f20832h;

    /* renamed from: i  reason: collision with root package name */
    protected v f20833i;

    /* renamed from: j  reason: collision with root package name */
    private ObjectAnimator f20834j;

    /* renamed from: k  reason: collision with root package name */
    private String f20835k;

    /* renamed from: l  reason: collision with root package name */
    private Comment f20836l;

    /* renamed from: m  reason: collision with root package name */
    public VideoItem f20837m;
    @BindView
    ImageView mCoverImage;

    /* renamed from: n  reason: collision with root package name */
    ProgressBar f20838n;

    /* renamed from: o  reason: collision with root package name */
    protected ImageView f20839o;

    /* renamed from: p  reason: collision with root package name */
    SVGAImageView f20840p;

    /* renamed from: q  reason: collision with root package name */
    ImageView f20841q;

    /* renamed from: r  reason: collision with root package name */
    HeadPortraitView f20842r;

    /* renamed from: s  reason: collision with root package name */
    TextView f20843s;

    /* renamed from: t  reason: collision with root package name */
    Love f20844t;

    /* renamed from: u  reason: collision with root package name */
    GestureDetectorCompat f20845u;

    /* renamed from: v  reason: collision with root package name */
    ImageView f20846v;

    /* renamed from: w  reason: collision with root package name */
    SVGAImageView f20847w;

    /* renamed from: x  reason: collision with root package name */
    private boolean f20848x;

    /* renamed from: y  reason: collision with root package name */
    public boolean f20849y;

    /* renamed from: z  reason: collision with root package name */
    private boolean f20850z;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class a implements View.OnClickListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ VideoItem f20851a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ FragmentActivity f20852b;

        a(VideoItem videoItem, FragmentActivity fragmentActivity) {
            this.f20851a = videoItem;
            this.f20852b = fragmentActivity;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            if (DisableDoubleClickUtils.canClick(view, 1000L)) {
                ShortVideoViewHolder.this.D(this.f20851a, this.f20852b, true);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class b implements View.OnClickListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ VideoItem f20854a;

        b(VideoItem videoItem) {
            this.f20854a = videoItem;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            if (DisableDoubleClickUtils.canClick(view, 700L)) {
                if (this.f20854a.getIsAttention() == 1) {
                    if (b8.e.g().getUserId().equals(this.f20854a.getUserId())) {
                        return;
                    }
                    EventTrackingV2Utils.INSTANCE.track(EventTrackingV2Utils.main_video_chat_click);
                    ChatActivity.navToChat(ShortVideoViewHolder.this.f20829e, this.f20854a.getUserId(), 1, this.f20854a.getUserNickName());
                    return;
                }
                ShortVideoViewHolder shortVideoViewHolder = ShortVideoViewHolder.this;
                shortVideoViewHolder.l(this.f20854a, shortVideoViewHolder.f20846v, shortVideoViewHolder.f20847w);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class c implements View.OnClickListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ VideoItem f20856a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ FragmentActivity f20857b;

        c(VideoItem videoItem, FragmentActivity fragmentActivity) {
            this.f20856a = videoItem;
            this.f20857b = fragmentActivity;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            if (DisableDoubleClickUtils.canClick(view, 1000L)) {
                ShortVideoViewHolder.this.D(this.f20856a, this.f20857b, false);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class d implements View.OnClickListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ VideoItem f20859a;

        d(VideoItem videoItem) {
            this.f20859a = videoItem;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            if (this.f20859a.getIsZan() == 0) {
                ShortVideoViewHolder.this.A(this.f20859a);
            } else {
                ShortVideoViewHolder.this.S(this.f20859a);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class e implements View.OnClickListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ VideoItem f20861a;

        e(VideoItem videoItem) {
            this.f20861a = videoItem;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            ShortVideoViewHolder.this.N(this.f20861a);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class f extends GestureDetector.SimpleOnGestureListener {
        f() {
        }

        @Override // android.view.GestureDetector.SimpleOnGestureListener, android.view.GestureDetector.OnGestureListener
        public boolean onDown(MotionEvent motionEvent) {
            return true;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class g extends GestureDetector.SimpleOnGestureListener {
        g() {
        }

        @Override // android.view.GestureDetector.SimpleOnGestureListener, android.view.GestureDetector.OnDoubleTapListener
        public boolean onDoubleTap(MotionEvent motionEvent) {
            ShortVideoViewHolder shortVideoViewHolder = ShortVideoViewHolder.this;
            if (shortVideoViewHolder.f20840p == null) {
                return false;
            }
            shortVideoViewHolder.s(motionEvent);
            ShortVideoViewHolder.this.I = System.currentTimeMillis();
            return true;
        }

        @Override // android.view.GestureDetector.SimpleOnGestureListener, android.view.GestureDetector.OnDoubleTapListener
        public boolean onDoubleTapEvent(MotionEvent motionEvent) {
            return true;
        }

        @Override // android.view.GestureDetector.SimpleOnGestureListener, android.view.GestureDetector.OnDoubleTapListener
        public boolean onSingleTapConfirmed(MotionEvent motionEvent) {
            long currentTimeMillis = System.currentTimeMillis();
            ShortVideoViewHolder shortVideoViewHolder = ShortVideoViewHolder.this;
            if (currentTimeMillis - shortVideoViewHolder.I >= 500 && !shortVideoViewHolder.f20831g.f20659t) {
                if (ShortVideoViewHolder.this.B()) {
                    ShortVideoViewHolder.this.G(true);
                } else {
                    ShortVideoViewHolder.this.E(true);
                }
                return true;
            }
            return true;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class h implements View.OnTouchListener {
        h() {
        }

        @Override // android.view.View.OnTouchListener
        public boolean onTouch(View view, MotionEvent motionEvent) {
            return ShortVideoViewHolder.this.f20845u.onTouchEvent(motionEvent);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class i implements Function1<PageComment, Unit> {
        i() {
        }

        @Override // kotlin.jvm.functions.Function1
        /* renamed from: a */
        public Unit invoke(PageComment pageComment) {
            DanmuHelper danmuHelper = ShortVideoViewHolder.this.f20828d;
            if (danmuHelper != null && pageComment != null) {
                danmuHelper.addDamus(pageComment.getList());
            }
            return Unit.INSTANCE;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class j implements SVGAParser.ParseCompletion {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ int f20867a;

        j(int i9) {
            this.f20867a = i9;
        }

        @Override // com.opensource.svgaplayer.SVGAParser.ParseCompletion
        public void onComplete(@NotNull SVGAVideoEntity sVGAVideoEntity) {
            if (this.f20867a != ShortVideoViewHolder.this.getAdapterPosition()) {
                return;
            }
            ShortVideoViewHolder.this.f20840p.setVisibility(0);
            ShortVideoViewHolder.this.f20841q.setVisibility(4);
            ShortVideoViewHolder.this.f20840p.setVideoItem(sVGAVideoEntity);
            ShortVideoViewHolder.this.f20840p.startAnimation();
        }

        @Override // com.opensource.svgaplayer.SVGAParser.ParseCompletion
        public void onError() {
        }
    }

    /* loaded from: classes3.dex */
    class k implements SVGACallback {
        k() {
        }

        @Override // com.opensource.svgaplayer.SVGACallback
        public void onFinished() {
            ShortVideoViewHolder.this.f20840p.setVisibility(4);
            ShortVideoViewHolder.this.f20841q.setVisibility(0);
            VideoItem videoItem = ShortVideoViewHolder.this.f20837m;
            if (videoItem != null && videoItem.getIsZan() == 1) {
                ShortVideoViewHolder.this.f20841q.setImageResource(R.mipmap.icon_video_zan_pre);
            } else {
                ShortVideoViewHolder.this.f20841q.setImageResource(R.mipmap.icon_video_zan_nor);
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

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class l implements Runnable {
        l() {
        }

        @Override // java.lang.Runnable
        public void run() {
            ShortVideoViewHolder.this.E = false;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class m implements hb.b<String> {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ VideoItem f20871a;

        /* JADX INFO: Access modifiers changed from: package-private */
        /* loaded from: classes3.dex */
        public class a implements Runnable {
            a() {
            }

            @Override // java.lang.Runnable
            public void run() {
                VideoItem videoItem;
                if (ShortVideoViewHolder.this.f20831g == null || ShortVideoViewHolder.this.f20831g.isDetached() || !ShortVideoViewHolder.this.f20831g.isAdded() || (videoItem = m.this.f20871a) == null) {
                    return;
                }
                y7.e eVar = new y7.e(videoItem.getUserId());
                eVar.g(false);
                eVar.i(ShortVideoViewHolder.this.getAdapterPosition());
                EventBus.getDefault().post(eVar);
            }
        }

        m(VideoItem videoItem) {
            this.f20871a = videoItem;
        }

        @Override // hb.b
        /* renamed from: a */
        public void onFail(String str) {
            HandlerGetter.getMainHandler().postDelayed(new a(), ib.b.f41005a);
        }

        @Override // hb.b
        /* renamed from: b */
        public void onResponse(String str) {
            y7.e.f(this.f20871a.getUserId(), ShortVideoViewHolder.this.getAdapterPosition());
        }
    }

    /* loaded from: classes3.dex */
    class n implements SVGACallback {
        n() {
        }

        @Override // com.opensource.svgaplayer.SVGACallback
        public void onFinished() {
            ShortVideoViewHolder.this.f20825a.setVisibility(8);
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

    /* loaded from: classes3.dex */
    class o implements c.a {
        o() {
        }

        @Override // com.guochao.faceshow.aaspring.danmu.c.a
        public boolean a(com.guochao.faceshow.aaspring.danmu.b bVar, MotionEvent motionEvent) {
            return true;
        }

        @Override // com.guochao.faceshow.aaspring.danmu.c.a
        public boolean b(com.guochao.faceshow.aaspring.danmu.b bVar, MotionEvent motionEvent) {
            Comment comment = (Comment) bVar.b();
            if (comment == null) {
                return false;
            }
            if (comment.getIsLike() == 0) {
                comment.setIsLike(1);
                comment.setLikeNum(comment.getLikeNum() + 1);
                ShortVideoViewHolder.this.T(comment);
                VideoItem videoItem = ShortVideoViewHolder.this.f20837m;
                if (videoItem != null) {
                    videoItem.setVideoCollectionNum(videoItem.getVideoCollectionNum() + 1);
                    ShortVideoViewHolder shortVideoViewHolder = ShortVideoViewHolder.this;
                    shortVideoViewHolder.f20843s.setText(Formatter.getFormat(shortVideoViewHolder.f20837m.getVideoCollectionNum()));
                }
            } else {
                comment.setIsLike(0);
                comment.setLikeNum(Math.max(comment.getLikeNum() - 1, 0));
                ShortVideoViewHolder.this.T(comment);
                VideoItem videoItem2 = ShortVideoViewHolder.this.f20837m;
                if (videoItem2 != null) {
                    videoItem2.setVideoCollectionNum(Math.max(videoItem2.getVideoCollectionNum() - 1, 0));
                    ShortVideoViewHolder shortVideoViewHolder2 = ShortVideoViewHolder.this;
                    shortVideoViewHolder2.f20843s.setText(Formatter.getFormat(shortVideoViewHolder2.f20837m.getVideoCollectionNum()));
                }
            }
            bVar.g();
            return true;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class p extends ArequestCallBack<String> {
        p(Activity activity, Ahttp ahttp) {
            super(activity, ahttp);
        }

        @Override // com.guochao.faceshow.utils.ArequestCallBack
        public void onFinished() {
            super.onFinished();
        }

        @Override // com.guochao.faceshow.utils.ArequestCallBack
        public void onSuccess(String str) {
            super.onSuccess(str);
            AResult aResult = this.aresult;
            if (aResult.code != 1) {
                return;
            }
            SpUtils.setInt(ShortVideoViewHolder.this.f20829e, Contants.USER_levelId, aResult.levelId);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class q implements Runnable {
        q() {
        }

        @Override // java.lang.Runnable
        public void run() {
            ShortVideoViewHolder.this.f20828d.resume();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class r extends SimpleObserver<AnimationDrawable> {
        r() {
        }

        @Override // com.guochao.faceshow.aaspring.utils.SimpleObserver, io.reactivex.r
        /* renamed from: a */
        public void onNext(AnimationDrawable animationDrawable) {
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class s implements vh.o<Integer, AnimationDrawable> {
        s() {
        }

        @Override // vh.o
        /* renamed from: a */
        public AnimationDrawable apply(Integer num) throws Exception {
            ShortVideoViewHolder shortVideoViewHolder = ShortVideoViewHolder.this;
            AnimationDrawable animationDrawable = (AnimationDrawable) shortVideoViewHolder.f20829e.getResources().getDrawable(R.drawable.anim_musci_bg_loop);
            shortVideoViewHolder.H = animationDrawable;
            return animationDrawable;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class t implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ ImageView f20880a;

        t(ImageView imageView) {
            this.f20880a = imageView;
        }

        @Override // java.lang.Runnable
        public void run() {
            AnimationDrawable animationDrawable = ShortVideoViewHolder.this.H;
            if (animationDrawable != null) {
                this.f20880a.setImageDrawable(animationDrawable);
                ShortVideoViewHolder.this.H.start();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class u implements View.OnClickListener {
        u() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            ShortVideoViewHolder.this.G(true);
        }
    }

    /* loaded from: classes3.dex */
    public class v implements ITXVodPlayListener {

        /* renamed from: a  reason: collision with root package name */
        private boolean f20883a;

        /* renamed from: b  reason: collision with root package name */
        private boolean f20884b;

        /* renamed from: c  reason: collision with root package name */
        private boolean f20885c;

        public v() {
        }

        @Override // com.tencent.rtmp.ITXVodPlayListener
        public void onNetStatus(TXVodPlayer tXVodPlayer, Bundle bundle) {
        }

        @Override // com.tencent.rtmp.ITXVodPlayListener
        public void onPlayEvent(TXVodPlayer tXVodPlayer, int i9, Bundle bundle) {
            LogUtils.i("PlayEvent", i9 + "    " + bundle.toString());
            if (i9 == 2001) {
                ShortVideoViewHolder.this.f20832h.setVisibility(0);
            } else if (i9 == 2004) {
                this.f20883a = true;
                ShortVideoViewHolder.this.f20832h.setVisibility(0);
                if (!this.f20884b) {
                    EventTrackingV2Utils.INSTANCE.track(EventTrackingV2Utils.video_play_success);
                    ShortVideoViewHolder shortVideoViewHolder = ShortVideoViewHolder.this;
                    shortVideoViewHolder.o(shortVideoViewHolder.f20837m);
                }
                this.f20884b = true;
            } else if (i9 != 2005) {
            } else {
                int i10 = bundle.getInt("EVT_PLAY_PROGRESS_MS");
                int i11 = bundle.getInt("EVT_PLAYABLE_DURATION_MS");
                if (i10 > 50) {
                    this.f20883a = false;
                    ShortVideoViewHolder.this.f20832h.setVisibility(0);
                    ShortVideoViewHolder.this.mCoverImage.setVisibility(8);
                    ShortVideoViewHolder.this.G = false;
                }
                int i12 = bundle.getInt("EVT_PLAY_DURATION_MS");
                if (i12 == i10) {
                    this.f20885c = true;
                }
                if (i11 >= i12 - 1000) {
                    ShortVideoViewHolder.this.f20838n.setVisibility(8);
                    return;
                }
                ShortVideoViewHolder shortVideoViewHolder2 = ShortVideoViewHolder.this;
                if (shortVideoViewHolder2.C) {
                    shortVideoViewHolder2.E(false);
                }
                ShortVideoViewHolder.this.f20838n.setVisibility(0);
                if (Build.VERSION.SDK_INT >= 24) {
                    ShortVideoViewHolder.this.f20838n.setProgress((i11 * 100) / i12, true);
                } else {
                    ShortVideoViewHolder.this.f20838n.setProgress((i11 * 100) / i12);
                }
            }
        }
    }

    public ShortVideoViewHolder(Context context, BaseShortVideoFragment baseShortVideoFragment, View view, boolean z10) {
        super(view);
        this.f20848x = false;
        this.f20849y = false;
        this.f20850z = false;
        this.B = true;
        this.C = true;
        this.D = true;
        this.E = false;
        context = context == null ? BaseApplication.getInstance() : context;
        if (!EventBus.getDefault().isRegistered(this)) {
            EventBus.getDefault().register(this);
        }
        ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
        if (layoutParams == null) {
            layoutParams = new ViewGroup.LayoutParams(-1, -1);
        } else {
            layoutParams.width = -1;
            layoutParams.height = -1;
        }
        view.setLayoutParams(layoutParams);
        this.f20848x = z10;
        this.f20829e = context;
        this.f20830f = u();
        this.f20831g = baseShortVideoFragment;
        baseShortVideoFragment.getLifecycle().addObserver(this);
        this.f20832h = (TXCloudVideoView) view.findViewById(R.id.txCloudVideoView);
        this.f20838n = (ProgressBar) view.findViewById(R.id.video_progress);
        this.f20839o = (ImageView) view.findViewById(R.id.play_bt);
        HeadPortraitView headPortraitView = (HeadPortraitView) view.findViewById(R.id.head_img);
        this.f20842r = headPortraitView;
        if (headPortraitView == null) {
            return;
        }
        headPortraitView.r(false);
        this.F = view.findViewById(R.id.zan_area);
        this.f20840p = (SVGAImageView) view.findViewById(R.id.praise);
        this.f20841q = (ImageView) view.findViewById(R.id.praise_static);
        this.f20840p.setCallback(new k());
        this.f20840p.setLoops(1);
        this.f20840p.setClearsAfterStop(false);
        ViewGroup.LayoutParams layoutParams2 = this.f20840p.getLayoutParams();
        Drawable drawable = this.f20829e.getDrawable(R.mipmap.icon_video_zan_nor);
        layoutParams2.width = drawable.getIntrinsicWidth();
        layoutParams2.height = drawable.getIntrinsicHeight();
        this.f20840p.setLayoutParams(layoutParams2);
        ViewGroup.LayoutParams layoutParams3 = this.f20841q.getLayoutParams();
        layoutParams3.width = drawable.getIntrinsicWidth();
        layoutParams3.height = drawable.getIntrinsicHeight();
        this.f20841q.setLayoutParams(layoutParams3);
        this.f20843s = (TextView) view.findViewById(R.id.praise_num);
        this.f20844t = (Love) view.findViewById(R.id.periscopeLayout);
        this.f20846v = (ImageView) view.findViewById(R.id.focus);
        this.f20847w = (SVGAImageView) view.findViewById(R.id.focusSVGA);
        this.f20825a = (SVGAImageView) view.findViewById(R.id.sVGAImageView);
        this.f20826b = (ViewGroup) view.findViewById(R.id.anim_view_lay);
        SVGAImageView sVGAImageView = this.f20825a;
        if (sVGAImageView != null) {
            sVGAImageView.setCallback(new n());
        }
        DanmuView danmuView = (DanmuView) getView(R.id.danmu);
        this.A = danmuView;
        if (danmuView != null) {
            this.f20828d = new DanmuHelper(baseShortVideoFragment, danmuView);
            this.B = context.getResources().getConfiguration().getLayoutDirection() == 0;
            this.f20828d.setOnDanmuClickListener(new o());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void A(VideoItem videoItem) {
        SvgaImageViewUtils.getParser().decodeFromInputStream(this.f20829e.getResources().openRawResource(R.raw.short_video_like), "short_video_like", new j(getAdapterPosition()), true);
        videoItem.setIsZan(1);
        int videoCollectionNum = videoItem.getVideoCollectionNum() + 1;
        videoItem.setVideoCollectionNum(videoCollectionNum);
        this.f20843s.setText(Formatter.getFormat(videoCollectionNum));
        EventTrackingV2Utils.INSTANCE.track(EventTrackingV2Utils.video_like);
        new ShortVideoViewModel().insertVideoCollection(videoItem.getVideoId());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void D(VideoItem videoItem, FragmentActivity fragmentActivity, boolean z10) {
        MemoryCache.getInstance().put(this.f20836l);
        this.f20831g.f20657r = false;
        getView(R.id.tips).setVisibility(8);
        CommentsFragment.o1(fragmentActivity, videoItem, z10, videoItem.getVideoId(), 1, this);
        if (b8.e.g().c().getVideoBarrageSwitch() == 1) {
            AppSettings.setSetting("first_danmu", false);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void N(VideoItem videoItem) {
        if ("1".equals(videoItem.getLiveState())) {
            RoomItemData roomItemData = new RoomItemData();
            roomItemData.setUserId(String.valueOf(videoItem.getUserId()));
            roomItemData.setNickName(videoItem.getUserNickName());
            roomItemData.setLiveId(String.valueOf(videoItem.getLiveId()));
            roomItemData.setLiveImg(videoItem.getLiveImg());
            roomItemData.setImg(videoItem.getUserImg());
            LiveInfoUtils.jumpToBaseLiveRoomAct(roomItemData, this.f20829e);
            return;
        }
        EventTrackingV2Utils.INSTANCE.track(EventTrackingV2Utils.main_video_user_click);
        Intent intent = new Intent(this.f20829e, UserHomePageAct.class);
        intent.putExtra(Contants.USER_ID, videoItem.getUserId());
        this.f20829e.startActivity(intent);
    }

    private void Q(VideoItem videoItem, int i9) {
        if (this.f20831g.y2() && this.f20830f != null) {
            t();
            L(videoItem);
            v vVar = new v();
            this.f20833i = vVar;
            this.f20830f.setVodListener(vVar);
            this.f20830f.setPlayerView(this.f20832h);
            this.f20830f.setAutoPlay(true);
            this.f20830f.setLoop(true);
            if (this.f20831g.y2()) {
                LogUtils.d("BaseShortVideoFragment", "startPlay()");
                this.f20830f.startVodPlay(videoItem.getVideoUrl());
                this.f20839o.setVisibility(8);
                this.f20849y = true;
                C();
                return;
            }
            E(false);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void S(VideoItem videoItem) {
        this.f20840p.setVisibility(4);
        this.f20840p.stopAnimation();
        this.f20841q.setVisibility(0);
        this.f20841q.setImageResource(R.mipmap.icon_video_zan_nor);
        videoItem.setIsZan(0);
        int videoCollectionNum = videoItem.getVideoCollectionNum() - 1;
        int i9 = videoCollectionNum >= 0 ? videoCollectionNum : 0;
        videoItem.setVideoCollectionNum(i9);
        this.f20843s.setText(Formatter.getFormat(i9));
        new ShortVideoViewModel().cancelVideoCollection(videoItem.getVideoId());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void T(Comment comment) {
        Context context = this.f20829e;
        Ahttp ahttp = new Ahttp((Activity) context, Contants.updateCommentLike, SpUtils.getStr(context, Contants.USER_TOKEN));
        ahttp.addStrParams(Contants.USER_ID, SpUtils.getStr(this.f20829e, Contants.USER_ID));
        ahttp.addStrParams("commentId", comment.getCommentId() + "");
        ahttp.send(new p((Activity) this.f20829e, ahttp));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void l(VideoItem videoItem, ImageView imageView, SVGAImageView sVGAImageView) {
        EventTrackingV2Utils.INSTANCE.track(EventTrackingV2Utils.main_video_follow_click);
        this.E = true;
        HandlerGetter.getMainHandler().postDelayed(new l(), ib.b.f41005a);
        ib.a.b(imageView, sVGAImageView, R.raw.focus_large_width, R.mipmap.ic_short_video_hi);
        ib.b.b(videoItem.getUserId(), FriendFromSource.DEFAULT, (Activity) this.itemView.getContext(), new m(videoItem));
    }

    private void t() {
        if (this.f20830f != null && VoiceRoomMiniHelper.INSTANCE.isPlaying()) {
            this.f20830f.setMute(true);
        }
    }

    private void w() {
        new ShortVideoViewModel().getBarrageList(1, 20, this.f20837m.getVideoId(), new i());
    }

    public boolean B() {
        return this.C;
    }

    protected void C() {
        Tools.playLog((Activity) this.f20829e, this.f20837m.getVideoId(), null);
    }

    public void E(boolean z10) {
        if (this.f20830f != null) {
            LogUtils.d("BaseShortVideoFragment", "ShortVideoViewHolder:pause()");
            this.f20830f.setAutoPlay(false);
            this.f20830f.setLoop(false);
            this.f20830f.pause();
            this.f20827c = z10;
            this.f20839o.setVisibility(0);
            DanmuHelper danmuHelper = this.f20828d;
            if (danmuHelper != null) {
                danmuHelper.pause();
            }
            this.C = true;
        }
    }

    public void F() {
        TXVodPlayer tXVodPlayer = this.f20830f;
        if (tXVodPlayer != null) {
            tXVodPlayer.stopPlay(false);
            this.f20832h.setVisibility(8);
            this.f20830f.setPlayerView((TXCloudVideoView) null);
            this.f20830f.setVodListener(null);
            VideoPlayer.setMute(this.f20830f, true);
            ImageView imageView = (ImageView) getView(R.id.video_cover);
            ViewCompat.animate(imageView).cancel();
            imageView.setAlpha(1.0f);
            imageView.setVisibility(0);
            DanmuHelper danmuHelper = this.f20828d;
            if (danmuHelper != null) {
                danmuHelper.stop();
            }
            this.f20849y = false;
            this.f20850z = true;
        }
    }

    public void G(boolean z10) {
        if (this.f20831g.y2()) {
            if (VoiceRoomMiniHelper.INSTANCE.isPlaying()) {
                this.f20830f.setMute(true);
            } else {
                this.f20830f.setMute(false);
            }
            this.C = false;
            boolean z11 = this.f20827c;
            if (z11 && z10) {
                if (!this.f20849y) {
                    Q(this.f20837m, getAdapterPosition());
                } else {
                    this.f20830f.setAutoPlay(true);
                    this.f20830f.setLoop(true);
                    this.f20830f.resume();
                }
                this.f20839o.setVisibility(8);
            } else if (!z11) {
                if (!this.f20849y) {
                    Q(this.f20837m, getAdapterPosition());
                } else {
                    this.f20830f.setAutoPlay(true);
                    this.f20830f.setLoop(true);
                    this.f20830f.resume();
                }
                this.f20839o.setVisibility(8);
            }
            if (this.f20828d != null) {
                new Handler().post(new q());
            }
            this.f20850z = false;
        }
    }

    public void H(Comment comment) {
        this.f20836l = comment;
    }

    public void I(String str) {
        this.f20835k = str;
    }

    public void J(ObjectAnimator objectAnimator) {
        this.f20834j = objectAnimator;
    }

    public void K(y7.n nVar) {
        if (this.f20837m != null) {
            TextView textView = (TextView) getView(R.id.comments_num);
            if (nVar.f60148a == 0) {
                VideoItem videoItem = this.f20837m;
                videoItem.setVideoCommentNum(videoItem.getVideoCommentNum() + 1);
                DanmuHelper danmuHelper = this.f20828d;
                if (danmuHelper != null) {
                    danmuHelper.addDanmu(nVar.f60149b);
                }
            } else if (this.f20837m.getVideoCommentNum() > 0) {
                VideoItem videoItem2 = this.f20837m;
                videoItem2.setVideoCommentNum(videoItem2.getVideoCommentNum() - 1);
            }
            textView.setText(Formatter.getFormat(this.f20837m.getVideoCommentNum()));
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void L(VideoItem videoItem) {
        this.f20830f.setPlayerView(this.f20832h);
        try {
            int intValue = TextUtils.isEmpty(videoItem.getHeight()) ? 0 : Integer.valueOf(videoItem.getHeight()).intValue();
            int intValue2 = TextUtils.isEmpty(videoItem.getWidth()) ? 0 : Integer.valueOf(videoItem.getWidth()).intValue();
            if (intValue2 != 0 && intValue != 0) {
                if (intValue2 != 0) {
                    if ((intValue * 1.0d) / intValue2 >= 1.73d) {
                        this.f20830f.setRenderMode(0);
                        return;
                    } else {
                        this.f20830f.setRenderMode(1);
                        return;
                    }
                }
                return;
            }
            this.f20830f.setRenderMode(1);
        } catch (Exception unused) {
            this.f20830f.setRenderMode(0);
        }
    }

    public void M(int i9, VideoItem videoItem) {
        FragmentActivity fragmentActivity;
        Context context = this.f20829e;
        if (context instanceof FragmentActivity) {
            fragmentActivity = (FragmentActivity) context;
        } else if (BaseApplication.getInstance().getCurrTopActivity() instanceof FragmentActivity) {
            fragmentActivity = (FragmentActivity) BaseApplication.getInstance().getCurrTopActivity();
        } else {
            fragmentActivity = (FragmentActivity) this.itemView.getContext();
        }
        this.f20839o.setOnClickListener(new u());
        if (this.f20846v == null) {
            return;
        }
        if (!this.f20848x) {
            getView(R.id.say_something).setOnClickListener(new a(videoItem, fragmentActivity));
            this.f20846v.setOnClickListener(new b(videoItem));
            getView(R.id.comments).setOnClickListener(new c(videoItem, fragmentActivity));
            this.F.setOnClickListener(new d(videoItem));
        }
        this.f20842r.setOnClickListener(new e(videoItem));
    }

    public void O(VideoItem videoItem, int i9) {
        this.C = false;
        this.G = false;
        this.f20837m = videoItem;
        this.f20832h.setVisibility(0);
        this.f20832h.clearFocus();
        r();
        z();
        Q(videoItem, i9);
        p();
        q();
    }

    public void P(VideoItem videoItem, int i9, float f10) {
        if (f10 < 0.0f) {
            O(videoItem, i9);
            return;
        }
        TXVodPlayer tXVodPlayer = DynamicVideoPlayer.getInstance().getTXVodPlayer();
        this.f20830f = tXVodPlayer;
        if (tXVodPlayer == null) {
            this.f20830f = u();
        }
        t();
        this.C = false;
        this.f20837m = videoItem;
        r();
        z();
        this.G = f10 > 0.0f;
        this.f20830f.pause();
        this.f20830f.setPlayerView(this.f20832h);
        this.f20830f.resume();
        this.f20849y = true;
        o(videoItem);
    }

    public void R() {
        String str;
        if (this.f20830f != null) {
            v vVar = this.f20833i;
            if (vVar == null || !vVar.f20885c) {
                str = this.f20830f.getCurrentPlaybackTime() > 5.0f ? "1" : "0";
            } else {
                str = "2";
            }
            EventTrackingV2Utils.INSTANCE.track(EventTrackingV2Utils.video_play_progress, str);
            this.f20830f.stopPlay(false);
            this.f20832h.setVisibility(8);
            this.f20830f.setPlayerView((TXCloudVideoView) null);
            this.f20830f.setVodListener(null);
            ImageView imageView = (ImageView) getView(R.id.video_cover);
            ViewCompat.animate(imageView).cancel();
            imageView.setAlpha(1.0f);
            imageView.setVisibility(0);
            DanmuHelper danmuHelper = this.f20828d;
            if (danmuHelper != null) {
                danmuHelper.stop();
            }
            this.f20849y = false;
            this.f20850z = true;
        }
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public void closeVoiceRoomEvent(VoiceRoomCloseEvent voiceRoomCloseEvent) {
        TXVodPlayer tXVodPlayer = this.f20830f;
        if (tXVodPlayer != null) {
            tXVodPlayer.setMute(false);
        }
    }

    @OnLifecycleEvent(Lifecycle.Event.ON_DESTROY)
    public void destroy() {
        if (EventBus.getDefault().isRegistered(this)) {
            EventBus.getDefault().unregister(this);
        }
        if (!this.G) {
            R();
        }
        this.f20831g.getLifecycle().removeObserver(this);
        TXCloudVideoView tXCloudVideoView = this.f20832h;
        if (tXCloudVideoView != null) {
            tXCloudVideoView.onDestroy();
        }
    }

    public void m(VideoItem videoItem) {
        this.f20830f.setAutoPlay(false);
        this.f20830f.startVodPlay(videoItem.getVideoUrl());
    }

    public void n(VideoItem videoItem, int i9) {
        ObjectAnimator ofFloat;
        if (videoItem == null) {
            return;
        }
        LogUtils.i("ShortVideoViewHolder", "bindViews: " + i9);
        q();
        this.f20837m = videoItem;
        p();
        SvgaImageViewV2 svgaImageViewV2 = (SvgaImageViewV2) getView(R.id.svga);
        if (svgaImageViewV2 == null) {
            return;
        }
        setText(R.id.share_num, videoItem.getShareNum());
        if ("1".equals(videoItem.getLiveState())) {
            svgaImageViewV2.setVisibility(0);
            ViewGroup.LayoutParams layoutParams = svgaImageViewV2.getLayoutParams();
            if (videoItem.getUserVipMsg() != null && !TextUtils.isEmpty(videoItem.getUserVipMsg().getVipAvatarPendentUrl()) && videoItem.getUserVipMsg().getVipAvatarPendentType() > 0) {
                layoutParams.width = DensityUtil.dp2px(67.0f);
                layoutParams.height = DensityUtil.dp2px(67.0f);
            } else {
                layoutParams.width = DensityUtil.dp2px(58.0f);
                layoutParams.height = DensityUtil.dp2px(58.0f);
            }
            svgaImageViewV2.setLayoutParams(layoutParams);
            svgaImageViewV2.playRaw(R.raw.short_video);
        } else {
            svgaImageViewV2.setVisibility(8);
        }
        HeadPortraitView headPortraitView = (HeadPortraitView) getView(R.id.head_img);
        ImageView imageView = (ImageView) getView(R.id.music_rl);
        ImageView imageView2 = (ImageView) getView(R.id.music_bg);
        AnimationDrawable animationDrawable = (AnimationDrawable) this.f20829e.getResources().getDrawable(R.drawable.anim_musci_bg_start);
        if (imageView2 != null) {
            imageView2.setImageDrawable(animationDrawable);
        }
        animationDrawable.setOneShot(true);
        animationDrawable.start();
        io.reactivex.k.just(1).map(new s()).subscribeOn(di.a.b()).observeOn(sh.a.a()).subscribe(new r());
        imageView2.postDelayed(new t(imageView2), 2240L);
        UserBean userBean = new UserBean();
        userBean.userId = videoItem.getUserId();
        userBean.img = videoItem.getUserImg();
        userBean.avatar = videoItem.getAvatar();
        userBean.setUserVipMsg(videoItem.getUserVipMsg());
        userBean.countryFlag = videoItem.getCountryLogo();
        headPortraitView.d(userBean);
        hc.a.j(imageView, videoItem.getMusicImg());
        if (this.B) {
            ofFloat = ObjectAnimator.ofFloat(getView(R.id.music_area), Key.ROTATION, 0.0f, 360.0f);
        } else {
            ofFloat = ObjectAnimator.ofFloat(getView(R.id.music_area), Key.ROTATION, 360.0f, 0.0f);
        }
        ofFloat.setRepeatCount(-1);
        ofFloat.setRepeatMode(1);
        ofFloat.setInterpolator(new LinearInterpolator());
        ofFloat.setDuration(3600L);
        ofFloat.start();
        J(ofFloat);
        ((TextView) getView(R.id.praise_num)).setText(Formatter.getFormat(videoItem.getVideoCollectionNum()));
        ((TextView) getView(R.id.comments_num)).setText(Formatter.getFormat(videoItem.getVideoCommentNum()));
        r();
        if (this.D) {
            m(videoItem);
        }
        this.f20840p.setVisibility(4);
        this.f20841q.setVisibility(0);
        if (videoItem.getIsZan() == 1) {
            this.f20841q.setImageResource(R.mipmap.icon_video_zan_pre);
        } else {
            this.f20841q.setImageResource(R.mipmap.icon_video_zan_nor);
        }
        UserPageBaseData.OnlineInfo positionMap = videoItem.getPositionMap();
        View view = getView(R.id.address_area);
        if (BaseConfig.isChinese()) {
            view.setVisibility(8);
        } else {
            view.setVisibility(0);
        }
        if (positionMap != null) {
            view.setVisibility(0);
            TextView textView = (TextView) getView(R.id.address);
            textView.setText(positionMap.getDescription(this.f20829e));
            textView.setSingleLine(true);
            textView.setEllipsize(TextUtils.TruncateAt.MARQUEE);
            textView.setSelected(true);
        } else {
            view.setVisibility(8);
        }
        ((AgeAndSexView) getView(R.id.age_sex_view)).c(videoItem.getSex(), videoItem.getAge());
    }

    public void o(VideoItem videoItem) {
        if (this.A == null || !this.f20849y || getAdapterPosition() == 0) {
            return;
        }
        boolean setting = AppSettings.getSetting("danmu", true);
        UserBean c10 = b8.e.g().c();
        if (setting && c10.getVideoBarrageSwitch() == 1 && this.f20831g.f20658s) {
            w();
            this.A.setVisibility(0);
            return;
        }
        this.A.i();
        this.A.setVisibility(8);
    }

    public void p() {
        View view = getView(R.id.danmu_area);
        if (view == null) {
            return;
        }
        boolean t22 = this.f20831g.t2();
        ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) view.getLayoutParams();
        if (t22) {
            marginLayoutParams.setMargins(marginLayoutParams.leftMargin, (int) this.f20829e.getResources().getDimension(R.dimen.danmu_margin_top_full), marginLayoutParams.rightMargin, marginLayoutParams.bottomMargin);
        } else {
            marginLayoutParams.setMargins(marginLayoutParams.leftMargin, (int) this.f20829e.getResources().getDimension(R.dimen.danmu_margin_top_second), marginLayoutParams.rightMargin, marginLayoutParams.bottomMargin);
        }
        view.setLayoutParams(marginLayoutParams);
    }

    public void q() {
        View view = getView(R.id.tips);
        if (view == null) {
            return;
        }
        BaseShortVideoFragment baseShortVideoFragment = this.f20831g;
        boolean z10 = true;
        z10 = (baseShortVideoFragment.f20657r && baseShortVideoFragment.getCurrentUser().getVideoBarrageSwitch() == 1 && this.f20831g.f20658s && getAdapterPosition() != 0) ? false : false;
        view.setVisibility(z10 ? 0 : 8);
        if (z10) {
            ObjectAnimator ofFloat = ObjectAnimator.ofFloat(view, "translationX", 0.0f, 10.0f);
            ofFloat.setInterpolator(new DecelerateInterpolator());
            ofFloat.setRepeatCount(-1);
            ofFloat.setRepeatMode(2);
            ofFloat.setDuration(600L);
            ofFloat.start();
        }
    }

    public void r() {
        VideoItem videoItem;
        if (this.f20846v == null || (videoItem = this.f20837m) == null || this.E) {
            return;
        }
        if (videoItem.getUserId().equals(SpUtils.getStr(this.f20829e, Contants.USER_ID))) {
            this.f20846v.setVisibility(8);
            return;
        }
        this.f20846v.setVisibility(0);
        if (this.f20837m.getIsAttention() == 1) {
            this.f20846v.setImageResource(R.mipmap.ic_short_video_hi);
        } else {
            this.f20846v.setImageResource(R.mipmap.icon_video_follow);
        }
    }

    public void s(MotionEvent motionEvent) {
        if (this.f20837m.getIsZan() == 0) {
            A(this.f20837m);
        }
        this.f20844t.a(motionEvent);
    }

    public TXVodPlayer u() {
        return DynamicVideoPlayer.getInstance().createShortVideoPlayer(this.f20829e);
    }

    public void v(boolean z10) {
        if (getView(R.id.say_something) != null) {
            getView(R.id.say_something).setClickable(z10);
        }
        if (getView(R.id.comments) != null) {
            getView(R.id.comments).setClickable(z10);
        }
        View view = this.F;
        if (view != null) {
            view.setClickable(z10);
        }
        ImageView imageView = this.f20846v;
        if (imageView != null) {
            imageView.setClickable(z10);
        }
        HeadPortraitView headPortraitView = this.f20842r;
        if (headPortraitView != null) {
            headPortraitView.setClickable(z10);
        }
        ImageView imageView2 = this.f20839o;
        if (imageView2 != null) {
            imageView2.setClickable(z10);
        }
    }

    public VideoItem x() {
        return this.f20837m;
    }

    public ObjectAnimator y() {
        return this.f20834j;
    }

    public void z() {
        GestureDetectorCompat gestureDetectorCompat = new GestureDetectorCompat(this.f20829e, new f());
        this.f20845u = gestureDetectorCompat;
        gestureDetectorCompat.setOnDoubleTapListener(new g());
        this.itemView.setOnTouchListener(new h());
    }
}
