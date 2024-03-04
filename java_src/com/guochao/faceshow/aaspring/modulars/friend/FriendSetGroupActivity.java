package com.guochao.faceshow.aaspring.modulars.friend;

import android.app.Dialog;
import android.os.Bundle;
import android.view.Menu;
import android.view.MenuItem;
import android.view.View;
import androidx.lifecycle.MutableLiveData;
import androidx.lifecycle.Observer;
import androidx.lifecycle.ViewModelProvider;
import androidx.lifecycle.ViewModelStoreOwner;
import androidx.recyclerview.widget.LinearLayoutManager;
import com.facebook.devicerequests.internal.DeviceRequestsHelper;
import com.guochao.faceshow.R;
import com.guochao.faceshow.aaspring.base.mvvm.activity.GCBaseMvvmActivity;
import com.guochao.faceshow.aaspring.base.mvvm.annotations.GCViewBinding;
import com.guochao.faceshow.aaspring.base.mvvm.model.BaseModel;
import com.guochao.faceshow.aaspring.base.mvvm.viewmodel.BaseViewModel;
import com.guochao.faceshow.aaspring.db.GroupInfo;
import com.guochao.faceshow.aaspring.modulars.friend.adapter.CommonRecyclerAdapter;
import com.guochao.faceshow.aaspring.modulars.main.viewmodel.FriendListViewModel;
import com.guochao.faceshow.aaspring.utils.ToastUtils;
import com.guochao.faceshow.context.GCApplication;
import com.guochao.faceshow.databinding.ActivityFriendSetGroupBinding;
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
import s8.b;
@Metadata(bv = {}, d1 = {"\u0000`\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\b\n\u0002\b\u000b\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\b\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001B\u0007¢\u0006\u0004\bC\u00104J\b\u0010\u0005\u001a\u00020\u0004H\u0002J\b\u0010\u0006\u001a\u00020\u0004H\u0002J\b\u0010\u0007\u001a\u00020\u0004H\u0002J\u0012\u0010\t\u001a\u00020\u00042\b\u0010\b\u001a\u0004\u0018\u00010\u0002H\u0016J\u0012\u0010\f\u001a\u00020\u00042\b\u0010\u000b\u001a\u0004\u0018\u00010\nH\u0016J\u0010\u0010\u0010\u001a\u00020\u000f2\u0006\u0010\u000e\u001a\u00020\rH\u0016R$\u0010\u0012\u001a\u0004\u0018\u00010\u00118\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0012\u0010\u0013\u001a\u0004\b\u0014\u0010\u0015\"\u0004\b\u0016\u0010\u0017R,\u0010\u001a\u001a\f\u0012\u0006\u0012\u0004\u0018\u00010\u0019\u0018\u00010\u00188\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u001a\u0010\u001b\u001a\u0004\b\u001c\u0010\u001d\"\u0004\b\u001e\u0010\u001fR\"\u0010!\u001a\u00020 8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b!\u0010\"\u001a\u0004\b#\u0010$\"\u0004\b%\u0010&R\u001b\u0010+\u001a\u00020\u00038VX\u0096\u0084\u0002¢\u0006\f\n\u0004\b'\u0010(\u001a\u0004\b)\u0010*R(\u0010-\u001a\u00020,8\u0006@\u0006X\u0087.¢\u0006\u0018\n\u0004\b-\u0010.\u0012\u0004\b3\u00104\u001a\u0004\b/\u00100\"\u0004\b1\u00102R$\u00106\u001a\u0004\u0018\u0001058\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b6\u00107\u001a\u0004\b8\u00109\"\u0004\b:\u0010;R\"\u0010=\u001a\u00020<8\u0006@\u0006X\u0086.¢\u0006\u0012\n\u0004\b=\u0010>\u001a\u0004\b?\u0010@\"\u0004\bA\u0010B¨\u0006D"}, d2 = {"Lcom/guochao/faceshow/aaspring/modulars/friend/FriendSetGroupActivity;", "Lcom/guochao/faceshow/aaspring/base/mvvm/activity/GCBaseMvvmActivity;", "Lcom/guochao/faceshow/aaspring/base/mvvm/model/BaseModel;", "Lcom/guochao/faceshow/aaspring/modulars/main/viewmodel/FriendListViewModel;", "", "setLiveDataObserve", "addGroup", "initAdapter", DeviceRequestsHelper.DEVICE_INFO_MODEL, "onModelUpdate", "Landroid/os/Bundle;", "savedInstanceSate", "initView", "Landroid/view/Menu;", "menu", "", "onCreateOptionsMenu", "", "friendId", "Ljava/lang/String;", "getFriendId", "()Ljava/lang/String;", "setFriendId", "(Ljava/lang/String;)V", "Lcom/guochao/faceshow/aaspring/modulars/friend/adapter/CommonRecyclerAdapter;", "Lcom/guochao/faceshow/aaspring/db/GroupInfo;", "adapter", "Lcom/guochao/faceshow/aaspring/modulars/friend/adapter/CommonRecyclerAdapter;", "getAdapter", "()Lcom/guochao/faceshow/aaspring/modulars/friend/adapter/CommonRecyclerAdapter;", "setAdapter", "(Lcom/guochao/faceshow/aaspring/modulars/friend/adapter/CommonRecyclerAdapter;)V", "", "checkIndex", "I", "getCheckIndex", "()I", "setCheckIndex", "(I)V", "viewModel$delegate", "Lkotlin/Lazy;", "getViewModel", "()Lcom/guochao/faceshow/aaspring/modulars/main/viewmodel/FriendListViewModel;", "viewModel", "Lcom/guochao/faceshow/databinding/ActivityFriendSetGroupBinding;", "viewBinding", "Lcom/guochao/faceshow/databinding/ActivityFriendSetGroupBinding;", "getViewBinding", "()Lcom/guochao/faceshow/databinding/ActivityFriendSetGroupBinding;", "setViewBinding", "(Lcom/guochao/faceshow/databinding/ActivityFriendSetGroupBinding;)V", "getViewBinding$annotations", "()V", "Landroid/view/MenuItem;", "menuItem", "Landroid/view/MenuItem;", "getMenuItem", "()Landroid/view/MenuItem;", "setMenuItem", "(Landroid/view/MenuItem;)V", "Ls8/b;", "mAddGroupDialog", "Ls8/b;", "getMAddGroupDialog", "()Ls8/b;", "setMAddGroupDialog", "(Ls8/b;)V", "<init>", "app_GooglePlayRelease"}, k = 1, mv = {1, 7, 1})
/* loaded from: classes3.dex */
public final class FriendSetGroupActivity extends GCBaseMvvmActivity<BaseModel, FriendListViewModel> {
    @Nullable
    private CommonRecyclerAdapter<GroupInfo> adapter;
    private int checkIndex = -1;
    @Nullable
    private String friendId;
    public s8.b mAddGroupDialog;
    @Nullable
    private MenuItem menuItem;
    public ActivityFriendSetGroupBinding viewBinding;
    @NotNull
    private final Lazy viewModel$delegate;

