package com.guochao.faceshow.activity;

import android.content.Context;
import android.os.Bundle;
import android.os.Handler;
import android.os.Message;
import android.text.TextUtils;
import android.view.View;
import android.widget.CheckedTextView;
import android.widget.ListAdapter;
import android.widget.ListView;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.guochao.faceshow.R;
import com.guochao.faceshow.aaspring.base.fragment.BaseDialogFragment;
import com.guochao.faceshow.aaspring.base.http.response.FaceCastBaseResponse;
import com.guochao.faceshow.aaspring.utils.ToastUtils;
import com.guochao.faceshow.bean.OccupationBean;
import com.guochao.faceshow.bean.OccupationChildBean;
import com.guochao.faceshow.utils.AAComAdapter;
import com.guochao.faceshow.utils.AAViewHolder;
import com.guochao.faceshow.utils.Contants;
import java.util.List;
/* loaded from: classes3.dex */
public class OccupationActivity extends BaseDialogFragment {

    /* renamed from: a  reason: collision with root package name */
    private ListView f24708a;

    /* renamed from: b  reason: collision with root package name */
    private ListView f24709b;

    /* renamed from: c  reason: collision with root package name */
    private AAComAdapter<OccupationBean> f24710c;

    /* renamed from: d  reason: collision with root package name */
    private AAComAdapter<OccupationChildBean> f24711d;

    /* renamed from: e  reason: collision with root package name */
    private CheckedTextView f24712e;

    /* renamed from: f  reason: collision with root package name */
    private CheckedTextView f24713f;

    /* renamed from: g  reason: collision with root package name */
    private TextView f24714g;

    /* renamed from: h  reason: collision with root package name */
    g f24715h;

    /* renamed from: j  reason: collision with root package name */
    private List<OccupationBean> f24717j;

    /* renamed from: m  reason: collision with root package name */
    private String f24720m;

    /* renamed from: n  reason: collision with root package name */
    private String f24721n;

    /* renamed from: i  reason: collision with root package name */
    private Handler f24716i = new a();

    /* renamed from: k  reason: collision with root package name */
    private int f24718k = 0;

    /* renamed from: l  reason: collision with root package name */
    private int f24719l = -1;

    /* loaded from: classes3.dex */
    class a extends Handler {
        a() {
        }

        @Override // android.os.Handler
        public void handleMessage(Message message) {
            OccupationActivity.this.f24711d.resetData(((OccupationBean) OccupationActivity.this.f24717j.get(message.what)).children);
        }
    }

