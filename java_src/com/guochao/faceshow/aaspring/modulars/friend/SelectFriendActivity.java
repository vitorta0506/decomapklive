package com.guochao.faceshow.aaspring.modulars.friend;

import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.text.Editable;
import android.text.TextWatcher;
import android.view.LayoutInflater;
import android.view.Menu;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseExpandableListAdapter;
import android.widget.EditText;
import android.widget.ExpandableListView;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.lifecycle.Observer;
import androidx.lifecycle.ViewModelProvider;
import androidx.lifecycle.ViewModelStoreOwner;
import com.facebook.devicerequests.internal.DeviceRequestsHelper;
import com.guochao.faceshow.R;
import com.guochao.faceshow.aaspring.base.mvvm.activity.GCBaseMvvmActivity;
import com.guochao.faceshow.aaspring.base.mvvm.annotations.GCViewBinding;
import com.guochao.faceshow.aaspring.base.mvvm.model.BaseModel;
import com.guochao.faceshow.aaspring.base.mvvm.viewmodel.BaseViewModel;
import com.guochao.faceshow.aaspring.db.FriendInfo;
import com.guochao.faceshow.aaspring.db.GroupInfo;
import com.guochao.faceshow.aaspring.modulars.friend.bean.FriendListBean;
import com.guochao.faceshow.aaspring.modulars.main.viewmodel.FriendListViewModel;
import com.guochao.faceshow.aaspring.views.NewCircleImageView;
import com.guochao.faceshow.context.GCApplication;
import com.guochao.faceshow.databinding.ActivitySelectFriendBinding;
import com.guochao.faceshow.utils.Contants;
import java.util.ArrayList;
import java.util.List;
import java.util.Objects;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.LazyThreadSafetyMode;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(d1 = {"\u0000Z\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u000b\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001:\u00010B\u0005¢\u0006\u0002\u0010\u0004J\b\u0010\"\u001a\u00020#H\u0002J\u0012\u0010$\u001a\u00020#2\b\u0010%\u001a\u0004\u0018\u00010&H\u0016J\b\u0010'\u001a\u00020#H\u0002J\u0010\u0010(\u001a\u00020)2\u0006\u0010*\u001a\u00020+H\u0016J\u0012\u0010,\u001a\u00020#2\b\u0010-\u001a\u0004\u0018\u00010\u0002H\u0016J\u0010\u0010.\u001a\u00020#2\u0006\u0010/\u001a\u00020\u0015H\u0002R\u001a\u0010\u0005\u001a\u00020\u0006X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0007\u0010\b\"\u0004\b\t\u0010\nR\u0016\u0010\u000b\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\r0\fX\u0082\u000e¢\u0006\u0002\n\u0000R\u001c\u0010\u000e\u001a\u0004\u0018\u00010\u000fX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0010\u0010\u0011\"\u0004\b\u0012\u0010\u0013R\u0014\u0010\u0014\u001a\b\u0012\u0004\u0012\u00020\u00150\fX\u0082\u000e¢\u0006\u0002\n\u0000R$\u0010\u0016\u001a\u00020\u00178\u0006@\u0006X\u0087.¢\u0006\u0014\n\u0000\u0012\u0004\b\u0018\u0010\u0004\u001a\u0004\b\u0019\u0010\u001a\"\u0004\b\u001b\u0010\u001cR\u001b\u0010\u001d\u001a\u00020\u00038VX\u0096\u0084\u0002¢\u0006\f\n\u0004\b \u0010!\u001a\u0004\b\u001e\u0010\u001f¨\u00061"}, d2 = {"Lcom/guochao/faceshow/aaspring/modulars/friend/SelectFriendActivity;", "Lcom/guochao/faceshow/aaspring/base/mvvm/activity/GCBaseMvvmActivity;", "Lcom/guochao/faceshow/aaspring/base/mvvm/model/BaseModel;", "Lcom/guochao/faceshow/aaspring/modulars/main/viewmodel/FriendListViewModel;", "()V", "adapter", "Lcom/guochao/faceshow/aaspring/modulars/friend/SelectFriendActivity$FriendListAdapter;", "getAdapter", "()Lcom/guochao/faceshow/aaspring/modulars/friend/SelectFriendActivity$FriendListAdapter;", "setAdapter", "(Lcom/guochao/faceshow/aaspring/modulars/friend/SelectFriendActivity$FriendListAdapter;)V", "list", "", "Lcom/guochao/faceshow/aaspring/db/GroupInfo;", "menuItem", "Landroid/view/MenuItem;", "getMenuItem", "()Landroid/view/MenuItem;", "setMenuItem", "(Landroid/view/MenuItem;)V", "selectedIds", "", "viewBinding", "Lcom/guochao/faceshow/databinding/ActivitySelectFriendBinding;", "getViewBinding$annotations", "getViewBinding", "()Lcom/guochao/faceshow/databinding/ActivitySelectFriendBinding;", "setViewBinding", "(Lcom/guochao/faceshow/databinding/ActivitySelectFriendBinding;)V", "viewModel", "getViewModel", "()Lcom/guochao/faceshow/aaspring/modulars/main/viewmodel/FriendListViewModel;", "viewModel$delegate", "Lkotlin/Lazy;", "calCount", "", "initView", "savedInstanceSate", "Landroid/os/Bundle;", "loadData", "onCreateOptionsMenu", "", "menu", "Landroid/view/Menu;", "onModelUpdate", DeviceRequestsHelper.DEVICE_INFO_MODEL, "searchByKey", "key", "FriendListAdapter", "app_GooglePlayRelease"}, k = 1, mv = {1, 7, 1}, xi = 48)
/* loaded from: classes3.dex */
public final class SelectFriendActivity extends GCBaseMvvmActivity<BaseModel, FriendListViewModel> {
    @NotNull
    private FriendListAdapter adapter;
    @NotNull
    private List<GroupInfo> list;
    @Nullable
    private MenuItem menuItem;
    @NotNull
    private List<String> selectedIds;
    public ActivitySelectFriendBinding viewBinding;
    @NotNull
    private final Lazy viewModel$delegate;

