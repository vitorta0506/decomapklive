package com.guochao.faceshow.aaspring.modulars.friend;

import android.content.Intent;
import android.graphics.drawable.ColorDrawable;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.Menu;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.PopupWindow;
import android.widget.TextView;
import androidx.activity.result.ActivityResult;
import androidx.activity.result.ActivityResultCallback;
import androidx.activity.result.ActivityResultLauncher;
import androidx.activity.result.contract.ActivityResultContracts;
import androidx.constraintlayout.core.motion.utils.TypedValues;
import androidx.lifecycle.Observer;
import androidx.lifecycle.ViewModelProvider;
import androidx.lifecycle.ViewModelStoreOwner;
import androidx.recyclerview.widget.ItemTouchHelper;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.facebook.devicerequests.internal.DeviceRequestsHelper;
import com.guochao.faceshow.R;
import com.guochao.faceshow.aaspring.base.mvvm.activity.GCBaseMvvmActivity;
import com.guochao.faceshow.aaspring.base.mvvm.annotations.GCViewBinding;
import com.guochao.faceshow.aaspring.base.mvvm.model.BaseModel;
import com.guochao.faceshow.aaspring.base.mvvm.viewmodel.BaseViewModel;
import com.guochao.faceshow.aaspring.db.GroupInfo;
import com.guochao.faceshow.aaspring.modulars.friend.adapter.CommonRecyclerAdapter;
import com.guochao.faceshow.aaspring.modulars.main.viewmodel.FriendListViewModel;
import com.guochao.faceshow.aaspring.utils.EventTrackingV2Utils;
import com.guochao.faceshow.aaspring.utils.ToastUtils;
import com.guochao.faceshow.context.GCApplication;
import com.guochao.faceshow.databinding.ActivityFriendGroupManagerBinding;
import com.huawei.hms.support.hianalytics.HiAnalyticsConstant;
import com.tencent.ugc.videoprocessor.watermark.data.AnimatedPasterJsonConfig;
import com.tencent.xmagic.log.LogUtils;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Objects;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.LazyThreadSafetyMode;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(bv = {}, d1 = {"\u0000|\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\b\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\u000e\n\u0002\b\u000e\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\t\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001:\u0001ZB\u0007¢\u0006\u0004\bY\u0010FJ\b\u0010\u0005\u001a\u00020\u0004H\u0002J\b\u0010\u0006\u001a\u00020\u0004H\u0002J\b\u0010\u0007\u001a\u00020\u0004H\u0002J\b\u0010\b\u001a\u00020\u0004H\u0002J\u0012\u0010\n\u001a\u00020\u00042\b\u0010\t\u001a\u0004\u0018\u00010\u0002H\u0016J\u0012\u0010\r\u001a\u00020\u00042\b\u0010\f\u001a\u0004\u0018\u00010\u000bH\u0016J\u0010\u0010\u0011\u001a\u00020\u00102\u0006\u0010\u000f\u001a\u00020\u000eH\u0016R,\u0010\u0014\u001a\f\u0012\u0006\u0012\u0004\u0018\u00010\u0013\u0018\u00010\u00128\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0014\u0010\u0015\u001a\u0004\b\u0016\u0010\u0017\"\u0004\b\u0018\u0010\u0019R$\u0010\u001b\u001a\u0004\u0018\u00010\u001a8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u001b\u0010\u001c\u001a\u0004\b\u001d\u0010\u001e\"\u0004\b\u001f\u0010 R\"\u0010\"\u001a\u00020!8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\"\u0010#\u001a\u0004\b$\u0010%\"\u0004\b&\u0010'R$\u0010)\u001a\u0004\u0018\u00010(8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b)\u0010*\u001a\u0004\b+\u0010,\"\u0004\b-\u0010.R$\u00100\u001a\u0004\u0018\u00010/8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b0\u00101\u001a\u0004\b2\u00103\"\u0004\b4\u00105R\"\u00106\u001a\u00020!8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b6\u0010#\u001a\u0004\b7\u0010%\"\u0004\b8\u0010'R\u001b\u0010=\u001a\u00020\u00038VX\u0096\u0084\u0002¢\u0006\f\n\u0004\b9\u0010:\u001a\u0004\b;\u0010<R(\u0010?\u001a\u00020>8\u0006@\u0006X\u0087.¢\u0006\u0018\n\u0004\b?\u0010@\u0012\u0004\bE\u0010F\u001a\u0004\bA\u0010B\"\u0004\bC\u0010DR$\u0010H\u001a\u0004\u0018\u00010G8\u0016@\u0016X\u0096\u000e¢\u0006\u0012\n\u0004\bH\u0010I\u001a\u0004\bJ\u0010K\"\u0004\bL\u0010MR\u001a\u0010P\u001a\b\u0012\u0004\u0012\u00020O0N8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\bP\u0010QR$\u0010S\u001a\u0004\u0018\u00010R8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\bS\u0010T\u001a\u0004\bU\u0010V\"\u0004\bW\u0010X¨\u0006["}, d2 = {"Lcom/guochao/faceshow/aaspring/modulars/friend/FriendGroupMangerActivity;", "Lcom/guochao/faceshow/aaspring/base/mvvm/activity/GCBaseMvvmActivity;", "Lcom/guochao/faceshow/aaspring/base/mvvm/model/BaseModel;", "Lcom/guochao/faceshow/aaspring/modulars/main/viewmodel/FriendListViewModel;", "", "setLiveDataObserve", "addGroup", "initDelete", "initAdapter", DeviceRequestsHelper.DEVICE_INFO_MODEL, "onModelUpdate", "Landroid/os/Bundle;", "savedInstanceSate", "initView", "Landroid/view/Menu;", "menu", "", "onCreateOptionsMenu", "Lcom/guochao/faceshow/aaspring/modulars/friend/adapter/CommonRecyclerAdapter;", "Lcom/guochao/faceshow/aaspring/db/GroupInfo;", "adapter", "Lcom/guochao/faceshow/aaspring/modulars/friend/adapter/CommonRecyclerAdapter;", "getAdapter", "()Lcom/guochao/faceshow/aaspring/modulars/friend/adapter/CommonRecyclerAdapter;", "setAdapter", "(Lcom/guochao/faceshow/aaspring/modulars/friend/adapter/CommonRecyclerAdapter;)V", "Landroid/widget/PopupWindow;", "mDeletePop", "Landroid/widget/PopupWindow;", "getMDeletePop", "()Landroid/widget/PopupWindow;", "setMDeletePop", "(Landroid/widget/PopupWindow;)V", "", "currentIndex", "I", "getCurrentIndex", "()I", "setCurrentIndex", "(I)V", "Landroid/widget/Button;", "deleteView", "Landroid/widget/Button;", "getDeleteView", "()Landroid/widget/Button;", "setDeleteView", "(Landroid/widget/Button;)V", "", "groupName", "Ljava/lang/String;", "getGroupName", "()Ljava/lang/String;", "setGroupName", "(Ljava/lang/String;)V", AnimatedPasterJsonConfig.CONFIG_COUNT, "getCount", "setCount", "viewModel$delegate", "Lkotlin/Lazy;", "getViewModel", "()Lcom/guochao/faceshow/aaspring/modulars/main/viewmodel/FriendListViewModel;", "viewModel", "Lcom/guochao/faceshow/databinding/ActivityFriendGroupManagerBinding;", "viewBinding", "Lcom/guochao/faceshow/databinding/ActivityFriendGroupManagerBinding;", "getViewBinding", "()Lcom/guochao/faceshow/databinding/ActivityFriendGroupManagerBinding;", "setViewBinding", "(Lcom/guochao/faceshow/databinding/ActivityFriendGroupManagerBinding;)V", "getViewBinding$annotations", "()V", "Landroid/view/MenuItem;", "menuItem", "Landroid/view/MenuItem;", "getMenuItem", "()Landroid/view/MenuItem;", "setMenuItem", "(Landroid/view/MenuItem;)V", "Landroidx/activity/result/ActivityResultLauncher;", "Landroid/content/Intent;", "startActivityLauncher", "Landroidx/activity/result/ActivityResultLauncher;", "Ls8/c;", "mRenameGroupDialog", "Ls8/c;", "getMRenameGroupDialog", "()Ls8/c;", "setMRenameGroupDialog", "(Ls8/c;)V", "<init>", "MyItemTouchHelperCallBack", "app_GooglePlayRelease"}, k = 1, mv = {1, 7, 1})
/* loaded from: classes3.dex */
public final class FriendGroupMangerActivity extends GCBaseMvvmActivity<BaseModel, FriendListViewModel> {
    @Nullable
    private CommonRecyclerAdapter<GroupInfo> adapter;
    private int count;
    private int currentIndex;
    @Nullable
    private Button deleteView;
    @Nullable
    private String groupName;
    @Nullable
    private PopupWindow mDeletePop;
    @Nullable
    private s8.c mRenameGroupDialog;
    @Nullable
    private MenuItem menuItem;
    @NotNull
    private final ActivityResultLauncher<Intent> startActivityLauncher;
    public ActivityFriendGroupManagerBinding viewBinding;
    @NotNull
    private final Lazy viewModel$delegate;

