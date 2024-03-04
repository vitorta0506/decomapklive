package com.guochao.faceshow.aaspring.modulars.personal.adapter;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.annotation.CallSuper;
import androidx.annotation.NonNull;
import androidx.annotation.UiThread;
import androidx.core.content.ContextCompat;
import androidx.recyclerview.widget.RecyclerView;
import butterknife.BindView;
import butterknife.ButterKnife;
import butterknife.Unbinder;
import butterknife.internal.c;
import com.guochao.faceshow.R;
import com.guochao.faceshow.aaspring.beans.Progress;
import com.guochao.faceshow.aaspring.utils.ColorUtils;
import com.guochao.faceshow.utils.DensityUtil;
import com.guochao.faceshow.utils.TimeUtil;
import java.util.List;
/* loaded from: classes3.dex */
public class ProgressAdapter extends RecyclerView.Adapter<ViewHolder> {

    /* renamed from: a  reason: collision with root package name */
    private Context f21454a;

    /* renamed from: b  reason: collision with root package name */
    private List<Progress> f21455b;

    /* loaded from: classes3.dex */
    public class ViewHolder extends RecyclerView.ViewHolder {
        @BindView
        ImageView ivLineDown;
        @BindView
        ImageView ivLineUp;
        @BindView
        ImageView ivState;
        @BindView
        TextView tvWithdrawalState;
        @BindView
        TextView tvWithdrawalTime;

        public ViewHolder(@NonNull View view) {
            super(view);
            ButterKnife.c(this, view);
        }
    }

    /* loaded from: classes3.dex */
    public class ViewHolder_ViewBinding implements Unbinder {

        /* renamed from: b  reason: collision with root package name */
        private ViewHolder f21457b;

        @UiThread
        public ViewHolder_ViewBinding(ViewHolder viewHolder, View view) {
            this.f21457b = viewHolder;
            viewHolder.ivLineUp = (ImageView) c.d(view, R.id.iv_line_up, "field 'ivLineUp'", ImageView.class);
            viewHolder.ivLineDown = (ImageView) c.d(view, R.id.iv_line_down, "field 'ivLineDown'", ImageView.class);
            viewHolder.ivState = (ImageView) c.d(view, R.id.iv_state, "field 'ivState'", ImageView.class);
            viewHolder.tvWithdrawalState = (TextView) c.d(view, R.id.tv_withdrawal_state, "field 'tvWithdrawalState'", TextView.class);
            viewHolder.tvWithdrawalTime = (TextView) c.d(view, R.id.tv_withdrawal_time, "field 'tvWithdrawalTime'", TextView.class);
        }

        @Override // butterknife.Unbinder
        @CallSuper
        public void unbind() {
            ViewHolder viewHolder = this.f21457b;
            if (viewHolder != null) {
                this.f21457b = null;
                viewHolder.ivLineUp = null;
                viewHolder.ivLineDown = null;
                viewHolder.ivState = null;
                viewHolder.tvWithdrawalState = null;
                viewHolder.tvWithdrawalTime = null;
                return;
            }
            throw new IllegalStateException("Bindings already cleared.");
        }
    }

