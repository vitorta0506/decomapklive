package com.guochao.faceshow.aaspring.modulars.main.viewmodel;

import androidx.collection.ArrayMap;
import androidx.lifecycle.Observer;
import androidx.lifecycle.ViewModelKt;
import com.guochao.faceshow.aaspring.base.http.v2.Response;
import com.guochao.faceshow.aaspring.base.mvvm.viewmodel.BaseViewModel;
import com.guochao.faceshow.aaspring.beans.ConversationInfo;
import com.guochao.faceshow.aaspring.db.repo.SystemConversationRepository;
import com.guochao.faceshow.aaspring.modulars.chat.utils.SystemConversationManager;
import com.guochao.faceshow.aaspring.modulars.main.model.ConversationModel;
import com.guochao.faceshow.aaspring.modulars.main.model.SystemConversationModel;
import com.tencent.imsdk.v2.V2TIMCallback;
import com.tencent.imsdk.v2.V2TIMManager;
import com.tencent.xmagic.log.LogUtils;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.collections.CollectionsKt__MutableCollectionsJVMKt;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.BuildersKt;
import kotlinx.coroutines.BuildersKt__Builders_commonKt;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.Dispatchers;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(bv = {}, d1 = {"\u0000\u0090\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0015\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010!\n\u0002\b\u0002\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B\u0007¢\u0006\u0004\b5\u00106J\u0012\u0010\u0006\u001a\u00020\u00052\b\b\u0002\u0010\u0004\u001a\u00020\u0003H\u0002J\u0016\u0010\u000b\u001a\u00020\n2\f\u0010\t\u001a\b\u0012\u0004\u0012\u00020\b0\u0007H\u0002J\u0016\u0010\f\u001a\u00020\u00052\f\u0010\t\u001a\b\u0012\u0004\u0012\u00020\b0\u0007H\u0002J\u001b\u0010\u000f\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u000e0\rH\u0082@ø\u0001\u0000¢\u0006\u0004\b\u000f\u0010\u0010J\u001d\u0010\u0014\u001a\u0004\u0018\u00010\u00132\u0006\u0010\u0012\u001a\u00020\u0011H\u0082@ø\u0001\u0000¢\u0006\u0004\b\u0014\u0010\u0015J\u0006\u0010\f\u001a\u00020\u0005J\u0006\u0010\u0016\u001a\u00020\u0005J\u0006\u0010\u0017\u001a\u00020\u0005J\u001b\u0010\u0018\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u000e0\rH\u0086@ø\u0001\u0000¢\u0006\u0004\b\u0018\u0010\u0010J$\u0010\u001c\u001a\u00020\u00052\u0006\u0010\u0019\u001a\u00020\u00112\u0014\u0010\u001b\u001a\u0010\u0012\u0006\u0012\u0004\u0018\u00010\u0013\u0012\u0004\u0012\u00020\u00050\u001aR\u0014\u0010\u001e\u001a\u00020\u001d8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u001e\u0010\u001fR\u0014\u0010!\u001a\u00020 8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b!\u0010\"R\"\u0010&\u001a\u0010\u0012\u0004\u0012\u00020$\u0012\u0006\u0012\u0004\u0018\u00010%0#8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b&\u0010'R\u001c\u0010)\u001a\b\u0012\u0004\u0012\u00020\b0(8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b)\u0010*R\u0016\u0010,\u001a\u00020+8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b,\u0010-R\u0014\u0010/\u001a\u00020.8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b/\u00100R$\u00103\u001a\u0012\u0012\u0004\u0012\u00020$01j\b\u0012\u0004\u0012\u00020$`28\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b3\u00104\u0082\u0002\u0004\n\u0002\b\u0019¨\u00067"}, d2 = {"Lcom/guochao/faceshow/aaspring/modulars/main/viewmodel/ConversationViewModel;", "Lcom/guochao/faceshow/aaspring/base/mvvm/viewmodel/BaseViewModel;", "Lcom/guochao/faceshow/aaspring/modulars/main/model/ConversationModel;", "", "checkOnline", "", "resetList", "", "Lcom/guochao/faceshow/aaspring/beans/ConversationInfo;", "list", "", "getUnread", "requestOnlineStatus", "Lcom/guochao/faceshow/aaspring/base/http/v2/Response;", "Lcom/guochao/faceshow/aaspring/modulars/main/model/ConversationModel$TopOnlineUserListModel;", "requestTopOnlineUsers", "(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "", "ids", "Lcom/guochao/faceshow/aaspring/modulars/main/model/ConversationModel$OnlineStatusModel;", "requestOnlineStatusToServer", "([ILkotlin/coroutines/Continuation;)Ljava/lang/Object;", "loadSystemMessage", "readAll", "loadTopRecommendUsers", "array", "Lkotlin/Function1;", "callback", "requestOnline", "Lcom/guochao/faceshow/aaspring/manager/im/b;", "imManager", "Lcom/guochao/faceshow/aaspring/manager/im/b;", "Lcom/guochao/faceshow/aaspring/modulars/chat/utils/SystemConversationManager;", "systemConversationManager", "Lcom/guochao/faceshow/aaspring/modulars/chat/utils/SystemConversationManager;", "Landroidx/collection/ArrayMap;", "", "Lcom/guochao/faceshow/aaspring/modulars/main/model/ConversationModel$Online;", "onlineMap", "Landroidx/collection/ArrayMap;", "", "systemConversations", "Ljava/util/List;", "", "lastRequestOnline", "J", "Lcom/guochao/faceshow/aaspring/db/repo/SystemConversationRepository;", "repo", "Lcom/guochao/faceshow/aaspring/db/repo/SystemConversationRepository;", "Ljava/util/HashSet;", "Lkotlin/collections/HashSet;", "requestOnlineHash", "Ljava/util/HashSet;", "<init>", "()V", "app_GooglePlayRelease"}, k = 1, mv = {1, 7, 1})
/* loaded from: classes3.dex */
public final class ConversationViewModel extends BaseViewModel<ConversationModel> {
    @Nullable
    private a8.a conversationResult;
    @NotNull
    private final com.guochao.faceshow.aaspring.manager.im.b imManager;
    private long lastRequestOnline;
    @NotNull
    private final ArrayMap<String, ConversationModel.Online> onlineMap;
    @NotNull
    private final SystemConversationRepository repo;
    @NotNull
    private final HashSet<String> requestOnlineHash;
    @NotNull
    private final SystemConversationManager systemConversationManager;
    @NotNull
    private List<ConversationInfo> systemConversations;

    @Metadata(bv = {}, d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\u008a@"}, d2 = {"Lkotlinx/coroutines/CoroutineScope;", "", "<anonymous>"}, k = 3, mv = {1, 7, 1})
    @DebugMetadata(c = "com.guochao.faceshow.aaspring.modulars.main.viewmodel.ConversationViewModel$3", f = "ConversationViewModel.kt", i = {}, l = {86}, m = "invokeSuspend", n = {}, s = {})
    /* renamed from: com.guochao.faceshow.aaspring.modulars.main.viewmodel.ConversationViewModel$3  reason: invalid class name */
    /* loaded from: classes3.dex */
    static final class AnonymousClass3 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
        int label;

        AnonymousClass3(Continuation<? super AnonymousClass3> continuation) {
            super(2, continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @NotNull
        public final Continuation<Unit> create(@Nullable Object obj, @NotNull Continuation<?> continuation) {
            return new AnonymousClass3(continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        @Nullable
        /* renamed from: invoke  reason: avoid collision after fix types in other method */
        public final Object mo1invoke(@NotNull CoroutineScope coroutineScope, @Nullable Continuation<? super Unit> continuation) {
            return ((AnonymousClass3) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @Nullable
        public final Object invokeSuspend(@NotNull Object obj) {
            Object coroutine_suspended;
            coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i9 = this.label;
            if (i9 == 0) {
                ResultKt.throwOnFailure(obj);
                SystemConversationRepository systemConversationRepository = ConversationViewModel.this.repo;
                this.label = 1;
                obj = systemConversationRepository.getAllConversations(this);
                if (obj == coroutine_suspended) {
                    return coroutine_suspended;
                }
            } else if (i9 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            } else {
                ResultKt.throwOnFailure(obj);
            }
            List<SystemConversationModel> list = (List) obj;
            if (list != null && ConversationViewModel.this.systemConversations.isEmpty()) {
                ConversationViewModel conversationViewModel = ConversationViewModel.this;
                for (SystemConversationModel systemConversationModel : list) {
                    List list2 = conversationViewModel.systemConversations;
                    ConversationInfo conversationInfo = new ConversationInfo(3, systemConversationModel.getConversationId());
                    conversationInfo.setLastMsgStr(systemConversationModel.getContent());
                    Long lastMsgTime = systemConversationModel.getLastMsgTime();
                    conversationInfo.setLastMsgTime(lastMsgTime != null ? lastMsgTime.longValue() : 0L);
                    list2.add(conversationInfo);
                }
                ConversationViewModel.this.resetList(false);
            }
            return Unit.INSTANCE;
        }
    }

    public ConversationViewModel() {
        com.guochao.faceshow.aaspring.manager.im.b l02 = com.guochao.faceshow.aaspring.manager.im.b.l0();
        Intrinsics.checkNotNullExpressionValue(l02, "getInstance()");
        this.imManager = l02;
        this.systemConversationManager = SystemConversationManager.INSTANCE;
        this.onlineMap = new ArrayMap<>();
        this.systemConversations = new ArrayList();
        this.repo = new SystemConversationRepository();
        LogUtils.d("24HourMessage", "开始设置IM监听器");
        l02.o(null, new Observer() { // from class: com.guochao.faceshow.aaspring.modulars.main.viewmodel.a
            @Override // androidx.lifecycle.Observer
            public final void onChanged(Object obj) {
                ConversationViewModel.m521_init_$lambda1(ConversationViewModel.this, (a8.a) obj);
            }
        });
        SystemConversationManager.observe(null, new Observer() { // from class: com.guochao.faceshow.aaspring.modulars.main.viewmodel.b
            @Override // androidx.lifecycle.Observer
            public final void onChanged(Object obj) {
                ConversationViewModel.m522_init_$lambda2(ConversationViewModel.this, (List) obj);
            }
        });
        BuildersKt__Builders_commonKt.launch$default(ViewModelKt.getViewModelScope(this), Dispatchers.getMain(), null, new AnonymousClass3(null), 2, null);
        this.requestOnlineHash = new HashSet<>();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: _init_$lambda-1  reason: not valid java name */
    public static final void m521_init_$lambda1(ConversationViewModel this$0, a8.a aVar) {
        List<ConversationInfo> a10;
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        LogUtils.d("24HourMessage", "收到消息");
        if (aVar == null) {
            a8.a aVar2 = this$0.conversationResult;
            if (aVar2 != null && (a10 = aVar2.a()) != null) {
                a10.clear();
            }
            this$0.conversationResult = null;
            this$0.getModelLiveData().setValue(new ConversationModel.ConversationListModel(new ArrayList(), 0, 2, null));
            return;
        }
        a8.a aVar3 = this$0.conversationResult;
        if (aVar3 == null || !aVar.b() || aVar3.b()) {
            this$0.conversationResult = new a8.a(aVar.b(), new ArrayList(aVar.a()));
            this$0.resetList(!aVar.b());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: _init_$lambda-2  reason: not valid java name */
    public static final void m522_init_$lambda2(ConversationViewModel this$0, List it) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.systemConversations.clear();
        List<ConversationInfo> list = this$0.systemConversations;
        Intrinsics.checkNotNullExpressionValue(it, "it");
        list.addAll(it);
        BuildersKt__Builders_commonKt.launch$default(ViewModelKt.getViewModelScope(this$0), Dispatchers.getMain(), null, new ConversationViewModel$2$1(this$0, it, null), 2, null);
        this$0.resetList(false);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final int getUnread(List<? extends ConversationInfo> list) {
        int size = list.size();
        int i9 = 0;
        for (int i10 = 0; i10 < size; i10++) {
            ConversationInfo conversationInfo = list.get(i10);
            if (!(conversationInfo.getSilent() == 1) && conversationInfo.shouldShowInConversationList() && conversationInfo.getUnreadNum() > 0) {
                i9 += conversationInfo.getUnreadNum();
            }
        }
        return i9;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final Object requestOnlineStatusToServer(int[] iArr, Continuation<? super ConversationModel.OnlineStatusModel> continuation) {
        return BuildersKt.withContext(Dispatchers.getIO(), new ConversationViewModel$requestOnlineStatusToServer$2(this, iArr, null), continuation);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final Object requestTopOnlineUsers(Continuation<? super Response<ConversationModel.TopOnlineUserListModel>> continuation) {
        return BuildersKt.withContext(Dispatchers.getIO(), new ConversationViewModel$requestTopOnlineUsers$2(this, null), continuation);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void resetList(boolean z10) {
        List<? extends ConversationInfo> mutableList;
        ArrayList arrayList = new ArrayList();
        arrayList.addAll(this.systemConversations);
        a8.a aVar = this.conversationResult;
        if (aVar != null) {
            Iterator<ConversationInfo> it = aVar.a().iterator();
            while (it.hasNext()) {
                ConversationInfo next = it.next();
                Intrinsics.checkNotNullExpressionValue(next, "iterator.next()");
                ConversationInfo conversationInfo = next;
                if (fb.a.e(conversationInfo.getConversationId())) {
                    it.remove();
                } else {
                    if (conversationInfo.getLastMsg() != null) {
                        conversationInfo.isGreetingConversation();
                        conversationInfo.isSendGreetingConversation();
                        conversationInfo.checkOneDay();
                    }
                    if (conversationInfo.isSayHi()) {
                        it.remove();
                    } else if (conversationInfo.isSendSayHi()) {
                        it.remove();
                    } else if (conversationInfo.isOneDay()) {
                        it.remove();
                    } else if (!conversationInfo.shouldShowInConversationList()) {
                        it.remove();
                    }
                }
            }
            arrayList.addAll(aVar.a());
        }
        mutableList = CollectionsKt___CollectionsKt.toMutableList((Collection) arrayList);
        CollectionsKt__MutableCollectionsJVMKt.sort(mutableList);
        getModelLiveData().setValue(new ConversationModel.ConversationListModel(mutableList, getUnread(mutableList)));
    }

    static /* synthetic */ void resetList$default(ConversationViewModel conversationViewModel, boolean z10, int i9, Object obj) {
        if ((i9 & 1) != 0) {
            z10 = false;
        }
        conversationViewModel.resetList(z10);
    }

    public final void loadSystemMessage() {
        SystemConversationManager.loadMessageFromServer();
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0024  */
    /* JADX WARN: Removed duplicated region for block: B:16:0x0042  */
    @org.jetbrains.annotations.Nullable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object loadTopRecommendUsers(@org.jetbrains.annotations.NotNull kotlin.coroutines.Continuation<? super com.guochao.faceshow.aaspring.base.http.v2.Response<com.guochao.faceshow.aaspring.modulars.main.model.ConversationModel.TopOnlineUserListModel>> r9) {
        /*
            r8 = this;
            boolean r0 = r9 instanceof com.guochao.faceshow.aaspring.modulars.main.viewmodel.ConversationViewModel$loadTopRecommendUsers$1
            if (r0 == 0) goto L13
            r0 = r9
            com.guochao.faceshow.aaspring.modulars.main.viewmodel.ConversationViewModel$loadTopRecommendUsers$1 r0 = (com.guochao.faceshow.aaspring.modulars.main.viewmodel.ConversationViewModel$loadTopRecommendUsers$1) r0
            int r1 = r0.label
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.label = r1
            goto L18
        L13:
            com.guochao.faceshow.aaspring.modulars.main.viewmodel.ConversationViewModel$loadTopRecommendUsers$1 r0 = new com.guochao.faceshow.aaspring.modulars.main.viewmodel.ConversationViewModel$loadTopRecommendUsers$1
            r0.<init>(r8, r9)
        L18:
            java.lang.Object r9 = r0.result
            java.lang.Object r1 = kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r2 = r0.label
            r3 = 2
            r4 = 1
            if (r2 == 0) goto L42
            if (r2 == r4) goto L3a
            if (r2 != r3) goto L32
            java.lang.Object r1 = r0.L$1
            java.util.List r1 = (java.util.List) r1
            java.lang.Object r0 = r0.L$0
            kotlin.ResultKt.throwOnFailure(r9)
            goto L72
        L32:
            java.lang.IllegalStateException r9 = new java.lang.IllegalStateException
            java.lang.String r0 = "call to 'resume' before 'invoke' with coroutine"
            r9.<init>(r0)
            throw r9
        L3a:
            java.lang.Object r2 = r0.L$0
            com.guochao.faceshow.aaspring.modulars.main.viewmodel.ConversationViewModel r2 = (com.guochao.faceshow.aaspring.modulars.main.viewmodel.ConversationViewModel) r2
            kotlin.ResultKt.throwOnFailure(r9)
            goto L51
        L42:
            kotlin.ResultKt.throwOnFailure(r9)
            r0.L$0 = r8
            r0.label = r4
            java.lang.Object r9 = r8.requestTopOnlineUsers(r0)
            if (r9 != r1) goto L50
            return r1
        L50:
            r2 = r8
        L51:
            r4 = r9
            com.guochao.faceshow.aaspring.base.http.v2.Response r4 = (com.guochao.faceshow.aaspring.base.http.v2.Response) r4
            a8.a r5 = r2.conversationResult
            if (r5 == 0) goto L73
            java.util.List r5 = r5.a()
            if (r5 == 0) goto L73
            com.guochao.faceshow.aaspring.modulars.main.viewmodel.ConversationViewModel$loadTopRecommendUsers$2$1$1 r6 = new com.guochao.faceshow.aaspring.modulars.main.viewmodel.ConversationViewModel$loadTopRecommendUsers$2$1$1
            r7 = 0
            r6.<init>(r5, r2, r4, r7)
            r0.L$0 = r9
            r0.L$1 = r5
            r0.label = r3
            java.lang.Object r0 = r2.withMain(r6, r0)
            if (r0 != r1) goto L71
            return r1
        L71:
            r0 = r9
        L72:
            r9 = r0
        L73:
            return r9
        */
        throw new UnsupportedOperationException("Method not decompiled: com.guochao.faceshow.aaspring.modulars.main.viewmodel.ConversationViewModel.loadTopRecommendUsers(kotlin.coroutines.Continuation):java.lang.Object");
    }

    public final void readAll() {
        List<ConversationInfo> a10;
        V2TIMManager.getMessageManager().markAllMessageAsRead(new V2TIMCallback() { // from class: com.guochao.faceshow.aaspring.modulars.main.viewmodel.ConversationViewModel$readAll$1
            @Override // com.tencent.imsdk.v2.V2TIMCallback
            public void onError(int i9, @Nullable String str) {
            }

            @Override // com.tencent.imsdk.v2.V2TIMCallback
            public void onSuccess() {
            }
        });
        a8.a aVar = this.conversationResult;
        if (aVar != null && (a10 = aVar.a()) != null) {
            for (ConversationInfo conversationInfo : a10) {
                conversationInfo.setUnreadNum(0);
            }
        }
        SystemConversationManager.clearAllUnread();
    }

    public final void requestOnline(@NotNull int[] array, @NotNull Function1<? super ConversationModel.OnlineStatusModel, Unit> callback) {
        Intrinsics.checkNotNullParameter(array, "array");
        Intrinsics.checkNotNullParameter(callback, "callback");
        BuildersKt__Builders_commonKt.launch$default(ViewModelKt.getViewModelScope(this), Dispatchers.getMain(), null, new ConversationViewModel$requestOnline$1(this, array, callback, null), 2, null);
    }

    public final void requestOnlineStatus() {
        a8.a aVar;
        List<ConversationInfo> a10;
        long currentTimeMillis = System.currentTimeMillis();
        if (currentTimeMillis - this.lastRequestOnline > 60000 && (aVar = this.conversationResult) != null && (a10 = aVar.a()) != null && (!a10.isEmpty())) {
            this.lastRequestOnline = currentTimeMillis;
            requestOnlineStatus(a10);
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:20:0x0079, code lost:
        if ((java.lang.System.currentTimeMillis() - r5) > 60000) goto L11;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private final void requestOnlineStatus(java.util.List<? extends com.guochao.faceshow.aaspring.beans.ConversationInfo> r17) {
        /*
            r16 = this;
            r1 = r16
            java.util.ArrayList r0 = new java.util.ArrayList
            r0.<init>()
            java.util.Iterator r2 = r17.iterator()
        Lb:
            boolean r3 = r2.hasNext()
            r4 = 0
            if (r3 == 0) goto L82
            java.lang.Object r3 = r2.next()
            r5 = r3
            com.guochao.faceshow.aaspring.beans.ConversationInfo r5 = (com.guochao.faceshow.aaspring.beans.ConversationInfo) r5
            int r6 = r5.getConversationType()
            r7 = 1
            if (r6 == r7) goto L21
            goto L7c
        L21:
            java.lang.String r6 = r5.getConversationId()
            if (r6 != 0) goto L28
            goto L7c
        L28:
            androidx.collection.ArrayMap<java.lang.String, com.guochao.faceshow.aaspring.modulars.main.model.ConversationModel$Online> r6 = r1.onlineMap
            java.lang.String r8 = r5.getConversationId()
            boolean r6 = r6.containsKey(r8)
            if (r6 != 0) goto L4d
            androidx.collection.ArrayMap<java.lang.String, com.guochao.faceshow.aaspring.modulars.main.model.ConversationModel$Online> r4 = r1.onlineMap
            java.lang.String r5 = r5.getConversationId()
            com.guochao.faceshow.aaspring.modulars.main.model.ConversationModel$Online r6 = new com.guochao.faceshow.aaspring.modulars.main.model.ConversationModel$Online
            r9 = -1
            r12 = 0
            r14 = 4
            r15 = 0
            java.lang.String r11 = "LOGOUT"
            r8 = r6
            r8.<init>(r9, r11, r12, r14, r15)
            r4.put(r5, r6)
        L4b:
            r4 = 1
            goto L7c
        L4d:
            androidx.collection.ArrayMap<java.lang.String, com.guochao.faceshow.aaspring.modulars.main.model.ConversationModel$Online> r6 = r1.onlineMap
            java.lang.String r8 = r5.getConversationId()
            java.lang.Object r6 = r6.get(r8)
            com.guochao.faceshow.aaspring.modulars.main.model.ConversationModel$Online r6 = (com.guochao.faceshow.aaspring.modulars.main.model.ConversationModel.Online) r6
            if (r6 == 0) goto L6d
            java.lang.String r8 = r6.getUserOnlineEnum()
            java.lang.String r9 = "LOGIN"
            boolean r8 = kotlin.jvm.internal.Intrinsics.areEqual(r8, r9)
            r5.setOnlineStatus(r8)
            long r5 = r6.getRequestTime()
            goto L6f
        L6d:
            r5 = 0
        L6f:
            long r8 = java.lang.System.currentTimeMillis()
            long r8 = r8 - r5
            r5 = 60000(0xea60, double:2.9644E-319)
            int r10 = (r8 > r5 ? 1 : (r8 == r5 ? 0 : -1))
            if (r10 <= 0) goto L7c
            goto L4b
        L7c:
            if (r4 == 0) goto Lb
            r0.add(r3)
            goto Lb
        L82:
            boolean r2 = r0.isEmpty()
            if (r2 == 0) goto L89
            return
        L89:
            java.util.ArrayList r2 = new java.util.ArrayList
            r2.<init>()
            java.util.Iterator r3 = r0.iterator()
        L92:
            boolean r0 = r3.hasNext()
            if (r0 == 0) goto Lc0
            java.lang.Object r0 = r3.next()
            int r5 = r4 + 1
            if (r4 >= 0) goto La3
            kotlin.collections.CollectionsKt.throwIndexOverflow()
        La3:
            com.guochao.faceshow.aaspring.beans.ConversationInfo r0 = (com.guochao.faceshow.aaspring.beans.ConversationInfo) r0
            java.lang.String r0 = r0.getConversationId()     // Catch: java.lang.Exception -> Lba
            java.lang.String r4 = "it.conversationId"
            kotlin.jvm.internal.Intrinsics.checkNotNullExpressionValue(r0, r4)     // Catch: java.lang.Exception -> Lba
            int r0 = java.lang.Integer.parseInt(r0)     // Catch: java.lang.Exception -> Lba
            java.lang.Integer r0 = java.lang.Integer.valueOf(r0)     // Catch: java.lang.Exception -> Lba
            r2.add(r0)     // Catch: java.lang.Exception -> Lba
            goto Lbe
        Lba:
            r0 = move-exception
            r0.printStackTrace()
        Lbe:
            r4 = r5
            goto L92
        Lc0:
            boolean r0 = r2.isEmpty()
            if (r0 == 0) goto Lc7
            return
        Lc7:
            kotlinx.coroutines.CoroutineScope r3 = androidx.lifecycle.ViewModelKt.getViewModelScope(r16)
            kotlinx.coroutines.MainCoroutineDispatcher r4 = kotlinx.coroutines.Dispatchers.getMain()
            r5 = 0
            com.guochao.faceshow.aaspring.modulars.main.viewmodel.ConversationViewModel$requestOnlineStatus$2 r6 = new com.guochao.faceshow.aaspring.modulars.main.viewmodel.ConversationViewModel$requestOnlineStatus$2
            r0 = 0
            r7 = r17
            r6.<init>(r1, r2, r7, r0)
            r7 = 2
            r8 = 0
            kotlinx.coroutines.BuildersKt.launch$default(r3, r4, r5, r6, r7, r8)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.guochao.faceshow.aaspring.modulars.main.viewmodel.ConversationViewModel.requestOnlineStatus(java.util.List):void");
    }
}
