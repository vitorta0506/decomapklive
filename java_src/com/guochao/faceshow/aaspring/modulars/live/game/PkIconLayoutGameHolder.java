package com.guochao.faceshow.aaspring.modulars.live.game;

import android.app.Dialog;
import android.content.Context;
import android.view.View;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.core.content.ContextCompat;
import butterknife.ButterKnife;
import butterknife.OnClick;
import com.guochao.faceshow.R;
import com.guochao.faceshow.aaspring.base.http.request.PostRequest;
import com.guochao.faceshow.aaspring.base.http.response.FaceCastBaseResponse;
import com.guochao.faceshow.aaspring.beans.PkRound;
import com.guochao.faceshow.aaspring.modulars.live.common.x;
import com.guochao.faceshow.aaspring.modulars.live.interfaces.LiveRoomModel;
import com.guochao.faceshow.aaspring.modulars.live.model.BaseLiveMessage;
import com.guochao.faceshow.aaspring.modulars.live.model.LiveMessageModel;
import com.guochao.faceshow.aaspring.utils.LiveMessageModelFactory;
import com.guochao.faceshow.aaspring.utils.SvgaImageViewUtils;
import com.guochao.faceshow.aaspring.utils.ToastUtils;
import com.guochao.faceshow.views.e;
import com.opensource.svgaplayer.SVGAImageView;
import com.opensource.svgaplayer.SVGAParser;
import com.opensource.svgaplayer.SVGAVideoEntity;
import d9.e;
import java.io.InputStream;
import org.jetbrains.annotations.NotNull;
/* loaded from: classes3.dex */
public class PkIconLayoutGameHolder {

    /* renamed from: a  reason: collision with root package name */
    private ImageView f19415a;

    /* renamed from: b  reason: collision with root package name */
    private SVGAImageView f19416b;

    /* renamed from: c  reason: collision with root package name */
    private boolean f19417c = true;

    /* renamed from: d  reason: collision with root package name */
    private SVGAVideoEntity f19418d;

    /* renamed from: e  reason: collision with root package name */
    private boolean f19419e;

    /* renamed from: f  reason: collision with root package name */
    private Dialog f19420f;

    /* renamed from: g  reason: collision with root package name */
    private View f19421g;

    /* renamed from: h  reason: collision with root package name */
    private TextView f19422h;

    /* renamed from: i  reason: collision with root package name */
    private LiveRoomModel f19423i;

    /* renamed from: j  reason: collision with root package name */
    private d f19424j;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class a implements SVGAParser.ParseCompletion {
        a() {
        }

        @Override // com.opensource.svgaplayer.SVGAParser.ParseCompletion
        public void onComplete(@NotNull SVGAVideoEntity sVGAVideoEntity) {
            PkIconLayoutGameHolder.this.f19418d = sVGAVideoEntity;
            PkIconLayoutGameHolder.this.q(false);
            PkIconLayoutGameHolder.this.f19416b.setVisibility(0);
            PkIconLayoutGameHolder.this.f19416b.setVideoItem(sVGAVideoEntity);
            PkIconLayoutGameHolder.this.f19416b.startAnimation();
        }

        @Override // com.opensource.svgaplayer.SVGAParser.ParseCompletion
        public void onError() {
        }
    }

    /* loaded from: classes3.dex */
    class b implements e.a {
        b() {
        }

        @Override // com.guochao.faceshow.views.e.a
        public void onClick(Dialog dialog, boolean z10) {
            if (z10) {
                if (PkIconLayoutGameHolder.this.f19417c) {
                    PkIconLayoutGameHolder.this.k(dialog);
                    return;
                }
                return;
            }
            dialog.dismiss();
        }

