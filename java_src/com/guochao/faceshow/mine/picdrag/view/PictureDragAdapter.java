package com.guochao.faceshow.mine.picdrag.view;

import android.content.Context;
import android.graphics.drawable.Drawable;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.cardview.widget.CardView;
import androidx.recyclerview.widget.ItemTouchHelper;
import androidx.recyclerview.widget.RecyclerView;
import com.guochao.faceshow.R;
import com.guochao.faceshow.aaspring.beans.UserPageBaseData;
import com.guochao.faceshow.utils.DensityUtil;
import com.guochao.faceshow.utils.FaceImageUtils;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.CopyOnWriteArrayList;
/* loaded from: classes4.dex */
public class PictureDragAdapter extends RecyclerView.Adapter<b> {

    /* renamed from: a  reason: collision with root package name */
    private List<UserPageBaseData.CoverData> f25447a;

    /* renamed from: b  reason: collision with root package name */
    private Context f25448b;

    /* renamed from: c  reason: collision with root package name */
    private a f25449c;

    /* renamed from: d  reason: collision with root package name */
    private int f25450d = 8;

    /* renamed from: e  reason: collision with root package name */
    public boolean f25451e = true;

    /* renamed from: f  reason: collision with root package name */
    private UserPageBaseData.CoverData f25452f;

    /* loaded from: classes4.dex */
    public interface a {
        void a(int i9, View view, int i10, UserPageBaseData.CoverData coverData);

        void b(int i9, View view, int i10, UserPageBaseData.CoverData coverData);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes4.dex */
    public class b extends RecyclerView.ViewHolder {

        /* renamed from: a  reason: collision with root package name */
        ImageView f25453a;

        /* renamed from: b  reason: collision with root package name */
        TextView f25454b;

        /* renamed from: c  reason: collision with root package name */
        CardView f25455c;

        /* renamed from: d  reason: collision with root package name */
        View f25456d;

        /* renamed from: e  reason: collision with root package name */
        ImageView f25457e;

        /* JADX INFO: Access modifiers changed from: package-private */
        /* loaded from: classes4.dex */
        public class a implements View.OnClickListener {

            /* renamed from: a  reason: collision with root package name */
            final /* synthetic */ int f25459a;

            /* renamed from: b  reason: collision with root package name */
            final /* synthetic */ UserPageBaseData.CoverData f25460b;

            a(int i9, UserPageBaseData.CoverData coverData) {
                this.f25459a = i9;
                this.f25460b = coverData;
            }

            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                if (PictureDragAdapter.this.f25449c != null) {
                    PictureDragAdapter.this.f25449c.a(PictureDragAdapter.this.f25447a == null ? 0 : PictureDragAdapter.this.f25447a.size(), view, this.f25459a, this.f25460b);
                }
            }
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        /* renamed from: com.guochao.faceshow.mine.picdrag.view.PictureDragAdapter$b$b  reason: collision with other inner class name */
        /* loaded from: classes4.dex */
        public class View$OnClickListenerC0250b implements View.OnClickListener {

            /* renamed from: a  reason: collision with root package name */
            final /* synthetic */ int f25462a;

            /* renamed from: b  reason: collision with root package name */
            final /* synthetic */ UserPageBaseData.CoverData f25463b;

            View$OnClickListenerC0250b(int i9, UserPageBaseData.CoverData coverData) {
                this.f25462a = i9;
                this.f25463b = coverData;
            }

            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                if (PictureDragAdapter.this.f25449c != null) {
                    PictureDragAdapter.this.f25449c.b(PictureDragAdapter.this.f25447a == null ? 0 : PictureDragAdapter.this.f25447a.size(), view, this.f25462a, this.f25463b);
                }
            }
        }

        public b(View view) {
            super(view);
            this.f25453a = (ImageView) view.findViewById(R.id.edit_view_item_image);
            this.f25457e = (ImageView) view.findViewById(R.id.deleteIV);
            this.f25454b = (TextView) view.findViewById(R.id.edit_view_item_solid_cover_text);
            this.f25455c = (CardView) view.findViewById(R.id.foreground);
            this.f25456d = view.findViewById(R.id.illegal);
        }

