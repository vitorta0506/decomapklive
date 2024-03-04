package com.guochao.faceshow.aaspring.modulars.trtc.call;

import android.app.Dialog;
import android.content.Context;
import android.media.AudioManager;
import android.media.MediaPlayer;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.os.Handler;
import android.os.Vibrator;
import androidx.annotation.NonNull;
import androidx.fragment.app.DialogFragment;
import androidx.fragment.app.FragmentActivity;
import androidx.fragment.app.FragmentManager;
import com.facebook.internal.NativeProtocol;
import com.google.android.exoplayer2.PlaybackException;
import com.guochao.component.voiceliveroom.helper.VoiceRoomMiniHelper;
import com.guochao.faceshow.BaseApplication;
import com.guochao.faceshow.R;
import com.guochao.faceshow.aaspring.base.http.request.PostRequest;
import com.guochao.faceshow.aaspring.beans.ChatStatusBean;
import com.guochao.faceshow.aaspring.beans.RoomItemData;
import com.guochao.faceshow.aaspring.beans.TencentConfigBean;
import com.guochao.faceshow.aaspring.beans.TrtcFaceCastUser;
import com.guochao.faceshow.aaspring.manager.BeautyItemCacheManager;
import com.guochao.faceshow.aaspring.modulars.date.fragment.ChatBottomFragment;
import com.guochao.faceshow.aaspring.modulars.googlepay.firstrecharge.RechargeDialog;
import com.guochao.faceshow.aaspring.modulars.live.broadcaster.viewmodel.VideoCallDuringLivingViewModel;
import com.guochao.faceshow.aaspring.modulars.main.fragment.MainMenuDialogFragment;
import com.guochao.faceshow.aaspring.modulars.onevone.face2face.FaceToFaceFloatWindowManager;
import com.guochao.faceshow.aaspring.modulars.trtc.call.a;
import com.guochao.faceshow.aaspring.modulars.trtc.message.TRTCSignalMessage;
import com.guochao.faceshow.aaspring.modulars.trtc.model.CallModel;
import com.guochao.faceshow.aaspring.modulars.trtc.receive.d;
import com.guochao.faceshow.aaspring.utils.BasePermissionObserver;
import com.guochao.faceshow.aaspring.utils.LogUtils;
import com.guochao.faceshow.aaspring.utils.PhoneUtils;
import com.guochao.faceshow.aaspring.utils.ToastUtils;
import com.guochao.faceshow.aaspring.utils.UserStateHolder;
import com.guochao.faceshow.bean.UserBean;
import com.guochao.faceshow.utils.BaseConfig;
import com.guochao.faceshow.utils.GsonGetter;
import com.guochao.faceshow.utils.HandlerGetter;
import com.guochao.pusher.beauty.XMagicBeautyManager;
import com.meizu.cloud.pushsdk.util.MzSystemUtils;
import com.tencent.imsdk.v2.V2TIMManager;
import com.tencent.imsdk.v2.V2TIMMessage;
import com.tencent.imsdk.v2.V2TIMMessageManager;
import com.tencent.imsdk.v2.V2TIMOfflinePushInfo;
import com.tencent.imsdk.v2.V2TIMSendCallback;
import com.tencent.trtc.TRTCCloud;
import com.tencent.trtc.TRTCCloudDef;
import com.tencent.trtc.TRTCCloudListener;
import java.nio.charset.StandardCharsets;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;
import org.greenrobot.eventbus.EventBus;
import org.json.JSONObject;
import org.light.utils.FileUtils;
/* loaded from: classes3.dex */
public class a {

    /* renamed from: j  reason: collision with root package name */
    private static a f21899j = null;

    /* renamed from: k  reason: collision with root package name */
    public static boolean f21900k = false;

    /* renamed from: l  reason: collision with root package name */
    public static final String[] f21901l = {"android.permission.CAMERA", "android.permission.RECORD_AUDIO", "android.permission.READ_EXTERNAL_STORAGE", "android.permission.WRITE_EXTERNAL_STORAGE"};

    /* renamed from: m  reason: collision with root package name */
    public static final String[] f21902m = {"android.permission.RECORD_AUDIO", "android.permission.READ_EXTERNAL_STORAGE", "android.permission.WRITE_EXTERNAL_STORAGE"};

    /* renamed from: a  reason: collision with root package name */
    private String f21903a;

    /* renamed from: c  reason: collision with root package name */
    private TRTCCloud f21905c;

    /* renamed from: g  reason: collision with root package name */
    private MediaPlayer f21909g;

    /* renamed from: h  reason: collision with root package name */
    private Vibrator f21910h;

    /* renamed from: b  reason: collision with root package name */
    private String f21904b = "FaceCastCallManager";

    /* renamed from: d  reason: collision with root package name */
    XMagicBeautyManager f21906d = XMagicBeautyManager.getInstance(BaseApplication.getInstance());

    /* renamed from: e  reason: collision with root package name */
    private List<String> f21907e = new ArrayList();

    /* renamed from: f  reason: collision with root package name */
    private int f21908f = 0;

    /* renamed from: i  reason: collision with root package name */
    private TRTCCloudListener f21911i = new i();

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.guochao.faceshow.aaspring.modulars.trtc.call.a$a  reason: collision with other inner class name */
    /* loaded from: classes3.dex */
    public class C0218a implements TRTCCloudListener.TRTCVideoFrameListener {
        C0218a() {
        }

        @Override // com.tencent.trtc.TRTCCloudListener.TRTCVideoFrameListener
        public void onGLContextCreated() {
            a.this.f21906d.glContextCreated();
        }