        @Override // com.guochao.faceshow.views.e.a
        public /* synthetic */ void onCreate(com.guochao.faceshow.views.e eVar) {
            com.guochao.faceshow.views.d.a(this, eVar);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class c extends com.guochao.faceshow.aaspring.base.http.callback.c<PkRound> {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ Dialog f19427a;

        c(Dialog dialog) {
            this.f19427a = dialog;
        }

        @Override // com.guochao.faceshow.aaspring.base.http.callback.c
        /* renamed from: a */
        public void onResponse(@Nullable PkRound pkRound, @NonNull FaceCastBaseResponse<PkRound> faceCastBaseResponse) {
            this.f19427a.dismiss();
            if (PkIconLayoutGameHolder.this.j() && PkIconLayoutGameHolder.this.f19424j != null && pkRound != null) {
                PkIconLayoutGameHolder.this.f19424j.e(pkRound.getSelectTime());
            }
            PkIconLayoutGameHolder.this.o();
            PkIconLayoutGameHolder.this.f19417c = true;
        }

        @Override // com.guochao.faceshow.aaspring.base.http.callback.c
        public void onFailure(@NonNull g7.a<PkRound> aVar) {
            PkIconLayoutGameHolder.this.f19417c = true;
            Context context = PkIconLayoutGameHolder.this.f19421g.getContext();
            ToastUtils.debugToast(context, "异常返回Code:" + aVar.a() + aVar.c());
            this.f19427a.dismiss();
        }
    }

    /* loaded from: classes3.dex */
    public interface d {
        void a();

        void c(int i9, String str, String str2, String str3, String str4, boolean z10, boolean z11);

        void d(int i9, boolean z10);

        void e(long j10);

        void f();

        <T extends BaseLiveMessage> void sendC2CLiveMessage(@NonNull String str, @NonNull LiveMessageModel<T> liveMessageModel, @Nullable e.a<Boolean> aVar);
    }

    public PkIconLayoutGameHolder(View view, TextView textView) {
        this.f19421g = view;
        this.f19422h = textView;
        ButterKnife.c(this, view);
        this.f19415a = (ImageView) view.findViewById(R.id.pk_normal_btn);
        this.f19416b = (SVGAImageView) view.findViewById(R.id.pk_gift_btn);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void k(Dialog dialog) {
        this.f19417c = false;
        new PostRequest("tokens/live/pk/downPkLive").M(new c(dialog));
    }

    private void n() {
        SVGAVideoEntity sVGAVideoEntity = this.f19418d;
        if (sVGAVideoEntity != null) {
            sVGAVideoEntity.release();
            this.f19418d = null;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void o() {
        String user_id;
        String userName;
        String str;
        String str2;
        d dVar;
        if (this.f19423i.getPkUserInfo() == null) {
            if (x.n().m() != null && x.n().m().getRightAnchorMsg() != null) {
                user_id = x.n().m().getRightAnchorMsg().getUserId();
                userName = x.n().m().getRightAnchorMsg().getUserNickName();
            } else {
                str2 = "";
                str = str2;
                this.f19423i.setApplyPkState(false);
                ToastUtils.debugToast(this.f19421g.getContext(), "sendDownPkMessage");
                this.f19423i.setInPkMode(false);
                if (j() && (dVar = this.f19424j) != null) {
                    dVar.sendC2CLiveMessage(str2, LiveMessageModelFactory.createLeavePkMessage(b8.e.g().c().getUserId(), b8.e.g().c().getUserName(), str2, str, this.f19423i.isInPkPunishmentTime()), null);
                }
                if (j() && this.f19424j != null && !this.f19423i.isInPkPunishmentTime()) {
                    this.f19424j.c(2, str2, str, "", "", false, false);
                    this.f19424j.d(2, true);
                }
                x.n().d();
                ToastUtils.debugToast(this.f19421g.getContext(), "点击下P按钮恢复");
                l();
            }
        } else {
            user_id = this.f19423i.getPkUserInfo().getUser_id();
            userName = this.f19423i.getPkUserInfo().getUserName();
        }
        str = userName;
        str2 = user_id;
        this.f19423i.setApplyPkState(false);
        ToastUtils.debugToast(this.f19421g.getContext(), "sendDownPkMessage");
        this.f19423i.setInPkMode(false);
        if (j()) {
            dVar.sendC2CLiveMessage(str2, LiveMessageModelFactory.createLeavePkMessage(b8.e.g().c().getUserId(), b8.e.g().c().getUserName(), str2, str, this.f19423i.isInPkPunishmentTime()), null);
        }
        if (j()) {
            this.f19424j.c(2, str2, str, "", "", false, false);
            this.f19424j.d(2, true);
        }
        x.n().d();
        ToastUtils.debugToast(this.f19421g.getContext(), "点击下P按钮恢复");
        l();
    }

    public d i() {
        return this.f19424j;
    }

    public boolean j() {
        View view = this.f19421g;
        return view != null && view.getVisibility() == 0;
    }

    public void l() {
        LiveRoomModel liveRoomModel;
        InputStream openRawResource;
        if (!j() || this.f19421g.getContext() == null || (liveRoomModel = this.f19423i) == null) {
            return;
        }
        if (liveRoomModel.isBroadCaster() && !this.f19423i.isMultiLiveRoom() && !this.f19423i.isPrivateLiveRoom() && com.guochao.faceshow.aaspring.manager.i.u().s().getPkEnableFlag() != 0) {
            if (!this.f19423i.isInPkMode() && !this.f19423i.isInPkPunishmentTime()) {
                if (this.f19423i.getApplyPkState()) {
                    this.f19416b.clear();
                    if (this.f19418d != null) {
                        this.f19418d = null;
                    }
                    if (x.n().p() == 1) {
                        openRawResource = this.f19421g.getResources().openRawResource(R.raw.pk_random_match_small);
                    } else {
                        openRawResource = this.f19421g.getResources().openRawResource(R.raw.live_pk_appling);
                    }
                    SVGAParser parser = SvgaImageViewUtils.getParser();
                    parser.decodeFromInputStream(openRawResource, "pk_apply_btn_" + x.n().p(), new a(), true);
                    TextView textView = this.f19422h;
                    if (textView != null) {
                        textView.setText(textView.getContext().getString(R.string.minigame_pk_waiting));
                        return;
                    }
                    return;
                }
                n();
                q(true);
                this.f19416b.setVisibility(8);
                this.f19415a.setVisibility(0);
                if (this.f19419e) {
                    this.f19415a.setImageResource(R.mipmap.pk_btn_not_click_single);
                } else {
                    this.f19415a.setImageResource(R.mipmap.pk_btn_not_click);
                }
                TextView textView2 = this.f19422h;
                if (textView2 != null) {
                    textView2.setText("PK");
                    return;
                }
                return;
            }
            this.f19416b.setVisibility(8);
            q(true);
            this.f19415a.setEnabled(true);
            this.f19415a.setImageResource(R.mipmap.pk_live_close);
            n();
            TextView textView3 = this.f19422h;
            if (textView3 != null) {
                textView3.setText(textView3.getContext().getString(R.string.minigame_pk_end));
                return;
            }
            return;
        }
        q(false);
        this.f19416b.setVisibility(8);
        n();
        TextView textView4 = this.f19422h;
        if (textView4 != null) {
            textView4.setText("PK");
        }
    }

    public void m() {
        n();
        Dialog dialog = this.f19420f;
        if (dialog == null || !dialog.isShowing()) {
            return;
        }
        this.f19420f.dismiss();
    }

    @OnClick
    public void onViewClicked(View view) {
        d dVar;
        d dVar2;
        int id2 = view.getId();
        if (id2 != R.id.pk_gift_btn) {
            if (id2 == R.id.pk_normal_btn && this.f19423i.isBroadCaster() && j()) {
                if (!this.f19423i.isInPkMode() && !this.f19423i.isInPkPunishmentTime()) {
                    if (this.f19423i.getApplyPkState() || !j() || (dVar2 = this.f19424j) == null) {
                        return;
                    }
                    dVar2.a();
                } else if (this.f19423i.getAdmitDefeatNum() <= 0 && !this.f19423i.isInPkPunishmentTime()) {
                    ToastUtils.showToast(this.f19421g.getContext(), (int) R.string.pk_give_up_number_over);
                } else {
                    com.guochao.faceshow.views.e eVar = new com.guochao.faceshow.views.e(this.f19421g.getContext(), new b());
                    eVar.m(ContextCompat.getColor(this.f19421g.getContext(), R.color.color_common_dialog_cancel));
                    eVar.d(ContextCompat.getColor(this.f19421g.getContext(), R.color.color_common_dialog_confirm));
                    if (this.f19423i.isInPkPunishmentTime()) {
                        eVar.f(this.f19421g.getContext().getString(R.string.live_pk_exit));
                    } else {
                        eVar.f(this.f19421g.getContext().getString(R.string.pk_give_up, String.valueOf(this.f19423i.getAdmitDefeatNum())));
                    }
                    eVar.show();
                    this.f19420f = eVar;
                }
            }
        } else if (this.f19423i.isBroadCaster() && j() && this.f19423i.getApplyPkState() && j() && (dVar = this.f19424j) != null) {
            dVar.f();
        }
    }

    public void p(LiveRoomModel liveRoomModel) {
        this.f19423i = liveRoomModel;
    }

    public void q(boolean z10) {
        if (!(com.guochao.faceshow.aaspring.manager.i.u().s().getPkEnableFlag() == 1)) {
            this.f19415a.setVisibility(8);
        } else if (!this.f19423i.isBroadCaster() || this.f19423i.isMultiLiveRoom() || this.f19423i.isPrivateLiveRoom()) {
            this.f19415a.setVisibility(8);
        } else if (z10) {
            if (this.f19415a.getVisibility() == 8 && this.f19416b.getVisibility() == 0) {
                return;
            }
            this.f19415a.setTag(R.id.request_linkmic, Boolean.TRUE);
            this.f19415a.setVisibility(0);
        } else {
            this.f19415a.setTag(R.id.request_linkmic, Boolean.FALSE);
            this.f19415a.setVisibility(8);
        }
    }

    public void r(boolean z10) {
        if (z10) {
            this.f19416b.setEnabled(true);
        } else {
            this.f19416b.setEnabled(false);
        }
        l();
    }

    public void s(boolean z10) {
        this.f19419e = z10;
        if (z10) {
            this.f19415a.setEnabled(true);
        } else {
            this.f19415a.setEnabled(false);
        }
        l();
    }

    public void setOnResultListener(d dVar) {
        this.f19424j = dVar;
    }
}
