package com.guochao.faceshow.aaspring.modulars.ugc.fragment;

import android.os.Bundle;
import android.view.View;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.recyclerview.widget.RecyclerView;
import ba.a;
import com.google.android.material.appbar.AppBarLayout;
import com.guochao.faceshow.aaspring.base.http.response.FaceCastBaseResponse;
import com.guochao.faceshow.aaspring.beans.DynamicBean;
import com.guochao.faceshow.aaspring.beans.PublishUgcBean;
import com.guochao.faceshow.aaspring.modulars.ugc.base.BaseDynamicViewHolder;
import com.guochao.faceshow.utils.HandlerGetter;
import ja.a;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
import java.util.Set;
/* loaded from: classes3.dex */
public class NewestDynamicListFragment extends UgcDynamicListFragment implements a.e, AppBarLayout.OnOffsetChangedListener, a.b {

    /* renamed from: c  reason: collision with root package name */
    d f22771c;

    /* renamed from: e  reason: collision with root package name */
    BaseDynamicViewHolder f22773e;

    /* renamed from: h  reason: collision with root package name */
    BaseDynamicViewHolder f22776h;

    /* renamed from: i  reason: collision with root package name */
    c f22777i;

    /* renamed from: j  reason: collision with root package name */
    private boolean f22778j;

    /* renamed from: a  reason: collision with root package name */
    public int f22769a = 1;

    /* renamed from: b  reason: collision with root package name */
    private Set<Integer> f22770b = new HashSet();

    /* renamed from: d  reason: collision with root package name */
    boolean f22772d = false;

    /* renamed from: f  reason: collision with root package name */
    private boolean f22774f = false;

