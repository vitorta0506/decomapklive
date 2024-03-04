package com.guochao.faceshow.aaspring.modulars.personal;

import android.content.Intent;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.guochao.faceshow.R;
import com.guochao.faceshow.aaspring.base.activity.BaseRecyclerViewActivity;
import com.guochao.faceshow.aaspring.base.activity.a;
import com.guochao.faceshow.aaspring.base.adapter.BaseViewHolder;
import com.guochao.faceshow.aaspring.base.http.response.FaceCastBaseResponse;
import com.guochao.faceshow.aaspring.beans.InterestsAndHobbiesBean;
import com.guochao.faceshow.aaspring.modulars.personal.dressup.adapter.FlowAdapter;
import com.guochao.faceshow.aaspring.utils.MemoryCache;
import com.guochao.faceshow.aaspring.utils.SpUtils;
import com.guochao.faceshow.aaspring.views.FlowLayout.FlowLayoutManager;
import com.guochao.faceshow.aaspring.views.FlowLayout.NestedRecyclerView;
import com.guochao.faceshow.aaspring.views.FlowLayout.SpaceItemDecoration;
import com.guochao.faceshow.aaspring.views.v;
import com.guochao.faceshow.mine.model.HobbyBean;
import com.guochao.faceshow.mine.model.HobbyResultBean;
import com.guochao.faceshow.mine.view.CustomLabelActivity;
import com.guochao.faceshow.utils.Contants;
import com.guochao.faceshow.utils.DensityUtil;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
/* loaded from: classes3.dex */
public class InterestsAndHobbiesActivity extends BaseRecyclerViewActivity<InterestsAndHobbiesBean, BaseViewHolder> {

    /* renamed from: a  reason: collision with root package name */
    List<String> f21201a = new ArrayList();

    /* renamed from: b  reason: collision with root package name */
    private final List<HobbyBean> f21202b = new ArrayList();

    /* renamed from: c  reason: collision with root package name */
    private final List<HobbyBean> f21203c = new ArrayList();

    /* renamed from: d  reason: collision with root package name */
    private final List<HobbyBean> f21204d = new ArrayList();

    /* renamed from: e  reason: collision with root package name */
    private FlowAdapter f21205e;

    /* renamed from: f  reason: collision with root package name */
    private FlowAdapter f21206f;

    /* renamed from: g  reason: collision with root package name */
    private FlowAdapter f21207g;

    /* loaded from: classes3.dex */
    class a extends com.guochao.faceshow.aaspring.base.http.callback.c<HobbyResultBean> {
        a() {
        }

        @Override // com.guochao.faceshow.aaspring.base.http.callback.c
        /* renamed from: a */
        public void onResponse(@Nullable HobbyResultBean hobbyResultBean, @NonNull FaceCastBaseResponse<HobbyResultBean> faceCastBaseResponse) {
            if (hobbyResultBean != null) {
                if (hobbyResultBean.getUserHobbies() != null && hobbyResultBean.getUserHobbies().size() > 0) {
                    InterestsAndHobbiesActivity.this.f21202b.addAll(hobbyResultBean.getUserHobbies());
                    for (HobbyBean hobbyBean : hobbyResultBean.getUserHobbies()) {
                        if (hobbyBean.getType() == 1) {
                            hobbyBean.setSelect(true);
                            InterestsAndHobbiesActivity.this.f21204d.add(hobbyBean);
                        }
                    }
                }
                if (hobbyResultBean.getSysHobbies() != null && hobbyResultBean.getSysHobbies().size() > 0) {
                    for (HobbyBean hobbyBean2 : hobbyResultBean.getSysHobbies()) {
                        for (HobbyBean hobbyBean3 : hobbyResultBean.getUserHobbies()) {
                            if (hobbyBean2.getHobbyId() == hobbyBean3.getHobbyId()) {
                                hobbyBean2.setSelect(true);
                            }
                        }
                    }
                    InterestsAndHobbiesActivity.this.f21203c.addAll(hobbyResultBean.getSysHobbies());
                }
                InterestsAndHobbiesActivity interestsAndHobbiesActivity = InterestsAndHobbiesActivity.this;
                interestsAndHobbiesActivity.addData(new InterestsAndHobbiesBean(1, interestsAndHobbiesActivity.f21202b));
                InterestsAndHobbiesActivity interestsAndHobbiesActivity2 = InterestsAndHobbiesActivity.this;
                interestsAndHobbiesActivity2.addData(new InterestsAndHobbiesBean(2, interestsAndHobbiesActivity2.f21203c));
                InterestsAndHobbiesActivity interestsAndHobbiesActivity3 = InterestsAndHobbiesActivity.this;
                interestsAndHobbiesActivity3.addData(new InterestsAndHobbiesBean(3, interestsAndHobbiesActivity3.f21204d));
                InterestsAndHobbiesActivity.this.notifyDataLoaded(true);
            }
        }

