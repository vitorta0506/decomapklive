package com.guochao.faceshow.aaspring.modulars.trtc.receive;

import android.os.Bundle;
import com.guochao.faceshow.BaseApplication;
import com.guochao.faceshow.R;
import com.guochao.faceshow.aaspring.base.activity.BaseActivity;
import com.guochao.faceshow.aaspring.modulars.live.activity.LiveBroadCastActivity;
import com.guochao.faceshow.aaspring.modulars.live.pk.PkInviteCardDialogFragment;
import com.guochao.faceshow.aaspring.modulars.trtc.call.CallingActivity;
import com.guochao.faceshow.aaspring.modulars.trtc.model.CallModel;
import com.guochao.faceshow.aaspring.modulars.trtc.receive.FaceCastInviteCallDialog;
import com.guochao.faceshow.aaspring.modulars.trtc.receive.d;
import com.guochao.faceshow.aaspring.utils.AppManager;
import com.guochao.faceshow.aaspring.utils.ToastUtils;
import com.guochao.faceshow.aaspring.utils.UserStateHolder;
import com.guochao.faceshow.service.CallForegroundService;
import com.guochao.faceshow.utils.Foreground;
import com.guochao.faceshow.utils.ServiceUtils;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes3.dex */
public class c implements d.a {

    /* renamed from: d  reason: collision with root package name */
    private static c f22098d;

    /* renamed from: a  reason: collision with root package name */
    private List<CallModel> f22099a = new ArrayList();

    /* renamed from: b  reason: collision with root package name */
    private WeakReference<FaceCastInviteCallDialog> f22100b;

    /* renamed from: c  reason: collision with root package name */
    private FaceCastInviteCallDialog.c f22101c;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class a implements FaceCastInviteCallDialog.c {
        a() {
        }

        @Override // com.guochao.faceshow.aaspring.modulars.trtc.receive.FaceCastInviteCallDialog.c
        public void a(CallModel callModel) {
            if (c.this.f22101c != null) {
                c.this.f22101c.a(callModel);
            }
        }

        @Override // com.guochao.faceshow.aaspring.modulars.trtc.receive.FaceCastInviteCallDialog.c
        public void b(CallModel callModel) {
            if (c.this.f22099a.isEmpty() || c.this.f22101c == null) {
                return;
            }
            c.this.f22101c.b(callModel);
        }

        @Override // com.guochao.faceshow.aaspring.modulars.trtc.receive.FaceCastInviteCallDialog.c
        public void c(CallModel callModel) {
            if (c.this.f22099a.isEmpty()) {
                return;
            }
            c.this.f22099a.remove(0);
            for (CallModel callModel2 : c.this.f22099a) {
                com.guochao.faceshow.aaspring.modulars.trtc.call.a.r().D(callModel2, false);
            }
            c.this.f22099a.clear();
            if (c.this.f22101c != null) {
                c.this.f22101c.c(callModel);
            }
        }
    }

    private c() {
        d.a().c(this);
    }

    private void e() {
        FaceCastInviteCallDialog faceCastInviteCallDialog;
        WeakReference<FaceCastInviteCallDialog> weakReference = this.f22100b;
        if (weakReference == null || (faceCastInviteCallDialog = weakReference.get()) == null || !faceCastInviteCallDialog.isAdded()) {
            return;
        }
        faceCastInviteCallDialog.dismissAllowingStateLoss();
    }

    public static c g() {
        if (f22098d == null) {
            synchronized (c.class) {
                if (f22098d == null) {
                    f22098d = new c();
                }
            }
        }
        return f22098d;
    }

    private void h(CallModel callModel) {
        if (this.f22099a.isEmpty()) {
            e();
        } else if (this.f22099a.size() == 1) {
            this.f22099a.remove(0);
            e();
        } else if (this.f22099a.get(0).matchLogId != null && this.f22099a.get(0).matchLogId.equals(callModel.matchLogId)) {
            e();
        } else {
            for (CallModel callModel2 : this.f22099a) {
                String str = callModel2.matchLogId;
                if (str != null && str.equals(callModel.matchLogId)) {
                    this.f22099a.remove(callModel2);
                    return;
                }
            }
        }
    }