    @Metadata(d1 = {"\u0000J\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\f\u0018\u00002\u00020\u0001:\u0003'()B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\u0018\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00020\u0012H\u0016J\u0018\u0010\u0014\u001a\u00020\u00152\u0006\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00020\u0012H\u0016J4\u0010\u0016\u001a\u00020\u00172\u0006\u0010\u0018\u001a\u00020\u00122\u0006\u0010\u0019\u001a\u00020\u00122\u0006\u0010\u001a\u001a\u00020\u001b2\b\u0010\u001c\u001a\u0004\u0018\u00010\u00172\b\u0010\u001d\u001a\u0004\u0018\u00010\u001eH\u0016J\u0010\u0010\u001f\u001a\u00020\u00122\u0006\u0010\u0011\u001a\u00020\u0012H\u0016J\u0010\u0010 \u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u0012H\u0016J\b\u0010!\u001a\u00020\u0012H\u0016J\u0010\u0010\"\u001a\u00020\u00152\u0006\u0010\u0011\u001a\u00020\u0012H\u0016J,\u0010#\u001a\u00020\u00172\u0006\u0010\u0018\u001a\u00020\u00122\u0006\u0010$\u001a\u00020\u001b2\b\u0010\u001c\u001a\u0004\u0018\u00010\u00172\b\u0010\u001d\u001a\u0004\u0018\u00010\u001eH\u0016J\b\u0010%\u001a\u00020\u001bH\u0016J\u0018\u0010&\u001a\u00020\u001b2\u0006\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00020\u0012H\u0016R\u001a\u0010\u0002\u001a\u00020\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0005\u0010\u0006\"\u0004\b\u0007\u0010\u0004R$\u0010\b\u001a\f\u0012\u0006\u0012\u0004\u0018\u00010\n\u0018\u00010\tX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u000b\u0010\f\"\u0004\b\r\u0010\u000e¨\u0006*"}, d2 = {"Lcom/guochao/faceshow/aaspring/modulars/friend/SelectFriendActivity$FriendListAdapter;", "Landroid/widget/BaseExpandableListAdapter;", "context", "Landroid/content/Context;", "(Landroid/content/Context;)V", "getContext", "()Landroid/content/Context;", "setContext", "groupList", "", "Lcom/guochao/faceshow/aaspring/db/GroupInfo;", "getGroupList", "()Ljava/util/List;", "setGroupList", "(Ljava/util/List;)V", "getChild", "", "p0", "", "p1", "getChildId", "", "getChildView", "Landroid/view/View;", "groupPosition", "childPosition", "isLastChild", "", "convertView", "parent", "Landroid/view/ViewGroup;", "getChildrenCount", "getGroup", "getGroupCount", "getGroupId", "getGroupView", "isExpanded", "hasStableIds", "isChildSelectable", "ChildHolder", "GroupHolder", "ViewInfo", "app_GooglePlayRelease"}, k = 1, mv = {1, 7, 1}, xi = 48)
    /* loaded from: classes3.dex */
    public static final class FriendListAdapter extends BaseExpandableListAdapter {
        @NotNull
        private Context context;
        @Nullable
        private List<GroupInfo> groupList;

