package com.guochao.faceshow.aaspring.modulars.dressmarket.send;

import android.os.Bundle;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.guochao.faceshow.R;
import com.guochao.faceshow.aaspring.base.adapter.BaseViewHolder;
import com.guochao.faceshow.aaspring.base.fragment.BaseRecyclerViewFragment;
import com.guochao.faceshow.aaspring.base.http.response.FaceCastBaseResponse;
import com.guochao.faceshow.aaspring.beans.SearchUserBean;
import com.guochao.faceshow.aaspring.beans.SearchUserNameOrIdBean;
import com.guochao.faceshow.aaspring.modulars.dressmarket.bean.SendUserResponse;
import com.guochao.faceshow.aaspring.modulars.dressmarket.send.DressUpSendFragment;
import com.guochao.faceshow.aaspring.modulars.user.view.UserCenterSexLevel;
import com.guochao.faceshow.aaspring.views.HeadPortraitView;
import com.guochao.faceshow.userhomepage.act.UserHomePageAct;
import com.guochao.faceshow.utils.DensityUtil;
import com.guochao.faceshow.views.p;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes3.dex */
public class DressUpSendContentFragment extends BaseRecyclerViewFragment<SendUserResponse.SendUser, BaseViewHolder> {

    /* renamed from: a  reason: collision with root package name */
    private View f17710a;

    /* renamed from: b  reason: collision with root package name */
    private int f17711b;

    /* renamed from: c  reason: collision with root package name */
    private p f17712c;

    /* renamed from: d  reason: collision with root package name */
    private final List<SendUserResponse.SendUser> f17713d = new ArrayList();

    /* renamed from: e  reason: collision with root package name */
    private DressUpSendFragment.c f17714e;

    /* loaded from: classes3.dex */
    class a implements p.c {
        a() {
        }

        @Override // com.guochao.faceshow.views.p.c
        public void a(String str) {
            if (TextUtils.isEmpty(str)) {
                DressUpSendContentFragment.this.setCurrentPage(1);
                DressUpSendContentFragment.this.loadData(1);
                return;
            }
            DressUpSendContentFragment.this.X1(str, 1);
        }

