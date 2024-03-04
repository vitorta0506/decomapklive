package com.guochao.faceshow.aaspring.modulars.ugc.activity;

import android.app.Activity;
import android.content.Intent;
import android.os.Bundle;
import android.text.TextUtils;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.core.app.ActivityOptionsCompat;
import androidx.core.content.ContextCompat;
import com.guochao.faceshow.R;
import com.guochao.faceshow.aaspring.base.activity.BaseRecyclerViewActivity;
import com.guochao.faceshow.aaspring.base.adapter.BaseViewHolder;
import com.guochao.faceshow.aaspring.base.http.request.PostRequest;
import com.guochao.faceshow.aaspring.base.http.response.FaceCastBaseResponse;
import com.guochao.faceshow.aaspring.beans.IM_User;
import com.guochao.faceshow.aaspring.modulars.push.ThirdPushHelper;
import com.guochao.faceshow.aaspring.utils.MemoryCache;
import com.guochao.faceshow.aaspring.views.HeadPortraitView;
import com.guochao.faceshow.aaspring.views.VipIndicatorView;
import com.guochao.faceshow.aaspring.views.v;
import com.guochao.faceshow.bean.IM_UserList;
import com.guochao.faceshow.userhomepage.act.UserHomePageAct;
import com.guochao.faceshow.utils.Contants;
import com.guochao.faceshow.utils.ScreenTools;
import com.guochao.faceshow.views.p;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
/* loaded from: classes3.dex */
public class SearchFriendsActivity extends BaseRecyclerViewActivity<IM_User, BaseViewHolder> {

    /* renamed from: a  reason: collision with root package name */
    private final List<IM_User> f22389a = new ArrayList();

    /* renamed from: b  reason: collision with root package name */
    private com.guochao.faceshow.views.p f22390b;

    /* loaded from: classes3.dex */
    class a implements p.c {
        a() {
        }

        @Override // com.guochao.faceshow.views.p.c
        public void a(String str) {
            if (TextUtils.isEmpty(str)) {
                SearchFriendsActivity.this.setCurrentPage(1);
                SearchFriendsActivity.this.loadData(1);
                return;
            }
            SearchFriendsActivity.this.q0(str);
        }

        @Override // com.guochao.faceshow.views.p.c
        public void b() {
            SearchFriendsActivity.this.notifyDataLoaded(false);
            SearchFriendsActivity.this.n0();
        }
    }

    /* loaded from: classes3.dex */
    class b implements v.e {
        b() {
        }

