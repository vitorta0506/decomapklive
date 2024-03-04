package com.guochao.faceshow.aaspring.modulars.ugc.adapter;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.recyclerview.widget.RecyclerView;
import com.guochao.faceshow.R;
import com.guochao.faceshow.aaspring.base.adapter.BaseViewHolder;
import com.guochao.faceshow.aaspring.beans.LocalImageOrVideoBean;
import com.guochao.faceshow.aaspring.utils.StringUtils;
import com.guochao.faceshow.utils.BaseConfig;
import java.util.List;
import z9.a;
/* loaded from: classes3.dex */
public class PhotoSelectAdapter extends RecyclerView.Adapter<MyViewHolder> implements View.OnClickListener {

    /* renamed from: a  reason: collision with root package name */
    private List<LocalImageOrVideoBean> f22511a;

    /* renamed from: b  reason: collision with root package name */
    private LayoutInflater f22512b;

    /* renamed from: c  reason: collision with root package name */
    private a f22513c = null;

    /* loaded from: classes3.dex */
    public class MyViewHolder extends BaseViewHolder {

        /* renamed from: a  reason: collision with root package name */
        public ImageView f22514a;

        public MyViewHolder(@NonNull View view) {
            super(view);
            this.f22514a = (ImageView) view.findViewById(R.id.img);
            view.setOnClickListener(PhotoSelectAdapter.this);
        }
    }

    public PhotoSelectAdapter(Context context, List<LocalImageOrVideoBean> list) {
        this.f22511a = list;
        this.f22512b = LayoutInflater.from(context);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    /* renamed from: a */
    public void onBindViewHolder(@NonNull MyViewHolder myViewHolder, int i9) {
        myViewHolder.itemView.setTag(Integer.valueOf(i9));
        LocalImageOrVideoBean localImageOrVideoBean = this.f22511a.get(i9);
        ImageView imageView = (ImageView) myViewHolder.getView(R.id.play);
        TextView textView = (TextView) myViewHolder.getView(R.id.duration);
        if (localImageOrVideoBean.getFileType() == 2) {
            imageView.setVisibility(0);
            textView.setVisibility(0);
            textView.setText(StringUtils.formatTime(localImageOrVideoBean.getDuration()));
        } else {
            imageView.setVisibility(4);
            textView.setVisibility(4);
        }
        hc.a.g(myViewHolder.f22514a, this.f22511a.get(i9).getDisplayUri());
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    @NonNull
    /* renamed from: b */
    public MyViewHolder onCreateViewHolder(@NonNull ViewGroup viewGroup, int i9) {
        return new MyViewHolder(this.f22512b.inflate(R.layout.item_photo, viewGroup, false));
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public int getItemCount() {
        return this.f22511a.size();
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        int intValue = ((Integer) view.getTag()).intValue();
        if (this.f22513c != null) {
            view.getId();
            this.f22513c.b(view, BaseConfig.ITEM, intValue);
        }
    }

    public void setOnItemClickListener(a aVar) {
        this.f22513c = aVar;
    }
}
