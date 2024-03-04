package com.guochao.faceshow.aaspring.modulars.live.fragment;

import android.app.Activity;
import android.app.Dialog;
import android.os.Bundle;
import android.os.Parcelable;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.recyclerview.widget.GridLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import butterknife.BindView;
import com.guochao.faceshow.R;
import com.guochao.faceshow.aaspring.base.adapter.BaseViewHolder;
import com.guochao.faceshow.aaspring.base.fragment.BaseDialogFragment;
import com.guochao.faceshow.aaspring.modulars.live.common.BaseLiveRoomFragment;
import com.guochao.faceshow.aaspring.modulars.live.interfaces.LiveRoomModel;
import com.guochao.faceshow.aaspring.modulars.live.watcher.WatcherLiveRoomFragment;
import com.guochao.faceshow.aaspring.views.HeadPortraitView;
import com.guochao.faceshow.userhomepage.act.UserHomePageAct;
import com.guochao.faceshow.utils.Contants;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes3.dex */
public class SingleLiveBottomInteractionListDialogFragment extends BaseDialogFragment {

    /* renamed from: a  reason: collision with root package name */
    LiveRoomModel f19325a;
    @BindView
    HeadPortraitView avatarBg;

    /* renamed from: c  reason: collision with root package name */
    d9.g f19327c;

    /* renamed from: d  reason: collision with root package name */
    p7.h f19328d;

    /* renamed from: e  reason: collision with root package name */
    String f19329e;

    /* renamed from: f  reason: collision with root package name */
    String f19330f;
    @BindView
    RecyclerView mRecyclerView;

    /* renamed from: b  reason: collision with root package name */
    private final List<b> f19326b = new ArrayList();

    /* renamed from: g  reason: collision with root package name */
    View.OnClickListener f19331g = new a();

