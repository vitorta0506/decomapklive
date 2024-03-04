package com.guochao.faceshow.aaspring.modulars.live.fragment;

import android.app.Activity;
import android.app.Dialog;
import android.content.Context;
import android.os.Bundle;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentManager;
import androidx.recyclerview.widget.GridLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import butterknife.BindView;
import com.guochao.faceshow.R;
import com.guochao.faceshow.aaspring.base.adapter.BaseViewHolder;
import com.guochao.faceshow.aaspring.base.fragment.BaseDialogFragment;
import com.guochao.faceshow.aaspring.modulars.live.common.BaseLiveRoomFragment;
import com.guochao.faceshow.aaspring.modulars.live.interfaces.LiveRoomModel;
import com.guochao.faceshow.aaspring.modulars.live.watcher.WatcherLiveRoomFragment;
import com.guochao.faceshow.aaspring.utils.LogUtils;
import com.guochao.faceshow.aaspring.utils.ToastUtils;
import com.guochao.faceshow.aaspring.views.HeadPortraitView;
import com.guochao.faceshow.userhomepage.act.UserHomePageAct;
import com.guochao.faceshow.utils.BaseConfig;
import com.guochao.faceshow.utils.Contants;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes3.dex */
public class BottomInteractionDialogFragment extends BaseDialogFragment {

    /* renamed from: a  reason: collision with root package name */
    private LiveRoomModel f19199a;
    @BindView
    HeadPortraitView avatarBg;

    /* renamed from: b  reason: collision with root package name */
    d9.g f19200b;

    /* renamed from: c  reason: collision with root package name */
    private String f19201c;

    /* renamed from: d  reason: collision with root package name */
    private String f19202d;

    /* renamed from: e  reason: collision with root package name */
    private List<b> f19203e;

    /* renamed from: f  reason: collision with root package name */
    private Fragment f19204f;

    /* renamed from: g  reason: collision with root package name */
    private LiveRoomModel f19205g;

    /* renamed from: h  reason: collision with root package name */
    private MenuAdapter f19206h;

    /* renamed from: i  reason: collision with root package name */
    private boolean f19207i;

    /* renamed from: j  reason: collision with root package name */
    private boolean f19208j;

    /* renamed from: k  reason: collision with root package name */
    private int f19209k;
    @BindView
    RecyclerView mRecyclerView;

    /* renamed from: l  reason: collision with root package name */
    private boolean f19210l = true;

    /* renamed from: m  reason: collision with root package name */
    private boolean f19211m = true;

    /* renamed from: n  reason: collision with root package name */
    View.OnClickListener f19212n = new a();

