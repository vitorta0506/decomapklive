package com.guochao.faceshow.aaspring.modulars.ugc.publish.activity;

import android.app.Activity;
import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import butterknife.BindView;
import com.guochao.faceshow.R;
import com.guochao.faceshow.aaspring.base.activity.BaseRecyclerViewActivity;
import com.guochao.faceshow.aaspring.beans.IM_User;
import com.guochao.faceshow.aaspring.beans.VisibleUserBean;
import com.guochao.faceshow.aaspring.modulars.ugc.activity.SearchFriendsActivity;
import com.guochao.faceshow.aaspring.modulars.ugc.publish.holder.VisibleUserHolder;
import com.guochao.faceshow.aaspring.utils.MemoryCache;
import com.guochao.faceshow.aaspring.views.v;
import com.guochao.faceshow.utils.Contants;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes3.dex */
public class VisibleUserActivity extends BaseRecyclerViewActivity<VisibleUserBean, VisibleUserHolder> {

    /* renamed from: a  reason: collision with root package name */
    private int f22994a;

    /* renamed from: b  reason: collision with root package name */
    private List<IM_User> f22995b;

    /* renamed from: c  reason: collision with root package name */
    private VisibleUserBean f22996c;
    @BindView
    ViewGroup recyclerContent;

    /* loaded from: classes3.dex */
    class a implements v.e {
        a() {
        }

