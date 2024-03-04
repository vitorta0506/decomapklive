package com.guochao.faceshow.aaspring.modulars.live.fragment;

import android.os.Bundle;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import androidx.annotation.CallSuper;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.UiThread;
import androidx.core.content.ContextCompat;
import androidx.fragment.app.Fragment;
import butterknife.BindView;
import butterknife.OnClick;
import butterknife.Unbinder;
import com.guochao.faceshow.R;
import com.guochao.faceshow.aaspring.base.adapter.BaseViewHolder;
import com.guochao.faceshow.aaspring.base.fragment.BaseRecyclerViewFragment;
import com.guochao.faceshow.aaspring.base.http.response.FaceCastBaseResponse;
import com.guochao.faceshow.aaspring.beans.OnLineMember;
import com.guochao.faceshow.aaspring.utils.MemoryCache;
import com.guochao.faceshow.userhomepage.act.UserHomePageAct;
import com.guochao.faceshow.utils.Contants;
import com.guochao.faceshow.utils.ScreenTools;
import com.guochao.faceshow.views.NormalCircleImageView;
import java.util.List;
/* loaded from: classes3.dex */
public class LivePermissionsFragment extends BaseRecyclerViewFragment<OnLineMember, BaseViewHolder> {

    /* renamed from: a  reason: collision with root package name */
    private String f19269a;

    /* renamed from: b  reason: collision with root package name */
    private d9.c f19270b;

    /* loaded from: classes3.dex */
    public static class LivePermissionsHolder extends BaseViewHolder {

        /* renamed from: a  reason: collision with root package name */
        private OnLineMember f19271a;

        /* renamed from: b  reason: collision with root package name */
        private a f19272b;
        @BindView
        NormalCircleImageView civHeader;
        @BindView
        TextView tvNickName;
        @BindView
        TextView tvTips;

        /* loaded from: classes3.dex */
        public interface a {
            void a(OnLineMember onLineMember);
        }

        public LivePermissionsHolder(ViewGroup viewGroup) {
            super(LayoutInflater.from(viewGroup.getContext()).inflate(R.layout.item_live_admin_list, viewGroup, false));
        }

        public void c(OnLineMember onLineMember) {
            this.f19271a = onLineMember;
            if (onLineMember == null) {
                return;
            }
            this.tvNickName.setText(onLineMember.getNickName());
            this.tvTips.setText(TextUtils.isEmpty(onLineMember.getSignature()) ? this.itemView.getContext().getString(R.string.user_info_default_signature) : onLineMember.getSignature());
            hc.a.h(this.civHeader, onLineMember.getImg(), R.mipmap.default_head);
        }

        @OnClick
        public void onViewClicked(View view) {
            int id2 = view.getId();
            if (id2 != R.id.btnCancelAdmin) {
                if (id2 == R.id.civHeader && this.f19271a != null) {
                    UserHomePageAct.start(this.itemView.getContext(), this.f19271a.getUserId(), 1);
                    return;
                }
                return;
            }
            a aVar = this.f19272b;
            if (aVar != null) {
                aVar.a(this.f19271a);
            }
        }

        public void setOnCancelClickListener(a aVar) {
            this.f19272b = aVar;
        }
    }

    /* loaded from: classes3.dex */
    public class LivePermissionsHolder_ViewBinding implements Unbinder {

        /* renamed from: b  reason: collision with root package name */
        private LivePermissionsHolder f19273b;

        /* renamed from: c  reason: collision with root package name */
        private View f19274c;

        /* renamed from: d  reason: collision with root package name */
        private View f19275d;

        /* loaded from: classes3.dex */
        class a extends butterknife.internal.b {

            /* renamed from: a  reason: collision with root package name */
            final /* synthetic */ LivePermissionsHolder f19276a;

            a(LivePermissionsHolder livePermissionsHolder) {
                this.f19276a = livePermissionsHolder;
            }

