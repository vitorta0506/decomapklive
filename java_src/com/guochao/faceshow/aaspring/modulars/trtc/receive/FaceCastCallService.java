package com.guochao.faceshow.aaspring.modulars.trtc.receive;

import android.app.ActivityManager;
import android.app.Notification;
import android.app.Service;
import android.content.Context;
import android.content.Intent;
import android.os.Build;
import android.os.IBinder;
import com.guochao.faceshow.BaseApplication;
import com.guochao.faceshow.R;
import com.guochao.faceshow.aaspring.base.activity.BaseActivity;
import com.guochao.faceshow.aaspring.modulars.chat.activity.ChatActivity;
import com.guochao.faceshow.aaspring.modulars.main.fragment.MainMenuDialogFragment;
import com.guochao.faceshow.aaspring.modulars.push.ThirdPushHelper;
import com.guochao.faceshow.aaspring.modulars.trtc.call.CallingActivity;
import com.guochao.faceshow.aaspring.modulars.trtc.model.CallModel;
import com.guochao.faceshow.aaspring.modulars.trtc.receive.FaceCastInviteCallDialog;
import com.guochao.faceshow.aaspring.modulars.trtc.receive.d;
import com.guochao.faceshow.aaspring.utils.BasePermissionObserver;
import com.guochao.faceshow.aaspring.utils.LogUtils;
import com.guochao.faceshow.aaspring.utils.PhoneUtils;
import com.guochao.faceshow.utils.Foreground;
import com.guochao.faceshow.utils.HandlerGetter;
import com.guochao.faceshow.utils.SystemUtil;
import com.meizu.cloud.pushsdk.constants.PushConstants;
import com.meizu.cloud.pushsdk.util.MzSystemUtils;
import com.tencent.imsdk.v2.V2TIMCallback;
import java.util.Arrays;
import java.util.List;
import org.greenrobot.eventbus.EventBus;
/* loaded from: classes3.dex */
public class FaceCastCallService extends Service implements V2TIMCallback {

    /* renamed from: a  reason: collision with root package name */
    private String f22066a = "FaceCastCallService";

    /* renamed from: b  reason: collision with root package name */
    x9.b f22067b = new b();