        @Override // com.guochao.faceshow.aaspring.views.v.e
        public void onClick(View view) {
            Intent intent = new Intent();
            MemoryCache.getInstance().put(Contants.PARAMS_KEY1, VisibleUserActivity.this.getList().get(VisibleUserActivity.this.f22994a));
            intent.putExtra(Contants.PARAMS_KEY2, VisibleUserActivity.this.f22994a);
            VisibleUserActivity.this.setResult(-1, intent);
            VisibleUserActivity.this.finish();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class b implements VisibleUserHolder.a {
        b() {
        }

        @Override // com.guochao.faceshow.aaspring.modulars.ugc.publish.holder.VisibleUserHolder.a
        public void a(VisibleUserBean visibleUserBean, int i9) {
            VisibleUserActivity.this.f22994a = 4;
            for (int i10 = 0; i10 < VisibleUserActivity.this.getList().size(); i10++) {
                if (4 == i10) {
                    VisibleUserActivity.this.getList().get(i10).setSelected(true);
                } else {
                    VisibleUserActivity.this.getList().get(i10).setSelected(false);
                }
            }
            if (i9 != 1) {
                if (i9 != 2) {
                    return;
                }
                VisibleUserActivity visibleUserActivity = VisibleUserActivity.this;
                SearchFriendsActivity.p0(visibleUserActivity, visibleUserActivity.f22995b, 121, VisibleUserActivity.this.getString(R.string.not_allow));
                return;
            }
            VisibleUserActivity.this.getList().get(4).setAllSelected(true);
            if (VisibleUserActivity.this.f22995b != null) {
                VisibleUserActivity.this.f22995b.clear();
            }
            VisibleUserActivity.this.getList().get(4).setSelectInvisibleUsers(null);
            VisibleUserActivity.this.notifyDataLoaded(false);
        }
    }

    private void l0(int i9) {
        this.f22994a = i9;
        for (int i10 = 0; i10 < getList().size(); i10++) {
            getList().get(i10).setAllSelected(false);
            if (i9 == i10) {
                getList().get(i10).setSelected(true);
            } else {
                getList().get(i10).setSelected(false);
            }
        }
        List<IM_User> list = this.f22995b;
        if (list != null) {
            list.clear();
        }
        getList().get(4).setSelectInvisibleUsers(null);
        notifyDataLoaded(false);
    }

    private void m0() {
        StringBuilder sb2 = new StringBuilder();
        for (int i9 = 0; i9 < this.f22995b.size(); i9++) {
            sb2.append(this.f22995b.get(i9).getNick_name());
            if (i9 < this.f22995b.size() - 1) {
                sb2.append(" / ");
            }
        }
        for (int i10 = 0; i10 < getList().size(); i10++) {
            if (4 == i10) {
                getList().get(i10).setSelected(true);
            } else {
                getList().get(i10).setSelected(false);
            }
        }
        getList().get(4).setAllSelected(false);
        getList().get(4).setSelectInvisibleName(sb2.toString());
        getList().get(4).setSelectInvisibleUsers(this.f22995b);
        notifyDataLoaded(false);
    }

    public static void n0(Activity activity, VisibleUserBean visibleUserBean, int i9, int i10) {
        Intent intent = new Intent(activity, VisibleUserActivity.class);
        MemoryCache.getInstance().put(Contants.PARAMS_KEY1, visibleUserBean);
        intent.putExtra(Contants.PARAMS_KEY2, i9);
        activity.startActivityForResult(intent, i10);
    }

    @Override // com.guochao.faceshow.aaspring.base.activity.BaseRecyclerViewActivity, d7.c
    public boolean canLoadMore() {
        return false;
    }

    @Override // com.guochao.faceshow.aaspring.base.activity.BaseRecyclerViewActivity, d7.c
    public boolean canRefresh() {
        return false;
    }

    @Override // com.guochao.faceshow.aaspring.base.activity.BaseRecyclerViewActivity, d7.a
    /* renamed from: g0 */
    public void convertItem(VisibleUserHolder visibleUserHolder, int i9, VisibleUserBean visibleUserBean) {
        visibleUserHolder.d(i9, visibleUserBean);
    }

    @Override // com.guochao.faceshow.aaspring.base.adapter.BaseRecyclerAdapter.a
    @NonNull
    /* renamed from: i0 */
    public VisibleUserHolder onCreateViewHolder(@NonNull ViewGroup viewGroup, int i9) {
        VisibleUserHolder visibleUserHolder = new VisibleUserHolder(viewGroup);
        visibleUserHolder.setOnInvisibleUserClickListener(new b());
        return visibleUserHolder;
    }

    @Override // com.guochao.faceshow.aaspring.base.activity.BaseRecyclerViewActivity
    /* renamed from: k0 */
    public void onItemClick(VisibleUserHolder visibleUserHolder, int i9, VisibleUserBean visibleUserBean) {
        l0(i9);
    }

    @Override // com.guochao.faceshow.aaspring.base.activity.BaseRecyclerViewActivity, d7.c
    public void loadData(int i9) {
        ArrayList arrayList = new ArrayList();
        for (int i10 = 0; i10 < 5; i10++) {
            VisibleUserBean visibleUserBean = new VisibleUserBean();
            if (i10 == 0) {
                visibleUserBean.setSelected(true);
            }
            arrayList.add(visibleUserBean);
        }
        addDatas(arrayList);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.guochao.faceshow.aaspring.base.activity.BaseActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, android.app.Activity
    public void onActivityResult(int i9, int i10, @Nullable Intent intent) {
        super.onActivityResult(i9, i10, intent);
        if (i9 == 121 && i10 == -1) {
            List<IM_User> list = (List) MemoryCache.getInstance().remove(Contants.PARAMS_KEY1);
            this.f22995b = list;
            if (list == null || list.isEmpty()) {
                return;
            }
            m0();
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.guochao.faceshow.aaspring.base.activity.BaseRecyclerViewActivity, com.guochao.faceshow.aaspring.base.activity.BaseActivity, com.guochao.faceshow.aaspring.base.mvvm.activity.GCCoreActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(@Nullable Bundle bundle) {
        super.onCreate(bundle);
        setTitle(R.string.who_can_look);
        if (bundle != null) {
            finish();
            return;
        }
        this.f22996c = (VisibleUserBean) MemoryCache.getInstance().remove(Contants.PARAMS_KEY1);
        this.f22994a = getIntent().getIntExtra(Contants.PARAMS_KEY2, 0);
        VisibleUserBean visibleUserBean = this.f22996c;
        if (visibleUserBean != null && visibleUserBean.getSelectInvisibleUsers() != null) {
            this.f22995b = this.f22996c.getSelectInvisibleUsers();
        }
        int i9 = this.f22994a;
        if (i9 != 4) {
            l0(i9);
        } else if (this.f22995b != null) {
            m0();
        } else {
            for (int i10 = 0; i10 < getList().size(); i10++) {
                if (4 == i10) {
                    getList().get(i10).setSelected(true);
                } else {
                    getList().get(i10).setSelected(false);
                }
            }
            getList().get(4).setAllSelected(true);
            notifyDataLoaded(false);
        }
        setEndText(getString(R.string.f16064ok), R.color.color_ugc_app_primary);
        v vVar = this.mTitleBarHelper;
        if (vVar != null) {
            vVar.setOnRightTextClickListener(new a());
        }
        this.mTitleBarHelper.f();
        this.recyclerContent.setBackgroundColor(-1);
    }
}