            @Override // butterknife.internal.b
            public void doClick(View view) {
                this.f19276a.onViewClicked(view);
            }
        }

        /* loaded from: classes3.dex */
        class b extends butterknife.internal.b {

            /* renamed from: a  reason: collision with root package name */
            final /* synthetic */ LivePermissionsHolder f19278a;

            b(LivePermissionsHolder livePermissionsHolder) {
                this.f19278a = livePermissionsHolder;
            }

            @Override // butterknife.internal.b
            public void doClick(View view) {
                this.f19278a.onViewClicked(view);
            }
        }

        @UiThread
        public LivePermissionsHolder_ViewBinding(LivePermissionsHolder livePermissionsHolder, View view) {
            this.f19273b = livePermissionsHolder;
            View c10 = butterknife.internal.c.c(view, R.id.civHeader, "field 'civHeader' and method 'onViewClicked'");
            livePermissionsHolder.civHeader = (NormalCircleImageView) butterknife.internal.c.a(c10, R.id.civHeader, "field 'civHeader'", NormalCircleImageView.class);
            this.f19274c = c10;
            c10.setOnClickListener(new a(livePermissionsHolder));
            livePermissionsHolder.tvNickName = (TextView) butterknife.internal.c.d(view, R.id.tvNickName, "field 'tvNickName'", TextView.class);
            livePermissionsHolder.tvTips = (TextView) butterknife.internal.c.d(view, R.id.tvTips, "field 'tvTips'", TextView.class);
            View c11 = butterknife.internal.c.c(view, R.id.btnCancelAdmin, "method 'onViewClicked'");
            this.f19275d = c11;
            c11.setOnClickListener(new b(livePermissionsHolder));
        }

