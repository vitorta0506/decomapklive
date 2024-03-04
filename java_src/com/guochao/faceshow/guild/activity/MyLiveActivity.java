package com.guochao.faceshow.guild.activity;

import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import android.widget.TextView;
import androidx.core.content.ContextCompat;
import androidx.lifecycle.Observer;
import androidx.lifecycle.ViewModelProvider;
import androidx.lifecycle.ViewModelStoreOwner;
import com.alibaba.android.arouter.facade.annotation.Route;
import com.facebook.devicerequests.internal.DeviceRequestsHelper;
import com.guochao.faceshow.aaspring.base.mvvm.activity.GCBaseMvvmActivity;
import com.guochao.faceshow.aaspring.base.mvvm.annotations.GCViewBinding;
import com.guochao.faceshow.aaspring.base.mvvm.model.BaseModel;
import com.guochao.faceshow.aaspring.base.mvvm.viewmodel.BaseViewModel;
import com.guochao.faceshow.aaspring.base.navigator.ARouterNavigator;
import com.guochao.faceshow.aaspring.base.navigator.RouterPath;
import com.guochao.faceshow.aaspring.utils.LogUtils;
import com.guochao.faceshow.guild.R$string;
import com.guochao.faceshow.guild.bean.ContractHistoryBean;
import com.guochao.faceshow.guild.bean.LiveStaticBean;
import com.guochao.faceshow.guild.databinding.ActivityMyLiveBinding;
import com.guochao.faceshow.guild.viewmodel.MyLiveViewModel;
import com.guochao.lib_base.R$color;
import com.huawei.hms.support.api.entity.core.CommonCode;
import java.util.Objects;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.LazyThreadSafetyMode;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Route(name = "我的直播首页", path = RouterPath.ROUTER_GUILD_MY_LIVE_ACTIVITY)
@Metadata(d1 = {"\u0000>\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u000b\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0007\u0018\u0000 !2\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001:\u0001!B\u0005¢\u0006\u0002\u0010\u0004J\u0012\u0010\u0015\u001a\u00020\u00162\b\u0010\u0017\u001a\u0004\u0018\u00010\u0018H\u0016J\u0012\u0010\u0019\u001a\u00020\u00162\b\u0010\u001a\u001a\u0004\u0018\u00010\u0002H\u0016J\u0012\u0010\u001b\u001a\u00020\u00162\b\u0010\u001c\u001a\u0004\u0018\u00010\u001dH\u0014J\b\u0010\u001e\u001a\u00020\u0016H\u0014J\b\u0010\u001f\u001a\u00020\u0016H\u0002J\u0006\u0010 \u001a\u00020\u0016R\u0010\u0010\u0005\u001a\u0004\u0018\u00010\u0006X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\bX\u0082\u000e¢\u0006\u0002\n\u0000R$\u0010\t\u001a\u00020\n8\u0006@\u0006X\u0087.¢\u0006\u0014\n\u0000\u0012\u0004\b\u000b\u0010\u0004\u001a\u0004\b\f\u0010\r\"\u0004\b\u000e\u0010\u000fR\u001b\u0010\u0010\u001a\u00020\u00038VX\u0096\u0084\u0002¢\u0006\f\n\u0004\b\u0013\u0010\u0014\u001a\u0004\b\u0011\u0010\u0012¨\u0006\""}, d2 = {"Lcom/guochao/faceshow/guild/activity/MyLiveActivity;", "Lcom/guochao/faceshow/aaspring/base/mvvm/activity/GCBaseMvvmActivity;", "Lcom/guochao/faceshow/aaspring/base/mvvm/model/BaseModel;", "Lcom/guochao/faceshow/guild/viewmodel/MyLiveViewModel;", "()V", "guildId", "", "type", "", "viewBinding", "Lcom/guochao/faceshow/guild/databinding/ActivityMyLiveBinding;", "getViewBinding$annotations", "getViewBinding", "()Lcom/guochao/faceshow/guild/databinding/ActivityMyLiveBinding;", "setViewBinding", "(Lcom/guochao/faceshow/guild/databinding/ActivityMyLiveBinding;)V", "viewModel", "getViewModel", "()Lcom/guochao/faceshow/guild/viewmodel/MyLiveViewModel;", "viewModel$delegate", "Lkotlin/Lazy;", "initView", "", "savedInstanceSate", "Landroid/os/Bundle;", "onModelUpdate", DeviceRequestsHelper.DEVICE_INFO_MODEL, "onNewIntent", CommonCode.Resolution.HAS_RESOLUTION_FROM_APK, "Landroid/content/Intent;", "onRestart", "setLiveDataObserve", "setOnclickListener", "Companion", "component_guild_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
/* loaded from: classes4.dex */
public final class MyLiveActivity extends GCBaseMvvmActivity<BaseModel, MyLiveViewModel> {
    @NotNull
    public static final Companion Companion = new Companion(null);
    private static final int TYPE_DAY = 0;
    private static final int TYPE_MONTH = 1;
    @Nullable
    private String guildId;
    private int type;
    public ActivityMyLiveBinding viewBinding;
    @NotNull
    private final Lazy viewModel$delegate = LazyKt.lazy(LazyThreadSafetyMode.NONE, (Function0) new Function0<MyLiveViewModel>() { // from class: com.guochao.faceshow.guild.activity.MyLiveActivity$special$$inlined$lazyViewModel$default$1
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        {
            super(0);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // kotlin.jvm.functions.Function0
        @NotNull
        public final MyLiveViewModel invoke() {
            BaseViewModel baseViewModel;
            ViewModelStoreOwner viewModelStoreOwner = ViewModelStoreOwner.this;
            String str = r2;
            ViewModelProvider.Factory factory = r3;
            ViewModelProvider viewModelProvider = factory == null ? new ViewModelProvider(viewModelStoreOwner) : new ViewModelProvider(viewModelStoreOwner, factory);
            if (str != null) {
                baseViewModel = (BaseViewModel) viewModelProvider.get(str, MyLiveViewModel.class);
            } else {
                baseViewModel = (BaseViewModel) viewModelProvider.get(MyLiveViewModel.class);
            }
            Objects.requireNonNull(baseViewModel, "null cannot be cast to non-null type com.guochao.faceshow.guild.viewmodel.MyLiveViewModel");
            return (MyLiveViewModel) baseViewModel;
        }
    });

    @Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000¨\u0006\u0006"}, d2 = {"Lcom/guochao/faceshow/guild/activity/MyLiveActivity$Companion;", "", "()V", "TYPE_DAY", "", "TYPE_MONTH", "component_guild_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
    /* loaded from: classes4.dex */
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }
    }

    @GCViewBinding
    public static /* synthetic */ void getViewBinding$annotations() {
    }

    private final void setLiveDataObserve() {
        final ActivityMyLiveBinding viewBinding = getViewBinding();
        getViewModel().getLiveStaticLiveData().observe(this, new Observer() { // from class: com.guochao.faceshow.guild.activity.s0
            @Override // androidx.lifecycle.Observer
            public final void onChanged(Object obj) {
                MyLiveActivity.m724setLiveDataObserve$lambda3(MyLiveActivity.this, viewBinding, (LiveStaticBean) obj);
            }
        });
        getViewModel().getContractHistoryLiveData().observe(this, new Observer() { // from class: com.guochao.faceshow.guild.activity.r0
            @Override // androidx.lifecycle.Observer
            public final void onChanged(Object obj) {
                MyLiveActivity.m723setLiveDataObserve$lambda11(MyLiveActivity.this, (ContractHistoryBean) obj);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: setLiveDataObserve$lambda-11  reason: not valid java name */
    public static final void m723setLiveDataObserve$lambda11(MyLiveActivity this$0, ContractHistoryBean contractHistoryBean) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        boolean z10 = false;
        if (contractHistoryBean == null) {
            String str = this$0.guildId;
            if ((str == null || str.length() == 0) ? true : true) {
                this$0.startActivity(new Intent(this$0, ContractActivity.class));
                return;
            }
            Intent intent = new Intent(this$0, InputGuildIdActivity.class);
            intent.putExtra("guildId", this$0.guildId);
            this$0.startActivity(intent);
            this$0.guildId = null;
            return;
        }
        String str2 = this$0.guildId;
        if ((str2 == null || str2.length() == 0) ? true : true) {
            if (contractHistoryBean.getState() == 3 && contractHistoryBean.getStatus() == 11) {
                this$0.startActivity(new Intent(this$0, ContractActivity.class));
                return;
            }
            Intent intent2 = new Intent(this$0, ContractResultActivity.class);
            intent2.putExtra("obj", contractHistoryBean);
            this$0.startActivity(intent2);
        } else if (contractHistoryBean.getState() != 3 && contractHistoryBean.getState() != 5) {
            this$0.startActivity(new Intent(this$0, ContractResultActivity.class));
        } else if (contractHistoryBean.getPeriodDay() <= 0) {
            Intent intent3 = new Intent(this$0, InputGuildIdActivity.class);
            intent3.putExtra("guildId", this$0.guildId);
            this$0.startActivity(intent3);
            this$0.guildId = null;
        } else {
            this$0.startActivity(new Intent(this$0, ContractResultActivity.class));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: setLiveDataObserve$lambda-3  reason: not valid java name */
    public static final void m724setLiveDataObserve$lambda3(MyLiveActivity this$0, ActivityMyLiveBinding viewBinding, LiveStaticBean liveStaticBean) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(viewBinding, "$viewBinding");
        if (this$0.type == 0) {
            if (liveStaticBean.getInTotalMoney() == null) {
                viewBinding.layoutEarnings.setVisibility(8);
            } else {
                viewBinding.liveEarnings.setText(String.valueOf(liveStaticBean.getInTotalMoney()));
                viewBinding.layoutEarnings.setVisibility(0);
            }
            if (liveStaticBean.getDuration() != null) {
                viewBinding.liveDays.setText(va.c.a(liveStaticBean.getDuration(), 2));
                viewBinding.line1.setVisibility(0);
                viewBinding.liveDaysLayout.setVisibility(0);
            } else {
                viewBinding.line1.setVisibility(8);
                viewBinding.liveDaysLayout.setVisibility(8);
            }
            if (liveStaticBean.getNums() != null) {
                viewBinding.line2.setVisibility(0);
                viewBinding.watchNumberArea.setVisibility(0);
                viewBinding.watchNumber.setText(String.valueOf(liveStaticBean.getNums()));
            } else {
                viewBinding.line2.setVisibility(8);
                viewBinding.watchNumberArea.setVisibility(8);
            }
            if (liveStaticBean.getDuration() != null && liveStaticBean.getDurationDay() != null) {
                viewBinding.popularity.setText(R$string.live_hour);
                viewBinding.watchNumber.setText(va.c.a(liveStaticBean.getDuration(), 2));
                viewBinding.watchNumberArea.setVisibility(0);
                TextView textView = viewBinding.liveDays;
                Integer durationDay = liveStaticBean.getDurationDay();
                textView.setText(String.valueOf(durationDay != null ? durationDay.intValue() : 0));
                viewBinding.line1.setVisibility(0);
                viewBinding.liveDaysLayout.setVisibility(0);
            } else {
                viewBinding.popularity.setText(R$string.watch_popularity);
            }
            this$0.type = 1;
            this$0.getViewModel().getStatic(this$0.type);
            return;
        }
        if (liveStaticBean.getInTotalMoney() == null) {
            viewBinding.liveEarningsMonth.setText("--");
        } else {
            viewBinding.liveEarningsMonth.setText(String.valueOf(liveStaticBean.getInTotalMoney()));
        }
        if (liveStaticBean.getDurationDay() != null) {
            viewBinding.liveDaysMonth.setText(va.c.b(liveStaticBean.getDurationDay(), 2));
            viewBinding.line3.setVisibility(0);
            viewBinding.layMonthDatas.setVisibility(0);
        } else {
            viewBinding.line3.setVisibility(8);
            viewBinding.layMonthDatas.setVisibility(8);
        }
        if (liveStaticBean.getDuration() != null) {
            viewBinding.liveMonthTime.setText(va.c.a(liveStaticBean.getDuration(), 2));
            viewBinding.line4.setVisibility(0);
            viewBinding.liveMonthLayout.setVisibility(0);
        } else {
            viewBinding.line4.setVisibility(8);
            viewBinding.liveMonthLayout.setVisibility(8);
        }
        if (liveStaticBean.getDuration() == null || liveStaticBean.getDurationDay() == null) {
            return;
        }
        TextView textView2 = viewBinding.liveDaysMonth;
        Integer durationDay2 = liveStaticBean.getDurationDay();
        textView2.setText(String.valueOf(durationDay2 != null ? durationDay2.intValue() : 0));
        viewBinding.line3.setVisibility(0);
        viewBinding.layMonthDatas.setVisibility(0);
        viewBinding.line4.setVisibility(0);
        TextView textView3 = viewBinding.liveMonthTime;
        Number duration = liveStaticBean.getDuration();
        if (duration == null) {
            duration = 0;
        }
        textView3.setText(duration.toString());
        viewBinding.liveMonthLayout.setVisibility(0);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: setOnclickListener$lambda-14$lambda-12  reason: not valid java name */
    public static final void m725setOnclickListener$lambda14$lambda12(MyLiveActivity this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        if (va.b.a(view)) {
            new ARouterNavigator(this$0, RouterPath.ROUTER_APP_MY_LIVE_VIDEO_ACTIVITY).go();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: setOnclickListener$lambda-14$lambda-13  reason: not valid java name */
    public static final void m726setOnclickListener$lambda14$lambda13(MyLiveActivity this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        if (va.b.a(view)) {
            this$0.getViewModel().checkSignState();
        }
    }

    @NotNull
    public final ActivityMyLiveBinding getViewBinding() {
        ActivityMyLiveBinding activityMyLiveBinding = this.viewBinding;
        if (activityMyLiveBinding != null) {
            return activityMyLiveBinding;
        }
        Intrinsics.throwUninitializedPropertyAccessException("viewBinding");
        return null;
    }

    @Override // com.guochao.faceshow.aaspring.base.mvvm.activity.GCCoreActivity
    public void initView(@Nullable Bundle bundle) {
        String string;
        setTitle(R$string.my_live_broadcast);
        getViewModel().getPeriodNumLiveData();
        ActivityMyLiveBinding viewBinding = getViewBinding();
        viewBinding.titleBar.gcToolBar.setBackground(ContextCompat.getDrawable(getApplicationContext(), R$color.white));
        viewBinding.titleBar.gcToolBar.setTitleTextColor(ContextCompat.getColor(getApplicationContext(), R$color.color_ugc_text_level_1));
        setStatusBarTextBlack(true);
        setOnclickListener();
        setLiveDataObserve();
        Bundle extras = getIntent().getExtras();
        if (extras != null && (string = extras.getString("groupId")) != null) {
            this.guildId = string;
            getViewModel().checkSignState();
        }
        getViewModel().getStatic(this.type);
        LogUtils.d("MyLive::", "initView");
    }

    @Override // com.guochao.faceshow.aaspring.base.mvvm.viewmodel.BaseViewModel.ModelUpdateObserver
    public void onModelUpdate(@Nullable BaseModel baseModel) {
    }

    @Override // androidx.fragment.app.FragmentActivity, android.app.Activity
    protected void onNewIntent(@Nullable Intent intent) {
        Bundle extras;
        String string;
        super.onNewIntent(intent);
        setIntent(intent);
        if (intent != null && (extras = intent.getExtras()) != null && (string = extras.getString("groupId")) != null) {
            this.guildId = string;
            getViewModel().checkSignState();
        }
        getViewModel().getStatic(this.type);
        LogUtils.d("MyLive::", "onNewIntent");
    }

    @Override // android.app.Activity
    protected void onRestart() {
        super.onRestart();
        LogUtils.d("MyLive::", "onRestart");
        getViewModel().getStatic(this.type);
    }

    public final void setOnclickListener() {
        ActivityMyLiveBinding viewBinding = getViewBinding();
        viewBinding.liveDetail.setOnClickListener(new View.OnClickListener() { // from class: com.guochao.faceshow.guild.activity.p0
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                MyLiveActivity.m725setOnclickListener$lambda14$lambda12(MyLiveActivity.this, view);
            }
        });
        viewBinding.signing.setOnClickListener(new View.OnClickListener() { // from class: com.guochao.faceshow.guild.activity.q0
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                MyLiveActivity.m726setOnclickListener$lambda14$lambda13(MyLiveActivity.this, view);
            }
        });
    }

    public final void setViewBinding(@NotNull ActivityMyLiveBinding activityMyLiveBinding) {
        Intrinsics.checkNotNullParameter(activityMyLiveBinding, "<set-?>");
        this.viewBinding = activityMyLiveBinding;
    }

    @Override // com.guochao.faceshow.aaspring.base.mvvm.activity.GCBaseMvvmActivity
    @NotNull
    public MyLiveViewModel getViewModel() {
        return (MyLiveViewModel) this.viewModel$delegate.getValue();
    }
}
