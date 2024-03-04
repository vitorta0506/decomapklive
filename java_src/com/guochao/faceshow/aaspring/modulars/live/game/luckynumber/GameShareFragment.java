package com.guochao.faceshow.aaspring.modulars.live.game.luckynumber;

import android.app.Dialog;
import android.os.Bundle;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import butterknife.BindView;
import butterknife.OnClick;
import com.guochao.faceshow.R;
import com.guochao.faceshow.aaspring.base.adapter.BaseViewHolder;
import com.guochao.faceshow.aaspring.base.fragment.BaseDialogFragment;
import com.guochao.faceshow.aaspring.beans.LiveGameBean;
import com.guochao.faceshow.aaspring.beans.ShareContentBean;
import com.guochao.faceshow.aaspring.beans.SharePlatformBean;
import com.guochao.faceshow.aaspring.modulars.live.interfaces.LiveRoomModel;
import com.guochao.faceshow.aaspring.modulars.live.share.InviteDialog;
import com.tencent.ugc.UGCTransitionRules;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes3.dex */
public class GameShareFragment extends BaseDialogFragment {

    /* renamed from: a  reason: collision with root package name */
    LiveGameBean f19517a;

    /* renamed from: b  reason: collision with root package name */
    private ShareContentBean f19518b;

    /* renamed from: c  reason: collision with root package name */
    private LiveRoomModel f19519c;

    /* renamed from: d  reason: collision with root package name */
    private List<SharePlatformBean> f19520d = new ArrayList();

    /* renamed from: e  reason: collision with root package name */
    private u9.a f19521e = new a();

    /* renamed from: f  reason: collision with root package name */
    private RecyclerView.Adapter f19522f = new b();
    @BindView
    RecyclerView recyclerView;

    /* loaded from: classes3.dex */
    class a implements u9.a {
        a() {
        }
    }

    /* loaded from: classes3.dex */
    class b extends RecyclerView.Adapter {

        /* loaded from: classes3.dex */
        class a implements View.OnClickListener {
            a() {
            }

            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                int intValue = ((Integer) view.getTag()).intValue();
                GameShareFragment gameShareFragment = GameShareFragment.this;
                gameShareFragment.U1(intValue, (SharePlatformBean) gameShareFragment.f19520d.get(intValue));
            }
        }

        b() {
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public int getItemCount() {
            return GameShareFragment.this.f19520d.size();
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public void onBindViewHolder(@NonNull RecyclerView.ViewHolder viewHolder, int i9) {
            GameShareFragment gameShareFragment = GameShareFragment.this;
            gameShareFragment.S1((BaseViewHolder) viewHolder, i9, (SharePlatformBean) gameShareFragment.f19520d.get(i9));
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        @NonNull
        public RecyclerView.ViewHolder onCreateViewHolder(@NonNull ViewGroup viewGroup, int i9) {
            BaseViewHolder onCreateViewHolder = GameShareFragment.this.onCreateViewHolder(viewGroup, i9);
            onCreateViewHolder.itemView.setOnClickListener(new a());
            return onCreateViewHolder;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class c implements InviteDialog.g {
        c() {
        }

        @Override // com.guochao.faceshow.aaspring.modulars.live.share.InviteDialog.g
        public void a(int i9) {
            GameShareFragment.this.dismiss();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void S1(BaseViewHolder baseViewHolder, int i9, SharePlatformBean sharePlatformBean) {
        ((ImageView) baseViewHolder.getView(R.id.icon)).setImageResource(sharePlatformBean.getIcon());
        baseViewHolder.setText(R.id.tv, getString(sharePlatformBean.getDiplayNameId()));
        baseViewHolder.itemView.setTag(Integer.valueOf(i9));
    }

    public static GameShareFragment T1(ShareContentBean shareContentBean, LiveRoomModel liveRoomModel, LiveGameBean liveGameBean) {
        GameShareFragment gameShareFragment = new GameShareFragment();
        Bundle bundle = new Bundle();
        bundle.putParcelable("data", shareContentBean);
        bundle.putParcelable("liveRoomId", liveRoomModel);
        bundle.putParcelable("game", liveGameBean);
        gameShareFragment.setArguments(bundle);
        return gameShareFragment;
    }

    private void initRecycleView() {
        this.recyclerView.setLayoutManager(new LinearLayoutManager(getActivity(), 0, false));
        this.recyclerView.setAdapter(this.f19522f);
    }

    public void R1(SharePlatformBean sharePlatformBean) {
        this.f19520d.add(sharePlatformBean);
    }

    public void U1(int i9, SharePlatformBean sharePlatformBean) {
        if (sharePlatformBean == null) {
            return;
        }
        if (i9 == 0) {
            InviteDialog U1 = InviteDialog.U1(this.f19519c, 0, 1, this.f19517a);
            U1.setOnDismissListener(new c());
            U1.show(getChildFragmentManager(), InviteDialog.class.getSimpleName());
            return;
        }
        v9.c.g(getActivity(), sharePlatformBean.getSharePlatformName(), this.f19518b.getTitle(), this.f19518b.getContent(), this.f19518b.getImgUrl(), this.f19518b.getShortUrl(), this.f19518b.getShareType(), this.f19521e);
    }

    public void addDatas(List<SharePlatformBean> list) {
        this.f19520d.addAll(list);
    }

    @Override // com.guochao.faceshow.aaspring.base.fragment.BaseFragment
    public int getLayoutId() {
        return R.layout.fragment_dialog_game_share;
    }

    @Override // com.guochao.faceshow.aaspring.base.fragment.BaseFragment
    public void initView(View view) {
        getDialog().getWindow().getDecorView().setSystemUiVisibility(UGCTransitionRules.DEFAULT_IMAGE_HEIGHT);
        initRecycleView();
    }

    @Override // com.guochao.faceshow.aaspring.base.fragment.BaseFragment
    public void loadData() {
        R1(new SharePlatformBean(SharePlatformBean.Friend.NAME, R.mipmap.icon_share_friend, R.string.friends_text));
        addDatas(SharePlatformBean.getDefault());
        this.f19522f.notifyDataSetChanged();
    }

    @Override // com.guochao.faceshow.aaspring.base.fragment.BaseDialogFragment, com.guochao.faceshow.aaspring.base.fragment.BaseFragment, com.guochao.faceshow.aaspring.base.mvvm.fragment.GCCoreFragment, androidx.fragment.app.DialogFragment, androidx.fragment.app.Fragment
    public void onCreate(@Nullable Bundle bundle) {
        super.onCreate(bundle);
        if (getArguments() != null) {
            this.f19518b = (ShareContentBean) getArguments().getParcelable("data");
            this.f19519c = (LiveRoomModel) getArguments().getParcelable("liveRoomId");
            this.f19517a = (LiveGameBean) getArguments().getParcelable("game");
        }
    }

    @Override // androidx.fragment.app.DialogFragment
    @NonNull
    public Dialog onCreateDialog(@Nullable Bundle bundle) {
        return createBottomDialog();
    }

    public BaseViewHolder onCreateViewHolder(@NonNull ViewGroup viewGroup, int i9) {
        return new BaseViewHolder(getLayoutInflater().inflate(R.layout.list_item_share, viewGroup, false));
    }

    @Override // com.guochao.faceshow.aaspring.base.fragment.BaseFragment, androidx.fragment.app.Fragment
    public void onDestroy() {
        super.onDestroy();
        v9.c.c();
    }

    @OnClick
    public void onViewClicked() {
        dismissAllowingStateLoss();
    }
}
