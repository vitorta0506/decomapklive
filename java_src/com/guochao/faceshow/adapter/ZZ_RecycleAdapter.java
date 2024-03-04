package com.guochao.faceshow.adapter;

import android.content.Context;
import android.util.SparseArray;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.recyclerview.widget.RecyclerView;
import com.guochao.faceshow.R;
import com.guochao.faceshow.utils.AAViewCom;
import com.guochao.faceshow.utils.DensityUtil;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes3.dex */
public abstract class ZZ_RecycleAdapter<T> extends BaseAdapter<T, ViewHolder> {
    protected Context context;
    private View emptyFL;
    protected final View emptyView;
    public List<T> mDataList;
    protected int mlayoutId;
    private boolean showNoData;

    /* loaded from: classes3.dex */
    public static class ViewHolder extends RecyclerView.ViewHolder {

        /* renamed from: a  reason: collision with root package name */
        private SparseArray<View> f25028a;

        /* renamed from: b  reason: collision with root package name */
        private View f25029b;

        public ViewHolder(View view) {
            super(view);
            this.f25028a = new SparseArray<>();
            this.f25029b = view;
        }

        public ImageView c(int i9) {
            return (ImageView) getView(i9);
        }

        public LinearLayout d(int i9) {
            return (LinearLayout) getView(i9);
        }

        public TextView e(int i9) {
            return (TextView) getView(i9);
        }

        public ViewHolder f(int i9, String str) {
            ((TextView) getView(i9)).setText(str);
            return this;
        }

        public ViewHolder g(int i9, int i10) {
            getView(i9).setVisibility(i10);
            return this;
        }

        /* JADX WARN: Incorrect return type in method signature: <T:Landroid/view/View;>(I)TT; */
        public View getView(int i9) {
            View view = this.f25028a.get(i9);
            if (view == null) {
                View findViewById = this.f25029b.findViewById(i9);
                findViewById.setVisibility(0);
                this.f25028a.put(i9, findViewById);
                return findViewById;
            }
            return view;
        }
    }

    public ZZ_RecycleAdapter(Context context, int i9) {
        super(context);
        this.mDataList = new ArrayList();
        this.showNoData = true;
        this.context = context;
        this.mlayoutId = i9;
        View inflate = LayoutInflater.from(context).inflate(R.layout.empty_no_data, (ViewGroup) null);
        this.emptyView = inflate;
        this.emptyFL = inflate.findViewById(R.id.emptyFL);
    }

    public void addData(List<T> list) {
        if (list == null || list.size() == 0) {
            return;
        }
        this.mDataList.addAll(list);
        notifyDataSetChanged();
    }

    public abstract void convert(ViewHolder viewHolder, T t10);

    public Button getAction(String str) {
        Button btn = AAViewCom.getBtn(this.emptyView, R.id.btn_action);
        btn.setVisibility(0);
        btn.setText(str);
        return btn;
    }

    public List<T> getDataList() {
        return this.mDataList;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public int getItemCount() {
        List<T> list = this.mDataList;
        if (list == null) {
            return 0;
        }
        return list.size();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public int getItemViewType(int i9) {
        return (this.mDataList.get(0) == null && this.mDataList.size() == 1) ? 100 : -1;
    }

    public void hideAdapterEmptyView() {
        this.emptyView.setVisibility(4);
    }

    @Override // com.guochao.faceshow.adapter.BaseAdapter
    public void notifyDataSetChanged(List<T> list) {
        this.mDataList = list;
        super.notifyDataSetChanged();
    }

    public void reset() {
        if (this.mDataList.size() == 0) {
            this.mDataList.add(null);
        }
        super.notifyDataSetChanged();
    }

    public void resetData(List<T> list) {
        this.mDataList.clear();
        if (list != null && list.size() != 0) {
            this.mDataList.addAll(list);
        }
        if (this.showNoData && this.mDataList.size() == 0) {
            this.mDataList.add(null);
        }
        notifyDataSetChanged();
    }

    public void setEmptyAlert(String str) {
        AAViewCom.getTv(this.emptyView, R.id.tv_alert).setVisibility(4);
        AAViewCom.getTv(this.emptyView, R.id.tv_alert).setText(str);
    }

    public void setEmptyFLMargeTop(int i9) {
        ((LinearLayout.LayoutParams) this.emptyFL.getLayoutParams()).topMargin = DensityUtil.dp2px(i9);
    }

    public void setEmptyIcon(int i9) {
        if (i9 == 0) {
            AAViewCom.getIv(this.emptyView, R.id.iv_empty).setVisibility(4);
        } else {
            AAViewCom.getIv(this.emptyView, R.id.iv_empty).setBackgroundResource(i9);
        }
    }

    public void setEmptyTab(int i9) {
        View view = AAViewCom.getView(this.emptyView, R.id.view_top);
        ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
        layoutParams.height = DensityUtil.dp2px(i9);
        layoutParams.width = 10;
        view.setLayoutParams(layoutParams);
    }

    public void setShowNoData(boolean z10) {
        this.showNoData = z10;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public void onBindViewHolder(ViewHolder viewHolder, int i9) {
        if ((this.mDataList.get(0) == null && this.mDataList.size() == 1) || this.mDataList.get(i9) == null) {
            return;
        }
        convert(viewHolder, this.mDataList.get(i9));
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public ViewHolder onCreateViewHolder(ViewGroup viewGroup, int i9) {
        if (i9 == 100) {
            return new ViewHolder(this.emptyView);
        }
        return new ViewHolder(getInflater().inflate(this.mlayoutId, viewGroup, false));
    }

    public ZZ_RecycleAdapter(Context context, int i9, List<T> list) {
        super(context);
        this.mDataList = new ArrayList();
        this.showNoData = true;
        this.context = context;
        this.mlayoutId = i9;
        View inflate = LayoutInflater.from(context).inflate(R.layout.empty_no_data, (ViewGroup) null);
        this.emptyView = inflate;
        this.mDataList = list;
        this.emptyFL = inflate.findViewById(R.id.emptyFL);
    }
}
