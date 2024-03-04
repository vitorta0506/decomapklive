package com.guochao.faceshow.aaspring.modulars.live.adapter;

import android.content.Context;
import android.graphics.drawable.AnimationDrawable;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.CallSuper;
import androidx.annotation.NonNull;
import androidx.annotation.UiThread;
import androidx.recyclerview.widget.RecyclerView;
import butterknife.BindView;
import butterknife.ButterKnife;
import butterknife.Unbinder;
import butterknife.internal.c;
import com.guochao.faceshow.R;
import com.guochao.faceshow.aaspring.beans.IM_User;
import com.guochao.faceshow.aaspring.views.HeadPortraitView;
import com.guochao.faceshow.aaspring.views.VipIndicatorView;
import com.guochao.faceshow.utils.BaseConfig;
import java.util.List;
/* loaded from: classes3.dex */
public class PkSelectFriendsAdapter extends RecyclerView.Adapter<ViewHolder> implements View.OnClickListener {

    /* renamed from: a  reason: collision with root package name */
    private Context f18241a;

    /* renamed from: b  reason: collision with root package name */
    private List<IM_User> f18242b;

    /* renamed from: c  reason: collision with root package name */
    private z9.a f18243c = null;

    /* loaded from: classes3.dex */
    public class ViewHolder extends RecyclerView.ViewHolder {
        @BindView
        HeadPortraitView avatarUser;
        @BindView
        ImageView ivApply;
        @BindView
        LinearLayout living;
        @BindView
        ImageView livingStatus;
        @BindView
        TextView tvUserName;
        @BindView
        TextView userAge;
        @BindView
        ImageView userGender;
        @BindView
        LinearLayout userGenderAge;
        @BindView
        VipIndicatorView vipIndicatorView;

        public ViewHolder(@NonNull View view) {
            super(view);
            ButterKnife.c(this, view);
            this.avatarUser.setOnClickListener(PkSelectFriendsAdapter.this);
            this.ivApply.setOnClickListener(PkSelectFriendsAdapter.this);
            this.tvUserName.setOnClickListener(PkSelectFriendsAdapter.this);
            this.userGenderAge.setOnClickListener(PkSelectFriendsAdapter.this);
        }
    }

    /* loaded from: classes3.dex */
    public class ViewHolder_ViewBinding implements Unbinder {

        /* renamed from: b  reason: collision with root package name */
        private ViewHolder f18245b;

        @UiThread
        public ViewHolder_ViewBinding(ViewHolder viewHolder, View view) {
            this.f18245b = viewHolder;
            viewHolder.avatarUser = (HeadPortraitView) c.d(view, R.id.avatar_user, "field 'avatarUser'", HeadPortraitView.class);
            viewHolder.tvUserName = (TextView) c.d(view, R.id.tv_user_name, "field 'tvUserName'", TextView.class);
            viewHolder.livingStatus = (ImageView) c.d(view, R.id.living_status, "field 'livingStatus'", ImageView.class);
            viewHolder.living = (LinearLayout) c.d(view, R.id.living, "field 'living'", LinearLayout.class);
            viewHolder.userGender = (ImageView) c.d(view, R.id.user_gender, "field 'userGender'", ImageView.class);
            viewHolder.userAge = (TextView) c.d(view, R.id.user_age, "field 'userAge'", TextView.class);
            viewHolder.userGenderAge = (LinearLayout) c.d(view, R.id.user_gender_age, "field 'userGenderAge'", LinearLayout.class);
            viewHolder.ivApply = (ImageView) c.d(view, R.id.iv_apply, "field 'ivApply'", ImageView.class);
            viewHolder.vipIndicatorView = (VipIndicatorView) c.d(view, R.id.vip_indicator_view, "field 'vipIndicatorView'", VipIndicatorView.class);
        }

        @Override // butterknife.Unbinder
        @CallSuper
        public void unbind() {
            ViewHolder viewHolder = this.f18245b;
            if (viewHolder != null) {
                this.f18245b = null;
                viewHolder.avatarUser = null;
                viewHolder.tvUserName = null;
                viewHolder.livingStatus = null;
                viewHolder.living = null;
                viewHolder.userGender = null;
                viewHolder.userAge = null;
                viewHolder.userGenderAge = null;
                viewHolder.ivApply = null;
                viewHolder.vipIndicatorView = null;
                return;
            }
            throw new IllegalStateException("Bindings already cleared.");
        }
    }

    public PkSelectFriendsAdapter(Context context, List<IM_User> list) {
        this.f18241a = context;
        this.f18242b = list;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    /* renamed from: a */
    public void onBindViewHolder(@NonNull ViewHolder viewHolder, int i9) {
        viewHolder.avatarUser.setTag(Integer.valueOf(i9));
        viewHolder.ivApply.setTag(Integer.valueOf(i9));
        viewHolder.tvUserName.setTag(Integer.valueOf(i9));
        viewHolder.userGenderAge.setTag(Integer.valueOf(i9));
        viewHolder.avatarUser.d(this.f18242b.get(i9));
        if (this.f18242b.get(i9).getUserVipMsg() != null) {
            viewHolder.vipIndicatorView.setVisibility(0);
            viewHolder.vipIndicatorView.setVipLevel(this.f18242b.get(i9).getUserVipMsg().getIsVip());
        } else {
            viewHolder.vipIndicatorView.setVisibility(8);
        }
        viewHolder.tvUserName.setText(this.f18242b.get(i9).getUserName());
        if ("1".equals(this.f18242b.get(i9).getLiveState())) {
            viewHolder.living.setVisibility(0);
            viewHolder.livingStatus.setImageResource(R.drawable.living_status);
            ((AnimationDrawable) viewHolder.livingStatus.getDrawable()).start();
        } else {
            viewHolder.living.setVisibility(4);
        }
        if (this.f18242b.get(i9).getSex() == 0) {
            viewHolder.userGender.setImageResource(R.mipmap.icon_ugc_female);
            viewHolder.userGenderAge.setVisibility(0);
            viewHolder.userGenderAge.setBackgroundResource(R.drawable.icon_user_center_female);
        } else if (this.f18242b.get(i9).getSex() == 1) {
            viewHolder.userGender.setImageResource(R.mipmap.icon_ugc_male);
            viewHolder.userGenderAge.setVisibility(0);
            viewHolder.userGenderAge.setBackgroundResource(R.drawable.icon_user_center_male);
        } else {
            viewHolder.userGender.setImageResource(R.mipmap.icon_ugc_unlimited_bg);
            viewHolder.userGenderAge.setVisibility(8);
            viewHolder.userGenderAge.setBackgroundResource(R.drawable.icon_user_center_none);
        }
        viewHolder.userAge.setText(String.valueOf(this.f18242b.get(i9).getAge()));
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    @NonNull
    /* renamed from: b */
    public ViewHolder onCreateViewHolder(@NonNull ViewGroup viewGroup, int i9) {
        return new ViewHolder(LayoutInflater.from(this.f18241a).inflate(R.layout.adapter_pk_select_friends, viewGroup, false));
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public int getItemCount() {
        return this.f18242b.size();
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        int intValue = ((Integer) view.getTag()).intValue();
        if (this.f18243c != null) {
            int id2 = view.getId();
            if (id2 != R.id.avatar_user && id2 != R.id.tv_user_name && id2 != R.id.user_gender_age) {
                this.f18243c.b(view, BaseConfig.ITEM_RIGHT, intValue);
            } else {
                this.f18243c.b(view, BaseConfig.ITEM, intValue);
            }
        }
    }

    public void setOnItemClickListener(z9.a aVar) {
        this.f18243c = aVar;
    }
}
