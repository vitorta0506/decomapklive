package com.guochao.faceshow.adapters;

import android.app.Activity;
import android.content.Intent;
import android.os.Parcelable;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.LinearLayout;
import androidx.core.app.ActivityOptionsCompat;
import androidx.core.content.ContextCompat;
import androidx.recyclerview.widget.RecyclerView;
import com.guochao.faceshow.ImageBrowse.BigImageActivity;
import com.guochao.faceshow.R;
import com.guochao.faceshow.aaspring.beans.LocalImageOrVideoBean;
import com.guochao.faceshow.aaspring.modulars.ugc.publish.activity.SimpleMediaActivity;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes3.dex */
public class ReportRecycleAdapter extends RecyclerView.Adapter<c> {

    /* renamed from: a  reason: collision with root package name */
    private int f25063a;

    /* renamed from: b  reason: collision with root package name */
    private View f25064b;

    /* renamed from: c  reason: collision with root package name */
    private List<LocalImageOrVideoBean> f25065c;

    /* renamed from: d  reason: collision with root package name */
    private Activity f25066d;

    /* renamed from: e  reason: collision with root package name */
    private e f25067e;

    /* renamed from: f  reason: collision with root package name */
    private boolean f25068f;

    /* renamed from: g  reason: collision with root package name */
    private d f25069g;

    /* renamed from: h  reason: collision with root package name */
    boolean f25070h = false;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class a implements View.OnClickListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ int f25071a;

        a(int i9) {
            this.f25071a = i9;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            if (this.f25071a != 0 || ReportRecycleAdapter.this.f25070h) {
                ReportRecycleAdapter.this.f25065c.remove(this.f25071a);
                if (!"add_com_guochao".equals(((LocalImageOrVideoBean) ReportRecycleAdapter.this.f25065c.get(ReportRecycleAdapter.this.f25065c.size() - 1)).getPath())) {
                    LocalImageOrVideoBean localImageOrVideoBean = new LocalImageOrVideoBean(1);
                    localImageOrVideoBean.setPath("add_com_guochao");
                    ReportRecycleAdapter.this.f25065c.add(localImageOrVideoBean);
                }
                ReportRecycleAdapter.this.notifyDataSetChanged();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class b implements View.OnClickListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ LocalImageOrVideoBean f25073a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ int f25074b;

        b(LocalImageOrVideoBean localImageOrVideoBean, int i9) {
            this.f25073a = localImageOrVideoBean;
            this.f25074b = i9;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            int i9 = 0;
            if (this.f25073a.getPath().equals("add_com_guochao")) {
                ArrayList arrayList = new ArrayList();
                while (i9 < ReportRecycleAdapter.this.f25065c.size()) {
                    if (!this.f25073a.getPath().equals("add_com_guochao")) {
                        arrayList.add(((LocalImageOrVideoBean) ReportRecycleAdapter.this.f25065c.get(i9)).getPath());
                    }
                    i9++;
                }
                SimpleMediaActivity.i0(ReportRecycleAdapter.this.f25066d, arrayList, (10 - ReportRecycleAdapter.this.f25065c.size()) - 1, 100);
                return;
            }
            int size = ReportRecycleAdapter.this.f25065c.size();
            if (size < 10 && ReportRecycleAdapter.this.f25068f) {
                size--;
            }
            ArrayList<? extends Parcelable> arrayList2 = new ArrayList<>();
            while (i9 < size) {
                if (!this.f25073a.getPath().equals("add_com_guochao")) {
                    arrayList2.add(((LocalImageOrVideoBean) ReportRecycleAdapter.this.f25065c.get(i9)).getDisplayUri());
                }
                i9++;
            }
            Intent intent = new Intent(ReportRecycleAdapter.this.f25066d, BigImageActivity.class);
            intent.putParcelableArrayListExtra("image_urls", arrayList2);
            intent.putExtra("image_index", this.f25074b);
            try {
                ContextCompat.startActivity(ReportRecycleAdapter.this.f25066d, intent, ActivityOptionsCompat.makeSceneTransitionAnimation(ReportRecycleAdapter.this.f25066d, view, "img").toBundle());
            } catch (IllegalArgumentException e10) {
                e10.printStackTrace();
                ReportRecycleAdapter.this.f25066d.startActivity(intent);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class c extends RecyclerView.ViewHolder {

        /* renamed from: a  reason: collision with root package name */
        public ImageView f25076a;

        /* renamed from: b  reason: collision with root package name */
        public ImageView f25077b;

        /* renamed from: c  reason: collision with root package name */
        public LinearLayout f25078c;

        c(View view) {
            super(view);
            this.f25077b = (ImageView) ReportRecycleAdapter.this.f25064b.findViewById(R.id.delete);
            this.f25076a = (ImageView) ReportRecycleAdapter.this.f25064b.findViewById(R.id.lift_iv);
            this.f25078c = (LinearLayout) ReportRecycleAdapter.this.f25064b.findViewById(R.id.item);
        }
    }

    /* loaded from: classes3.dex */
    public interface d {
    }

    /* loaded from: classes3.dex */
    public interface e {
    }

    public ReportRecycleAdapter(Activity activity, int i9, List<LocalImageOrVideoBean> list, e eVar, boolean z10) {
        this.f25065c = list;
        this.f25063a = i9;
        this.f25066d = activity;
        this.f25067e = eVar;
        this.f25068f = z10;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    /* renamed from: e */
    public void onBindViewHolder(c cVar, int i9) {
        LocalImageOrVideoBean localImageOrVideoBean = this.f25065c.get(i9);
        if (localImageOrVideoBean.getPath().equals("add_com_guochao")) {
            cVar.f25076a.setImageResource(R.mipmap.upload_pic);
            cVar.f25077b.setVisibility(8);
        } else {
            cVar.f25077b.setVisibility(0);
            hc.a.r(cVar.f25076a, localImageOrVideoBean.getDisplayUri(), R.mipmap.default_goods, 6);
        }
        cVar.f25077b.setOnClickListener(new a(i9));
        cVar.f25078c.setOnClickListener(new b(localImageOrVideoBean, i9));
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    /* renamed from: f */
    public c onCreateViewHolder(ViewGroup viewGroup, int i9) {
        this.f25064b = LayoutInflater.from(this.f25066d).inflate(this.f25063a, (ViewGroup) null);
        return new c(this.f25064b);
    }

    public void g(boolean z10) {
        this.f25070h = z10;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public int getItemCount() {
        return this.f25065c.size();
    }

    public void setOnItemListener(d dVar) {
        this.f25069g = dVar;
    }
}