    public FriendSetGroupActivity() {
        Lazy lazy;
        final GCApplication app = GCApplication.app();
        Intrinsics.checkNotNullExpressionValue(app, "app()");
        lazy = LazyKt__LazyJVMKt.lazy(LazyThreadSafetyMode.NONE, (Function0) new Function0<FriendListViewModel>() { // from class: com.guochao.faceshow.aaspring.modulars.friend.FriendSetGroupActivity$special$$inlined$lazyGlobalViewModel$default$1
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

    private final void addGroup() {
        List<GroupInfo> data;
        CommonRecyclerAdapter<GroupInfo> commonRecyclerAdapter = this.adapter;
        Integer valueOf = (commonRecyclerAdapter == null || (data = commonRecyclerAdapter.getData()) == null) ? null : Integer.valueOf(data.size());
        Intrinsics.checkNotNull(valueOf);
        if (valueOf.intValue() >= 20) {
            String string = getString(R.string.friend_group_max_tip);
            Intrinsics.checkNotNullExpressionValue(string, "getString(R.string.friend_group_max_tip)");
            ToastUtils.showToast$default(this, string, 0, 0, 12, null);
            return;
        }
        getMAddGroupDialog().show();
    }

    @GCViewBinding
    public static /* synthetic */ void getViewBinding$annotations() {
    }

    private final void initAdapter() {
        MutableLiveData<List<GroupInfo>> groupListLiveData = getViewModel().getGroupListLiveData();
        this.adapter = new FriendSetGroupActivity$initAdapter$1(this, groupListLiveData != null ? groupListLiveData.getValue() : null);
        getViewBinding().recyclerView.setLayoutManager(new LinearLayoutManager(this));
        getViewBinding().recyclerView.setAdapter(this.adapter);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: initView$lambda-1  reason: not valid java name */
    public static final void m382initView$lambda1(FriendSetGroupActivity this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.addGroup();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: initView$lambda-2  reason: not valid java name */
    public static final void m383initView$lambda2(FriendSetGroupActivity this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.addGroup();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: onCreateOptionsMenu$lambda-4  reason: not valid java name */
    public static final boolean m384onCreateOptionsMenu$lambda4(final FriendSetGroupActivity this$0, MenuItem menuItem) {
        CommonRecyclerAdapter<GroupInfo> commonRecyclerAdapter;
        List<GroupInfo> data;
        final GroupInfo groupInfo;
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        if (menuItem.getItemId() != R.id.save || this$0.checkIndex == -1 || (commonRecyclerAdapter = this$0.adapter) == null || (data = commonRecyclerAdapter.getData()) == null || (groupInfo = data.get(this$0.checkIndex)) == null) {
            return true;
        }
        this$0.getViewModel().setGroup(groupInfo.getId(), this$0.friendId, new Function1<Boolean, Unit>() { // from class: com.guochao.faceshow.aaspring.modulars.friend.FriendSetGroupActivity$onCreateOptionsMenu$1$1$1
            /* JADX INFO: Access modifiers changed from: package-private */
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(Boolean bool) {
                invoke(bool.booleanValue());
                return Unit.INSTANCE;
            }

            /* JADX WARN: Removed duplicated region for block: B:13:0x0034  */
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct add '--show-bad-code' argument
            */
            public final void invoke(boolean r7) {
                /*
                    r6 = this;
                    if (r7 == 0) goto L5e
                    com.guochao.faceshow.aaspring.modulars.friend.FriendSetGroupActivity r0 = com.guochao.faceshow.aaspring.modulars.friend.FriendSetGroupActivity.this
                    r7 = 2131886524(0x7f1201bc, float:1.940763E38)
                    java.lang.String r1 = r0.getString(r7)
                    java.lang.String r7 = "getString(R.string.common_do_success)"
                    kotlin.jvm.internal.Intrinsics.checkNotNullExpressionValue(r1, r7)
                    r2 = 0
                    r3 = 0
                    r4 = 12
                    r5 = 0
                    com.guochao.faceshow.aaspring.utils.ToastUtils.showToast$default(r0, r1, r2, r3, r4, r5)
                    com.guochao.faceshow.aaspring.db.GroupInfo r7 = r2
                    int r7 = r7.getId()
                    if (r7 != 0) goto L42
                    com.guochao.faceshow.aaspring.db.GroupInfo r7 = r2
                    java.lang.String r7 = r7.getName()
                    if (r7 == 0) goto L31
                    boolean r7 = kotlin.text.StringsKt.isBlank(r7)
                    if (r7 == 0) goto L2f
                    goto L31
                L2f:
                    r7 = 0
                    goto L32
                L31:
                    r7 = 1
                L32:
                    if (r7 == 0) goto L42
                    com.guochao.faceshow.aaspring.modulars.friend.FriendSetGroupActivity r7 = com.guochao.faceshow.aaspring.modulars.friend.FriendSetGroupActivity.this
                    android.content.res.Resources r7 = r7.getResources()
                    r0 = 2131887514(0x7f12059a, float:1.9409637E38)
                    java.lang.String r7 = r7.getString(r0)
                    goto L48
                L42:
                    com.guochao.faceshow.aaspring.db.GroupInfo r7 = r2
                    java.lang.String r7 = r7.getName()
                L48:
                    com.guochao.faceshow.aaspring.modulars.friend.FriendSetGroupActivity r0 = com.guochao.faceshow.aaspring.modulars.friend.FriendSetGroupActivity.this
                    r1 = -1
                    android.content.Intent r2 = new android.content.Intent
                    r2.<init>()
                    java.lang.String r3 = "name"
                    android.content.Intent r7 = r2.putExtra(r3, r7)
                    r0.setResult(r1, r7)
                    com.guochao.faceshow.aaspring.modulars.friend.FriendSetGroupActivity r7 = com.guochao.faceshow.aaspring.modulars.friend.FriendSetGroupActivity.this
                    r7.finish()
                L5e:
                    return
                */
                throw new UnsupportedOperationException("Method not decompiled: com.guochao.faceshow.aaspring.modulars.friend.FriendSetGroupActivity$onCreateOptionsMenu$1$1$1.invoke(boolean):void");
            }
        });
        return true;
    }

    private final void setLiveDataObserve() {
        getViewModel().getGroupListLiveData().observe(this, new Observer() { // from class: com.guochao.faceshow.aaspring.modulars.friend.r
            @Override // androidx.lifecycle.Observer
            public final void onChanged(Object obj) {
                FriendSetGroupActivity.m385setLiveDataObserve$lambda0(FriendSetGroupActivity.this, (List) obj);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: setLiveDataObserve$lambda-0  reason: not valid java name */
    public static final void m385setLiveDataObserve$lambda0(FriendSetGroupActivity this$0, List list) {
        CommonRecyclerAdapter<GroupInfo> commonRecyclerAdapter;
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        if (list == null || (commonRecyclerAdapter = this$0.adapter) == null) {
            return;
        }
        commonRecyclerAdapter.setData(list);
    }

    @Nullable
    public final CommonRecyclerAdapter<GroupInfo> getAdapter() {
        return this.adapter;
    }

    public final int getCheckIndex() {
        return this.checkIndex;
    }

    @Nullable
    public final String getFriendId() {
        return this.friendId;
    }

    @NotNull
    public final s8.b getMAddGroupDialog() {
        s8.b bVar = this.mAddGroupDialog;
        if (bVar != null) {
            return bVar;
        }
        Intrinsics.throwUninitializedPropertyAccessException("mAddGroupDialog");
        return null;
    }

    @Nullable
    public final MenuItem getMenuItem() {
        return this.menuItem;
    }

    @NotNull
    public final ActivityFriendSetGroupBinding getViewBinding() {
        ActivityFriendSetGroupBinding activityFriendSetGroupBinding = this.viewBinding;
        if (activityFriendSetGroupBinding != null) {
            return activityFriendSetGroupBinding;
        }
        Intrinsics.throwUninitializedPropertyAccessException("viewBinding");
        return null;
    }

    @Override // com.guochao.faceshow.aaspring.base.mvvm.activity.GCCoreActivity
    public void initView(@Nullable Bundle bundle) {
        setTitle(getString(R.string.set_group));
        Bundle extras = getIntent().getExtras();
        this.friendId = extras != null ? extras.getString("id") : null;
        setLiveDataObserve();
        s8.b b10 = new s8.b(this, new b.a() { // from class: com.guochao.faceshow.aaspring.modulars.friend.FriendSetGroupActivity$initView$1
            @Override // s8.b.a
            public void onClick(@Nullable Dialog dialog, boolean z10) {
            }

            /* JADX WARN: Removed duplicated region for block: B:13:0x001b  */
            /* JADX WARN: Removed duplicated region for block: B:14:0x0032  */
            @Override // s8.b.a
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct add '--show-bad-code' argument
            */
            public void onConfirm(@org.jetbrains.annotations.Nullable android.app.Dialog r9, @org.jetbrains.annotations.Nullable java.lang.String r10) {
                /*
                    r8 = this;
                    if (r10 == 0) goto Lb
                    java.lang.CharSequence r10 = kotlin.text.StringsKt.trim(r10)
                    java.lang.String r10 = r10.toString()
                    goto Lc
                Lb:
                    r10 = 0
                Lc:
                    r1 = r10
                    if (r1 == 0) goto L18
                    boolean r10 = kotlin.text.StringsKt.isBlank(r1)
                    if (r10 == 0) goto L16
                    goto L18
                L16:
                    r10 = 0
                    goto L19
                L18:
                    r10 = 1
                L19:
                    if (r10 == 0) goto L32
                    com.guochao.faceshow.aaspring.modulars.friend.FriendSetGroupActivity r2 = com.guochao.faceshow.aaspring.modulars.friend.FriendSetGroupActivity.this
                    r9 = 2131887163(0x7f12043b, float:1.9408925E38)
                    java.lang.String r3 = r2.getString(r9)
                    java.lang.String r9 = "getString(R.string.input_group_name)"
                    kotlin.jvm.internal.Intrinsics.checkNotNullExpressionValue(r3, r9)
                    r4 = 0
                    r5 = 0
                    r6 = 12
                    r7 = 0
                    com.guochao.faceshow.aaspring.utils.ToastUtils.showToast$default(r2, r3, r4, r5, r6, r7)
                    goto L44
                L32:
                    if (r9 == 0) goto L37
                    r9.dismiss()
                L37:
                    com.guochao.faceshow.aaspring.modulars.friend.FriendSetGroupActivity r9 = com.guochao.faceshow.aaspring.modulars.friend.FriendSetGroupActivity.this
                    com.guochao.faceshow.aaspring.modulars.main.viewmodel.FriendListViewModel r0 = r9.getViewModel()
                    r2 = 0
                    r3 = 0
                    r4 = 4
                    r5 = 0
                    com.guochao.faceshow.aaspring.modulars.main.viewmodel.FriendListViewModel.addGroup$default(r0, r1, r2, r3, r4, r5)
                L44:
                    return
                */
                throw new UnsupportedOperationException("Method not decompiled: com.guochao.faceshow.aaspring.modulars.friend.FriendSetGroupActivity$initView$1.onConfirm(android.app.Dialog, java.lang.String):void");
            }

            @Override // s8.b.a
            public /* bridge */ /* synthetic */ void onCreate(s8.b bVar) {
                s8.a.a(this, bVar);
            }
        }).b(getString(R.string.friend_group_new_group));
        Intrinsics.checkNotNullExpressionValue(b10, "override fun initView(sa…      initAdapter()\n    }");
        setMAddGroupDialog(b10);
        getViewBinding().addGroup.setOnClickListener(new View.OnClickListener() { // from class: com.guochao.faceshow.aaspring.modulars.friend.p
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                FriendSetGroupActivity.m382initView$lambda1(FriendSetGroupActivity.this, view);
            }
        });
        getViewBinding().addImg.setOnClickListener(new View.OnClickListener() { // from class: com.guochao.faceshow.aaspring.modulars.friend.q
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                FriendSetGroupActivity.m383initView$lambda2(FriendSetGroupActivity.this, view);
            }
        });
        initAdapter();
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
            menuItem.setOnMenuItemClickListener(new MenuItem.OnMenuItemClickListener() { // from class: com.guochao.faceshow.aaspring.modulars.friend.o
                @Override // android.view.MenuItem.OnMenuItemClickListener
                public final boolean onMenuItemClick(MenuItem menuItem2) {
                    boolean m384onCreateOptionsMenu$lambda4;
                    m384onCreateOptionsMenu$lambda4 = FriendSetGroupActivity.m384onCreateOptionsMenu$lambda4(FriendSetGroupActivity.this, menuItem2);
                    return m384onCreateOptionsMenu$lambda4;
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

    public final void setCheckIndex(int i9) {
        this.checkIndex = i9;
    }

    public final void setFriendId(@Nullable String str) {
        this.friendId = str;
    }

    public final void setMAddGroupDialog(@NotNull s8.b bVar) {
        Intrinsics.checkNotNullParameter(bVar, "<set-?>");
        this.mAddGroupDialog = bVar;
    }

    public final void setMenuItem(@Nullable MenuItem menuItem) {
        this.menuItem = menuItem;
    }

    public final void setViewBinding(@NotNull ActivityFriendSetGroupBinding activityFriendSetGroupBinding) {
        Intrinsics.checkNotNullParameter(activityFriendSetGroupBinding, "<set-?>");
        this.viewBinding = activityFriendSetGroupBinding;
    }

    @Override // com.guochao.faceshow.aaspring.base.mvvm.activity.GCBaseMvvmActivity
    @NotNull
    public FriendListViewModel getViewModel() {
        return (FriendListViewModel) this.viewModel$delegate.getValue();
    }
}
