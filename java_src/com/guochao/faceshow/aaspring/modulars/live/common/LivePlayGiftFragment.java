package com.guochao.faceshow.aaspring.modulars.live.common;

import android.text.TextUtils;
import android.util.DisplayMetrics;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import androidx.fragment.app.Fragment;
import com.guochao.faceshow.R;
import com.guochao.faceshow.aaspring.beans.ResourceListItemBean;
import com.guochao.faceshow.aaspring.modulars.gift.fragment.GiftFragment;
import com.guochao.faceshow.aaspring.modulars.gift.view.HandyAnimView;
import com.guochao.faceshow.aaspring.modulars.live.model.BaseLiveMessage;
import com.guochao.faceshow.aaspring.modulars.live.model.GiftLiveMessage;
import com.guochao.faceshow.aaspring.modulars.live.model.LiveMessageModel;
import com.guochao.faceshow.aaspring.modulars.push.ThirdPushHelper;
import com.guochao.faceshow.utils.DensityUtil;
import com.guochao.faceshow.utils.Foreground;
import com.guochao.faceshow.utils.ReportController;
import com.guochao.faceshow.utils.ScreenTools;
import com.opensource.svgaplayer.SVGAImageView;
import java.util.List;
import sa.a;
/* loaded from: classes3.dex */
public class LivePlayGiftFragment extends BaseLiveInfoFragment {

    /* renamed from: a  reason: collision with root package name */
    private sa.b f18812a;

    /* renamed from: b  reason: collision with root package name */
    private sa.b f18813b;

    /* renamed from: c  reason: collision with root package name */
    private sa.a f18814c;

    /* loaded from: classes3.dex */
    class a implements a.j {
        a() {
        }

        @Override // sa.a.j
        public void a(int i9) {
            Fragment parentFragment;
            if (i9 <= 0 || LivePlayGiftFragment.this.getActivity() == null || LivePlayGiftFragment.this.getActivity().isFinishing() || LivePlayGiftFragment.this.getActivity().isDestroyed() || (parentFragment = LivePlayGiftFragment.this.getParentFragment()) == null || parentFragment.getActivity() == null || parentFragment.getActivity().isFinishing() || parentFragment.getActivity().isDestroyed() || !(parentFragment instanceof BaseLiveRoomFragment)) {
                return;
            }
            ((BaseLiveRoomFragment) parentFragment).B3();
        }

        @Override // sa.a.j
        public void b(ResourceListItemBean resourceListItemBean, String str) {
            Fragment parentFragment;
            if (LivePlayGiftFragment.this.getActivity() == null || LivePlayGiftFragment.this.getActivity().isFinishing() || LivePlayGiftFragment.this.getActivity().isDestroyed() || (parentFragment = LivePlayGiftFragment.this.getParentFragment()) == null || parentFragment.getActivity() == null || parentFragment.getActivity().isFinishing() || parentFragment.getActivity().isDestroyed() || !(parentFragment instanceof BaseLiveRoomFragment)) {
                return;
            }
            ((BaseLiveRoomFragment) parentFragment).m3(resourceListItemBean, str, LivePlayGiftFragment.this.f18814c);
        }
    }

    private void S1(View view) {
        if (view == null || getActivity() == null) {
            return;
        }
        LinearLayout linearLayout = (LinearLayout) view.findViewById(R.id.live_gift_middle_left_tips_ly);
        DisplayMetrics displayMetrics = new DisplayMetrics();
        getActivity().getWindowManager().getDefaultDisplay().getMetrics(displayMetrics);
        RelativeLayout.LayoutParams layoutParams = (RelativeLayout.LayoutParams) linearLayout.getLayoutParams();
        if (!getCurrentLiveRoom().isMultiLiveRoom() && !getCurrentLiveRoom().isVoiceRoom()) {
            layoutParams.bottomMargin = (int) ((displayMetrics.widthPixels * 0.5d) + DensityUtil.dp2px(120.0f));
        } else {
            layoutParams.bottomMargin = (int) ((displayMetrics.widthPixels * 0.5d) + DensityUtil.dp2px(175.0f));
        }
        linearLayout.requestLayout();
    }

