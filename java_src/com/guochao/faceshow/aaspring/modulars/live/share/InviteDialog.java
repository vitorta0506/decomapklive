package com.guochao.faceshow.aaspring.modulars.live.share;

import android.app.Dialog;
import android.content.DialogInterface;
import android.os.Bundle;
import android.text.TextUtils;
import android.view.View;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentManager;
import androidx.fragment.app.FragmentPagerAdapter;
import androidx.viewpager.widget.ViewPager;
import butterknife.BindView;
import butterknife.OnClick;
import com.duolingo.open.rtlviewpager.RtlViewPager;
import com.google.gson.reflect.TypeToken;
import com.guochao.component.voiceliveroom.repository.VoiceRoomMemberRepository;
import com.guochao.faceshow.BaseApplication;
import com.guochao.faceshow.R;
import com.guochao.faceshow.aaspring.base.fragment.BaseDialogFragment;
import com.guochao.faceshow.aaspring.base.http.request.PostRequest;
import com.guochao.faceshow.aaspring.base.http.response.FaceCastBaseResponse;
import com.guochao.faceshow.aaspring.base.http.v2.GCRequestJava;
import com.guochao.faceshow.aaspring.base.http.v2.Response;
import com.guochao.faceshow.aaspring.beans.LiveGameBean;
import com.guochao.faceshow.aaspring.modulars.chat.models.LiveGameInviteMessage;
import com.guochao.faceshow.aaspring.modulars.chat.models.LiveShareMessage;
import com.guochao.faceshow.aaspring.modulars.live.interfaces.LiveRoomModel;
import com.guochao.faceshow.aaspring.modulars.live.share.InviteListFragment;
import com.guochao.faceshow.aaspring.utils.RsaUtils;
import com.guochao.faceshow.aaspring.utils.SendMessageHandle;
import com.guochao.faceshow.aaspring.utils.ToastUtils;
import com.guochao.faceshow.aaspring.utils.UserStateHolder;
import com.guochao.faceshow.aaspring.views.TabLayout;
import java.net.URLEncoder;
import java.nio.charset.StandardCharsets;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes3.dex */
public class InviteDialog extends BaseDialogFragment {

    /* renamed from: a  reason: collision with root package name */
    private LiveGameBean f19843a;

    /* renamed from: b  reason: collision with root package name */
    private List<InviteListFragment> f19844b;
    @BindView
    TextView btnConfirm;

    /* renamed from: c  reason: collision with root package name */
    private String[] f19845c;
    @BindView
    ImageView closeIV;
    @BindView
    View confirmLay;
    @BindView
    View confirmTip;

    /* renamed from: d  reason: collision with root package name */
    private LiveRoomModel f19846d;

    /* renamed from: f  reason: collision with root package name */
    private int f19848f;

    /* renamed from: h  reason: collision with root package name */
    private boolean f19850h;

    /* renamed from: i  reason: collision with root package name */
    private g f19851i;
    @BindView
    LinearLayout tabLay;
    @BindView
    TabLayout tabs;
    @BindView
    RtlViewPager vpContent;

    /* renamed from: e  reason: collision with root package name */
    private int f19847e = 100;

    /* renamed from: g  reason: collision with root package name */
    private String f19849g = "";

    /* loaded from: classes3.dex */
    class a implements InviteListFragment.l {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ int f19852a;

        a(int i9) {
            this.f19852a = i9;
        }

        @Override // com.guochao.faceshow.aaspring.modulars.live.share.InviteListFragment.l
        public void a() {
            int size;
            InviteListFragment inviteListFragment = (InviteListFragment) InviteDialog.this.f19844b.get(InviteDialog.this.vpContent.getCurrentItem());
            if (inviteListFragment.f19866a > 0) {
                size = inviteListFragment.b2();
            } else {
                size = inviteListFragment.f2().size();
            }
            if (!InviteDialog.this.S1().isEmpty() && size != 0) {
                InviteDialog.this.confirmLay.setEnabled(true);
                InviteDialog.this.btnConfirm.setText(InviteDialog.this.getString(this.f19852a) + "(" + size + ")");
                return;
            }
            InviteDialog.this.confirmLay.setEnabled(false);
            InviteDialog inviteDialog = InviteDialog.this;
            inviteDialog.btnConfirm.setText(inviteDialog.getString(this.f19852a));
        }
    }

    /* loaded from: classes3.dex */
    class b extends FragmentPagerAdapter {
        b(FragmentManager fragmentManager) {
            super(fragmentManager);
        }

