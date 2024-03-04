package com.guochao.faceshow.mine.view;

import android.content.Intent;
import android.os.Bundle;
import android.util.Log;
import android.view.View;
import android.widget.ImageView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import butterknife.BindView;
import butterknife.OnClick;
import com.guochao.faceshow.R;
import com.guochao.faceshow.aaspring.base.activity.BaseActivity;
import com.guochao.faceshow.aaspring.base.http.response.FaceCastBaseResponse;
import com.guochao.faceshow.aaspring.utils.SpUtils;
import com.guochao.faceshow.aaspring.views.v;
import com.guochao.faceshow.mine.model.HobbyBean;
import com.guochao.faceshow.mine.model.HobbyResultBean;
import com.guochao.faceshow.utils.Contants;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import me.gujun.android.taggroup.TagGroup;
/* loaded from: classes4.dex */
public class HobbyActivity extends BaseActivity implements ya.a {

    /* renamed from: a  reason: collision with root package name */
    xa.a f25598a;

    /* renamed from: b  reason: collision with root package name */
    List<HobbyBean> f25599b = new ArrayList();

    /* renamed from: c  reason: collision with root package name */
    List<HobbyBean> f25600c = new ArrayList();

    /* renamed from: d  reason: collision with root package name */
    List<String> f25601d = new ArrayList();

    /* renamed from: e  reason: collision with root package name */
    List<String> f25602e = new ArrayList();

    /* renamed from: f  reason: collision with root package name */
    List<String> f25603f = new ArrayList();
    @BindView
    ImageView ivAddTag;
    @BindView
    TagGroup tagHobby;
    @BindView
    TagGroup tagSelectedLabel;

    /* loaded from: classes4.dex */
    class a implements v.e {
        a() {
        }