    public void Q1(GiftLiveMessage giftLiveMessage) {
        String giftTypeId = giftLiveMessage.getGiftTypeId();
        String giftId = giftLiveMessage.getGiftId();
        ResourceListItemBean itemBean = giftLiveMessage.getItemBean();
        String str = giftLiveMessage.toUserId;
        if (!"2".equals(giftTypeId) && !ReportController.REPORT_TYPE_ONE_V_ONE.equals(giftTypeId) && !"100".equals(giftTypeId) && !ThirdPushHelper.TYPE_XIAOMI_INTERNATIONAL.equals(giftTypeId)) {
            if (GiftLiveMessage.isFaceGift(itemBean)) {
                this.f18814c.v(giftId, giftTypeId, "0", -1, itemBean, str, giftLiveMessage);
                return;
            }
            return;
        }
        this.f18814c.v(giftId, giftTypeId, "0", -1, itemBean, str, giftLiveMessage);
    }

    public void R1(GiftLiveMessage giftLiveMessage) {
        String giftTypeId = giftLiveMessage.getGiftTypeId();
        String giftId = giftLiveMessage.getGiftId();
        String str = giftLiveMessage.giftImg;
        String fromUserAvatar = giftLiveMessage.getFromUserAvatar();
        String fromUserNickName = giftLiveMessage.getFromUserNickName();
        int parseInt = Integer.parseInt(giftLiveMessage.getGiftNum());
        if (!"1".equals(giftTypeId) && !ReportController.REPORT_TYPE_ONE_V_ONE.equals(giftTypeId) && !"99".equals(giftTypeId)) {
            if ("2".equals(giftTypeId) || "100".equals(giftTypeId) || ThirdPushHelper.TYPE_XIAOMI_INTERNATIONAL.equals(giftTypeId)) {
                this.f18812a.w(giftLiveMessage, giftId, str, fromUserAvatar, fromUserNickName, giftTypeId, parseInt);
                return;
            }
            return;
        }
        this.f18813b.w(giftLiveMessage, giftId, str, fromUserAvatar, fromUserNickName, giftTypeId, parseInt);
    }

    public void T1() {
        sa.a aVar = this.f18814c;
        if (aVar != null) {
            aVar.r();
        }
    }

    public void U1() {
        sa.a aVar = this.f18814c;
        if (aVar != null) {
            aVar.s();
        }
        sa.b bVar = this.f18812a;
        if (bVar != null) {
            bVar.s();
        }
        sa.b bVar2 = this.f18813b;
        if (bVar2 != null) {
            bVar2.s();
        }
    }

    public void V1(GiftLiveMessage giftLiveMessage) {
        if (Foreground.get().isForeground()) {
            if (giftLiveMessage.getIsGiftAllSend() == 1) {
                R1(giftLiveMessage);
                List<GiftFragment.r> giftSendList = giftLiveMessage.getGiftSendList();
                GiftLiveMessage from = GiftLiveMessage.from(giftLiveMessage, giftLiveMessage.getItemBean());
                from.setGiftSendList(null);
                from.setIsGiftAllSend(0);
                for (int i9 = 0; i9 < giftSendList.size(); i9++) {
                    from.setToUserId(giftSendList.get(i9).f17819a);
                    from.setToUserNickName(giftSendList.get(i9).f17820b);
                    Q1(from);
                }
                return;
            }
            R1(giftLiveMessage);
            Q1(giftLiveMessage);
        }
    }

    @Override // com.guochao.faceshow.aaspring.modulars.live.common.BaseLiveInfoFragment, com.guochao.faceshow.aaspring.base.fragment.BaseFragment
    public int getLayoutId() {
        return R.layout.fragment_live_play_gift;
    }

