package com.guochao.faceshow.signin;

import android.text.TextUtils;
import androidx.fragment.app.FragmentActivity;
import androidx.fragment.app.FragmentManager;
import com.guochao.faceshow.aaspring.base.http.v2.GCRequest;
import com.guochao.faceshow.aaspring.base.http.v2.Requester;
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
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Ref;
import kotlinx.coroutines.BuildersKt;
import kotlinx.coroutines.CoroutineDispatcher;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.Dispatchers;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(bv = {}, d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\u008a@"}, d2 = {"Lkotlinx/coroutines/CoroutineScope;", "", "<anonymous>"}, k = 3, mv = {1, 7, 1})
@DebugMetadata(c = "com.guochao.faceshow.signin.SigninManager$checkSignInTask$1$1$1", f = "SigninManager.kt", i = {}, l = {49}, m = "invokeSuspend", n = {}, s = {})
/* loaded from: classes4.dex */
final class SigninManager$checkSignInTask$1$1$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
    final /* synthetic */ FragmentActivity $activity;
    final /* synthetic */ Ref.ObjectRef<Response<SigninResponse>> $signResponse;
    Object L$0;
    int label;

    /* JADX INFO: Access modifiers changed from: package-private */
    @Metadata(bv = {}, d1 = {"\u0000\u000e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u0010\u0003\u001a\n\u0012\u0004\u0012\u00020\u0002\u0018\u00010\u0001*\u00020\u0000H\u008a@"}, d2 = {"Lkotlinx/coroutines/CoroutineScope;", "Lcom/guochao/faceshow/aaspring/base/http/v2/Response;", "Lcom/guochao/faceshow/signin/bean/SigninResponse;", "<anonymous>"}, k = 3, mv = {1, 7, 1})
    @DebugMetadata(c = "com.guochao.faceshow.signin.SigninManager$checkSignInTask$1$1$1$1", f = "SigninManager.kt", i = {}, l = {}, m = "invokeSuspend", n = {}, s = {})
    /* renamed from: com.guochao.faceshow.signin.SigninManager$checkSignInTask$1$1$1$1  reason: invalid class name */
    /* loaded from: classes4.dex */
    public static final class AnonymousClass1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Response<SigninResponse>>, Object> {
        final /* synthetic */ Ref.ObjectRef<Response<SigninResponse>> $signResponse;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        AnonymousClass1(Ref.ObjectRef<Response<SigninResponse>> objectRef, Continuation<? super AnonymousClass1> continuation) {
            super(2, continuation);
            this.$signResponse = objectRef;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @NotNull
        public final Continuation<Unit> create(@Nullable Object obj, @NotNull Continuation<?> continuation) {
            return new AnonymousClass1(this.$signResponse, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        @Nullable
        /* renamed from: invoke  reason: avoid collision after fix types in other method */
        public final Object mo1invoke(@NotNull CoroutineScope coroutineScope, @Nullable Continuation<? super Response<SigninResponse>> continuation) {
            return ((AnonymousClass1) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @Nullable
        public final Object invokeSuspend(@NotNull Object obj) {
            T t10;
            IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
            if (this.label == 0) {
                ResultKt.throwOnFailure(obj);
                Ref.ObjectRef<Response<SigninResponse>> objectRef = this.$signResponse;
                GCRequest gCRequest = new GCRequest("api/token/promotion/taskcenter/signtask/excuter");
                try {
                    t10 = Requester.INSTANCE.execute(gCRequest, gCRequest.buildRequestParams(), SigninResponse.class);
                } catch (Exception e10) {
                    e10.printStackTrace();
                    Response fail = Response.Companion.fail(-1, null, e10.getMessage());
                    fail.setError(e10);
                    t10 = fail;
                }
                objectRef.element = t10;
                return this.$signResponse.element;
            }
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public SigninManager$checkSignInTask$1$1$1(Ref.ObjectRef<Response<SigninResponse>> objectRef, FragmentActivity fragmentActivity, Continuation<? super SigninManager$checkSignInTask$1$1$1> continuation) {
        super(2, continuation);
        this.$signResponse = objectRef;
        this.$activity = fragmentActivity;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @NotNull
    public final Continuation<Unit> create(@Nullable Object obj, @NotNull Continuation<?> continuation) {
        return new SigninManager$checkSignInTask$1$1$1(this.$signResponse, this.$activity, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    @Nullable
    /* renamed from: invoke  reason: avoid collision after fix types in other method */
    public final Object mo1invoke(@NotNull CoroutineScope coroutineScope, @Nullable Continuation<? super Unit> continuation) {
        return ((SigninManager$checkSignInTask$1$1$1) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        Object coroutine_suspended;
        Ref.ObjectRef<Response<SigninResponse>> objectRef;
        T t10;
        SigninResponse data;
        SigninResponse data2;
        List<RewardList> luckInfo;
        SigninResponse data3;
        NewUser newUser;
        SigninResponse data4;
        NewUser newUser2;
        SigninResponse data5;
        Integer status;
        coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i9 = this.label;
        NewUser newUser3 = null;
        if (i9 == 0) {
            ResultKt.throwOnFailure(obj);
            Ref.ObjectRef<Response<SigninResponse>> objectRef2 = this.$signResponse;
            CoroutineDispatcher io2 = Dispatchers.getIO();
            AnonymousClass1 anonymousClass1 = new AnonymousClass1(this.$signResponse, null);
            this.L$0 = objectRef2;
            this.label = 1;
            Object withContext = BuildersKt.withContext(io2, anonymousClass1, this);
            if (withContext == coroutine_suspended) {
                return coroutine_suspended;
            }
            objectRef = objectRef2;
            t10 = withContext;
        } else if (i9 != 1) {
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        } else {
            objectRef = (Ref.ObjectRef) this.L$0;
            ResultKt.throwOnFailure(obj);
            t10 = obj;
        }
        objectRef.element = t10;
        Response<SigninResponse> response = this.$signResponse.element;
        int i10 = 0;
        if ((response == null || (data5 = response.getData()) == null || (status = data5.getStatus()) == null || status.intValue() != 2) ? false : true) {
            Response<SigninResponse> response2 = this.$signResponse.element;
            if ((response2 == null || (data4 = response2.getData()) == null || (newUser2 = data4.getNewUser()) == null || newUser2.isNewUser() != 1) ? false : true) {
                Response<SigninResponse> response3 = this.$signResponse.element;
                if ((response3 == null || (data3 = response3.getData()) == null || (newUser = data3.getNewUser()) == null || newUser.getRegDay() != 1) ? false : true) {
                    Ref.IntRef intRef = new Ref.IntRef();
                    Ref.IntRef intRef2 = new Ref.IntRef();
                    Response<SigninResponse> response4 = this.$signResponse.element;
                    if (response4 != null && (data2 = response4.getData()) != null && (luckInfo = data2.getLuckInfo()) != null) {
                        for (RewardList rewardList : luckInfo) {
                            Integer prizeType = rewardList.getPrizeType();
                            if (prizeType != null && prizeType.intValue() == 0) {
                                int i11 = intRef.element;
                                Integer prizeNum = rewardList.getPrizeNum();
                                intRef.element = i11 + (prizeNum != null ? prizeNum.intValue() : 0);
                            }
                            Integer prizeType2 = rewardList.getPrizeType();
                            if (prizeType2 != null && prizeType2.intValue() == 1) {
                                int i12 = intRef2.element;
                                Integer prizeNum2 = rewardList.getPrizeNum();
                                intRef2.element = i12 + (prizeNum2 != null ? prizeNum2.intValue() : 0);
                            }
                        }
                    }
                    Response<SigninResponse> response5 = this.$signResponse.element;
                    if (response5 != null && (data = response5.getData()) != null) {
                        newUser3 = data.getNewUser();
                    }
                    LotteryResult data6 = LotteryResult.build(newUser3);
                    LotteryResult.LotteryResultItem newUserGiftBag = data6.getNewUserGiftBag();
                    String charmValues = data6.getNewUserGiftBag().getCharmValues();
                    Intrinsics.checkNotNullExpressionValue(charmValues, "data.newUserGiftBag.charmValues");
                    newUserGiftBag.setCharmValues(String.valueOf(Integer.parseInt(charmValues) + intRef.element));
                    LotteryResult.LotteryResultItem newUserGiftBag2 = data6.getNewUserGiftBag();
                    String rewardDiamond = data6.getNewUserGiftBag().getRewardDiamond();
                    Intrinsics.checkNotNullExpressionValue(rewardDiamond, "data.newUserGiftBag.rewardDiamond");
                    newUserGiftBag2.setRewardDiamond(String.valueOf(Integer.parseInt(rewardDiamond) + intRef2.element));
                    try {
                        String rewardDiamond2 = data6.getNewUserGiftBag().getRewardDiamond();
                        Intrinsics.checkNotNullExpressionValue(rewardDiamond2, "data.newUserGiftBag.rewardDiamond");
                        LiveRandomGo liveRandomGo = LiveRandomGo.INSTANCE;
                        if (!TextUtils.isEmpty(rewardDiamond2)) {
                            i10 = Integer.parseInt(rewardDiamond2);
                        }
                        liveRandomGo.addRewardDiamond(i10);
                    } catch (Exception e10) {
                        e10.printStackTrace();
                    }
                    FragmentManager activity = this.$activity.getSupportFragmentManager();
                    LotteryResultDialog.Companion companion = LotteryResultDialog.Companion;
                    Intrinsics.checkNotNullExpressionValue(activity, "activity");
                    Intrinsics.checkNotNullExpressionValue(data6, "data");
                    companion.showDialog(activity, data6);
                }
            }
        }
        return Unit.INSTANCE;
    }
}
