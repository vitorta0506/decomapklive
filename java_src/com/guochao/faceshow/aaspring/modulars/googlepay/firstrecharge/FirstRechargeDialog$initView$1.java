package com.guochao.faceshow.aaspring.modulars.googlepay.firstrecharge;

import android.app.Activity;
import android.app.Dialog;
import android.content.DialogInterface;
import android.os.Bundle;
import android.view.KeyEvent;
import android.view.View;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.fragment.app.FragmentActivity;
import com.guochao.faceshow.BaseApplication;
import com.guochao.faceshow.R;
import com.guochao.faceshow.aaspring.base.http.v2.Response;
import com.guochao.faceshow.aaspring.base.mvvm.activity.GCCoreActivity;
import com.guochao.faceshow.aaspring.modulars.live.activity.WatchLiveRoomActivity;
import com.guochao.faceshow.aaspring.modulars.live.common.x;
import com.guochao.faceshow.aaspring.utils.EventTrackingV2Utils;
import com.guochao.faceshow.aaspring.utils.FontUtils;
import com.guochao.faceshow.aaspring.utils.ToastUtils;
import com.guochao.faceshow.signin.SigninManager;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.BuildersKt;
import kotlinx.coroutines.CoroutineDispatcher;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.Dispatchers;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(bv = {}, d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\u008a@"}, d2 = {"Lkotlinx/coroutines/CoroutineScope;", "", "<anonymous>"}, k = 3, mv = {1, 7, 1})
@DebugMetadata(c = "com.guochao.faceshow.aaspring.modulars.googlepay.firstrecharge.FirstRechargeDialog$initView$1", f = "FirstRechargeDialog.kt", i = {}, l = {121}, m = "invokeSuspend", n = {}, s = {})
/* loaded from: classes3.dex */
final class FirstRechargeDialog$initView$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
    int label;
    final /* synthetic */ FirstRechargeDialog this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public FirstRechargeDialog$initView$1(FirstRechargeDialog firstRechargeDialog, Continuation<? super FirstRechargeDialog$initView$1> continuation) {
        super(2, continuation);
        this.this$0 = firstRechargeDialog;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: invokeSuspend$lambda-0  reason: not valid java name */
    public static final void m418invokeSuspend$lambda0(FirstRechargeDialog firstRechargeDialog, View view) {
        int time;
        firstRechargeDialog.setRechargeClickTIme(System.currentTimeMillis());
        EventTrackingV2Utils eventTrackingV2Utils = EventTrackingV2Utils.INSTANCE;
        time = firstRechargeDialog.getTime(System.currentTimeMillis() - firstRechargeDialog.getShowTime());
        eventTrackingV2Utils.track(EventTrackingV2Utils.first_charge_success_time1, String.valueOf(time));
        eventTrackingV2Utils.track(EventTrackingV2Utils.first_charge_charge_click, String.valueOf(firstRechargeDialog.getMType()));
        if (!firstRechargeDialog.getMGoogleEnable()) {
            ToastUtils.debug("谷歌尚未连接成功");
            return;
        }
        eventTrackingV2Utils.track(EventTrackingV2Utils.first_charge_goole_payment_specifications);
        if (firstRechargeDialog.getActivity() instanceof WatchLiveRoomActivity) {
            com.guochao.faceshow.aaspring.modulars.googlepay.d Z = com.guochao.faceshow.aaspring.modulars.googlepay.d.Z();
            FragmentActivity activity = firstRechargeDialog.getActivity();
            Intrinsics.checkNotNull(activity, "null cannot be cast to non-null type com.guochao.faceshow.aaspring.modulars.live.activity.WatchLiveRoomActivity");
            Z.B0("facecast1", 0, 1, com.guochao.faceshow.aaspring.modulars.googlepay.d.X(((WatchLiveRoomActivity) activity).e0().getCurrentLiveRoom().getBroadCasterUserId()));
            return;
        }
        com.guochao.faceshow.aaspring.modulars.googlepay.d.Z().A0("facecast1", 0, 1);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @NotNull
    public final Continuation<Unit> create(@Nullable Object obj, @NotNull Continuation<?> continuation) {
        return new FirstRechargeDialog$initView$1(this.this$0, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    @Nullable
    /* renamed from: invoke  reason: avoid collision after fix types in other method */
    public final Object mo1invoke(@NotNull CoroutineScope coroutineScope, @Nullable Continuation<? super Unit> continuation) {
        return ((FirstRechargeDialog$initView$1) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        Object coroutine_suspended;
        coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i9 = this.label;
        if (i9 == 0) {
            ResultKt.throwOnFailure(obj);
            CoroutineDispatcher io2 = Dispatchers.getIO();
            FirstRechargeDialog$initView$1$response$1 firstRechargeDialog$initView$1$response$1 = new FirstRechargeDialog$initView$1$response$1(null);
            this.label = 1;
            obj = BuildersKt.withContext(io2, firstRechargeDialog$initView$1$response$1, this);
            if (obj == coroutine_suspended) {
                return coroutine_suspended;
            }
        } else if (i9 != 1) {
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        } else {
            ResultKt.throwOnFailure(obj);
        }
        Response response = (Response) obj;
        Activity currTopActivity = BaseApplication.getInstance().getCurrTopActivity();
        if (currTopActivity instanceof GCCoreActivity) {
            ((GCCoreActivity) currTopActivity).dismissLoading();
        }
        this.this$0.getViewBinding().rootView.setVisibility(0);
        this.this$0.setShowTime(System.currentTimeMillis());
        this.this$0.getViewBinding().primaryTitle.setText(this.this$0.getString(R.string.first_recharge_primary_title));
        FontUtils.setFont(this.this$0.getViewBinding().primaryTitle, 5, 1);
        this.this$0.refreshData(response);
        FirstRechargeDialog firstRechargeDialog = this.this$0;
        Bundle arguments = firstRechargeDialog.getArguments();
        firstRechargeDialog.setMType(arguments != null ? arguments.getInt("type", 0) : 0);
        EventTrackingV2Utils eventTrackingV2Utils = EventTrackingV2Utils.INSTANCE;
        eventTrackingV2Utils.track(EventTrackingV2Utils.first_charge_dialog_show, String.valueOf(this.this$0.getMType()));
        switch (this.this$0.getMType()) {
            case 2:
                eventTrackingV2Utils.track(EventTrackingV2Utils.first_charge_Icon_click, "1");
                break;
            case 3:
                eventTrackingV2Utils.track(EventTrackingV2Utils.first_charge_Icon_click, "2");
                break;
            case 4:
            case 5:
            case 6:
            case 7:
            case 8:
                eventTrackingV2Utils.track(EventTrackingV2Utils.first_charge_gift_icon_click);
                break;
            case 10:
                eventTrackingV2Utils.track(EventTrackingV2Utils.first_charge_Icon_click, "3");
                break;
        }
        FirstRechargeDialog firstRechargeDialog2 = this.this$0;
        Bundle arguments2 = firstRechargeDialog2.getArguments();
        firstRechargeDialog2.setMDescX(arguments2 != null ? arguments2.getIntegerArrayList(x.f19108w) : null);
        FirstRechargeDialog firstRechargeDialog3 = this.this$0;
        Bundle arguments3 = firstRechargeDialog3.getArguments();
        firstRechargeDialog3.setMDescY(arguments3 != null ? arguments3.getIntegerArrayList("y") : null);
        com.guochao.faceshow.aaspring.modulars.googlepay.d.Z().u0(this.this$0);
        SigninManager.INSTANCE.registerRechargeListener(this.this$0);
        com.guochao.faceshow.aaspring.modulars.googlepay.d.Z().z0(false, 0);
        TextView textView = this.this$0.getViewBinding().tvRechargeBtn;
        textView.setText(this.this$0.getString(R.string.charge) + " USD 0.99");
        TextView textView2 = this.this$0.getViewBinding().tvRechargeBtn;
        final FirstRechargeDialog firstRechargeDialog4 = this.this$0;
        textView2.setOnClickListener(new View.OnClickListener() { // from class: com.guochao.faceshow.aaspring.modulars.googlepay.firstrecharge.c
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                FirstRechargeDialog$initView$1.m418invokeSuspend$lambda0(FirstRechargeDialog.this, view);
            }
        });
        ImageView imageView = this.this$0.getViewBinding().ivClose;
        final FirstRechargeDialog firstRechargeDialog5 = this.this$0;
        imageView.setOnClickListener(new View.OnClickListener() { // from class: com.guochao.faceshow.aaspring.modulars.googlepay.firstrecharge.d
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                FirstRechargeDialog.this.dismissAllowingStateLoss();
            }
        });
        Dialog dialog = this.this$0.getDialog();
        if (dialog != null) {
            final FirstRechargeDialog firstRechargeDialog6 = this.this$0;
            dialog.setOnKeyListener(new DialogInterface.OnKeyListener() { // from class: com.guochao.faceshow.aaspring.modulars.googlepay.firstrecharge.FirstRechargeDialog$initView$1.3
                @Override // android.content.DialogInterface.OnKeyListener
                public boolean onKey(@Nullable DialogInterface dialogInterface, int i10, @Nullable KeyEvent keyEvent) {
                    if (i10 == 4) {
                        FirstRechargeDialog.this.dismissAllowingStateLoss();
                        return true;
                    }
                    return false;
                }
            });
        }
        return Unit.INSTANCE;
    }
}
