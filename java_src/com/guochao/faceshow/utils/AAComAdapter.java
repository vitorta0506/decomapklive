package com.guochao.faceshow.utils;

import android.content.Context;
import android.util.SparseArray;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.GridView;
import android.widget.ListView;
import android.widget.TextView;
import com.guochao.faceshow.R;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes4.dex */
public abstract class AAComAdapter<T> extends BaseAdapter {
    private SparseArray<String> arraycolor;
    private int dividerHeight;
    private View emptyView;
    private AAViewHolder holder;
    private boolean isInitNumColumns;
    private ListView listView;

    /* renamed from: m  reason: collision with root package name */
    public int f26553m;
    protected Context mContext;
    public List<T> mDatas;
    protected LayoutInflater mInflater;
    private int mlayoutId;
    private int myNumColumns;

    /* renamed from: n  reason: collision with root package name */
    public int f26554n;
    private int noDataLayoutId;
    private boolean showFresh;
    private boolean showNoData;

    public AAComAdapter(Context context, int i9, List<T> list, boolean z10) {
        this.mDatas = new ArrayList();
        this.noDataLayoutId = -1;
        this.showFresh = false;
        this.showNoData = true;
        this.myNumColumns = 2;
        this.isInitNumColumns = false;
        this.dividerHeight = 0;
        this.mContext = context;
        this.mlayoutId = i9;
        this.mInflater = LayoutInflater.from(context);
        this.mDatas.clear();
        this.mDatas.addAll(list);
        this.showFresh = z10;
        this.emptyView = LayoutInflater.from(this.mContext).inflate(R.layout.sl_list_nodata, (ViewGroup) null);
    }

    public void addData(List<T> list) {
        this.mDatas.addAll(list);
        notifyDataSetChanged();
    }

    public abstract void convert(AAViewHolder aAViewHolder, T t10);

    public TextView getAction(String str) {
        TextView tv = AAViewCom.getTv(this.emptyView, R.id.btn_action);
        tv.setVisibility(0);
        tv.setText(str);
        return tv;
    }

    @Override // android.widget.Adapter
    public int getCount() {
        return this.mDatas.size();
    }

    public AAViewHolder getHolder() {
        return this.holder;
    }

    @Override // android.widget.Adapter
    public T getItem(int i9) {
        return this.mDatas.get(i9);
    }

    @Override // android.widget.Adapter
    public long getItemId(int i9) {
        return i9;
    }

    @Override // android.widget.Adapter
    public View getView(int i9, View view, ViewGroup viewGroup) {
        int i10;
        if ((viewGroup instanceof GridView) && !this.isInitNumColumns) {
            this.myNumColumns = ((GridView) viewGroup).getNumColumns();
            this.isInitNumColumns = true;
        }
        try {
            ListView listView = this.listView;
            if (listView != null && listView.getDividerHeight() > 0) {
                this.dividerHeight = this.listView.getDividerHeight();
            }
        } catch (Exception e10) {
            e10.printStackTrace();
        }
        if (this.mDatas.get(i9) == null && this.mDatas.size() == 1) {
            try {
                if (viewGroup instanceof ListView) {
                    ListView listView2 = (ListView) viewGroup;
                    listView2.setEnabled(false);
                    listView2.setDividerHeight(0);
                }
                if (viewGroup instanceof GridView) {
                    GridView gridView = (GridView) viewGroup;
                    gridView.setEnabled(false);
                    gridView.setNumColumns(1);
                }
            } catch (Exception e11) {
                e11.printStackTrace();
            }
            if (this.noDataLayoutId == -1) {
                return this.emptyView;
            }
            return LayoutInflater.from(this.mContext).inflate(this.noDataLayoutId, viewGroup, false);
        }
        try {
            ListView listView3 = this.listView;
            if (listView3 != null && listView3.getDividerHeight() == 0 && (i10 = this.dividerHeight) > 0) {
                this.listView.setDividerHeight(i10);
            }
        } catch (Exception e12) {
            e12.printStackTrace();
        }
        try {
            if (viewGroup instanceof ListView) {
                ((ListView) viewGroup).setEnabled(true);
            }
            if (viewGroup instanceof GridView) {
                GridView gridView2 = (GridView) viewGroup;
                gridView2.setEnabled(true);
                gridView2.setNumColumns(this.myNumColumns);
            }
        } catch (Exception e13) {
            e13.printStackTrace();
        }
        AAViewHolder aAViewHolder = AAViewHolder.get(this.mContext, view, viewGroup, this.mlayoutId, i9, this.showFresh);
        this.holder = aAViewHolder;
        convert(aAViewHolder, getItem(i9));
        return this.holder.getConvertView();
    }

    public void resetData(List<T> list) {
        if (list == null) {
            list = new ArrayList<>();
        }
        this.mDatas.clear();
        this.mDatas.addAll(list);
        if (this.showNoData && this.mDatas.size() == 0) {
            this.mDatas.add(null);
        }
        notifyDataSetChanged();
    }

    public void setEmptyAlert(String str) {
        AAViewCom.getTv(this.emptyView, R.id.tv_alert).setText(str);
    }

    public AAComAdapter(Context context, int i9, List<T> list) {
        this.mDatas = new ArrayList();
        this.noDataLayoutId = -1;
        this.showFresh = false;
        this.showNoData = true;
        this.myNumColumns = 2;
        this.isInitNumColumns = false;
        this.dividerHeight = 0;
        this.mContext = context;
        this.mlayoutId = i9;
        this.mInflater = LayoutInflater.from(context);
        this.mDatas.clear();
        this.mDatas.addAll(list);
        if (this.mDatas.size() == 0) {
            this.mDatas.add(null);
        }
        this.emptyView = LayoutInflater.from(this.mContext).inflate(R.layout.empty_no_data, (ViewGroup) null);
    }

    public AAComAdapter(Context context, int i9) {
        this.mDatas = new ArrayList();
        this.noDataLayoutId = -1;
        this.showFresh = false;
        this.showNoData = true;
        this.myNumColumns = 2;
        this.isInitNumColumns = false;
        this.dividerHeight = 0;
        this.mContext = context;
        this.mlayoutId = i9;
        this.mInflater = LayoutInflater.from(context);
        this.mDatas.clear();
        this.emptyView = LayoutInflater.from(this.mContext).inflate(R.layout.empty_no_data, (ViewGroup) null);
    }
}
