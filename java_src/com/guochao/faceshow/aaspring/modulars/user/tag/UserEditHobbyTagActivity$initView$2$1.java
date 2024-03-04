package com.guochao.faceshow.aaspring.modulars.user.tag;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import androidx.core.content.ContextCompat;
import androidx.recyclerview.widget.RecyclerView;
import com.guochao.faceshow.R;
import com.guochao.faceshow.aaspring.base.adapter.BaseViewHolder;
import com.guochao.faceshow.aaspring.beans.UserHobbyBean;
import com.guochao.faceshow.utils.DensityUtil;
import java.util.Arrays;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.StringCompanionObject;
import org.jetbrains.annotations.NotNull;
@Metadata(d1 = {"\u0000%\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0002*\u0001\u0000\b\n\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001J\b\u0010\u0003\u001a\u00020\u0004H\u0016J\u0018\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u00022\u0006\u0010\b\u001a\u00020\u0004H\u0016J\u0018\u0010\t\u001a\u00020\u00022\u0006\u0010\n\u001a\u00020\u000b2\u0006\u0010\f\u001a\u00020\u0004H\u0016¨\u0006\r"}, d2 = {"com/guochao/faceshow/aaspring/modulars/user/tag/UserEditHobbyTagActivity$initView$2$1", "Landroidx/recyclerview/widget/RecyclerView$Adapter;", "Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;", "getItemCount", "", "onBindViewHolder", "", "holder", "position", "onCreateViewHolder", "parent", "Landroid/view/ViewGroup;", "viewType", "app_GooglePlayRelease"}, k = 1, mv = {1, 7, 1}, xi = 48)
/* loaded from: classes3.dex */
public final class UserEditHobbyTagActivity$initView$2$1 extends RecyclerView.Adapter<BaseViewHolder> {
    final /* synthetic */ UserEditHobbyTagActivity this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    public UserEditHobbyTagActivity$initView$2$1(UserEditHobbyTagActivity userEditHobbyTagActivity) {
        this.this$0 = userEditHobbyTagActivity;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: onCreateViewHolder$lambda-3  reason: not valid java name */
    public static final void m576onCreateViewHolder$lambda3(UserEditHobbyTagActivity this$0, View view) {
        UserHobbyBean userHobbyBean;
        List<UserHobbyBean.HobbyBean> sysHobbies;
        RecyclerView.Adapter adapter;
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        if (view.getTag() instanceof Integer) {
            List<UserHobbyBean.UserHobby> mUserHobbyList = this$0.getMUserHobbyList();
            Object tag = view.getTag();
            Intrinsics.checkNotNull(tag, "null cannot be cast to non-null type kotlin.Int");
            UserHobbyBean.UserHobby remove = mUserHobbyList.remove(((Integer) tag).intValue());
            RecyclerView mRecyclerView = this$0.getMRecyclerView();
            if (mRecyclerView != null && (adapter = mRecyclerView.getAdapter()) != null) {
                adapter.notifyDataSetChanged();
            }
            for (UserEditHobbyFragment userEditHobbyFragment : this$0.getMFragments()) {
                userEditHobbyFragment.refreshItemUnSelect(remove);
            }
            userHobbyBean = this$0.hobbyBean;
            if (userHobbyBean != null && (sysHobbies = userHobbyBean.getSysHobbies()) != null) {
                for (UserHobbyBean.HobbyBean hobbyBean : sysHobbies) {
                    List<UserHobbyBean.UserHobby> hobbyList = hobbyBean.getHobbyList();
                    if (hobbyList != null) {
                        for (UserHobbyBean.UserHobby userHobby : hobbyList) {
                            if (Intrinsics.areEqual(remove != null ? remove.getHobbyId() : null, userHobby.getHobbyId())) {
                                userHobby.setMIsSelect(Boolean.FALSE);
                            }
                        }
                    }
                }
            }
            String valueOf = String.valueOf(this$0.getMUserHobbyList().size());
            StringCompanionObject stringCompanionObject = StringCompanionObject.INSTANCE;
            String format = String.format("(%s/10)", Arrays.copyOf(new Object[]{Integer.valueOf(this$0.getMUserHobbyList().size())}, 1));
            Intrinsics.checkNotNullExpressionValue(format, "format(format, *args)");
            this$0.setCount(valueOf, format);
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public int getItemCount() {
        return this.this$0.getMUserHobbyList().size();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public void onBindViewHolder(@NotNull BaseViewHolder holder, int i9) {
        Intrinsics.checkNotNullParameter(holder, "holder");
        holder.itemView.setTag(Integer.valueOf(i9));
        TextView textView = (TextView) holder.getView(R.id.tv_tag);
        ViewGroup.LayoutParams layoutParams = textView.getLayoutParams();
        Intrinsics.checkNotNull(layoutParams, "null cannot be cast to non-null type android.view.ViewGroup.MarginLayoutParams");
        ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) layoutParams;
        marginLayoutParams.setMarginStart(DensityUtil.dp2px(16.0f));
        marginLayoutParams.topMargin = DensityUtil.dp2px(16.0f);
        UserHobbyBean.UserHobby userHobby = this.this$0.getMUserHobbyList().get(i9);
        if (userHobby != null) {
            StringCompanionObject stringCompanionObject = StringCompanionObject.INSTANCE;
            String format = String.format("%s  ×", Arrays.copyOf(new Object[]{userHobby.getTags()}, 1));
            Intrinsics.checkNotNullExpressionValue(format, "format(format, *args)");
            textView.setText(format);
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    @NotNull
    public BaseViewHolder onCreateViewHolder(@NotNull ViewGroup parent, int i9) {
        Intrinsics.checkNotNullParameter(parent, "parent");
        BaseViewHolder baseViewHolder = new BaseViewHolder(LayoutInflater.from(parent.getContext()).inflate(R.layout.item_user_tag, parent, false));
        TextView textView = (TextView) baseViewHolder.getView(R.id.tv_tag);
        textView.setPadding(DensityUtil.dp2px(16.0f), DensityUtil.dp2px(6.0f), DensityUtil.dp2px(16.0f), DensityUtil.dp2px(6.0f));
        textView.setTextSize(2, 14.0f);
        textView.setTextColor(ContextCompat.getColor(this.this$0, R.color.color_ugc_app_primary));
        textView.setBackgroundResource(R.drawable.bg_item_user_tag_select);
        View view = baseViewHolder.itemView;
        final UserEditHobbyTagActivity userEditHobbyTagActivity = this.this$0;
        view.setOnClickListener(new View.OnClickListener() { // from class: com.guochao.faceshow.aaspring.modulars.user.tag.l
            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                UserEditHobbyTagActivity$initView$2$1.m576onCreateViewHolder$lambda3(UserEditHobbyTagActivity.this, view2);
            }
        });
        return baseViewHolder;
    }
}
