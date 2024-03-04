package com.guochao.faceshow.signin.dialog;

import com.guochao.faceshow.aaspring.base.http.v2.Response;
import com.guochao.faceshow.signin.bean.GrowTaskBean;
import com.guochao.faceshow.signin.bean.SigninResponse;
import java.util.List;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.BuildersKt;
import kotlinx.coroutines.CoroutineDispatcher;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.Dispatchers;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(bv = {}, d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\u008a@"}, d2 = {"Lkotlinx/coroutines/CoroutineScope;", "", "<anonymous>"}, k = 3, mv = {1, 7, 1})
@DebugMetadata(c = "com.guochao.faceshow.signin.dialog.SignInResultDialog$initView$3", f = "SignInResultDialog.kt", i = {}, l = {107}, m = "invokeSuspend", n = {}, s = {})
/* loaded from: classes4.dex */
final class SignInResultDialog$initView$3 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
    final /* synthetic */ SigninResponse $signinBean;
    int label;
    final /* synthetic */ SignInResultDialog this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public SignInResultDialog$initView$3(SignInResultDialog signInResultDialog, SigninResponse signinResponse, Continuation<? super SignInResultDialog$initView$3> continuation) {
        super(2, continuation);
        this.this$0 = signInResultDialog;
        this.$signinBean = signinResponse;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @NotNull
    public final Continuation<Unit> create(@Nullable Object obj, @NotNull Continuation<?> continuation) {
        return new SignInResultDialog$initView$3(this.this$0, this.$signinBean, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    @Nullable
    /* renamed from: invoke  reason: avoid collision after fix types in other method */
    public final Object mo1invoke(@NotNull CoroutineScope coroutineScope, @Nullable Continuation<? super Unit> continuation) {
        return ((SignInResultDialog$initView$3) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
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
            SignInResultDialog$initView$3$response$1 signInResultDialog$initView$3$response$1 = new SignInResultDialog$initView$3$response$1(null);
            this.label = 1;
            obj = BuildersKt.withContext(io2, signInResultDialog$initView$3$response$1, this);
            if (obj == coroutine_suspended) {
                return coroutine_suspended;
            }
        } else if (i9 != 1) {
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        } else {
            ResultKt.throwOnFailure(obj);
        }
        List list = (List) ((Response) obj).getData();
        if (list != null) {
            SignInResultDialog signInResultDialog = this.this$0;
            SigninResponse signinResponse = this.$signinBean;
            if (list.size() > 0) {
                signInResultDialog.growTaskBean = (GrowTaskBean) list.get(0);
                signInResultDialog.refreshData(signinResponse);
            }
        }
        return Unit.INSTANCE;
    }
}