        @Metadata(d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\b\u0018\u00002\u00020\u0001B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003¢\u0006\u0002\u0010\u0005R\u001c\u0010\u0006\u001a\u0004\u0018\u00010\u0007X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\b\u0010\t\"\u0004\b\n\u0010\u000bR\u001c\u0010\f\u001a\u0004\u0018\u00010\rX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u000e\u0010\u000f\"\u0004\b\u0010\u0010\u0011R\u001c\u0010\u0012\u001a\u0004\u0018\u00010\rX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0013\u0010\u000f\"\u0004\b\u0014\u0010\u0011R\u001c\u0010\u0015\u001a\u0004\u0018\u00010\u0016X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0017\u0010\u0018\"\u0004\b\u0019\u0010\u001aR\u001c\u0010\u001b\u001a\u0004\u0018\u00010\u0007X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001c\u0010\t\"\u0004\b\u001d\u0010\u000b¨\u0006\u001e"}, d2 = {"Lcom/guochao/faceshow/aaspring/modulars/friend/SelectFriendActivity$FriendListAdapter$ChildHolder;", "Lcom/guochao/faceshow/aaspring/modulars/friend/SelectFriendActivity$FriendListAdapter$ViewInfo;", "g", "", com.huawei.hms.opendevice.c.f27627a, "(II)V", "checkStatus", "Landroid/widget/ImageView;", "getCheckStatus", "()Landroid/widget/ImageView;", "setCheckStatus", "(Landroid/widget/ImageView;)V", Contants.CURRENT_COUNTRY_FLAG, "Lcom/guochao/faceshow/aaspring/views/NewCircleImageView;", "getFlag", "()Lcom/guochao/faceshow/aaspring/views/NewCircleImageView;", "setFlag", "(Lcom/guochao/faceshow/aaspring/views/NewCircleImageView;)V", "headView", "getHeadView", "setHeadView", "name", "Landroid/widget/TextView;", "getName", "()Landroid/widget/TextView;", "setName", "(Landroid/widget/TextView;)V", "onlineState", "getOnlineState", "setOnlineState", "app_GooglePlayRelease"}, k = 1, mv = {1, 7, 1}, xi = 48)
        /* loaded from: classes3.dex */
        public static final class ChildHolder extends ViewInfo {
            @Nullable
            private ImageView checkStatus;
            @Nullable
            private NewCircleImageView flag;
            @Nullable
            private NewCircleImageView headView;
            @Nullable
            private TextView name;
            @Nullable
            private ImageView onlineState;

            public ChildHolder(int i9, int i10) {
                super(i9, i10);
            }

            @Nullable
            public final ImageView getCheckStatus() {
                return this.checkStatus;
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

            public final void setCheckStatus(@Nullable ImageView imageView) {
                this.checkStatus = imageView;
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
        }

        @Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\b\u0018\u00002\u00020\u0001B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003¢\u0006\u0002\u0010\u0005R\u001c\u0010\u0006\u001a\u0004\u0018\u00010\u0007X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\b\u0010\t\"\u0004\b\n\u0010\u000bR\u001c\u0010\f\u001a\u0004\u0018\u00010\rX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u000e\u0010\u000f\"\u0004\b\u0010\u0010\u0011R\u001c\u0010\u0012\u001a\u0004\u0018\u00010\rX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0013\u0010\u000f\"\u0004\b\u0014\u0010\u0011¨\u0006\u0015"}, d2 = {"Lcom/guochao/faceshow/aaspring/modulars/friend/SelectFriendActivity$FriendListAdapter$GroupHolder;", "Lcom/guochao/faceshow/aaspring/modulars/friend/SelectFriendActivity$FriendListAdapter$ViewInfo;", "g", "", com.huawei.hms.opendevice.c.f27627a, "(II)V", "expandStatus", "Landroid/widget/ImageView;", "getExpandStatus", "()Landroid/widget/ImageView;", "setExpandStatus", "(Landroid/widget/ImageView;)V", "name", "Landroid/widget/TextView;", "getName", "()Landroid/widget/TextView;", "setName", "(Landroid/widget/TextView;)V", "number", "getNumber", "setNumber", "app_GooglePlayRelease"}, k = 1, mv = {1, 7, 1}, xi = 48)
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