        @Override // com.tencent.trtc.TRTCCloudListener.TRTCVideoFrameListener
        public void onGLContextDestory() {
            a.this.f21906d.destroyOnGLThread();
        }

        @Override // com.tencent.trtc.TRTCCloudListener.TRTCVideoFrameListener
        public int onProcessVideoFrame(TRTCCloudDef.TRTCVideoFrame tRTCVideoFrame, TRTCCloudDef.TRTCVideoFrame tRTCVideoFrame2) {
            tRTCVideoFrame2.texture.textureId = a.this.f21906d.process(tRTCVideoFrame.texture.textureId, tRTCVideoFrame.width, tRTCVideoFrame.height);
            return 0;
        }
    }

    /* loaded from: classes3.dex */
    class b implements ChatBottomFragment.c {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ FragmentActivity f21913a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ ChatBottomFragment.c f21914b;

        b(FragmentActivity fragmentActivity, ChatBottomFragment.c cVar) {
            this.f21913a = fragmentActivity;
            this.f21914b = cVar;
        }

        @Override // com.guochao.faceshow.aaspring.modulars.date.fragment.ChatBottomFragment.c
        public void onCancel(Dialog dialog, DialogFragment dialogFragment) {
            this.f21914b.onCancel(dialog, dialogFragment);
            dialog.dismiss();
        }

        @Override // com.guochao.faceshow.aaspring.modulars.date.fragment.ChatBottomFragment.c
        public void onVideoClick(Dialog dialog, DialogFragment dialogFragment) {
            if (!a.this.l()) {
                FragmentActivity fragmentActivity = this.f21913a;
                ToastUtils.showToast(fragmentActivity, fragmentActivity.getString(R.string.trtc_network_anomalies_unable_to_call));
                return;
            }
            dialog.dismiss();
            if (p9.a.g().e().getDiamond() != null && p9.a.g().l()) {
                this.f21914b.onVideoClick(dialog, dialogFragment);
            } else {
                a.this.B(dialogFragment.getActivity(), dialog.getContext().getString(R.string.trtc_money_no_enough));
            }
        }

        @Override // com.guochao.faceshow.aaspring.modulars.date.fragment.ChatBottomFragment.c
        public void onVoiceClick(Dialog dialog, DialogFragment dialogFragment) {
            if (!a.this.l()) {
                FragmentActivity fragmentActivity = this.f21913a;
                ToastUtils.showToast(fragmentActivity, fragmentActivity.getString(R.string.trtc_network_anomalies_unable_to_call));
                return;
            }
            dialog.dismiss();
            if (p9.a.g().e().getDiamond() != null && p9.a.g().j()) {
                this.f21914b.onVoiceClick(dialog, dialogFragment);
            } else {
                a.this.B(dialogFragment.getActivity(), dialog.getContext().getString(R.string.trtc_money_no_enough));
            }
        }
    }

    /* loaded from: classes3.dex */
    class c implements ChatBottomFragment.c {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ FragmentActivity f21916a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ TrtcFaceCastUser f21917b;

        c(FragmentActivity fragmentActivity, TrtcFaceCastUser trtcFaceCastUser) {
            this.f21916a = fragmentActivity;
            this.f21917b = trtcFaceCastUser;
        }

        @Override // com.guochao.faceshow.aaspring.modulars.date.fragment.ChatBottomFragment.c
        public void onCancel(Dialog dialog, DialogFragment dialogFragment) {
            dialog.dismiss();
        }

        @Override // com.guochao.faceshow.aaspring.modulars.date.fragment.ChatBottomFragment.c
        public void onVideoClick(Dialog dialog, DialogFragment dialogFragment) {
            if (!a.this.l()) {
                FragmentActivity fragmentActivity = this.f21916a;
                ToastUtils.showToast(fragmentActivity, fragmentActivity.getString(R.string.trtc_network_anomalies_unable_to_call));
                return;
            }
            dialog.dismiss();
            if (p9.a.g().e().getDiamond() != null && p9.a.g().l()) {
                a.r().N(this.f21916a, this.f21917b, 2);
            } else {
                a.this.B(dialogFragment.getActivity(), dialog.getContext().getString(R.string.trtc_money_no_enough));
            }
        }

        @Override // com.guochao.faceshow.aaspring.modulars.date.fragment.ChatBottomFragment.c
        public void onVoiceClick(Dialog dialog, DialogFragment dialogFragment) {
            if (!a.this.l()) {
                FragmentActivity fragmentActivity = this.f21916a;
                ToastUtils.showToast(fragmentActivity, fragmentActivity.getString(R.string.trtc_network_anomalies_unable_to_call));
                return;
            }
            dialog.dismiss();
            if (p9.a.g().e().getDiamond() != null && p9.a.g().j()) {
                a.r().N(this.f21916a, this.f21917b, 1);
            } else {
                a.this.B(dialogFragment.getActivity(), dialog.getContext().getString(R.string.trtc_money_no_enough));
            }
        }
    }

    /* loaded from: classes3.dex */
    class d implements ChatBottomFragment.c {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ FragmentActivity f21919a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ TrtcFaceCastUser f21920b;

        d(FragmentActivity fragmentActivity, TrtcFaceCastUser trtcFaceCastUser) {
            this.f21919a = fragmentActivity;
            this.f21920b = trtcFaceCastUser;
        }

