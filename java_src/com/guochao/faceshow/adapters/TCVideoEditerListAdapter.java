package com.guochao.faceshow.adapters;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.recyclerview.widget.RecyclerView;
import com.guochao.faceshow.R;
import com.guochao.faceshow.aaspring.utils.ToastUtils;
import com.guochao.faceshow.bean.TCVideoFileInfo;
import com.guochao.faceshow.utils.BaseConfig;
import com.guochao.faceshow.utils.TCUtils;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes3.dex */
public class TCVideoEditerListAdapter extends RecyclerView.Adapter<ViewHolder> {

    /* renamed from: a  reason: collision with root package name */
    private ArrayList<TCVideoFileInfo> f25080a = new ArrayList<>();

    /* renamed from: b  reason: collision with root package name */
    private int f25081b = -1;

    /* renamed from: c  reason: collision with root package name */
    private boolean f25082c;

    /* renamed from: d  reason: collision with root package name */
    public b f25083d;

    /* loaded from: classes3.dex */
    public class ViewHolder extends RecyclerView.ViewHolder {

        /* renamed from: a  reason: collision with root package name */
        private final ImageView f25084a;

        /* renamed from: b  reason: collision with root package name */
        private final TextView f25085b;

        /* renamed from: c  reason: collision with root package name */
        private final ImageView f25086c;

        public ViewHolder(View view) {
            super(view);
            this.f25084a = (ImageView) view.findViewById(R.id.iv_thumb);
            this.f25085b = (TextView) view.findViewById(R.id.tv_duration);
            this.f25086c = (ImageView) view.findViewById(R.id.iv_selected);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class a implements View.OnClickListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ int f25088a;

        a(int i9) {
            this.f25088a = i9;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            if (TCVideoEditerListAdapter.this.f25082c) {
                TCVideoEditerListAdapter.this.c(this.f25088a);
            } else {
                TCVideoEditerListAdapter.this.d(view.getContext(), this.f25088a);
            }
        }
    }

    /* loaded from: classes3.dex */
    public interface b {
        void a(long j10);
    }

    public TCVideoEditerListAdapter(Context context) {
    }

    public void b(List<TCVideoFileInfo> list) {
        try {
            this.f25080a.clear();
            if (list.size() == 0) {
                this.f25080a.add(null);
            } else {
                this.f25080a.addAll(list);
            }
        } catch (Exception e10) {
            e10.printStackTrace();
        }
        notifyDataSetChanged();
    }

    public void c(int i9) {
        if (this.f25080a.get(i9).isSelected()) {
            this.f25080a.get(i9).setSelected(false);
        } else {
            this.f25080a.get(i9).setSelected(true);
        }
        notifyItemChanged(i9);
    }

    public void d(Context context, int i9) {
        TCVideoFileInfo tCVideoFileInfo = this.f25080a.get(i9);
        if (BaseConfig.isChinese() && (tCVideoFileInfo.getDuration() < 3000 || tCVideoFileInfo.getDuration() > 16000)) {
            ToastUtils.showToast(context, (int) R.string.video_upload_self_video_sub_toast);
            return;
        }
        int i10 = this.f25081b;
        if (i10 != -1) {
            this.f25080a.get(i10).setSelected(false);
        }
        notifyItemChanged(this.f25081b);
        if (tCVideoFileInfo.getDuration() > 60000) {
            tCVideoFileInfo.setSelected(false);
        } else {
            tCVideoFileInfo.setSelected(true);
        }
        notifyItemChanged(i9);
        this.f25081b = i9;
        b bVar = this.f25083d;
        if (bVar != null) {
            bVar.a(tCVideoFileInfo.getDuration());
        }
    }

    public TCVideoFileInfo e() {
        for (int i9 = 0; i9 < this.f25080a.size(); i9++) {
            if (this.f25080a.get(i9) != null && this.f25080a.get(i9).isSelected()) {
                return this.f25080a.get(i9);
            }
        }
        return null;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    /* renamed from: f */
    public void onBindViewHolder(ViewHolder viewHolder, int i9) {
        if (viewHolder.getItemViewType() == 1) {
            return;
        }
        TCVideoFileInfo tCVideoFileInfo = this.f25080a.get(i9);
        viewHolder.f25086c.setVisibility(tCVideoFileInfo.isSelected() ? 0 : 8);
        viewHolder.f25085b.setText(TCUtils.formattedTime(tCVideoFileInfo.getDuration() / 1000));
        hc.a.g(viewHolder.f25084a, tCVideoFileInfo.getDisplayUri());
        viewHolder.f25084a.setOnClickListener(new a(i9));
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    /* renamed from: g */
    public ViewHolder onCreateViewHolder(ViewGroup viewGroup, int i9) {
        View inflate;
        if (i9 == 1) {
            inflate = LayoutInflater.from(viewGroup.getContext()).inflate(R.layout.sl_list_nodata, viewGroup, false);
        } else {
            inflate = LayoutInflater.from(viewGroup.getContext()).inflate(R.layout.item_ugc_video, viewGroup, false);
        }
        return new ViewHolder(inflate);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public int getItemCount() {
        return this.f25080a.size();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public int getItemViewType(int i9) {
        if (this.f25080a.size() == 1 && this.f25080a.get(0) == null) {
            return 1;
        }
        return super.getItemViewType(i9);
    }

    public void h(boolean z10) {
        this.f25082c = z10;
    }

    public void setOnItemClickListener(b bVar) {
        this.f25083d = bVar;
    }
}