        @Metadata(d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u000b\b\u0016\u0018\u00002\u00020\u0001B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003¢\u0006\u0002\u0010\u0005R\u001a\u0010\u0006\u001a\u00020\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0007\u0010\b\"\u0004\b\t\u0010\nR\u001a\u0010\u000b\u001a\u00020\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\f\u0010\b\"\u0004\b\r\u0010\n¨\u0006\u000e"}, d2 = {"Lcom/guochao/faceshow/aaspring/modulars/friend/SelectFriendActivity$FriendListAdapter$ViewInfo;", "", "g", "", com.huawei.hms.opendevice.c.f27627a, "(II)V", "childPosition", "getChildPosition", "()I", "setChildPosition", "(I)V", "groupPosition", "getGroupPosition", "setGroupPosition", "app_GooglePlayRelease"}, k = 1, mv = {1, 7, 1}, xi = 48)
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

        public FriendListAdapter(@NotNull Context context) {
            List<GroupInfo> emptyList;
            Intrinsics.checkNotNullParameter(context, "context");
            this.context = context;
            emptyList = CollectionsKt__CollectionsKt.emptyList();
            this.groupList = emptyList;
        }

        @Override // android.widget.ExpandableListAdapter
        @NotNull
        public Object getChild(int i9, int i10) {
            return "";
        }

        @Override // android.widget.ExpandableListAdapter
        public long getChildId(int i9, int i10) {
            return 0L;
        }

        @Override // android.widget.ExpandableListAdapter
        @NotNull
        public View getChildView(int i9, int i10, boolean z10, @Nullable View view, @Nullable ViewGroup viewGroup) {
            View view2;
            ChildHolder childHolder;
            Integer onlineStatue;
            GroupInfo groupInfo;
            List<FriendInfo> list;
            if (view == null) {
                childHolder = new ChildHolder(i9, i10);
                view2 = LayoutInflater.from(this.context).inflate(R.layout.select_friend_item, viewGroup, false);
                childHolder.setName((TextView) view2.findViewById(R.id.user_name));
                childHolder.setHeadView((NewCircleImageView) view2.findViewById(R.id.avatar_view));
                childHolder.setFlag((NewCircleImageView) view2.findViewById(R.id.flag));
                childHolder.setCheckStatus((ImageView) view2.findViewById(R.id.check_status));
                childHolder.setOnlineState((ImageView) view2.findViewById(R.id.online_state));
                view2.setTag(childHolder);
            } else {
                Object tag = view.getTag();
                Intrinsics.checkNotNull(tag, "null cannot be cast to non-null type com.guochao.faceshow.aaspring.modulars.friend.SelectFriendActivity.FriendListAdapter.ChildHolder");
                ChildHolder childHolder2 = (ChildHolder) tag;
                view2 = view;
                childHolder = childHolder2;
            }
            List<GroupInfo> list2 = this.groupList;
            FriendInfo friendInfo = (list2 == null || (groupInfo = list2.get(i9)) == null || (list = groupInfo.getList()) == null) ? null : list.get(i10);
            TextView name = childHolder.getName();
            if (name != null) {
                name.setText(friendInfo != null ? friendInfo.getNickName() : null);
            }
            hc.a.h(childHolder.getHeadView(), friendInfo != null ? friendInfo.getHeadImg() : null, R.mipmap.default_head);
            hc.a.h(childHolder.getFlag(), friendInfo != null ? friendInfo.getCountryFlag() : null, R.mipmap.ic_earth);
            childHolder.setGroupPosition(i9);
            childHolder.setChildPosition(i10);
            boolean z11 = true;
            if (friendInfo != null && friendInfo.isSelect()) {
                ImageView checkStatus = childHolder.getCheckStatus();
                if (checkStatus != null) {
                    checkStatus.setImageResource(R.mipmap.select_friend_checked);
                }
            } else {
                ImageView checkStatus2 = childHolder.getCheckStatus();
                if (checkStatus2 != null) {
                    checkStatus2.setImageResource(R.mipmap.select_friend_normal_gray);
                }
            }
            if ((friendInfo == null || (onlineStatue = friendInfo.getOnlineStatue()) == null || onlineStatue.intValue() != 1) ? false : false) {
                ImageView onlineState = childHolder.getOnlineState();
                if (onlineState != null) {
                    onlineState.setVisibility(0);
                }
            } else {
                ImageView onlineState2 = childHolder.getOnlineState();
                if (onlineState2 != null) {
                    onlineState2.setVisibility(8);
                }
            }
            Intrinsics.checkNotNull(view2);
            return view2;
        }

        @Override // android.widget.ExpandableListAdapter
        public int getChildrenCount(int i9) {
            GroupInfo groupInfo;
            List<FriendInfo> list;
            List<GroupInfo> list2 = this.groupList;
            if (list2 == null || (groupInfo = list2.get(i9)) == null || (list = groupInfo.getList()) == null) {
                return 0;
            }
            return list.size();
        }

        @NotNull
        public final Context getContext() {
            return this.context;
        }

        @Override // android.widget.ExpandableListAdapter
        @NotNull
        public Object getGroup(int i9) {
            return "";
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
            return 0L;
        }

        @Nullable
        public final List<GroupInfo> getGroupList() {
            return this.groupList;
        }

        /* JADX WARN: Removed duplicated region for block: B:29:0x0096  */
        @Override // android.widget.ExpandableListAdapter
        @org.jetbrains.annotations.NotNull
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public android.view.View getGroupView(int r6, boolean r7, @org.jetbrains.annotations.Nullable android.view.View r8, @org.jetbrains.annotations.Nullable android.view.ViewGroup r9) {
            /*
                r5 = this;
                r0 = 0
                if (r8 != 0) goto L3e
                com.guochao.faceshow.aaspring.modulars.friend.SelectFriendActivity$FriendListAdapter$GroupHolder r8 = new com.guochao.faceshow.aaspring.modulars.friend.SelectFriendActivity$FriendListAdapter$GroupHolder
                r1 = -1
                r8.<init>(r6, r1)
                android.content.Context r1 = r5.context
                android.view.LayoutInflater r1 = android.view.LayoutInflater.from(r1)
                r2 = 2131559465(0x7f0d0429, float:1.8744275E38)
                android.view.View r9 = r1.inflate(r2, r9, r0)
                r1 = 2131362978(0x7f0a04a2, float:1.8345752E38)
                android.view.View r1 = r9.findViewById(r1)
                android.widget.TextView r1 = (android.widget.TextView) r1
                r8.setName(r1)
                r1 = 2131362736(0x7f0a03b0, float:1.834526E38)
                android.view.View r1 = r9.findViewById(r1)
                android.widget.ImageView r1 = (android.widget.ImageView) r1
                r8.setExpandStatus(r1)
                r1 = 2131363884(0x7f0a082c, float:1.834759E38)
                android.view.View r1 = r9.findViewById(r1)
                android.widget.TextView r1 = (android.widget.TextView) r1
                r8.setNumber(r1)
                r9.setTag(r8)
                goto L4c
            L3e:
                java.lang.Object r9 = r8.getTag()
                java.lang.String r1 = "null cannot be cast to non-null type com.guochao.faceshow.aaspring.modulars.friend.SelectFriendActivity.FriendListAdapter.GroupHolder"
                kotlin.jvm.internal.Intrinsics.checkNotNull(r9, r1)
                com.guochao.faceshow.aaspring.modulars.friend.SelectFriendActivity$FriendListAdapter$GroupHolder r9 = (com.guochao.faceshow.aaspring.modulars.friend.SelectFriendActivity.FriendListAdapter.GroupHolder) r9
                r4 = r9
                r9 = r8
                r8 = r4
            L4c:
                java.util.List<com.guochao.faceshow.aaspring.db.GroupInfo> r1 = r5.groupList
                if (r1 == 0) goto Lbf
                java.lang.Object r1 = r1.get(r6)
                com.guochao.faceshow.aaspring.db.GroupInfo r1 = (com.guochao.faceshow.aaspring.db.GroupInfo) r1
                if (r1 == 0) goto Lbf
                int r2 = r1.getId()
                if (r2 != 0) goto L81
                java.lang.String r2 = r1.getName()
                if (r2 == 0) goto L6a
                int r2 = r2.length()
                if (r2 != 0) goto L6b
            L6a:
                r0 = 1
            L6b:
                if (r0 == 0) goto L81
                android.widget.TextView r0 = r8.getName()
                if (r0 != 0) goto L74
                goto L8f
            L74:
                android.content.Context r2 = r5.context
                r3 = 2131887514(0x7f12059a, float:1.9409637E38)
                java.lang.String r2 = r2.getString(r3)
                r0.setText(r2)
                goto L8f
            L81:
                android.widget.TextView r0 = r8.getName()
                if (r0 != 0) goto L88
                goto L8f
            L88:
                java.lang.String r2 = r1.getName()
                r0.setText(r2)
            L8f:
                android.widget.TextView r0 = r8.getNumber()
                if (r0 != 0) goto L96
                goto Lbf
            L96:
                java.lang.StringBuilder r2 = new java.lang.StringBuilder
                r2.<init>()
                r3 = 40
                r2.append(r3)
                java.util.List r1 = r1.getList()
                if (r1 == 0) goto Laf
                int r1 = r1.size()
                java.lang.Integer r1 = java.lang.Integer.valueOf(r1)
                goto Lb0
            Laf:
                r1 = 0
            Lb0:
                r2.append(r1)
                r1 = 41
                r2.append(r1)
                java.lang.String r1 = r2.toString()
                r0.setText(r1)
            Lbf:
                if (r7 == 0) goto Lce
                android.widget.ImageView r7 = r8.getExpandStatus()
                if (r7 == 0) goto Lda
                r0 = 2131689714(0x7f0f00f2, float:1.9008451E38)
                r7.setImageResource(r0)
                goto Lda
            Lce:
                android.widget.ImageView r7 = r8.getExpandStatus()
                if (r7 == 0) goto Lda
                r0 = 2131689715(0x7f0f00f3, float:1.9008453E38)
                r7.setImageResource(r0)
            Lda:
                r8.setGroupPosition(r6)
                kotlin.jvm.internal.Intrinsics.checkNotNull(r9)
                return r9
            */
            throw new UnsupportedOperationException("Method not decompiled: com.guochao.faceshow.aaspring.modulars.friend.SelectFriendActivity.FriendListAdapter.getGroupView(int, boolean, android.view.View, android.view.ViewGroup):android.view.View");
        }

        @Override // android.widget.ExpandableListAdapter
        public boolean hasStableIds() {
            return true;
        }

        @Override // android.widget.ExpandableListAdapter
        public boolean isChildSelectable(int i9, int i10) {
            return true;
        }

        public final void setContext(@NotNull Context context) {
            Intrinsics.checkNotNullParameter(context, "<set-?>");
            this.context = context;
        }

        public final void setGroupList(@Nullable List<GroupInfo> list) {
            this.groupList = list;
        }
    }

    public SelectFriendActivity() {
        Lazy lazy;
        final GCApplication app = GCApplication.app();
        Intrinsics.checkNotNullExpressionValue(app, "app()");
        lazy = LazyKt__LazyJVMKt.lazy(LazyThreadSafetyMode.NONE, (Function0) new Function0<FriendListViewModel>() { // from class: com.guochao.faceshow.aaspring.modulars.friend.SelectFriendActivity$special$$inlined$lazyGlobalViewModel$default$1
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
        this.list = new ArrayList();
        this.selectedIds = new ArrayList();
        FriendListAdapter friendListAdapter = new FriendListAdapter(this);
        friendListAdapter.setGroupList(this.list);
        this.adapter = friendListAdapter;
    }

    private final void calCount() {
        MenuItem menuItem = this.menuItem;
        if (menuItem != null) {
            if (this.selectedIds.isEmpty()) {
                menuItem.setTitle(getString(R.string.save));
                menuItem.setEnabled(false);
                return;
            }
            menuItem.setEnabled(true);
            menuItem.setTitle(getString(R.string.save) + '(' + this.selectedIds.size() + ')');
        }
    }

    @GCViewBinding
    public static /* synthetic */ void getViewBinding$annotations() {
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: initView$lambda-3  reason: not valid java name */
    public static final boolean m387initView$lambda3(SelectFriendActivity this$0, ExpandableListView expandableListView, View view, int i9, int i10, long j10) {
        GroupInfo groupInfo;
        List<FriendInfo> list;
        FriendInfo friendInfo;
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        List<GroupInfo> groupList = this$0.adapter.getGroupList();
        if (groupList != null && (groupInfo = groupList.get(i9)) != null && (list = groupInfo.getList()) != null && (friendInfo = list.get(i10)) != null) {
            friendInfo.setSelect(!friendInfo.isSelect());
            if (friendInfo.isSelect()) {
                this$0.selectedIds.add(friendInfo.getFriendId());
            } else {
                this$0.selectedIds.remove(friendInfo.getFriendId());
            }
            this$0.adapter.notifyDataSetChanged();
            this$0.calCount();
        }
        return true;
    }

    private final void loadData() {
        getViewModel().getGroupListLiveData().observe(this, new Observer() { // from class: com.guochao.faceshow.aaspring.modulars.friend.v
            @Override // androidx.lifecycle.Observer
            public final void onChanged(Object obj) {
                SelectFriendActivity.m388loadData$lambda8(SelectFriendActivity.this, (List) obj);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: loadData$lambda-8  reason: not valid java name */
    public static final void m388loadData$lambda8(SelectFriendActivity this$0, List list) {
        List<FriendInfo> list2;
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        if (list != null) {
            this$0.list.clear();
            this$0.list.addAll(list);
            this$0.adapter.notifyDataSetChanged();
            int i9 = 0;
            for (Object obj : this$0.list) {
                int i10 = i9 + 1;
                if (i9 < 0) {
                    CollectionsKt__CollectionsKt.throwIndexOverflow();
                }
                GroupInfo groupInfo = (GroupInfo) obj;
                if (groupInfo != null && (list2 = groupInfo.getList()) != null) {
                    for (FriendInfo friendInfo : list2) {
                        friendInfo.setSelect(this$0.selectedIds.contains(friendInfo.getFriendId()));
                    }
                }
                this$0.getViewBinding().friendList.expandGroup(i9, false);
                i9 = i10;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: onCreateOptionsMenu$lambda-17  reason: not valid java name */
    public static final boolean m389onCreateOptionsMenu$lambda17(SelectFriendActivity this$0, MenuItem menuItem) {
        List<FriendInfo> list;
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        if (menuItem.getItemId() == R.id.save) {
            Intent intent = new Intent();
            FriendListBean.Result result = new FriendListBean.Result(null, 0, 0, null, 15, null);
            ArrayList arrayList = new ArrayList();
            for (GroupInfo groupInfo : this$0.list) {
                if (groupInfo != null && (list = groupInfo.getList()) != null) {
                    for (FriendInfo friendInfo : list) {
                        if (friendInfo.isSelect()) {
                            arrayList.add(friendInfo);
                        }
                    }
                }
            }
            result.setList(arrayList);
            intent.putExtra("obj", result);
            this$0.setResult(-1, intent);
            this$0.finish();
            return true;
        }
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Removed duplicated region for block: B:27:0x007d  */
    /* JADX WARN: Removed duplicated region for block: B:54:0x008b A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:57:0x0054 A[SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void searchByKey(java.lang.String r15) {
        /*
            r14 = this;
            boolean r0 = android.text.TextUtils.isEmpty(r15)
            r1 = 0
            if (r0 == 0) goto L10
            com.guochao.faceshow.aaspring.modulars.friend.SelectFriendActivity$FriendListAdapter r15 = r14.adapter
            java.util.List<com.guochao.faceshow.aaspring.db.GroupInfo> r0 = r14.list
            r15.setGroupList(r0)
            goto L9f
        L10:
            java.util.ArrayList r0 = new java.util.ArrayList
            r0.<init>()
            java.lang.String r15 = r15.toLowerCase()
            java.lang.String r2 = "this as java.lang.String).toLowerCase()"
            kotlin.jvm.internal.Intrinsics.checkNotNullExpressionValue(r15, r2)
            java.util.List<com.guochao.faceshow.aaspring.db.GroupInfo> r3 = r14.list
            java.util.Iterator r3 = r3.iterator()
        L24:
            boolean r4 = r3.hasNext()
            if (r4 == 0) goto L9a
            java.lang.Object r4 = r3.next()
            r5 = r4
            com.guochao.faceshow.aaspring.db.GroupInfo r5 = (com.guochao.faceshow.aaspring.db.GroupInfo) r5
            r4 = 0
            if (r5 == 0) goto L42
            r6 = 0
            r7 = 0
            r8 = 0
            r9 = 0
            r10 = 0
            r11 = 0
            r12 = 63
            r13 = 0
            com.guochao.faceshow.aaspring.db.GroupInfo r5 = com.guochao.faceshow.aaspring.db.GroupInfo.copy$default(r5, r6, r7, r8, r9, r10, r11, r12, r13)
            goto L43
        L42:
            r5 = r4
        L43:
            if (r5 == 0) goto L96
            java.util.List r6 = r5.getList()
            if (r6 == 0) goto L93
            java.util.ArrayList r7 = new java.util.ArrayList
            r7.<init>()
            java.util.Iterator r6 = r6.iterator()
        L54:
            boolean r8 = r6.hasNext()
            if (r8 == 0) goto L8f
            java.lang.Object r8 = r6.next()
            r9 = r8
            com.guochao.faceshow.aaspring.db.FriendInfo r9 = (com.guochao.faceshow.aaspring.db.FriendInfo) r9
            java.lang.String r10 = r9.getNickName()
            r11 = 2
            r12 = 1
            if (r10 == 0) goto L7a
            java.lang.String r10 = r10.toLowerCase()
            kotlin.jvm.internal.Intrinsics.checkNotNullExpressionValue(r10, r2)
            if (r10 == 0) goto L7a
            boolean r10 = kotlin.text.StringsKt.contains$default(r10, r15, r1, r11, r4)
            if (r10 != r12) goto L7a
            r10 = 1
            goto L7b
        L7a:
            r10 = 0
        L7b:
            if (r10 != 0) goto L89
            java.lang.String r9 = r9.getFriendId()
            boolean r9 = kotlin.text.StringsKt.contains$default(r9, r15, r1, r11, r4)
            if (r9 == 0) goto L88
            goto L89
        L88:
            r12 = 0
        L89:
            if (r12 == 0) goto L54
            r7.add(r8)
            goto L54
        L8f:
            java.util.List r4 = kotlin.collections.CollectionsKt.toMutableList(r7)
        L93:
            r5.setList(r4)
        L96:
            r0.add(r5)
            goto L24
        L9a:
            com.guochao.faceshow.aaspring.modulars.friend.SelectFriendActivity$FriendListAdapter r15 = r14.adapter
            r15.setGroupList(r0)
        L9f:
            com.guochao.faceshow.aaspring.modulars.friend.SelectFriendActivity$FriendListAdapter r15 = r14.adapter
            java.util.List r15 = r15.getGroupList()
            if (r15 == 0) goto Lca
            java.util.Iterator r15 = r15.iterator()
            r0 = 0
        Lac:
            boolean r2 = r15.hasNext()
            if (r2 == 0) goto Lca
            java.lang.Object r2 = r15.next()
            int r3 = r0 + 1
            if (r0 >= 0) goto Lbd
            kotlin.collections.CollectionsKt.throwIndexOverflow()
        Lbd:
            com.guochao.faceshow.aaspring.db.GroupInfo r2 = (com.guochao.faceshow.aaspring.db.GroupInfo) r2
            com.guochao.faceshow.databinding.ActivitySelectFriendBinding r2 = r14.getViewBinding()
            android.widget.ExpandableListView r2 = r2.friendList
            r2.expandGroup(r0, r1)
            r0 = r3
            goto Lac
        Lca:
            com.guochao.faceshow.aaspring.modulars.friend.SelectFriendActivity$FriendListAdapter r15 = r14.adapter
            r15.notifyDataSetChanged()
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.guochao.faceshow.aaspring.modulars.friend.SelectFriendActivity.searchByKey(java.lang.String):void");
    }

    @NotNull
    public final FriendListAdapter getAdapter() {
        return this.adapter;
    }

    @Nullable
    public final MenuItem getMenuItem() {
        return this.menuItem;
    }

    @NotNull
    public final ActivitySelectFriendBinding getViewBinding() {
        ActivitySelectFriendBinding activitySelectFriendBinding = this.viewBinding;
        if (activitySelectFriendBinding != null) {
            return activitySelectFriendBinding;
        }
        Intrinsics.throwUninitializedPropertyAccessException("viewBinding");
        return null;
    }

    @Override // com.guochao.faceshow.aaspring.base.mvvm.activity.GCCoreActivity
    public void initView(@Nullable Bundle bundle) {
        setTitle(getString(R.string.select_friend));
        Bundle extras = getIntent().getExtras();
        ArrayList<String> stringArrayList = extras != null ? extras.getStringArrayList("ids") : null;
        if (stringArrayList != null) {
            this.selectedIds.addAll(stringArrayList);
        }
        if (!this.selectedIds.isEmpty()) {
            calCount();
        }
        getViewBinding().friendList.setAdapter(this.adapter);
        EditText editText = getViewBinding().tvSearch;
        Intrinsics.checkNotNullExpressionValue(editText, "viewBinding.tvSearch");
        editText.addTextChangedListener(new TextWatcher() { // from class: com.guochao.faceshow.aaspring.modulars.friend.SelectFriendActivity$initView$$inlined$addTextChangedListener$default$1
            @Override // android.text.TextWatcher
            public void afterTextChanged(@Nullable Editable editable) {
                SelectFriendActivity.this.searchByKey(String.valueOf(editable));
            }

            @Override // android.text.TextWatcher
            public void beforeTextChanged(@Nullable CharSequence charSequence, int i9, int i10, int i11) {
            }

            @Override // android.text.TextWatcher
            public void onTextChanged(@Nullable CharSequence charSequence, int i9, int i10, int i11) {
            }
        });
        loadData();
        getViewBinding().friendList.setOnChildClickListener(new ExpandableListView.OnChildClickListener() { // from class: com.guochao.faceshow.aaspring.modulars.friend.u
            @Override // android.widget.ExpandableListView.OnChildClickListener
            public final boolean onChildClick(ExpandableListView expandableListView, View view, int i9, int i10, long j10) {
                boolean m387initView$lambda3;
                m387initView$lambda3 = SelectFriendActivity.m387initView$lambda3(SelectFriendActivity.this, expandableListView, view, i9, i10, j10);
                return m387initView$lambda3;
            }
        });
    }

    @Override // androidx.activity.ComponentActivity, android.app.Activity
    public boolean onCreateOptionsMenu(@NotNull Menu menu) {
        Intrinsics.checkNotNullParameter(menu, "menu");
        getMenuInflater().inflate(R.menu.friend_group_toolbar_menu, menu);
        MenuItem findItem = menu.findItem(R.id.save);
        this.menuItem = findItem;
        if (findItem != null) {
            findItem.setEnabled(false);
        }
        MenuItem menuItem = this.menuItem;
        if (menuItem != null) {
            menuItem.setOnMenuItemClickListener(new MenuItem.OnMenuItemClickListener() { // from class: com.guochao.faceshow.aaspring.modulars.friend.t
                @Override // android.view.MenuItem.OnMenuItemClickListener
                public final boolean onMenuItemClick(MenuItem menuItem2) {
                    boolean m389onCreateOptionsMenu$lambda17;
                    m389onCreateOptionsMenu$lambda17 = SelectFriendActivity.m389onCreateOptionsMenu$lambda17(SelectFriendActivity.this, menuItem2);
                    return m389onCreateOptionsMenu$lambda17;
                }
            });
        }
        return super.onCreateOptionsMenu(menu);
    }

    @Override // com.guochao.faceshow.aaspring.base.mvvm.viewmodel.BaseViewModel.ModelUpdateObserver
    public void onModelUpdate(@Nullable BaseModel baseModel) {
    }

    public final void setAdapter(@NotNull FriendListAdapter friendListAdapter) {
        Intrinsics.checkNotNullParameter(friendListAdapter, "<set-?>");
        this.adapter = friendListAdapter;
    }

    public final void setMenuItem(@Nullable MenuItem menuItem) {
        this.menuItem = menuItem;
    }

    public final void setViewBinding(@NotNull ActivitySelectFriendBinding activitySelectFriendBinding) {
        Intrinsics.checkNotNullParameter(activitySelectFriendBinding, "<set-?>");
        this.viewBinding = activitySelectFriendBinding;
    }

    @Override // com.guochao.faceshow.aaspring.base.mvvm.activity.GCBaseMvvmActivity
    @NotNull
    public FriendListViewModel getViewModel() {
        return (FriendListViewModel) this.viewModel$delegate.getValue();
    }
}