        @Override // com.guochao.faceshow.aaspring.modulars.date.fragment.ChatBottomFragment.c
        public void onCancel(Dialog dialog, DialogFragment dialogFragment) {
            dialog.dismiss();
        }

        @Override // com.guochao.faceshow.aaspring.modulars.date.fragment.ChatBottomFragment.c
        public void onVideoClick(Dialog dialog, DialogFragment dialogFragment) {
            if (FaceToFaceFloatWindowManager.getInstance().isFaceToFaceFloatShowing()) {
                ToastUtils.showToast(this.f21919a, (int) R.string.one_v_one_is_matching);
            } else if (!a.this.l()) {
                FragmentActivity fragmentActivity = this.f21919a;
                ToastUtils.showToast(fragmentActivity, fragmentActivity.getString(R.string.trtc_network_anomalies_unable_to_call));
            } else {
                dialog.dismiss();
                if (p9.a.g().e().getDiamond() != null && p9.a.g().l()) {
                    a.r().N(this.f21919a, this.f21920b, 2);
                } else {
                    a.this.B(dialogFragment.getActivity(), dialog.getContext().getString(R.string.trtc_money_no_enough));
                }
            }
        }

        @Override // com.guochao.faceshow.aaspring.modulars.date.fragment.ChatBottomFragment.c
        public void onVoiceClick(Dialog dialog, DialogFragment dialogFragment) {
            if (FaceToFaceFloatWindowManager.getInstance().isFaceToFaceFloatShowing()) {
                ToastUtils.showToast(this.f21919a, (int) R.string.one_v_one_is_matching);
            } else if (!a.this.l()) {
                FragmentActivity fragmentActivity = this.f21919a;
                ToastUtils.showToast(fragmentActivity, fragmentActivity.getString(R.string.trtc_network_anomalies_unable_to_call));
            } else {
                dialog.dismiss();
                if (p9.a.g().e().getDiamond() != null && p9.a.g().j()) {
                    a.r().N(this.f21919a, this.f21920b, 1);
                } else {
                    a.this.B(dialogFragment.getActivity(), dialog.getContext().getString(R.string.trtc_money_no_enough));
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class e extends BasePermissionObserver {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ Context f21922a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ int f21923b;

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ TrtcFaceCastUser f21924c;

        /* renamed from: d  reason: collision with root package name */
        final /* synthetic */ CallModel f21925d;

        e(Context context, int i9, TrtcFaceCastUser trtcFaceCastUser, CallModel callModel) {
            this.f21922a = context;
            this.f21923b = i9;
            this.f21924c = trtcFaceCastUser;
            this.f21925d = callModel;
        }

        @Override // com.guochao.faceshow.aaspring.utils.BasePermissionObserver
        public void onDenied(te.a aVar) {
            super.onDenied(aVar);
            MainMenuDialogFragment.Q1(this.f21922a, 101, Arrays.asList(this.f21923b == 2 ? a.f21901l : a.f21902m), false);
        }

        @Override // com.guochao.faceshow.aaspring.utils.BasePermissionObserver
        public void onGranted(te.a aVar) {
            if (this.f21923b == 2 && Build.VERSION.SDK_INT == 23 && MzSystemUtils.isMeizu(this.f21922a) && !PhoneUtils.isCameraCanUse(this.f21922a)) {
                Context context = this.f21922a;
                MainMenuDialogFragment.S1(context, context.getString(R.string.check_camera));
            } else if (this.f21923b == 2) {
                CallingActivity.A0(this.f21922a, 5, this.f21924c, this.f21925d);
            } else {
                CallingActivity.A0(this.f21922a, 6, this.f21924c, this.f21925d);
            }
        }

        @Override // com.guochao.faceshow.aaspring.utils.BasePermissionObserver
        public void onShouldShowRequestPermissionRationale(te.a aVar) {
            super.onShouldShowRequestPermissionRationale(aVar);
            MainMenuDialogFragment.Q1(this.f21922a, 101, Arrays.asList(this.f21923b == 2 ? a.f21901l : a.f21902m), true);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class f implements V2TIMSendCallback<V2TIMMessage> {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ CallModel f21927a;

        f(CallModel callModel) {
            this.f21927a = callModel;
        }

        @Override // com.tencent.imsdk.v2.V2TIMValueCallback
        /* renamed from: a */
        public void onSuccess(V2TIMMessage v2TIMMessage) {
            String str = a.this.f21904b;
            LogUtils.d(str, "invite success:" + this.f21927a);
            this.f21927a.version = 1;
        }

        @Override // com.tencent.imsdk.v2.V2TIMValueCallback
        public void onError(int i9, String str) {
            String str2 = a.this.f21904b;
            LogUtils.e(str2, "invite  callID:" + this.f21927a.matchLogId + ",error:" + i9 + " desc:" + str);
        }

        @Override // com.tencent.imsdk.v2.V2TIMSendCallback
        public void onProgress(int i9) {
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class g implements V2TIMSendCallback<V2TIMMessage> {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ String f21929a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ int f21930b;

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ int f21931c;

        /* renamed from: d  reason: collision with root package name */
        final /* synthetic */ CallModel f21932d;

        /* renamed from: e  reason: collision with root package name */
        final /* synthetic */ String f21933e;

        /* renamed from: f  reason: collision with root package name */
        final /* synthetic */ com.guochao.faceshow.aaspring.modulars.chat.models.a f21934f;

        g(String str, int i9, int i10, CallModel callModel, String str2, com.guochao.faceshow.aaspring.modulars.chat.models.a aVar) {
            this.f21929a = str;
            this.f21930b = i9;
            this.f21931c = i10;
            this.f21932d = callModel;
            this.f21933e = str2;
            this.f21934f = aVar;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void b(String str) {
            a.this.f21907e.remove(str);
        }

        @Override // com.tencent.imsdk.v2.V2TIMValueCallback
        /* renamed from: c */
        public void onSuccess(V2TIMMessage v2TIMMessage) {
            String valueOf;
            a.this.f21908f = 0;
            EventBus.getDefault().post(new com.guochao.faceshow.aaspring.modulars.trtc.message.a(this.f21934f));
            Handler mainHandler = HandlerGetter.getMainHandler();
            final String str = this.f21933e;
            mainHandler.postDelayed(new Runnable() { // from class: com.guochao.faceshow.aaspring.modulars.trtc.call.b
                @Override // java.lang.Runnable
                public final void run() {
                    a.g.this.b(str);
                }
            }, 1000L);
            switch (this.f21931c) {
                case 1:
                    valueOf = String.valueOf((int) PlaybackException.ERROR_CODE_DECODER_INIT_FAILED);
                    break;
                case 2:
                    valueOf = String.valueOf((int) PlaybackException.ERROR_CODE_DECODER_QUERY_FAILED);
                    break;
                case 3:
                    valueOf = String.valueOf((int) PlaybackException.ERROR_CODE_DECODING_FAILED);
                    break;
                case 4:
                    valueOf = String.valueOf((int) PlaybackException.ERROR_CODE_DECODING_FORMAT_UNSUPPORTED);
                    break;
                case 5:
                    valueOf = String.valueOf(this.f21932d.hangupType);
                    break;
                case 6:
                    valueOf = String.valueOf(4006);
                    break;
                default:
                    if (this.f21932d.businessId == 1) {
                        valueOf = String.valueOf((int) PlaybackException.ERROR_CODE_DECODING_FORMAT_EXCEEDS_CAPABILITIES);
                        break;
                    } else {
                        valueOf = String.valueOf((int) PlaybackException.ERROR_CODE_DECODING_FORMAT_UNSUPPORTED);
                        break;
                    }
            }
            a.this.m(valueOf, this.f21932d, null);
        }

        @Override // com.tencent.imsdk.v2.V2TIMValueCallback
        public void onError(int i9, String str) {
            ToastUtils.debugToast(BaseApplication.getInstance(), String.format("%s....%s", Integer.valueOf(i9), str));
            if (a.this.f21908f < 3) {
                a.f(a.this);
                a.this.H(this.f21929a, this.f21930b, this.f21931c, this.f21932d);
                return;
            }
            a.this.f21908f = 0;
            a.this.f21907e.remove(this.f21933e);
        }

        @Override // com.tencent.imsdk.v2.V2TIMSendCallback
        public void onProgress(int i9) {
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class h extends Thread {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ Context f21936a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ boolean f21937b;

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ boolean f21938c;

        /* renamed from: d  reason: collision with root package name */
        final /* synthetic */ j f21939d;

        /* renamed from: com.guochao.faceshow.aaspring.modulars.trtc.call.a$h$a  reason: collision with other inner class name */
        /* loaded from: classes3.dex */
        class C0219a implements MediaPlayer.OnCompletionListener {

            /* renamed from: a  reason: collision with root package name */
            final /* synthetic */ AudioManager f21941a;

            C0219a(AudioManager audioManager) {
                this.f21941a = audioManager;
            }

            @Override // android.media.MediaPlayer.OnCompletionListener
            public void onCompletion(MediaPlayer mediaPlayer) {
                this.f21941a.setStreamMute(3, false);
                if (a.this.f21909g != null) {
                    a.this.f21909g.stop();
                    a.this.f21909g.release();
                    a.this.f21909g = null;
                }
                j jVar = h.this.f21939d;
                if (jVar != null) {
                    jVar.a();
                }
            }
        }

        h(Context context, boolean z10, boolean z11, j jVar) {
            this.f21936a = context;
            this.f21937b = z10;
            this.f21938c = z11;
            this.f21939d = jVar;
        }

        @Override // java.lang.Thread, java.lang.Runnable
        public void run() {
            super.run();
            AudioManager audioManager = (AudioManager) this.f21936a.getSystemService("audio");
            if (this.f21937b) {
                audioManager.setStreamMute(3, true);
            } else {
                audioManager.setStreamMute(3, false);
                audioManager.setSpeakerphoneOn(!this.f21938c);
                audioManager.setMode(this.f21938c ? 3 : 0);
            }
            if (BaseApplication.getInstance().getCurrTopActivity() != null) {
                BaseApplication.getInstance().getCurrTopActivity().setVolumeControlStream(this.f21938c ? 0 : 3);
            }
            a.this.f21909g = MediaPlayer.create(this.f21936a, Uri.parse("android.resource://" + BaseApplication.getInstance().getPackageName() + FileUtils.RES_PREFIX_STORAGE + R.raw.end_call_media));
            a.this.f21909g.setLooping(false);
            try {
                a.this.f21909g.prepare();
            } catch (Exception e10) {
                e10.printStackTrace();
            }
            a.this.f21909g.start();
            a.this.f21909g.setOnCompletionListener(new C0219a(audioManager));
        }
    }

    /* loaded from: classes3.dex */
    class i extends TRTCCloudListener {
        i() {
        }

        @Override // com.tencent.trtc.TRTCCloudListener
        public void onEnterRoom(long j10) {
            String str = a.this.f21904b;
            LogUtils.d(str, "onEnterRoom result:" + j10);
            if (j10 < 0) {
                a.r().o();
                return;
            }
            for (d.a aVar : com.guochao.faceshow.aaspring.modulars.trtc.receive.d.a().b()) {
                aVar.f1(j10);
            }
        }

        @Override // com.tencent.trtc.TRTCCloudListener
        public void onError(int i9, String str, Bundle bundle) {
            String str2 = a.this.f21904b;
            LogUtils.e(str2, "onError: " + i9 + " " + str);
            for (d.a aVar : com.guochao.faceshow.aaspring.modulars.trtc.receive.d.a().b()) {
                aVar.v1(i9, str, bundle);
            }
        }

        @Override // com.tencent.trtc.TRTCCloudListener
        public void onExitRoom(int i9) {
            String str = a.this.f21904b;
            LogUtils.d(str, "onExitRoom reason:" + i9);
            for (d.a aVar : com.guochao.faceshow.aaspring.modulars.trtc.receive.d.a().b()) {
                aVar.A1(i9);
            }
        }

        @Override // com.tencent.trtc.TRTCCloudListener
        public void onFirstVideoFrame(String str, int i9, int i10, int i11) {
            super.onFirstVideoFrame(str, i9, i10, i11);
            String str2 = a.this.f21904b;
            LogUtils.d(str2, "onFirstVideoFrame userId:" + str + ", streamType:" + i9);
            for (d.a aVar : com.guochao.faceshow.aaspring.modulars.trtc.receive.d.a().b()) {
                aVar.L0(str, i9, i10, i11);
            }
        }

        @Override // com.tencent.trtc.TRTCCloudListener
        public void onRemoteUserEnterRoom(String str) {
            super.onRemoteUserEnterRoom(str);
            String str2 = a.this.f21904b;
            LogUtils.d(str2, "onRemoteUserEnterRoom userId:" + str);
            for (d.a aVar : com.guochao.faceshow.aaspring.modulars.trtc.receive.d.a().b()) {
                aVar.E1(str);
            }
        }

        @Override // com.tencent.trtc.TRTCCloudListener
        public void onRemoteUserLeaveRoom(String str, int i9) {
            String str2 = a.this.f21904b;
            LogUtils.d(str2, "onRemoteUserLeaveRoom userId:" + str + ", reason:" + i9);
            for (d.a aVar : com.guochao.faceshow.aaspring.modulars.trtc.receive.d.a().b()) {
                aVar.R(str, i9);
            }
        }

        @Override // com.tencent.trtc.TRTCCloudListener
        public void onUserAudioAvailable(String str, boolean z10) {
            super.onUserAudioAvailable(str, z10);
            String str2 = a.this.f21904b;
            LogUtils.d(str2, "onUserAudioAvailable userId:" + str + ", available:" + z10);
            for (d.a aVar : com.guochao.faceshow.aaspring.modulars.trtc.receive.d.a().b()) {
                aVar.w1(str, z10);
            }
        }

        @Override // com.tencent.trtc.TRTCCloudListener
        public void onUserVideoAvailable(String str, boolean z10) {
            super.onUserVideoAvailable(str, z10);
            String str2 = a.this.f21904b;
            LogUtils.d(str2, "onUserVideoAvailable userId:" + str + ", available:" + z10);
            for (d.a aVar : com.guochao.faceshow.aaspring.modulars.trtc.receive.d.a().b()) {
                aVar.R0(str, z10);
            }
        }
    }

    /* loaded from: classes3.dex */
    public interface j {
        void a();
    }

    /* loaded from: classes3.dex */
    public static class k {

        /* renamed from: a  reason: collision with root package name */
        String f21944a;

        /* renamed from: b  reason: collision with root package name */
        int f21945b;

        /* renamed from: c  reason: collision with root package name */
        int f21946c;

        public k(String str, int i9, int i10) {
            this.f21944a = str;
            this.f21945b = i9;
            this.f21946c = i10;
        }

        public String toString() {
            return GsonGetter.getGson().toJson(this);
        }
    }

    private a() {
    }

    private void G(String str, @NonNull CallModel callModel) {
        LogUtils.i("zune：", "sendModel = " + GsonGetter.getGson().toJson(callModel) + ", otherUserId = " + str);
        switch (callModel.actionType) {
            case 1:
                I(str, callModel, new f(callModel));
                return;
            case 2:
                I(str, callModel, null);
                return;
            case 3:
                I(str, callModel, null);
                return;
            case 4:
            case 5:
                I(str, callModel, null);
                return;
            case 6:
                I(str, callModel, null);
                return;
            case 7:
                I(str, callModel, null);
                return;
            case 8:
                I(str, callModel, null);
                return;
            case 9:
                I(str, callModel, null);
                return;
            default:
                return;
        }
    }

    private void I(String str, CallModel callModel, V2TIMSendCallback<V2TIMMessage> v2TIMSendCallback) {
        V2TIMMessage buildMessage = TRTCSignalMessage.buildMessage(callModel);
        if (!str.equals(this.f21903a)) {
            this.f21903a = str;
        }
        V2TIMOfflinePushInfo y10 = callModel.actionType == 1 ? y(callModel, buildMessage) : null;
        V2TIMMessageManager messageManager = V2TIMManager.getMessageManager();
        int i9 = callModel.actionType;
        messageManager.sendMessage(buildMessage, str, null, 0, (i9 == 1 || i9 == 5) ? false : true, y10, v2TIMSendCallback);
    }

    public static CallModel Q(TrtcFaceCastUser trtcFaceCastUser, int i9, boolean z10) {
        CallModel build = CallModel.build(b8.e.g().c());
        build.actionType = 1;
        build.callType = i9;
        build.roomId = Integer.parseInt(b8.e.g().getUserId());
        build.version = 1;
        build.invitedList = Collections.singletonList(trtcFaceCastUser.getCurrentUserId());
        build.timeout = 60;
        build.setFromLiveRoom(z10);
        return build;
    }

    static /* synthetic */ int f(a aVar) {
        int i9 = aVar.f21908f;
        aVar.f21908f = i9 + 1;
        return i9;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean l() {
        NetworkInfo activeNetworkInfo = ((ConnectivityManager) BaseApplication.getInstance().getSystemService("connectivity")).getActiveNetworkInfo();
        return activeNetworkInfo != null && activeNetworkInfo.isAvailable();
    }

    public static a r() {
        if (f21899j == null) {
            synchronized (a.class) {
                if (f21899j == null) {
                    f21899j = new a();
                }
            }
        }
        return f21899j;
    }

    private V2TIMOfflinePushInfo y(CallModel callModel, V2TIMMessage v2TIMMessage) {
        V2TIMOfflinePushInfo v2TIMOfflinePushInfo = new V2TIMOfflinePushInfo();
        String userName = b8.e.g().c().getUserName();
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("fromUserId", b8.e.g().c().getUserId());
            jSONObject.put("fromNickName", userName);
            jSONObject.put(NativeProtocol.WEB_DIALOG_ACTION, true);
            v2TIMOfflinePushInfo.setExt(jSONObject.toString().getBytes(StandardCharsets.UTF_8));
        } catch (Exception e10) {
            e10.printStackTrace();
        }
        v2TIMOfflinePushInfo.setDesc(BaseApplication.getInstance().getString(callModel.callType == 1 ? R.string.trtc_voice_message : R.string.trtc_video_message, new Object[]{b8.e.g().c().getUserName()}));
        v2TIMOfflinePushInfo.setTitle(userName);
        v2TIMOfflinePushInfo.setIgnoreIOSBadge(true);
        return v2TIMOfflinePushInfo;
    }

    public void A(Context context, boolean z10, boolean z11, j jVar) {
        if (UserStateHolder.isLiving()) {
            return;
        }
        new h(context, z11, z10, jVar).start();
    }

    public void B(FragmentActivity fragmentActivity, String str) {
        RechargeDialog.showDialog(fragmentActivity.getSupportFragmentManager(), 6, 9);
        p9.a.g().o();
    }

    public void C(Context context) {
        TRTCCloud sharedInstance = TRTCCloud.sharedInstance(context);
        this.f21905c = sharedInstance;
        sharedInstance.setListener(this.f21911i);
        BeautyItemCacheManager.setBeauty(1005, this.f21906d);
        this.f21905c.setLocalVideoProcessListener(2, 3, new C0218a());
        this.f21905c.setDefaultStreamRecvMode(true, true);
    }

    public void D(CallModel callModel, boolean z10) {
        CallModel replaceAction = callModel.replaceAction(3);
        G(replaceAction.getCurrentUserId(), replaceAction);
        if (z10) {
            ToastUtils.showToast(BaseApplication.getInstance(), (int) R.string.trtc_im_reject_other);
        }
    }

    public void E() {
        TRTCCloud tRTCCloud = this.f21905c;
        if (tRTCCloud != null) {
            tRTCCloud.setListener(null);
            this.f21905c = null;
        }
        this.f21906d.destroyOnMainThread();
    }

    public void F(CallModel callModel) {
        CallModel replaceAction = callModel.replaceAction(5);
        if (b8.e.g().getUserId().equals(replaceAction.getCurrentUserId())) {
            H(replaceAction.invitedList.get(0), replaceAction.callType, 4, replaceAction);
        } else {
            G(replaceAction.getCurrentUserId(), replaceAction);
        }
        ToastUtils.showToast(BaseApplication.getInstance(), (int) R.string.trtc_call_break_by_net);
    }

    public void H(String str, int i9, int i10, CallModel callModel) {
        String kVar = new k(str, i9, i10).toString();
        boolean z10 = false;
        for (String str2 : this.f21907e) {
            if (kVar.equals(str2)) {
                z10 = true;
            }
        }
        if (!z10) {
            this.f21907e.add(kVar);
        } else if (this.f21908f == 0) {
            return;
        }
        ChatStatusBean chatStatusBean = new ChatStatusBean();
        chatStatusBean.setChat_switch(1);
        com.guochao.faceshow.aaspring.modulars.chat.models.a message = CallModel.toMessage(i9, i10, callModel.callTime, callModel.matchLogId);
        if (message == null) {
            return;
        }
        com.guochao.faceshow.aaspring.manager.im.b.l0().Z();
        if (!str.equals(this.f21903a)) {
            this.f21903a = str;
        }
        V2TIMManager.getMessageManager().sendMessage(message.getMessage(), str, null, 0, false, o9.b.d().a(chatStatusBean, str, message), new g(str, i9, i10, callModel, kVar, message));
    }

    public void J(FragmentActivity fragmentActivity, int i9, int i10, TrtcFaceCastUser trtcFaceCastUser) {
        ChatBottomFragment.T1(fragmentActivity.getSupportFragmentManager(), i9, i10, trtcFaceCastUser, new c(fragmentActivity, trtcFaceCastUser));
    }

    public void K(FragmentActivity fragmentActivity, TrtcFaceCastUser trtcFaceCastUser) {
        ChatBottomFragment.U1(fragmentActivity.getSupportFragmentManager(), trtcFaceCastUser, new d(fragmentActivity, trtcFaceCastUser));
    }

    public void L(FragmentActivity fragmentActivity, RoomItemData roomItemData, @NonNull ChatBottomFragment.c cVar) {
        FragmentManager supportFragmentManager = fragmentActivity.getSupportFragmentManager();
        boolean canMakeAudioCall = roomItemData.canMakeAudioCall();
        boolean canMakeVideoCall = roomItemData.canMakeVideoCall();
        ChatBottomFragment.T1(supportFragmentManager, canMakeAudioCall ? 1 : 0, canMakeVideoCall ? 1 : 0, roomItemData, new b(fragmentActivity, cVar));
    }

    public void M(CallModel callModel) {
        CallModel replaceAction = callModel.replaceAction(9);
        G(replaceAction.invitedList.get(0), replaceAction);
        EventBus.getDefault().post(new VideoCallDuringLivingViewModel.StartFeeEvent(replaceAction.matchLogId));
    }

    public void N(Context context, TrtcFaceCastUser trtcFaceCastUser, int i9) {
        EventBus.getDefault().post(new y7.d());
        VoiceRoomMiniHelper.releaseAll();
        new com.tbruyelle.rxpermissions2.a((FragmentActivity) context).p(i9 == 2 ? f21901l : f21902m).subscribe(new e(context, i9, trtcFaceCastUser, Q(trtcFaceCastUser, i9, false)));
    }

    public void O() {
        MediaPlayer mediaPlayer = this.f21909g;
        if (mediaPlayer != null) {
            mediaPlayer.stop();
            this.f21909g.release();
            this.f21909g = null;
        }
        Vibrator vibrator = this.f21910h;
        if (vibrator != null) {
            vibrator.cancel();
        }
    }

    public void P(CallModel callModel) {
        CallModel replaceAction = callModel.replaceAction(2);
        G(replaceAction.invitedList.get(0), replaceAction);
        H(replaceAction.invitedList.get(0), replaceAction.callType, 3, replaceAction);
        ToastUtils.showToast(BaseApplication.getInstance(), (int) R.string.trtc_im_no_answer_other);
    }

    public void R(CallModel callModel) {
        CallModel replaceAction = callModel.replaceAction(2);
        H(replaceAction.invitedList.get(0), replaceAction.callType, 6, replaceAction);
    }

    public void a(CallModel callModel) {
        CallModel replaceAction = callModel.replaceAction(7);
        G(replaceAction.getCurrentUserId(), replaceAction);
    }

    public void j(CallModel callModel) {
        CallModel replaceAction = callModel.replaceAction(6);
        replaceAction.businessId = 1;
        G(replaceAction.getCurrentUserId(), replaceAction);
    }

    public void k(CallModel callModel) {
        CallModel replaceAction = callModel.replaceAction(2);
        G(replaceAction.invitedList.get(0), replaceAction);
        H(replaceAction.invitedList.get(0), replaceAction.callType, 1, replaceAction);
        ToastUtils.showToast(BaseApplication.getInstance(), (int) R.string.trtc_call_cancel);
    }

    public <T> void m(String str, CallModel callModel, com.guochao.faceshow.aaspring.base.http.callback.c<T> cVar) {
        int i9;
        if (cVar == null && (4009 == (i9 = callModel.hangupType) || 4010 == i9 || 4008 == i9 || 4005 == i9)) {
            return;
        }
        new PostRequest("tokens/appoint/hangupAppoint").y("matchLogId", callModel.matchLogId).y("streamId", Integer.valueOf(callModel.roomId)).y("hangupTime", callModel.hangupTime).y("appointDuration", Integer.valueOf(callModel.callTime)).y("appointResult", str).I(3).M(cVar);
    }

    public void n(int i9, int i10) {
        int i11;
        LogUtils.i("zune：", "enterTRTCRoom  roomId = " + i9);
        if (i10 == 2) {
            TRTCCloudDef.TRTCVideoEncParam tRTCVideoEncParam = new TRTCCloudDef.TRTCVideoEncParam();
            tRTCVideoEncParam.videoResolution = 110;
            tRTCVideoEncParam.videoFps = 15;
            tRTCVideoEncParam.videoBitrate = 1000;
            tRTCVideoEncParam.videoResolutionMode = 1;
            tRTCVideoEncParam.enableAdjustRes = false;
            p().setVideoEncoderParam(tRTCVideoEncParam);
        }
        UserBean c10 = b8.e.g().c();
        try {
            i11 = Integer.parseInt(TencentConfigBean.getDefault().getImAppId());
        } catch (Exception unused) {
            i11 = BaseConfig.IM_SDK_APPID;
        }
        TRTCCloudDef.TRTCParams tRTCParams = new TRTCCloudDef.TRTCParams(i11, c10.userId, c10.tencentSignature, i9, "", "");
        tRTCParams.role = 20;
        p().enableAudioVolumeEvaluation(300);
        p().setGSensorMode(0);
        p().setAudioRoute(0);
        p().startLocalAudio(2);
        p().enterRoom(tRTCParams, i10 != 2 ? 2 : 0);
    }

    public void o() {
        p().stopLocalPreview();
        p().stopLocalAudio();
        p().stopAllRemoteView();
        p().exitRoom();
    }

    public TRTCCloud p() {
        if (this.f21905c == null) {
            C(BaseApplication.getInstance());
        }
        return this.f21905c;
    }

    public CallModel q() {
        if (!com.guochao.faceshow.aaspring.modulars.trtc.receive.c.g().f().isEmpty()) {
            return com.guochao.faceshow.aaspring.modulars.trtc.receive.c.g().f().get(0);
        }
        if (BaseApplication.getInstance().getCurrTopActivity() instanceof CallingActivity) {
            return ((CallingActivity) BaseApplication.getInstance().getCurrTopActivity()).p0();
        }
        return null;
    }

    public void s(CallModel callModel, boolean z10) {
        t(callModel, z10, true);
    }

    public void t(CallModel callModel, boolean z10, boolean z11) {
        CallModel replaceAction = callModel.replaceAction(5);
        if (replaceAction.hangupType == 0) {
            replaceAction.hangupType = b8.e.g().getUserId().equals(replaceAction.getCurrentUserId()) ? 4009 : 4010;
        }
        G(b8.e.g().getUserId().equals(replaceAction.getCurrentUserId()) ? replaceAction.invitedList.get(0) : replaceAction.getCurrentUserId(), replaceAction);
        if (b8.e.g().getUserId().equals(replaceAction.getCurrentUserId()) && !z10) {
            H(replaceAction.invitedList.get(0), replaceAction.callType, 5, replaceAction);
        }
        if (z11) {
            ToastUtils.showToast(BaseApplication.getInstance(), (int) R.string.trtc_call_end);
        }
    }

    public boolean u() {
        if (BaseApplication.getInstance().getCurrTopActivity() instanceof CallingActivity) {
            return ((CallingActivity) BaseApplication.getInstance().getCurrTopActivity()).r0();
        }
        return false;
    }

    public boolean v() {
        if (BaseApplication.getInstance().getCurrTopActivity() instanceof CallingActivity) {
            return ((CallingActivity) BaseApplication.getInstance().getCurrTopActivity()).s0();
        }
        return false;
    }

    public void w(CallModel callModel) {
        CallModel replaceAction = callModel.replaceAction(8);
        G(replaceAction.getCurrentUserId(), replaceAction);
    }

    /* JADX WARN: Code restructure failed: missing block: B:24:0x004f, code lost:
        if (b8.e.g().getUserId().equals(r6.getSender()) != false) goto L27;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean x(com.tencent.imsdk.v2.V2TIMMessage r6, boolean r7) {
        /*
            r5 = this;
            java.lang.String r0 = "trtc_type"
            java.lang.String r1 = "call_type"
            r2 = 0
            if (r6 != 0) goto L8
            return r2
        L8:
            com.tencent.imsdk.v2.V2TIMCustomElem r3 = r6.getCustomElem()
            if (r3 != 0) goto Lf
            return r2
        Lf:
            java.lang.String r4 = new java.lang.String
            byte[] r3 = r3.getData()
            r4.<init>(r3)
            org.json.JSONObject r3 = new org.json.JSONObject     // Catch: java.lang.Exception -> L56
            r3.<init>(r4)     // Catch: java.lang.Exception -> L56
            boolean r4 = r3.has(r1)     // Catch: java.lang.Exception -> L56
            if (r4 != 0) goto L24
            return r2
        L24:
            int r1 = r3.getInt(r1)     // Catch: java.lang.Exception -> L56
            boolean r4 = r3.has(r0)     // Catch: java.lang.Exception -> L56
            if (r4 == 0) goto L33
            int r0 = r3.getInt(r0)     // Catch: java.lang.Exception -> L56
            goto L34
        L33:
            r0 = 0
        L34:
            r3 = 1
            if (r1 == r3) goto L3a
            r4 = 2
            if (r1 != r4) goto L5a
        L3a:
            if (r0 == 0) goto L55
            r1 = 6
            if (r0 != r1) goto L51
            b8.d r4 = b8.e.g()     // Catch: java.lang.Exception -> L56
            java.lang.String r4 = r4.getUserId()     // Catch: java.lang.Exception -> L56
            java.lang.String r6 = r6.getSender()     // Catch: java.lang.Exception -> L56
            boolean r6 = r4.equals(r6)     // Catch: java.lang.Exception -> L56
            if (r6 == 0) goto L55
        L51:
            if (r0 != r1) goto L5a
            if (r7 == 0) goto L5a
        L55:
            return r3
        L56:
            r6 = move-exception
            r6.printStackTrace()
        L5a:
            return r2
        */
        throw new UnsupportedOperationException("Method not decompiled: com.guochao.faceshow.aaspring.modulars.trtc.call.a.x(com.tencent.imsdk.v2.V2TIMMessage, boolean):boolean");
    }

    public void z(Context context) {
        if (UserStateHolder.isLiving()) {
            return;
        }
        MediaPlayer mediaPlayer = this.f21909g;
        if (mediaPlayer == null || !mediaPlayer.isPlaying()) {
            Uri parse = Uri.parse("android.resource://" + BaseApplication.getInstance().getPackageName() + FileUtils.RES_PREFIX_STORAGE + R.raw.dialing_call_media);
            if (this.f21910h == null) {
                this.f21910h = (Vibrator) context.getSystemService("vibrator");
            }
            this.f21910h.vibrate(new long[]{1000, 1000}, 0);
            MediaPlayer create = MediaPlayer.create(context, parse);
            this.f21909g = create;
            create.setLooping(true);
            try {
                this.f21909g.prepare();
            } catch (Exception e10) {
                e10.printStackTrace();
            }
            this.f21909g.start();
        }
    }
}