        @Override // com.guochao.faceshow.aaspring.views.v.e
        public void onClick(View view) {
            List<String> list = HobbyActivity.this.f25602e;
            String str = "";
            if (list != null && !list.isEmpty()) {
                for (int i9 = 0; i9 < HobbyActivity.this.f25602e.size(); i9++) {
                    str = i9 == HobbyActivity.this.f25602e.size() - 1 ? str + HobbyActivity.this.f25602e.get(i9) : str + HobbyActivity.this.f25602e.get(i9) + ",";
                }
            }
            Log.e("tag", str);
            HobbyActivity hobbyActivity = HobbyActivity.this;
            hobbyActivity.g0(SpUtils.getStr(hobbyActivity, Contants.USER_ID), str);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes4.dex */
    public class b implements TagGroup.e {
        b() {
        }

        @Override // me.gujun.android.taggroup.TagGroup.e
        public void a(String str) {
            HobbyActivity.this.f25598a.c(1, str);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes4.dex */
    public class c implements TagGroup.e {
        c() {
        }

        @Override // me.gujun.android.taggroup.TagGroup.e
        public void a(String str) {
            HobbyActivity.this.f25598a.c(2, str);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes4.dex */
    public class d extends com.guochao.faceshow.aaspring.base.http.callback.c<String> {
        d() {
        }

        @Override // com.guochao.faceshow.aaspring.base.http.callback.c
        public void onFailure(@NonNull g7.a<String> aVar) {
        }

        @Override // com.guochao.faceshow.aaspring.base.http.callback.c
        public void onResponse(@Nullable String str, @NonNull FaceCastBaseResponse<String> faceCastBaseResponse) {
            Iterator<String> it;
            Intent intent = new Intent();
            String str2 = "";
            while (HobbyActivity.this.f25601d.iterator().hasNext()) {
                str2 = str2 + it.next() + " ";
            }
            intent.putExtra("hobbies", str2);
            intent.putExtra("hobbyList", (Serializable) HobbyActivity.this.f25601d);
            HobbyActivity.this.setResult(55, intent);
            HobbyActivity.this.finish();
        }
    }

    private void d0() {
        this.tagHobby.setOnTagClickListener(new b());
        this.tagSelectedLabel.setOnTagClickListener(new c());
    }

    private void e0() {
        xa.a aVar = new xa.a(this);
        this.f25598a = aVar;
        aVar.b(this, SpUtils.getStr(this, Contants.USER_ID));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void g0(String str, String str2) {
        post(Contants.UPDATE_USER_HOBBIES).D(Contants.USER_ID, str).D("hobbyIds", str2).M(new d());
    }

    @Override // ya.a
    public void J() {
        startActivityForResult(CustomLabelActivity.class, 12);
    }

    @Override // ya.a
    public void Q(String str) {
        List<String> list = this.f25601d;
        if (list == null || list.size() <= 0) {
            return;
        }
        this.f25601d.remove(str);
        int i9 = 0;
        int i10 = 0;
        while (true) {
            if (i10 >= this.f25600c.size()) {
                break;
            } else if (this.f25600c.get(i10).getTags().equals(str)) {
                i9 = i10;
                break;
            } else {
                i10++;
            }
        }
        List<String> list2 = this.f25602e;
        list2.remove(this.f25600c.get(i9).getHobbyId() + "");
        this.tagSelectedLabel.setTags(this.f25601d);
    }

    @Override // ya.a
    public void e(String str) {
        List<String> list = this.f25601d;
        if (list == null || !list.contains(str)) {
            this.f25601d.add(str);
            int i9 = 0;
            int i10 = 0;
            while (true) {
                if (i10 >= this.f25600c.size()) {
                    break;
                } else if (this.f25600c.get(i10).getTags().equals(str)) {
                    i9 = i10;
                    break;
                } else {
                    i10++;
                }
            }
            List<String> list2 = this.f25602e;
            list2.add(this.f25600c.get(i9).getHobbyId() + "");
            this.tagSelectedLabel.setTags(this.f25601d);
        }
    }

    @Override // com.guochao.faceshow.aaspring.base.activity.BaseActivity
    public int getLayoutId() {
        return R.layout.activity_hobby;
    }

    @Override // com.guochao.faceshow.aaspring.base.activity.BaseActivity
    public void initView() {
        setEndText(getString(R.string.save), R.color.color_ugc_app_primary);
        v vVar = this.mTitleBarHelper;
        if (vVar != null) {
            vVar.setOnRightTextClickListener(new a());
        }
    }

    @Override // ya.a
    public void j(HobbyResultBean hobbyResultBean) {
        List<String> list;
        List<String> list2;
        if (hobbyResultBean != null) {
            this.f25599b = hobbyResultBean.getUserHobbies();
            this.f25600c = hobbyResultBean.getSysHobbies();
            List<HobbyBean> list3 = this.f25599b;
            if (list3 != null && !list3.isEmpty()) {
                for (int i9 = 0; i9 < this.f25599b.size(); i9++) {
                    this.f25601d.add(this.f25599b.get(i9).getTags());
                    List<String> list4 = this.f25602e;
                    list4.add(this.f25599b.get(i9).getHobbyId() + "");
                }
                if (this.tagSelectedLabel != null && (list2 = this.f25601d) != null && !list2.isEmpty()) {
                    this.tagSelectedLabel.setTags(this.f25601d);
                }
            }
            List<HobbyBean> list5 = this.f25600c;
            if (list5 == null || list5.isEmpty()) {
                return;
            }
            for (int i10 = 0; i10 < this.f25600c.size(); i10++) {
                this.f25603f.add(this.f25600c.get(i10).getTags());
            }
            if (this.tagHobby == null || (list = this.f25603f) == null || list.isEmpty()) {
                return;
            }
            this.tagHobby.setTags(this.f25603f);
        }
    }

    @Override // com.guochao.faceshow.aaspring.base.activity.BaseActivity
    public void loadData() {
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
        this.f25603f.add(stringExtra);
        HobbyBean hobbyBean = new HobbyBean();
        hobbyBean.setHobbyId(intExtra);
        hobbyBean.setTags(stringExtra);
        this.f25600c.add(hobbyBean);
        this.tagHobby.setTags(this.f25603f);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.guochao.faceshow.aaspring.base.activity.BaseActivity, com.guochao.faceshow.aaspring.base.mvvm.activity.GCCoreActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setTitle(R.string.hobby);
        e0();
        d0();
    }

    @OnClick
    public void onViewClicked() {
        this.f25598a.a();
    }
}
