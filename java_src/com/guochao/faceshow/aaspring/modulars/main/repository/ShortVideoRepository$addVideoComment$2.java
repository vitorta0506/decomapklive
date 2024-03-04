package com.guochao.faceshow.aaspring.modulars.main.repository;

import com.guochao.faceshow.aaspring.base.http.v2.GCRequest;
import com.guochao.faceshow.aaspring.base.http.v2.Requester;
import com.guochao.faceshow.aaspring.base.http.v2.Response;
import com.guochao.faceshow.aaspring.modulars.main.model.AddVideoCommentModel;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* JADX INFO: Access modifiers changed from: package-private */
@Metadata(bv = {}, d1 = {"\u0000\u000e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u0010\u0003\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00020\u0001*\u00020\u0000H\u008a@"}, d2 = {"Lkotlinx/coroutines/CoroutineScope;", "Lcom/guochao/faceshow/aaspring/base/http/v2/Response;", "Lcom/guochao/faceshow/aaspring/modulars/main/model/AddVideoCommentModel;", "<anonymous>"}, k = 3, mv = {1, 7, 1})
@DebugMetadata(c = "com.guochao.faceshow.aaspring.modulars.main.repository.ShortVideoRepository$addVideoComment$2", f = "ShortVideoRepository.kt", i = {}, l = {}, m = "invokeSuspend", n = {}, s = {})
/* loaded from: classes3.dex */
public final class ShortVideoRepository$addVideoComment$2 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Response<AddVideoCommentModel>>, Object> {
    final /* synthetic */ String $commentJson;
    final /* synthetic */ String $parentCommentId;
    final /* synthetic */ String $videoId;
    int label;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ShortVideoRepository$addVideoComment$2(String str, String str2, String str3, Continuation<? super ShortVideoRepository$addVideoComment$2> continuation) {
        super(2, continuation);
        this.$videoId = str;
        this.$commentJson = str2;
        this.$parentCommentId = str3;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @NotNull
    public final Continuation<Unit> create(@Nullable Object obj, @NotNull Continuation<?> continuation) {
        return new ShortVideoRepository$addVideoComment$2(this.$videoId, this.$commentJson, this.$parentCommentId, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    @Nullable
    /* renamed from: invoke  reason: avoid collision after fix types in other method */
    public final Object mo1invoke(@NotNull CoroutineScope coroutineScope, @Nullable Continuation<? super Response<AddVideoCommentModel>> continuation) {
        return ((ShortVideoRepository$addVideoComment$2) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
        if (this.label == 0) {
            ResultKt.throwOnFailure(obj);
            GCRequest putBody = new GCRequest("api/token/social/video/addVideoComment").putBody("videoId", this.$videoId).putBody("commentJson", this.$commentJson);
            String str = this.$parentCommentId;
            if (!(str == null || str.length() == 0)) {
                putBody.putBody("parentCommentId", str);
            }
            try {
                return Requester.INSTANCE.execute(putBody, putBody.buildRequestParams(), AddVideoCommentModel.class);
            } catch (Exception e10) {
                e10.printStackTrace();
                Response fail = Response.Companion.fail(-1, null, e10.getMessage());
                fail.setError(e10);
                return fail;
            }
        }
        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
    }
}