    private void showInviteCallDialog(FaceCastInviteCallDialog.c cVar) {
        this.f22101c = cVar;
        if (this.f22099a.isEmpty()) {
            return;
        }
        CallModel callModel = this.f22099a.get(0);
        BaseActivity baseActivity = (BaseActivity) BaseApplication.getInstance().getCurrTopActivity();
        if (baseActivity == null) {
            return;
        }
        boolean isLiving = UserStateHolder.isLiving();
        boolean containActivity = AppManager.getInstance().containActivity(CallingActivity.class);
        if (isLiving && containActivity) {
            com.guochao.faceshow.aaspring.modulars.trtc.call.a.r().j(callModel);
        } else if (callModel.startCallTimestamp <= 0 || System.currentTimeMillis() - callModel.startCallTimestamp <= 30000) {
            boolean isFromLiveRoom = callModel.isFromLiveRoom();
            if (!AppManager.getInstance().containActivity(LiveBroadCastActivity.class) || !((LiveBroadCastActivity) AppManager.getInstance().getActivity(LiveBroadCastActivity.class)).y0()) {
                if (isFromLiveRoom && !AppManager.getInstance().containActivity(LiveBroadCastActivity.class)) {
                    ToastUtils.showToast((int) R.string.trtc_im_cancel_other);
                    return;
                }
                FaceCastInviteCallDialog T1 = FaceCastInviteCallDialog.T1(callModel);
                this.f22100b = new WeakReference<>(T1);
                T1.show(baseActivity.getSupportFragmentManager(), PkInviteCardDialogFragment.class.getSimpleName());
                T1.setOnResultListener(new a());
                if (Foreground.get().isForeground()) {
                    return;
                }
                ServiceUtils.safeStartForegroundService(CallForegroundService.class);
                return;
            }
            ToastUtils.showToast((int) R.string.trtc_im_cancel_other);
        }
    }

    @Override // com.guochao.faceshow.aaspring.modulars.trtc.receive.d.a
    public void A1(int i9) {
    }

    @Override // com.guochao.faceshow.aaspring.modulars.trtc.receive.d.a
    public void E1(String str) {
    }

    @Override // com.guochao.faceshow.aaspring.modulars.trtc.receive.d.a
    public void I(String str, String str2, CallModel callModel) {
    }

    @Override // com.guochao.faceshow.aaspring.modulars.trtc.receive.d.a
    public void K0(String str, String str2, CallModel callModel) {
    }

    @Override // com.guochao.faceshow.aaspring.modulars.trtc.receive.d.a
    public /* synthetic */ void L0(String str, int i9, int i10, int i11) {
        x9.a.a(this, str, i9, i10, i11);
    }

    @Override // com.guochao.faceshow.aaspring.modulars.trtc.receive.d.a
    public void O0(String str, List<String> list, CallModel callModel) {
        h(callModel);
        ToastUtils.showToast(BaseApplication.getInstance(), (int) R.string.trtc_im_cancel_other);
    }

    @Override // com.guochao.faceshow.aaspring.modulars.trtc.receive.d.a
    public void R(String str, int i9) {
    }

    @Override // com.guochao.faceshow.aaspring.modulars.trtc.receive.d.a
    public void R0(String str, boolean z10) {
    }

    public void c(CallModel callModel, FaceCastInviteCallDialog.c cVar) {
        if (this.f22099a.isEmpty()) {
            this.f22099a.add(0, callModel);
            showInviteCallDialog(cVar);
            return;
        }
        this.f22099a.add(1, callModel);
    }

    public void d() {
        if (this.f22099a.isEmpty()) {
            return;
        }
        this.f22099a.remove(0);
        if (this.f22099a.isEmpty()) {
            return;
        }
        showInviteCallDialog(this.f22101c);
    }

    public List<CallModel> f() {
        WeakReference<FaceCastInviteCallDialog> weakReference = this.f22100b;
        if (weakReference == null) {
            this.f22099a.clear();
            return this.f22099a;
        }
        FaceCastInviteCallDialog faceCastInviteCallDialog = weakReference.get();
        if (faceCastInviteCallDialog == null || faceCastInviteCallDialog.U1() || faceCastInviteCallDialog.isDetached()) {
            this.f22099a.clear();
        }
        return this.f22099a;
    }

    @Override // com.guochao.faceshow.aaspring.modulars.trtc.receive.d.a
    public void f1(long j10) {
    }

    @Override // com.guochao.faceshow.aaspring.modulars.trtc.receive.d.a
    public void j1(CallModel callModel) {
    }

    @Override // com.guochao.faceshow.aaspring.modulars.trtc.receive.d.a
    public void n1(String str, String str2, CallModel callModel) {
    }

    @Override // com.guochao.faceshow.aaspring.modulars.trtc.receive.d.a
    public void o(CallModel callModel) {
    }

    @Override // com.guochao.faceshow.aaspring.modulars.trtc.receive.d.a
    public void s1(CallModel callModel) {
    }

    @Override // com.guochao.faceshow.aaspring.modulars.trtc.receive.d.a
    public void v(String str, String str2, CallModel callModel) {
        h(callModel);
        ToastUtils.showToast(BaseApplication.getInstance(), (int) R.string.trtc_im_cancel_other);
    }

    @Override // com.guochao.faceshow.aaspring.modulars.trtc.receive.d.a
    public void v1(int i9, String str, Bundle bundle) {
    }

    @Override // com.guochao.faceshow.aaspring.modulars.trtc.receive.d.a
    public void w1(String str, boolean z10) {
    }
}
