package com.guochao.faceshow.aaspring.modulars.live.game;

import android.os.Bundle;
import android.view.View;
import android.view.ViewStub;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.annotation.IdRes;
import androidx.annotation.Nullable;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentActivity;
import com.guochao.faceshow.R;
import com.guochao.faceshow.aaspring.modulars.live.common.BaseLiveRoomFragment;
import com.guochao.faceshow.aaspring.modulars.live.common.LivePeopleInfoCardFragment;
import com.guochao.faceshow.aaspring.modulars.live.game.luckynumber.LuckyNumberFragment;
import com.guochao.faceshow.aaspring.utils.DisableDoubleClickUtils;
import com.guochao.faceshow.aaspring.utils.MemoryCache;
import com.guochao.faceshow.utils.Contants;
import com.guochao.faceshow.utils.HandlerGetter;
/* loaded from: classes3.dex */
public class DishWheelWinDialog extends BaseGameWinDialogFragment {

    /* renamed from: d  reason: collision with root package name */
    private boolean f19407d;

    /* renamed from: e  reason: collision with root package name */
    private p7.h f19408e;

    /* renamed from: f  reason: collision with root package name */
    private d9.g f19409f;

    /* renamed from: g  reason: collision with root package name */
    Runnable f19410g = new a();

    /* renamed from: h  reason: collision with root package name */
    private b f19411h;