    /* loaded from: classes3.dex */
    public class MenuAdapter extends RecyclerView.Adapter<BaseViewHolder> {
        public MenuAdapter() {
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public int getItemCount() {
            return BottomInteractionDialogFragment.this.f19203e.size();
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public void onBindViewHolder(@NonNull BaseViewHolder baseViewHolder, int i9) {
            ((ImageView) baseViewHolder.getView(R.id.icon)).setImageResource(((b) BottomInteractionDialogFragment.this.f19203e.get(i9)).a());
            ((TextView) baseViewHolder.getView(R.id.text)).setText(((b) BottomInteractionDialogFragment.this.f19203e.get(i9)).b());
            baseViewHolder.itemView.setTag(BottomInteractionDialogFragment.this.f19203e.get(i9));
            baseViewHolder.itemView.setOnClickListener(BottomInteractionDialogFragment.this.f19212n);
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        @NonNull
        public BaseViewHolder onCreateViewHolder(@NonNull ViewGroup viewGroup, int i9) {
            return new BaseViewHolder(BottomInteractionDialogFragment.this.getLayoutInflater().inflate(R.layout.live_more_item, viewGroup, false));
        }
    }

    /* loaded from: classes3.dex */
    class a implements View.OnClickListener {

        /* renamed from: com.guochao.faceshow.aaspring.modulars.live.fragment.BottomInteractionDialogFragment$a$a  reason: collision with other inner class name */
        /* loaded from: classes3.dex */
        class C0184a implements d9.h {

            /* renamed from: a  reason: collision with root package name */
            final /* synthetic */ b f19215a;

            C0184a(b bVar) {
                this.f19215a = bVar;
            }

            @Override // d9.h
            public void onCallback() {
                if (this.f19215a.c()) {
                    this.f19215a.d(R.mipmap.icon_zb_voice_gray);
                    this.f19215a.e(false);
                    ToastUtils.showToast(BottomInteractionDialogFragment.this.getContext(), (int) R.string.live_voice_closed);
                } else {
                    this.f19215a.d(R.mipmap.icon_zb_voice);
                    this.f19215a.e(true);
                    ToastUtils.showToast(BottomInteractionDialogFragment.this.getContext(), (int) R.string.live_voice_opened);
                }
                if (BottomInteractionDialogFragment.this.mRecyclerView.getAdapter() != null) {
                    BottomInteractionDialogFragment.this.mRecyclerView.getAdapter().notifyDataSetChanged();
                    BottomInteractionDialogFragment.this.f19205g.setVoiceStatus(!this.f19215a.c() ? "2" : "1");
                }
                BottomInteractionDialogFragment.this.f19210l = true;
            }

            @Override // d9.h
            public void onErrorCallback() {
                if (BottomInteractionDialogFragment.this.mRecyclerView.getAdapter() != null) {
                    BottomInteractionDialogFragment.this.mRecyclerView.getAdapter().notifyDataSetChanged();
                }
                BottomInteractionDialogFragment.this.f19210l = true;
            }
        }

        /* loaded from: classes3.dex */
        class b implements d9.h {

            /* renamed from: a  reason: collision with root package name */
            final /* synthetic */ b f19217a;

            b(b bVar) {
                this.f19217a = bVar;
            }

            @Override // d9.h
            public void onCallback() {
                if (this.f19217a.c()) {
                    this.f19217a.e(false);
                    ToastUtils.showToast(BottomInteractionDialogFragment.this.getContext(), (int) R.string.live_camera_closed);
                    this.f19217a.d(R.mipmap.icon_zb_video_gray);
                } else {
                    this.f19217a.e(true);
                    ToastUtils.showToast(BottomInteractionDialogFragment.this.getContext(), (int) R.string.live_camera_opened);
                    this.f19217a.d(R.mipmap.icon_zb_video);
                }
                if (BottomInteractionDialogFragment.this.mRecyclerView.getAdapter() != null) {
                    BottomInteractionDialogFragment.this.mRecyclerView.getAdapter().notifyDataSetChanged();
                    BottomInteractionDialogFragment.this.f19205g.setMatchType(!this.f19217a.c() ? "1" : "2");
                }
                BottomInteractionDialogFragment.this.f19211m = true;
            }

            @Override // d9.h
            public void onErrorCallback() {
                if (BottomInteractionDialogFragment.this.mRecyclerView.getAdapter() != null) {
                    BottomInteractionDialogFragment.this.mRecyclerView.getAdapter().notifyDataSetChanged();
                }
                BottomInteractionDialogFragment.this.f19211m = true;
            }
        }

        a() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            ApplyConversationListDialogFragment applyConversationListDialogFragment;
            b bVar = (b) view.getTag();
            switch (bVar.f19220b) {
                case R.string.gift /* 2131887043 */:
                    BottomInteractionDialogFragment.this.dismiss();
                    ((BaseLiveRoomFragment) BottomInteractionDialogFragment.this.f19204f).Y2(BottomInteractionDialogFragment.this.f19209k);
                    return;
                case R.string.live_beauty /* 2131887233 */:
                    BottomInteractionDialogFragment.this.dismiss();
                    if (BottomInteractionDialogFragment.this.f19204f == null || !(BottomInteractionDialogFragment.this.f19204f instanceof WatcherLiveRoomFragment)) {
                        return;
                    }
                    ((WatcherLiveRoomFragment) BottomInteractionDialogFragment.this.f19204f).C();
                    return;
                case R.string.live_flip /* 2131887250 */:
                    if (BottomInteractionDialogFragment.this.f19204f == null || !(BottomInteractionDialogFragment.this.f19204f instanceof WatcherLiveRoomFragment)) {
                        return;
                    }
                    ((WatcherLiveRoomFragment) BottomInteractionDialogFragment.this.f19204f).switchCamera();
                    return;
                case R.string.live_sound /* 2131887347 */:
                    if (BottomInteractionDialogFragment.this.f19210l) {
                        BottomInteractionDialogFragment.this.f19210l = false;
                        if (BottomInteractionDialogFragment.this.f19205g.isAnchorForceVoiceStatus() && !BottomInteractionDialogFragment.this.f19200b.getCurrentLiveRoom().isBroadCaster()) {
                            ToastUtils.showToast(BottomInteractionDialogFragment.this.getActivity(), (int) R.string.live_voice_closed_by_master);
                            BottomInteractionDialogFragment.this.f19210l = true;
                            return;
                        }
                        BottomInteractionDialogFragment.this.f19200b.L(bVar.c(), BottomInteractionDialogFragment.this.f19201c, BottomInteractionDialogFragment.this.f19202d, new C0184a(bVar));
                        return;
                    }
                    return;
                case R.string.setting_exit /* 2131888131 */:
                    if (BottomInteractionDialogFragment.this.f19204f != null && (BottomInteractionDialogFragment.this.f19204f instanceof BaseLiveRoomFragment)) {
                        BaseLiveRoomFragment baseLiveRoomFragment = (BaseLiveRoomFragment) BottomInteractionDialogFragment.this.f19204f;
                        baseLiveRoomFragment.c0(BottomInteractionDialogFragment.this.f19205g.getLinkMicStreamId(), BottomInteractionDialogFragment.this.f19205g.getCurrentUserId());
                        if (BottomInteractionDialogFragment.this.f19205g.getCurrentUserId().equals(BottomInteractionDialogFragment.this.getCurrentUser().getUserId()) && (applyConversationListDialogFragment = baseLiveRoomFragment.C) != null) {
                            applyConversationListDialogFragment.k2(true);
                        }
                    }
                    BottomInteractionDialogFragment.this.dismiss();
                    return;
                case R.string.video /* 2131888581 */:
                    if (BottomInteractionDialogFragment.this.f19211m) {
                        BottomInteractionDialogFragment.this.f19211m = false;
                        LogUtils.e("AnchorForceMatchTyp+Onclick", "isAnchorForceMatchType==" + BottomInteractionDialogFragment.this.f19205g.isAnchorForceMatchType());
                        LogUtils.e("isBroadCaster+Onclick", "isBroadCaster==" + (BottomInteractionDialogFragment.this.f19200b.getCurrentLiveRoom().isBroadCaster() ^ true));
                        if (BottomInteractionDialogFragment.this.c2().isAnchorForceMatchType() && !BottomInteractionDialogFragment.this.f19200b.getCurrentLiveRoom().isBroadCaster()) {
                            ToastUtils.showToast(BottomInteractionDialogFragment.this.getActivity(), (int) R.string.live_video_closed_by_master);
                            BottomInteractionDialogFragment.this.f19211m = true;
                            return;
                        }
                        BottomInteractionDialogFragment.this.f19200b.p1(!bVar.c(), BottomInteractionDialogFragment.this.f19201c, BottomInteractionDialogFragment.this.f19202d, new b(bVar));
                        return;
                    }
                    return;
                default:
                    return;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class b {

        /* renamed from: a  reason: collision with root package name */
        int f19219a;

        /* renamed from: b  reason: collision with root package name */
        int f19220b;

        /* renamed from: c  reason: collision with root package name */
        boolean f19221c;

        public b(int i9, int i10, boolean z10) {
            this.f19219a = i9;
            this.f19220b = i10;
            this.f19221c = z10;
        }

        public int a() {
            return this.f19219a;
        }

        public int b() {
            return this.f19220b;
        }

        public boolean c() {
            return this.f19221c;
        }

        public void d(int i9) {
            this.f19219a = i9;
        }

        public void e(boolean z10) {
            this.f19221c = z10;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void d2(View view) {
        UserHomePageAct.start((Activity) getActivity(), this.f19201c, 1);
    }

    private void i2() {
        boolean z10 = this.f19207i;
        if (z10) {
            this.f19203e.add(a2(R.mipmap.icon_zb_voice, R.string.live_sound, z10));
        } else {
            this.f19203e.add(a2(R.mipmap.icon_zb_voice_gray, R.string.live_sound, z10));
        }
        boolean z11 = this.f19208j;
        if (z11) {
            this.f19203e.add(a2(R.mipmap.icon_zb_video, R.string.video, z11));
        } else {
            this.f19203e.add(a2(R.mipmap.icon_zb_video_close, R.string.video, z11));
        }
    }

    public static BottomInteractionDialogFragment j2(FragmentManager fragmentManager, LiveRoomModel liveRoomModel, LiveRoomModel liveRoomModel2, int i9) {
        BottomInteractionDialogFragment bottomInteractionDialogFragment = new BottomInteractionDialogFragment();
        Bundle bundle = new Bundle();
        bundle.putString(Contants.USER_ID, liveRoomModel2.getCurrentUserId());
        bundle.putParcelable(BaseConfig.LIVEROOMMODEL, liveRoomModel);
        bundle.putString("userName", liveRoomModel2.getUserNickName());
        bundle.putInt("position", i9);
        bundle.putParcelable("liveInfoMatchBean", liveRoomModel2);
        bottomInteractionDialogFragment.setArguments(bundle);
        bottomInteractionDialogFragment.show(fragmentManager, BottomInteractionDialogFragment.class.getSimpleName());
        return bottomInteractionDialogFragment;
    }

    public b a2(int i9, int i10, boolean z10) {
        return new b(i9, i10, z10);
    }

    public void b2() {
        if (isVisible()) {
            dismissAllowingStateLoss();
        }
    }

    public LiveRoomModel c2() {
        return this.f19205g;
    }

    public void e2(String str) {
        this.f19205g.setMatchType(str);
        this.f19208j = "2".equals(str);
        List<b> list = this.f19203e;
        if (list != null && list.size() > 0) {
            for (b bVar : this.f19203e) {
                if (bVar.b() == R.string.video) {
                    bVar.e(this.f19208j);
                    if (this.f19208j) {
                        bVar.d(R.mipmap.icon_zb_video);
                    } else {
                        bVar.d(R.mipmap.icon_zb_video_close);
                    }
                }
            }
        }
        this.f19206h.notifyDataSetChanged();
    }

    public void f2(String str) {
        this.f19205g.setVoiceStatus(str);
        this.f19207i = "1".equals(str);
        List<b> list = this.f19203e;
        if (list != null && list.size() > 0) {
            for (b bVar : this.f19203e) {
                if (bVar.b() == R.string.live_sound) {
                    bVar.e(this.f19207i);
                    if (this.f19207i) {
                        bVar.d(R.mipmap.icon_zb_voice);
                    } else {
                        bVar.d(R.mipmap.icon_zb_voice_gray);
                    }
                }
            }
        }
        this.f19206h.notifyDataSetChanged();
    }

    public void g2(boolean z10) {
        LogUtils.e("AnchorForceMatchTyp+setAnchorForceMatchType", "setAnchorForceMatchType==" + z10);
        this.f19205g.setAnchorForceMatchType(z10);
    }

    @Override // com.guochao.faceshow.aaspring.base.fragment.BaseFragment
    public int getLayoutId() {
        return R.layout.fragment_bottom_interaction;
    }

    public String getUserId() {
        return this.f19201c;
    }

    public void h2(boolean z10) {
        this.f19205g.setAnchorForceVoiceStatus(z10);
    }

    @Override // com.guochao.faceshow.aaspring.base.fragment.BaseFragment
    public void initView(View view) {
        this.avatarBg.d(this.f19205g);
        this.mRecyclerView.setLayoutManager(new GridLayoutManager(getActivity(), 4));
        MenuAdapter menuAdapter = new MenuAdapter();
        this.f19206h = menuAdapter;
        this.mRecyclerView.setAdapter(menuAdapter);
        this.avatarBg.setOnClickListener(new View.OnClickListener() { // from class: com.guochao.faceshow.aaspring.modulars.live.fragment.d
            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                BottomInteractionDialogFragment.this.d2(view2);
            }
        });
    }

    @Override // com.guochao.faceshow.aaspring.base.fragment.BaseFragment
    public void loadData() {
        this.f19203e = new ArrayList();
        LiveRoomModel liveRoomModel = this.f19205g;
        if (liveRoomModel != null) {
            this.f19207i = "1".equals(liveRoomModel.getVoiceStatus());
            this.f19208j = "2".equals(this.f19205g.getMatchType());
        }
        if (this.f19199a.isMultiLiveRoom()) {
            if (this.f19199a.isBroadCaster()) {
                if (this.f19201c.equals(getCurrentUser().getUserId())) {
                    return;
                }
                this.f19203e.add(a2(R.mipmap.icon_zb_hangup, R.string.setting_exit, true));
                i2();
                this.f19203e.add(a2(R.mipmap.icon_zb_lw, R.string.gift, true));
                return;
            }
            Fragment fragment = this.f19204f;
            if ((fragment instanceof BaseLiveRoomFragment) && fragment.getView() != null && ((BaseLiveRoomFragment) this.f19204f).K2()) {
                this.f19203e.add(a2(R.mipmap.icon_zb_hangup, R.string.setting_exit, true));
                i2();
                this.f19203e.add(a2(R.mipmap.icon_zb_beautify, R.string.live_beauty, true));
            }
        } else if (this.f19199a.isBroadCaster()) {
            this.f19203e.add(a2(R.mipmap.icon_zb_hangup, R.string.setting_exit, true));
        } else {
            this.f19203e.add(a2(R.mipmap.icon_zb_hangup, R.string.setting_exit, true));
            this.f19203e.add(a2(R.mipmap.icon_zb_flip, R.string.live_flip, true));
            this.f19203e.add(a2(R.mipmap.icon_zb_beautify, R.string.live_beauty, true));
        }
    }

    @Override // androidx.fragment.app.DialogFragment, androidx.fragment.app.Fragment
    public void onAttach(Context context) {
        super.onAttach(context);
        this.f19204f = getParentFragment();
        this.f19200b = (d9.g) getParentFragment();
        if (getArguments() != null) {
            this.f19201c = getArguments().getString(Contants.USER_ID);
            this.f19202d = getArguments().getString("userName");
            this.f19205g = null;
            this.f19205g = (LiveRoomModel) getArguments().getParcelable("liveInfoMatchBean");
            this.f19199a = (LiveRoomModel) getArguments().getParcelable(BaseConfig.LIVEROOMMODEL);
            this.f19209k = getArguments().getInt("position");
        }
    }

    @Override // androidx.fragment.app.DialogFragment
    @NonNull
    public Dialog onCreateDialog(@Nullable Bundle bundle) {
        return createBottomDialog();
    }
}