        @Override // com.guochao.faceshow.aaspring.views.v.e
        public void onClick(View view) {
            if (!SearchFriendsActivity.this.f22389a.isEmpty()) {
                ArrayList<String> arrayList = new ArrayList<>();
                for (int i9 = 0; i9 < SearchFriendsActivity.this.f22389a.size(); i9++) {
                    arrayList.add(((IM_User) SearchFriendsActivity.this.f22389a.get(i9)).getNick_name());
                }
                Intent intent = new Intent();
                intent.putStringArrayListExtra("data", arrayList);
                intent.putParcelableArrayListExtra("name", (ArrayList) SearchFriendsActivity.this.f22389a);
                MemoryCache.getInstance().put(Contants.PARAMS_KEY1, SearchFriendsActivity.this.f22389a);
                SearchFriendsActivity.this.setResult(-1, intent);
                SearchFriendsActivity.this.finish();
                return;
            }
            SearchFriendsActivity.this.finish();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class c extends com.guochao.faceshow.aaspring.base.http.callback.c<IM_UserList> {
        c() {
        }

        @Override // com.guochao.faceshow.aaspring.base.http.callback.c
        /* renamed from: a */
        public void onResponse(@Nullable IM_UserList iM_UserList, @NonNull FaceCastBaseResponse<IM_UserList> faceCastBaseResponse) {
            if (iM_UserList == null) {
                iM_UserList = new IM_UserList();
                iM_UserList.list = new ArrayList<>();
                iM_UserList.totalPage = 1;
            }
            Iterator<IM_User> it = iM_UserList.list.iterator();
            while (it.hasNext()) {
                IM_User next = it.next();
                SearchFriendsActivity searchFriendsActivity = SearchFriendsActivity.this;
                next.setIsSelect(searchFriendsActivity.k0(searchFriendsActivity.f22389a, next));
            }
            SearchFriendsActivity.this.setDatas(iM_UserList.list);
            SearchFriendsActivity.this.notifyDataLoaded(false);
            SearchFriendsActivity.this.n0();
            if (SearchFriendsActivity.this.f22390b != null) {
                SearchFriendsActivity.this.f22390b.j(true);
            }
        }

        @Override // com.guochao.faceshow.aaspring.base.http.callback.c
        public void onFailure(@NonNull g7.a<IM_UserList> aVar) {
            SearchFriendsActivity.this.notifyDataLoaded(false);
            if (SearchFriendsActivity.this.f22390b != null) {
                SearchFriendsActivity.this.f22390b.j(false);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class d implements View.OnClickListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ IM_User f22394a;

        d(IM_User iM_User) {
            this.f22394a = iM_User;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            Intent intent = new Intent(SearchFriendsActivity.this, UserHomePageAct.class);
            intent.putExtra(Contants.USER_ID, this.f22394a.getCurrentUserId() + "");
            SearchFriendsActivity.this.startActivity(intent);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class e extends com.guochao.faceshow.aaspring.base.http.callback.c<IM_UserList> {
        e() {
        }

        @Override // com.guochao.faceshow.aaspring.base.http.callback.c
        /* renamed from: a */
        public void onResponse(IM_UserList iM_UserList, @NonNull FaceCastBaseResponse<IM_UserList> faceCastBaseResponse) {
            if (iM_UserList == null) {
                iM_UserList = new IM_UserList();
                iM_UserList.list = new ArrayList<>();
                iM_UserList.totalPage = 1;
            }
            Iterator<IM_User> it = iM_UserList.list.iterator();
            while (it.hasNext()) {
                IM_User next = it.next();
                SearchFriendsActivity searchFriendsActivity = SearchFriendsActivity.this;
                next.setIsSelect(searchFriendsActivity.k0(searchFriendsActivity.f22389a, next));
            }
            if (SearchFriendsActivity.this.getCurrentPage() == 1) {
                SearchFriendsActivity.this.setDatas(iM_UserList.list);
            } else {
                SearchFriendsActivity.this.addDatas(iM_UserList.list);
            }
            SearchFriendsActivity.this.notifyDataLoaded(true);
            SearchFriendsActivity.this.n0();
            SearchFriendsActivity.this.showEmptyView();
        }

        @Override // com.guochao.faceshow.aaspring.base.http.callback.c
        public void onFailure(g7.a<IM_UserList> aVar) {
            SearchFriendsActivity.this.notifyDataLoaded(false);
            SearchFriendsActivity.this.showEmptyView();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean k0(List<IM_User> list, IM_User iM_User) {
        if (list == null) {
            return false;
        }
        for (IM_User iM_User2 : list) {
            if (iM_User2.getUser_id().equalsIgnoreCase(iM_User.getUser_id())) {
                return true;
            }
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void n0() {
        int size = this.f22389a.size();
        if (size == 0) {
            String string = getString(R.string.f16064ok);
            v vVar = this.mTitleBarHelper;
            if (vVar != null) {
                vVar.s(string.toString(), R.color.color_ugc_text_level_2);
                this.mTitleBarHelper.t(false);
                return;
            }
            return;
        }
        String str = getString(R.string.f16064ok) + "(" + size + ")";
        v vVar2 = this.mTitleBarHelper;
        if (vVar2 != null) {
            vVar2.s(str, R.color.color_app_primary);
            this.mTitleBarHelper.t(true);
        }
    }

    public static void o0(Activity activity, int i9, String str) {
        Intent intent = new Intent(activity, SearchFriendsActivity.class);
        intent.putExtra("title", str);
        activity.startActivityForResult(intent, i9, ActivityOptionsCompat.makeCustomAnimation(activity, R.anim.enter_up, R.anim.do_nothing).toBundle());
    }

    public static void p0(Activity activity, List<IM_User> list, int i9, String str) {
        Intent intent = new Intent(activity, SearchFriendsActivity.class);
        intent.putExtra("title", str);
        MemoryCache.getInstance().put(Contants.PARAMS_KEY1, list);
        activity.startActivityForResult(intent, i9, ActivityOptionsCompat.makeCustomAnimation(activity, R.anim.enter_up, R.anim.do_nothing).toBundle());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void q0(String str) {
        post("user/attention/getFriendsList").D("account", str).M(new c());
    }

    @Override // com.guochao.faceshow.aaspring.base.activity.BaseRecyclerViewActivity, d7.c
    public boolean canRefresh() {
        return false;
    }

    @Override // com.guochao.faceshow.aaspring.base.activity.BaseActivity, android.app.Activity
    public void finish() {
        super.finish();
        overridePendingTransition(R.anim.do_nothing, R.anim.exit_down);
    }

    @Override // com.guochao.faceshow.aaspring.base.activity.BaseRecyclerViewActivity, com.guochao.faceshow.aaspring.base.activity.BaseActivity
    public int getLayoutId() {
        return R.layout.activity_search_follows;
    }

    @Override // com.guochao.faceshow.aaspring.base.activity.BaseRecyclerViewActivity, com.guochao.faceshow.aaspring.base.activity.BaseActivity
    public void initView() {
        super.initView();
        setTitle(R.string.search_follows);
        View emptyView = getEmptyView();
        emptyView.setBackgroundColor(ContextCompat.getColor(this, R.color.white));
        emptyView.setPadding(0, 0, 0, ScreenTools.dip2px(150.0f));
        emptyView.findViewById(R.id.empty_text).setVisibility(8);
    }

    @Override // com.guochao.faceshow.aaspring.base.activity.BaseRecyclerViewActivity, d7.a
    /* renamed from: l0 */
    public void convertItem(BaseViewHolder baseViewHolder, int i9, IM_User iM_User) {
        VipIndicatorView vipIndicatorView = (VipIndicatorView) baseViewHolder.getView(R.id.vip_indicator);
        ((HeadPortraitView) baseViewHolder.getView(R.id.user_avatar)).f(iM_User, true);
        if (iM_User.getUserVipMsg() != null) {
            vipIndicatorView.setVipLevel(iM_User.getUserVipMsg().getIsVip());
        }
        baseViewHolder.setText(R.id.user_name, iM_User.getNick_name());
        ImageView imageView = (ImageView) baseViewHolder.getView(R.id.check);
        imageView.setSelected(iM_User.isSelect());
        imageView.setVisibility(0);
        baseViewHolder.setText(R.id.signature, TextUtils.isEmpty(iM_User.getSignature()) ? getString(R.string.user_info_default_signature) : iM_User.getSignature());
        baseViewHolder.getView(R.id.avatar_bg).setOnClickListener(new d(iM_User));
    }

    @Override // com.guochao.faceshow.aaspring.base.activity.BaseRecyclerViewActivity, d7.c
    public void loadData(int i9) {
        PostRequest post = post("user/attention/getFriendsList");
        post.D("currPage", getCurrentPage() + "").D("pageSize", ThirdPushHelper.TYPE_HUAWEI).M(new e());
    }

    @Override // com.guochao.faceshow.aaspring.base.activity.BaseRecyclerViewActivity
    /* renamed from: m0 */
    public void onItemClick(BaseViewHolder baseViewHolder, int i9, IM_User iM_User) {
        ImageView imageView = (ImageView) baseViewHolder.getView(R.id.check);
        if (iM_User.isSelect()) {
            this.f22389a.remove(iM_User);
        } else {
            this.f22389a.add(iM_User);
        }
        iM_User.setIsSelect(!iM_User.isSelect());
        imageView.setSelected(iM_User.isSelect());
        n0();
    }

    @Override // androidx.activity.ComponentActivity, android.app.Activity
    public void onBackPressed() {
        super.onBackPressed();
        setResult(-1, getIntent());
    }

    @Override // com.guochao.faceshow.aaspring.base.activity.BaseRecyclerViewActivity, com.guochao.faceshow.aaspring.base.activity.BaseActivity, com.guochao.faceshow.aaspring.base.mvvm.activity.GCCoreActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        String stringExtra = getIntent().getStringExtra("title");
        if (!TextUtils.isEmpty(stringExtra)) {
            setTitle(stringExtra);
        } else {
            setTitle(R.string.not_allow);
        }
        Object remove = MemoryCache.getInstance().remove(Contants.PARAMS_KEY1);
        if (remove instanceof List) {
            this.f22389a.addAll((Collection) remove);
        }
        com.guochao.faceshow.views.p pVar = new com.guochao.faceshow.views.p(findViewById(R.id.search_view_id));
        this.f22390b = pVar;
        pVar.k(new a());
        setEndText(getString(R.string.f16064ok), R.color.color_app_primary);
        v vVar = this.mTitleBarHelper;
        if (vVar != null) {
            vVar.setOnRightTextClickListener(new b());
        }
    }

    @Override // com.guochao.faceshow.aaspring.base.adapter.BaseRecyclerAdapter.a
    @NonNull
    public BaseViewHolder onCreateViewHolder(@NonNull ViewGroup viewGroup, int i9) {
        return new BaseViewHolder(getLayoutInflater().inflate(R.layout.list_item_choose_my_follow, viewGroup, false));
    }
}