    /* loaded from: classes3.dex */
    class b implements View.OnClickListener {
        b() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            OccupationActivity.this.dismissAllowingStateLoss();
        }
    }

    /* loaded from: classes3.dex */
    class c implements View.OnClickListener {
        c() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            if (TextUtils.isEmpty(OccupationActivity.this.f24721n)) {
                ToastUtils.showToast(OccupationActivity.this.getActivity(), OccupationActivity.this.getString(R.string.choose_occupation));
                return;
            }
            OccupationActivity occupationActivity = OccupationActivity.this;
            g gVar = occupationActivity.f24715h;
            if (gVar != null) {
                gVar.a(occupationActivity.f24721n, OccupationActivity.this.f24720m);
            }
            OccupationActivity.this.dismissAllowingStateLoss();
        }
    }

    /* loaded from: classes3.dex */
    class d extends AAComAdapter<OccupationBean> {

        /* JADX INFO: Access modifiers changed from: package-private */
        /* loaded from: classes3.dex */
        public class a implements View.OnClickListener {

            /* renamed from: a  reason: collision with root package name */
            final /* synthetic */ int f24726a;

            /* renamed from: b  reason: collision with root package name */
            final /* synthetic */ CheckedTextView f24727b;

            a(int i9, CheckedTextView checkedTextView) {
                this.f24726a = i9;
                this.f24727b = checkedTextView;
            }

            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                if (this.f24726a != OccupationActivity.this.f24718k) {
                    this.f24727b.setChecked(true);
                    if (OccupationActivity.this.f24712e != null) {
                        OccupationActivity.this.f24712e.setChecked(false);
                    }
                    OccupationActivity.this.f24712e = this.f24727b;
                    OccupationActivity.this.f24718k = this.f24726a;
                    OccupationActivity.this.f24716i.sendEmptyMessage(OccupationActivity.this.f24718k);
                    OccupationActivity.this.f24719l = -1;
                    OccupationActivity.this.f24714g.setEnabled(false);
                }
            }
        }

        d(Context context, int i9) {
            super(context, i9);
        }

        @Override // com.guochao.faceshow.utils.AAComAdapter
        /* renamed from: a */
        public void convert(AAViewHolder aAViewHolder, OccupationBean occupationBean) {
            aAViewHolder.setText(R.id.item_category_menu_tv, occupationBean.infoName);
            int position = aAViewHolder.getPosition();
            CheckedTextView checkedTextView = (CheckedTextView) aAViewHolder.getView(R.id.item_category_menu_tv);
            if (OccupationActivity.this.f24718k == position) {
                checkedTextView.setChecked(true);
                OccupationActivity.this.f24712e = checkedTextView;
                OccupationActivity.this.f24716i.sendEmptyMessage(OccupationActivity.this.f24718k);
            } else {
                checkedTextView.setChecked(false);
            }
            aAViewHolder.getView(R.id.item).setOnClickListener(new a(position, checkedTextView));
        }
    }

    /* loaded from: classes3.dex */
    class e extends AAComAdapter<OccupationChildBean> {

        /* JADX INFO: Access modifiers changed from: package-private */
        /* loaded from: classes3.dex */
        public class a implements View.OnClickListener {

            /* renamed from: a  reason: collision with root package name */
            final /* synthetic */ int f24730a;

            /* renamed from: b  reason: collision with root package name */
            final /* synthetic */ CheckedTextView f24731b;

            /* renamed from: c  reason: collision with root package name */
            final /* synthetic */ OccupationChildBean f24732c;

            a(int i9, CheckedTextView checkedTextView, OccupationChildBean occupationChildBean) {
                this.f24730a = i9;
                this.f24731b = checkedTextView;
                this.f24732c = occupationChildBean;
            }

            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                if (this.f24730a != OccupationActivity.this.f24719l) {
                    this.f24731b.setChecked(true);
                    OccupationActivity occupationActivity = OccupationActivity.this;
                    occupationActivity.f24721n = this.f24732c.infoId + "";
                    OccupationActivity.this.f24720m = this.f24732c.infoName;
                    if (OccupationActivity.this.f24713f != null) {
                        OccupationActivity.this.f24713f.setChecked(false);
                        OccupationActivity.this.f24719l = this.f24730a;
                    }
                    OccupationActivity.this.f24713f = this.f24731b;
                    OccupationActivity.this.f24719l = this.f24730a;
                    OccupationActivity.this.f24714g.setEnabled(true);
                }
            }
        }

        e(Context context, int i9) {
            super(context, i9);
        }

        @Override // com.guochao.faceshow.utils.AAComAdapter
        /* renamed from: a */
        public void convert(AAViewHolder aAViewHolder, OccupationChildBean occupationChildBean) {
            aAViewHolder.setText(R.id.item_category_menu_tv, occupationChildBean.infoName);
            int position = aAViewHolder.getPosition();
            CheckedTextView checkedTextView = (CheckedTextView) aAViewHolder.getView(R.id.item_category_menu_tv);
            if (OccupationActivity.this.f24719l == position) {
                checkedTextView.setChecked(true);
                OccupationActivity.this.f24713f = checkedTextView;
            } else {
                checkedTextView.setChecked(false);
            }
            aAViewHolder.getView(R.id.item_category_menu_tv).setOnClickListener(new a(position, checkedTextView, occupationChildBean));
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class f extends com.guochao.faceshow.aaspring.base.http.callback.c<List<OccupationBean>> {
        f() {
        }

        @Override // com.guochao.faceshow.aaspring.base.http.callback.c
        public void onFailure(@NonNull g7.a<List<OccupationBean>> aVar) {
        }

        @Override // com.guochao.faceshow.aaspring.base.http.callback.c
        public void onResponse(@Nullable List<OccupationBean> list, @NonNull FaceCastBaseResponse<List<OccupationBean>> faceCastBaseResponse) {
            OccupationActivity.this.f24717j = list;
            OccupationActivity.this.f24710c.resetData(OccupationActivity.this.f24717j);
        }
    }

    /* loaded from: classes3.dex */
    public interface g {
        void a(String str, String str2);
    }

    public static OccupationActivity h2(String str, g gVar) {
        OccupationActivity occupationActivity = new OccupationActivity();
        Bundle bundle = new Bundle();
        bundle.putString("language", str);
        occupationActivity.setArguments(bundle);
        occupationActivity.f24715h = gVar;
        return occupationActivity;
    }

    @Override // com.guochao.faceshow.aaspring.base.fragment.BaseDialogFragment
    protected int getDialogStyle() {
        return R.style.BottomDialog_FullScreenTransparent;
    }

    @Override // com.guochao.faceshow.aaspring.base.fragment.BaseFragment
    public int getLayoutId() {
        return R.layout.activity_occupation;
    }

    public void i2() {
        post(Contants.jobInfoList).M(new f());
    }

    @Override // com.guochao.faceshow.aaspring.base.fragment.BaseFragment
    public void initView(View view) {
        this.f24708a = (ListView) view.findViewById(R.id.oc_type);
        this.f24709b = (ListView) view.findViewById(R.id.acc_list);
        this.f24714g = (TextView) view.findViewById(R.id.save);
        ((TextView) view.findViewById(R.id.tv_title)).setText(getString(R.string.choose_occupation));
        view.findViewById(R.id.close).setOnClickListener(new b());
        view.findViewById(R.id.save).setOnClickListener(new c());
        d dVar = new d(getContext(), R.layout.item_category_menu_parent);
        this.f24710c = dVar;
        this.f24708a.setAdapter((ListAdapter) dVar);
        e eVar = new e(getContext(), R.layout.item_category_menu);
        this.f24711d = eVar;
        this.f24709b.setAdapter((ListAdapter) eVar);
    }

    @Override // com.guochao.faceshow.aaspring.base.fragment.BaseFragment
    public void loadData() {
        i2();
    }
}
