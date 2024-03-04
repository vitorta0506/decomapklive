package com.guochao.faceshow.aaspring.modulars.trtc.call.fragment;

import android.os.Bundle;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import androidx.fragment.app.FragmentTransaction;
import butterknife.BindView;
import com.guochao.faceshow.R;
import com.guochao.faceshow.aaspring.base.fragment.BaseFragment;
import com.guochao.faceshow.aaspring.manager.im.b;
import com.guochao.faceshow.aaspring.manager.im.d;
import com.guochao.faceshow.aaspring.modulars.chat.models.GiftMessage;
import com.guochao.faceshow.aaspring.modulars.chat.models.TrtcTextMessage;
import com.guochao.faceshow.aaspring.modulars.date.fragment.TrtcChatFragment;
import com.guochao.faceshow.aaspring.modulars.trtc.model.CallModel;
import com.guochao.faceshow.aaspring.modulars.trtc.receive.d;
import com.guochao.faceshow.aaspring.utils.KeyboardHeightObserver;
import com.guochao.faceshow.aaspring.utils.StatusBarHelper;
import com.guochao.faceshow.aaspring.utils.e;
import j8.a;
import java.util.List;
import java.util.Objects;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* loaded from: classes3.dex */
public abstract class BaseCallFragment extends BaseFragment implements KeyboardHeightObserver, TrtcChatFragment.TrtcUserProvider, d.a, d.a {

    /* renamed from: a  reason: collision with root package name */
    a f21999a;
    @BindView
    @Nullable
    FrameLayout animView;

    /* renamed from: b  reason: collision with root package name */
    TrtcChatFragment f22000b;
    @BindView
    View mViewChatArea;
    @BindView
    View mViewWidget;

    @Override // com.guochao.faceshow.aaspring.modulars.trtc.receive.d.a
    public void A1(int i9) {
    }

    @Override // com.guochao.faceshow.aaspring.modulars.trtc.receive.d.a
    public void E1(String str) {
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
    }

    public void P1() {
        FragmentTransaction beginTransaction = getChildFragmentManager().beginTransaction();
        TrtcChatFragment instance = TrtcChatFragment.Companion.instance(getCurrentTrtcUser().getCurrentUserId(), this instanceof VideoCallFragment);
        this.f22000b = instance;
        beginTransaction.replace(R.id.chat_area, instance).commitAllowingStateLoss();
    }

    @Override // com.guochao.faceshow.aaspring.modulars.trtc.receive.d.a
    public void R(String str, int i9) {
    }

    @Override // com.guochao.faceshow.aaspring.modulars.trtc.receive.d.a
    public void R0(String str, boolean z10) {
    }

    @Override // com.guochao.faceshow.aaspring.modulars.trtc.receive.d.a
    public void f1(long j10) {
    }

    @Override // com.guochao.faceshow.aaspring.base.fragment.BaseFragment
    public void initView(View view) {
        if (getActivity() != null) {
            getActivity().getWindow().addFlags(8192);
        }
        b.l0().x(this);
        ((ViewGroup.MarginLayoutParams) view.findViewById(R.id.status_wight).getLayoutParams()).topMargin += StatusBarHelper.getStatusbarHeight(getActivity());
        if (this.f21999a == null) {
            this.f21999a = new a(getActivity(), this.animView, 13);
        }
    }

    @Override // com.guochao.faceshow.aaspring.modulars.trtc.receive.d.a
    public void j1(CallModel callModel) {
    }

    @Override // com.guochao.faceshow.aaspring.modulars.trtc.receive.d.a
    public void n1(String str, String str2, CallModel callModel) {
    }

    @Override // com.guochao.faceshow.aaspring.base.fragment.BaseFragment, androidx.fragment.app.DialogFragment, androidx.fragment.app.Fragment
    public void onDestroyView() {
        super.onDestroyView();
        a aVar = this.f21999a;
        if (aVar != null) {
            aVar.g();
        }
        b.l0().G(this);
    }

    @Override // com.guochao.faceshow.aaspring.utils.KeyboardHeightObserver
    public void onKeyboardHeightChanged(int i9, int i10) {
        TrtcChatFragment trtcChatFragment = this.f22000b;
        if (trtcChatFragment == null || !trtcChatFragment.isAdded()) {
            return;
        }
        this.f22000b.onKeyboardHeightChanged(i9, i10);
    }

    @Override // com.guochao.faceshow.aaspring.utils.KeyboardHeightObserver
    public /* synthetic */ void onKeyboardHeightChanged(int i9, int i10, int i11) {
        e.a(this, i9, i10, i11);
    }

    @Override // com.guochao.faceshow.aaspring.manager.im.d.a
    public void onNewMessage(com.guochao.faceshow.aaspring.modulars.chat.models.a aVar) {
        if (Objects.equals(getCurrentTrtcUser().getCurrentUserId(), aVar.getMessage().getUserID())) {
            if (this.f22000b != null && (aVar instanceof TrtcTextMessage)) {
                TrtcTextMessage trtcTextMessage = (TrtcTextMessage) aVar;
                trtcTextMessage.setOtherLanguage(getCurrentTrtcUser().getPreferentialLang());
                this.f22000b.addMessage(trtcTextMessage);
            } else if (aVar instanceof GiftMessage) {
                GiftMessage giftMessage = (GiftMessage) aVar;
                if (giftMessage.isTrtcGift()) {
                    playGift(giftMessage);
                }
            }
        }
    }

    @Override // com.guochao.faceshow.aaspring.manager.im.d.a
    public /* synthetic */ void onRecvMessageRevoked(String str) {
        a8.b.a(this, str);
    }

    @Override // com.guochao.faceshow.aaspring.modulars.date.fragment.TrtcChatFragment.TrtcUserProvider
    public void playGift(@NotNull GiftMessage giftMessage) {
        a aVar = this.f21999a;
        if (aVar == null) {
            return;
        }
        aVar.f(Integer.valueOf(giftMessage.getGiftInfo().gift_id));
    }

    @Override // com.guochao.faceshow.aaspring.modulars.trtc.receive.d.a
    public void s1(CallModel callModel) {
    }

    @Override // com.guochao.faceshow.aaspring.modulars.trtc.receive.d.a
    public void v(String str, String str2, CallModel callModel) {
    }

    @Override // com.guochao.faceshow.aaspring.modulars.trtc.receive.d.a
    public void v1(int i9, String str, Bundle bundle) {
    }

    public void w1(String str, boolean z10) {
    }
}
