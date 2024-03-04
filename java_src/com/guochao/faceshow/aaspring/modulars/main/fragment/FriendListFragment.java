package com.guochao.faceshow.aaspring.modulars.main.fragment;

import android.content.Intent;
import android.os.Bundle;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.AbsListView;
import android.widget.BaseExpandableListAdapter;
import android.widget.ExpandableListView;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.fragment.app.Fragment;
import androidx.lifecycle.Observer;
import androidx.lifecycle.ViewModelProvider;
import androidx.lifecycle.ViewModelStoreOwner;
import androidx.swiperefreshlayout.widget.SwipeRefreshLayout;
import com.facebook.devicerequests.internal.DeviceRequestsHelper;
import com.guochao.faceshow.R;
import com.guochao.faceshow.aaspring.base.mvvm.annotations.GCViewBinding;
import com.guochao.faceshow.aaspring.base.mvvm.fragment.GCBaseMvvmFragment;
import com.guochao.faceshow.aaspring.base.mvvm.model.BaseModel;
import com.guochao.faceshow.aaspring.base.mvvm.viewmodel.BaseViewModel;
import com.guochao.faceshow.aaspring.db.FriendInfo;
import com.guochao.faceshow.aaspring.db.GroupInfo;
import com.guochao.faceshow.aaspring.modulars.chat.activity.ChatActivity;
import com.guochao.faceshow.aaspring.modulars.chat.search.activity.SearchUserActivity;
import com.guochao.faceshow.aaspring.modulars.main.viewmodel.FriendListViewModel;
import com.guochao.faceshow.aaspring.utils.AppSettings;
import com.guochao.faceshow.aaspring.views.NewCircleImageView;
import com.guochao.faceshow.context.GCApplication;
import com.guochao.faceshow.databinding.FragmentFriendListBinding;
import com.guochao.faceshow.utils.Contants;
import com.guochao.faceshow.utils.TimeUtil;
import java.util.Arrays;
import java.util.List;
import java.util.Objects;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.LazyThreadSafetyMode;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.StringCompanionObject;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(d1 = {"\u0000B\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u000b\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0007\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001:\u0001\"B\u0005¢\u0006\u0002\u0010\u0004J\u001a\u0010\u0017\u001a\u00020\u00182\u0006\u0010\u0019\u001a\u00020\u001a2\b\u0010\u001b\u001a\u0004\u0018\u00010\u001cH\u0014J\b\u0010\u001d\u001a\u00020\u0018H\u0002J\u0012\u0010\u001e\u001a\u00020\u00182\b\u0010\u001f\u001a\u0004\u0018\u00010\u0002H\u0016J\b\u0010 \u001a\u00020\u0018H\u0002J\b\u0010!\u001a\u00020\u0018H\u0002R\u0010\u0010\u0005\u001a\u0004\u0018\u00010\u0006X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\bX\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\nX\u0082\u000e¢\u0006\u0002\n\u0000R$\u0010\u000b\u001a\u00020\f8\u0006@\u0006X\u0087.¢\u0006\u0014\n\u0000\u0012\u0004\b\r\u0010\u0004\u001a\u0004\b\u000e\u0010\u000f\"\u0004\b\u0010\u0010\u0011R\u001b\u0010\u0012\u001a\u00020\u00038VX\u0096\u0084\u0002¢\u0006\f\n\u0004\b\u0015\u0010\u0016\u001a\u0004\b\u0013\u0010\u0014¨\u0006#"}, d2 = {"Lcom/guochao/faceshow/aaspring/modulars/main/fragment/FriendListFragment;", "Lcom/guochao/faceshow/aaspring/base/mvvm/fragment/GCBaseMvvmFragment;", "Lcom/guochao/faceshow/aaspring/base/mvvm/model/BaseModel;", "Lcom/guochao/faceshow/aaspring/modulars/main/viewmodel/FriendListViewModel;", "()V", "adapter", "Lcom/guochao/faceshow/aaspring/modulars/main/fragment/FriendListFragment$FriendListAdapter;", "currentGroupIndex", "", "isFirstEnterKey", "", "viewBinding", "Lcom/guochao/faceshow/databinding/FragmentFriendListBinding;", "getViewBinding$annotations", "getViewBinding", "()Lcom/guochao/faceshow/databinding/FragmentFriendListBinding;", "setViewBinding", "(Lcom/guochao/faceshow/databinding/FragmentFriendListBinding;)V", "viewModel", "getViewModel", "()Lcom/guochao/faceshow/aaspring/modulars/main/viewmodel/FriendListViewModel;", "viewModel$delegate", "Lkotlin/Lazy;", "initView", "", "root", "Landroid/view/View;", "savedInstanceState", "Landroid/os/Bundle;", "loadData", "onModelUpdate", DeviceRequestsHelper.DEVICE_INFO_MODEL, "setEnvent", "setLiveDataObserve", "FriendListAdapter", "app_GooglePlayRelease"}, k = 1, mv = {1, 7, 1}, xi = 48)
/* loaded from: classes3.dex */
public final class FriendListFragment extends GCBaseMvvmFragment<BaseModel, FriendListViewModel> {
    @Nullable
    private FriendListAdapter adapter;
    private int currentGroupIndex;
    @NotNull
    private String isFirstEnterKey = com.guochao.faceshow.aaspring.modulars.login.utils.e.b(getActivity()).userId + "first_enter_friendGroup";
    public FragmentFriendListBinding viewBinding;
    @NotNull
    private final Lazy viewModel$delegate;