    /* renamed from: g  reason: collision with root package name */
    private boolean f22775g = true;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class a implements aa.b<PublishUgcBean> {
        a() {
        }

        @Override // aa.b
        /* renamed from: a */
        public boolean accept(PublishUgcBean publishUgcBean) {
            return publishUgcBean.getPublishStatus() != 3;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class b implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ int f22780a;

        b(int i9) {
            this.f22780a = i9;
        }

        @Override // java.lang.Runnable
        public void run() {
            NewestDynamicListFragment newestDynamicListFragment;
            d dVar;
            int[] iArr = new int[2];
            NewestDynamicListFragment.this.f22773e.itemView.getLocationInWindow(iArr);
            if (iArr[1] <= this.f22780a && (dVar = (newestDynamicListFragment = NewestDynamicListFragment.this).f22771c) != null) {
                dVar.n(newestDynamicListFragment.f22773e.getAdapterPosition(), NewestDynamicListFragment.this.f22773e);
                NewestDynamicListFragment.this.f22774f = true;
                NewestDynamicListFragment.this.getRecyclerView().removeOnScrollListener(NewestDynamicListFragment.this.f22777i);
            }
        }
    }

    /* loaded from: classes3.dex */
    class c extends RecyclerView.OnScrollListener {
        c() {
        }

        @Override // androidx.recyclerview.widget.RecyclerView.OnScrollListener
        public void onScrolled(@NonNull RecyclerView recyclerView, int i9, int i10) {
            super.onScrolled(recyclerView, i9, i10);
            NewestDynamicListFragment.this.U1(null, true);
        }
    }

    /* loaded from: classes3.dex */
    public interface d {
        void n(int i9, BaseDynamicViewHolder baseDynamicViewHolder);
    }

    private void T1(BaseDynamicViewHolder baseDynamicViewHolder, DynamicBean dynamicBean) {
        if (!this.f22778j && ja.a.b().f("KEY_UGC_LIKE")) {
            baseDynamicViewHolder.O(this.f22775g);
            this.f22776h = baseDynamicViewHolder;
            this.f22775g = false;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void U1(DynamicBean dynamicBean, boolean z10) {
        if (this.f22774f || this.f22773e == null) {
            return;
        }
        b bVar = new b(getResources().getDisplayMetrics().heightPixels);
        if (z10) {
            bVar.run();
        } else {
            HandlerGetter.getMainHandler().post(bVar);
        }
    }

    private List<DynamicBean> V1(List<DynamicBean> list) {
        ArrayList arrayList = new ArrayList();
        for (DynamicBean dynamicBean : list) {
            if (!this.f22770b.contains(Integer.valueOf(dynamicBean.getFriendId()))) {
                arrayList.add(dynamicBean);
                this.f22770b.add(Integer.valueOf(dynamicBean.getFriendId()));
            }
        }
        return arrayList;
    }

    public static NewestDynamicListFragment W1() {
        Bundle bundle = new Bundle();
        bundle.putInt("type", 2);
        bundle.putInt("position", 3);
        NewestDynamicListFragment newestDynamicListFragment = new NewestDynamicListFragment();
        newestDynamicListFragment.setArguments(bundle);
        return newestDynamicListFragment;
    }

    @Override // com.guochao.faceshow.aaspring.base.fragment.BaseRecyclerViewFragment, d7.a
    /* renamed from: S1 */
    public void addData(DynamicBean dynamicBean) {
        if (this.f22770b.contains(Integer.valueOf(dynamicBean.getFriendId()))) {
            return;
        }
        super.addData(dynamicBean);
        this.f22770b.add(Integer.valueOf(dynamicBean.getFriendId()));
    }

    @Override // com.guochao.faceshow.aaspring.modulars.ugc.base.BaseDynamicListFragment, com.guochao.faceshow.aaspring.base.fragment.BaseRecyclerViewFragment, d7.a
    public void addDatas(List<DynamicBean> list) {
        super.addDatas(V1(list));
    }

    @Override // com.guochao.faceshow.aaspring.base.fragment.BaseRecyclerViewFragment, d7.a
    public void clearAll() {
        super.clearAll();
        this.f22770b.clear();
    }

    @Override // com.guochao.faceshow.aaspring.modulars.ugc.base.BaseDynamicListFragment, com.guochao.faceshow.aaspring.base.fragment.BaseRecyclerViewFragment, com.guochao.faceshow.aaspring.base.fragment.BaseFragment
    public void initView(View view) {
        super.initView(view);
        if (this.f22772d) {
            this.f22777i = new c();
            getRecyclerView().addOnScrollListener(this.f22777i);
        }
    }

    @Override // com.guochao.faceshow.aaspring.modulars.ugc.fragment.UgcDynamicListFragment, com.guochao.faceshow.aaspring.modulars.ugc.base.BaseDynamicListFragment, com.guochao.faceshow.aaspring.base.fragment.BaseRecyclerViewFragment, com.guochao.faceshow.aaspring.base.fragment.BaseFragment, com.guochao.faceshow.aaspring.base.mvvm.fragment.GCCoreFragment, androidx.fragment.app.DialogFragment, androidx.fragment.app.Fragment
    public void onCreate(@Nullable Bundle bundle) {
        super.onCreate(bundle);
        ba.a.r().registerOnPublishListener(this);
        if (getActivity() instanceof d) {
            this.f22771c = (d) getActivity();
        }
        this.f22772d = ja.a.b().f("KEY_SEND_DYNAMIC");
        ja.a.b().d("KEY_UGC_LIKE", this);
    }

    @Override // com.guochao.faceshow.aaspring.modulars.ugc.base.BaseDynamicListFragment, com.guochao.faceshow.aaspring.base.fragment.BaseFragment, androidx.fragment.app.Fragment
    public void onDestroy() {
        super.onDestroy();
        ba.a.r().unregisterOnPublishListener(this);
        ja.a.b().h("KEY_UGC_LIKE", this);
    }

    @Override // ja.a.b
    public void onDone(String str) {
        this.f22772d = false;
        BaseDynamicViewHolder baseDynamicViewHolder = this.f22776h;
        if (baseDynamicViewHolder != null) {
            baseDynamicViewHolder.B();
        }
    }

    @Override // com.guochao.faceshow.aaspring.modulars.ugc.base.BaseDynamicListFragment, aa.e
    public void onLikeClick(BaseDynamicViewHolder baseDynamicViewHolder, DynamicBean dynamicBean, int i9) {
        if (i9 == this.f22769a) {
            this.f22778j = true;
            baseDynamicViewHolder.B();
            ja.a.b().e("KEY_UGC_LIKE");
        }
    }

    @Override // com.google.android.material.appbar.AppBarLayout.OnOffsetChangedListener, com.google.android.material.appbar.AppBarLayout.BaseOnOffsetChangedListener
    public void onOffsetChanged(AppBarLayout appBarLayout, int i9) {
    }

    @Override // ba.a.e
    public void onPublishResponse(PublishUgcBean publishUgcBean) {
        DynamicBean dynamic = PublishUgcBean.toDynamic(publishUgcBean);
        int i9 = 0;
        while (true) {
            if (i9 >= getList().size()) {
                i9 = -1;
                break;
            } else if (getList().get(i9).getUuid() == dynamic.getUuid()) {
                break;
            } else {
                i9++;
            }
        }
        if (i9 >= 0) {
            if (publishUgcBean.getPublishStatus() != 3) {
                getList().set(i9, dynamic);
                this.f22770b.add(Integer.valueOf(dynamic.getFriendId()));
            } else {
                getList().remove(i9);
                this.f22770b.remove(Integer.valueOf(dynamic.getFriendId()));
            }
        } else {
            List<DynamicBean> resetList = resetList(false);
            if (resetList.isEmpty()) {
                getList().add(0, dynamic);
                this.f22770b.add(Integer.valueOf(dynamic.getFriendId()));
            } else {
                for (DynamicBean dynamicBean : resetList) {
                    getList().add(0, dynamicBean);
                    this.f22770b.add(Integer.valueOf(dynamicBean.getFriendId()));
                }
            }
        }
        if (getRecyclerView() == null || getRecyclerView().getAdapter() == null) {
            return;
        }
        notifyDataLoaded(false);
    }

    @Override // com.guochao.faceshow.aaspring.modulars.ugc.fragment.UgcDynamicListFragment
    public /* bridge */ /* synthetic */ void onResponse(Object obj, @NonNull FaceCastBaseResponse faceCastBaseResponse) {
        onResponse((List) obj, (FaceCastBaseResponse<List<DynamicBean>>) faceCastBaseResponse);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.guochao.faceshow.aaspring.modulars.ugc.base.BaseDynamicListFragment
    public List<DynamicBean> resetList(boolean z10) {
        ArrayList arrayList = new ArrayList();
        if (z10) {
            clearAll();
        }
        List<PublishUgcBean> t10 = ba.a.r().t(new a());
        if (t10 != null && !t10.isEmpty()) {
            for (int size = t10.size() - 1; size >= 0; size--) {
                DynamicBean dynamic = PublishUgcBean.toDynamic(t10.get(size));
                if (!getList().contains(dynamic)) {
                    arrayList.add(0, dynamic);
                }
            }
        }
        return arrayList;
    }

    @Override // com.guochao.faceshow.aaspring.modulars.ugc.base.BaseDynamicListFragment, com.guochao.faceshow.aaspring.base.fragment.BaseRecyclerViewFragment, d7.a
    public void setDatas(List<DynamicBean> list) {
        super.setDatas(V1(list));
    }

    @Override // com.guochao.faceshow.aaspring.modulars.ugc.base.BaseDynamicListFragment, com.guochao.faceshow.aaspring.base.fragment.BaseRecyclerViewFragment, d7.a
    public void convertItem(BaseDynamicViewHolder baseDynamicViewHolder, int i9, DynamicBean dynamicBean) {
        super.convertItem(baseDynamicViewHolder, i9, dynamicBean);
        if (i9 == this.f22769a) {
            if (dynamicBean.getIsLike() == 1) {
                this.f22769a++;
            } else {
                T1(baseDynamicViewHolder, dynamicBean);
            }
        }
        if (i9 != 4 || this.f22771c == null) {
            return;
        }
        this.f22773e = baseDynamicViewHolder;
        U1(dynamicBean, false);
    }

    @Override // com.guochao.faceshow.aaspring.modulars.ugc.fragment.UgcDynamicListFragment
    public void onResponse(List<DynamicBean> list, @NonNull FaceCastBaseResponse<List<DynamicBean>> faceCastBaseResponse) {
        if (getCurrentPage() == getDefaultPage()) {
            List<DynamicBean> resetList = resetList(true);
            if (list != null) {
                resetList.addAll(list);
            }
            super.onResponse(resetList, faceCastBaseResponse);
            return;
        }
        super.onResponse(list, faceCastBaseResponse);
    }
}
