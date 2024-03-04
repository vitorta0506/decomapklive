package com.guochao.faceshow.aaspring.modulars.friend;

import android.content.Intent;
import android.os.Bundle;
import android.text.TextWatcher;
import android.view.Menu;
import android.view.MenuItem;
import android.view.View;
import android.widget.EditText;
import android.widget.TextView;
import androidx.activity.result.ActivityResult;
import androidx.activity.result.ActivityResultCallback;
import androidx.activity.result.ActivityResultLauncher;
import androidx.activity.result.contract.ActivityResultContracts;
import androidx.lifecycle.ViewModelProvider;
import androidx.lifecycle.ViewModelStoreOwner;
import androidx.recyclerview.widget.LinearLayoutManager;
import com.facebook.devicerequests.internal.DeviceRequestsHelper;
import com.guochao.faceshow.R;
import com.guochao.faceshow.aaspring.base.mvvm.activity.GCBaseMvvmActivity;
import com.guochao.faceshow.aaspring.base.mvvm.annotations.GCViewBinding;
import com.guochao.faceshow.aaspring.base.mvvm.model.BaseModel;
import com.guochao.faceshow.aaspring.base.mvvm.viewmodel.BaseViewModel;
import com.guochao.faceshow.aaspring.db.FriendInfo;
import com.guochao.faceshow.aaspring.modulars.friend.adapter.CommonRecyclerAdapter;
import com.guochao.faceshow.aaspring.modulars.friend.bean.FriendListBean;
import com.guochao.faceshow.aaspring.modulars.main.viewmodel.FriendListViewModel;
import com.guochao.faceshow.aaspring.utils.ToastUtils;
import com.guochao.faceshow.context.GCApplication;
import com.guochao.faceshow.databinding.ActivityFriendGroupAddFriendBinding;
import java.util.ArrayList;
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
import kotlin.text.StringsKt__StringsJVMKt;
import kotlin.text.StringsKt__StringsKt;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(d1 = {"\u0000\\\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u000b\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001B\u0005¢\u0006\u0002\u0010\u0004J\b\u0010#\u001a\u00020$H\u0002J\b\u0010%\u001a\u00020$H\u0002J\u0012\u0010&\u001a\u00020$2\b\u0010'\u001a\u0004\u0018\u00010(H\u0016J\u0010\u0010)\u001a\u00020*2\u0006\u0010+\u001a\u00020,H\u0016J\u0012\u0010-\u001a\u00020$2\b\u0010.\u001a\u0004\u0018\u00010\u0002H\u0016R\u0018\u0010\u0005\u001a\f\u0012\u0006\u0012\u0004\u0018\u00010\u0007\u0018\u00010\u0006X\u0082\u000e¢\u0006\u0002\n\u0000R$\u0010\b\u001a\f\u0012\u0006\u0012\u0004\u0018\u00010\u0007\u0018\u00010\tX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\n\u0010\u000b\"\u0004\b\f\u0010\rR\u001c\u0010\u000e\u001a\u0004\u0018\u00010\u000fX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0010\u0010\u0011\"\u0004\b\u0012\u0010\u0013R\u0014\u0010\u0014\u001a\b\u0012\u0004\u0012\u00020\u00160\u0015X\u0082\u0004¢\u0006\u0002\n\u0000R$\u0010\u0017\u001a\u00020\u00188\u0006@\u0006X\u0087.¢\u0006\u0014\n\u0000\u0012\u0004\b\u0019\u0010\u0004\u001a\u0004\b\u001a\u0010\u001b\"\u0004\b\u001c\u0010\u001dR\u001b\u0010\u001e\u001a\u00020\u00038VX\u0096\u0084\u0002¢\u0006\f\n\u0004\b!\u0010\"\u001a\u0004\b\u001f\u0010 ¨\u0006/"}, d2 = {"Lcom/guochao/faceshow/aaspring/modulars/friend/FriendGroupAddFriendActivity;", "Lcom/guochao/faceshow/aaspring/base/mvvm/activity/GCBaseMvvmActivity;", "Lcom/guochao/faceshow/aaspring/base/mvvm/model/BaseModel;", "Lcom/guochao/faceshow/aaspring/modulars/main/viewmodel/FriendListViewModel;", "()V", "adapter", "Lcom/guochao/faceshow/aaspring/modulars/friend/adapter/CommonRecyclerAdapter;", "Lcom/guochao/faceshow/aaspring/db/FriendInfo;", "friendList", "", "getFriendList", "()Ljava/util/List;", "setFriendList", "(Ljava/util/List;)V", "menuItem", "Landroid/view/MenuItem;", "getMenuItem", "()Landroid/view/MenuItem;", "setMenuItem", "(Landroid/view/MenuItem;)V", "startActivityLauncher", "Landroidx/activity/result/ActivityResultLauncher;", "Landroid/content/Intent;", "viewBinding", "Lcom/guochao/faceshow/databinding/ActivityFriendGroupAddFriendBinding;", "getViewBinding$annotations", "getViewBinding", "()Lcom/guochao/faceshow/databinding/ActivityFriendGroupAddFriendBinding;", "setViewBinding", "(Lcom/guochao/faceshow/databinding/ActivityFriendGroupAddFriendBinding;)V", "viewModel", "getViewModel", "()Lcom/guochao/faceshow/aaspring/modulars/main/viewmodel/FriendListViewModel;", "viewModel$delegate", "Lkotlin/Lazy;", "addFriend", "", "initAdapter", "initView", "savedInstanceSate", "Landroid/os/Bundle;", "onCreateOptionsMenu", "", "menu", "Landroid/view/Menu;", "onModelUpdate", DeviceRequestsHelper.DEVICE_INFO_MODEL, "app_GooglePlayRelease"}, k = 1, mv = {1, 7, 1}, xi = 48)
/* loaded from: classes3.dex */
public final class FriendGroupAddFriendActivity extends GCBaseMvvmActivity<BaseModel, FriendListViewModel> {
    @Nullable
    private CommonRecyclerAdapter<FriendInfo> adapter;
    @Nullable
    private List<FriendInfo> friendList;
    @Nullable
    private MenuItem menuItem;
    @NotNull
    private final ActivityResultLauncher<Intent> startActivityLauncher;
    public ActivityFriendGroupAddFriendBinding viewBinding;
    @NotNull
    private final Lazy viewModel$delegate;

