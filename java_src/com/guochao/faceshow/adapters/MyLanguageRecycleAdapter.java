package com.guochao.faceshow.adapters;

import android.app.Activity;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.CheckBox;
import android.widget.CompoundButton;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.recyclerview.widget.RecyclerView;
import com.guochao.faceshow.R;
import com.guochao.faceshow.aaspring.beans.MultiLanguageBean;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes3.dex */
public class MyLanguageRecycleAdapter extends RecyclerView.Adapter<b> {

    /* renamed from: a  reason: collision with root package name */
    private int f25052a;

    /* renamed from: b  reason: collision with root package name */
    private View f25053b;

    /* renamed from: c  reason: collision with root package name */
    private List<MultiLanguageBean> f25054c;

    /* renamed from: d  reason: collision with root package name */
    private Activity f25055d;

    /* renamed from: e  reason: collision with root package name */
    private List<MultiLanguageBean> f25056e;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class a implements CompoundButton.OnCheckedChangeListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ MultiLanguageBean f25057a;

        a(MultiLanguageBean multiLanguageBean) {
            this.f25057a = multiLanguageBean;
        }

        @Override // android.widget.CompoundButton.OnCheckedChangeListener
        public void onCheckedChanged(CompoundButton compoundButton, boolean z10) {
            if (z10) {
                if (!MyLanguageRecycleAdapter.this.f25056e.contains(this.f25057a)) {
                    MyLanguageRecycleAdapter.this.f25056e.add(this.f25057a);
                    return;
                } else {
                    MyLanguageRecycleAdapter.this.f25056e.remove(this.f25057a);
                    return;
                }
            }
            MyLanguageRecycleAdapter.this.f25056e.remove(this.f25057a);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class b extends RecyclerView.ViewHolder {

        /* renamed from: a  reason: collision with root package name */
        public ImageView f25059a;

        /* renamed from: b  reason: collision with root package name */
        public TextView f25060b;

        /* renamed from: c  reason: collision with root package name */
        public CheckBox f25061c;

        b(View view) {
            super(view);
            this.f25060b = (TextView) MyLanguageRecycleAdapter.this.f25053b.findViewById(R.id.tvName);
            this.f25059a = (ImageView) MyLanguageRecycleAdapter.this.f25053b.findViewById(R.id.ivImg);
            this.f25061c = (CheckBox) MyLanguageRecycleAdapter.this.f25053b.findViewById(R.id.checkbox);
        }
    }

    public MyLanguageRecycleAdapter(Activity activity, int i9, List<MultiLanguageBean> list, List<MultiLanguageBean> list2) {
        ArrayList arrayList = new ArrayList();
        this.f25056e = arrayList;
        this.f25054c = list;
        arrayList.addAll(list2);
        this.f25052a = i9;
        this.f25055d = activity;
    }

    public List<MultiLanguageBean> c() {
        return this.f25056e;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    /* renamed from: d */
    public void onBindViewHolder(b bVar, int i9) {
        MultiLanguageBean multiLanguageBean = this.f25054c.get(i9);
        bVar.f25059a.setVisibility(8);
        bVar.f25060b.setText(multiLanguageBean.getLanguage());
        bVar.f25061c.setChecked(false);
        if (this.f25056e.contains(multiLanguageBean)) {
            bVar.f25061c.setChecked(true);
        } else {
            bVar.f25061c.setChecked(false);
        }
        bVar.f25061c.setOnCheckedChangeListener(new a(multiLanguageBean));
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    /* renamed from: e */
    public b onCreateViewHolder(ViewGroup viewGroup, int i9) {
        this.f25053b = LayoutInflater.from(this.f25055d).inflate(this.f25052a, viewGroup, false);
        return new b(this.f25053b);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public int getItemCount() {
        return this.f25054c.size();
    }

    public void resetData(List<MultiLanguageBean> list) {
        this.f25054c.clear();
        this.f25054c.addAll(list);
        notifyDataSetChanged();
    }
}
