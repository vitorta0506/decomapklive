package com.guochao.faceshow.aaspring.modulars.live.common;

import android.content.Context;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.fragment.app.FragmentActivity;
import com.alibaba.android.arouter.facade.annotation.Route;
import com.guochao.faceshow.R;
import com.guochao.faceshow.aaspring.base.navigator.RouterPath;
import com.guochao.faceshow.aaspring.modulars.live.common.LiveVoiceBannedListDialog;
import com.guochao.lib_service_center.liveroom.service.LiveBannedListProxy;
import com.guochao.lib_service_center.share.service.ShareProxy;
@Route(path = RouterPath.ROUTER_LIVE_BANNED_LIST)
/* loaded from: classes3.dex */
public class LiveBannedListDialogHelper implements LiveBannedListProxy {

    /* loaded from: classes3.dex */
    class a implements LiveVoiceBannedListDialog.j {
        a() {
        }

        @Override // com.guochao.faceshow.aaspring.modulars.live.common.LiveVoiceBannedListDialog.j
        public void a(String str, String str2, String str3) {
        }

        @Override // com.guochao.faceshow.aaspring.modulars.live.common.LiveVoiceBannedListDialog.j
        public void b(String str, String str2, String str3) {
        }
    }

    @Override // com.alibaba.android.arouter.facade.template.IProvider
    public void init(Context context) {
    }

    @Override // com.guochao.lib_service_center.liveroom.service.LiveBannedListProxy
    public void start(@NonNull FragmentActivity fragmentActivity, @NonNull String str, @Nullable ShareProxy.ActionFinish actionFinish) {
        LiveVoiceBannedListDialog liveVoiceBannedListDialog = new LiveVoiceBannedListDialog(fragmentActivity, R.style.commonDialog, str, str);
        liveVoiceBannedListDialog.setonMuteListener(new a());
        liveVoiceBannedListDialog.setCancelable(true);
        liveVoiceBannedListDialog.show();
    }
}
