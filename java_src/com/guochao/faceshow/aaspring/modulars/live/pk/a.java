package com.guochao.faceshow.aaspring.modulars.live.pk;

import android.app.Dialog;
import android.app.NotificationManager;
import android.content.DialogInterface;
import android.content.Intent;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.fragment.app.FragmentActivity;
import com.guochao.faceshow.BaseApplication;
import com.guochao.faceshow.R;
import com.guochao.faceshow.aaspring.base.activity.BaseActivity;
import com.guochao.faceshow.aaspring.base.http.request.PostRequest;
import com.guochao.faceshow.aaspring.base.http.response.FaceCastBaseResponse;
import com.guochao.faceshow.aaspring.beans.CancelPkData;
import com.guochao.faceshow.aaspring.beans.LivePkInvite;
import com.guochao.faceshow.aaspring.beans.PkInviteStatus;
import com.guochao.faceshow.aaspring.modulars.live.activity.LiveBroadCastActivity;
import com.guochao.faceshow.aaspring.modulars.live.common.LivePlayerProvider;
import com.guochao.faceshow.aaspring.modulars.live.model.BaseLiveMessage;
import com.guochao.faceshow.aaspring.modulars.live.model.LiveMessageModel;
import com.guochao.faceshow.aaspring.modulars.live.pk.PkInviteCardDialogFragment;
import com.guochao.faceshow.aaspring.modulars.login.activity.ChooseLoginTypeActivity;
import com.guochao.faceshow.aaspring.modulars.main.fragment.MainMenuDialogFragment;
import com.guochao.faceshow.aaspring.modulars.welcome.RealSplashActivity;
import com.guochao.faceshow.aaspring.modulars.welcome.SplashActivity;
import com.guochao.faceshow.aaspring.utils.BasePermissionObserver;
import com.guochao.faceshow.aaspring.utils.LiveMessageModelFactory;
import com.guochao.faceshow.aaspring.utils.LogUtils;
import com.guochao.faceshow.aaspring.utils.SendMessageHandle;
import com.guochao.faceshow.aaspring.utils.ToastUtils;
import com.guochao.faceshow.aaspring.utils.UserStateHolder;
import com.guochao.faceshow.bean.UserBean;
import com.huawei.hms.push.constant.RemoteMessageConst;
import com.tencent.imsdk.v2.V2TIMCallback;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;
import org.greenrobot.eventbus.EventBus;
import y7.s;
import y7.t;
/* loaded from: classes3.dex */
public class a {

    /* renamed from: e  reason: collision with root package name */
    private static a f19753e;

    /* renamed from: a  reason: collision with root package name */
    private PkInviteCardDialogFragment f19754a;

    /* renamed from: b  reason: collision with root package name */
    private List<LivePkInvite> f19755b = new ArrayList();

    /* renamed from: c  reason: collision with root package name */
    public Dialog f19756c;

    /* renamed from: d  reason: collision with root package name */
    public Dialog f19757d;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.guochao.faceshow.aaspring.modulars.live.pk.a$a  reason: collision with other inner class name */
    /* loaded from: classes3.dex */
    public class C0188a extends com.guochao.faceshow.aaspring.base.http.callback.c<PkInviteStatus> {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ LivePkInvite f19758a;

        C0188a(LivePkInvite livePkInvite) {
            this.f19758a = livePkInvite;
        }

        @Override // com.guochao.faceshow.aaspring.base.http.callback.c
        /* renamed from: a */
        public void onResponse(@Nullable PkInviteStatus pkInviteStatus, @NonNull FaceCastBaseResponse<PkInviteStatus> faceCastBaseResponse) {
            if (pkInviteStatus != null && "1".equals(pkInviteStatus.getStatus())) {
                a.this.g(this.f19758a);
            } else if (pkInviteStatus == null || !"0".equals(pkInviteStatus.getStatus())) {
            } else {
                ToastUtils.showToast(BaseApplication.getInstance(), (int) R.string.pk_invitation_no_longer_valid);
            }
        }

