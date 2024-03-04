package com.guochao.faceshow.aaspring.modulars.live.common;

import android.app.Dialog;
import android.content.Context;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.text.TextUtils;
import androidx.fragment.app.FragmentActivity;
import com.guochao.faceshow.aaspring.config.ServerConfig;
import com.guochao.faceshow.views.e;
/* loaded from: classes3.dex */
public class i {

    /* loaded from: classes3.dex */
    public interface a {
        void onResponse();
    }

    public static boolean b(Context context) {
        return c(context, false);
    }

    public static boolean c(Context context, boolean z10) {
        ServerConfig s10 = com.guochao.faceshow.aaspring.manager.i.u().s();
        if (s10 != null && s10.getUserLiveBanned() == 1) {
            long restartLiveTimeStamp = s10.getLiveOperationVo().getRestartLiveTimeStamp();
            if (restartLiveTimeStamp <= 0 || restartLiveTimeStamp >= System.currentTimeMillis() + com.guochao.faceshow.aaspring.manager.i.u().s().getServerTimeDiff()) {
                String reasonMsg = TextUtils.isEmpty(s10.getLiveOperationVo().getReasonMsgLang()) ? s10.getLiveOperationVo().getReasonMsg() : s10.getLiveOperationVo().getReasonMsgLang();
                if (!z10) {
                    com.guochao.faceshow.views.e eVar = new com.guochao.faceshow.views.e(context, new e.a() { // from class: com.guochao.faceshow.aaspring.modulars.live.common.h
                        @Override // com.guochao.faceshow.views.e.a
                        public final void onClick(Dialog dialog, boolean z11) {
                            dialog.dismiss();
                        }

                        @Override // com.guochao.faceshow.views.e.a
                        public /* synthetic */ void onCreate(com.guochao.faceshow.views.e eVar2) {
                            com.guochao.faceshow.views.d.a(this, eVar2);
                        }
                    });
                    eVar.j();
                    eVar.f(reasonMsg);
                    eVar.show();
                }
                return true;
            }
            return false;
        }
        return false;
    }

    public static void d(FragmentActivity fragmentActivity, a aVar) {
        if (aVar != null) {
            aVar.onResponse();
        }
    }

    public static boolean e(Context context) {
        NetworkInfo activeNetworkInfo = ((ConnectivityManager) context.getSystemService("connectivity")).getActiveNetworkInfo();
        return activeNetworkInfo != null && activeNetworkInfo.isAvailable();
    }
}
