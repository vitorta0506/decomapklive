package com.guochao.faceshow.signin.dialog;

import android.text.TextUtils;
import androidx.fragment.app.FragmentActivity;
import androidx.fragment.app.FragmentManager;
import com.guochao.faceshow.aaspring.base.http.v2.Response;
import com.guochao.faceshow.aaspring.modulars.live.model.LotteryResult;
import com.guochao.faceshow.signin.bean.NewUser;
import com.guochao.faceshow.signin.bean.RewardList;
import com.guochao.faceshow.signin.bean.SigninResponse;
import com.guochao.faceshow.signin.dialog.LotteryResultDialog;
import com.guochao.faceshow.utils.LiveRandomGo;
import java.util.List;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Ref;
import kotlinx.coroutines.BuildersKt;
import kotlinx.coroutines.CoroutineDispatcher;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.Dispatchers;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* JADX INFO: Access modifiers changed from: package-private */
@Metadata(bv = {}, d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\u008a@"}, d2 = {"Lkotlinx/coroutines/CoroutineScope;", "", "<anonymous>"}, k = 3, mv = {1, 7, 1})
@DebugMetadata(c = "com.guochao.faceshow.signin.dialog.SignInDialog$initView$3$1", f = "SignInDialog.kt", i = {}, l = {110}, m = "invokeSuspend", n = {}, s = {})
/* loaded from: classes4.dex */
public final class SignInDialog$initView$3$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
    int label;
    final /* synthetic */ SignInDialog this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public SignInDialog$initView$3$1(SignInDialog signInDialog, Continuation<? super SignInDialog$initView$3$1> continuation) {
        super(2, continuation);
        this.this$0 = signInDialog;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @NotNull
    public final Continuation<Unit> create(@Nullable Object obj, @NotNull Continuation<?> continuation) {
        return new SignInDialog$initView$3$1(this.this$0, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    @Nullable
    /* renamed from: invoke  reason: avoid collision after fix types in other method */
    public final Object mo1invoke(@NotNull CoroutineScope coroutineScope, @Nullable Continuation<? super Unit> continuation) {
        return ((SignInDialog$initView$3$1) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        Object coroutine_suspended;
        Integer status;
        FragmentManager supportFragmentManager;
        List<RewardList> luckInfo;
        NewUser newUser;
        NewUser newUser2;
        FragmentManager supportFragmentManager2;
        Function1<SigninResponse, Unit> callBack;
        Integer status2;
        coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i9 = this.label;
        boolean z10 = true;
        if (i9 == 0) {
            ResultKt.throwOnFailure(obj);
            CoroutineDispatcher io2 = Dispatchers.getIO();
            SignInDialog$initView$3$1$response$1 signInDialog$initView$3$1$response$1 = new SignInDialog$initView$3$1$response$1(null);
            this.label = 1;
            obj = BuildersKt.withContext(io2, signInDialog$initView$3$1$response$1, this);
            if (obj == coroutine_suspended) {
                return coroutine_suspended;
            }
        } else if (i9 != 1) {
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        } else {
            ResultKt.throwOnFailure(obj);
        }
        Response response = (Response) obj;
        SigninResponse signinResponse = (SigninResponse) response.getData();
        if ((signinResponse == null || (status2 = signinResponse.getStatus()) == null || status2.intValue() != 2) ? false : true) {
            SigninResponse signinResponse2 = (SigninResponse) response.getData();
            if (signinResponse2 != null && (callBack = this.this$0.getCallBack()) != null) {
                callBack.invoke(signinResponse2);
            }
            FragmentActivity activity = this.this$0.getActivity();
            if (activity != null && (supportFragmentManager2 = activity.getSupportFragmentManager()) != null) {
                this.this$0.dismissAllowingStateLoss();
                SigninResponse signinResponse3 = (SigninResponse) response.getData();
                if (signinResponse3 != null) {
                    SignInResultDialog.Companion.showDialog(supportFragmentManager2, signinResponse3);
                }
            }
            SigninResponse signinResponse4 = (SigninResponse) response.getData();
            if ((signinResponse4 == null || (newUser2 = signinResponse4.getNewUser()) == null || newUser2.isNewUser() != 1) ? false : true) {
                SigninResponse signinResponse5 = (SigninResponse) response.getData();
                if ((signinResponse5 == null || (newUser = signinResponse5.getNewUser()) == null || newUser.getRegDay() != 1) ? false : true) {
                    Ref.IntRef intRef = new Ref.IntRef();
                    SigninResponse signinResponse6 = (SigninResponse) response.getData();
                    if (signinResponse6 != null && (luckInfo = signinResponse6.getLuckInfo()) != null) {
                        for (RewardList rewardList : luckInfo) {
                            Integer prizeType = rewardList.getPrizeType();
                            if (prizeType != null && prizeType.intValue() == 1) {
                                int i10 = intRef.element;
                                Integer prizeNum = rewardList.getPrizeNum();
                                intRef.element = i10 + (prizeNum != null ? prizeNum.intValue() : 0);
                            }
                        }
                    }
                    SigninResponse signinResponse7 = (SigninResponse) response.getData();
                    LotteryResult data = LotteryResult.build(signinResponse7 != null ? signinResponse7.getNewUser() : null);
                    LotteryResult.LotteryResultItem newUserGiftBag = data.getNewUserGiftBag();
                    newUserGiftBag.setRewardDiamond(newUserGiftBag.getRewardDiamond() + intRef.element);
                    try {
                        String rewardDiamond = data.getNewUserGiftBag().getRewardDiamond();
                        Intrinsics.checkNotNullExpressionValue(rewardDiamond, "data.getNewUserGiftBag().getRewardDiamond()");
                        LiveRandomGo.INSTANCE.addRewardDiamond(TextUtils.isEmpty(rewardDiamond) ? 0 : Integer.parseInt(rewardDiamond));
                    } catch (Exception e10) {
                        e10.printStackTrace();
                    }
                    FragmentActivity activity2 = this.this$0.getActivity();
                    if (activity2 != null && (supportFragmentManager = activity2.getSupportFragmentManager()) != null) {
                        LotteryResultDialog.Companion companion = LotteryResultDialog.Companion;
                        Intrinsics.checkNotNullExpressionValue(data, "data");
                        companion.showDialog(supportFragmentManager, data);
                    }
                }
            }
        }
        SigninResponse signinResponse8 = (SigninResponse) response.getData();
        if ((signinResponse8 == null || (status = signinResponse8.getStatus()) == null || status.intValue() != -1) ? false : false) {
            this.this$0.dismissAllowingStateLoss();
        }
        return Unit.INSTANCE;
    }
}
