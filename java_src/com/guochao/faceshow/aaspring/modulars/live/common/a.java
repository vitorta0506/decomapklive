package com.guochao.faceshow.aaspring.modulars.live.common;

import android.text.TextUtils;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.guochao.faceshow.BaseApplication;
import com.guochao.faceshow.aaspring.base.http.request.PostRequest;
import com.guochao.faceshow.aaspring.base.http.response.FaceCastBaseResponse;
import com.guochao.faceshow.aaspring.beans.LiveInfoMatchBean;
import com.guochao.faceshow.aaspring.manager.BeautyItemCacheManager;
import com.guochao.faceshow.aaspring.modulars.live.broadcaster.BroadCastFragment;
import com.guochao.faceshow.aaspring.modulars.live.fragment.ApplyConversationListDialogFragment;
import com.guochao.faceshow.aaspring.modulars.live.interfaces.LiveRoomModel;
import com.guochao.faceshow.aaspring.modulars.live.model.LinkMicInfoMessage;
import com.guochao.faceshow.aaspring.modulars.live.model.LiveMicApplyResult;
import com.guochao.faceshow.aaspring.modulars.live.watcher.WatcherLiveRoomFragment;
import com.guochao.faceshow.aaspring.utils.LiveMessageModelFactory;
import com.guochao.faceshow.aaspring.utils.LogUtils;
import com.guochao.faceshow.bean.UserBean;
import com.guochao.faceshow.utils.HandlerGetter;
import com.guochao.player.GCLivePlayer;
import com.guochao.pusher.GCLivePusher;
import com.guochao.pusher.base.ILivePusher;
import d9.e;
import java.util.ArrayList;
import java.util.List;
import java.util.Objects;
/* loaded from: classes3.dex */
public class a implements ILivePusher.PushEventListener {

    /* renamed from: n  reason: collision with root package name */
    private static a f18990n;

    /* renamed from: a  reason: collision with root package name */
    public PostRequest f18991a;

    /* renamed from: b  reason: collision with root package name */
    public String f18992b;

    /* renamed from: c  reason: collision with root package name */
    public String f18993c;

    /* renamed from: d  reason: collision with root package name */
    private BaseLiveRoomFragment f18994d;

    /* renamed from: g  reason: collision with root package name */
    private d9.g f18997g;
    @Nullable

    /* renamed from: h  reason: collision with root package name */
    public LiveMicApplyResult f18998h;

    /* renamed from: j  reason: collision with root package name */
    private boolean f19000j;

    /* renamed from: l  reason: collision with root package name */
    private boolean f19002l;

    /* renamed from: e  reason: collision with root package name */
    public final List<LiveInfoMatchBean> f18995e = new ArrayList();

    /* renamed from: f  reason: collision with root package name */
    f f18996f = new f(this, null);

    /* renamed from: k  reason: collision with root package name */
    e f19001k = new e(this, null);

    /* renamed from: m  reason: collision with root package name */
    public boolean f19003m = false;

    /* renamed from: i  reason: collision with root package name */
    private FrameLayout f18999i = new FrameLayout(BaseApplication.getInstance());

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.guochao.faceshow.aaspring.modulars.live.common.a$a  reason: collision with other inner class name */
    /* loaded from: classes3.dex */
    public class C0181a extends com.guochao.faceshow.aaspring.base.http.callback.c<LinkMicInfoMessage> {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ int f19004a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ String f19005b;

        C0181a(int i9, String str) {
            this.f19004a = i9;
            this.f19005b = str;
        }

        @Override // com.guochao.faceshow.aaspring.base.http.callback.c
        /* renamed from: a */
        public void onResponse(@Nullable LinkMicInfoMessage linkMicInfoMessage, @NonNull FaceCastBaseResponse<LinkMicInfoMessage> faceCastBaseResponse) {
            if (a.this.f18994d == null || a.this.f18994d.getActivity() == null) {
                return;
            }
            if (linkMicInfoMessage != null && linkMicInfoMessage.getMatchList() != null) {
                a.this.f18995e.clear();
                a.this.f18995e.addAll(linkMicInfoMessage.getMatchList());
                a.this.f18994d.z2().clear();
                a.this.f18994d.z2().addAll(linkMicInfoMessage.getMatchList());
                for (int i9 = 0; i9 < linkMicInfoMessage.getMatchList().size(); i9++) {
                    LiveInfoMatchBean liveInfoMatchBean = linkMicInfoMessage.getMatchList().get(i9);
                    LogUtils.i("LiveRoom", "onResponse: " + linkMicInfoMessage.getMatchList().get(i9).getUserId());
                    if (liveInfoMatchBean.getIsOnLine() == this.f19004a) {
                        a.this.E(liveInfoMatchBean);
                    }
                }
            }
            if (TextUtils.isEmpty(this.f19005b)) {
                return;
            }
            a.this.f18994d.X(this.f19005b);
        }