        public void c(UserPageBaseData.CoverData coverData, int i9) {
            this.f25456d.setVisibility((!coverData.isIllegal() || coverData.localType == -3) ? 8 : 0);
            if (i9 == 0 && coverData.localType != -3) {
                this.f25454b.setVisibility(0);
                this.f25455c.setForeground(FaceImageUtils.createDrawable(PictureDragAdapter.this.f25448b.getResources().getColor(R.color.transparent), DensityUtil.dp2px(2.0f), PictureDragAdapter.this.f25448b.getResources().getColor(R.color.app_blue), DensityUtil.dp2px(4.0f)));
                this.f25454b.setText(R.string.portrait);
            } else {
                this.f25455c.setForeground(null);
                this.f25454b.setVisibility(8);
            }
            PictureDragAdapter pictureDragAdapter = PictureDragAdapter.this;
            if (pictureDragAdapter.f25451e && coverData.localType != -3) {
                if (pictureDragAdapter.getItemCount() == 2) {
                    this.f25457e.setVisibility(4);
                } else {
                    this.f25457e.setVisibility(0);
                }
            } else {
                this.f25457e.setVisibility(8);
            }
            if (coverData.localType == -3) {
                this.f25453a.setImageResource(R.mipmap.ugc_publish_add);
            } else if (!TextUtils.isEmpty(coverData.imgUrl) && coverData.imgUrl.endsWith(".gif")) {
                ic.a.b(PictureDragAdapter.this.f25448b).r(coverData.imgUrl).d0(Drawable.createFromPath(coverData.imagePath)).Q0(this.f25453a);
            } else {
                ic.a.b(PictureDragAdapter.this.f25448b).r(coverData.smallImg).d0(Drawable.createFromPath(coverData.imagePath)).Q0(this.f25453a);
            }
            this.f25453a.setOnClickListener(new a(i9, coverData));
            this.f25457e.setOnClickListener(new View$OnClickListenerC0250b(i9, coverData));
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public PictureDragAdapter(Context context, ItemTouchHelper itemTouchHelper) {
        this.f25448b = context;
    }

    private UserPageBaseData.CoverData f() {
        if (this.f25452f == null) {
            UserPageBaseData.CoverData coverData = new UserPageBaseData.CoverData();
            this.f25452f = coverData;
            coverData.localType = -3;
        }
        return this.f25452f;
    }

    public void d(UserPageBaseData.CoverData coverData) {
        if (this.f25447a.contains(coverData)) {
            List<UserPageBaseData.CoverData> list = this.f25447a;
            UserPageBaseData.CoverData coverData2 = list.get(list.size() - 1);
            this.f25447a.remove(coverData);
            if (this.f25447a.size() == 7 && coverData2.localType == -2) {
                this.f25447a.add(f());
            }
            notifyDataSetChanged();
        }
    }

    public List<Integer> e() {
        UserPageBaseData.CoverData coverData;
        List<UserPageBaseData.CoverData> list = this.f25447a;
        if (list == null || list.size() <= 1) {
            return null;
        }
        ArrayList arrayList = new ArrayList();
        for (int i9 = 0; i9 < this.f25447a.size(); i9++) {
            if (this.f25447a.get(i9).localType != -3 && (coverData = this.f25447a.get(i9)) != null) {
                arrayList.add(Integer.valueOf(coverData.imgId));
            }
        }
        if (arrayList.size() == 0) {
            return null;
        }
        return arrayList;
    }

    public int g() {
        if (this.f25447a == null) {
            return 0;
        }
        int i9 = 0;
        for (int i10 = 0; i10 < this.f25447a.size(); i10++) {
            if (this.f25447a.get(i10).localType == -2) {
                i9++;
            }
        }
        return i9;
    }

    public List<UserPageBaseData.CoverData> getData() {
        return this.f25447a;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public int getItemCount() {
        List<UserPageBaseData.CoverData> list = this.f25447a;
        if (list == null) {
            return 0;
        }
        return list.size();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public int getItemViewType(int i9) {
        return this.f25447a.get(i9).localType;
    }

    public void h(UserPageBaseData.CoverData coverData, UserPageBaseData.CoverData coverData2) {
        if (this.f25447a.contains(coverData)) {
            this.f25447a.add(this.f25447a.indexOf(coverData), coverData2);
            if (this.f25447a.size() == this.f25450d + 1) {
                this.f25452f = coverData;
                this.f25447a.remove(coverData);
            }
            notifyDataSetChanged();
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    /* renamed from: i */
    public void onBindViewHolder(b bVar, int i9) {
        bVar.c(this.f25447a.get(i9), i9);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    /* renamed from: j */
    public b onCreateViewHolder(ViewGroup viewGroup, int i9) {
        return new b(LayoutInflater.from(this.f25448b).inflate(R.layout.picture_edit_view_item, viewGroup, false));
    }

    public void setData(List<UserPageBaseData.CoverData> list) {
        if (this.f25447a == null) {
            this.f25447a = new CopyOnWriteArrayList();
        }
        this.f25447a.clear();
        if (list != null) {
            this.f25447a.addAll(list);
        }
        for (int i9 = 0; i9 < this.f25447a.size(); i9++) {
            this.f25447a.get(i9).localType = -2;
        }
        if (this.f25447a.size() < this.f25450d) {
            this.f25447a.add(f());
        } else {
            int size = this.f25447a.size();
            int i10 = this.f25450d;
            if (size > i10) {
                this.f25447a = list == null ? this.f25447a : list.subList(0, i10);
            }
        }
        notifyDataSetChanged();
    }

    public void setOnItemClickListener(a aVar) {
        this.f25449c = aVar;
    }
}
