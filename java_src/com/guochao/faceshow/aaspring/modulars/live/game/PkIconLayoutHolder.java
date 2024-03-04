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
public class PkIconLayoutHolder {

    /* renamed from: a  reason: collision with root package name */
    private ImageView f19436a;

    /* renamed from: b  reason: collision with root package name */
    private SVGAImageView f19437b;

    /* renamed from: c  reason: collision with root package name */
    private boolean f19438c = true;

    /* renamed from: d  reason: collision with root package name */
    private SVGAVideoEntity f19439d;

    /* renamed from: e  reason: collision with root package name */
    private boolean f19440e;

    /* renamed from: f  reason: collision with root package name */
    private Dialog f19441f;

    /* renamed from: g  reason: collision with root package name */
    private View f19442g;

    /* renamed from: h  reason: collision with root package name */
    private TextView f19443h;

    /* renamed from: i  reason: collision with root package name */
    private LiveRoomModel f19444i;

    /* renamed from: j  reason: collision with root package name */
    private d f19445j;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class a implements SVGAParser.ParseCompletion {
        a() {
        }

        @Override // com.opensource.svgaplayer.SVGAParser.ParseCompletion
        public void onComplete(@NotNull SVGAVideoEntity sVGAVideoEntity) {
            PkIconLayoutHolder.this.f19439d = sVGAVideoEntity;
            PkIconLayoutHolder.this.o(false);
            PkIconLayoutHolder.this.f19437b.setVisibility(0);
            PkIconLayoutHolder.this.f19437b.setVideoItem(sVGAVideoEntity);
            PkIconLayoutHolder.this.f19437b.startAnimation();
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
                if (PkIconLayoutHolder.this.f19438c) {
                    PkIconLayoutHolder.this.j(dialog);
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
        final /* synthetic */ Dialog f19448a;

        c(Dialog dialog) {
            this.f19448a = dialog;
        }

        @Override // com.guochao.faceshow.aaspring.base.http.callback.c
        /* renamed from: a */
        public void onResponse(@Nullable PkRound pkRound, @NonNull FaceCastBaseResponse<PkRound> faceCastBaseResponse) {
            this.f19448a.dismiss();
            if (PkIconLayoutHolder.this.i() && PkIconLayoutHolder.this.f19445j != null && pkRound != null) {
                PkIconLayoutHolder.this.f19445j.e(pkRound.getSelectTime());
            }
            PkIconLayoutHolder.this.m();
            PkIconLayoutHolder.this.f19438c = true;
        }

        @Override // com.guochao.faceshow.aaspring.base.http.callback.c
        public void onFailure(@NonNull g7.a<PkRound> aVar) {
            PkIconLayoutHolder.this.f19438c = true;
            Context context = PkIconLayoutHolder.this.f19442g.getContext();
            ToastUtils.debugToast(context, "异常返回Code:" + aVar.a() + aVar.c());
            this.f19448a.dismiss();
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

    public PkIconLayoutHolder(View view, TextView textView) {
        this.f19442g = view;
        this.f19443h = textView;
        ButterKnife.c(this, view);
        this.f19436a = (ImageView) view.findViewById(R.id.pk_normal_btn);
        this.f19437b = (SVGAImageView) view.findViewById(R.id.pk_gift_btn);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void j(Dialog dialog) {
        this.f19438c = false;
        new PostRequest("tokens/live/pk/downPkLive").M(new c(dialog));
    }

    private void l() {
        SVGAVideoEntity sVGAVideoEntity = this.f19439d;
        if (sVGAVideoEntity != null) {
            sVGAVideoEntity.release();
            this.f19439d = null;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void m() {
        String user_id;
        String userName;
        String str;
        String str2;
        d dVar;
        if (this.f19444i.getPkUserInfo() == null) {
            if (x.n().m() != null && x.n().m().getRightAnchorMsg() != null) {
                user_id = x.n().m().getRightAnchorMsg().getUserId();
                userName = x.n().m().getRightAnchorMsg().getUserNickName();
            } else {
                str2 = "";
                str = str2;
                this.f19444i.setApplyPkState(false);
                ToastUtils.debugToast(this.f19442g.getContext(), "sendDownPkMessage");
                this.f19444i.setInPkMode(false);
                if (i() && (dVar = this.f19445j) != null) {
                    dVar.sendC2CLiveMessage(str2, LiveMessageModelFactory.createLeavePkMessage(b8.e.g().c().getUserId(), b8.e.g().c().getUserName(), str2, str, this.f19444i.isInPkPunishmentTime()), null);
                }
                if (i() && this.f19445j != null && !this.f19444i.isInPkPunishmentTime()) {
                    this.f19445j.c(2, str2, str, "", "", false, false);
                    this.f19445j.d(2, true);
                }
                x.n().d();
                ToastUtils.debugToast(this.f19442g.getContext(), "点击下P按钮恢复");
                k();
            }
        } else {
            user_id = this.f19444i.getPkUserInfo().getUser_id();
            userName = this.f19444i.getPkUserInfo().getUserName();
        }
        str = userName;
        str2 = user_id;
        this.f19444i.setApplyPkState(false);
        ToastUtils.debugToast(this.f19442g.getContext(), "sendDownPkMessage");
        this.f19444i.setInPkMode(false);
        if (i()) {
            dVar.sendC2CLiveMessage(str2, LiveMessageModelFactory.createLeavePkMessage(b8.e.g().c().getUserId(), b8.e.g().c().getUserName(), str2, str, this.f19444i.isInPkPunishmentTime()), null);
        }
        if (i()) {
            this.f19445j.c(2, str2, str, "", "", false, false);
            this.f19445j.d(2, true);
        }
        x.n().d();
        ToastUtils.debugToast(this.f19442g.getContext(), "点击下P按钮恢复");
        k();
    }

    public boolean i() {
        View view = this.f19442g;
        return view != null && view.getVisibility() == 0;
    }

    public void k() {
        LiveRoomModel liveRoomModel;
        InputStream openRawResource;
        if (!i() || this.f19442g.getContext() == null || (liveRoomModel = this.f19444i) == null) {
            return;
        }
        if (liveRoomModel.isBroadCaster() && !this.f19444i.isMultiLiveRoom() && !this.f19444i.isPrivateLiveRoom() && com.guochao.faceshow.aaspring.manager.i.u().s().getPkEnableFlag() != 0) {
            if (!this.f19444i.isInPkMode() && !this.f19444i.isInPkPunishmentTime()) {
                if (this.f19444i.getApplyPkState()) {
                    this.f19437b.clear();
                    if (this.f19439d != null) {
                        this.f19439d = null;
                    }
                    if (x.n().p() == 1) {
                        openRawResource = this.f19442g.getResources().openRawResource(R.raw.pk_random_match_small);
                    } else {
                        openRawResource = this.f19442g.getResources().openRawResource(R.raw.live_pk_appling);
                    }
                    SVGAParser parser = SvgaImageViewUtils.getParser();
                    parser.decodeFromInputStream(openRawResource, "pk_apply_btn_" + x.n().p(), new a(), true);
                    TextView textView = this.f19443h;
                    if (textView != null) {
                        textView.setText(textView.getContext().getString(R.string.minigame_pk_waiting));
                        return;
                    }
                    return;
                }
                l();
                o(true);
                this.f19437b.setVisibility(8);
                this.f19436a.setVisibility(0);
                if (this.f19440e) {
                    this.f19436a.setImageResource(R.mipmap.pk_btn);
                } else {
                    this.f19436a.setImageResource(R.mipmap.pk_btn_not_click);
                }
                TextView textView2 = this.f19443h;
                if (textView2 != null) {
                    textView2.setText("PK");
                    return;
                }
                return;
            }
            this.f19437b.setVisibility(8);
            o(true);
            this.f19436a.setEnabled(true);
            this.f19436a.setImageResource(R.mipmap.pk_live_close);
            l();
            TextView textView3 = this.f19443h;
            if (textView3 != null) {
                textView3.setText(textView3.getContext().getString(R.string.minigame_pk_end));
                return;
            }
            return;
        }
        o(false);
        this.f19437b.setVisibility(8);
        l();
        TextView textView4 = this.f19443h;
        if (textView4 != null) {
            textView4.setText("PK");
        }
    }

    public void n(LiveRoomModel liveRoomModel) {
        this.f19444i = liveRoomModel;
    }

    public void o(boolean z10) {
        if (!(com.guochao.faceshow.aaspring.manager.i.u().s().getPkEnableFlag() == 1)) {
            this.f19436a.setVisibility(8);
        } else if (!this.f19444i.isBroadCaster() || this.f19444i.isMultiLiveRoom() || this.f19444i.isPrivateLiveRoom()) {
            this.f19436a.setVisibility(8);
        } else if (z10) {
            if (this.f19436a.getVisibility() == 8 && this.f19437b.getVisibility() == 0) {
                return;
            }
            this.f19436a.setTag(R.id.request_linkmic, Boolean.TRUE);
            this.f19436a.setVisibility(0);
        } else {
            this.f19436a.setTag(R.id.request_linkmic, Boolean.FALSE);
            this.f19436a.setVisibility(8);
        }
    }

    @OnClick
    public void onViewClicked(View view) {
        d dVar;
        d dVar2;
        int id2 = view.getId();
        if (id2 != R.id.pk_gift_btn) {
            if (id2 == R.id.pk_normal_btn && this.f19444i.isBroadCaster() && i()) {
                if (!this.f19444i.isInPkMode() && !this.f19444i.isInPkPunishmentTime()) {
                    if (this.f19444i.getApplyPkState() || !i() || (dVar2 = this.f19445j) == null) {
                        return;
                    }
                    dVar2.a();
                } else if (this.f19444i.getAdmitDefeatNum() <= 0 && !this.f19444i.isInPkPunishmentTime()) {
                    ToastUtils.showToast(this.f19442g.getContext(), (int) R.string.pk_give_up_number_over);
                } else {
                    com.guochao.faceshow.views.e eVar = new com.guochao.faceshow.views.e(this.f19442g.getContext(), new b());
                    eVar.m(ContextCompat.getColor(this.f19442g.getContext(), R.color.color_common_dialog_cancel));
                    eVar.d(ContextCompat.getColor(this.f19442g.getContext(), R.color.color_common_dialog_confirm));
                    if (this.f19444i.isInPkPunishmentTime()) {
                        eVar.f(this.f19442g.getContext().getString(R.string.live_pk_exit));
                    } else {
                        eVar.f(this.f19442g.getContext().getString(R.string.pk_give_up, String.valueOf(this.f19444i.getAdmitDefeatNum())));
                    }
                    eVar.show();
                    this.f19441f = eVar;
                }
            }
        } else if (this.f19444i.isBroadCaster() && i() && this.f19444i.getApplyPkState() && i() && (dVar = this.f19445j) != null) {
            dVar.f();
        }
    }

    public void p(boolean z10) {
        if (z10) {
            this.f19437b.setEnabled(true);
        } else {
            this.f19437b.setEnabled(false);
        }
        k();
    }

    public void q(boolean z10) {
        this.f19440e = z10;
        if (z10) {
            this.f19436a.setEnabled(true);
        } else {
            this.f19436a.setEnabled(false);
        }
        k();
    }

    public void r(int i9) {
        View view = this.f19442g;
        if (view != null) {
            view.setVisibility(i9);
        }
    }

    public void setOnResultListener(d dVar) {
        this.f19445j = dVar;
    }
}