        @Override // com.guochao.faceshow.aaspring.base.http.callback.c
        public void onFailure(@NonNull g7.a<LinkMicInfoMessage> aVar) {
            a.this.w(false);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class b extends com.guochao.faceshow.aaspring.base.http.callback.c<Object> {
        b() {
        }

        @Override // com.guochao.faceshow.aaspring.base.http.callback.c
        public void onFailure(@NonNull g7.a<Object> aVar) {
            if (aVar.a() == 80006) {
                a.this.f();
            }
        }

        @Override // com.guochao.faceshow.aaspring.base.http.callback.c
        public void onResponse(@Nullable Object obj, @NonNull FaceCastBaseResponse<Object> faceCastBaseResponse) {
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class c extends com.guochao.faceshow.aaspring.base.http.callback.c<LiveMicApplyResult> {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ com.guochao.faceshow.aaspring.base.http.callback.c f19008a;

        c(com.guochao.faceshow.aaspring.base.http.callback.c cVar) {
            this.f19008a = cVar;
        }

        @Override // com.guochao.faceshow.aaspring.base.http.callback.c
        /* renamed from: a */
        public void onResponse(@Nullable LiveMicApplyResult liveMicApplyResult, @NonNull FaceCastBaseResponse<LiveMicApplyResult> faceCastBaseResponse) {
            a aVar = a.this;
            aVar.f18998h = liveMicApplyResult;
            aVar.f18995e.clear();
            com.guochao.faceshow.aaspring.base.http.callback.c cVar = this.f19008a;
            if (cVar != null) {
                cVar.onResponse(liveMicApplyResult, faceCastBaseResponse);
            }
        }

        @Override // com.guochao.faceshow.aaspring.base.http.callback.c, com.guochao.faceshow.aaspring.base.utils.a
        public void cancel() {
            super.cancel();
            com.guochao.faceshow.aaspring.base.http.callback.c cVar = this.f19008a;
            if (cVar != null) {
                cVar.cancel();
            }
        }

        @Override // com.guochao.faceshow.aaspring.base.http.callback.c, com.guochao.faceshow.aaspring.base.http.callback.b
        public void onCompleted() {
            super.onCompleted();
            com.guochao.faceshow.aaspring.base.http.callback.c cVar = this.f19008a;
            if (cVar != null) {
                cVar.onCompleted();
            }
        }

        @Override // com.guochao.faceshow.aaspring.base.http.callback.c
        public void onFailure(@NonNull g7.a<LiveMicApplyResult> aVar) {
            com.guochao.faceshow.aaspring.base.http.callback.c cVar = this.f19008a;
            if (cVar != null) {
                cVar.onFailure(aVar);
            }
        }
    }

    /* loaded from: classes3.dex */
    class d extends com.guochao.faceshow.aaspring.base.http.callback.c<Object> {
        d() {
        }

        @Override // com.guochao.faceshow.aaspring.base.http.callback.c
        public void onFailure(@NonNull g7.a<Object> aVar) {
        }

        @Override // com.guochao.faceshow.aaspring.base.http.callback.c
        public void onResponse(@Nullable Object obj, @NonNull FaceCastBaseResponse<Object> faceCastBaseResponse) {
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes3.dex */
    public class e implements Runnable {
        private e() {
        }

        @Override // java.lang.Runnable
        public void run() {
            a.this.f19000j = false;
            a.this.f();
            a.this.i();
        }

        /* synthetic */ e(a aVar, C0181a c0181a) {
            this();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes3.dex */
    public class f implements Runnable {
        private f() {
        }

        @Override // java.lang.Runnable
        public void run() {
            a aVar = a.this;
            if (aVar.f18998h != null) {
                aVar.f19000j = false;
                a.this.f();
                a.this.i();
                a aVar2 = a.this;
                if (aVar2.f18998h == null || aVar2.f18997g == null) {
                    return;
                }
                a.this.f18997g.c0(a.this.f18998h.getStreamId(), b8.e.g().getUserId());
            }
        }

        /* synthetic */ f(a aVar, C0181a c0181a) {
            this();
        }
    }

    a() {
        this.f18999i.setLayoutParams(new ViewGroup.LayoutParams(1, 1));
    }

    private void D() {
        GCLivePusher y22;
        HandlerGetter.getMainHandler().removeCallbacks(this.f18996f);
        if (n() == null || (y22 = n().y2(false)) == null) {
            return;
        }
        if (y22.isPushing()) {
            y22.stopAll();
        }
        y22.removePushEventListener(this);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void E(LiveInfoMatchBean liveInfoMatchBean) {
        BaseLiveRoomFragment baseLiveRoomFragment = this.f18994d;
        if (baseLiveRoomFragment == null || baseLiveRoomFragment.getCurrentLiveRoom() == null || liveInfoMatchBean.getUserId().equals(l().getUserId())) {
            return;
        }
        if (!this.f18994d.getCurrentLiveRoom().isMultiLiveRoom()) {
            if (n() instanceof BroadCastFragment) {
                ((BroadCastFragment) n()).Z4(liveInfoMatchBean);
            }
            if (n() instanceof WatcherLiveRoomFragment) {
                ((WatcherLiveRoomFragment) n()).i5(liveInfoMatchBean);
                return;
            }
            return;
        }
        GCLivePlayer player = LivePlayerProvider.player();
        if (player.isPlaying(liveInfoMatchBean.getStreamId())) {
            return;
        }
        if (k() != null && liveInfoMatchBean.getUserId().equalsIgnoreCase(k().getBroadCasterUserId())) {
            B(player, liveInfoMatchBean.getStreamId(), liveInfoMatchBean.getJsUrl(), this.f18999i);
        }
        if (k() == null || this.f18994d.getCurrentLiveRoom().isFreeLinkMic() || !liveInfoMatchBean.getUserId().equals(k().getBroadCasterUserId())) {
            return;
        }
        HandlerGetter.getMainHandler().removeCallbacks(this.f19001k);
        HandlerGetter.getMainHandler().postDelayed(this.f19001k, 30000L);
    }

    public static void h() {
        a aVar = f18990n;
        if (aVar == null) {
            return;
        }
        aVar.f18999i = null;
        aVar.f18997g = null;
        aVar.f18994d = null;
        aVar.f18995e.clear();
        f18990n = null;
    }

    private LiveRoomModel k() {
        BaseLiveRoomFragment baseLiveRoomFragment = this.f18994d;
        if (baseLiveRoomFragment == null) {
            return null;
        }
        return baseLiveRoomFragment.getCurrentLiveRoom();
    }

    private UserBean l() {
        return b8.e.g().c();
    }

    public static a m() {
        if (f18990n == null) {
            f18990n = new a();
        }
        return f18990n;
    }

    @Nullable
    private BaseLiveRoomFragment n() {
        return this.f18994d;
    }

    public void A() {
        f();
        this.f18991a = this.f18994d.post("tokens/live/microphone/heartBeat").v("liveId", this.f18997g.getCurrentLiveRoom().getLiveRoomId()).v("anchorId", this.f18997g.getCurrentLiveRoom().getBroadCasterUserId()).G(5000, new b());
    }

    public void B(GCLivePlayer gCLivePlayer, String str, String str2, ViewGroup viewGroup) {
        viewGroup.bringToFront();
        gCLivePlayer.startPlayAcc(str2, str, viewGroup);
        gCLivePlayer.setMute(true, str);
    }

    public void C(LiveMicApplyResult liveMicApplyResult, boolean z10) {
        GCLivePusher y22;
        if (n() == null || (y22 = n().y2(true)) == null || Objects.equals(liveMicApplyResult.getPushUrl(), this.f18992b)) {
            return;
        }
        BeautyItemCacheManager.setBeauty(5, y22.getBeautyManager());
        y22.addPushEventListener(this);
        this.f19003m = false;
        y22.enableThirdBeauty(false);
        this.f18992b = liveMicApplyResult.getPushUrl();
        this.f18993c = liveMicApplyResult.getStreamId();
        y22.startPreview(this.f18999i);
        if (!z10) {
            HandlerGetter.getMainHandler().postDelayed(this.f18996f, 30000L);
            this.f19002l = false;
        }
        y22.setLiveResolution(10);
        y22.startPushToRtc(this.f18992b, liveMicApplyResult.getStreamId());
    }

    public void e(com.guochao.faceshow.aaspring.base.http.callback.c<LiveMicApplyResult> cVar) {
        if (this.f18994d == null || k() == null) {
            return;
        }
        this.f18994d.post("tokens/live/microphone/apply").v("anchorId", k().getBroadCasterUserId()).v("liveId", k().getLiveRoomId()).v("streamType", "1").M(new c(cVar));
    }

    public void f() {
        g(true);
        this.f19002l = false;
        this.f19003m = false;
    }

    public void g(boolean z10) {
        ApplyConversationListDialogFragment applyConversationListDialogFragment;
        PostRequest postRequest = this.f18991a;
        if (postRequest != null) {
            postRequest.cancel();
            this.f18991a = null;
        }
        if (z10) {
            D();
        }
        w(false);
        BaseLiveRoomFragment baseLiveRoomFragment = this.f18994d;
        if (baseLiveRoomFragment == null || (applyConversationListDialogFragment = baseLiveRoomFragment.C) == null) {
            return;
        }
        applyConversationListDialogFragment.k2(true);
        this.f18994d.C.a2(-1, null);
    }

    public void i() {
    }

    @Nullable
    public LiveInfoMatchBean j(String str) {
        for (int i9 = 0; i9 < this.f18995e.size(); i9++) {
            if (this.f18995e.get(i9).getUserId().equals(str)) {
                return this.f18995e.get(i9);
            }
        }
        if (this.f18994d != null) {
            for (int i10 = 0; i10 < this.f18994d.J.size(); i10++) {
                if (this.f18994d.J.get(i10).getUserId().equals(str)) {
                    return this.f18994d.J.get(i10);
                }
            }
            return null;
        }
        return null;
    }

    public boolean o() {
        return this.f19000j;
    }

    @Override // com.guochao.pusher.base.ILivePusher.PushEventListener
    public void onGetPushIp(@Nullable String str) {
        d9.g gVar = this.f18997g;
        if (gVar == null || gVar.getCurrentLiveRoom() == null) {
            return;
        }
        LiveRoomModel currentLiveRoom = this.f18997g.getCurrentLiveRoom();
        if (str == null) {
            str = "";
        }
        currentLiveRoom.setLivePushIP(str);
    }

    @Override // com.guochao.pusher.base.ILivePusher.PushEventListener
    public void onPushSuccess(@NonNull ILivePusher iLivePusher) {
        d9.g gVar;
        if (this.f19002l || (gVar = this.f18997g) == null) {
            return;
        }
        this.f19002l = true;
        gVar.sendLiveMessage(LiveMessageModelFactory.createPushSuccessModel(this.f18998h), (e.a<Boolean>) null);
        if (this.f18997g.getCurrentLiveRoom() != null && this.f18997g.getCurrentLiveRoom().isFreeLinkMic()) {
            p(1, null);
        }
        u();
        PostRequest v10 = this.f18994d.post("tokens/live/microphone/audiencePushStreamSuccess").v("liveId", this.f18997g.getCurrentLiveRoom().getLiveRoomId()).v("audienceId", l().getUserId());
        LiveMicApplyResult liveMicApplyResult = this.f18998h;
        v10.v("streamId", liveMicApplyResult == null ? "" : liveMicApplyResult.getStreamId()).M(new d());
    }

    public void p(int i9, String str) {
        BaseLiveRoomFragment baseLiveRoomFragment = this.f18994d;
        if (baseLiveRoomFragment == null || baseLiveRoomFragment.getActivity() == null) {
            return;
        }
        this.f18994d.post("tokens/live/microphone/roundRobin").v("liveId", this.f18994d.getCurrentLiveRoom().getLiveRoomId()).v("anchorId", this.f18994d.getCurrentLiveRoom().getBroadCasterUserId()).I(3).M(new C0181a(i9, str));
    }

    public void q() {
        PostRequest postRequest = this.f18991a;
        if (postRequest != null) {
            postRequest.cancel();
        }
    }

    public void r() {
        HandlerGetter.getMainHandler().removeCallbacks(this.f19001k);
    }

    public void s(String str) {
        if (str.equals(l().getUserId())) {
            m().f();
            m().i();
            return;
        }
        m().t(str);
    }

    public void t(String str) {
    }

    public void u() {
        HandlerGetter.getMainHandler().removeCallbacks(this.f18996f);
    }

    public void v(BaseLiveRoomFragment baseLiveRoomFragment) {
        this.f18994d = baseLiveRoomFragment;
        this.f18997g = baseLiveRoomFragment;
        this.f18995e.clear();
        this.f18992b = null;
        this.f18993c = null;
        this.f19000j = false;
        this.f19003m = false;
    }

    public void w(boolean z10) {
        this.f19000j = z10;
        if (z10) {
            return;
        }
        this.f19002l = false;
    }

    public void x(FrameLayout frameLayout) {
        this.f18999i = frameLayout;
    }

    public void y() {
        d9.g gVar = this.f18997g;
        if (gVar == null || gVar.getCurrentLiveRoom() == null) {
            return;
        }
        if (this.f18997g.getCurrentLiveRoom().isFreeLinkMic()) {
            z();
        } else {
            A();
        }
    }

    public void z() {
        PostRequest postRequest = this.f18991a;
        if (postRequest != null) {
            postRequest.cancel();
            this.f18991a = null;
        }
        d9.g gVar = this.f18997g;
        if (gVar instanceof BaseLiveRoomFragment) {
            ((BaseLiveRoomFragment) gVar).W3();
        }
    }
}