        @Override // com.guochao.faceshow.aaspring.base.http.callback.c
        public void onFailure(@NonNull g7.a<PkInviteStatus> aVar) {
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class b implements DialogInterface.OnDismissListener {
        b() {
        }

        @Override // android.content.DialogInterface.OnDismissListener
        public void onDismiss(DialogInterface dialogInterface) {
            EventBus.getDefault().post(new t());
            a aVar = a.this;
            aVar.f19757d = null;
            aVar.s();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class c implements DialogInterface.OnDismissListener {
        c() {
        }

        @Override // android.content.DialogInterface.OnDismissListener
        public void onDismiss(DialogInterface dialogInterface) {
            a aVar = a.this;
            aVar.f19757d = null;
            aVar.s();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class d implements PkInviteCardDialogFragment.b {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ FragmentActivity f19762a;

        /* renamed from: com.guochao.faceshow.aaspring.modulars.live.pk.a$d$a  reason: collision with other inner class name */
        /* loaded from: classes3.dex */
        class C0189a extends BasePermissionObserver {

            /* renamed from: a  reason: collision with root package name */
            final /* synthetic */ PkInviteCardDialogFragment f19764a;

            C0189a(PkInviteCardDialogFragment pkInviteCardDialogFragment) {
                this.f19764a = pkInviteCardDialogFragment;
            }

            @Override // com.guochao.faceshow.aaspring.utils.BasePermissionObserver
            public void onDenied(te.a aVar) {
                super.onDenied(aVar);
                MainMenuDialogFragment.Q1(d.this.f19762a, 101, Arrays.asList(MainMenuDialogFragment.f20736c), false);
            }

            @Override // com.guochao.faceshow.aaspring.utils.BasePermissionObserver
            public void onGranted(te.a aVar) {
                this.f19764a.dismiss();
                LivePlayerProvider.release();
                a.this.u(this.f19764a.getActivity(), this.f19764a.R1().getUser_id(), this.f19764a.R1().getNick_name(), this.f19764a.R1().getLive_id());
                EventBus.getDefault().post(new s());
                a.this.m();
                a.this.s();
            }

            @Override // com.guochao.faceshow.aaspring.utils.BasePermissionObserver
            public void onShouldShowRequestPermissionRationale(te.a aVar) {
                super.onShouldShowRequestPermissionRationale(aVar);
                MainMenuDialogFragment.Q1(d.this.f19762a, 101, Arrays.asList(MainMenuDialogFragment.f20736c), true);
            }
        }

        /* loaded from: classes3.dex */
        class b extends com.guochao.faceshow.aaspring.base.http.callback.c<String> {

            /* renamed from: a  reason: collision with root package name */
            final /* synthetic */ boolean f19766a;

            /* renamed from: b  reason: collision with root package name */
            final /* synthetic */ String f19767b;

            /* renamed from: c  reason: collision with root package name */
            final /* synthetic */ String f19768c;

            b(boolean z10, String str, String str2) {
                this.f19766a = z10;
                this.f19767b = str;
                this.f19768c = str2;
            }

            @Override // com.guochao.faceshow.aaspring.base.http.callback.c
            public void onFailure(@NonNull g7.a<String> aVar) {
            }

            @Override // com.guochao.faceshow.aaspring.base.http.callback.c
            public void onResponse(@Nullable String str, @NonNull FaceCastBaseResponse<String> faceCastBaseResponse) {
                a.this.a(this.f19766a, this.f19767b, this.f19768c);
            }
        }

        d(FragmentActivity fragmentActivity) {
            this.f19762a = fragmentActivity;
        }

        @Override // com.guochao.faceshow.aaspring.modulars.live.pk.PkInviteCardDialogFragment.b
        public void a(PkInviteCardDialogFragment pkInviteCardDialogFragment) {
            NotificationManager notificationManager = (NotificationManager) BaseApplication.getInstance().getSystemService(RemoteMessageConst.NOTIFICATION);
            if (notificationManager == null) {
                return;
            }
            try {
                notificationManager.cancel(pkInviteCardDialogFragment.R1().getUser_id(), Integer.parseInt(pkInviteCardDialogFragment.R1().getUser_id()) + 39234);
            } catch (Exception unused) {
            }
        }

        @Override // com.guochao.faceshow.aaspring.modulars.live.pk.PkInviteCardDialogFragment.b
        public void b(PkInviteCardDialogFragment pkInviteCardDialogFragment) {
            boolean P1 = pkInviteCardDialogFragment.P1();
            String user_id = pkInviteCardDialogFragment.R1().getUser_id();
            new PostRequest().Q("tokens/live/invite/close/arena").v("notReceive", Integer.valueOf(P1 ? 1 : 0)).v("denyUserId", user_id).I(3).M(new b(P1, user_id, pkInviteCardDialogFragment.R1().getNick_name()));
            pkInviteCardDialogFragment.dismiss();
            if (!a.this.f19755b.isEmpty()) {
                a aVar = a.this;
                aVar.n((LivePkInvite) aVar.f19755b.get(0));
            }
            a.this.s();
        }

        @Override // com.guochao.faceshow.aaspring.modulars.live.pk.PkInviteCardDialogFragment.b
        public void c(PkInviteCardDialogFragment pkInviteCardDialogFragment) {
            new com.tbruyelle.rxpermissions2.a(this.f19762a).p(MainMenuDialogFragment.f20736c).subscribe(new C0189a(pkInviteCardDialogFragment));
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class e implements V2TIMCallback {
        e() {
        }

        @Override // com.tencent.imsdk.v2.V2TIMCallback
        public void onError(int i9, String str) {
            LogUtils.i("LIVE_REPLY_PK_INVITE", str);
        }

        @Override // com.tencent.imsdk.v2.V2TIMCallback
        public void onSuccess() {
            LogUtils.i("LIVE_REPLY_PK_INVITE", "");
        }
    }

    private a() {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(boolean z10, String str, String str2) {
        UserBean c10 = b8.e.g().c();
        LiveMessageModel<BaseLiveMessage> createPkReplyMessageModel = LiveMessageModelFactory.createPkReplyMessageModel(c10.getUserId(), c10.getUserName(), str, str2, false, z10);
        SendMessageHandle.sendOnlineMessage(str, "", createPkReplyMessageModel.buildMessage(), createPkReplyMessageModel.getPriority(), new e());
    }

    private boolean j() {
        Dialog dialog = this.f19757d;
        return dialog != null && dialog.isShowing();
    }

    private boolean k() {
        PkInviteCardDialogFragment pkInviteCardDialogFragment = this.f19754a;
        return pkInviteCardDialogFragment != null && pkInviteCardDialogFragment.S1();
    }

    private boolean l() {
        Dialog dialog = this.f19756c;
        return dialog != null && dialog.isShowing();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void m() {
        Iterator<LivePkInvite> it = this.f19755b.iterator();
        while (it.hasNext()) {
            LivePkInvite next = it.next();
            if (next != null && next.getDialog_type() == 5) {
                it.remove();
            }
        }
        Dialog dialog = this.f19756c;
        if (dialog != null) {
            dialog.dismiss();
            this.f19756c = null;
        }
        Dialog dialog2 = this.f19757d;
        if (dialog2 != null) {
            dialog2.dismiss();
            this.f19757d = null;
        }
        PkInviteCardDialogFragment pkInviteCardDialogFragment = this.f19754a;
        if (pkInviteCardDialogFragment != null) {
            pkInviteCardDialogFragment.dismiss();
            this.f19754a = null;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void n(LivePkInvite livePkInvite) {
        this.f19755b.remove(livePkInvite);
    }

    public static a o() {
        if (f19753e == null) {
            synchronized (a.class) {
                if (f19753e == null) {
                    f19753e = new a();
                }
            }
        }
        return f19753e;
    }

    private void p(LivePkInvite livePkInvite) {
        if (j() || l() || k()) {
            return;
        }
        int dialog_type = livePkInvite.getDialog_type();
        if (dialog_type == 3) {
            t(livePkInvite);
        } else if (dialog_type != 4) {
            if (BaseApplication.getInstance().getCurrTopActivity() instanceof BaseActivity) {
                r((BaseActivity) BaseApplication.getInstance().getCurrTopActivity());
            }
        } else {
            q(livePkInvite);
        }
    }

    private void q(LivePkInvite livePkInvite) {
        this.f19755b.remove(livePkInvite);
        Dialog dialog = this.f19757d;
        if (dialog != null) {
            dialog.show();
            this.f19757d.setOnDismissListener(new c());
            return;
        }
        s();
    }

    private void r(FragmentActivity fragmentActivity) {
        if (this.f19755b.isEmpty()) {
            return;
        }
        PkInviteCardDialogFragment pkInviteCardDialogFragment = this.f19754a;
        if ((pkInviteCardDialogFragment != null && pkInviteCardDialogFragment.S1()) || (fragmentActivity instanceof SplashActivity) || (fragmentActivity instanceof RealSplashActivity)) {
            return;
        }
        PkInviteCardDialogFragment Q1 = PkInviteCardDialogFragment.Q1(this.f19755b.get(0));
        this.f19754a = Q1;
        Q1.show(fragmentActivity.getSupportFragmentManager(), PkInviteCardDialogFragment.class.getSimpleName());
        this.f19754a.setOnResultListener(new d(fragmentActivity));
    }

    private void t(LivePkInvite livePkInvite) {
        this.f19755b.remove(livePkInvite);
        Dialog dialog = this.f19756c;
        if (dialog != null) {
            dialog.show();
            this.f19756c.setOnDismissListener(new b());
            return;
        }
        s();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void u(FragmentActivity fragmentActivity, String str, String str2, String str3) {
        if (fragmentActivity != null) {
            Intent intent = new Intent(fragmentActivity, LiveBroadCastActivity.class);
            intent.putExtra("IDENTITY_TYPE_KEY", 0);
            intent.putExtra("withPkUserId", str);
            intent.putExtra("withPkLiveId", str3);
            intent.putExtra("withPkUserName", str2);
            fragmentActivity.startActivity(intent);
        }
    }

    public void g(LivePkInvite livePkInvite) {
        if (UserStateHolder.checkLivePkState() || livePkInvite == null) {
            return;
        }
        if ((livePkInvite.getUser_id() == null || !livePkInvite.getUser_id().equals(b8.e.g().getUserId())) && !(BaseApplication.getInstance().getCurrTopActivity() instanceof ChooseLoginTypeActivity)) {
            this.f19755b.add(livePkInvite);
            p(livePkInvite);
        }
    }

    public void h(LivePkInvite livePkInvite) {
        new PostRequest("tokens/live/invite/check/arena").v("checkUserId", livePkInvite.getUser_id()).M(new C0188a(livePkInvite));
    }

    public void i(String str, String str2) {
        Iterator<LivePkInvite> it = this.f19755b.iterator();
        while (true) {
            if (!it.hasNext()) {
                break;
            }
            LivePkInvite next = it.next();
            if (str2.equals(next.getUser_id())) {
                PkInviteCardDialogFragment pkInviteCardDialogFragment = this.f19754a;
                if (pkInviteCardDialogFragment != null && pkInviteCardDialogFragment.getDialog() != null) {
                    this.f19754a.dismissAllowingStateLoss();
                }
                this.f19754a = null;
                this.f19755b.remove(next);
                s();
            }
        }
        CancelPkData cancelPkData = new CancelPkData();
        cancelPkData.setToUserId(str);
        cancelPkData.setUserId(str2);
        EventBus.getDefault().post(cancelPkData);
    }

    public void s() {
        if (this.f19755b.isEmpty()) {
            return;
        }
        p(this.f19755b.get(0));
    }
}
