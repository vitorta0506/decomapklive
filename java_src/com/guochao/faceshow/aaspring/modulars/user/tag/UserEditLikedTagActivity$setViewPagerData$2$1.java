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
@Metadata(d1 = {"\u0000%\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0002*\u0001\u0000\b\n\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001J\b\u0010\u0003\u001a\u00020\u0004H\u0016J\u0018\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u00022\u0006\u0010\b\u001a\u00020\u0004H\u0016J\u0018\u0010\t\u001a\u00020\u00022\u0006\u0010\n\u001a\u00020\u000b2\u0006\u0010\f\u001a\u00020\u0004H\u0016¨\u0006\r"}, d2 = {"com/guochao/faceshow/aaspring/modulars/user/tag/UserEditLikedTagActivity$setViewPagerData$2$1", "Landroidx/recyclerview/widget/RecyclerView$Adapter;", "Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;", "getItemCount", "", "onBindViewHolder", "", "holder", "position", "onCreateViewHolder", "parent", "Landroid/view/ViewGroup;", "viewType", "app_GooglePlayRelease"}, k = 1, mv = {1, 7, 1}, xi = 48)
/* loaded from: classes3.dex */
public final class UserEditLikedTagActivity$setViewPagerData$2$1 extends RecyclerView.Adapter<BaseViewHolder> {
    final /* synthetic */ UserEditLikedTagActivity this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    public UserEditLikedTagActivity$setViewPagerData$2$1(UserEditLikedTagActivity userEditLikedTagActivity) {
        this.this$0 = userEditLikedTagActivity;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: onCreateViewHolder$lambda-2  reason: not valid java name */
    public static final void m579onCreateViewHolder$lambda2(UserEditLikedTagActivity this$0, View view) {
        RecyclerView.Adapter adapter;
        RecyclerView.Adapter adapter2;
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        if (this$0.getMUserLikedTagList().size() >= 10) {
            this$0.showToast(R.string.max_tag_to_choose);
        } else if (view.getTag() instanceof Integer) {
            List<UserHobbyBean.UserHobby> mTotalLikedTagList = this$0.getMTotalLikedTagList();
            Object tag = view.getTag();
            Intrinsics.checkNotNull(tag, "null cannot be cast to non-null type kotlin.Int");
            UserHobbyBean.UserHobby userHobby = mTotalLikedTagList.get(((Integer) tag).intValue());
            if (userHobby != null) {
                for (UserHobbyBean.UserHobby userHobby2 : this$0.getMUserLikedTagList()) {
                    if (Intrinsics.areEqual(userHobby2 != null ? userHobby2.getHobbyId() : null, userHobby.getHobbyId())) {
                        return;
                    }
                }
                userHobby.setMIsSelect(Boolean.TRUE);
                this$0.getMUserLikedTagList().add(userHobby);
                TextView tvTagCount = this$0.getTvTagCount();
                if (tvTagCount != null) {
                    StringCompanionObject stringCompanionObject = StringCompanionObject.INSTANCE;
                    String format = String.format("%s/10", Arrays.copyOf(new Object[]{Integer.valueOf(this$0.getMUserLikedTagList().size())}, 1));
                    Intrinsics.checkNotNullExpressionValue(format, "format(format, *args)");
                    tvTagCount.setText(format);
                }
                RecyclerView mRecyclerView = this$0.getMRecyclerView();
                if (mRecyclerView != null && (adapter2 = mRecyclerView.getAdapter()) != null) {
                    adapter2.notifyDataSetChanged();
                }
                RecyclerView mTotalRecyclerView = this$0.getMTotalRecyclerView();
                if (mTotalRecyclerView == null || (adapter = mTotalRecyclerView.getAdapter()) == null) {
                    return;
                }
                Object tag2 = view.getTag();
                Intrinsics.checkNotNull(tag2, "null cannot be cast to non-null type kotlin.Int");
                adapter.notifyItemChanged(((Integer) tag2).intValue());
            }
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public int getItemCount() {
        return this.this$0.getMTotalLikedTagList().size();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public void onBindViewHolder(@NotNull BaseViewHolder holder, int i9) {
        Intrinsics.checkNotNullParameter(holder, "holder");
        holder.itemView.setTag(Integer.valueOf(i9));
        UserHobbyBean.UserHobby userHobby = this.this$0.getMTotalLikedTagList().get(i9);
        TextView textView = (TextView) holder.getView(R.id.tv_tag);
        ViewGroup.LayoutParams layoutParams = textView.getLayoutParams();
        Intrinsics.checkNotNull(layoutParams, "null cannot be cast to non-null type android.view.ViewGroup.MarginLayoutParams");
        ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) layoutParams;
        marginLayoutParams.setMarginStart(DensityUtil.dp2px(10.0f));
        marginLayoutParams.topMargin = DensityUtil.dp2px(10.0f);
        if (userHobby != null ? Intrinsics.areEqual(userHobby.getMIsSelect(), Boolean.TRUE) : false) {
            textView.setBackgroundResource(R.drawable.bg_item_user_tag_select);
            textView.setTextColor(ContextCompat.getColor(this.this$0, R.color.white));
        } else {
            textView.setBackgroundResource(R.drawable.bg_item_user_tag);
            textView.setTextColor(ContextCompat.getColor(this.this$0, R.color.color_ugc_text_level_1));
        }
        if (userHobby != null) {
            textView.setText(userHobby.getTags());
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
        View view = baseViewHolder.itemView;
        final UserEditLikedTagActivity userEditLikedTagActivity = this.this$0;
        view.setOnClickListener(new View.OnClickListener() { // from class: com.guochao.faceshow.aaspring.modulars.user.tag.o
            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                UserEditLikedTagActivity$setViewPagerData$2$1.m579onCreateViewHolder$lambda2(UserEditLikedTagActivity.this, view2);
            }
        });
        return baseViewHolder;
    }
}