    /* loaded from: classes3.dex */
    class a implements Runnable {
        a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            if (DishWheelWinDialog.this.getActivity() == null || DishWheelWinDialog.this.getActivity().isFinishing() || DishWheelWinDialog.this.getActivity().isDestroyed()) {
                return;
            }
            DishWheelWinDialog.this.getActivity().getSupportFragmentManager().beginTransaction().hide(DishWheelWinDialog.this).commitAllowingStateLoss();
            DishWheelWinDialog dishWheelWinDialog = DishWheelWinDialog.this;
            dishWheelWinDialog.f19362b = false;
            if (dishWheelWinDialog.f19411h != null) {
                DishWheelWinDialog.this.f19411h.onDismiss();
            }
        }
    }

    /* loaded from: classes3.dex */
    public interface b {
        void a();

        void onDismiss();
    }

    private boolean U1() {
        ViewStub viewStub;
        d9.g gVar = this.f19409f;
        if (gVar instanceof BaseLiveRoomFragment) {
            BaseLiveRoomFragment baseLiveRoomFragment = (BaseLiveRoomFragment) gVar;
            if (baseLiveRoomFragment.smallMiniGameLay.getVisibility() == 0) {
                return true;
            }
            for (Fragment fragment : baseLiveRoomFragment.getChildFragmentManager().getFragments()) {
                if ((fragment instanceof LuckyNumberFragment) && !fragment.isDetached()) {
                    return true;
                }
            }
            f fVar = baseLiveRoomFragment.P4;
            return (fVar == null || (viewStub = fVar.f19479a) == null || viewStub.getVisibility() != 0) ? false : true;
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void V1(View view) {
        LivePeopleInfoCardFragment.showPeopleInfo(((FragmentActivity) view.getContext()).getSupportFragmentManager(), this.f19408e.getCurrentUserId(), this.f19408e.getUserName(), this.f19409f);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void W1(View view) {
        if (getActivity() != null) {
            HandlerGetter.getMainHandler().removeCallbacks(this.f19410g);
            getActivity().getSupportFragmentManager().beginTransaction().hide(this).commitAllowingStateLoss();
            this.f19362b = false;
            b bVar = this.f19411h;
            if (bVar != null) {
                bVar.onDismiss();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void X1(View view) {
        if (DisableDoubleClickUtils.canClick(view) && !U1()) {
            if (getActivity() != null) {
                getActivity().getSupportFragmentManager().beginTransaction().hide(this).commitAllowingStateLoss();
                this.f19362b = false;
                b bVar = this.f19411h;
                if (bVar != null) {
                    bVar.onDismiss();
                }
            }
            b bVar2 = this.f19411h;
            if (bVar2 != null) {
                bVar2.a();
            }
        }
    }

    public static DishWheelWinDialog Y1(FragmentActivity fragmentActivity, @IdRes int i9, int i10, int i11, p7.h hVar, boolean z10, d9.g gVar, int i12) {
        DishWheelWinDialog dishWheelWinDialog = new DishWheelWinDialog();
        Bundle bundle = new Bundle();
        bundle.putInt("diamondCount", i10);
        bundle.putInt("rewardCount", i11);
        bundle.putBoolean("isBroadCaster", z10);
        bundle.putInt(Contants.CURRENT_COUNTRY_FLAG, i12);
        MemoryCache memoryCache = MemoryCache.getInstance();
        memoryCache.put(DishWheelWinDialog.class.getSimpleName() + "userAvatar", hVar);
        MemoryCache memoryCache2 = MemoryCache.getInstance();
        memoryCache2.put(DishWheelWinDialog.class.getSimpleName() + "mILiveRoomManager", gVar);
        dishWheelWinDialog.setArguments(bundle);
        fragmentActivity.getSupportFragmentManager().beginTransaction().replace(i9, dishWheelWinDialog).commitAllowingStateLoss();
        fragmentActivity.getSupportFragmentManager().beginTransaction().show(dishWheelWinDialog).commitAllowingStateLoss();
        return dishWheelWinDialog;
    }

    @Override // com.guochao.faceshow.aaspring.base.fragment.BaseFragment
    public int getLayoutId() {
        return R.layout.dialog_dish_wheel_win;
    }

    @Override // com.guochao.faceshow.aaspring.base.fragment.BaseFragment
    public void initView(View view) {
        int i9;
        int i10 = 0;
        setShowsDialog(false);
        this.f19362b = true;
        ImageView imageView = (ImageView) view.findViewById(R.id.win_img);
        MemoryCache memoryCache = MemoryCache.getInstance();
        this.f19408e = (p7.h) memoryCache.remove(DishWheelWinDialog.class.getSimpleName() + "userAvatar");
        MemoryCache memoryCache2 = MemoryCache.getInstance();
        this.f19409f = (d9.g) memoryCache2.remove(DishWheelWinDialog.class.getSimpleName() + "mILiveRoomManager");
        if (this.f19408e == null) {
            if (getActivity() != null) {
                getActivity().getSupportFragmentManager().beginTransaction().hide(this).commitAllowingStateLoss();
                this.f19362b = false;
                b bVar = this.f19411h;
                if (bVar != null) {
                    bVar.onDismiss();
                    return;
                }
                return;
            }
            return;
        }
        Bundle arguments = getArguments();
        if (arguments != null) {
            int i11 = arguments.getInt("diamondCount");
            TextView textView = (TextView) view.findViewById(R.id.win_name);
            textView.setText(this.f19408e.getUserName());
            textView.setSelected(true);
            ((TextView) view.findViewById(R.id.diamond_count)).setText(String.format("%s", Integer.valueOf(i11)));
            i9 = arguments.getInt("rewardCount");
            ((TextView) view.findViewById(R.id.reword_count)).setText(String.format("%s", Integer.valueOf(i9)));
            this.f19407d = arguments.getBoolean("isBroadCaster", false);
            TextView textView2 = (TextView) view.findViewById(R.id.win_reward);
            textView2.setText(R.string.minigame_win_reward);
            textView2.append(" : ");
            int i12 = arguments.getInt(Contants.CURRENT_COUNTRY_FLAG);
            ImageView imageView2 = (ImageView) view.findViewById(R.id.primary_icon);
            ImageView imageView3 = (ImageView) view.findViewById(R.id.secondary_icon);
            int i13 = R.mipmap.icon_minigame_diamond;
            imageView2.setImageResource(i12 == 0 ? R.mipmap.icon_minigame_diamond : R.mipmap.icon_minigame_shuijing);
            if (i12 != 0) {
                i13 = R.mipmap.icon_minigame_shuijing;
            }
            imageView3.setImageResource(i13);
        } else {
            i9 = 0;
        }
        p7.h hVar = this.f19408e;
        if (hVar != null) {
            hc.a.d(imageView, hVar.getAvatarUrl());
            imageView.setOnClickListener(new View.OnClickListener() { // from class: com.guochao.faceshow.aaspring.modulars.live.game.i
                @Override // android.view.View.OnClickListener
                public final void onClick(View view2) {
                    DishWheelWinDialog.this.V1(view2);
                }
            });
        }
        view.setOnClickListener(new View.OnClickListener() { // from class: com.guochao.faceshow.aaspring.modulars.live.game.h
            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                DishWheelWinDialog.this.W1(view2);
            }
        });
        View findViewById = view.findViewById(R.id.continue_game);
        findViewById.setVisibility(this.f19407d ? 0 : 8);
        view.findViewById(R.id.reward_win_lay).setVisibility((!this.f19407d || i9 <= 0) ? 8 : 8);
        findViewById.setOnClickListener(new View.OnClickListener() { // from class: com.guochao.faceshow.aaspring.modulars.live.game.j
            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                DishWheelWinDialog.this.X1(view2);
            }
        });
        if (this.f19407d) {
            return;
        }
        HandlerGetter.getMainHandler().postDelayed(this.f19410g, 5000L);
    }

    @Override // com.guochao.faceshow.aaspring.base.fragment.BaseFragment
    public void loadData() {
    }

    @Override // com.guochao.faceshow.aaspring.base.fragment.BaseDialogFragment, com.guochao.faceshow.aaspring.base.fragment.BaseFragment, com.guochao.faceshow.aaspring.base.mvvm.fragment.GCCoreFragment, androidx.fragment.app.DialogFragment, androidx.fragment.app.Fragment
    public void onCreate(@Nullable Bundle bundle) {
        super.onCreate(bundle);
        setShowsDialog(false);
    }

    @Override // com.guochao.faceshow.aaspring.base.fragment.BaseFragment, androidx.fragment.app.DialogFragment, androidx.fragment.app.Fragment
    public void onDestroyView() {
        super.onDestroyView();
        this.f19362b = false;
    }

    public void setOnContinueGameListener(b bVar) {
        this.f19411h = bVar;
    }
}
