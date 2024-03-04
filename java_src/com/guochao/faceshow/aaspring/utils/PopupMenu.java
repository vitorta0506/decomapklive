package com.guochao.faceshow.aaspring.utils;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.PopupWindow;
import android.widget.TextView;
import androidx.core.view.GravityCompat;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.guochao.faceshow.R;
import com.guochao.faceshow.aaspring.beans.PopupMenuItem;
import com.guochao.faceshow.adapter.ZZ_RecycleAdapter;
import com.guochao.faceshow.utils.DensityUtil;
import com.guochao.faceshow.utils.Tool;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes3.dex */
public class PopupMenu {
    private int gravity;
    View mContentView;
    private Context mContext;
    private OnMenuItemClickListener mOnMenuItemClickListener;
    private OnDismissListener onDismissListener;
    private float mAlpha = -1.0f;
    private final List<PopupMenuItem> mMenus = new ArrayList();

    /* loaded from: classes3.dex */
    public interface OnDismissListener {
        void onDismiss();
    }

    /* loaded from: classes3.dex */
    public interface OnMenuItemClickListener {
        void onItemClick(PopupMenuItem popupMenuItem, View view);
    }

    public PopupMenu(Context context) {
        this.mContext = context;
    }

    public int getGravity() {
        return this.gravity;
    }

    public void setAlpha(float f10) {
        View view = this.mContentView;
        if (view == null) {
            this.mAlpha = f10;
            return;
        }
        view.findViewById(R.id.bg_view).setBackgroundResource(R.drawable.chat_long_press_dark);
        this.mContentView.findViewById(R.id.bg_view).setAlpha(this.mAlpha);
    }

    public void setGravity(int i9) {
        this.gravity = i9;
    }

    public void setMenus(List<PopupMenuItem> list) {
        this.mMenus.clear();
        this.mMenus.addAll(list);
    }

    public void setOnDismissListener(OnDismissListener onDismissListener) {
        this.onDismissListener = onDismissListener;
    }

    public void setOnMenuItemClickListener(OnMenuItemClickListener onMenuItemClickListener) {
        this.mOnMenuItemClickListener = onMenuItemClickListener;
    }

    public void show(View view) {
        View inflate = LayoutInflater.from(this.mContext).inflate(R.layout.pop_chat_press, (ViewGroup) null);
        this.mContentView = inflate;
        if (this.mAlpha >= 0.0f) {
            inflate.findViewById(R.id.bg_view).setBackgroundResource(R.drawable.chat_long_press_dark);
            this.mContentView.findViewById(R.id.bg_view).setAlpha(this.mAlpha);
        }
        View inflate2 = LayoutInflater.from(this.mContext).inflate(R.layout.message_list_press_item, (ViewGroup) this.mContentView, false);
        int i9 = 0;
        for (int i10 = 0; i10 < this.mMenus.size(); i10++) {
            i9 = i9 + TextViewUtils.calTextWidth((TextView) inflate2.findViewById(R.id.tv_delete), this.mMenus.get(i10).getTitle()) + DensityUtil.dp2px(this.mContext, 12.0f);
        }
        int dp2px = i9 + DensityUtil.dp2px(this.mContext, 10.0f);
        final PopupWindow createPopWindowBottomInstance = Tool.createPopWindowBottomInstance(this.mContentView, dp2px, -2);
        RecyclerView recyclerView = (RecyclerView) this.mContentView.findViewById(R.id.list_pop_ress);
        recyclerView.setLayoutManager(new LinearLayoutManager(this.mContext, 0, false));
        createPopWindowBottomInstance.setAnimationStyle(-1);
        recyclerView.setAdapter(new ZZ_RecycleAdapter<PopupMenuItem>(this.mContext, R.layout.message_list_press_item, this.mMenus) { // from class: com.guochao.faceshow.aaspring.utils.PopupMenu.1
            @Override // com.guochao.faceshow.adapter.ZZ_RecycleAdapter
            public void convert(final ZZ_RecycleAdapter.ViewHolder viewHolder, PopupMenuItem popupMenuItem) {
                if (popupMenuItem != null) {
                    viewHolder.f(R.id.tv_delete, popupMenuItem.getTitle());
                }
                viewHolder.itemView.setOnClickListener(new View.OnClickListener() { // from class: com.guochao.faceshow.aaspring.utils.PopupMenu.1.1
                    @Override // android.view.View.OnClickListener
                    public void onClick(View view2) {
                        PopupMenu.this.mOnMenuItemClickListener.onItemClick((PopupMenuItem) PopupMenu.this.mMenus.get(viewHolder.getAdapterPosition()), view2);
                        createPopWindowBottomInstance.dismiss();
                    }
                });
            }
        });
        createPopWindowBottomInstance.showAsDropDown(view, (view.getWidth() - dp2px) / 2, (-view.getHeight()) - DensityUtil.dp2px(this.mContext, 48.0f), GravityCompat.START);
        createPopWindowBottomInstance.setOnDismissListener(new PopupWindow.OnDismissListener() { // from class: com.guochao.faceshow.aaspring.utils.PopupMenu.2
            @Override // android.widget.PopupWindow.OnDismissListener
            public void onDismiss() {
                if (PopupMenu.this.onDismissListener != null) {
                    PopupMenu.this.onDismissListener.onDismiss();
                }
            }
        });
    }
}
