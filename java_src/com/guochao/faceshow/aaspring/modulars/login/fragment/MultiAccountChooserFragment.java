package com.guochao.faceshow.aaspring.modulars.login.fragment;

import android.app.Dialog;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.widget.TextView;
import androidx.fragment.app.FragmentActivity;
import androidx.recyclerview.widget.RecyclerView;
import com.guochao.faceshow.R;
import com.guochao.faceshow.aaspring.base.adapter.BaseViewHolder;
import com.guochao.faceshow.aaspring.base.mvvm.annotations.GCViewBinding;
import com.guochao.faceshow.aaspring.base.mvvm.fragment.GCCoreFragment;
import com.guochao.faceshow.aaspring.beans.CheckThirdPartyResult;
import com.guochao.faceshow.aaspring.modulars.login.activity.BaseLoginActivity;
import com.guochao.faceshow.aaspring.modulars.login.fragment.MultiAccountChooserFragment;
import com.guochao.faceshow.aaspring.modulars.login.utils.l;
import com.guochao.faceshow.bean.UserBean;
import com.guochao.faceshow.databinding.FragmentMultiAccountChooserBinding;
import com.guochao.faceshow.databinding.ListItemAccountChooserBinding;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;
import kotlin.Deprecated;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.jvm.JvmStatic;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(d1 = {"\u0000D\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\u0018\u0000 \u001e2\u00020\u0001:\u0003\u001c\u001d\u001eB\u0005¢\u0006\u0002\u0010\u0002J\u001a\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00020\u00142\b\u0010\u0015\u001a\u0004\u0018\u00010\u0016H\u0014J\u0012\u0010\u0017\u001a\u00020\u00122\b\u0010\u0015\u001a\u0004\u0018\u00010\u0016H\u0017J\u0012\u0010\u0018\u001a\u00020\u00122\b\u0010\u0015\u001a\u0004\u0018\u00010\u0016H\u0016J\u0012\u0010\u0019\u001a\u00020\u001a2\b\u0010\u0015\u001a\u0004\u0018\u00010\u0016H\u0016J\b\u0010\u001b\u001a\u00020\u0012H\u0016R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\u0005\u001a\u00020\u00068VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b\u0005\u0010\u0007R\u0010\u0010\b\u001a\u0004\u0018\u00010\tX\u0082\u000e¢\u0006\u0002\n\u0000R$\u0010\n\u001a\u00020\u000b8\u0006@\u0006X\u0087.¢\u0006\u0014\n\u0000\u0012\u0004\b\f\u0010\u0002\u001a\u0004\b\r\u0010\u000e\"\u0004\b\u000f\u0010\u0010¨\u0006\u001f"}, d2 = {"Lcom/guochao/faceshow/aaspring/modulars/login/fragment/MultiAccountChooserFragment;", "Lcom/guochao/faceshow/aaspring/base/mvvm/fragment/GCCoreFragment;", "()V", "currentSelect", "", "isDialog", "", "()Z", "result", "Lcom/guochao/faceshow/aaspring/beans/CheckThirdPartyResult;", "viewBinding", "Lcom/guochao/faceshow/databinding/FragmentMultiAccountChooserBinding;", "getViewBinding$annotations", "getViewBinding", "()Lcom/guochao/faceshow/databinding/FragmentMultiAccountChooserBinding;", "setViewBinding", "(Lcom/guochao/faceshow/databinding/FragmentMultiAccountChooserBinding;)V", "initView", "", "root", "Landroid/view/View;", "savedInstanceState", "Landroid/os/Bundle;", "onActivityCreated", "onCreate", "onCreateDialog", "Landroid/app/Dialog;", "onDestroyView", "AccountAdapter", "AccountViewHolder", "Companion", "app_GooglePlayRelease"}, k = 1, mv = {1, 7, 1}, xi = 48)
/* loaded from: classes3.dex */
public final class MultiAccountChooserFragment extends GCCoreFragment {
    @NotNull
    public static final Companion Companion = new Companion(null);
    private int currentSelect;
    @Nullable
    private CheckThirdPartyResult result;
    public FragmentMultiAccountChooserBinding viewBinding;