        @Override // androidx.viewpager.widget.PagerAdapter
        public int getCount() {
            return InviteDialog.this.f19844b.size();
        }

        @Override // androidx.fragment.app.FragmentPagerAdapter
        @NonNull
        public Fragment getItem(int i9) {
            return (Fragment) InviteDialog.this.f19844b.get(i9);
        }

        @Override // androidx.viewpager.widget.PagerAdapter
        public CharSequence getPageTitle(int i9) {
            return InviteDialog.this.f19845c[i9];
        }
    }

    /* loaded from: classes3.dex */
    class c implements ViewPager.OnPageChangeListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ int f19855a;

        c(int i9) {
            this.f19855a = i9;
        }

        @Override // androidx.viewpager.widget.ViewPager.OnPageChangeListener
        public void onPageScrollStateChanged(int i9) {
        }

        @Override // androidx.viewpager.widget.ViewPager.OnPageChangeListener
        public void onPageScrolled(int i9, float f10, int i10) {
        }

        @Override // androidx.viewpager.widget.ViewPager.OnPageChangeListener
        public void onPageSelected(int i9) {
            int size;
            InviteListFragment inviteListFragment = (InviteListFragment) InviteDialog.this.f19844b.get(i9);
            if (inviteListFragment.f19866a > 0) {
                size = inviteListFragment.b2();
            } else {
                size = inviteListFragment.f2().size();
            }
            if (!InviteDialog.this.S1().isEmpty() && size != 0) {
                InviteDialog.this.confirmLay.setEnabled(true);
                InviteDialog.this.btnConfirm.setText(InviteDialog.this.getString(this.f19855a) + "(" + size + ")");
                return;
            }
            InviteDialog.this.confirmLay.setEnabled(false);
            InviteDialog inviteDialog = InviteDialog.this;
            inviteDialog.btnConfirm.setText(inviteDialog.getString(this.f19855a));
        }
    }

    /* loaded from: classes3.dex */
    class d implements GCRequestJava.d<Object> {
        d() {
        }

        @Override // com.guochao.faceshow.aaspring.base.http.v2.GCRequestJava.d
        public void a(@NonNull Response<Object> response) {
            InviteDialog.this.showToast(R.string.live_invited);
        }
    }

    /* loaded from: classes3.dex */
    class e extends com.guochao.faceshow.aaspring.base.http.callback.c<Object> {
        e() {
        }

        @Override // com.guochao.faceshow.aaspring.base.http.callback.c
        public void onFailure(@NonNull g7.a<Object> aVar) {
        }

        @Override // com.guochao.faceshow.aaspring.base.http.callback.c
        public void onResponse(@Nullable Object obj, @NonNull FaceCastBaseResponse<Object> faceCastBaseResponse) {
            ToastUtils.showToast(BaseApplication.getInstance(), BaseApplication.getInstance().getString(R.string.live_invited));
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class f extends TypeToken<List<LastInviteBean>> {
        f() {
        }
    }

    /* loaded from: classes3.dex */
    public interface g {
        void a(int i9);
    }

    private static String R1(String str) {
        try {
            return URLEncoder.encode(RsaUtils.encodeByPublicKey(str, RsaUtils.getRsaPublicKey(RsaUtils.publicKey)), StandardCharsets.UTF_8.displayName());
        } catch (Exception e10) {
            e10.printStackTrace();
            return str;
        }
    }

    public static InviteDialog T1(LiveRoomModel liveRoomModel, int i9, int i10) {
        return U1(liveRoomModel, i9, i10, null);
    }

    public static InviteDialog U1(LiveRoomModel liveRoomModel, int i9, int i10, LiveGameBean liveGameBean) {
        InviteDialog inviteDialog = new InviteDialog();
        Bundle bundle = new Bundle();
        bundle.putInt("position", i9);
        bundle.putInt("mode", i10);
        bundle.putParcelable("liveId", liveRoomModel);
        bundle.putParcelable("game", liveGameBean);
        inviteDialog.setArguments(bundle);
        return inviteDialog;
    }

    public static InviteDialog V1(String str, int i9, int i10) {
        InviteDialog inviteDialog = new InviteDialog();
        Bundle bundle = new Bundle();
        bundle.putInt("position", i9);
        bundle.putInt("mode", i10);
        bundle.putString("roomId", str);
        inviteDialog.setArguments(bundle);
        return inviteDialog;
    }

    public static List<LastInviteBean> W1() {
        List<LastInviteBean> list = (List) com.guochao.faceshow.aaspring.manager.b.a("invite", "lastInvite", new f().getType());
        return list == null ? new ArrayList() : list;
    }

    public static void Y1(List<InviteBean> list) {
        if (list == null || list.isEmpty()) {
            return;
        }
        List<LastInviteBean> W1 = W1();
        for (InviteBean inviteBean : list) {
            boolean z10 = false;
            int i9 = 0;
            while (true) {
                if (i9 >= W1.size()) {
                    break;
                } else if (inviteBean.getCurrentUserId().equals(W1.get(i9).getCurrentUserId())) {
                    LastInviteBean a10 = LastInviteBean.a(W1.get(i9));
                    W1.remove(i9);
                    W1.add(a10);
                    z10 = true;
                    break;
                } else {
                    i9++;
                }
            }
            if (!z10) {
                W1.add(LastInviteBean.a(inviteBean));
            }
        }
        if (W1.size() > 100) {
            W1 = W1.subList(W1.size() - 100, W1.size());
        }
        com.guochao.faceshow.aaspring.manager.b.f("invite", "lastInvite", W1);
    }

    public List<InviteBean> S1() {
        List<InviteBean> f22;
        InviteListFragment inviteListFragment = this.f19844b.get(this.vpContent.getCurrentItem());
        return (inviteListFragment == null || (f22 = inviteListFragment.f2()) == null) ? new ArrayList() : f22;
    }

    public boolean X1() {
        return this.f19850h;
    }

    @Override // com.guochao.faceshow.aaspring.base.fragment.BaseDialogFragment, com.guochao.faceshow.aaspring.base.mvvm.fragment.GCCoreFragment, androidx.fragment.app.DialogFragment
    public void dismiss() {
        List<InviteBean> list;
        super.dismiss();
        this.f19850h = true;
        for (InviteListFragment inviteListFragment : this.f19844b) {
            if (inviteListFragment != null && (list = inviteListFragment.getList()) != null) {
                for (InviteBean inviteBean : list) {
                    if (inviteBean != null) {
                        inviteBean.setSelect(false);
                    }
                }
            }
        }
    }

    @Override // com.guochao.faceshow.aaspring.base.fragment.BaseFragment
    public int getLayoutId() {
        return R.layout.dialog_invite;
    }

    @Override // com.guochao.faceshow.aaspring.base.fragment.BaseFragment
    public void initView(View view) {
        int i9;
        this.f19850h = false;
        this.confirmLay.setEnabled(false);
        Bundle arguments = getArguments();
        this.f19848f = 0;
        if (arguments != null) {
            this.f19846d = (LiveRoomModel) arguments.getParcelable("liveId");
            i9 = arguments.getInt("position");
            this.f19848f = arguments.getInt("mode");
            this.f19843a = (LiveGameBean) arguments.getParcelable("game");
            this.f19849g = arguments.getString("roomId");
        } else {
            i9 = 0;
        }
        int i10 = this.f19848f == 2 ? R.string.share : R.string.live_invite;
        this.f19844b = new ArrayList();
        a aVar = new a(i10);
        InviteListFragment d22 = InviteListFragment.d2(1);
        d22.setOnSelectListener(aVar);
        InviteListFragment d23 = InviteListFragment.d2(4);
        d23.setOnSelectListener(aVar);
        int i11 = this.f19848f;
        if (i11 != 0 && i11 != 4) {
            InviteListFragment e22 = InviteListFragment.e2(2, i11);
            InviteListFragment e23 = InviteListFragment.e2(3, this.f19848f);
            e22.setOnSelectListener(aVar);
            e23.setOnSelectListener(aVar);
            this.f19845c = new String[]{getString(R.string.live_invite_contacts), getString(R.string.friends_text)};
            this.f19844b.add(e22);
            this.f19844b.add(e23);
        } else {
            InviteListFragment d24 = InviteListFragment.d2(2);
            InviteListFragment d25 = InviteListFragment.d2(3);
            d24.setOnSelectListener(aVar);
            d25.setOnSelectListener(aVar);
            this.f19845c = new String[]{getString(R.string.live_invite_last), getString(R.string.live_invite_contacts), getString(R.string.friends_text), getString(R.string.fans)};
            this.f19844b.add(d22);
            this.f19844b.add(d24);
            this.f19844b.add(d25);
            this.f19844b.add(d23);
        }
        this.vpContent.setAdapter(new b(getChildFragmentManager()));
        this.vpContent.setOffscreenPageLimit(3);
        this.vpContent.setCurrentItem(i9);
        this.tabs.setupWithViewPager(this.vpContent);
        this.btnConfirm.setText(getString(i10));
        this.vpContent.setOnPageChangeListener(new c(i10));
    }

    @Override // com.guochao.faceshow.aaspring.base.fragment.BaseFragment
    public void loadData() {
    }

    @Override // androidx.fragment.app.DialogFragment
    @NonNull
    public Dialog onCreateDialog(@Nullable Bundle bundle) {
        Dialog createBottomDialog = createBottomDialog(R.style.BottomDialog_FullScreen);
        createBottomDialog.getWindow().setDimAmount(0.6f);
        createBottomDialog.setCanceledOnTouchOutside(true);
        return createBottomDialog;
    }

    @Override // com.guochao.faceshow.aaspring.base.fragment.BaseDialogFragment, androidx.fragment.app.DialogFragment, android.content.DialogInterface.OnDismissListener
    public void onDismiss(@NonNull DialogInterface dialogInterface) {
        super.onDismiss(dialogInterface);
        g gVar = this.f19851i;
        if (gVar != null) {
            gVar.a(this.vpContent.getCurrentItem());
        }
    }

    @OnClick
    public void onViewClicked(View view) {
        String format;
        int id2 = view.getId();
        if (id2 == R.id.closeIV) {
            dismiss();
        } else if (id2 == R.id.layout_confirm) {
            if (this.f19848f == 0 && !UserStateHolder.isLiving()) {
                dismiss();
                return;
            }
            ArrayList arrayList = new ArrayList();
            StringBuilder sb2 = new StringBuilder();
            ArrayList arrayList2 = new ArrayList();
            for (InviteBean inviteBean : S1()) {
                if (!arrayList.contains(inviteBean.getCurrentUserId()) && !TextUtils.isEmpty(inviteBean.getCurrentUserId())) {
                    arrayList.add(inviteBean.getCurrentUserId());
                    sb2.append(inviteBean.getCurrentUserId());
                    sb2.append(",");
                    arrayList2.add(inviteBean);
                }
            }
            int i9 = this.f19848f;
            int i10 = 0;
            if (i9 == 1) {
                while (i10 < arrayList.size()) {
                    SendMessageHandle.sendC2CMessage((String) arrayList.get(i10), LiveGameInviteMessage.from(this.f19843a, this.f19846d.getLiveRoomId()).getMessage(), null);
                    i10++;
                }
                showToast(R.string.live_invited);
                dismissAllowingStateLoss();
            } else if (i9 == 2) {
                while (i10 < arrayList.size()) {
                    SendMessageHandle.sendC2CMessage((String) arrayList.get(i10), LiveShareMessage.from(this.f19846d).getMessage(), null);
                    i10++;
                }
                showToast(R.string.share_success);
                dismissAllowingStateLoss();
            } else if (i9 != 3 && i9 != 4) {
                if (sb2.length() > 0) {
                    sb2.delete(sb2.length() - 1, sb2.length());
                }
                InviteListFragment inviteListFragment = this.f19844b.get(this.vpContent.getCurrentItem());
                int i11 = inviteListFragment != null ? inviteListFragment.f19866a : 0;
                if (i11 == 0) {
                    format = String.format("{\"invitedUserIdList\":\"%s\",\"liveId\":\"%s\",\"selectAllType\":\"%s\"}", sb2.toString(), this.f19846d.getLiveRoomId(), Integer.valueOf(i11));
                    Y1(arrayList2);
                } else {
                    Object[] objArr = new Object[3];
                    objArr[0] = (i11 == 2 || i11 == 1) ? sb2.toString() : "";
                    objArr[1] = this.f19846d.getLiveRoomId();
                    if (i11 == 1) {
                        i11 = 5;
                    }
                    objArr[2] = Integer.valueOf(i11);
                    format = String.format("{\"invitedUserIdList\":\"%s\",\"liveId\":\"%s\",\"selectAllType\":\"%s\"}", objArr);
                }
                new PostRequest("tokens/live/invite/batchSave/V2?sesign=" + R1(format)).M(new e());
                dismiss();
            } else {
                if (arrayList.contains(this.f19849g)) {
                    arrayList.remove(this.f19849g);
                }
                Y1(arrayList2);
                new GCRequestJava(VoiceRoomMemberRepository.URL_VOICE_ROOM_INVITE_ADD).putBody("roomId", this.f19849g).putBody("userIds", arrayList).j(new d()).request();
                dismissAllowingStateLoss();
            }
        }
    }

    public void setOnDismissListener(g gVar) {
        this.f19851i = gVar;
    }
}