    public ProgressAdapter(Context context, List<Progress> list) {
        this.f21454a = context;
        this.f21455b = list;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    /* renamed from: a */
    public void onBindViewHolder(@NonNull ViewHolder viewHolder, int i9) {
        if (i9 == 0) {
            viewHolder.ivLineUp.setVisibility(4);
        } else {
            viewHolder.ivLineUp.setVisibility(0);
        }
        if (i9 == this.f21455b.size() - 1) {
            viewHolder.ivLineDown.setVisibility(4);
        } else {
            viewHolder.ivLineDown.setVisibility(0);
        }
        if (this.f21455b.get(i9).getDownColor() == 1) {
            viewHolder.ivLineDown.setBackgroundColor(ContextCompat.getColor(this.f21454a, R.color.withdrawal_err));
        } else {
            viewHolder.ivLineDown.setBackgroundColor(ContextCompat.getColor(this.f21454a, R.color.color_common_dialog_confirm));
        }
        if (this.f21455b.get(i9).getSpeed() == 0) {
            viewHolder.ivState.setBackground(ColorUtils.tintDrawable(ContextCompat.getDrawable(this.f21454a, R.drawable.bitmap_details_dui), ContextCompat.getColor(this.f21454a, R.color.color_ugc_app_primary_tint)));
            viewHolder.ivLineUp.setBackgroundColor(ContextCompat.getColor(this.f21454a, R.color.color_common_dialog_confirm));
            viewHolder.tvWithdrawalState.setTextColor(ContextCompat.getColor(this.f21454a, R.color.color_common_dialog_confirm));
            viewHolder.tvWithdrawalState.setText(this.f21454a.getString(R.string.submit_applications));
        } else if (this.f21455b.get(i9).getSpeed() == 1) {
            viewHolder.ivState.setBackground(ColorUtils.tintDrawable(ContextCompat.getDrawable(this.f21454a, R.drawable.bitmap_details_dui), ContextCompat.getColor(this.f21454a, R.color.color_ugc_app_primary_tint)));
            viewHolder.ivLineUp.setBackgroundColor(ContextCompat.getColor(this.f21454a, R.color.color_common_dialog_confirm));
            viewHolder.tvWithdrawalState.setTextColor(ContextCompat.getColor(this.f21454a, R.color.color_common_dialog_confirm));
            viewHolder.tvWithdrawalState.setText(this.f21454a.getString(R.string.review));
        } else if (this.f21455b.get(i9).getSpeed() == 2) {
            viewHolder.ivState.setBackground(ColorUtils.tintDrawable(ContextCompat.getDrawable(this.f21454a, R.drawable.bitmap_details_dui), ContextCompat.getColor(this.f21454a, R.color.color_ugc_app_primary_tint)));
            viewHolder.ivLineUp.setBackgroundColor(ContextCompat.getColor(this.f21454a, R.color.color_common_dialog_confirm));
            viewHolder.tvWithdrawalState.setTextColor(ContextCompat.getColor(this.f21454a, R.color.color_common_dialog_confirm));
            viewHolder.tvWithdrawalState.setText(this.f21454a.getString(R.string.approved));
        } else if (this.f21455b.get(i9).getSpeed() == 3) {
            viewHolder.ivState.setBackground(ColorUtils.tintDrawable(ContextCompat.getDrawable(this.f21454a, R.drawable.bitmap_details_dui), ContextCompat.getColor(this.f21454a, R.color.color_ugc_app_primary_tint)));
            viewHolder.ivLineUp.setBackgroundColor(ContextCompat.getColor(this.f21454a, R.color.color_common_dialog_confirm));
            viewHolder.tvWithdrawalState.setTextColor(ContextCompat.getColor(this.f21454a, R.color.color_common_dialog_confirm));
            viewHolder.tvWithdrawalState.setText(this.f21454a.getString(R.string.withdrawal_success));
        } else if (this.f21455b.get(i9).getSpeed() == 4) {
            viewHolder.ivLineUp.setBackgroundColor(ContextCompat.getColor(this.f21454a, R.color.withdrawal_err));
            viewHolder.ivState.setImageResource(R.mipmap.ic_detail_cuo);
            viewHolder.tvWithdrawalState.setTextColor(ContextCompat.getColor(this.f21454a, R.color.withdrawal_err));
            viewHolder.tvWithdrawalState.setText(this.f21454a.getString(R.string.withdrawal_faile));
        } else if (this.f21455b.get(i9).getSpeed() == 5) {
            viewHolder.ivLineUp.setBackgroundColor(ContextCompat.getColor(this.f21454a, R.color.withdrawal_err));
            viewHolder.ivState.setImageResource(R.mipmap.ic_detail_cuo);
            viewHolder.tvWithdrawalState.setTextColor(ContextCompat.getColor(this.f21454a, R.color.withdrawal_err));
            viewHolder.tvWithdrawalState.setText(this.f21454a.getString(R.string.unapprove));
        } else {
            viewHolder.ivState.setImageResource(R.drawable.bitmap_details_dui);
            viewHolder.ivLineUp.setBackgroundColor(ContextCompat.getColor(this.f21454a, R.color.color_common_dialog_confirm));
            viewHolder.tvWithdrawalState.setTextColor(ContextCompat.getColor(this.f21454a, R.color.color_common_dialog_confirm));
            viewHolder.tvWithdrawalState.setText(this.f21454a.getString(R.string.withdrawal_of));
        }
        if (this.f21455b.get(i9).getTime() > 0) {
            if (i9 == this.f21455b.size() - 1) {
                ((ViewGroup.MarginLayoutParams) viewHolder.tvWithdrawalTime.getLayoutParams()).bottomMargin = 0;
            } else {
                ((ViewGroup.MarginLayoutParams) viewHolder.tvWithdrawalTime.getLayoutParams()).bottomMargin = DensityUtil.dp2px(15.0f);
            }
            viewHolder.tvWithdrawalTime.setVisibility(0);
            viewHolder.tvWithdrawalTime.setText(TimeUtil.getGiftTime(this.f21454a, System.currentTimeMillis() - this.f21455b.get(i9).getTime()));
        } else if (i9 == this.f21455b.size() - 1) {
            viewHolder.tvWithdrawalTime.setVisibility(8);
        } else {
            viewHolder.tvWithdrawalTime.setVisibility(4);
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    @NonNull
    /* renamed from: b */
    public ViewHolder onCreateViewHolder(@NonNull ViewGroup viewGroup, int i9) {
        return new ViewHolder(LayoutInflater.from(this.f21454a).inflate(R.layout.adapter_progress, viewGroup, false));
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public int getItemCount() {
        return this.f21455b.size();
    }
}
