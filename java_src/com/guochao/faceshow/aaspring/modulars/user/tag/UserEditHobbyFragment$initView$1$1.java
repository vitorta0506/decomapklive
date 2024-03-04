package com.guochao.faceshow.aaspring.modulars.user.tag;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import androidx.core.content.ContextCompat;
import androidx.fragment.app.FragmentActivity;
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
@Metadata(d1 = {"\u0000%\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0002*\u0001\u0000\b\n\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001J\b\u0010\u0003\u001a\u00020\u0004H\u0016J\u0018\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u00022\u0006\u0010\b\u001a\u00020\u0004H\u0016J\u0018\u0010\t\u001a\u00020\u00022\u0006\u0010\n\u001a\u00020\u000b2\u0006\u0010\f\u001a\u00020\u0004H\u0016¨\u0006\r"}, d2 = {"com/guochao/faceshow/aaspring/modulars/user/tag/UserEditHobbyFragment$initView$1$1", "Landroidx/recyclerview/widget/RecyclerView$Adapter;", "Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;", "getItemCount", "", "onBindViewHolder", "", "holder", "position", "onCreateViewHolder", "parent", "Landroid/view/ViewGroup;", "viewType", "app_GooglePlayRelease"}, k = 1, mv = {1, 7, 1}, xi = 48)
/* loaded from: classes3.dex */
public final class UserEditHobbyFragment$initView$1$1 extends RecyclerView.Adapter<BaseViewHolder> {
    final /* synthetic */ UserEditHobbyFragment this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    public UserEditHobbyFragment$initView$1$1(UserEditHobbyFragment userEditHobbyFragment) {
        this.this$0 = userEditHobbyFragment;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: onCreateViewHolder$lambda-5  reason: not valid java name */
    public static final void m574onCreateViewHolder$lambda5(UserEditHobbyFragment this$0, View view) {
        RecyclerView.Adapter adapter;
        RecyclerView.Adapter adapter2;
        RecyclerView.Adapter adapter3;
        RecyclerView.Adapter adapter4;
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        if (view.getTag() instanceof Integer) {
            List<UserHobbyBean.UserHobby> mDataList = this$0.getMDataList();
            Object tag = view.getTag();
            Intrinsics.checkNotNull(tag, "null cannot be cast to non-null type kotlin.Int");
            UserHobbyBean.UserHobby userHobby = mDataList.get(((Integer) tag).intValue());
            if (userHobby != null && Intrinsics.areEqual(userHobby.getMIsSelect(), Boolean.TRUE)) {
                userHobby.setMIsSelect(Boolean.FALSE);
                FragmentActivity activity = this$0.getActivity();
                Intrinsics.checkNotNull(activity, "null cannot be cast to non-null type com.guochao.faceshow.aaspring.modulars.user.tag.UserEditHobbyTagActivity");
                List<UserHobbyBean.UserHobby> mUserHobbyList = ((UserEditHobbyTagActivity) activity).getMUserHobbyList();
                UserHobbyBean.UserHobby userHobby2 = null;
                for (UserHobbyBean.UserHobby userHobby3 : mUserHobbyList) {
                    if (Intrinsics.areEqual(userHobby3 != null ? userHobby3.getHobbyId() : null, userHobby.getHobbyId())) {
                        userHobby2 = userHobby3;
                    }
                }
                if (userHobby2 != null) {
                    mUserHobbyList.remove(userHobby2);
                }
                FragmentActivity activity2 = this$0.getActivity();
                Intrinsics.checkNotNull(activity2, "null cannot be cast to non-null type com.guochao.faceshow.aaspring.modulars.user.tag.UserEditHobbyTagActivity");
                RecyclerView mRecyclerView = ((UserEditHobbyTagActivity) activity2).getMRecyclerView();
                if (mRecyclerView != null && (adapter4 = mRecyclerView.getAdapter()) != null) {
                    adapter4.notifyDataSetChanged();
                }
                RecyclerView mRecyclerView2 = this$0.getMRecyclerView();
                if (mRecyclerView2 != null && (adapter3 = mRecyclerView2.getAdapter()) != null) {
                    Object tag2 = view.getTag();
                    Intrinsics.checkNotNull(tag2, "null cannot be cast to non-null type kotlin.Int");
                    adapter3.notifyItemChanged(((Integer) tag2).intValue());
                }
                FragmentActivity activity3 = this$0.getActivity();
                Intrinsics.checkNotNull(activity3, "null cannot be cast to non-null type com.guochao.faceshow.aaspring.modulars.user.tag.UserEditHobbyTagActivity");
                FragmentActivity activity4 = this$0.getActivity();
                Intrinsics.checkNotNull(activity4, "null cannot be cast to non-null type com.guochao.faceshow.aaspring.modulars.user.tag.UserEditHobbyTagActivity");
                String valueOf = String.valueOf(((UserEditHobbyTagActivity) activity4).getMUserHobbyList().size());
                StringCompanionObject stringCompanionObject = StringCompanionObject.INSTANCE;
                FragmentActivity activity5 = this$0.getActivity();
                Intrinsics.checkNotNull(activity5, "null cannot be cast to non-null type com.guochao.faceshow.aaspring.modulars.user.tag.UserEditHobbyTagActivity");
                String format = String.format("(%s/10)", Arrays.copyOf(new Object[]{Integer.valueOf(((UserEditHobbyTagActivity) activity5).getMUserHobbyList().size())}, 1));
                Intrinsics.checkNotNullExpressionValue(format, "format(format, *args)");
                ((UserEditHobbyTagActivity) activity3).setCount(valueOf, format);
                return;
            }
        }
        FragmentActivity activity6 = this$0.getActivity();
        Intrinsics.checkNotNull(activity6, "null cannot be cast to non-null type com.guochao.faceshow.aaspring.modulars.user.tag.UserEditHobbyTagActivity");
        if (((UserEditHobbyTagActivity) activity6).getMUserHobbyList().size() >= 10) {
            this$0.showToast(R.string.max_tag_to_choose);
        } else if (view.getTag() instanceof Integer) {
            List<UserHobbyBean.UserHobby> mDataList2 = this$0.getMDataList();
            Object tag3 = view.getTag();
            Intrinsics.checkNotNull(tag3, "null cannot be cast to non-null type kotlin.Int");
            UserHobbyBean.UserHobby userHobby4 = mDataList2.get(((Integer) tag3).intValue());
            if (userHobby4 != null) {
                FragmentActivity activity7 = this$0.getActivity();
                Intrinsics.checkNotNull(activity7, "null cannot be cast to non-null type com.guochao.faceshow.aaspring.modulars.user.tag.UserEditHobbyTagActivity");
                for (UserHobbyBean.UserHobby userHobby5 : ((UserEditHobbyTagActivity) activity7).getMUserHobbyList()) {
                    if (Intrinsics.areEqual(userHobby5 != null ? userHobby5.getHobbyId() : null, userHobby4.getHobbyId())) {
                        return;
                    }
                }
                userHobby4.setMIsSelect(Boolean.TRUE);
                FragmentActivity activity8 = this$0.getActivity();
                Intrinsics.checkNotNull(activity8, "null cannot be cast to non-null type com.guochao.faceshow.aaspring.modulars.user.tag.UserEditHobbyTagActivity");
                ((UserEditHobbyTagActivity) activity8).getMUserHobbyList().add(userHobby4);
                FragmentActivity activity9 = this$0.getActivity();
                Intrinsics.checkNotNull(activity9, "null cannot be cast to non-null type com.guochao.faceshow.aaspring.modulars.user.tag.UserEditHobbyTagActivity");
                RecyclerView mRecyclerView3 = ((UserEditHobbyTagActivity) activity9).getMRecyclerView();
                if (mRecyclerView3 != null && (adapter2 = mRecyclerView3.getAdapter()) != null) {
                    adapter2.notifyDataSetChanged();
                }
                RecyclerView mRecyclerView4 = this$0.getMRecyclerView();
                if (mRecyclerView4 != null && (adapter = mRecyclerView4.getAdapter()) != null) {
                    Object tag4 = view.getTag();
                    Intrinsics.checkNotNull(tag4, "null cannot be cast to non-null type kotlin.Int");
                    adapter.notifyItemChanged(((Integer) tag4).intValue());
                }
                FragmentActivity activity10 = this$0.getActivity();
                Intrinsics.checkNotNull(activity10, "null cannot be cast to non-null type com.guochao.faceshow.aaspring.modulars.user.tag.UserEditHobbyTagActivity");
                FragmentActivity activity11 = this$0.getActivity();
                Intrinsics.checkNotNull(activity11, "null cannot be cast to non-null type com.guochao.faceshow.aaspring.modulars.user.tag.UserEditHobbyTagActivity");
                String valueOf2 = String.valueOf(((UserEditHobbyTagActivity) activity11).getMUserHobbyList().size());
                StringCompanionObject stringCompanionObject2 = StringCompanionObject.INSTANCE;
                FragmentActivity activity12 = this$0.getActivity();
                Intrinsics.checkNotNull(activity12, "null cannot be cast to non-null type com.guochao.faceshow.aaspring.modulars.user.tag.UserEditHobbyTagActivity");
                String format2 = String.format("(%s/10)", Arrays.copyOf(new Object[]{Integer.valueOf(((UserEditHobbyTagActivity) activity12).getMUserHobbyList().size())}, 1));
                Intrinsics.checkNotNullExpressionValue(format2, "format(format, *args)");
                ((UserEditHobbyTagActivity) activity10).setCount(valueOf2, format2);
            }
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public int getItemCount() {
        return this.this$0.getMDataList().size();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public void onBindViewHolder(@NotNull BaseViewHolder holder, int i9) {
        Intrinsics.checkNotNullParameter(holder, "holder");
        holder.itemView.setTag(Integer.valueOf(i9));
        UserHobbyBean.UserHobby userHobby = this.this$0.getMDataList().get(i9);
        TextView textView = (TextView) holder.getView(R.id.tv_tag);
        ViewGroup.LayoutParams layoutParams = textView.getLayoutParams();
        Intrinsics.checkNotNull(layoutParams, "null cannot be cast to non-null type android.view.ViewGroup.MarginLayoutParams");
        ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) layoutParams;
        marginLayoutParams.setMarginStart(DensityUtil.dp2px(16.0f));
        marginLayoutParams.topMargin = DensityUtil.dp2px(16.0f);
        if (userHobby != null ? Intrinsics.areEqual(userHobby.getMIsSelect(), Boolean.TRUE) : false) {
            textView.setBackgroundResource(R.drawable.bg_item_user_tag_select);
            textView.setTextColor(ContextCompat.getColor(textView.getContext(), R.color.color_ugc_app_primary));
        } else {
            textView.setBackgroundResource(R.drawable.bg_item_user_tag);
            textView.setTextColor(ContextCompat.getColor(textView.getContext(), R.color.color_ugc_text_level_1));
        }
        UserHobbyBean.UserHobby userHobby2 = this.this$0.getMDataList().get(i9);
        if (userHobby2 != null) {
            textView.setText(userHobby2.getTags());
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
        final UserEditHobbyFragment userEditHobbyFragment = this.this$0;
        view.setOnClickListener(new View.OnClickListener() { // from class: com.guochao.faceshow.aaspring.modulars.user.tag.j
            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                UserEditHobbyFragment$initView$1$1.m574onCreateViewHolder$lambda5(UserEditHobbyFragment.this, view2);
            }
        });
        return baseViewHolder;
    }
}
