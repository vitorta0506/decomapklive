package com.guochao.faceshow.aaspring.modulars.ugc.adapter;

import android.content.Context;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
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
import com.guochao.faceshow.utils.BaseConfig;
import java.util.List;
import z9.a;
/* loaded from: classes3.dex */
public class ComprehensiveHeadAdapter extends RecyclerView.Adapter<MyViewHolder> implements View.OnClickListener {

    /* renamed from: a  reason: collision with root package name */
    private List<IM_User> f22505a;

    /* renamed from: b  reason: collision with root package name */
    private Context f22506b;

    /* renamed from: c  reason: collision with root package name */
    private LayoutInflater f22507c;

    /* renamed from: d  reason: collision with root package name */
    private a f22508d = null;

    /* loaded from: classes3.dex */
    public class MyViewHolder extends RecyclerView.ViewHolder {
        @BindView
        HeadPortraitView avatarBg;
        @BindView
        TextView tvNickName;

        public MyViewHolder(@NonNull View view) {
            super(view);
            ButterKnife.c(this, view);
            view.setOnClickListener(ComprehensiveHeadAdapter.this);
        }
    }

    /* loaded from: classes3.dex */
    public class MyViewHolder_ViewBinding implements Unbinder {

        /* renamed from: b  reason: collision with root package name */
        private MyViewHolder f22510b;

        @UiThread
        public MyViewHolder_ViewBinding(MyViewHolder myViewHolder, View view) {
            this.f22510b = myViewHolder;
            myViewHolder.avatarBg = (HeadPortraitView) c.d(view, R.id.user_avatar, "field 'avatarBg'", HeadPortraitView.class);
            myViewHolder.tvNickName = (TextView) c.d(view, R.id.tv_nick_name, "field 'tvNickName'", TextView.class);
        }

        @Override // butterknife.Unbinder
        @CallSuper
        public void unbind() {
            MyViewHolder myViewHolder = this.f22510b;
            if (myViewHolder != null) {
                this.f22510b = null;
                myViewHolder.avatarBg = null;
                myViewHolder.tvNickName = null;
                return;
            }
            throw new IllegalStateException("Bindings already cleared.");
        }
    }

    public ComprehensiveHeadAdapter(Context context, List<IM_User> list) {
        this.f22505a = list;
        this.f22506b = context;
        this.f22507c = LayoutInflater.from(context);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    /* renamed from: a */
    public void onBindViewHolder(@NonNull MyViewHolder myViewHolder, int i9) {
        List<IM_User> list = this.f22505a;
        if (list == null || i9 >= list.size() || i9 < 0) {
            return;
        }
        myViewHolder.itemView.setTag(Integer.valueOf(i9));
        this.f22505a.get(i9).setImg(this.f22505a.get(i9).getUserImg());
        this.f22505a.get(i9).setCountryLogo(this.f22505a.get(i9).getUserCountryFlag());
        if (!TextUtils.isEmpty(this.f22505a.get(i9).getUserSex())) {
            this.f22505a.get(i9).setSex(Integer.parseInt(this.f22505a.get(i9).getUserSex()));
        }
        myViewHolder.avatarBg.f(this.f22505a.get(i9), true);
        myViewHolder.tvNickName.setText(this.f22505a.get(i9).getUserNickName());
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    @NonNull
    /* renamed from: b */
    public MyViewHolder onCreateViewHolder(@NonNull ViewGroup viewGroup, int i9) {
        return new MyViewHolder(this.f22507c.inflate(R.layout.item_comprehensive_head, viewGroup, false));
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public int getItemCount() {
        return this.f22505a.size();
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        this.f22508d.b(view, BaseConfig.ITEM, ((Integer) view.getTag()).intValue());
    }

    public void setOnItemClickListener(a aVar) {
        this.f22508d = aVar;
    }
}