        @Override // com.guochao.faceshow.aaspring.base.http.callback.c
        public void onFailure(@NonNull g7.a<HobbyResultBean> aVar) {
            InterestsAndHobbiesActivity.this.showEmptyView();
        }
    }

    /* loaded from: classes3.dex */
    class b implements v.e {
        b() {
        }

        @Override // com.guochao.faceshow.aaspring.views.v.e
        public void onClick(View view) {
            if (InterestsAndHobbiesActivity.this.getList() == null || InterestsAndHobbiesActivity.this.getList().size() <= 0) {
                return;
            }
            List<HobbyBean> hobbyBeans = InterestsAndHobbiesActivity.this.getList().get(0).getHobbyBeans();
            String str = "";
            if (hobbyBeans != null && !hobbyBeans.isEmpty()) {
                for (int i9 = 0; i9 < hobbyBeans.size(); i9++) {
                    str = i9 == hobbyBeans.size() - 1 ? str + hobbyBeans.get(i9).getHobbyId() : str + hobbyBeans.get(i9).getHobbyId() + ",";
                    InterestsAndHobbiesActivity.this.f21201a.add(hobbyBeans.get(i9).getTags());
                }
            }
            InterestsAndHobbiesActivity interestsAndHobbiesActivity = InterestsAndHobbiesActivity.this;
            interestsAndHobbiesActivity.o0(SpUtils.getStr(interestsAndHobbiesActivity, Contants.USER_ID), str);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class c implements com.guochao.faceshow.aaspring.modulars.personal.c {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ InterestsAndHobbiesBean f21210a;

        c(InterestsAndHobbiesBean interestsAndHobbiesBean) {
            this.f21210a = interestsAndHobbiesBean;
        }

        @Override // com.guochao.faceshow.aaspring.modulars.personal.c
        public void a(View view, int i9, int i10) {
            boolean z10 = false;
            if (i9 == 1) {
                HobbyBean hobbyBean = this.f21210a.getHobbyBeans().get(i10);
                List<HobbyBean> hobbyBeans = InterestsAndHobbiesActivity.this.getList().get(0).getHobbyBeans();
                boolean z11 = false;
                for (HobbyBean hobbyBean2 : InterestsAndHobbiesActivity.this.getList().get(0).getHobbyBeans()) {
                    if (hobbyBean.getHobbyId() == hobbyBean2.getHobbyId()) {
                        z11 = true;
                    }
                }
                if (z11) {
                    hobbyBeans.remove(hobbyBean);
                    for (HobbyBean hobbyBean3 : InterestsAndHobbiesActivity.this.getList().get(1).getHobbyBeans()) {
                        if (hobbyBean.getHobbyId() == hobbyBean3.getHobbyId()) {
                            hobbyBean3.setSelect(false);
                        }
                    }
                    for (HobbyBean hobbyBean4 : InterestsAndHobbiesActivity.this.getList().get(2).getHobbyBeans()) {
                        if (hobbyBean.getHobbyId() == hobbyBean4.getHobbyId()) {
                            hobbyBean4.setSelect(false);
                        }
                    }
                }
                if (InterestsAndHobbiesActivity.this.f21205e != null) {
                    InterestsAndHobbiesActivity.this.f21205e.notifyDataSetChanged();
                }
                if (InterestsAndHobbiesActivity.this.f21207g != null) {
                    InterestsAndHobbiesActivity.this.f21207g.notifyDataSetChanged();
                }
                if (InterestsAndHobbiesActivity.this.f21206f != null) {
                    InterestsAndHobbiesActivity.this.f21206f.notifyDataSetChanged();
                    return;
                }
                return;
            }
            HobbyBean hobbyBean5 = this.f21210a.getHobbyBeans().get(i10);
            List<HobbyBean> hobbyBeans2 = InterestsAndHobbiesActivity.this.getList().get(0).getHobbyBeans();
            for (HobbyBean hobbyBean6 : InterestsAndHobbiesActivity.this.getList().get(0).getHobbyBeans()) {
                if (hobbyBean5.getHobbyId() == hobbyBean6.getHobbyId()) {
                    z10 = true;
                }
            }
            if (!z10) {
                hobbyBeans2.add(hobbyBean5);
            }
            if (InterestsAndHobbiesActivity.this.f21205e != null) {
                InterestsAndHobbiesActivity.this.f21205e.notifyDataSetChanged();
            }
            if (InterestsAndHobbiesActivity.this.f21207g != null) {
                InterestsAndHobbiesActivity.this.f21207g.notifyDataSetChanged();
            }
            if (InterestsAndHobbiesActivity.this.f21206f != null) {
                InterestsAndHobbiesActivity.this.f21206f.notifyDataSetChanged();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class d implements View.OnClickListener {
        d() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            InterestsAndHobbiesActivity.this.startActivityForResult(CustomLabelActivity.class, 12);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class e extends com.guochao.faceshow.aaspring.base.http.callback.c<String> {
        e() {
        }

        @Override // com.guochao.faceshow.aaspring.base.http.callback.c
        public void onFailure(@NonNull g7.a<String> aVar) {
        }

        @Override // com.guochao.faceshow.aaspring.base.http.callback.c
        public void onResponse(@Nullable String str, @NonNull FaceCastBaseResponse<String> faceCastBaseResponse) {
            Iterator<String> it;
            Intent intent = new Intent();
            String str2 = "";
            while (InterestsAndHobbiesActivity.this.f21201a.iterator().hasNext()) {
                str2 = str2 + it.next() + " ";
            }
            intent.putExtra("hobbies", str2);
            intent.putExtra("hobbyList", (Serializable) InterestsAndHobbiesActivity.this.f21201a);
            MemoryCache.getInstance().put("hobbyBeans", InterestsAndHobbiesActivity.this.getList().get(0).getHobbyBeans());
            InterestsAndHobbiesActivity.this.setResult(55, intent);
            InterestsAndHobbiesActivity.this.finish();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void o0(String str, String str2) {
        post(Contants.UPDATE_USER_HOBBIES).D(Contants.USER_ID, str).D("hobbyIds", str2).M(new e());
    }

    @Override // com.guochao.faceshow.aaspring.base.activity.BaseActivity
    public com.guochao.faceshow.aaspring.base.activity.a getActivityConfig() {
        return new a.C0147a(this).e(false).d(false).a();
    }

    @Override // com.guochao.faceshow.aaspring.base.activity.BaseRecyclerViewActivity, com.guochao.faceshow.aaspring.base.activity.BaseActivity
    public int getLayoutId() {
        return R.layout.activity_interests_hobbies;
    }

    @Override // com.guochao.faceshow.aaspring.base.activity.BaseRecyclerViewActivity, com.guochao.faceshow.aaspring.base.activity.BaseActivity
    public void initView() {
        super.initView();
        setTitle(R.string.hobby);
        setEndText(getString(R.string.save), R.color.color_ugc_app_primary);
        v vVar = this.mTitleBarHelper;
        if (vVar != null) {
            vVar.setOnRightTextClickListener(new b());
        }
    }

    @Override // com.guochao.faceshow.aaspring.base.activity.BaseRecyclerViewActivity, d7.c
    public void loadData(int i9) {
        clearAll();
        post(Contants.GET_USER_TAG).M(new a());
    }

    @Override // com.guochao.faceshow.aaspring.base.activity.BaseRecyclerViewActivity, d7.a
    /* renamed from: m0 */
    public void convertItem(BaseViewHolder baseViewHolder, int i9, InterestsAndHobbiesBean interestsAndHobbiesBean) {
        TextView textView = (TextView) baseViewHolder.getView(R.id.tv_title_name);
        NestedRecyclerView nestedRecyclerView = (NestedRecyclerView) baseViewHolder.getView(R.id.des);
        View view = baseViewHolder.getView(R.id.view_line);
        ImageView imageView = (ImageView) baseViewHolder.getView(R.id.ivAddTag);
        if (interestsAndHobbiesBean.getType() == 1) {
            textView.setText(getString(R.string.hobby_selected_label));
            ((ViewGroup.MarginLayoutParams) textView.getLayoutParams()).topMargin = DensityUtil.dp2px(20.0f);
            imageView.setVisibility(8);
        } else {
            if (interestsAndHobbiesBean.getType() == 2) {
                textView.setText(getString(R.string.hobby));
                imageView.setVisibility(8);
                view.setVisibility(0);
            } else {
                textView.setText(getString(R.string.hobby_custom_label));
                imageView.setVisibility(0);
                view.setVisibility(8);
            }
            ((ViewGroup.MarginLayoutParams) textView.getLayoutParams()).topMargin = DensityUtil.dp2px(30.0f);
        }
        FlowAdapter flowAdapter = new FlowAdapter(getActivity(), interestsAndHobbiesBean.getType(), interestsAndHobbiesBean.getHobbyBeans());
        nestedRecyclerView.setLayoutManager(new FlowLayoutManager());
        nestedRecyclerView.addItemDecoration(new SpaceItemDecoration(DensityUtil.dp2px(5.0f)));
        nestedRecyclerView.setAdapter(flowAdapter);
        if (i9 == 0) {
            this.f21205e = flowAdapter;
        } else if (i9 == 2) {
            this.f21207g = flowAdapter;
        } else {
            this.f21206f = flowAdapter;
        }
        flowAdapter.c(new c(interestsAndHobbiesBean));
        imageView.setOnClickListener(new d());
    }

    @Override // com.guochao.faceshow.aaspring.base.activity.BaseRecyclerViewActivity
    /* renamed from: n0 */
    public void onItemClick(BaseViewHolder baseViewHolder, int i9, InterestsAndHobbiesBean interestsAndHobbiesBean) {
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.guochao.faceshow.aaspring.base.activity.BaseActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, android.app.Activity
    public void onActivityResult(int i9, int i10, Intent intent) {
        super.onActivityResult(i9, i10, intent);
        if (i10 != 23 || intent == null) {
            return;
        }
        String stringExtra = intent.getStringExtra("tag");
        int intExtra = intent.getIntExtra("tagId", 0);
        HobbyBean hobbyBean = new HobbyBean();
        hobbyBean.setHobbyId(intExtra);
        hobbyBean.setTags(stringExtra);
        hobbyBean.setSelect(true);
        this.f21204d.add(hobbyBean);
        this.f21202b.add(hobbyBean);
        FlowAdapter flowAdapter = this.f21207g;
        if (flowAdapter != null) {
            flowAdapter.notifyDataSetChanged();
        }
        FlowAdapter flowAdapter2 = this.f21205e;
        if (flowAdapter2 != null) {
            flowAdapter2.notifyDataSetChanged();
        }
    }

    @Override // com.guochao.faceshow.aaspring.base.adapter.BaseRecyclerAdapter.a
    @NonNull
    public BaseViewHolder onCreateViewHolder(@NonNull ViewGroup viewGroup, int i9) {
        return new BaseViewHolder(getLayoutInflater().inflate(R.layout.list_item_interests_hobbies, viewGroup, false));
    }
}