    /* JADX INFO: Access modifiers changed from: private */
    @Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0082\u0004\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0003J\b\u0010\u0004\u001a\u00020\u0005H\u0016J\u0018\u0010\u0006\u001a\u00020\u00072\u0006\u0010\b\u001a\u00020\u00022\u0006\u0010\t\u001a\u00020\u0005H\u0016J\u0018\u0010\n\u001a\u00020\u00022\u0006\u0010\u000b\u001a\u00020\f2\u0006\u0010\r\u001a\u00020\u0005H\u0016¨\u0006\u000e"}, d2 = {"Lcom/guochao/faceshow/aaspring/modulars/login/fragment/MultiAccountChooserFragment$AccountAdapter;", "Landroidx/recyclerview/widget/RecyclerView$Adapter;", "Lcom/guochao/faceshow/aaspring/modulars/login/fragment/MultiAccountChooserFragment$AccountViewHolder;", "(Lcom/guochao/faceshow/aaspring/modulars/login/fragment/MultiAccountChooserFragment;)V", "getItemCount", "", "onBindViewHolder", "", "holder", "position", "onCreateViewHolder", "parent", "Landroid/view/ViewGroup;", "viewType", "app_GooglePlayRelease"}, k = 1, mv = {1, 7, 1}, xi = 48)
    /* loaded from: classes3.dex */
    public final class AccountAdapter extends RecyclerView.Adapter<AccountViewHolder> {
        public AccountAdapter() {
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* renamed from: onCreateViewHolder$lambda-1$lambda-0  reason: not valid java name */
        public static final void m500onCreateViewHolder$lambda1$lambda0(MultiAccountChooserFragment this$0, AccountViewHolder this_apply, AccountAdapter this$1, View view) {
            Intrinsics.checkNotNullParameter(this$0, "this$0");
            Intrinsics.checkNotNullParameter(this_apply, "$this_apply");
            Intrinsics.checkNotNullParameter(this$1, "this$1");
            this$0.currentSelect = this_apply.getAbsoluteAdapterPosition();
            this$1.notifyDataSetChanged();
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public int getItemCount() {
            List<UserBean> userInfoList;
            CheckThirdPartyResult checkThirdPartyResult = MultiAccountChooserFragment.this.result;
            if (checkThirdPartyResult == null || (userInfoList = checkThirdPartyResult.getUserInfoList()) == null) {
                return 0;
            }
            return userInfoList.size();
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public void onBindViewHolder(@NotNull AccountViewHolder holder, int i9) {
            List<UserBean> userInfoList;
            UserBean userBean;
            Intrinsics.checkNotNullParameter(holder, "holder");
            ListItemAccountChooserBinding viewBinding = holder.getViewBinding();
            MultiAccountChooserFragment multiAccountChooserFragment = MultiAccountChooserFragment.this;
            TextView textView = viewBinding.nickname;
            CheckThirdPartyResult checkThirdPartyResult = multiAccountChooserFragment.result;
            textView.setText((checkThirdPartyResult == null || (userInfoList = checkThirdPartyResult.getUserInfoList()) == null || (userBean = userInfoList.get(i9)) == null) ? null : userBean.nickName);
            viewBinding.selection.setVisibility(multiAccountChooserFragment.currentSelect == holder.getAbsoluteAdapterPosition() ? 0 : 8);
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        @NotNull
        public AccountViewHolder onCreateViewHolder(@NotNull ViewGroup parent, int i9) {
            Intrinsics.checkNotNullParameter(parent, "parent");
            ListItemAccountChooserBinding inflate = ListItemAccountChooserBinding.inflate(LayoutInflater.from(parent.getContext()), parent, false);
            Intrinsics.checkNotNullExpressionValue(inflate, "inflate(\n               …, false\n                )");
            final AccountViewHolder accountViewHolder = new AccountViewHolder(inflate);
            final MultiAccountChooserFragment multiAccountChooserFragment = MultiAccountChooserFragment.this;
            accountViewHolder.itemView.setOnClickListener(new View.OnClickListener() { // from class: com.guochao.faceshow.aaspring.modulars.login.fragment.c
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    MultiAccountChooserFragment.AccountAdapter.m500onCreateViewHolder$lambda1$lambda0(MultiAccountChooserFragment.this, accountViewHolder, this, view);
                }
            });
            return accountViewHolder;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    @Metadata(d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0002\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0005\u0010\u0006¨\u0006\u0007"}, d2 = {"Lcom/guochao/faceshow/aaspring/modulars/login/fragment/MultiAccountChooserFragment$AccountViewHolder;", "Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;", "viewBinding", "Lcom/guochao/faceshow/databinding/ListItemAccountChooserBinding;", "(Lcom/guochao/faceshow/databinding/ListItemAccountChooserBinding;)V", "getViewBinding", "()Lcom/guochao/faceshow/databinding/ListItemAccountChooserBinding;", "app_GooglePlayRelease"}, k = 1, mv = {1, 7, 1}, xi = 48)
    /* loaded from: classes3.dex */
    public static final class AccountViewHolder extends BaseViewHolder {
        @NotNull
        private final ListItemAccountChooserBinding viewBinding;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public AccountViewHolder(@NotNull ListItemAccountChooserBinding viewBinding) {
            super(viewBinding.getRoot());
            Intrinsics.checkNotNullParameter(viewBinding, "viewBinding");
            this.viewBinding = viewBinding;
        }

        @NotNull
        public final ListItemAccountChooserBinding getViewBinding() {
            return this.viewBinding;
        }
    }

    @Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0010\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006H\u0007¨\u0006\u0007"}, d2 = {"Lcom/guochao/faceshow/aaspring/modulars/login/fragment/MultiAccountChooserFragment$Companion;", "", "()V", "newInstance", "Lcom/guochao/faceshow/aaspring/modulars/login/fragment/MultiAccountChooserFragment;", "result", "Lcom/guochao/faceshow/aaspring/beans/CheckThirdPartyResult;", "app_GooglePlayRelease"}, k = 1, mv = {1, 7, 1}, xi = 48)
    /* loaded from: classes3.dex */
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @JvmStatic
        @NotNull
        public final MultiAccountChooserFragment newInstance(@NotNull CheckThirdPartyResult result) {
            Intrinsics.checkNotNullParameter(result, "result");
            MultiAccountChooserFragment multiAccountChooserFragment = new MultiAccountChooserFragment();
            Bundle bundle = new Bundle();
            bundle.putParcelable("data", result);
            multiAccountChooserFragment.setArguments(bundle);
            return multiAccountChooserFragment;
        }
    }

    @GCViewBinding
    public static /* synthetic */ void getViewBinding$annotations() {
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: initView$lambda-7$lambda-3  reason: not valid java name */
    public static final void m498initView$lambda7$lambda3(MultiAccountChooserFragment this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.dismissAllowingStateLoss();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: initView$lambda-7$lambda-6  reason: not valid java name */
    public static final void m499initView$lambda7$lambda6(MultiAccountChooserFragment this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        FragmentActivity activity = this$0.getActivity();
        Intrinsics.checkNotNull(activity, "null cannot be cast to non-null type com.guochao.faceshow.aaspring.modulars.login.activity.BaseLoginActivity");
        BaseLoginActivity baseLoginActivity = (BaseLoginActivity) activity;
        l lVar = baseLoginActivity.f20183e;
        if (lVar != null) {
            CheckThirdPartyResult checkThirdPartyResult = this$0.result;
            if (checkThirdPartyResult != null) {
                checkThirdPartyResult.setReg(1);
                checkThirdPartyResult.setUser(checkThirdPartyResult.getUserInfoList().get(this$0.currentSelect));
                Unit unit = Unit.INSTANCE;
            } else {
                checkThirdPartyResult = null;
            }
            baseLoginActivity.H(null, checkThirdPartyResult, lVar);
        }
        this$0.dismissAllowingStateLoss();
    }

    @JvmStatic
    @NotNull
    public static final MultiAccountChooserFragment newInstance(@NotNull CheckThirdPartyResult checkThirdPartyResult) {
        return Companion.newInstance(checkThirdPartyResult);
    }

    @NotNull
    public final FragmentMultiAccountChooserBinding getViewBinding() {
        FragmentMultiAccountChooserBinding fragmentMultiAccountChooserBinding = this.viewBinding;
        if (fragmentMultiAccountChooserBinding != null) {
            return fragmentMultiAccountChooserBinding;
        }
        Intrinsics.throwUninitializedPropertyAccessException("viewBinding");
        return null;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.guochao.faceshow.aaspring.base.mvvm.fragment.GCCoreFragment
    public void initView(@NotNull View root, @Nullable Bundle bundle) {
        Intrinsics.checkNotNullParameter(root, "root");
        super.initView(root, bundle);
        FragmentMultiAccountChooserBinding viewBinding = getViewBinding();
        viewBinding.recyclerView.setAdapter(new AccountAdapter());
        viewBinding.cancel.setOnClickListener(new View.OnClickListener() { // from class: com.guochao.faceshow.aaspring.modulars.login.fragment.a
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                MultiAccountChooserFragment.m498initView$lambda7$lambda3(MultiAccountChooserFragment.this, view);
            }
        });
        viewBinding.confirm.setOnClickListener(new View.OnClickListener() { // from class: com.guochao.faceshow.aaspring.modulars.login.fragment.b
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                MultiAccountChooserFragment.m499initView$lambda7$lambda6(MultiAccountChooserFragment.this, view);
            }
        });
    }

    @Override // com.guochao.faceshow.aaspring.base.mvvm.fragment.GCCoreFragment
    public boolean isDialog() {
        return true;
    }

    @Override // androidx.fragment.app.DialogFragment, androidx.fragment.app.Fragment
    @Deprecated(message = "Deprecated in Java")
    public void onActivityCreated(@Nullable Bundle bundle) {
        Window window;
        super.onActivityCreated(bundle);
        Dialog dialog = getDialog();
        if (dialog == null || (window = dialog.getWindow()) == null) {
            return;
        }
        window.setLayout(-1, -1);
        window.setBackgroundDrawableResource(R.color.transparent);
        window.setDimAmount(0.6f);
    }

    @Override // com.guochao.faceshow.aaspring.base.mvvm.fragment.GCCoreFragment, androidx.fragment.app.DialogFragment, androidx.fragment.app.Fragment
    public void onCreate(@Nullable Bundle bundle) {
        CheckThirdPartyResult checkThirdPartyResult;
        super.onCreate(bundle);
        Bundle arguments = getArguments();
        if (arguments == null || (checkThirdPartyResult = (CheckThirdPartyResult) arguments.getParcelable("data")) == null) {
            return;
        }
        this.result = checkThirdPartyResult;
        SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
        List<UserBean> userInfoList = checkThirdPartyResult.getUserInfoList();
        if (userInfoList != null) {
            Intrinsics.checkNotNullExpressionValue(userInfoList, "userInfoList");
            int i9 = 0;
            long j10 = 0;
            for (Object obj : userInfoList) {
                int i10 = i9 + 1;
                if (i9 < 0) {
                    CollectionsKt__CollectionsKt.throwIndexOverflow();
                }
                Date parse = simpleDateFormat.parse(((UserBean) obj).getLastTime());
                long time = parse != null ? parse.getTime() : 0L;
                if (time > j10) {
                    this.currentSelect = i9;
                    j10 = time;
                }
                i9 = i10;
            }
        }
    }

    @Override // androidx.fragment.app.DialogFragment
    @NotNull
    public Dialog onCreateDialog(@Nullable Bundle bundle) {
        return createCenterDialog();
    }

    @Override // androidx.fragment.app.DialogFragment, androidx.fragment.app.Fragment
    public void onDestroyView() {
        super.onDestroyView();
        FragmentActivity activity = getActivity();
        Intrinsics.checkNotNull(activity, "null cannot be cast to non-null type com.guochao.faceshow.aaspring.modulars.login.activity.BaseLoginActivity");
        BaseLoginActivity baseLoginActivity = (BaseLoginActivity) activity;
        l lVar = baseLoginActivity.f20183e;
        if (lVar != null) {
            baseLoginActivity.A(lVar);
        }
    }

    public final void setViewBinding(@NotNull FragmentMultiAccountChooserBinding fragmentMultiAccountChooserBinding) {
        Intrinsics.checkNotNullParameter(fragmentMultiAccountChooserBinding, "<set-?>");
        this.viewBinding = fragmentMultiAccountChooserBinding;
    }
}