        @Override // butterknife.Unbinder
        @CallSuper
        public void unbind() {
            LivePermissionsHolder livePermissionsHolder = this.f19273b;
            if (livePermissionsHolder != null) {
                this.f19273b = null;
                livePermissionsHolder.civHeader = null;
                livePermissionsHolder.tvNickName = null;
                livePermissionsHolder.tvTips = null;
                this.f19274c.setOnClickListener(null);
                this.f19274c = null;
                this.f19275d.setOnClickListener(null);
                this.f19275d = null;
                return;
            }
            throw new IllegalStateException("Bindings already cleared.");
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class a extends com.guochao.faceshow.aaspring.base.http.callback.c<List<OnLineMember>> {
        a() {
        }

        @Override // com.guochao.faceshow.aaspring.base.http.callback.c
        public void onFailure(@NonNull g7.a<List<OnLineMember>> aVar) {
        }

        @Override // com.guochao.faceshow.aaspring.base.http.callback.c
        public void onResponse(@Nullable List<OnLineMember> list, @NonNull FaceCastBaseResponse<List<OnLineMember>> faceCastBaseResponse) {
            if (list == null) {
                onFailure(new g7.a<>(new Exception(""), -1));
                return;
            }
            LivePermissionsFragment.this.addDatas(list);
            LivePermissionsFragment.this.notifyDataLoaded(false);
            LivePermissionsFragment.this.showEmptyView();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class b implements LivePermissionsHolder.a {

        /* loaded from: classes3.dex */
        class a extends com.guochao.faceshow.aaspring.base.http.callback.c<String> {

            /* renamed from: a  reason: collision with root package name */
            final /* synthetic */ OnLineMember f19282a;

            a(OnLineMember onLineMember) {
                this.f19282a = onLineMember;
            }

            @Override // com.guochao.faceshow.aaspring.base.http.callback.c
            public void onFailure(@NonNull g7.a<String> aVar) {
            }

            @Override // com.guochao.faceshow.aaspring.base.http.callback.c
            public void onResponse(@Nullable String str, @NonNull FaceCastBaseResponse<String> faceCastBaseResponse) {
                if (faceCastBaseResponse.getCode() != 1) {
                    onFailure(new g7.a<>(new Exception(""), -1));
                } else if (LivePermissionsFragment.this.f19270b != null) {
                    LivePermissionsFragment.this.f19270b.w0(this.f19282a.getUserId(), this.f19282a.getNickName(), this.f19282a.getImg(), false);
                }
            }
        }

        b() {
        }

        @Override // com.guochao.faceshow.aaspring.modulars.live.fragment.LivePermissionsFragment.LivePermissionsHolder.a
        public void a(OnLineMember onLineMember) {
            LivePermissionsFragment.this.getList().remove(onLineMember);
            LivePermissionsFragment.this.notifyDataLoaded(false);
            LivePermissionsFragment.this.showEmptyView();
            LivePermissionsFragment.this.post("tokens/live/home/cancelLiveAdmin").D(Contants.USER_ID, onLineMember.getUserId()).D("liveId", LivePermissionsFragment.this.f19269a).M(new a(onLineMember));
        }
    }

    public static Fragment T1(String str, d9.c cVar) {
        LivePermissionsFragment livePermissionsFragment = new LivePermissionsFragment();
        Bundle bundle = new Bundle();
        bundle.putString("liveId", str);
        MemoryCache.getInstance().put("manager", cVar);
        livePermissionsFragment.setArguments(bundle);
        return livePermissionsFragment;
    }

    private void U1() {
        post("tokens/live/home/liveAdminList").D("liveId", this.f19269a).M(new a());
    }

    @Override // com.guochao.faceshow.aaspring.base.fragment.BaseRecyclerViewFragment, d7.a
    /* renamed from: S1 */
    public void convertItem(BaseViewHolder baseViewHolder, int i9, OnLineMember onLineMember) {
        if (getContext() != null && (baseViewHolder instanceof LivePermissionsHolder)) {
            ((LivePermissionsHolder) baseViewHolder).c(onLineMember);
        }
    }

    @Override // com.guochao.faceshow.aaspring.base.fragment.BaseRecyclerViewFragment
    /* renamed from: V1 */
    public void onItemClick(BaseViewHolder baseViewHolder, int i9, OnLineMember onLineMember) {
    }

    @Override // com.guochao.faceshow.aaspring.base.fragment.BaseRecyclerViewFragment, d7.c
    public boolean canLoadMore() {
        return false;
    }

    @Override // com.guochao.faceshow.aaspring.base.fragment.BaseRecyclerViewFragment, d7.c
    public boolean canRefresh() {
        return false;
    }

    @Override // com.guochao.faceshow.aaspring.base.fragment.BaseRecyclerViewFragment, com.guochao.faceshow.aaspring.base.fragment.BaseFragment
    public void initView(View view) {
        super.initView(view);
        if (getArguments() != null) {
            this.f19269a = getArguments().getString("liveId");
        }
        this.f19270b = (d9.c) MemoryCache.getInstance().remove("manager");
        if (getContext() == null) {
            return;
        }
        View emptyView = getEmptyView();
        emptyView.setBackgroundColor(ContextCompat.getColor(getContext(), R.color.white));
        emptyView.setPadding(0, 0, 0, ScreenTools.dip2px(150.0f));
        emptyView.findViewById(R.id.empty_text).setVisibility(8);
    }

    @Override // com.guochao.faceshow.aaspring.base.fragment.BaseRecyclerViewFragment, d7.c
    public void loadData(int i9) {
        U1();
    }

    @Override // com.guochao.faceshow.aaspring.base.adapter.BaseRecyclerAdapter.a
    @NonNull
    public BaseViewHolder onCreateViewHolder(@NonNull ViewGroup viewGroup, int i9) {
        LivePermissionsHolder livePermissionsHolder = new LivePermissionsHolder(viewGroup);
        livePermissionsHolder.setOnCancelClickListener(new b());
        return livePermissionsHolder;
    }
}
