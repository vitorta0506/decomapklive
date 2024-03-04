package com.guochao.faceshow.adapter;

import android.graphics.Bitmap;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import androidx.recyclerview.widget.RecyclerView;
import com.guochao.faceshow.R;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes3.dex */
public class ThumbnailAdapter extends RecyclerView.Adapter<a> {

    /* renamed from: a  reason: collision with root package name */
    private int f25021a;

    /* renamed from: b  reason: collision with root package name */
    private int f25022b;

    /* renamed from: c  reason: collision with root package name */
    private List<Bitmap> f25023c;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class a extends RecyclerView.ViewHolder {

        /* renamed from: a  reason: collision with root package name */
        ImageView f25024a;

        public a(View view) {
            super(view);
        }
    }

    public ThumbnailAdapter(int i9, List<Bitmap> list) {
        this.f25021a = i9;
        if (list == null) {
            this.f25023c = new ArrayList();
        }
        this.f25023c = list;
        this.f25022b = list.size();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    /* renamed from: a */
    public void onBindViewHolder(a aVar, int i9) {
        if (i9 == 0 || i9 == this.f25022b + 1) {
            return;
        }
        aVar.f25024a.setImageBitmap(this.f25023c.get(i9 - 1));
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    /* renamed from: b */
    public a onCreateViewHolder(ViewGroup viewGroup, int i9) {
        if (i9 == 1 || i9 == 2) {
            View view = new View(viewGroup.getContext());
            view.setLayoutParams(new ViewGroup.LayoutParams(this.f25021a / 2, -1));
            view.setBackgroundColor(0);
            return new a(view);
        } else if (i9 != 3) {
            return null;
        } else {
            View inflate = LayoutInflater.from(viewGroup.getContext()).inflate(R.layout.item_video_progress_thumbnail, (ViewGroup) null);
            a aVar = new a(inflate);
            aVar.f25024a = (ImageView) inflate.findViewById(R.id.iv_video_progress_thumbnail);
            return aVar;
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    /* renamed from: c */
    public void onViewRecycled(a aVar) {
        super.onViewRecycled(aVar);
        ImageView imageView = aVar.f25024a;
        if (imageView != null) {
            imageView.setImageBitmap(null);
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public int getItemCount() {
        int i9 = this.f25022b;
        if (i9 == 0) {
            return 0;
        }
        return i9 + 2;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public int getItemViewType(int i9) {
        if (i9 == 0) {
            return 1;
        }
        return i9 == this.f25022b + 1 ? 2 : 3;
    }
}