    @Override // com.guochao.faceshow.aaspring.modulars.live.common.BaseLiveInfoFragment, com.guochao.faceshow.aaspring.base.fragment.BaseFragment
    public void initView(View view) {
        super.initView(view);
        sa.a aVar = new sa.a(getActivity(), (SVGAImageView) view.findViewById(R.id.live_big_anim_view), (SVGAImageView) view.findViewById(R.id.live_small_anim_view), (ViewGroup) view.findViewById(R.id.live_big_anim_view_vap), (ViewGroup) view.findViewById(R.id.live_small_anim_view_vap));
        this.f18814c = aVar;
        aVar.t((HandyAnimView) view.findViewById(R.id.handy_gift));
        this.f18814c.u(new a());
        LinearLayout linearLayout = (LinearLayout) view.findViewById(R.id.live_gift_top_tips_ly);
        LinearLayout linearLayout2 = (LinearLayout) view.findViewById(R.id.live_gift_middle_left_tips_ly);
        S1(view);
        if (linearLayout.getLayoutTransition() != null) {
            linearLayout.getLayoutTransition().setAnimateParentHierarchy(false);
        }
        if (linearLayout2.getLayoutTransition() != null) {
            linearLayout2.getLayoutTransition().setAnimateParentHierarchy(false);
        }
        if ((ScreenTools.getScreenWidth() * 1.0f) / ScreenTools.getScreenHeight() >= 0.5625f) {
            ((ViewGroup.MarginLayoutParams) linearLayout2.getLayoutParams()).topMargin = DensityUtil.dp2px(-42.0f);
            linearLayout2.requestLayout();
        }
        sa.b bVar = new sa.b(getContext(), linearLayout);
        this.f18812a = bVar;
        bVar.v(true);
        this.f18813b = new sa.b(getContext(), linearLayout2);
    }

    @Override // com.guochao.faceshow.aaspring.modulars.live.common.BaseLiveInfoFragment, d9.e
    public void onLiveFinish(int i9, String str) {
        super.onLiveFinish(i9, str);
        sa.a aVar = this.f18814c;
        if (aVar != null) {
            aVar.s();
        }
    }

    @Override // com.guochao.faceshow.aaspring.modulars.live.common.BaseLiveInfoFragment, d9.e
    public void onPlayMusicAnim(String str, String str2, int i9) {
        sa.a aVar = this.f18814c;
        if (aVar != null) {
            aVar.v(str, str2, "0", i9, null, null, null);
        }
    }

    @Override // com.guochao.faceshow.aaspring.modulars.live.common.BaseLiveInfoFragment, d9.e
    public void onPlaySuccess() {
        super.onPlaySuccess();
        S1(getView());
    }

    @Override // com.guochao.faceshow.aaspring.modulars.live.common.BaseLiveInfoFragment, d9.e
    public void onQuitLiveRoom(boolean z10, boolean z11) {
        super.onQuitLiveRoom(z10, z11);
        sa.a aVar = this.f18814c;
        if (aVar != null) {
            aVar.s();
        }
        sa.b bVar = this.f18812a;
        if (bVar != null) {
            bVar.s();
        }
        sa.b bVar2 = this.f18813b;
        if (bVar2 != null) {
            bVar2.s();
        }
    }

    @Override // com.guochao.faceshow.aaspring.modulars.live.common.BaseLiveInfoFragment, d9.e
    public void onReceiveFaceGift(GiftLiveMessage giftLiveMessage) {
        super.onReceiveFaceGift(giftLiveMessage);
        if (TextUtils.isEmpty(giftLiveMessage.getGiftId())) {
            return;
        }
        V1(giftLiveMessage);
    }

    @Override // com.guochao.faceshow.aaspring.modulars.live.common.BaseLiveInfoFragment, d9.e
    public void onReceiveHugeGift(LiveMessageModel liveMessageModel) {
        super.onReceiveHugeGift(liveMessageModel);
        BaseLiveMessage data = liveMessageModel.getData();
        if (TextUtils.isEmpty(data.getGiftId())) {
            return;
        }
        V1((GiftLiveMessage) data);
    }

    public void reset() {
        sa.a aVar = this.f18814c;
        if (aVar != null) {
            aVar.q();
        }
    }
}