    /* loaded from: classes3.dex */
    public class MenuAdapter extends RecyclerView.Adapter<BaseViewHolder> {
        public MenuAdapter() {
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public int getItemCount() {
            return SingleLiveBottomInteractionListDialogFragment.this.f19326b.size();
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public void onBindViewHolder(@NonNull BaseViewHolder baseViewHolder, int i9) {
            ((ImageView) baseViewHolder.getView(R.id.icon)).setImageResource(((b) SingleLiveBottomInteractionListDialogFragment.this.f19326b.get(i9)).a());
            ((TextView) baseViewHolder.getView(R.id.text)).setText(((b) SingleLiveBottomInteractionListDialogFragment.this.f19326b.get(i9)).b());
            baseViewHolder.itemView.setTag(SingleLiveBottomInteractionListDialogFragment.this.f19326b.get(i9));
            baseViewHolder.itemView.setOnClickListener(SingleLiveBottomInteractionListDialogFragment.this.f19331g);
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        @NonNull
        public BaseViewHolder onCreateViewHolder(@NonNull ViewGroup viewGroup, int i9) {
            return new BaseViewHolder(SingleLiveBottomInteractionListDialogFragment.this.getLayoutInflater().inflate(R.layout.live_more_item, viewGroup, false));
        }
    }

    /* loaded from: classes3.dex */
    class a implements View.OnClickListener {
        a() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            int i9 = ((b) view.getTag()).f19335b;
            if (i9 == R.string.live_beauty) {
                SingleLiveBottomInteractionListDialogFragment.this.dismiss();
                d9.g gVar = SingleLiveBottomInteractionListDialogFragment.this.f19327c;
                if (gVar == null || !(gVar instanceof WatcherLiveRoomFragment)) {
                    return;
                }
                ((WatcherLiveRoomFragment) gVar).C();
            } else if (i9 == R.string.live_flip) {
                SingleLiveBottomInteractionListDialogFragment.this.f19327c.switchCamera();
            } else if (i9 != R.string.setting_exit) {
            } else {
                SingleLiveBottomInteractionListDialogFragment singleLiveBottomInteractionListDialogFragment = SingleLiveBottomInteractionListDialogFragment.this;
                singleLiveBottomInteractionListDialogFragment.f19327c.c0(singleLiveBottomInteractionListDialogFragment.f19330f, singleLiveBottomInteractionListDialogFragment.f19329e);
                SingleLiveBottomInteractionListDialogFragment.this.dismiss();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class b {

        /* renamed from: a  reason: collision with root package name */
        int f19334a;

        /* renamed from: b  reason: collision with root package name */
        int f19335b;

        /* renamed from: c  reason: collision with root package name */
        boolean f19336c;

        public b(int i9, int i10, boolean z10) {
            this.f19334a = i9;
            this.f19335b = i10;
            this.f19336c = z10;
        }

        public int a() {
            return this.f19334a;
        }

        public int b() {
            return this.f19335b;
        }
    }

    public static SingleLiveBottomInteractionListDialogFragment S1(String str, String str2, p7.h hVar) {
        SingleLiveBottomInteractionListDialogFragment singleLiveBottomInteractionListDialogFragment = new SingleLiveBottomInteractionListDialogFragment();
        Bundle bundle = new Bundle();
        bundle.putString(Contants.USER_ID, str);
        bundle.putParcelable("user", (Parcelable) hVar);
        bundle.putString("streamId", str2);
        singleLiveBottomInteractionListDialogFragment.setArguments(bundle);
        return singleLiveBottomInteractionListDialogFragment;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void T1(View view) {
        UserHomePageAct.start((Activity) getActivity(), this.f19329e, 1);
    }

    public b R1(int i9, int i10, boolean z10) {
        return new b(i9, i10, z10);
    }

    @Override // com.guochao.faceshow.aaspring.base.fragment.BaseFragment
    public int getLayoutId() {
        return R.layout.fragment_bottom_interaction;
    }

    @Override // com.guochao.faceshow.aaspring.base.fragment.BaseFragment
    public void initView(View view) {
        if (getParentFragment() instanceof BaseLiveRoomFragment) {
            this.f19327c = (d9.g) getParentFragment();
            LiveRoomModel liveRoomModel = ((BaseLiveRoomFragment) getParentFragment()).f18506l;
            this.f19325a = liveRoomModel;
            if (liveRoomModel.isBroadCaster()) {
                this.f19326b.add(R1(R.mipmap.icon_zb_hangup, R.string.setting_exit, true));
            } else {
                this.f19326b.add(R1(R.mipmap.icon_zb_hangup, R.string.setting_exit, true));
                this.f19326b.add(R1(R.mipmap.icon_zb_flip, R.string.live_flip, true));
                this.f19326b.add(R1(R.mipmap.icon_zb_beautify, R.string.live_beauty, true));
            }
            this.avatarBg.d(this.f19328d);
            this.mRecyclerView.setLayoutManager(new GridLayoutManager(getActivity(), 4));
            this.mRecyclerView.setAdapter(new MenuAdapter());
        }
        this.avatarBg.setOnClickListener(new View.OnClickListener() { // from class: com.guochao.faceshow.aaspring.modulars.live.fragment.o
            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                SingleLiveBottomInteractionListDialogFragment.this.T1(view2);
            }
        });
    }

    @Override // com.guochao.faceshow.aaspring.base.fragment.BaseFragment
    public void loadData() {
    }

    @Override // com.guochao.faceshow.aaspring.base.fragment.BaseDialogFragment, com.guochao.faceshow.aaspring.base.fragment.BaseFragment, com.guochao.faceshow.aaspring.base.mvvm.fragment.GCCoreFragment, androidx.fragment.app.DialogFragment, androidx.fragment.app.Fragment
    public void onCreate(@Nullable Bundle bundle) {
        super.onCreate(bundle);
        if (getArguments() != null) {
            this.f19328d = (p7.h) getArguments().getParcelable("user");
            this.f19329e = getArguments().getString(Contants.USER_ID);
            this.f19330f = getArguments().getString("streamId");
        }
    }

    @Override // androidx.fragment.app.DialogFragment
    @NonNull
    public Dialog onCreateDialog(@Nullable Bundle bundle) {
        return createBottomDialog();
    }
}