    @Metadata(d1 = {"\u0000H\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u000e\u0018\u00002\u00020\u0001:\u0003$%&B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\u001a\u0010\f\u001a\u0004\u0018\u00010\r2\u0006\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u000fH\u0016J\u0018\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u000fH\u0016J4\u0010\u0013\u001a\u00020\u00142\u0006\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u000f2\u0006\u0010\u0015\u001a\u00020\u00162\b\u0010\u0017\u001a\u0004\u0018\u00010\u00142\b\u0010\u0018\u001a\u0004\u0018\u00010\u0019H\u0016J\u0010\u0010\u001a\u001a\u00020\u000f2\u0006\u0010\u000e\u001a\u00020\u000fH\u0016J\u0012\u0010\u001b\u001a\u0004\u0018\u00010\u00072\u0006\u0010\u000e\u001a\u00020\u000fH\u0016J\b\u0010\u001c\u001a\u00020\u000fH\u0016J\u0010\u0010\u001d\u001a\u00020\u00122\u0006\u0010\u000e\u001a\u00020\u000fH\u0016J,\u0010\u001e\u001a\u00020\u00142\u0006\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u001f\u001a\u00020\u00162\b\u0010\u0017\u001a\u0004\u0018\u00010\u00142\b\u0010\u0018\u001a\u0004\u0018\u00010\u0019H\u0016J\b\u0010 \u001a\u00020\u0016H\u0016J\u0018\u0010!\u001a\u00020\u00162\u0006\u0010\"\u001a\u00020\u000f2\u0006\u0010#\u001a\u00020\u000fH\u0016R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000R$\u0010\u0005\u001a\f\u0012\u0006\u0012\u0004\u0018\u00010\u0007\u0018\u00010\u0006X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\b\u0010\t\"\u0004\b\n\u0010\u000b¨\u0006'"}, d2 = {"Lcom/guochao/faceshow/aaspring/modulars/main/fragment/FriendListFragment$FriendListAdapter;", "Landroid/widget/BaseExpandableListAdapter;", "context", "Landroidx/fragment/app/Fragment;", "(Landroidx/fragment/app/Fragment;)V", "groupList", "", "Lcom/guochao/faceshow/aaspring/db/GroupInfo;", "getGroupList", "()Ljava/util/List;", "setGroupList", "(Ljava/util/List;)V", "getChild", "Lcom/guochao/faceshow/aaspring/db/FriendInfo;", "groupPosition", "", "childPosition", "getChildId", "", "getChildView", "Landroid/view/View;", "isLastChild", "", "convertView", "parent", "Landroid/view/ViewGroup;", "getChildrenCount", "getGroup", "getGroupCount", "getGroupId", "getGroupView", "isExpanded", "hasStableIds", "isChildSelectable", "p0", "p1", "ChildHolder", "GroupHolder", "ViewInfo", "app_GooglePlayRelease"}, k = 1, mv = {1, 7, 1}, xi = 48)
    /* loaded from: classes3.dex */
    public static final class FriendListAdapter extends BaseExpandableListAdapter {
        @NotNull
        private final Fragment context;
        @Nullable
        private List<GroupInfo> groupList;

        @Metadata(d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u000b\u0018\u00002\u00020\u0001B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003¢\u0006\u0002\u0010\u0005R\u001c\u0010\u0006\u001a\u0004\u0018\u00010\u0007X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\b\u0010\t\"\u0004\b\n\u0010\u000bR\u001c\u0010\f\u001a\u0004\u0018\u00010\u0007X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\r\u0010\t\"\u0004\b\u000e\u0010\u000bR\u001c\u0010\u000f\u001a\u0004\u0018\u00010\u0010X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0011\u0010\u0012\"\u0004\b\u0013\u0010\u0014R\u001c\u0010\u0015\u001a\u0004\u0018\u00010\u0016X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0017\u0010\u0018\"\u0004\b\u0019\u0010\u001aR\u001c\u0010\u001b\u001a\u0004\u0018\u00010\u0010X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001c\u0010\u0012\"\u0004\b\u001d\u0010\u0014R\u001c\u0010\u001e\u001a\u0004\u0018\u00010\u0010X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001f\u0010\u0012\"\u0004\b \u0010\u0014¨\u0006!"}, d2 = {"Lcom/guochao/faceshow/aaspring/modulars/main/fragment/FriendListFragment$FriendListAdapter$ChildHolder;", "Lcom/guochao/faceshow/aaspring/modulars/main/fragment/FriendListFragment$FriendListAdapter$ViewInfo;", "g", "", com.huawei.hms.opendevice.c.f27627a, "(II)V", Contants.CURRENT_COUNTRY_FLAG, "Lcom/guochao/faceshow/aaspring/views/NewCircleImageView;", "getFlag", "()Lcom/guochao/faceshow/aaspring/views/NewCircleImageView;", "setFlag", "(Lcom/guochao/faceshow/aaspring/views/NewCircleImageView;)V", "headView", "getHeadView", "setHeadView", "name", "Landroid/widget/TextView;", "getName", "()Landroid/widget/TextView;", "setName", "(Landroid/widget/TextView;)V", "onlineState", "Landroid/widget/ImageView;", "getOnlineState", "()Landroid/widget/ImageView;", "setOnlineState", "(Landroid/widget/ImageView;)V", "status", "getStatus", "setStatus", "userSign", "getUserSign", "setUserSign", "app_GooglePlayRelease"}, k = 1, mv = {1, 7, 1}, xi = 48)
        /* loaded from: classes3.dex */
        public static final class ChildHolder extends ViewInfo {
            @Nullable
            private NewCircleImageView flag;
            @Nullable
            private NewCircleImageView headView;
            @Nullable
            private TextView name;
            @Nullable
            private ImageView onlineState;
            @Nullable
            private TextView status;
            @Nullable
            private TextView userSign;