    public FriendGroupAddFriendActivity() {
        Lazy lazy;
        final GCApplication app = GCApplication.app();
        Intrinsics.checkNotNullExpressionValue(app, "app()");
        lazy = LazyKt__LazyJVMKt.lazy(LazyThreadSafetyMode.NONE, (Function0) new Function0<FriendListViewModel>() { // from class: com.guochao.faceshow.aaspring.modulars.friend.FriendGroupAddFriendActivity$special$$inlined$lazyGlobalViewModel$default$1
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
        ActivityResultLauncher<Intent> registerForActivityResult = registerForActivityResult(new ActivityResultContracts.StartActivityForResult(), new ActivityResultCallback() { // from class: com.guochao.faceshow.aaspring.modulars.friend.e
            @Override // androidx.activity.result.ActivityResultCallback
            public final void onActivityResult(Object obj) {
                FriendGroupAddFriendActivity.m372startActivityLauncher$lambda10(FriendGroupAddFriendActivity.this, (ActivityResult) obj);
            }
        });
        Intrinsics.checkNotNullExpressionValue(registerForActivityResult, "registerForActivityResul…}\n            }\n        }");
        this.startActivityLauncher = registerForActivityResult;
    }

    private final void addFriend() {
        Intent intent = new Intent(this, SelectFriendActivity.class);
        ArrayList arrayList = new ArrayList();
        List<FriendInfo> list = this.friendList;
        if (list != null) {
            for (FriendInfo friendInfo : list) {
                arrayList.add(friendInfo != null ? friendInfo.getFriendId() : null);
            }
        }
        intent.putExtra("ids", arrayList);
        this.startActivityLauncher.launch(intent);
    }

    @GCViewBinding
    public static /* synthetic */ void getViewBinding$annotations() {
    }

    private final void initAdapter() {
        this.adapter = new FriendGroupAddFriendActivity$initAdapter$1(this, this.friendList);
        getViewBinding().recyclerView.setLayoutManager(new LinearLayoutManager(this));
        getViewBinding().recyclerView.setAdapter(this.adapter);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: initView$lambda-0  reason: not valid java name */
    public static final void m368initView$lambda0(FriendGroupAddFriendActivity this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.addFriend();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: initView$lambda-1  reason: not valid java name */
    public static final void m369initView$lambda1(FriendGroupAddFriendActivity this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.addFriend();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: initView$lambda-3  reason: not valid java name */
    public static final void m370initView$lambda3(FriendGroupAddFriendActivity this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.getViewBinding().name.setText("");
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: onCreateOptionsMenu$lambda-8  reason: not valid java name */
    public static final boolean m371onCreateOptionsMenu$lambda8(final FriendGroupAddFriendActivity this$0, MenuItem menuItem) {
        boolean isBlank;
        CharSequence trim;
        String friendId;
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        if (menuItem.getItemId() == R.id.save) {
            String obj = this$0.getViewBinding().name.getText().toString();
            isBlank = StringsKt__StringsJVMKt.isBlank(obj);
            if (isBlank) {
                String string = this$0.getString(R.string.input_group_name);
                Intrinsics.checkNotNullExpressionValue(string, "getString(R.string.input_group_name)");
                ToastUtils.showToast$default(this$0, string, 0, 0, 12, null);
                return true;
            }
            menuItem.setEnabled(false);
            ArrayList arrayList = new ArrayList();
            List<FriendInfo> list = this$0.friendList;
            if (list != null) {
                for (FriendInfo friendInfo : list) {
                    if (friendInfo != null && (friendId = friendInfo.getFriendId()) != null) {
                        arrayList.add(friendId);
                    }
                }
            }
            Function1<Boolean, Unit> function1 = new Function1<Boolean, Unit>() { // from class: com.guochao.faceshow.aaspring.modulars.friend.FriendGroupAddFriendActivity$onCreateOptionsMenu$1$callback$1
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
                        FriendGroupAddFriendActivity.this.setResult(-1);
                        FriendGroupAddFriendActivity.this.finish();
                        return;
                    }
                    MenuItem menuItem2 = FriendGroupAddFriendActivity.this.getMenuItem();
                    if (menuItem2 == null) {
                        return;
                    }
                    menuItem2.setEnabled(true);
                }
            };
            FriendListViewModel viewModel = this$0.getViewModel();
            trim = StringsKt__StringsKt.trim((CharSequence) obj);
            viewModel.addGroup(trim.toString(), arrayList, function1);
            return true;
        }
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: startActivityLauncher$lambda-10  reason: not valid java name */
    public static final void m372startActivityLauncher$lambda10(FriendGroupAddFriendActivity this$0, ActivityResult activityResult) {
        List<FriendInfo> list;
        Bundle extras;
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        if (activityResult.getResultCode() == -1) {
            Intent data = activityResult.getData();
            FriendListBean.Result result = (FriendListBean.Result) ((data == null || (extras = data.getExtras()) == null) ? null : extras.get("obj"));
            if (result == null || (list = result.getList()) == null) {
                return;
            }
            this$0.friendList = list;
            CommonRecyclerAdapter<FriendInfo> commonRecyclerAdapter = this$0.adapter;
            if (commonRecyclerAdapter != null) {
                commonRecyclerAdapter.setData(list);
            }
        }
    }

    @Nullable
    public final List<FriendInfo> getFriendList() {
        return this.friendList;
    }

    @Nullable
    public final MenuItem getMenuItem() {
        return this.menuItem;
    }

    @NotNull
    public final ActivityFriendGroupAddFriendBinding getViewBinding() {
        ActivityFriendGroupAddFriendBinding activityFriendGroupAddFriendBinding = this.viewBinding;
        if (activityFriendGroupAddFriendBinding != null) {
            return activityFriendGroupAddFriendBinding;
        }
        Intrinsics.throwUninitializedPropertyAccessException("viewBinding");
        return null;
    }

    @Override // com.guochao.faceshow.aaspring.base.mvvm.activity.GCCoreActivity
    public void initView(@Nullable Bundle bundle) {
        setTitle(getString(R.string.friend_add_group));
        initAdapter();
        getViewBinding().name.requestFocus();
        getViewBinding().addFriend.setOnClickListener(new View.OnClickListener() { // from class: com.guochao.faceshow.aaspring.modulars.friend.c
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                FriendGroupAddFriendActivity.m368initView$lambda0(FriendGroupAddFriendActivity.this, view);
            }
        });
        getViewBinding().addImg.setOnClickListener(new View.OnClickListener() { // from class: com.guochao.faceshow.aaspring.modulars.friend.d
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                FriendGroupAddFriendActivity.m369initView$lambda1(FriendGroupAddFriendActivity.this, view);
            }
        });
        EditText editText = getViewBinding().name;
        Intrinsics.checkNotNullExpressionValue(editText, "viewBinding.name");
        editText.addTextChangedListener(new TextWatcher() { // from class: com.guochao.faceshow.aaspring.modulars.friend.FriendGroupAddFriendActivity$initView$$inlined$addTextChangedListener$default$1
            /* JADX WARN: Removed duplicated region for block: B:10:0x0010  */
            /* JADX WARN: Removed duplicated region for block: B:15:0x002a  */
            @Override // android.text.TextWatcher
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct add '--show-bad-code' argument
            */
            public void afterTextChanged(@org.jetbrains.annotations.Nullable android.text.Editable r3) {
                /*
                    r2 = this;
                    r0 = 1
                    r1 = 0
                    if (r3 == 0) goto Ld
                    boolean r3 = kotlin.text.StringsKt.isBlank(r3)
                    if (r3 == 0) goto Lb
                    goto Ld
                Lb:
                    r3 = 0
                    goto Le
                Ld:
                    r3 = 1
                Le:
                    if (r3 == 0) goto L2a
                    com.guochao.faceshow.aaspring.modulars.friend.FriendGroupAddFriendActivity r3 = com.guochao.faceshow.aaspring.modulars.friend.FriendGroupAddFriendActivity.this
                    android.view.MenuItem r3 = r3.getMenuItem()
                    if (r3 != 0) goto L19
                    goto L1c
                L19:
                    r3.setEnabled(r1)
                L1c:
                    com.guochao.faceshow.aaspring.modulars.friend.FriendGroupAddFriendActivity r3 = com.guochao.faceshow.aaspring.modulars.friend.FriendGroupAddFriendActivity.this
                    com.guochao.faceshow.databinding.ActivityFriendGroupAddFriendBinding r3 = r3.getViewBinding()
                    android.widget.ImageView r3 = r3.clearEdit
                    r0 = 8
                    r3.setVisibility(r0)
                    goto L41
                L2a:
                    com.guochao.faceshow.aaspring.modulars.friend.FriendGroupAddFriendActivity r3 = com.guochao.faceshow.aaspring.modulars.friend.FriendGroupAddFriendActivity.this
                    android.view.MenuItem r3 = r3.getMenuItem()
                    if (r3 != 0) goto L33
                    goto L36
                L33:
                    r3.setEnabled(r0)
                L36:
                    com.guochao.faceshow.aaspring.modulars.friend.FriendGroupAddFriendActivity r3 = com.guochao.faceshow.aaspring.modulars.friend.FriendGroupAddFriendActivity.this
                    com.guochao.faceshow.databinding.ActivityFriendGroupAddFriendBinding r3 = r3.getViewBinding()
                    android.widget.ImageView r3 = r3.clearEdit
                    r3.setVisibility(r1)
                L41:
                    return
                */
                throw new UnsupportedOperationException("Method not decompiled: com.guochao.faceshow.aaspring.modulars.friend.FriendGroupAddFriendActivity$initView$$inlined$addTextChangedListener$default$1.afterTextChanged(android.text.Editable):void");
            }

            @Override // android.text.TextWatcher
            public void beforeTextChanged(@Nullable CharSequence charSequence, int i9, int i10, int i11) {
            }

            @Override // android.text.TextWatcher
            public void onTextChanged(@Nullable CharSequence charSequence, int i9, int i10, int i11) {
            }
        });
        getViewBinding().clearEdit.setOnClickListener(new View.OnClickListener() { // from class: com.guochao.faceshow.aaspring.modulars.friend.b
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                FriendGroupAddFriendActivity.m370initView$lambda3(FriendGroupAddFriendActivity.this, view);
            }
        });
    }

    @Override // androidx.activity.ComponentActivity, android.app.Activity
    public boolean onCreateOptionsMenu(@NotNull Menu menu) {
        Intrinsics.checkNotNullParameter(menu, "menu");
        getMenuInflater().inflate(R.menu.friend_group_toolbar_menu, menu);
        MenuItem findItem = menu.findItem(R.id.save);
        this.menuItem = findItem;
        View actionView = findItem != null ? findItem.getActionView() : null;
        TextView textView = actionView instanceof TextView ? (TextView) actionView : null;
        if (textView != null) {
            textView.setTextSize(2, 14.0f);
        }
        MenuItem menuItem = this.menuItem;
        if (menuItem != null) {
            menuItem.setEnabled(false);
        }
        MenuItem menuItem2 = this.menuItem;
        if (menuItem2 != null) {
            menuItem2.setOnMenuItemClickListener(new MenuItem.OnMenuItemClickListener() { // from class: com.guochao.faceshow.aaspring.modulars.friend.a
                @Override // android.view.MenuItem.OnMenuItemClickListener
                public final boolean onMenuItemClick(MenuItem menuItem3) {
                    boolean m371onCreateOptionsMenu$lambda8;
                    m371onCreateOptionsMenu$lambda8 = FriendGroupAddFriendActivity.m371onCreateOptionsMenu$lambda8(FriendGroupAddFriendActivity.this, menuItem3);
                    return m371onCreateOptionsMenu$lambda8;
                }
            });
        }
        return super.onCreateOptionsMenu(menu);
    }

    @Override // com.guochao.faceshow.aaspring.base.mvvm.viewmodel.BaseViewModel.ModelUpdateObserver
    public void onModelUpdate(@Nullable BaseModel baseModel) {
    }

    public final void setFriendList(@Nullable List<FriendInfo> list) {
        this.friendList = list;
    }

    public final void setMenuItem(@Nullable MenuItem menuItem) {
        this.menuItem = menuItem;
    }

    public final void setViewBinding(@NotNull ActivityFriendGroupAddFriendBinding activityFriendGroupAddFriendBinding) {
        Intrinsics.checkNotNullParameter(activityFriendGroupAddFriendBinding, "<set-?>");
        this.viewBinding = activityFriendGroupAddFriendBinding;
    }

    @Override // com.guochao.faceshow.aaspring.base.mvvm.activity.GCBaseMvvmActivity
    @NotNull
    public FriendListViewModel getViewModel() {
        return (FriendListViewModel) this.viewModel$delegate.getValue();
    }
}
