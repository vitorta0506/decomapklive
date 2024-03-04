package com.guochao.faceshow.signin;

import androidx.fragment.app.FragmentActivity;
import androidx.fragment.app.FragmentManager;
import com.guochao.faceshow.aaspring.base.http.v2.Response;
import com.guochao.faceshow.signin.bean.SigninBean;
import com.guochao.faceshow.signin.bean.SigninResponse;
import com.guochao.faceshow.signin.dialog.SignInDialog;
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
import kotlinx.coroutines.BuildersKt__Builders_commonKt;
import kotlinx.coroutines.CoroutineDispatcher;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.CoroutineScopeKt;
import kotlinx.coroutines.Dispatchers;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* JADX INFO: Access modifiers changed from: package-private */
@Metadata(bv = {}, d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\u008a@"}, d2 = {"Lkotlinx/coroutines/CoroutineScope;", "", "<anonymous>"}, k = 3, mv = {1, 7, 1})
@DebugMetadata(c = "com.guochao.faceshow.signin.SigninManager$checkSignInTask$1", f = "SigninManager.kt", i = {}, l = {37}, m = "invokeSuspend", n = {}, s = {})
/* loaded from: classes4.dex */
public final class SigninManager$checkSignInTask$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
    final /* synthetic */ FragmentActivity $activity;
    final /* synthetic */ Function1<SigninResponse, Unit> $callBack;
    final /* synthetic */ Ref.ObjectRef<Response<SigninResponse>> $signResponse;
    int label;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    public SigninManager$checkSignInTask$1(FragmentActivity fragmentActivity, Function1<? super SigninResponse, Unit> function1, Ref.ObjectRef<Response<SigninResponse>> objectRef, Continuation<? super SigninManager$checkSignInTask$1> continuation) {
        super(2, continuation);
        this.$activity = fragmentActivity;
        this.$callBack = function1;
        this.$signResponse = objectRef;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @NotNull
    public final Continuation<Unit> create(@Nullable Object obj, @NotNull Continuation<?> continuation) {
        return new SigninManager$checkSignInTask$1(this.$activity, this.$callBack, this.$signResponse, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    @Nullable
    /* renamed from: invoke  reason: avoid collision after fix types in other method */
    public final Object mo1invoke(@NotNull CoroutineScope coroutineScope, @Nullable Continuation<? super Unit> continuation) {
        return ((SigninManager$checkSignInTask$1) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        Object coroutine_suspended;
        Integer daySign;
        coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i9 = this.label;
        if (i9 == 0) {
            ResultKt.throwOnFailure(obj);
            CoroutineDispatcher io2 = Dispatchers.getIO();
            SigninManager$checkSignInTask$1$response$1 signinManager$checkSignInTask$1$response$1 = new SigninManager$checkSignInTask$1$response$1(null);
            this.label = 1;
            obj = BuildersKt.withContext(io2, signinManager$checkSignInTask$1$response$1, this);
            if (obj == coroutine_suspended) {
                return coroutine_suspended;
            }
        } else if (i9 != 1) {
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        } else {
            ResultKt.throwOnFailure(obj);
        }
        SigninBean signinBean = (SigninBean) ((Response) obj).getData();
        if (signinBean != null) {
            FragmentActivity fragmentActivity = this.$activity;
            Function1<SigninResponse, Unit> function1 = this.$callBack;
            Ref.ObjectRef<Response<SigninResponse>> objectRef = this.$signResponse;
            Integer dayFlag = signinBean.getDayFlag();
            if (dayFlag != null && dayFlag.intValue() == 1) {
                return Unit.INSTANCE;
            }
            Integer regDays = signinBean.getRegDays();
            if (regDays != null && regDays.intValue() == 1 && (daySign = signinBean.getDaySign()) != null && daySign.intValue() == 0) {
                BuildersKt__Builders_commonKt.launch$default(CoroutineScopeKt.MainScope(), Dispatchers.getMain(), null, new SigninManager$checkSignInTask$1$1$1(objectRef, fragmentActivity, null), 2, null);
                return Unit.INSTANCE;
            }
            SignInDialog.Companion companion = SignInDialog.Companion;
            FragmentManager supportFragmentManager = fragmentActivity.getSupportFragmentManager();
            Intrinsics.checkNotNullExpressionValue(supportFragmentManager, "activity.supportFragmentManager");
            SignInDialog showDialog = companion.showDialog(supportFragmentManager, signinBean);
            if (showDialog != null) {
                showDialog.setCallBack(function1);
            }
        }
        return Unit.INSTANCE;
    }
}