        @Override // com.guochao.faceshow.views.p.c
        public void b() {
            DressUpSendContentFragment.this.notifyDataLoaded(true);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class b extends com.guochao.faceshow.aaspring.base.http.callback.c<List<SearchUserNameOrIdBean>> {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ int f17716a;

        b(int i9) {
            this.f17716a = i9;
        }

        @Override // com.guochao.faceshow.aaspring.base.http.callback.c
        public void onFailure(@NonNull g7.a<List<SearchUserNameOrIdBean>> aVar) {
            DressUpSendContentFragment.this.notifyDataLoaded(false);
            if (DressUpSendContentFragment.this.f17712c != null) {
                DressUpSendContentFragment.this.f17712c.j(false);
            }
        }

        @Override // com.guochao.faceshow.aaspring.base.http.callback.c
        public void onResponse(@Nullable List<SearchUserNameOrIdBean> list, @NonNull FaceCastBaseResponse<List<SearchUserNameOrIdBean>> faceCastBaseResponse) {
            if (list == null) {
                list = new ArrayList<>();
            }
            ArrayList arrayList = new ArrayList();
            for (int i9 = 0; i9 < list.size(); i9++) {
                arrayList.add(SendUserResponse.SendUser.obtain(list.get(i9)));
            }
            if (this.f17716a == 1) {
                DressUpSendContentFragment.this.setDatas(arrayList);
            } else {
                DressUpSendContentFragment.this.addDatas(arrayList);
            }
            DressUpSendContentFragment.this.notifyDataLoaded(!list.isEmpty());
            DressUpSendContentFragment.this.showEmptyView();
            if (DressUpSendContentFragment.this.f17712c != null) {
                DressUpSendContentFragment.this.f17712c.j(true);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class c extends com.guochao.faceshow.aaspring.base.http.callback.c<SendUserResponse> {
        c() {
        }

        @Override // com.guochao.faceshow.aaspring.base.http.callback.c
        /* renamed from: a */
        public void onResponse(SendUserResponse sendUserResponse, @NonNull FaceCastBaseResponse<SendUserResponse> faceCastBaseResponse) {
            if (sendUserResponse == null) {
                onFailure(new g7.a<>(new Exception(""), -1));
                return;
            }
            if (sendUserResponse.getList() == null) {
                sendUserResponse.setList(new ArrayList());
            }
            DressUpSendContentFragment.this.addDatas(sendUserResponse.getList());
            DressUpSendContentFragment.this.notifyDataLoaded(!sendUserResponse.getList().isEmpty());
            DressUpSendContentFragment.this.showEmptyView();
        }

        @Override // com.guochao.faceshow.aaspring.base.http.callback.c, com.guochao.faceshow.aaspring.base.http.callback.b
        public void onCompleted() {
            super.onCompleted();
            DressUpSendContentFragment.this.f17713d.clear();
            DressUpSendContentFragment.this.f17713d.addAll(DressUpSendContentFragment.this.getList());
            if (DressUpSendContentFragment.this.f17712c != null) {
                DressUpSendContentFragment.this.f17712c.j(true);
            }
        }

        @Override // com.guochao.faceshow.aaspring.base.http.callback.c
        public void onFailure(@NonNull g7.a<SendUserResponse> aVar) {
            DressUpSendContentFragment.this.notifyDataLoaded(false);
            DressUpSendContentFragment.this.showEmptyView();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class d implements View.OnClickListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ BaseViewHolder f17719a;

        d(BaseViewHolder baseViewHolder) {
            this.f17719a = baseViewHolder;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            UserHomePageAct.start(DressUpSendContentFragment.this.getContext(), ((SendUserResponse.SendUser) this.f17719a.itemView.getTag()).getCurrentUserId());
        }
    }

    public static DressUpSendContentFragment U1(int i9) {
        DressUpSendContentFragment dressUpSendContentFragment = new DressUpSendContentFragment();
        Bundle bundle = new Bundle();
        bundle.putInt("type", i9);
        dressUpSendContentFragment.setArguments(bundle);
        return dressUpSendContentFragment;
    }

    private boolean V1(SendUserResponse.SendUser sendUser) {
        return (getActivity() instanceof DressUpSendActivity) && ((DressUpSendActivity) getActivity()).q0().contains(sendUser.getCurrentUserId());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void X1(String str, int i9) {
        SearchUserBean searchUserBean = new SearchUserBean();
        searchUserBean.setContent(str);
        searchUserBean.setCurrPage(i9);
        searchUserBean.setPageSize(15);
        post("tokens/search/findUserByNickNameOrId").u(searchUserBean).M(new b(i9));
    }

    @Override // com.guochao.faceshow.aaspring.base.fragment.BaseRecyclerViewFragment, d7.a
    /* renamed from: T1 */
    public void convertItem(BaseViewHolder baseViewHolder, int i9, SendUserResponse.SendUser sendUser) {
        baseViewHolder.itemView.setTag(sendUser);
        ((TextView) baseViewHolder.itemView.findViewById(R.id.user_id)).setText(String.format("ID : %s", sendUser.getUserId()));
        ((ImageView) baseViewHolder.itemView.findViewById(R.id.check)).setSelected(V1(sendUser));
        ((TextView) baseViewHolder.itemView.findViewById(R.id.user_name)).setText(sendUser.getUserName());
        ((HeadPortraitView) baseViewHolder.itemView.findViewById(R.id.user_avatar)).d(sendUser);
        UserCenterSexLevel userCenterSexLevel = new UserCenterSexLevel((LinearLayout) baseViewHolder.itemView.findViewById(R.id.user_center_age_level));
        userCenterSexLevel.d(sendUser);
        userCenterSexLevel.b();
    }

    @Override // com.guochao.faceshow.aaspring.base.fragment.BaseRecyclerViewFragment
    /* renamed from: W1 */
    public void onItemClick(BaseViewHolder baseViewHolder, int i9, SendUserResponse.SendUser sendUser) {
        baseViewHolder.getView(R.id.check).setSelected(!baseViewHolder.getView(R.id.check).isSelected());
        if (this.f17714e != null) {
            if (baseViewHolder.getView(R.id.check).isSelected()) {
                this.f17714e.b(sendUser);
            } else {
                this.f17714e.a(sendUser);
            }
        }
    }

    @Override // com.guochao.faceshow.aaspring.base.fragment.BaseRecyclerViewFragment, com.guochao.faceshow.aaspring.base.fragment.BaseFragment
    public int getLayoutId() {
        return R.layout.layout_recyclerview_with_empty;
    }

    @Override // com.guochao.faceshow.aaspring.base.fragment.BaseRecyclerViewFragment, com.guochao.faceshow.aaspring.base.fragment.BaseFragment
    public void initView(View view) {
        super.initView(view);
        Bundle arguments = getArguments();
        if (arguments != null) {
            this.f17711b = arguments.getInt("type", 0);
        }
        this.f17710a = view.findViewById(R.id.empty_view);
        TextView textView = (TextView) view.findViewById(R.id.empty_text);
        getRecyclerView().setOverScrollMode(2);
        ((ViewGroup.MarginLayoutParams) this.f17710a.getLayoutParams()).topMargin = DensityUtil.dp2px(47.0f) + DensityUtil.dp2px(this.f17711b == 1 ? 64.0f : 0.0f);
        View findViewById = view.findViewById(R.id.search_view_id);
        if (this.f17711b == 1) {
            p pVar = new p(findViewById);
            this.f17712c = pVar;
            pVar.l(true);
            this.f17712c.n();
            this.f17712c.k(new a());
        }
        View findViewById2 = view.findViewById(R.id.ugc_footer);
        if (findViewById2 != null) {
            ((ViewGroup.MarginLayoutParams) findViewById2.getLayoutParams()).bottomMargin = DensityUtil.dp2px(68.0f);
        }
        hideFooterView();
    }

    @Override // com.guochao.faceshow.aaspring.base.fragment.BaseRecyclerViewFragment, d7.c
    public void loadData(int i9) {
        p pVar = this.f17712c;
        if (pVar != null) {
            pVar.m(true);
        }
        post("tokens/mall/findFriendsByType").y("type", Integer.valueOf(this.f17711b != 0 ? 2 : 1)).y("currPage", Integer.valueOf(i9)).y("pageSize", 20).M(new c());
    }

    public void setOnSelectUserChangedListener(DressUpSendFragment.c cVar) {
        this.f17714e = cVar;
    }

    @Override // com.guochao.faceshow.aaspring.base.fragment.BaseRecyclerViewFragment, d7.a
    public void showEmptyView() {
        if (getList().isEmpty()) {
            this.f17710a.setVisibility(0);
            hideFooterView();
            return;
        }
        this.f17710a.setVisibility(8);
        setFooterView(0);
    }

    @Override // com.guochao.faceshow.aaspring.base.adapter.BaseRecyclerAdapter.a
    @NonNull
    public BaseViewHolder onCreateViewHolder(@NonNull ViewGroup viewGroup, int i9) {
        BaseViewHolder baseViewHolder = new BaseViewHolder(LayoutInflater.from(getContext()).inflate(R.layout.item_dress_up_send, viewGroup, false));
        d dVar = new d(baseViewHolder);
        baseViewHolder.getView(R.id.user_avatar).setOnClickListener(dVar);
        baseViewHolder.getView(R.id.user_name).setOnClickListener(dVar);
        return baseViewHolder;
    }
}
