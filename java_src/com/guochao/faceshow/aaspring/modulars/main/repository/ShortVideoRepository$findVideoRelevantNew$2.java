package com.guochao.faceshow.aaspring.modulars.main.repository;

import com.facebook.appevents.UserDataStore;
import com.guochao.faceshow.aaspring.base.http.v2.GCRequest;
import com.guochao.faceshow.aaspring.base.http.v2.Requester;
import com.guochao.faceshow.aaspring.base.http.v2.Response;
import com.guochao.faceshow.bean.MusicTypeTopicList;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt;
import kotlin.coroutines.jvm.internal.Boxing;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* JADX INFO: Access modifiers changed from: package-private */
@Metadata(bv = {}, d1 = {"\u0000\u000e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u0010\u0003\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00020\u0001*\u00020\u0000H\u008a@"}, d2 = {"Lkotlinx/coroutines/CoroutineScope;", "Lcom/guochao/faceshow/aaspring/base/http/v2/Response;", "Lcom/guochao/faceshow/bean/MusicTypeTopicList$Page;", "<anonymous>"}, k = 3, mv = {1, 7, 1})
@DebugMetadata(c = "com.guochao.faceshow.aaspring.modulars.main.repository.ShortVideoRepository$findVideoRelevantNew$2", f = "ShortVideoRepository.kt", i = {}, l = {}, m = "invokeSuspend", n = {}, s = {})
/* loaded from: classes3.dex */
public final class ShortVideoRepository$findVideoRelevantNew$2 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Response<MusicTypeTopicList.Page>>, Object> {
    final /* synthetic */ String $country;
    final /* synthetic */ String $isPrivate;
    final /* synthetic */ int $limit;
    final /* synthetic */ String $musicId;
    final /* synthetic */ int $page;
    final /* synthetic */ String $topicId;
    final /* synthetic */ String $type;
    final /* synthetic */ String $url;
    int label;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ShortVideoRepository$findVideoRelevantNew$2(String str, String str2, String str3, String str4, int i9, int i10, String str5, String str6, Continuation<? super ShortVideoRepository$findVideoRelevantNew$2> continuation) {
        super(2, continuation);
        this.$url = str;
        this.$musicId = str2;
        this.$country = str3;
        this.$type = str4;
        this.$page = i9;
        this.$limit = i10;
        this.$isPrivate = str5;
        this.$topicId = str6;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @NotNull
    public final Continuation<Unit> create(@Nullable Object obj, @NotNull Continuation<?> continuation) {
        return new ShortVideoRepository$findVideoRelevantNew$2(this.$url, this.$musicId, this.$country, this.$type, this.$page, this.$limit, this.$isPrivate, this.$topicId, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    @Nullable
    /* renamed from: invoke  reason: avoid collision after fix types in other method */
    public final Object mo1invoke(@NotNull CoroutineScope coroutineScope, @Nullable Continuation<? super Response<MusicTypeTopicList.Page>> continuation) {
        return ((ShortVideoRepository$findVideoRelevantNew$2) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
        if (this.label == 0) {
            ResultKt.throwOnFailure(obj);
            GCRequest putBody = new GCRequest(this.$url).putBody("musicId", this.$musicId);
            String str = this.$country;
            if (str == null) {
                str = "";
            }
            GCRequest putBody2 = putBody.putBody(UserDataStore.COUNTRY, str).putBody("type", this.$type).putBody("page", Boxing.boxInt(this.$page)).putBody("size", Boxing.boxInt(this.$limit));
            String str2 = this.$isPrivate;
            if (str2 == null) {
                str2 = "";
            }
            GCRequest putBody3 = putBody2.putBody("isPrivate", str2);
            String str3 = this.$topicId;
            GCRequest putBody4 = putBody3.putBody("topicId", str3 != null ? str3 : "");
            try {
                return Requester.INSTANCE.execute(putBody4, putBody4.buildRequestParams(), MusicTypeTopicList.Page.class);
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
