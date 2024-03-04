package com.guochao.faceshow.aaspring.modulars.personal.invite;

import android.content.Intent;
import android.text.TextUtils;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.TextView;
import androidx.activity.result.ActivityResult;
import androidx.activity.result.ActivityResultCallback;
import androidx.activity.result.ActivityResultLauncher;
import androidx.activity.result.contract.ActivityResultContracts;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.guochao.faceshow.R;
import com.guochao.faceshow.aaspring.base.activity.BaseActivity;
import com.guochao.faceshow.aaspring.base.activity.a;
import com.guochao.faceshow.aaspring.base.adapter.BaseViewHolder;
import com.guochao.faceshow.aaspring.base.http.v2.GCRequest;
import com.guochao.faceshow.aaspring.base.http.v2.Response;
import com.guochao.faceshow.aaspring.beans.WithdrawSpecification;
import com.guochao.faceshow.aaspring.beans.WithdrawSpecificationList;
import com.guochao.faceshow.aaspring.modulars.personal.WithdrawalNewActivity;
import com.guochao.faceshow.aaspring.utils.FontUtils;
import com.guochao.faceshow.aaspring.utils.TextViewUtils;
import com.guochao.faceshow.utils.BaseConfig;
import java.util.ArrayList;
import java.util.List;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(bv = {}, d1 = {"\u0000h\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010!\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b>\u0010?J\b\u0010\u0003\u001a\u00020\u0002H\u0002J\b\u0010\u0005\u001a\u00020\u0004H\u0016J\b\u0010\u0007\u001a\u00020\u0006H\u0016J\b\u0010\b\u001a\u00020\u0002H\u0016J\b\u0010\t\u001a\u00020\u0002H\u0016J\"\u0010\u000f\u001a\u00020\u00022\b\u0010\u000b\u001a\u0004\u0018\u00010\n2\u0006\u0010\f\u001a\u00020\u00062\b\u0010\u000e\u001a\u0004\u0018\u00010\rJ\b\u0010\u0010\u001a\u00020\u0002H\u0014R\"\u0010\u0012\u001a\u00020\u00118\u0006@\u0006X\u0086.¢\u0006\u0012\n\u0004\b\u0012\u0010\u0013\u001a\u0004\b\u0014\u0010\u0015\"\u0004\b\u0016\u0010\u0017R\"\u0010\u0019\u001a\u00020\u00188\u0006@\u0006X\u0086.¢\u0006\u0012\n\u0004\b\u0019\u0010\u001a\u001a\u0004\b\u001b\u0010\u001c\"\u0004\b\u001d\u0010\u001eR\"\u0010\u001f\u001a\u00020\u00188\u0006@\u0006X\u0086.¢\u0006\u0012\n\u0004\b\u001f\u0010\u001a\u001a\u0004\b \u0010\u001c\"\u0004\b!\u0010\u001eR\"\u0010#\u001a\u00020\"8\u0006@\u0006X\u0086.¢\u0006\u0012\n\u0004\b#\u0010$\u001a\u0004\b%\u0010&\"\u0004\b'\u0010(R*\u0010*\u001a\n\u0012\u0004\u0012\u00020\r\u0018\u00010)8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b*\u0010+\u001a\u0004\b,\u0010-\"\u0004\b.\u0010/R$\u00101\u001a\u0004\u0018\u0001008\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b1\u00102\u001a\u0004\b3\u00104\"\u0004\b5\u00106R\u001a\u00108\u001a\b\u0012\u0004\u0012\u00020\n078\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b8\u00109R\u001a\u0010<\u001a\b\u0012\u0004\u0012\u00020;0:8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b<\u0010=¨\u0006@"}, d2 = {"Lcom/guochao/faceshow/aaspring/modulars/personal/invite/H5WithdrawalMoneyWebActivity;", "Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;", "", "getWithdrawData", "Lcom/guochao/faceshow/aaspring/base/activity/a;", "getActivityConfig", "", "getLayoutId", "initView", "loadData", "Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;", "holder", "position", "Lcom/guochao/faceshow/aaspring/beans/WithdrawSpecificationList;", BaseConfig.ITEM, "convertItem", "onResume", "Landroid/widget/FrameLayout;", "flBlack", "Landroid/widget/FrameLayout;", "getFlBlack", "()Landroid/widget/FrameLayout;", "setFlBlack", "(Landroid/widget/FrameLayout;)V", "Landroid/widget/TextView;", "tvTotalBalance", "Landroid/widget/TextView;", "getTvTotalBalance", "()Landroid/widget/TextView;", "setTvTotalBalance", "(Landroid/widget/TextView;)V", "tvCanBalance", "getTvCanBalance", "setTvCanBalance", "Landroidx/recyclerview/widget/RecyclerView;", "recyclerView", "Landroidx/recyclerview/widget/RecyclerView;", "getRecyclerView", "()Landroidx/recyclerview/widget/RecyclerView;", "setRecyclerView", "(Landroidx/recyclerview/widget/RecyclerView;)V", "", "mList", "Ljava/util/List;", "getMList", "()Ljava/util/List;", "setMList", "(Ljava/util/List;)V", "Lcom/guochao/faceshow/aaspring/beans/WithdrawSpecification;", "withdrawSpecification", "Lcom/guochao/faceshow/aaspring/beans/WithdrawSpecification;", "getWithdrawSpecification", "()Lcom/guochao/faceshow/aaspring/beans/WithdrawSpecification;", "setWithdrawSpecification", "(Lcom/guochao/faceshow/aaspring/beans/WithdrawSpecification;)V", "Landroidx/recyclerview/widget/RecyclerView$Adapter;", "specificationAdapter", "Landroidx/recyclerview/widget/RecyclerView$Adapter;", "Landroidx/activity/result/ActivityResultLauncher;", "Landroid/content/Intent;", "startActivityLauncher", "Landroidx/activity/result/ActivityResultLauncher;", "<init>", "()V", "app_GooglePlayRelease"}, k = 1, mv = {1, 7, 1})
/* loaded from: classes3.dex */
public final class H5WithdrawalMoneyWebActivity extends BaseActivity {
    public FrameLayout flBlack;
    public RecyclerView recyclerView;
    @NotNull
    private final ActivityResultLauncher<Intent> startActivityLauncher;
    public TextView tvCanBalance;
    public TextView tvTotalBalance;
    @Nullable
    private WithdrawSpecification withdrawSpecification;
    @Nullable
    private List<WithdrawSpecificationList> mList = new ArrayList();
    @NotNull
    private final RecyclerView.Adapter<BaseViewHolder> specificationAdapter = new RecyclerView.Adapter<BaseViewHolder>() { // from class: com.guochao.faceshow.aaspring.modulars.personal.invite.H5WithdrawalMoneyWebActivity$specificationAdapter$1
        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public int getItemCount() {
            List<WithdrawSpecificationList> mList = H5WithdrawalMoneyWebActivity.this.getMList();
            Integer valueOf = mList != null ? Integer.valueOf(mList.size()) : null;
            Intrinsics.checkNotNull(valueOf);
            return valueOf.intValue();
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public void onBindViewHolder(@NotNull BaseViewHolder holder, int i9) {
            Intrinsics.checkNotNullParameter(holder, "holder");
            H5WithdrawalMoneyWebActivity h5WithdrawalMoneyWebActivity = H5WithdrawalMoneyWebActivity.this;
            List<WithdrawSpecificationList> mList = h5WithdrawalMoneyWebActivity.getMList();
            h5WithdrawalMoneyWebActivity.convertItem(holder, i9, mList != null ? mList.get(i9) : null);
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        @NotNull
        public BaseViewHolder onCreateViewHolder(@NotNull ViewGroup parent, int i9) {
            Intrinsics.checkNotNullParameter(parent, "parent");
            return new BaseViewHolder(H5WithdrawalMoneyWebActivity.this.getLayoutInflater().inflate(R.layout.item_withdraw_specification, parent, false));
        }
    };

    public H5WithdrawalMoneyWebActivity() {
        ActivityResultLauncher<Intent> registerForActivityResult = registerForActivityResult(new ActivityResultContracts.StartActivityForResult(), new ActivityResultCallback() { // from class: com.guochao.faceshow.aaspring.modulars.personal.invite.c
            @Override // androidx.activity.result.ActivityResultCallback
            public final void onActivityResult(Object obj) {
                H5WithdrawalMoneyWebActivity.m533startActivityLauncher$lambda6(H5WithdrawalMoneyWebActivity.this, (ActivityResult) obj);
            }
        });
        Intrinsics.checkNotNullExpressionValue(registerForActivityResult, "registerForActivityResul…          }\n            }");
        this.startActivityLauncher = registerForActivityResult;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: convertItem$lambda-5  reason: not valid java name */
    public static final void m531convertItem$lambda5(H5WithdrawalMoneyWebActivity this$0, WithdrawSpecificationList withdrawSpecificationList, View view) {
        String ruleId;
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        WithdrawSpecification withdrawSpecification = this$0.withdrawSpecification;
        Integer num = null;
        String canUseMoney = withdrawSpecification != null ? withdrawSpecification.getCanUseMoney() : null;
        String valueOf = String.valueOf(withdrawSpecificationList != null ? Integer.valueOf(withdrawSpecificationList.getWithdrawMoeny()) : null);
        if (TextUtils.isEmpty(canUseMoney) || TextUtils.isEmpty(valueOf)) {
            return;
        }
        Double valueOf2 = canUseMoney != null ? Double.valueOf(Double.parseDouble(canUseMoney)) : null;
        Intrinsics.checkNotNull(valueOf2);
        if (valueOf2.doubleValue() > Double.parseDouble(valueOf)) {
            Intent intent = new Intent(this$0.getActivity(), WithdrawalNewActivity.class);
            intent.putExtra("money", String.valueOf(withdrawSpecificationList != null ? Integer.valueOf(withdrawSpecificationList.getWithdrawMoeny()) : null));
            if (withdrawSpecificationList != null && (ruleId = withdrawSpecificationList.getRuleId()) != null) {
                num = Integer.valueOf(Integer.parseInt(ruleId));
            }
            intent.putExtra("payMode", num);
            intent.putExtra("inChina", false);
            intent.putExtra("isH5", true);
            this$0.startActivity(intent);
            return;
        }
        this$0.showToast(this$0.getString(R.string.trtc_money_no_enough));
    }

    private final void getWithdrawData() {
        GCRequest bindToLifecycle = new GCRequest("api/token/promotion/invite-earn-money/selectWithdrawSet").bindToLifecycle(this);
        bindToLifecycle.getCallbackHolder().setSuccessClz(WithdrawSpecification.class);
        bindToLifecycle.getCallbackHolder().setSuccess(new Function1<Response<Object>, Unit>() { // from class: com.guochao.faceshow.aaspring.modulars.personal.invite.H5WithdrawalMoneyWebActivity$getWithdrawData$$inlined$success$1
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(Response<Object> response) {
                invoke2(response);
                return Unit.INSTANCE;
            }

            /* renamed from: invoke  reason: avoid collision after fix types in other method */
            public final void invoke2(@NotNull Response<Object> _response) {
                RecyclerView.Adapter adapter;
                List<WithdrawSpecificationList> inviteEarnMoneyRuleSets;
                Intrinsics.checkNotNullParameter(_response, "_response");
                if (_response.getData() != null) {
                    H5WithdrawalMoneyWebActivity.this.setWithdrawSpecification((WithdrawSpecification) _response.getData());
                    WithdrawSpecification withdrawSpecification = (WithdrawSpecification) _response.getData();
                    H5WithdrawalMoneyWebActivity.this.getTvTotalBalance().setText(withdrawSpecification != null ? withdrawSpecification.getInviteMoney() : null);
                    WithdrawSpecification withdrawSpecification2 = (WithdrawSpecification) _response.getData();
                    H5WithdrawalMoneyWebActivity.this.getTvCanBalance().setText(withdrawSpecification2 != null ? withdrawSpecification2.getCanUseMoney() : null);
                    WithdrawSpecification withdrawSpecification3 = (WithdrawSpecification) _response.getData();
                    boolean z10 = false;
                    if (withdrawSpecification3 != null && (inviteEarnMoneyRuleSets = withdrawSpecification3.getInviteEarnMoneyRuleSets()) != null) {
                        Intrinsics.checkNotNullExpressionValue(inviteEarnMoneyRuleSets, "inviteEarnMoneyRuleSets");
                        if (!inviteEarnMoneyRuleSets.isEmpty()) {
                            z10 = true;
                        }
                    }
                    if (z10) {
                        H5WithdrawalMoneyWebActivity h5WithdrawalMoneyWebActivity = H5WithdrawalMoneyWebActivity.this;
                        WithdrawSpecification withdrawSpecification4 = (WithdrawSpecification) _response.getData();
                        h5WithdrawalMoneyWebActivity.setMList(withdrawSpecification4 != null ? withdrawSpecification4.getInviteEarnMoneyRuleSets() : null);
                    }
                }
                adapter = H5WithdrawalMoneyWebActivity.this.specificationAdapter;
                adapter.notifyDataSetChanged();
            }
        });
        bindToLifecycle.getCallbackHolder().setFailClz(WithdrawSpecification.class);
        bindToLifecycle.getCallbackHolder().setFail(new Function1<Response<Object>, Unit>() { // from class: com.guochao.faceshow.aaspring.modulars.personal.invite.H5WithdrawalMoneyWebActivity$getWithdrawData$$inlined$fail$1
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(Response<Object> response) {
                invoke2(response);
                return Unit.INSTANCE;
            }

            /* renamed from: invoke  reason: avoid collision after fix types in other method */
            public final void invoke2(@Nullable Response<Object> response) {
                Intrinsics.checkNotNull(response, "null cannot be cast to non-null type com.guochao.faceshow.aaspring.base.http.v2.Response<T of com.guochao.faceshow.aaspring.base.http.v2.GCRequest.fail?>");
            }
        });
        bindToLifecycle.request();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: initView$lambda-0  reason: not valid java name */
    public static final void m532initView$lambda0(H5WithdrawalMoneyWebActivity this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.finish();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: startActivityLauncher$lambda-6  reason: not valid java name */
    public static final void m533startActivityLauncher$lambda6(H5WithdrawalMoneyWebActivity this$0, ActivityResult activityResult) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        if (activityResult.getResultCode() == -1) {
            this$0.getWithdrawData();
        }
    }

    public final void convertItem(@Nullable BaseViewHolder baseViewHolder, int i9, @Nullable final WithdrawSpecificationList withdrawSpecificationList) {
        if (baseViewHolder == null) {
            return;
        }
        TextView textView = (TextView) baseViewHolder.getView(R.id.tv_cash_coin);
        TextView textView2 = (TextView) baseViewHolder.getView(R.id.first_cash_tip);
        textView2.setText('(' + getString(R.string.invite_first_only) + ')');
        TextView textView3 = (TextView) baseViewHolder.getView(R.id.tv_total_price);
        textView.setText(String.valueOf(withdrawSpecificationList != null ? Integer.valueOf(withdrawSpecificationList.getWithdrawMoeny()) : null));
        FontUtils.setFont(textView3, 3);
        boolean z10 = true;
        TextViewUtils.setCustomBold(R.dimen.text_bold_level_1, textView3);
        if ((withdrawSpecificationList == null || withdrawSpecificationList.getIsOnlyFirst() != 0) ? false : false) {
            textView2.setVisibility(4);
        } else {
            textView2.setVisibility(0);
        }
        StringBuilder sb2 = new StringBuilder();
        sb2.append("$ ");
        sb2.append(withdrawSpecificationList != null ? Integer.valueOf(withdrawSpecificationList.getWithdrawMoeny()) : null);
        textView3.setText(sb2.toString());
        baseViewHolder.itemView.setOnClickListener(new View.OnClickListener() { // from class: com.guochao.faceshow.aaspring.modulars.personal.invite.b
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                H5WithdrawalMoneyWebActivity.m531convertItem$lambda5(H5WithdrawalMoneyWebActivity.this, withdrawSpecificationList, view);
            }
        });
    }

    @Override // com.guochao.faceshow.aaspring.base.activity.BaseActivity
    @NotNull
    public com.guochao.faceshow.aaspring.base.activity.a getActivityConfig() {
        com.guochao.faceshow.aaspring.base.activity.a a10 = new a.C0147a(this).d(false).b(true).a();
        Intrinsics.checkNotNullExpressionValue(a10, "Builder(this).loadMore(f…onStatusBar(true).build()");
        return a10;
    }

    @NotNull
    public final FrameLayout getFlBlack() {
        FrameLayout frameLayout = this.flBlack;
        if (frameLayout != null) {
            return frameLayout;
        }
        Intrinsics.throwUninitializedPropertyAccessException("flBlack");
        return null;
    }

    @Override // com.guochao.faceshow.aaspring.base.activity.BaseActivity
    public int getLayoutId() {
        return R.layout.activity_h5_withdrawal_money;
    }

    @Nullable
    public final List<WithdrawSpecificationList> getMList() {
        return this.mList;
    }

    @NotNull
    public final RecyclerView getRecyclerView() {
        RecyclerView recyclerView = this.recyclerView;
        if (recyclerView != null) {
            return recyclerView;
        }
        Intrinsics.throwUninitializedPropertyAccessException("recyclerView");
        return null;
    }

    @NotNull
    public final TextView getTvCanBalance() {
        TextView textView = this.tvCanBalance;
        if (textView != null) {
            return textView;
        }
        Intrinsics.throwUninitializedPropertyAccessException("tvCanBalance");
        return null;
    }

    @NotNull
    public final TextView getTvTotalBalance() {
        TextView textView = this.tvTotalBalance;
        if (textView != null) {
            return textView;
        }
        Intrinsics.throwUninitializedPropertyAccessException("tvTotalBalance");
        return null;
    }

    @Nullable
    public final WithdrawSpecification getWithdrawSpecification() {
        return this.withdrawSpecification;
    }

    @Override // com.guochao.faceshow.aaspring.base.activity.BaseActivity
    public void initView() {
        View findViewById = findViewById(R.id.fl_black);
        Intrinsics.checkNotNullExpressionValue(findViewById, "findViewById(R.id.fl_black)");
        setFlBlack((FrameLayout) findViewById);
        View findViewById2 = findViewById(R.id.tv_total_balance);
        Intrinsics.checkNotNullExpressionValue(findViewById2, "findViewById(R.id.tv_total_balance)");
        setTvTotalBalance((TextView) findViewById2);
        View findViewById3 = findViewById(R.id.tv_can_balance);
        Intrinsics.checkNotNullExpressionValue(findViewById3, "findViewById(R.id.tv_can_balance)");
        setTvCanBalance((TextView) findViewById3);
        getFlBlack().setOnClickListener(new View.OnClickListener() { // from class: com.guochao.faceshow.aaspring.modulars.personal.invite.a
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                H5WithdrawalMoneyWebActivity.m532initView$lambda0(H5WithdrawalMoneyWebActivity.this, view);
            }
        });
        View findViewById4 = findViewById(R.id.dollar);
        Intrinsics.checkNotNullExpressionValue(findViewById4, "findViewById(R.id.dollar)");
        View findViewById5 = findViewById(R.id.usable_dollar);
        Intrinsics.checkNotNullExpressionValue(findViewById5, "findViewById(R.id.usable_dollar)");
        TextView textView = (TextView) findViewById5;
        FontUtils.setFont((TextView) findViewById4, 3);
        FontUtils.setFont(getTvTotalBalance(), 3);
        View findViewById6 = findViewById(R.id.recycler_view);
        Intrinsics.checkNotNullExpressionValue(findViewById6, "findViewById(R.id.recycler_view)");
        setRecyclerView((RecyclerView) findViewById6);
        getRecyclerView().setLayoutManager(new LinearLayoutManager(getActivity()));
        getRecyclerView().setAdapter(this.specificationAdapter);
    }

    @Override // com.guochao.faceshow.aaspring.base.activity.BaseActivity
    public void loadData() {
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.guochao.faceshow.aaspring.base.activity.BaseActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onResume() {
        super.onResume();
        getWithdrawData();
    }

    public final void setFlBlack(@NotNull FrameLayout frameLayout) {
        Intrinsics.checkNotNullParameter(frameLayout, "<set-?>");
        this.flBlack = frameLayout;
    }

    public final void setMList(@Nullable List<WithdrawSpecificationList> list) {
        this.mList = list;
    }

    public final void setRecyclerView(@NotNull RecyclerView recyclerView) {
        Intrinsics.checkNotNullParameter(recyclerView, "<set-?>");
        this.recyclerView = recyclerView;
    }

    public final void setTvCanBalance(@NotNull TextView textView) {
        Intrinsics.checkNotNullParameter(textView, "<set-?>");
        this.tvCanBalance = textView;
    }

    public final void setTvTotalBalance(@NotNull TextView textView) {
        Intrinsics.checkNotNullParameter(textView, "<set-?>");
        this.tvTotalBalance = textView;
    }

    public final void setWithdrawSpecification(@Nullable WithdrawSpecification withdrawSpecification) {
        this.withdrawSpecification = withdrawSpecification;
    }
}