    /* loaded from: classes3.dex */
    class a implements Runnable {
        a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            if (FaceCastCallService.f(FaceCastCallService.class.getName())) {
                FaceCastCallService.this.stopForeground(true);
            }
        }
    }

    /* loaded from: classes3.dex */
    class b extends x9.b {
        b() {
        }

        @Override // x9.b
        public void a(String str, String str2, CallModel callModel) {
            super.a(str, str2, callModel);
            for (d.a aVar : com.guochao.faceshow.aaspring.modulars.trtc.receive.d.a().b()) {
                aVar.v(str, str2, callModel);
            }
        }

        @Override // x9.b
        public void b(String str, List<String> list, CallModel callModel) {
            super.b(str, list, callModel);
            for (d.a aVar : com.guochao.faceshow.aaspring.modulars.trtc.receive.d.a().b()) {
                aVar.O0(str, list, callModel);
            }
        }

        @Override // x9.b
        public void c(String str, String str2, CallModel callModel) {
            super.c(str, str2, callModel);
            for (d.a aVar : com.guochao.faceshow.aaspring.modulars.trtc.receive.d.a().b()) {
                aVar.n1(str, str2, callModel);
            }
        }

        @Override // x9.b
        public void d(String str, String str2, CallModel callModel) {
            super.d(str, str2, callModel);
            for (d.a aVar : com.guochao.faceshow.aaspring.modulars.trtc.receive.d.a().b()) {
                aVar.K0(str, str2, callModel);
            }
        }

        @Override // x9.b
        public void e(String str, String str2, String str3, List<String> list, CallModel callModel) {
            String str4 = FaceCastCallService.this.f22066a;
            LogUtils.d(str4, "onReceiveNewInvitation inviteID:" + str + ", inviter:" + str2 + " data:" + callModel);
            if (callModel == null) {
                return;
            }
            if (com.guochao.faceshow.aaspring.modulars.trtc.call.a.r().u()) {
                com.guochao.faceshow.aaspring.modulars.trtc.call.a.r().j(callModel);
            } else {
                FaceCastCallService.g(callModel);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class c implements FaceCastInviteCallDialog.c {
        c() {
        }

        @Override // com.guochao.faceshow.aaspring.modulars.trtc.receive.FaceCastInviteCallDialog.c
        public void a(CallModel callModel) {
            BaseActivity baseActivity = (BaseActivity) BaseApplication.getInstance().getCurrTopActivity();
            if (baseActivity != null) {
                ChatActivity.navToChat(baseActivity, callModel.getCurrentUserId(), 1, callModel.getUserName());
            }
        }

        @Override // com.guochao.faceshow.aaspring.modulars.trtc.receive.FaceCastInviteCallDialog.c
        public void b(CallModel callModel) {
            com.guochao.faceshow.aaspring.modulars.trtc.call.a.r().D(callModel, true);
        }

        @Override // com.guochao.faceshow.aaspring.modulars.trtc.receive.FaceCastInviteCallDialog.c
        public void c(final CallModel callModel) {
            FaceCastCallService.d(callModel);
            if (!"vivo NEX A".equals(SystemUtil.getSystemModel()) && !"G8142".equals(SystemUtil.getSystemModel()) && !"INE-AL00".equals(SystemUtil.getSystemModel())) {
                FaceCastCallService.a(callModel);
            } else {
                HandlerGetter.getMainHandler().postDelayed(new Runnable() { // from class: com.guochao.faceshow.aaspring.modulars.trtc.receive.a
                    @Override // java.lang.Runnable
                    public final void run() {
                        FaceCastCallService.a(CallModel.this);
                    }
                }, 1000L);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class d extends BasePermissionObserver {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ BaseActivity f22070a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ int f22071b;

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ int f22072c;

        /* renamed from: d  reason: collision with root package name */
        final /* synthetic */ CallModel f22073d;

        d(BaseActivity baseActivity, int i9, int i10, CallModel callModel) {
            this.f22070a = baseActivity;
            this.f22071b = i9;
            this.f22072c = i10;
            this.f22073d = callModel;
        }

        @Override // com.guochao.faceshow.aaspring.utils.BasePermissionObserver
        public void onDenied(te.a aVar) {
            super.onDenied(aVar);
            MainMenuDialogFragment.Q1(this.f22070a, 101, Arrays.asList(this.f22071b == 2 ? com.guochao.faceshow.aaspring.modulars.trtc.call.a.f21901l : com.guochao.faceshow.aaspring.modulars.trtc.call.a.f21902m), false);
        }

        @Override // com.guochao.faceshow.aaspring.utils.BasePermissionObserver
        public void onGranted(te.a aVar) {
            if (this.f22071b == 2 && Build.VERSION.SDK_INT == 23 && MzSystemUtils.isMeizu(this.f22070a) && !PhoneUtils.isCameraCanUse(this.f22070a)) {
                BaseActivity baseActivity = this.f22070a;
                MainMenuDialogFragment.S1(baseActivity, baseActivity.getString(R.string.check_camera));
                return;
            }
            BaseActivity baseActivity2 = this.f22070a;
            int i9 = this.f22072c;
            CallModel callModel = this.f22073d;
            CallingActivity.A0(baseActivity2, i9, callModel, callModel);
        }

        @Override // com.guochao.faceshow.aaspring.utils.BasePermissionObserver
        public void onShouldShowRequestPermissionRationale(te.a aVar) {
            super.onShouldShowRequestPermissionRationale(aVar);
            MainMenuDialogFragment.Q1(this.f22070a, 101, Arrays.asList(this.f22071b == 2 ? com.guochao.faceshow.aaspring.modulars.trtc.call.a.f21901l : com.guochao.faceshow.aaspring.modulars.trtc.call.a.f21902m), true);
        }
    }

    public static void a(CallModel callModel) {
        BaseActivity baseActivity = (BaseActivity) BaseApplication.getInstance().getCurrTopActivity();
        if (baseActivity instanceof CallingActivity) {
            return;
        }
        com.guochao.faceshow.aaspring.modulars.trtc.call.a.r().a(callModel);
        int i9 = callModel.callType;
        int i10 = i9 == 2 ? 1 : 3;
        if (baseActivity == null) {
            return;
        }
        new com.tbruyelle.rxpermissions2.a(baseActivity).p(i9 == 2 ? com.guochao.faceshow.aaspring.modulars.trtc.call.a.f21901l : com.guochao.faceshow.aaspring.modulars.trtc.call.a.f21902m).subscribe(new d(baseActivity, i9, i10, callModel));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void d(CallModel callModel) {
        EventBus.getDefault().post(new y7.d(callModel));
    }

    private void e() {
        com.guochao.faceshow.aaspring.modulars.trtc.receive.b.b().e(this.f22067b);
    }

    public static boolean f(String str) {
        List<ActivityManager.RunningServiceInfo> runningServices = ((ActivityManager) BaseApplication.getInstance().getSystemService(PushConstants.INTENT_ACTIVITY_NAME)).getRunningServices(Integer.MAX_VALUE);
        if (runningServices != null && runningServices.size() != 0) {
            for (ActivityManager.RunningServiceInfo runningServiceInfo : runningServices) {
                if (str.equals(runningServiceInfo.service.getClassName())) {
                    return true;
                }
            }
        }
        return false;
    }

    public static void g(CallModel callModel) {
        if (BaseApplication.getInstance().getCurrTopActivity() == null) {
            return;
        }
        com.guochao.faceshow.aaspring.modulars.trtc.receive.c.g().c(callModel, new c());
    }

    public static void h(Context context) {
        if (f(FaceCastCallService.class.getName())) {
            return;
        }
        Intent intent = new Intent(context, FaceCastCallService.class);
        if (Build.VERSION.SDK_INT < 26 || Foreground.get().isForeground()) {
            try {
                context.startService(intent);
            } catch (Exception e10) {
                e10.printStackTrace();
            }
        }
    }

    @Override // android.app.Service
    public IBinder onBind(Intent intent) {
        throw new UnsupportedOperationException("Not yet implemented");
    }

    @Override // android.app.Service
    public void onCreate() {
        super.onCreate();
        com.guochao.faceshow.aaspring.manager.im.b.l0().w(this);
        if (com.guochao.faceshow.aaspring.manager.im.b.l0().m()) {
            e();
        }
        if (Build.VERSION.SDK_INT < 26 || !PhoneUtils.isBackground(this)) {
            return;
        }
        startForeground(1, new Notification.Builder(getApplicationContext(), ThirdPushHelper.TYPE_XIAOMI_INTERNATIONAL).build());
        HandlerGetter.getMainHandler().postDelayed(new a(), 1000L);
    }

    @Override // android.app.Service
    public void onDestroy() {
        super.onDestroy();
        com.guochao.faceshow.aaspring.manager.im.b.l0().E(this);
        com.guochao.faceshow.aaspring.modulars.trtc.receive.b.b().f(this.f22067b);
    }

    @Override // com.tencent.imsdk.v2.V2TIMCallback
    public void onError(int i9, String str) {
    }

    @Override // android.app.Service
    public int onStartCommand(Intent intent, int i9, int i10) {
        com.guochao.faceshow.aaspring.modulars.trtc.receive.b.b().e(this.f22067b);
        return super.onStartCommand(intent, i9, i10);
    }

    @Override // com.tencent.imsdk.v2.V2TIMCallback
    public void onSuccess() {
        e();
    }
}
