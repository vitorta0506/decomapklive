package com.guochao.component.mvp.repository;

import com.guochao.component.mvp.model.GetInterestsRequestModel;
import com.guochao.component.mvp.model.GetRewardRequestModel;
import com.guochao.component.mvp.model.MVPInfoModel;
import com.guochao.component.mvp.model.UserModel;
import com.guochao.faceshow.aaspring.base.http.v2.Response;
import com.guochao.faceshow.utils.Contants;
import java.util.ArrayList;
import java.util.List;
import kotlin.Metadata;
import kotlin.coroutines.Continuation;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Ref;
import kotlinx.coroutines.BuildersKt;
import kotlinx.coroutines.Dispatchers;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(d1 = {"\u0000D\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u0000 \u00182\u00020\u0001:\u0001\u0018B\u0005¢\u0006\u0002\u0010\u0002J\u001f\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u00042\u0006\u0010\u0006\u001a\u00020\u0007H\u0086@ø\u0001\u0000¢\u0006\u0002\u0010\bJ\u001f\u0010\t\u001a\b\u0012\u0004\u0012\u00020\n0\u00042\u0006\u0010\u000b\u001a\u00020\fH\u0086@ø\u0001\u0000¢\u0006\u0002\u0010\rJ%\u0010\t\u001a\b\u0012\u0004\u0012\u00020\n0\u00042\f\u0010\u000e\u001a\b\u0012\u0004\u0012\u00020\f0\u000fH\u0086@ø\u0001\u0000¢\u0006\u0002\u0010\u0010J\u0017\u0010\u0011\u001a\b\u0012\u0004\u0012\u00020\u00120\u0004H\u0086@ø\u0001\u0000¢\u0006\u0002\u0010\u0013J\u001f\u0010\u0014\u001a\b\u0012\u0004\u0012\u00020\n0\u00042\u0006\u0010\u000b\u001a\u00020\u0015H\u0086@ø\u0001\u0000¢\u0006\u0002\u0010\u0016J\u001f\u0010\u0017\u001a\b\u0012\u0004\u0012\u00020\n0\u00042\u0006\u0010\u000b\u001a\u00020\u0015H\u0086@ø\u0001\u0000¢\u0006\u0002\u0010\u0016\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006\u0019"}, d2 = {"Lcom/guochao/component/mvp/repository/MVPRepository;", "", "()V", "findUserById", "Lcom/guochao/faceshow/aaspring/base/http/v2/Response;", "Lcom/guochao/component/mvp/model/UserModel;", Contants.USER_ID, "", "(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "getReward", "", "bean", "Lcom/guochao/component/mvp/model/GetRewardRequestModel;", "(Lcom/guochao/component/mvp/model/GetRewardRequestModel;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "list", "", "(Ljava/util/List;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "myMVPInfo", "Lcom/guochao/component/mvp/model/MVPInfoModel;", "(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "setFreeTime", "Lcom/guochao/component/mvp/model/GetInterestsRequestModel;", "(Lcom/guochao/component/mvp/model/GetInterestsRequestModel;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "setWorldTop", "Companion", "component_mvp_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
/* loaded from: classes3.dex */
public final class MVPRepository {
    @NotNull
    public static final Companion Companion = new Companion(null);
    @NotNull
    private static final String URL_GET_REWARD = "api/token/trade/mvp/receiveMvp";
    @NotNull
    private static final String URL_GET_USER_BY_ID = "api/token/user/current/user/getUserInfoById";
    @NotNull
    private static final String URL_MY_MVP_INFO = "api/token/trade/mvp/myMvpInfo";
    @NotNull
    private static final String URL_SET_FREE_TIME = "api/token/trade/mvp/receiveAvoidTime";
    @NotNull
    private static final String URL_SET_WORLD_TOP = "api/token/trade/mvp/receiveRecommend";

    @Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0005\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\b\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000¨\u0006\t"}, d2 = {"Lcom/guochao/component/mvp/repository/MVPRepository$Companion;", "", "()V", "URL_GET_REWARD", "", "URL_GET_USER_BY_ID", "URL_MY_MVP_INFO", "URL_SET_FREE_TIME", "URL_SET_WORLD_TOP", "component_mvp_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
    /* loaded from: classes3.dex */
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }
    }

    @Nullable
    public final Object findUserById(@NotNull String str, @NotNull Continuation<? super Response<UserModel>> continuation) {
        return BuildersKt.withContext(Dispatchers.getIO(), new MVPRepository$findUserById$2(str, null), continuation);
    }

    /* JADX WARN: Type inference failed for: r1v0, types: [T, java.util.ArrayList] */
    @Nullable
    public final Object getReward(@NotNull GetRewardRequestModel getRewardRequestModel, @NotNull Continuation<? super Response<Integer>> continuation) {
        Ref.ObjectRef objectRef = new Ref.ObjectRef();
        ?? arrayList = new ArrayList();
        objectRef.element = arrayList;
        ArrayList arrayList2 = (ArrayList) arrayList;
        arrayList.add(getRewardRequestModel);
        return BuildersKt.withContext(Dispatchers.getIO(), new MVPRepository$getReward$2(objectRef, null), continuation);
    }

    @Nullable
    public final Object myMVPInfo(@NotNull Continuation<? super Response<MVPInfoModel>> continuation) {
        return BuildersKt.withContext(Dispatchers.getIO(), new MVPRepository$myMVPInfo$2(null), continuation);
    }

    @Nullable
    public final Object setFreeTime(@NotNull GetInterestsRequestModel getInterestsRequestModel, @NotNull Continuation<? super Response<Integer>> continuation) {
        return BuildersKt.withContext(Dispatchers.getIO(), new MVPRepository$setFreeTime$2(getInterestsRequestModel, null), continuation);
    }

    @Nullable
    public final Object setWorldTop(@NotNull GetInterestsRequestModel getInterestsRequestModel, @NotNull Continuation<? super Response<Integer>> continuation) {
        return BuildersKt.withContext(Dispatchers.getIO(), new MVPRepository$setWorldTop$2(getInterestsRequestModel, null), continuation);
    }

    @Nullable
    public final Object getReward(@NotNull List<GetRewardRequestModel> list, @NotNull Continuation<? super Response<Integer>> continuation) {
        return BuildersKt.withContext(Dispatchers.getIO(), new MVPRepository$getReward$4(list, null), continuation);
    }
}