    @Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\b\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0004\b\u0016\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J\u0018\u0010\f\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u0011H\u0016J\u0018\u0010\u0012\u001a\u00020\u00042\u0006\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u0011H\u0016J \u0010\u0013\u001a\u00020\u00142\u0006\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u00112\u0006\u0010\u0015\u001a\u00020\u0011H\u0016J\u0018\u0010\u0016\u001a\u00020\r2\u0006\u0010\u0010\u001a\u00020\u00112\u0006\u0010\u0017\u001a\u00020\u0004H\u0016R\u001a\u0010\u0003\u001a\u00020\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0005\u0010\u0006\"\u0004\b\u0007\u0010\bR\u001a\u0010\t\u001a\u00020\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\n\u0010\u0006\"\u0004\b\u000b\u0010\b¨\u0006\u0018"}, d2 = {"Lcom/guochao/faceshow/aaspring/modulars/friend/FriendGroupMangerActivity$MyItemTouchHelperCallBack;", "Landroidx/recyclerview/widget/ItemTouchHelper$Callback;", "()V", "form", "", "getForm", "()I", "setForm", "(I)V", "to", "getTo", "setTo", "clearView", "", "recyclerView", "Landroidx/recyclerview/widget/RecyclerView;", "viewHolder", "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;", "getMovementFlags", "onMove", "", TypedValues.AttributesType.S_TARGET, "onSwiped", HiAnalyticsConstant.HaKey.BI_KEY_DIRECTION, "app_GooglePlayRelease"}, k = 1, mv = {1, 7, 1}, xi = 48)
    /* loaded from: classes3.dex */
    public static class MyItemTouchHelperCallBack extends ItemTouchHelper.Callback {
        private int form;
        private int to;

        @Override // androidx.recyclerview.widget.ItemTouchHelper.Callback
        public void clearView(@NotNull RecyclerView recyclerView, @NotNull RecyclerView.ViewHolder viewHolder) {
            Intrinsics.checkNotNullParameter(recyclerView, "recyclerView");
            Intrinsics.checkNotNullParameter(viewHolder, "viewHolder");
            super.clearView(recyclerView, viewHolder);
            LogUtils.d("FriendGroupManager", "clearView");
        }

        public final int getForm() {
            return this.form;
        }

        @Override // androidx.recyclerview.widget.ItemTouchHelper.Callback
        public int getMovementFlags(@NotNull RecyclerView recyclerView, @NotNull RecyclerView.ViewHolder viewHolder) {
            Intrinsics.checkNotNullParameter(recyclerView, "recyclerView");
            Intrinsics.checkNotNullParameter(viewHolder, "viewHolder");
            return ItemTouchHelper.Callback.makeMovementFlags(15, 0);
        }

        public final int getTo() {
            return this.to;
        }

        @Override // androidx.recyclerview.widget.ItemTouchHelper.Callback
        public boolean onMove(@NotNull RecyclerView recyclerView, @NotNull RecyclerView.ViewHolder viewHolder, @NotNull RecyclerView.ViewHolder target) {
            Intrinsics.checkNotNullParameter(recyclerView, "recyclerView");
            Intrinsics.checkNotNullParameter(viewHolder, "viewHolder");
            Intrinsics.checkNotNullParameter(target, "target");
            this.form = viewHolder.getBindingAdapterPosition();
            this.to = target.getBindingAdapterPosition();
            CommonRecyclerAdapter commonRecyclerAdapter = (CommonRecyclerAdapter) recyclerView.getAdapter();
            if (commonRecyclerAdapter != null) {
                try {
                    if (!commonRecyclerAdapter.getData().isEmpty()) {
                        int i9 = this.form;
                        int i10 = this.to;
                        if (i9 < i10) {
                            while (i9 < i10) {
                                int i11 = i9 + 1;
                                Collections.swap(commonRecyclerAdapter.getData(), i9, i11);
                                i9 = i11;
                            }
                        } else {
                            int i12 = i10 + 1;
                            if (i12 <= i9) {
                                while (true) {
                                    Collections.swap(commonRecyclerAdapter.getData(), i9, i9 - 1);
                                    if (i9 == i12) {
                                        break;
                                    }
                                    i9--;
                                }
                            }
                        }
                        Integer sortNum = ((GroupInfo) commonRecyclerAdapter.getData().get(this.form)).getSortNum();
                        ((GroupInfo) commonRecyclerAdapter.getData().get(this.form)).setSortNum(((GroupInfo) commonRecyclerAdapter.getData().get(this.to)).getSortNum());
                        ((GroupInfo) commonRecyclerAdapter.getData().get(this.to)).setSortNum(sortNum);
                        commonRecyclerAdapter.notifyItemMoved(this.form, this.to);
                        try {
                            LogUtils.d("FriendGroupManager", "onMove");
                            return true;
                        } catch (Exception unused) {
                            return true;
                        }
                    }
                } catch (Exception unused2) {
                }
            }
            return false;
        }

        @Override // androidx.recyclerview.widget.ItemTouchHelper.Callback
        public void onSwiped(@NotNull RecyclerView.ViewHolder viewHolder, int i9) {
            Intrinsics.checkNotNullParameter(viewHolder, "viewHolder");
            LogUtils.d("FriendGroupManager", "onSwiped");
        }

        public final void setForm(int i9) {
            this.form = i9;
        }

        public final void setTo(int i9) {
            this.to = i9;
        }
    }

    public FriendGroupMangerActivity() {
        Lazy lazy;
        final GCApplication app = GCApplication.app();
        Intrinsics.checkNotNullExpressionValue(app, "app()");
        lazy = LazyKt__LazyJVMKt.lazy(LazyThreadSafetyMode.NONE, (Function0) new Function0<FriendListViewModel>() { // from class: com.guochao.faceshow.aaspring.modulars.friend.FriendGroupMangerActivity$special$$inlined$lazyGlobalViewModel$default$1
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
        ActivityResultLauncher<Intent> registerForActivityResult = registerForActivityResult(new ActivityResultContracts.StartActivityForResult(), new ActivityResultCallback() { // from class: com.guochao.faceshow.aaspring.modulars.friend.k
            @Override // androidx.activity.result.ActivityResultCallback
            public final void onActivityResult(Object obj) {
                ((ActivityResult) obj).getResultCode();
            }
        });
        Intrinsics.checkNotNullExpressionValue(registerForActivityResult, "registerForActivityResul…{\n            }\n        }");
        this.startActivityLauncher = registerForActivityResult;
    }

    private final void addGroup() {
        EventTrackingV2Utils.INSTANCE.track(EventTrackingV2Utils.im_friend_group_click);
        if (this.count >= 20) {
            String string = getString(R.string.friend_group_max_tip);
            Intrinsics.checkNotNullExpressionValue(string, "getString(R.string.friend_group_max_tip)");
            ToastUtils.showToast$default(this, string, 0, 0, 12, null);
            return;
        }
        this.startActivityLauncher.launch(new Intent(this, FriendGroupAddFriendActivity.class));
    }

    @GCViewBinding
    public static /* synthetic */ void getViewBinding$annotations() {
    }

    private final void initAdapter() {
        this.adapter = new FriendGroupMangerActivity$initAdapter$1(this, new ArrayList());
        getViewBinding().recyclerView.setLayoutManager(new LinearLayoutManager(this));
        getViewBinding().recyclerView.setAdapter(this.adapter);
        new ItemTouchHelper(new MyItemTouchHelperCallBack() { // from class: com.guochao.faceshow.aaspring.modulars.friend.FriendGroupMangerActivity$initAdapter$itemTouchHelper$1
            @Override // androidx.recyclerview.widget.ItemTouchHelper.Callback
            public void onMoved(@NotNull RecyclerView recyclerView, @NotNull RecyclerView.ViewHolder viewHolder, int i9, @NotNull RecyclerView.ViewHolder target, int i10, int i11, int i12) {
                Intrinsics.checkNotNullParameter(recyclerView, "recyclerView");
                Intrinsics.checkNotNullParameter(viewHolder, "viewHolder");
                Intrinsics.checkNotNullParameter(target, "target");
                super.onMoved(recyclerView, viewHolder, i9, target, i10, i11, i12);
                MenuItem menuItem = FriendGroupMangerActivity.this.getMenuItem();
                if (menuItem == null) {
                    return;
                }
                menuItem.setEnabled(true);
            }
        }).attachToRecyclerView(getViewBinding().recyclerView);
    }

    private final void initDelete() {
        View inflate = LayoutInflater.from(this).inflate(R.layout.delete_btn_pop, (ViewGroup) null);
        TextView textView = (TextView) inflate.findViewById(R.id.delete_bt);
        PopupWindow popupWindow = new PopupWindow(inflate, -2, -2);
        popupWindow.setFocusable(true);
        popupWindow.setBackgroundDrawable(new ColorDrawable(0));
        popupWindow.getContentView().measure(0, 0);
        popupWindow.setOnDismissListener(new PopupWindow.OnDismissListener() { // from class: com.guochao.faceshow.aaspring.modulars.friend.j
            @Override // android.widget.PopupWindow.OnDismissListener
            public final void onDismiss() {
                FriendGroupMangerActivity.m374initDelete$lambda4$lambda3(FriendGroupMangerActivity.this);
            }
        });
        if (!q7.a.e().j()) {
            popupWindow.setAnimationStyle(R.style.DeleteBtnWindowStyle);
        }
        this.mDeletePop = popupWindow;
        textView.setOnClickListener(new View.OnClickListener() { // from class: com.guochao.faceshow.aaspring.modulars.friend.h
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                FriendGroupMangerActivity.m375initDelete$lambda6(FriendGroupMangerActivity.this, view);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: initDelete$lambda-4$lambda-3  reason: not valid java name */
    public static final void m374initDelete$lambda4$lambda3(FriendGroupMangerActivity this$0) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Button button = this$0.deleteView;
        if (button == null) {
            return;
        }
        button.setVisibility(8);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: initDelete$lambda-6  reason: not valid java name */
    public static final void m375initDelete$lambda6(FriendGroupMangerActivity this$0, View view) {
        List<GroupInfo> data;
        GroupInfo groupInfo;
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        PopupWindow popupWindow = this$0.mDeletePop;
        if (popupWindow != null) {
            popupWindow.dismiss();
        }
        CommonRecyclerAdapter<GroupInfo> commonRecyclerAdapter = this$0.adapter;
        Integer valueOf = (commonRecyclerAdapter == null || (data = commonRecyclerAdapter.getData()) == null || (groupInfo = data.get(this$0.currentIndex)) == null) ? null : Integer.valueOf(groupInfo.getId());
        if (valueOf != null && valueOf.intValue() == 0) {
            String string = this$0.getString(R.string.friend_group_delect_default_tip);
            Intrinsics.checkNotNullExpressionValue(string, "getString(R.string.frien…group_delect_default_tip)");
            ToastUtils.showToast$default(this$0, string, 0, 0, 12, null);
            return;
        }
        this$0.getViewModel().deleteGroup(this$0, valueOf);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: initView$lambda-1  reason: not valid java name */
    public static final void m376initView$lambda1(FriendGroupMangerActivity this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.addGroup();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: onCreateOptionsMenu$lambda-7  reason: not valid java name */
    public static final boolean m377onCreateOptionsMenu$lambda7(final FriendGroupMangerActivity this$0, MenuItem menuItem) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        if (menuItem.getItemId() == R.id.save) {
            MenuItem menuItem2 = this$0.getMenuItem();
            if (menuItem2 != null) {
                menuItem2.setEnabled(false);
            }
            FriendListViewModel viewModel = this$0.getViewModel();
            CommonRecyclerAdapter<GroupInfo> commonRecyclerAdapter = this$0.adapter;
            viewModel.groupSort(this$0, commonRecyclerAdapter != null ? commonRecyclerAdapter.getData() : null, new Function1<Boolean, Unit>() { // from class: com.guochao.faceshow.aaspring.modulars.friend.FriendGroupMangerActivity$onCreateOptionsMenu$1$1
                /* JADX INFO: Access modifiers changed from: package-private */
                {
                    super(1);
                }

                @Override // kotlin.jvm.functions.Function1
                public /* bridge */ /* synthetic */ Unit invoke(Boolean bool) {
                    invoke(bool.booleanValue());
                    return Unit.INSTANCE;
                }

                public final void invoke(boolean z10) {
                    if (z10) {
                        FriendGroupMangerActivity.this.finish();
                        return;
                    }
                    MenuItem menuItem3 = FriendGroupMangerActivity.this.getMenuItem();
                    if (menuItem3 == null) {
                        return;
                    }
                    menuItem3.setEnabled(true);
                }
            });
            return true;
        }
        return true;
    }

    private final void setLiveDataObserve() {
        getViewModel().getGroupListLiveData().observe(this, new Observer() { // from class: com.guochao.faceshow.aaspring.modulars.friend.l
            @Override // androidx.lifecycle.Observer
            public final void onChanged(Object obj) {
                FriendGroupMangerActivity.m378setLiveDataObserve$lambda0(FriendGroupMangerActivity.this, (List) obj);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: setLiveDataObserve$lambda-0  reason: not valid java name */
    public static final void m378setLiveDataObserve$lambda0(FriendGroupMangerActivity this$0, List list) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.count = list != null ? list.size() : 0;
        CommonRecyclerAdapter<GroupInfo> commonRecyclerAdapter = this$0.adapter;
        if (commonRecyclerAdapter != 0) {
            if (list == null) {
                list = new ArrayList();
            }
            commonRecyclerAdapter.setData(list);
        }
    }

    @Nullable
    public final CommonRecyclerAdapter<GroupInfo> getAdapter() {
        return this.adapter;
    }

    public final int getCount() {
        return this.count;
    }

    public final int getCurrentIndex() {
        return this.currentIndex;
    }

    @Nullable
    public final Button getDeleteView() {
        return this.deleteView;
    }

    @Nullable
    public final String getGroupName() {
        return this.groupName;
    }

    @Nullable
    public final PopupWindow getMDeletePop() {
        return this.mDeletePop;
    }

    @Nullable
    public final s8.c getMRenameGroupDialog() {
        return this.mRenameGroupDialog;
    }

    @Nullable
    public MenuItem getMenuItem() {
        return this.menuItem;
    }

    @NotNull
    public final ActivityFriendGroupManagerBinding getViewBinding() {
        ActivityFriendGroupManagerBinding activityFriendGroupManagerBinding = this.viewBinding;
        if (activityFriendGroupManagerBinding != null) {
            return activityFriendGroupManagerBinding;
        }
        Intrinsics.throwUninitializedPropertyAccessException("viewBinding");
        return null;
    }

    @Override // com.guochao.faceshow.aaspring.base.mvvm.activity.GCCoreActivity
    public void initView(@Nullable Bundle bundle) {
        setTitle(getString(R.string.friend_group_manager));
        setLiveDataObserve();
        getViewBinding().addImg.setOnClickListener(new View.OnClickListener() { // from class: com.guochao.faceshow.aaspring.modulars.friend.i
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                FriendGroupMangerActivity.m376initView$lambda1(FriendGroupMangerActivity.this, view);
            }
        });
        initAdapter();
        initDelete();
    }

    @Override // androidx.activity.ComponentActivity, android.app.Activity
    public boolean onCreateOptionsMenu(@NotNull Menu menu) {
        Intrinsics.checkNotNullParameter(menu, "menu");
        getMenuInflater().inflate(R.menu.friend_group_toolbar_menu, menu);
        setMenuItem(menu.findItem(R.id.save));
        MenuItem menuItem = getMenuItem();
        View actionView = menuItem != null ? menuItem.getActionView() : null;
        TextView textView = actionView instanceof TextView ? (TextView) actionView : null;
        if (textView != null) {
            textView.setTextSize(2, 14.0f);
        }
        MenuItem menuItem2 = getMenuItem();
        if (menuItem2 != null) {
            menuItem2.setEnabled(false);
        }
        MenuItem menuItem3 = getMenuItem();
        if (menuItem3 != null) {
            menuItem3.setOnMenuItemClickListener(new MenuItem.OnMenuItemClickListener() { // from class: com.guochao.faceshow.aaspring.modulars.friend.g
                @Override // android.view.MenuItem.OnMenuItemClickListener
                public final boolean onMenuItemClick(MenuItem menuItem4) {
                    boolean m377onCreateOptionsMenu$lambda7;
                    m377onCreateOptionsMenu$lambda7 = FriendGroupMangerActivity.m377onCreateOptionsMenu$lambda7(FriendGroupMangerActivity.this, menuItem4);
                    return m377onCreateOptionsMenu$lambda7;
                }
            });
        }
        return super.onCreateOptionsMenu(menu);
    }

    @Override // com.guochao.faceshow.aaspring.base.mvvm.viewmodel.BaseViewModel.ModelUpdateObserver
    public void onModelUpdate(@Nullable BaseModel baseModel) {
    }

    public final void setAdapter(@Nullable CommonRecyclerAdapter<GroupInfo> commonRecyclerAdapter) {
        this.adapter = commonRecyclerAdapter;
    }

    public final void setCount(int i9) {
        this.count = i9;
    }

    public final void setCurrentIndex(int i9) {
        this.currentIndex = i9;
    }

    public final void setDeleteView(@Nullable Button button) {
        this.deleteView = button;
    }

    public final void setGroupName(@Nullable String str) {
        this.groupName = str;
    }

    public final void setMDeletePop(@Nullable PopupWindow popupWindow) {
        this.mDeletePop = popupWindow;
    }

    public final void setMRenameGroupDialog(@Nullable s8.c cVar) {
        this.mRenameGroupDialog = cVar;
    }

    public void setMenuItem(@Nullable MenuItem menuItem) {
        this.menuItem = menuItem;
    }

    public final void setViewBinding(@NotNull ActivityFriendGroupManagerBinding activityFriendGroupManagerBinding) {
        Intrinsics.checkNotNullParameter(activityFriendGroupManagerBinding, "<set-?>");
        this.viewBinding = activityFriendGroupManagerBinding;
    }

    @Override // com.guochao.faceshow.aaspring.base.mvvm.activity.GCBaseMvvmActivity
    @NotNull
    public FriendListViewModel getViewModel() {
        return (FriendListViewModel) this.viewModel$delegate.getValue();
    }
}