            public ChildHolder(int i9, int i10) {
                super(i9, i10);
            }

            @Nullable
            public final NewCircleImageView getFlag() {
                return this.flag;
            }

            @Nullable
            public final NewCircleImageView getHeadView() {
                return this.headView;
            }

            @Nullable
            public final TextView getName() {
                return this.name;
            }

            @Nullable
            public final ImageView getOnlineState() {
                return this.onlineState;
            }

            @Nullable
            public final TextView getStatus() {
                return this.status;
            }

            @Nullable
            public final TextView getUserSign() {
                return this.userSign;
            }

            public final void setFlag(@Nullable NewCircleImageView newCircleImageView) {
                this.flag = newCircleImageView;
            }

            public final void setHeadView(@Nullable NewCircleImageView newCircleImageView) {
                this.headView = newCircleImageView;
            }

            public final void setName(@Nullable TextView textView) {
                this.name = textView;
            }

            public final void setOnlineState(@Nullable ImageView imageView) {
                this.onlineState = imageView;
            }

            public final void setStatus(@Nullable TextView textView) {
                this.status = textView;
            }

            public final void setUserSign(@Nullable TextView textView) {
                this.userSign = textView;
            }
        }

        @Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\b\u0018\u00002\u00020\u0001B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003¢\u0006\u0002\u0010\u0005R\u001c\u0010\u0006\u001a\u0004\u0018\u00010\u0007X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\b\u0010\t\"\u0004\b\n\u0010\u000bR\u001c\u0010\f\u001a\u0004\u0018\u00010\rX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u000e\u0010\u000f\"\u0004\b\u0010\u0010\u0011R\u001c\u0010\u0012\u001a\u0004\u0018\u00010\rX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0013\u0010\u000f\"\u0004\b\u0014\u0010\u0011¨\u0006\u0015"}, d2 = {"Lcom/guochao/faceshow/aaspring/modulars/main/fragment/FriendListFragment$FriendListAdapter$GroupHolder;", "Lcom/guochao/faceshow/aaspring/modulars/main/fragment/FriendListFragment$FriendListAdapter$ViewInfo;", "g", "", com.huawei.hms.opendevice.c.f27627a, "(II)V", "expandStatus", "Landroid/widget/ImageView;", "getExpandStatus", "()Landroid/widget/ImageView;", "setExpandStatus", "(Landroid/widget/ImageView;)V", "name", "Landroid/widget/TextView;", "getName", "()Landroid/widget/TextView;", "setName", "(Landroid/widget/TextView;)V", "number", "getNumber", "setNumber", "app_GooglePlayRelease"}, k = 1, mv = {1, 7, 1}, xi = 48)
        /* loaded from: classes3.dex */
        public static final class GroupHolder extends ViewInfo {
            @Nullable
            private ImageView expandStatus;
            @Nullable
            private TextView name;
            @Nullable
            private TextView number;

            public GroupHolder(int i9, int i10) {
                super(i9, i10);
            }

            @Nullable
            public final ImageView getExpandStatus() {
                return this.expandStatus;
            }

            @Nullable
            public final TextView getName() {
                return this.name;
            }

            @Nullable
            public final TextView getNumber() {
                return this.number;
            }

            public final void setExpandStatus(@Nullable ImageView imageView) {
                this.expandStatus = imageView;
            }

            public final void setName(@Nullable TextView textView) {
                this.name = textView;
            }

            public final void setNumber(@Nullable TextView textView) {
                this.number = textView;
            }
        }

        @Metadata(d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u000b\b\u0016\u0018\u00002\u00020\u0001B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003¢\u0006\u0002\u0010\u0005R\u001a\u0010\u0006\u001a\u00020\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0007\u0010\b\"\u0004\b\t\u0010\nR\u001a\u0010\u000b\u001a\u00020\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\f\u0010\b\"\u0004\b\r\u0010\n¨\u0006\u000e"}, d2 = {"Lcom/guochao/faceshow/aaspring/modulars/main/fragment/FriendListFragment$FriendListAdapter$ViewInfo;", "", "g", "", com.huawei.hms.opendevice.c.f27627a, "(II)V", "childPosition", "getChildPosition", "()I", "setChildPosition", "(I)V", "groupPosition", "getGroupPosition", "setGroupPosition", "app_GooglePlayRelease"}, k = 1, mv = {1, 7, 1}, xi = 48)
        /* loaded from: classes3.dex */
        public static class ViewInfo {
            private int childPosition;
            private int groupPosition;

            public ViewInfo(int i9, int i10) {
                this.groupPosition = i9;
                this.childPosition = i10;
            }

            public final int getChildPosition() {
                return this.childPosition;
            }

            public final int getGroupPosition() {
                return this.groupPosition;
            }

            public final void setChildPosition(int i9) {
                this.childPosition = i9;
            }

            public final void setGroupPosition(int i9) {
                this.groupPosition = i9;
            }
        }

        public FriendListAdapter(@NotNull Fragment context) {
            List<GroupInfo> emptyList;
            Intrinsics.checkNotNullParameter(context, "context");
            this.context = context;
            emptyList = CollectionsKt__CollectionsKt.emptyList();
            this.groupList = emptyList;
        }

        @Override // android.widget.ExpandableListAdapter
        public long getChildId(int i9, int i10) {
            return i10;
        }

        @Override // android.widget.ExpandableListAdapter
        @NotNull
        public View getChildView(int i9, int i10, boolean z10, @Nullable View view, @Nullable ViewGroup viewGroup) {
            ChildHolder childHolder;
            GroupInfo groupInfo;
            List<FriendInfo> list;
            Integer onlineStatue;
            GroupInfo groupInfo2;
            List<FriendInfo> list2;
            GroupInfo groupInfo3;
            List<FriendInfo> list3;
            if (view == null) {
                ChildHolder childHolder2 = new ChildHolder(i9, i10);
                View inflate = LayoutInflater.from(this.context.getContext()).inflate(R.layout.my_friend_item, viewGroup, false);
                childHolder2.setName((TextView) inflate.findViewById(R.id.user_name));
                childHolder2.setHeadView((NewCircleImageView) inflate.findViewById(R.id.avatar_view));
                childHolder2.setFlag((NewCircleImageView) inflate.findViewById(R.id.flag));
                childHolder2.setOnlineState((ImageView) inflate.findViewById(R.id.online_state));
                childHolder2.setStatus((TextView) inflate.findViewById(R.id.status));
                childHolder2.setUserSign((TextView) inflate.findViewById(R.id.user_sign));
                inflate.setTag(childHolder2);
                childHolder = childHolder2;
                view = inflate;
            } else {
                Object tag = view.getTag();
                Intrinsics.checkNotNull(tag, "null cannot be cast to non-null type com.guochao.faceshow.aaspring.modulars.main.fragment.FriendListFragment.FriendListAdapter.ChildHolder");
                childHolder = (ChildHolder) tag;
            }
            List<GroupInfo> list4 = this.groupList;
            if (!(list4 != null && list4.isEmpty())) {
                List<GroupInfo> list5 = this.groupList;
                if (!((list5 == null || (groupInfo3 = list5.get(i9)) == null || (list3 = groupInfo3.getList()) == null || !list3.isEmpty()) ? false : true)) {
                    List<GroupInfo> list6 = this.groupList;
                    FriendInfo friendInfo = (list6 == null || (groupInfo2 = list6.get(i9)) == null || (list2 = groupInfo2.getList()) == null) ? null : list2.get(i10);
                    TextView name = childHolder.getName();
                    if (name != null) {
                        name.setText(friendInfo != null ? friendInfo.getNickName() : null);
                    }
                    hc.a.h(childHolder.getHeadView(), friendInfo != null ? friendInfo.getHeadImg() : null, R.mipmap.default_head);
                    hc.a.h(childHolder.getFlag(), friendInfo != null ? friendInfo.getCountryFlag() : null, R.mipmap.ic_earth);
                    childHolder.setGroupPosition(i9);
                    childHolder.setChildPosition(i10);
                    String signature = friendInfo != null ? friendInfo.getSignature() : null;
                    if (signature == null || signature.length() == 0) {
                        TextView userSign = childHolder.getUserSign();
                        if (userSign != null) {
                            userSign.setText(this.context.getString(R.string.user_info_default_signature));
                        }
                    } else {
                        TextView userSign2 = childHolder.getUserSign();
                        if (userSign2 != null) {
                            userSign2.setText(friendInfo != null ? friendInfo.getSignature() : null);
                        }
                    }
                    if ((friendInfo == null || (onlineStatue = friendInfo.getOnlineStatue()) == null || onlineStatue.intValue() != 1) ? false : true) {
                        ImageView onlineState = childHolder.getOnlineState();
                        if (onlineState != null) {
                            onlineState.setVisibility(0);
                        }
                        TextView status = childHolder.getStatus();
                        if (status != null) {
                            status.setVisibility(8);
                        }
                    } else {
                        ImageView onlineState2 = childHolder.getOnlineState();
                        if (onlineState2 != null) {
                            onlineState2.setVisibility(8);
                        }
                        TextView status2 = childHolder.getStatus();
                        if (status2 != null) {
                            status2.setVisibility(0);
                        }
                    }
                    if ((friendInfo != null ? friendInfo.getOnlineTime() : null) == null) {
                        TextView status3 = childHolder.getStatus();
                        if (status3 != null) {
                            status3.setText("");
                        }
                    } else {
                        String time = TimeUtil.getTime(this.context.getContext(), friendInfo.getOnlineTime());
                        if (!TextUtils.isEmpty(time)) {
                            TextView status4 = childHolder.getStatus();
                            if (status4 != null) {
                                StringCompanionObject stringCompanionObject = StringCompanionObject.INSTANCE;
                                String format = String.format("[%s]", Arrays.copyOf(new Object[]{time}, 1));
                                Intrinsics.checkNotNullExpressionValue(format, "format(format, *args)");
                                status4.setText(format);
                            }
                        } else {
                            TextView status5 = childHolder.getStatus();
                            if (status5 != null) {
                                status5.setText("");
                            }
                        }
                    }
                    Intrinsics.checkNotNull(view);
                    return view;
                }
            }
            List<GroupInfo> list7 = this.groupList;
            if (list7 != null && (groupInfo = list7.get(i9)) != null && (list = groupInfo.getList()) != null && i10 >= list.size()) {
                Intrinsics.checkNotNull(view);
                return view;
            }
            Intrinsics.checkNotNull(view);
            return view;
        }

        @Override // android.widget.ExpandableListAdapter
        public int getChildrenCount(int i9) {
            List<GroupInfo> list;
            GroupInfo groupInfo;
            List<FriendInfo> list2;
            List<GroupInfo> list3 = this.groupList;
            boolean z10 = true;
            if (((list3 == null || !list3.isEmpty()) ? false : false) || (list = this.groupList) == null || (groupInfo = list.get(i9)) == null || (list2 = groupInfo.getList()) == null) {
                return 0;
            }
            return list2.size();
        }

        @Override // android.widget.ExpandableListAdapter
        public int getGroupCount() {
            List<GroupInfo> list = this.groupList;
            if (list != null) {
                return list.size();
            }
            return 0;
        }

        @Override // android.widget.ExpandableListAdapter
        public long getGroupId(int i9) {
            return i9;
        }

        @Nullable
        public final List<GroupInfo> getGroupList() {
            return this.groupList;
        }

        /* JADX WARN: Removed duplicated region for block: B:43:0x00c3  */
        @Override // android.widget.ExpandableListAdapter
        @org.jetbrains.annotations.NotNull
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public android.view.View getGroupView(int r6, boolean r7, @org.jetbrains.annotations.Nullable android.view.View r8, @org.jetbrains.annotations.Nullable android.view.ViewGroup r9) {
            /*
                Method dump skipped, instructions count: 275
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: com.guochao.faceshow.aaspring.modulars.main.fragment.FriendListFragment.FriendListAdapter.getGroupView(int, boolean, android.view.View, android.view.ViewGroup):android.view.View");
        }

        @Override // android.widget.ExpandableListAdapter
        public boolean hasStableIds() {
            return true;
        }

        @Override // android.widget.ExpandableListAdapter
        public boolean isChildSelectable(int i9, int i10) {
            return true;
        }

        public final void setGroupList(@Nullable List<GroupInfo> list) {
            this.groupList = list;
        }

        @Override // android.widget.ExpandableListAdapter
        @Nullable
        public FriendInfo getChild(int i9, int i10) {
            GroupInfo groupInfo;
            List<FriendInfo> list;
            List<GroupInfo> list2 = this.groupList;
            if (list2 == null || (groupInfo = list2.get(i9)) == null || (list = groupInfo.getList()) == null) {
                return null;
            }
            return list.get(i10);
        }

        @Override // android.widget.ExpandableListAdapter
        @Nullable
        public GroupInfo getGroup(int i9) {
            List<GroupInfo> list = this.groupList;
            if (list != null) {
                return list.get(i9);
            }
            return null;
        }
    }

    public FriendListFragment() {
        Lazy lazy;
        final GCApplication app = GCApplication.app();
        Intrinsics.checkNotNullExpressionValue(app, "app()");
        lazy = LazyKt__LazyJVMKt.lazy(LazyThreadSafetyMode.NONE, (Function0) new Function0<FriendListViewModel>() { // from class: com.guochao.faceshow.aaspring.modulars.main.fragment.FriendListFragment$special$$inlined$lazyGlobalViewModel$default$1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final FriendListViewModel invoke() {
                BaseViewModel baseViewModel;
                ViewModelStoreOwner viewModelStoreOwner = ViewModelStoreOwner.this;
                String str = r2;
                ViewModelProvider.Factory factory = r3;
                ViewModelProvider viewModelProvider = factory == null ? new ViewModelProvider(viewModelStoreOwner) : new ViewModelProvider(viewModelStoreOwner, factory);
                if (str != null) {
                    baseViewModel = (BaseViewModel) viewModelProvider.get(str, FriendListViewModel.class);
                } else {
                    baseViewModel = (BaseViewModel) viewModelProvider.get(FriendListViewModel.class);
                }
                Objects.requireNonNull(baseViewModel, "null cannot be cast to non-null type com.guochao.faceshow.aaspring.modulars.main.viewmodel.FriendListViewModel");
                return (FriendListViewModel) baseViewModel;
            }
        });
        this.viewModel$delegate = lazy;
    }

    @GCViewBinding
    public static /* synthetic */ void getViewBinding$annotations() {
    }

    private final void loadData() {
        getViewModel().getGroupListLiveData().observe(this, new Observer() { // from class: com.guochao.faceshow.aaspring.modulars.main.fragment.j
            @Override // androidx.lifecycle.Observer
            public final void onChanged(Object obj) {
                FriendListFragment.m506loadData$lambda1(FriendListFragment.this, (List) obj);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: loadData$lambda-1  reason: not valid java name */
    public static final void m506loadData$lambda1(FriendListFragment this$0, List list) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.getViewBinding().refresh.setRefreshing(false);
        FriendListAdapter friendListAdapter = this$0.adapter;
        if (friendListAdapter != null) {
            friendListAdapter.setGroupList(list);
        }
        if (list != null) {
            int i9 = 0;
            for (Object obj : list) {
                int i10 = i9 + 1;
                if (i9 < 0) {
                    CollectionsKt__CollectionsKt.throwIndexOverflow();
                }
                GroupInfo groupInfo = (GroupInfo) obj;
                if (groupInfo != null ? Intrinsics.areEqual(groupInfo.isSelect(), Boolean.TRUE) : false) {
                    this$0.getViewBinding().friendList.expandGroup(i9, false);
                } else {
                    this$0.getViewBinding().friendList.collapseGroup(i9);
                }
                i9 = i10;
            }
        }
        if (!AppSettings.getSetting(this$0.isFirstEnterKey)) {
            this$0.getViewBinding().friendList.expandGroup(0);
        }
        FriendListAdapter friendListAdapter2 = this$0.adapter;
        if (friendListAdapter2 != null) {
            friendListAdapter2.notifyDataSetChanged();
        }
    }

    private final void setEnvent() {
        getViewBinding().searchView.tvSearch.setText(R.string.search_hint);
        getViewBinding().searchView.getRoot().setOnClickListener(new View.OnClickListener() { // from class: com.guochao.faceshow.aaspring.modulars.main.fragment.g
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                FriendListFragment.m508setEnvent$lambda3(FriendListFragment.this, view);
            }
        });
        getViewBinding().friendList.setOnScrollListener(new AbsListView.OnScrollListener() { // from class: com.guochao.faceshow.aaspring.modulars.main.fragment.FriendListFragment$setEnvent$2
            /* JADX WARN: Removed duplicated region for block: B:33:0x0095  */
            /* JADX WARN: Removed duplicated region for block: B:34:0x00a2  */
            /* JADX WARN: Removed duplicated region for block: B:37:0x00be  */
            /* JADX WARN: Removed duplicated region for block: B:38:0x00c8  */
            @Override // android.widget.AbsListView.OnScrollListener
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct add '--show-bad-code' argument
            */
            public void onScroll(@org.jetbrains.annotations.Nullable android.widget.AbsListView r4, int r5, int r6, int r7) {
                /*
                    r3 = this;
                    r6 = 8
                    if (r5 != 0) goto Lf
                    com.guochao.faceshow.aaspring.modulars.main.fragment.FriendListFragment r7 = com.guochao.faceshow.aaspring.modulars.main.fragment.FriendListFragment.this
                    com.guochao.faceshow.databinding.FragmentFriendListBinding r7 = r7.getViewBinding()
                    androidx.appcompat.widget.LinearLayoutCompat r7 = r7.groupNameLayout
                    r7.setVisibility(r6)
                Lf:
                    if (r4 == 0) goto Ldb
                    r7 = 0
                    android.view.View r4 = r4.getChildAt(r7)
                    if (r4 == 0) goto Ldb
                    java.lang.Object r4 = r4.getTag()
                    if (r4 == 0) goto Ldb
                    com.guochao.faceshow.aaspring.modulars.main.fragment.FriendListFragment r0 = com.guochao.faceshow.aaspring.modulars.main.fragment.FriendListFragment.this
                    com.guochao.faceshow.aaspring.modulars.main.fragment.FriendListFragment$FriendListAdapter$ViewInfo r4 = (com.guochao.faceshow.aaspring.modulars.main.fragment.FriendListFragment.FriendListAdapter.ViewInfo) r4
                    int r1 = r4.getGroupPosition()
                    com.guochao.faceshow.aaspring.modulars.main.fragment.FriendListFragment.access$setCurrentGroupIndex$p(r0, r1)
                    int r1 = r4.getGroupPosition()
                    if (r1 < 0) goto Ld2
                    if (r5 <= 0) goto Ld2
                    com.guochao.faceshow.aaspring.modulars.main.fragment.FriendListFragment$FriendListAdapter r5 = com.guochao.faceshow.aaspring.modulars.main.fragment.FriendListFragment.access$getAdapter$p(r0)
                    if (r5 == 0) goto Ldb
                    java.util.List r5 = r5.getGroupList()
                    if (r5 == 0) goto Ldb
                    int r4 = r4.getGroupPosition()
                    java.lang.Object r4 = r5.get(r4)
                    com.guochao.faceshow.aaspring.db.GroupInfo r4 = (com.guochao.faceshow.aaspring.db.GroupInfo) r4
                    if (r4 == 0) goto Ldb
                    int r5 = r4.getId()
                    if (r5 != 0) goto L72
                    java.lang.String r5 = r4.getName()
                    if (r5 == 0) goto L5e
                    int r5 = r5.length()
                    if (r5 != 0) goto L5c
                    goto L5e
                L5c:
                    r5 = 0
                    goto L5f
                L5e:
                    r5 = 1
                L5f:
                    if (r5 == 0) goto L72
                    com.guochao.faceshow.databinding.FragmentFriendListBinding r5 = r0.getViewBinding()
                    android.widget.TextView r5 = r5.groupName
                    r1 = 2131887514(0x7f12059a, float:1.9409637E38)
                    java.lang.String r1 = r0.getString(r1)
                    r5.setText(r1)
                    goto L7f
                L72:
                    com.guochao.faceshow.databinding.FragmentFriendListBinding r5 = r0.getViewBinding()
                    android.widget.TextView r5 = r5.groupName
                    java.lang.String r1 = r4.getName()
                    r5.setText(r1)
                L7f:
                    com.guochao.faceshow.databinding.FragmentFriendListBinding r5 = r0.getViewBinding()
                    android.widget.TextView r5 = r5.number
                    java.lang.StringBuilder r1 = new java.lang.StringBuilder
                    r1.<init>()
                    r2 = 40
                    r1.append(r2)
                    java.util.List r2 = r4.getList()
                    if (r2 == 0) goto La2
                    int r2 = r2.size()
                    java.lang.Integer r2 = java.lang.Integer.valueOf(r2)
                    java.lang.String r2 = r2.toString()
                    goto La3
                La2:
                    r2 = 0
                La3:
                    r1.append(r2)
                    r2 = 41
                    r1.append(r2)
                    java.lang.String r1 = r1.toString()
                    r5.setText(r1)
                    java.lang.Boolean r4 = r4.isSelect()
                    java.lang.Boolean r5 = java.lang.Boolean.TRUE
                    boolean r4 = kotlin.jvm.internal.Intrinsics.areEqual(r4, r5)
                    if (r4 == 0) goto Lc8
                    com.guochao.faceshow.databinding.FragmentFriendListBinding r4 = r0.getViewBinding()
                    androidx.appcompat.widget.LinearLayoutCompat r4 = r4.groupNameLayout
                    r4.setVisibility(r7)
                    goto Ldb
                Lc8:
                    com.guochao.faceshow.databinding.FragmentFriendListBinding r4 = r0.getViewBinding()
                    androidx.appcompat.widget.LinearLayoutCompat r4 = r4.groupNameLayout
                    r4.setVisibility(r6)
                    goto Ldb
                Ld2:
                    com.guochao.faceshow.databinding.FragmentFriendListBinding r4 = r0.getViewBinding()
                    androidx.appcompat.widget.LinearLayoutCompat r4 = r4.groupNameLayout
                    r4.setVisibility(r6)
                Ldb:
                    return
                */
                throw new UnsupportedOperationException("Method not decompiled: com.guochao.faceshow.aaspring.modulars.main.fragment.FriendListFragment$setEnvent$2.onScroll(android.widget.AbsListView, int, int, int):void");
            }

            @Override // android.widget.AbsListView.OnScrollListener
            public void onScrollStateChanged(@Nullable AbsListView absListView, int i9) {
            }
        });
        getViewBinding().groupNameLayout.setOnClickListener(new View.OnClickListener() { // from class: com.guochao.faceshow.aaspring.modulars.main.fragment.f
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                FriendListFragment.m509setEnvent$lambda4(FriendListFragment.this, view);
            }
        });
        getViewBinding().refresh.setOnRefreshListener(new SwipeRefreshLayout.OnRefreshListener() { // from class: com.guochao.faceshow.aaspring.modulars.main.fragment.l
            @Override // androidx.swiperefreshlayout.widget.SwipeRefreshLayout.OnRefreshListener
            public final void onRefresh() {
                FriendListFragment.m510setEnvent$lambda5(FriendListFragment.this);
            }
        });
        getViewBinding().friendList.setOnChildClickListener(new ExpandableListView.OnChildClickListener() { // from class: com.guochao.faceshow.aaspring.modulars.main.fragment.h
            @Override // android.widget.ExpandableListView.OnChildClickListener
            public final boolean onChildClick(ExpandableListView expandableListView, View view, int i9, int i10, long j10) {
                boolean m511setEnvent$lambda8;
                m511setEnvent$lambda8 = FriendListFragment.m511setEnvent$lambda8(FriendListFragment.this, expandableListView, view, i9, i10, j10);
                return m511setEnvent$lambda8;
            }
        });
        getViewBinding().friendList.setOnGroupClickListener(new ExpandableListView.OnGroupClickListener() { // from class: com.guochao.faceshow.aaspring.modulars.main.fragment.i
            @Override // android.widget.ExpandableListView.OnGroupClickListener
            public final boolean onGroupClick(ExpandableListView expandableListView, View view, int i9, long j10) {
                boolean m507setEnvent$lambda10;
                m507setEnvent$lambda10 = FriendListFragment.m507setEnvent$lambda10(FriendListFragment.this, expandableListView, view, i9, j10);
                return m507setEnvent$lambda10;
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: setEnvent$lambda-10  reason: not valid java name */
    public static final boolean m507setEnvent$lambda10(FriendListFragment this$0, ExpandableListView expandableListView, View view, int i9, long j10) {
        List<GroupInfo> groupList;
        GroupInfo groupInfo;
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        boolean z10 = false;
        if (expandableListView.isGroupExpanded(i9)) {
            expandableListView.collapseGroup(i9);
        } else {
            expandableListView.expandGroup(i9, false);
            z10 = true;
        }
        FriendListAdapter friendListAdapter = this$0.adapter;
        if (friendListAdapter != null && (groupList = friendListAdapter.getGroupList()) != null && (groupInfo = groupList.get(i9)) != null) {
            this$0.getViewModel().updateExpande(z10, groupInfo.getId());
            groupInfo.setSelect(Boolean.valueOf(z10));
        }
        if (!AppSettings.getSetting(this$0.isFirstEnterKey)) {
            AppSettings.setSetting(this$0.isFirstEnterKey, true);
        }
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: setEnvent$lambda-3  reason: not valid java name */
    public static final void m508setEnvent$lambda3(FriendListFragment this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        SearchUserActivity.start(this$0.getContext());
        this$0.requireActivity().overridePendingTransition(0, 0);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: setEnvent$lambda-4  reason: not valid java name */
    public static final void m509setEnvent$lambda4(FriendListFragment this$0, View view) {
        List<GroupInfo> groupList;
        List<GroupInfo> groupList2;
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        GroupInfo groupInfo = null;
        if (this$0.getViewBinding().friendList.isGroupExpanded(this$0.currentGroupIndex)) {
            FriendListAdapter friendListAdapter = this$0.adapter;
            if (friendListAdapter != null && (groupList2 = friendListAdapter.getGroupList()) != null) {
                groupInfo = groupList2.get(this$0.currentGroupIndex);
            }
            if (groupInfo != null) {
                groupInfo.setSelect(Boolean.FALSE);
            }
            this$0.getViewBinding().groupNameLayout.setVisibility(8);
            this$0.getViewBinding().friendList.collapseGroup(this$0.currentGroupIndex);
            return;
        }
        FriendListAdapter friendListAdapter2 = this$0.adapter;
        if (friendListAdapter2 != null && (groupList = friendListAdapter2.getGroupList()) != null) {
            groupInfo = groupList.get(this$0.currentGroupIndex);
        }
        if (groupInfo != null) {
            groupInfo.setSelect(Boolean.TRUE);
        }
        this$0.getViewBinding().groupNameLayout.setVisibility(0);
        this$0.getViewBinding().friendList.expandGroup(this$0.currentGroupIndex);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: setEnvent$lambda-5  reason: not valid java name */
    public static final void m510setEnvent$lambda5(FriendListFragment this$0) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.getViewModel().getGroupList();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: setEnvent$lambda-8  reason: not valid java name */
    public static final boolean m511setEnvent$lambda8(FriendListFragment this$0, ExpandableListView expandableListView, View view, int i9, int i10, long j10) {
        List<GroupInfo> groupList;
        GroupInfo groupInfo;
        List<FriendInfo> list;
        FriendInfo friendInfo;
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intent intent = new Intent(this$0.getActivity(), ChatActivity.class);
        FriendListAdapter friendListAdapter = this$0.adapter;
        if (friendListAdapter == null || (groupList = friendListAdapter.getGroupList()) == null || (groupInfo = groupList.get(i9)) == null || (list = groupInfo.getList()) == null || (friendInfo = list.get(i10)) == null) {
            return true;
        }
        intent.putExtra("name", friendInfo.getNickName());
        intent.putExtra(Contants.USER_ID, friendInfo.getFriendId());
        this$0.startActivity(intent);
        return true;
    }

    private final void setLiveDataObserve() {
        getViewModel().getFriendListLivedata().observe(this, new Observer() { // from class: com.guochao.faceshow.aaspring.modulars.main.fragment.k
            @Override // androidx.lifecycle.Observer
            public final void onChanged(Object obj) {
                FriendListFragment.m512setLiveDataObserve$lambda2(FriendListFragment.this, (List) obj);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: setLiveDataObserve$lambda-2  reason: not valid java name */
    public static final void m512setLiveDataObserve$lambda2(FriendListFragment this$0, List list) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.getViewBinding().refresh.setRefreshing(false);
        if (list != null && !list.isEmpty()) {
            this$0.getViewBinding().empty.getRoot().setVisibility(8);
        } else {
            this$0.getViewBinding().empty.getRoot().setVisibility(0);
        }
    }

    @NotNull
    public final FragmentFriendListBinding getViewBinding() {
        FragmentFriendListBinding fragmentFriendListBinding = this.viewBinding;
        if (fragmentFriendListBinding != null) {
            return fragmentFriendListBinding;
        }
        Intrinsics.throwUninitializedPropertyAccessException("viewBinding");
        return null;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.guochao.faceshow.aaspring.base.mvvm.fragment.GCCoreFragment
    public void initView(@NotNull View root, @Nullable Bundle bundle) {
        Intrinsics.checkNotNullParameter(root, "root");
        super.initView(root, bundle);
        getViewBinding().refresh.setRefreshing(true);
        getViewBinding().empty.emptyText.setText(R.string.friend_group_no_friends);
        getViewBinding().empty.getRoot().setBackgroundResource(R.color.white);
        this.adapter = new FriendListAdapter(this);
        getViewBinding().friendList.setAdapter(this.adapter);
        setEnvent();
        setLiveDataObserve();
        loadData();
        getViewModel().getGroupList();
    }

    @Override // com.guochao.faceshow.aaspring.base.mvvm.viewmodel.BaseViewModel.ModelUpdateObserver
    public void onModelUpdate(@Nullable BaseModel baseModel) {
    }

    public final void setViewBinding(@NotNull FragmentFriendListBinding fragmentFriendListBinding) {
        Intrinsics.checkNotNullParameter(fragmentFriendListBinding, "<set-?>");
        this.viewBinding = fragmentFriendListBinding;
    }

    @Override // com.guochao.faceshow.aaspring.base.mvvm.fragment.GCBaseMvvmFragment
    @NotNull
    public FriendListViewModel getViewModel() {
        return (FriendListViewModel) this.viewModel$delegate.getValue();
    }
}
