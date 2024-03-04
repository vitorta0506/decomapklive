package d9;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.guochao.component.liveroom.model.GCLiveRoomModel;
import com.guochao.component.liveroomcommon.interfaces.GCLiveRoomModelProvider;
import com.guochao.faceshow.aaspring.beans.LiveGameBean;
import com.guochao.faceshow.aaspring.beans.LiveGameExtras;
import com.guochao.faceshow.aaspring.beans.LivePeopleInfoBean;
import com.guochao.faceshow.aaspring.beans.ResourceCategoryItem;
import com.guochao.faceshow.aaspring.beans.ResourceListItemBean;
import com.guochao.faceshow.aaspring.manager.i;
import com.guochao.faceshow.aaspring.manager.im.a;
import com.guochao.faceshow.aaspring.manager.im.d;
import com.guochao.faceshow.aaspring.modulars.live.common.LivePeopleInfoCardFragment;
import com.guochao.faceshow.aaspring.modulars.live.model.LiveMessageModel;
import com.guochao.faceshow.aaspring.modulars.live.model.LiveMicApplyResult;
import com.guochao.faceshow.aaspring.modulars.live.model.PkUser;
import com.guochao.player.GCLivePlayer;
/* loaded from: classes3.dex */
public interface g extends e, i.InterfaceC0154i, a.g, d.a, GCLiveRoomModelProvider {
    void C0(String str);

    void C1(k kVar);

    GCLivePlayer D0();

    void F(boolean z10, h hVar);

    void J0(LivePeopleInfoBean livePeopleInfoBean);

    void K(boolean z10, String str, String str2, String str3);

    z8.b K1();

    void L(boolean z10, @Nullable String str, @Nullable String str2, h hVar);

    void M(int i9, int i10);

    void M0(String str);

    void M1();

    void U0(LivePeopleInfoCardFragment livePeopleInfoCardFragment, String str);

    void V0(int i9);

    void X(String str);

    void a();

    void addFBNumber(LiveMessageModel liveMessageModel);

    void c(int i9, String str, String str2, String str3, String str4, boolean z10, boolean z11);

    void c0(String str, String str2);

    void c1(@NonNull LiveGameBean liveGameBean, @NonNull k kVar, @NonNull LiveGameExtras liveGameExtras, boolean z10);

    void d(int i9, boolean z10);

    @NonNull
    GCLiveRoomModel getCurrentGCLiveRoomModel();

    void h(String str, String str2, String str3);

    void h0(PkUser pkUser, long j10, boolean z10);

    void p(String str);

    void p1(boolean z10, @Nullable String str, String str2, h hVar);

    void r(LiveMicApplyResult liveMicApplyResult);

    void s();

    void switchCamera();

    void t(String str, String str2);

    void u1(long j10, int i9);

    boolean x0();

    void y1(long j10);

    void z0(int i9, ResourceCategoryItem resourceCategoryItem, ResourceListItemBean resourceListItemBean, String str, String str2);

    boolean z1();
}
