.class public final Lcom/guochao/faceshow/signin/SigninManager;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000h\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\t\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\t\n\u0002\u0010\u000b\n\u0002\u0008\u0004\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0006\u0010)\u001a\u00020*J\u0006\u0010+\u001a\u00020*J(\u0010,\u001a\u00020*2\u0006\u0010-\u001a\u00020.2\u0018\u0008\u0002\u0010/\u001a\u0012\u0012\u0006\u0012\u0004\u0018\u000101\u0012\u0004\u0012\u00020*\u0018\u000100J\u0006\u00102\u001a\u000203J\u0006\u00104\u001a\u00020\u0004J\u000e\u00105\u001a\u00020*2\u0006\u00106\u001a\u00020$J\u0006\u00107\u001a\u00020*J\u0015\u00108\u001a\u00020*2\u0008\u00109\u001a\u0004\u0018\u00010\u0007\u00a2\u0006\u0002\u0010:J\u000e\u0010;\u001a\u00020*2\u0006\u0010<\u001a\u00020=J\u000e\u0010>\u001a\u00020*2\u0006\u0010\u0003\u001a\u00020\u0004J\u0006\u0010?\u001a\u00020*J\u000e\u0010@\u001a\u00020*2\u0006\u00106\u001a\u00020$R\u0012\u0010\u0003\u001a\u0004\u0018\u00010\u0004X\u0082\u000e\u00a2\u0006\u0004\n\u0002\u0010\u0005R$\u0010\u0008\u001a\u00020\u00072\u0006\u0010\u0006\u001a\u00020\u0007@FX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\t\u0010\n\"\u0004\u0008\u000b\u0010\u000cR\u001c\u0010\r\u001a\u0004\u0018\u00010\u000eX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000f\u0010\u0010\"\u0004\u0008\u0011\u0010\u0012R\u001c\u0010\u0013\u001a\u0004\u0018\u00010\u0014X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0015\u0010\u0016\"\u0004\u0008\u0017\u0010\u0018R\u001e\u0010\u0019\u001a\u0004\u0018\u00010\u001a8FX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u001b\u0010\u001c\"\u0004\u0008\u001d\u0010\u001eR$\u0010\u001f\u001a\u00020\u00072\u0006\u0010\u0006\u001a\u00020\u0007@FX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008 \u0010\n\"\u0004\u0008!\u0010\u000cR \u0010\"\u001a\u0008\u0012\u0004\u0012\u00020$0#X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008%\u0010&\"\u0004\u0008\'\u0010(\u00a8\u0006A"
    }
    d2 = {
        "Lcom/guochao/faceshow/signin/SigninManager;",
        "",
        "()V",
        "diff",
        "",
        "Ljava/lang/Long;",
        "value",
        "",
        "mActivityWatchLiveSecond",
        "getMActivityWatchLiveSecond",
        "()I",
        "setMActivityWatchLiveSecond",
        "(I)V",
        "mLiveTimer",
        "Ljava/util/Timer;",
        "getMLiveTimer",
        "()Ljava/util/Timer;",
        "setMLiveTimer",
        "(Ljava/util/Timer;)V",
        "mLiveTimerTask",
        "Ljava/util/TimerTask;",
        "getMLiveTimerTask",
        "()Ljava/util/TimerTask;",
        "setMLiveTimerTask",
        "(Ljava/util/TimerTask;)V",
        "mSigninCache",
        "Lcom/guochao/faceshow/signin/bean/SigninCache;",
        "getMSigninCache",
        "()Lcom/guochao/faceshow/signin/bean/SigninCache;",
        "setMSigninCache",
        "(Lcom/guochao/faceshow/signin/bean/SigninCache;)V",
        "mWatchLiveSecond",
        "getMWatchLiveSecond",
        "setMWatchLiveSecond",
        "rechargeListeners",
        "",
        "Lcom/guochao/faceshow/signin/RechargeListener;",
        "getRechargeListeners",
        "()Ljava/util/List;",
        "setRechargeListeners",
        "(Ljava/util/List;)V",
        "addLiveMessageCount",
        "",
        "checkDayTask",
        "checkSignInTask",
        "activity",
        "Landroidx/fragment/app/FragmentActivity;",
        "callBack",
        "Lkotlin/Function1;",
        "Lcom/guochao/faceshow/signin/bean/SigninResponse;",
        "getToday",
        "",
        "getTodayTime",
        "registerRechargeListener",
        "listener",
        "releaseWatchLiveListener",
        "resetActivityWatchLiveSecond",
        "loopNum",
        "(Ljava/lang/Integer;)V",
        "resetCount",
        "isLogin",
        "",
        "setServerDiffTime",
        "startWatchLiveListener",
        "unRegisterRechargeListener",
        "lib_sign_in_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x7,
        0x1
    }
    xi = 0x30
.end annotation


# static fields
.field public static final INSTANCE:Lcom/guochao/faceshow/signin/SigninManager;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static diff:Ljava/lang/Long;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private static mActivityWatchLiveSecond:I

.field private static mLiveTimer:Ljava/util/Timer;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private static mLiveTimerTask:Ljava/util/TimerTask;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private static mSigninCache:Lcom/guochao/faceshow/signin/bean/SigninCache;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private static mWatchLiveSecond:I

.field private static rechargeListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/guochao/faceshow/signin/RechargeListener;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 6

    new-instance v0, Lcom/guochao/faceshow/signin/SigninManager;

    invoke-direct {v0}, Lcom/guochao/faceshow/signin/SigninManager;-><init>()V

    sput-object v0, Lcom/guochao/faceshow/signin/SigninManager;->INSTANCE:Lcom/guochao/faceshow/signin/SigninManager;

    .line 1
    invoke-static {}, Lcom/guochao/faceshow/context/GCApplication;->app()Lcom/guochao/faceshow/context/GCApplication;

    move-result-object v0

    .line 2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "WatchLiveSecond"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/guochao/faceshow/session/viewmodel/UserSessionViewModel;->Companion:Lcom/guochao/faceshow/session/viewmodel/UserSessionViewModel$Companion;

    invoke-virtual {v2}, Lcom/guochao/faceshow/session/viewmodel/UserSessionViewModel$Companion;->instance()Lcom/guochao/faceshow/session/viewmodel/UserSessionViewModel;

    move-result-object v3

    invoke-virtual {v3}, Lcom/guochao/faceshow/aaspring/base/mvvm/viewmodel/BaseViewModel;->current()Lcom/guochao/faceshow/aaspring/base/mvvm/model/BaseModel;

    move-result-object v3

    check-cast v3, Lcom/guochao/faceshow/session/model/UserSessionModel;

    const/4 v4, 0x0

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Lcom/guochao/faceshow/session/model/UserSessionModel;->getUserId()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    :cond_0
    move-object v3, v4

    :goto_0
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x0

    .line 3
    invoke-static {v0, v1, v3}, Lcom/guochao/faceshow/aaspring/utils/SpUtils;->getInt(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/guochao/faceshow/signin/SigninManager;->mWatchLiveSecond:I

    .line 4
    invoke-static {}, Lcom/guochao/faceshow/context/GCApplication;->app()Lcom/guochao/faceshow/context/GCApplication;

    move-result-object v0

    .line 5
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ActivityWatchLiveSecond"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/guochao/faceshow/session/viewmodel/UserSessionViewModel$Companion;->instance()Lcom/guochao/faceshow/session/viewmodel/UserSessionViewModel;

    move-result-object v2

    invoke-virtual {v2}, Lcom/guochao/faceshow/aaspring/base/mvvm/viewmodel/BaseViewModel;->current()Lcom/guochao/faceshow/aaspring/base/mvvm/model/BaseModel;

    move-result-object v2

    check-cast v2, Lcom/guochao/faceshow/session/model/UserSessionModel;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lcom/guochao/faceshow/session/model/UserSessionModel;->getUserId()Ljava/lang/String;

    move-result-object v4

    :cond_1
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 6
    invoke-static {v0, v1, v3}, Lcom/guochao/faceshow/aaspring/utils/SpUtils;->getInt(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/guochao/faceshow/signin/SigninManager;->mActivityWatchLiveSecond:I

    const-wide/16 v0, 0x0

    .line 7
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    sput-object v0, Lcom/guochao/faceshow/signin/SigninManager;->diff:Ljava/lang/Long;

    .line 8
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/guochao/faceshow/signin/SigninManager;->rechargeListeners:Ljava/util/List;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic checkSignInTask$default(Lcom/guochao/faceshow/signin/SigninManager;Landroidx/fragment/app/FragmentActivity;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/guochao/faceshow/signin/SigninManager;->checkSignInTask(Landroidx/fragment/app/FragmentActivity;Lkotlin/jvm/functions/Function1;)V

    return-void
.end method


# virtual methods
.method public final addLiveMessageCount()V
    .locals 15

    .line 1
    invoke-virtual {p0}, Lcom/guochao/faceshow/signin/SigninManager;->getToday()Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-virtual {p0}, Lcom/guochao/faceshow/signin/SigninManager;->getMSigninCache()Lcom/guochao/faceshow/signin/bean/SigninCache;

    move-result-object v1

    const/4 v2, 0x0

    const-string v3, "SigninCache"

    if-nez v1, :cond_2

    .line 3
    invoke-static {}, Lcom/guochao/faceshow/utils/GsonGetter;->getGson()Lcom/google/gson/Gson;

    move-result-object v1

    invoke-static {}, Lcom/guochao/faceshow/context/GCApplication;->app()Lcom/guochao/faceshow/context/GCApplication;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v6, Lcom/guochao/faceshow/session/viewmodel/UserSessionViewModel;->Companion:Lcom/guochao/faceshow/session/viewmodel/UserSessionViewModel$Companion;

    invoke-virtual {v6}, Lcom/guochao/faceshow/session/viewmodel/UserSessionViewModel$Companion;->instance()Lcom/guochao/faceshow/session/viewmodel/UserSessionViewModel;

    move-result-object v6

    invoke-virtual {v6}, Lcom/guochao/faceshow/aaspring/base/mvvm/viewmodel/BaseViewModel;->current()Lcom/guochao/faceshow/aaspring/base/mvvm/model/BaseModel;

    move-result-object v6

    check-cast v6, Lcom/guochao/faceshow/session/model/UserSessionModel;

    if-eqz v6, :cond_0

    invoke-virtual {v6}, Lcom/guochao/faceshow/session/model/UserSessionModel;->getUserId()Ljava/lang/String;

    move-result-object v6

    goto :goto_0

    :cond_0
    move-object v6, v2

    :goto_0
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, ""

    invoke-static {v4, v5, v6}, Lcom/guochao/faceshow/aaspring/utils/SpUtils;->getStr(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-class v5, Lcom/guochao/faceshow/signin/bean/SigninCache;

    invoke-virtual {v1, v4, v5}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/guochao/faceshow/signin/bean/SigninCache;

    if-nez v1, :cond_1

    new-instance v1, Lcom/guochao/faceshow/signin/bean/SigninCache;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/16 v13, 0xff

    const/4 v14, 0x0

    move-object v4, v1

    invoke-direct/range {v4 .. v14}, Lcom/guochao/faceshow/signin/bean/SigninCache;-><init>(Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;IIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 4
    :cond_1
    sput-object v1, Lcom/guochao/faceshow/signin/SigninManager;->mSigninCache:Lcom/guochao/faceshow/signin/bean/SigninCache;

    .line 5
    :cond_2
    invoke-virtual {p0}, Lcom/guochao/faceshow/signin/SigninManager;->getMSigninCache()Lcom/guochao/faceshow/signin/bean/SigninCache;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 6
    invoke-virtual {v1}, Lcom/guochao/faceshow/signin/bean/SigninCache;->getDaySendMsgTime()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    const/4 v5, 0x1

    if-nez v4, :cond_3

    .line 7
    invoke-virtual {v1, v0}, Lcom/guochao/faceshow/signin/bean/SigninCache;->setDaySendMsgTime(Ljava/lang/String;)V

    .line 8
    invoke-virtual {v1, v5}, Lcom/guochao/faceshow/signin/bean/SigninCache;->setDaySendMsgCount(I)V

    goto :goto_1

    .line 9
    :cond_3
    invoke-virtual {v1}, Lcom/guochao/faceshow/signin/bean/SigninCache;->getDaySendMsgCount()I

    move-result v4

    add-int/2addr v4, v5

    invoke-virtual {v1, v4}, Lcom/guochao/faceshow/signin/bean/SigninCache;->setDaySendMsgCount(I)V

    .line 10
    :goto_1
    invoke-virtual {v1, v0}, Lcom/guochao/faceshow/signin/bean/SigninCache;->setGrowSendMsgTime(Ljava/lang/String;)V

    .line 11
    invoke-virtual {v1}, Lcom/guochao/faceshow/signin/bean/SigninCache;->getGrowSendMsgCount()I

    move-result v0

    add-int/2addr v0, v5

    invoke-virtual {v1, v0}, Lcom/guochao/faceshow/signin/bean/SigninCache;->setGrowSendMsgCount(I)V

    .line 12
    invoke-static {}, Lcom/guochao/faceshow/context/GCApplication;->app()Lcom/guochao/faceshow/context/GCApplication;

    move-result-object v0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lcom/guochao/faceshow/session/viewmodel/UserSessionViewModel;->Companion:Lcom/guochao/faceshow/session/viewmodel/UserSessionViewModel$Companion;

    invoke-virtual {v3}, Lcom/guochao/faceshow/session/viewmodel/UserSessionViewModel$Companion;->instance()Lcom/guochao/faceshow/session/viewmodel/UserSessionViewModel;

    move-result-object v3

    invoke-virtual {v3}, Lcom/guochao/faceshow/aaspring/base/mvvm/viewmodel/BaseViewModel;->current()Lcom/guochao/faceshow/aaspring/base/mvvm/model/BaseModel;

    move-result-object v3

    check-cast v3, Lcom/guochao/faceshow/session/model/UserSessionModel;

    if-eqz v3, :cond_4

    invoke-virtual {v3}, Lcom/guochao/faceshow/session/model/UserSessionModel;->getUserId()Ljava/lang/String;

    move-result-object v2

    :cond_4
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lcom/guochao/faceshow/utils/GsonGetter;->getGson()Lcom/google/gson/Gson;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v2, v1}, Lcom/guochao/faceshow/aaspring/utils/SpUtils;->setStr(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    return-void
.end method

.method public final checkDayTask()V
    .locals 15

    .line 1
    invoke-virtual {p0}, Lcom/guochao/faceshow/signin/SigninManager;->getToday()Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-virtual {p0}, Lcom/guochao/faceshow/signin/SigninManager;->getMSigninCache()Lcom/guochao/faceshow/signin/bean/SigninCache;

    move-result-object v1

    const/4 v2, 0x0

    const-string v3, "SigninCache"

    if-nez v1, :cond_2

    .line 3
    invoke-static {}, Lcom/guochao/faceshow/utils/GsonGetter;->getGson()Lcom/google/gson/Gson;

    move-result-object v1

    invoke-static {}, Lcom/guochao/faceshow/context/GCApplication;->app()Lcom/guochao/faceshow/context/GCApplication;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v6, Lcom/guochao/faceshow/session/viewmodel/UserSessionViewModel;->Companion:Lcom/guochao/faceshow/session/viewmodel/UserSessionViewModel$Companion;

    invoke-virtual {v6}, Lcom/guochao/faceshow/session/viewmodel/UserSessionViewModel$Companion;->instance()Lcom/guochao/faceshow/session/viewmodel/UserSessionViewModel;

    move-result-object v6

    invoke-virtual {v6}, Lcom/guochao/faceshow/aaspring/base/mvvm/viewmodel/BaseViewModel;->current()Lcom/guochao/faceshow/aaspring/base/mvvm/model/BaseModel;

    move-result-object v6

    check-cast v6, Lcom/guochao/faceshow/session/model/UserSessionModel;

    if-eqz v6, :cond_0

    invoke-virtual {v6}, Lcom/guochao/faceshow/session/model/UserSessionModel;->getUserId()Ljava/lang/String;

    move-result-object v6

    goto :goto_0

    :cond_0
    move-object v6, v2

    :goto_0
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, ""

    invoke-static {v4, v5, v6}, Lcom/guochao/faceshow/aaspring/utils/SpUtils;->getStr(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-class v5, Lcom/guochao/faceshow/signin/bean/SigninCache;

    invoke-virtual {v1, v4, v5}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/guochao/faceshow/signin/bean/SigninCache;

    if-nez v1, :cond_1

    new-instance v1, Lcom/guochao/faceshow/signin/bean/SigninCache;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/16 v13, 0xff

    const/4 v14, 0x0

    move-object v4, v1

    invoke-direct/range {v4 .. v14}, Lcom/guochao/faceshow/signin/bean/SigninCache;-><init>(Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;IIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 4
    :cond_1
    sput-object v1, Lcom/guochao/faceshow/signin/SigninManager;->mSigninCache:Lcom/guochao/faceshow/signin/bean/SigninCache;

    .line 5
    :cond_2
    invoke-virtual {p0}, Lcom/guochao/faceshow/signin/SigninManager;->getMSigninCache()Lcom/guochao/faceshow/signin/bean/SigninCache;

    move-result-object v1

    if-eqz v1, :cond_6

    .line 6
    invoke-virtual {v1}, Lcom/guochao/faceshow/signin/bean/SigninCache;->getDaySendMsgTime()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    const/4 v5, 0x0

    if-nez v4, :cond_3

    .line 7
    invoke-virtual {v1, v0}, Lcom/guochao/faceshow/signin/bean/SigninCache;->setDaySendMsgTime(Ljava/lang/String;)V

    .line 8
    invoke-virtual {v1, v5}, Lcom/guochao/faceshow/signin/bean/SigninCache;->setDaySendMsgCount(I)V

    .line 9
    :cond_3
    invoke-virtual {v1}, Lcom/guochao/faceshow/signin/bean/SigninCache;->getDayWatchLiveTime()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 10
    invoke-virtual {v1, v0}, Lcom/guochao/faceshow/signin/bean/SigninCache;->setDayWatchLiveTime(Ljava/lang/String;)V

    .line 11
    invoke-virtual {v1, v5}, Lcom/guochao/faceshow/signin/bean/SigninCache;->setDayWatchCount(I)V

    .line 12
    :cond_4
    invoke-static {}, Lcom/guochao/faceshow/context/GCApplication;->app()Lcom/guochao/faceshow/context/GCApplication;

    move-result-object v0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lcom/guochao/faceshow/session/viewmodel/UserSessionViewModel;->Companion:Lcom/guochao/faceshow/session/viewmodel/UserSessionViewModel$Companion;

    invoke-virtual {v3}, Lcom/guochao/faceshow/session/viewmodel/UserSessionViewModel$Companion;->instance()Lcom/guochao/faceshow/session/viewmodel/UserSessionViewModel;

    move-result-object v3

    invoke-virtual {v3}, Lcom/guochao/faceshow/aaspring/base/mvvm/viewmodel/BaseViewModel;->current()Lcom/guochao/faceshow/aaspring/base/mvvm/model/BaseModel;

    move-result-object v3

    check-cast v3, Lcom/guochao/faceshow/session/model/UserSessionModel;

    if-eqz v3, :cond_5

    invoke-virtual {v3}, Lcom/guochao/faceshow/session/model/UserSessionModel;->getUserId()Ljava/lang/String;

    move-result-object v2

    :cond_5
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lcom/guochao/faceshow/utils/GsonGetter;->getGson()Lcom/google/gson/Gson;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v2, v1}, Lcom/guochao/faceshow/aaspring/utils/SpUtils;->setStr(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    :cond_6
    return-void
.end method

.method public final checkSignInTask(Landroidx/fragment/app/FragmentActivity;Lkotlin/jvm/functions/Function1;)V
    .locals 7
    .param p1    # Landroidx/fragment/app/FragmentActivity;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lkotlin/jvm/functions/Function1;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/fragment/app/FragmentActivity;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/guochao/faceshow/signin/bean/SigninResponse;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {v0}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    .line 2
    invoke-static {}, Lkotlinx/coroutines/CoroutineScopeKt;->MainScope()Lkotlinx/coroutines/CoroutineScope;

    move-result-object v1

    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getMain()Lkotlinx/coroutines/MainCoroutineDispatcher;

    move-result-object v2

    new-instance v4, Lcom/guochao/faceshow/signin/SigninManager$checkSignInTask$1;

    const/4 v3, 0x0

    invoke-direct {v4, p1, p2, v0, v3}, Lcom/guochao/faceshow/signin/SigninManager$checkSignInTask$1;-><init>(Landroidx/fragment/app/FragmentActivity;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/internal/Ref$ObjectRef;Lkotlin/coroutines/Continuation;)V

    const/4 v5, 0x2

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    return-void
.end method

.method public final getMActivityWatchLiveSecond()I
    .locals 1

    sget v0, Lcom/guochao/faceshow/signin/SigninManager;->mActivityWatchLiveSecond:I

    return v0
.end method

.method public final getMLiveTimer()Ljava/util/Timer;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    sget-object v0, Lcom/guochao/faceshow/signin/SigninManager;->mLiveTimer:Ljava/util/Timer;

    return-object v0
.end method

.method public final getMLiveTimerTask()Ljava/util/TimerTask;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    sget-object v0, Lcom/guochao/faceshow/signin/SigninManager;->mLiveTimerTask:Ljava/util/TimerTask;

    return-object v0
.end method

.method public final getMSigninCache()Lcom/guochao/faceshow/signin/bean/SigninCache;
    .locals 12
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    invoke-static {}, Lcom/guochao/faceshow/utils/GsonGetter;->getGson()Lcom/google/gson/Gson;

    move-result-object v0

    invoke-static {}, Lcom/guochao/faceshow/context/GCApplication;->app()Lcom/guochao/faceshow/context/GCApplication;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SigninCache"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lcom/guochao/faceshow/session/viewmodel/UserSessionViewModel;->Companion:Lcom/guochao/faceshow/session/viewmodel/UserSessionViewModel$Companion;

    invoke-virtual {v3}, Lcom/guochao/faceshow/session/viewmodel/UserSessionViewModel$Companion;->instance()Lcom/guochao/faceshow/session/viewmodel/UserSessionViewModel;

    move-result-object v3

    invoke-virtual {v3}, Lcom/guochao/faceshow/aaspring/base/mvvm/viewmodel/BaseViewModel;->current()Lcom/guochao/faceshow/aaspring/base/mvvm/model/BaseModel;

    move-result-object v3

    check-cast v3, Lcom/guochao/faceshow/session/model/UserSessionModel;

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Lcom/guochao/faceshow/session/model/UserSessionModel;->getUserId()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    invoke-static {v1, v2, v3}, Lcom/guochao/faceshow/aaspring/utils/SpUtils;->getStr(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-class v2, Lcom/guochao/faceshow/signin/bean/SigninCache;

    invoke-virtual {v0, v1, v2}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/guochao/faceshow/signin/bean/SigninCache;

    if-nez v0, :cond_1

    new-instance v0, Lcom/guochao/faceshow/signin/bean/SigninCache;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/16 v10, 0xff

    const/4 v11, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v11}, Lcom/guochao/faceshow/signin/bean/SigninCache;-><init>(Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;IIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    :cond_1
    return-object v0
.end method

.method public final getMWatchLiveSecond()I
    .locals 1

    sget v0, Lcom/guochao/faceshow/signin/SigninManager;->mWatchLiveSecond:I

    return v0
.end method

.method public final getRechargeListeners()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/guochao/faceshow/signin/RechargeListener;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    sget-object v0, Lcom/guochao/faceshow/signin/SigninManager;->rechargeListeners:Ljava/util/List;

    return-object v0
.end method

.method public final getToday()Ljava/lang/String;
    .locals 7
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "EST5EDT"

    const-string/jumbo v1, "yyyy-MM-dd"

    .line 1
    :try_start_0
    new-instance v2, Ljava/util/Date;

    sget-object v3, Lcom/guochao/faceshow/signin/SigninManager;->diff:Ljava/lang/Long;

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    goto :goto_0

    :cond_0
    const-wide/16 v3, 0x0

    :goto_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    add-long/2addr v3, v5

    invoke-direct {v2, v3, v4}, Ljava/util/Date;-><init>(J)V

    .line 2
    new-instance v3, Ljava/text/SimpleDateFormat;

    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v3, v1, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 3
    invoke-static {v0}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 4
    invoke-virtual {v3, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "result.format(date)"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    :catch_0
    move-exception v2

    .line 5
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 6
    new-instance v2, Ljava/text/SimpleDateFormat;

    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v2, v1, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 7
    invoke-static {v0}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 8
    new-instance v0, Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-direct {v0, v3, v4}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v2, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "result.format(Date(System.currentTimeMillis()))"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public final getTodayTime()J
    .locals 3

    .line 1
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    const/16 v1, 0xb

    const/4 v2, 0x0

    .line 2
    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    const/16 v1, 0xc

    .line 3
    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    const/16 v1, 0xe

    const/4 v2, 0x1

    .line 4
    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    .line 5
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method public final registerRechargeListener(Lcom/guochao/faceshow/signin/RechargeListener;)V
    .locals 1
    .param p1    # Lcom/guochao/faceshow/signin/RechargeListener;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "listener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object v0, Lcom/guochao/faceshow/signin/SigninManager;->rechargeListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    sget-object v0, Lcom/guochao/faceshow/signin/SigninManager;->rechargeListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final releaseWatchLiveListener()V
    .locals 1

    .line 1
    sget-object v0, Lcom/guochao/faceshow/signin/SigninManager;->mLiveTimer:Ljava/util/Timer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 2
    :cond_0
    sget-object v0, Lcom/guochao/faceshow/signin/SigninManager;->mLiveTimerTask:Ljava/util/TimerTask;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/util/TimerTask;->cancel()Z

    :cond_1
    const/4 v0, 0x0

    .line 3
    sput-object v0, Lcom/guochao/faceshow/signin/SigninManager;->mLiveTimer:Ljava/util/Timer;

    .line 4
    sput-object v0, Lcom/guochao/faceshow/signin/SigninManager;->mLiveTimerTask:Ljava/util/TimerTask;

    return-void
.end method

.method public final resetActivityWatchLiveSecond(Ljava/lang/Integer;)V
    .locals 4
    .param p1    # Ljava/lang/Integer;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-static {}, Lcom/guochao/faceshow/context/GCApplication;->app()Lcom/guochao/faceshow/context/GCApplication;

    move-result-object v0

    .line 2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ActivityWatchLiveDate"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/guochao/faceshow/session/viewmodel/UserSessionViewModel;->Companion:Lcom/guochao/faceshow/session/viewmodel/UserSessionViewModel$Companion;

    invoke-virtual {v2}, Lcom/guochao/faceshow/session/viewmodel/UserSessionViewModel$Companion;->instance()Lcom/guochao/faceshow/session/viewmodel/UserSessionViewModel;

    move-result-object v2

    invoke-virtual {v2}, Lcom/guochao/faceshow/aaspring/base/mvvm/viewmodel/BaseViewModel;->current()Lcom/guochao/faceshow/aaspring/base/mvvm/model/BaseModel;

    move-result-object v2

    check-cast v2, Lcom/guochao/faceshow/session/model/UserSessionModel;

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/guochao/faceshow/session/model/UserSessionModel;->getUserId()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 3
    invoke-static {v0, v1}, Lcom/guochao/faceshow/aaspring/utils/SpUtils;->getLong(Landroid/content/Context;Ljava/lang/String;)J

    move-result-wide v0

    .line 4
    invoke-virtual {p0}, Lcom/guochao/faceshow/signin/SigninManager;->getTodayTime()J

    move-result-wide v2

    sub-long/2addr v2, v0

    const v0, 0x5265c00

    if-eqz p1, :cond_1

    .line 5
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    goto :goto_1

    :cond_1
    const/4 p1, 0x1

    :goto_1
    mul-int p1, p1, v0

    int-to-long v0, p1

    cmp-long p1, v2, v0

    if-lez p1, :cond_2

    const/4 p1, 0x0

    .line 6
    invoke-virtual {p0, p1}, Lcom/guochao/faceshow/signin/SigninManager;->setMActivityWatchLiveSecond(I)V

    :cond_2
    return-void
.end method

.method public final resetCount(Z)V
    .locals 11

    if-eqz p1, :cond_2

    .line 1
    invoke-static {}, Lcom/guochao/faceshow/utils/GsonGetter;->getGson()Lcom/google/gson/Gson;

    move-result-object p1

    invoke-static {}, Lcom/guochao/faceshow/context/GCApplication;->app()Lcom/guochao/faceshow/context/GCApplication;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SigninCache"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/guochao/faceshow/session/viewmodel/UserSessionViewModel;->Companion:Lcom/guochao/faceshow/session/viewmodel/UserSessionViewModel$Companion;

    invoke-virtual {v2}, Lcom/guochao/faceshow/session/viewmodel/UserSessionViewModel$Companion;->instance()Lcom/guochao/faceshow/session/viewmodel/UserSessionViewModel;

    move-result-object v2

    invoke-virtual {v2}, Lcom/guochao/faceshow/aaspring/base/mvvm/viewmodel/BaseViewModel;->current()Lcom/guochao/faceshow/aaspring/base/mvvm/model/BaseModel;

    move-result-object v2

    check-cast v2, Lcom/guochao/faceshow/session/model/UserSessionModel;

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/guochao/faceshow/session/model/UserSessionModel;->getUserId()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-static {v0, v1, v2}, Lcom/guochao/faceshow/aaspring/utils/SpUtils;->getStr(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-class v1, Lcom/guochao/faceshow/signin/bean/SigninCache;

    invoke-virtual {p1, v0, v1}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/guochao/faceshow/signin/bean/SigninCache;

    if-nez p1, :cond_1

    new-instance p1, Lcom/guochao/faceshow/signin/bean/SigninCache;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/16 v9, 0xff

    const/4 v10, 0x0

    move-object v0, p1

    invoke-direct/range {v0 .. v10}, Lcom/guochao/faceshow/signin/bean/SigninCache;-><init>(Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;IIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 2
    :cond_1
    sput-object p1, Lcom/guochao/faceshow/signin/SigninManager;->mSigninCache:Lcom/guochao/faceshow/signin/bean/SigninCache;

    goto :goto_1

    .line 3
    :cond_2
    new-instance p1, Lcom/guochao/faceshow/signin/bean/SigninCache;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/16 v9, 0xff

    const/4 v10, 0x0

    move-object v0, p1

    invoke-direct/range {v0 .. v10}, Lcom/guochao/faceshow/signin/bean/SigninCache;-><init>(Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;IIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object p1, Lcom/guochao/faceshow/signin/SigninManager;->mSigninCache:Lcom/guochao/faceshow/signin/bean/SigninCache;

    :goto_1
    return-void
.end method

.method public final setMActivityWatchLiveSecond(I)V
    .locals 6

    .line 1
    sget v0, Lcom/guochao/faceshow/signin/SigninManager;->mActivityWatchLiveSecond:I

    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 2
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    const/16 v2, 0xb

    const/4 v3, 0x0

    .line 3
    invoke-virtual {v0, v2, v3}, Ljava/util/Calendar;->set(II)V

    const/16 v2, 0xc

    .line 4
    invoke-virtual {v0, v2, v3}, Ljava/util/Calendar;->set(II)V

    const/16 v2, 0xe

    const/4 v3, 0x1

    .line 5
    invoke-virtual {v0, v2, v3}, Ljava/util/Calendar;->set(II)V

    .line 6
    invoke-static {}, Lcom/guochao/faceshow/context/GCApplication;->app()Lcom/guochao/faceshow/context/GCApplication;

    move-result-object v2

    .line 7
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ActivityWatchLiveDate"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v4, Lcom/guochao/faceshow/session/viewmodel/UserSessionViewModel;->Companion:Lcom/guochao/faceshow/session/viewmodel/UserSessionViewModel$Companion;

    invoke-virtual {v4}, Lcom/guochao/faceshow/session/viewmodel/UserSessionViewModel$Companion;->instance()Lcom/guochao/faceshow/session/viewmodel/UserSessionViewModel;

    move-result-object v4

    invoke-virtual {v4}, Lcom/guochao/faceshow/aaspring/base/mvvm/viewmodel/BaseViewModel;->current()Lcom/guochao/faceshow/aaspring/base/mvvm/model/BaseModel;

    move-result-object v4

    check-cast v4, Lcom/guochao/faceshow/session/model/UserSessionModel;

    if-eqz v4, :cond_0

    invoke-virtual {v4}, Lcom/guochao/faceshow/session/model/UserSessionModel;->getUserId()Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    :cond_0
    move-object v4, v1

    :goto_0
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 8
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v4

    .line 9
    invoke-static {v2, v3, v4, v5}, Lcom/guochao/faceshow/aaspring/utils/SpUtils;->setLong(Landroid/content/Context;Ljava/lang/String;J)V

    .line 10
    :cond_1
    sput p1, Lcom/guochao/faceshow/signin/SigninManager;->mActivityWatchLiveSecond:I

    .line 11
    invoke-static {}, Lcom/guochao/faceshow/context/GCApplication;->app()Lcom/guochao/faceshow/context/GCApplication;

    move-result-object v0

    .line 12
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ActivityWatchLiveSecond"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lcom/guochao/faceshow/session/viewmodel/UserSessionViewModel;->Companion:Lcom/guochao/faceshow/session/viewmodel/UserSessionViewModel$Companion;

    invoke-virtual {v3}, Lcom/guochao/faceshow/session/viewmodel/UserSessionViewModel$Companion;->instance()Lcom/guochao/faceshow/session/viewmodel/UserSessionViewModel;

    move-result-object v3

    invoke-virtual {v3}, Lcom/guochao/faceshow/aaspring/base/mvvm/viewmodel/BaseViewModel;->current()Lcom/guochao/faceshow/aaspring/base/mvvm/model/BaseModel;

    move-result-object v3

    check-cast v3, Lcom/guochao/faceshow/session/model/UserSessionModel;

    if-eqz v3, :cond_2

    invoke-virtual {v3}, Lcom/guochao/faceshow/session/model/UserSessionModel;->getUserId()Ljava/lang/String;

    move-result-object v1

    :cond_2
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 13
    invoke-static {v0, v1, p1}, Lcom/guochao/faceshow/aaspring/utils/SpUtils;->setInt(Landroid/content/Context;Ljava/lang/String;I)V

    return-void
.end method

.method public final setMLiveTimer(Ljava/util/Timer;)V
    .locals 0
    .param p1    # Ljava/util/Timer;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    sput-object p1, Lcom/guochao/faceshow/signin/SigninManager;->mLiveTimer:Ljava/util/Timer;

    return-void
.end method

.method public final setMLiveTimerTask(Ljava/util/TimerTask;)V
    .locals 0
    .param p1    # Ljava/util/TimerTask;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    sput-object p1, Lcom/guochao/faceshow/signin/SigninManager;->mLiveTimerTask:Ljava/util/TimerTask;

    return-void
.end method

.method public final setMSigninCache(Lcom/guochao/faceshow/signin/bean/SigninCache;)V
    .locals 0
    .param p1    # Lcom/guochao/faceshow/signin/bean/SigninCache;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    sput-object p1, Lcom/guochao/faceshow/signin/SigninManager;->mSigninCache:Lcom/guochao/faceshow/signin/bean/SigninCache;

    return-void
.end method

.method public final setMWatchLiveSecond(I)V
    .locals 3

    .line 1
    sput p1, Lcom/guochao/faceshow/signin/SigninManager;->mWatchLiveSecond:I

    .line 2
    invoke-static {}, Lcom/guochao/faceshow/context/GCApplication;->app()Lcom/guochao/faceshow/context/GCApplication;

    move-result-object v0

    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "WatchLiveSecond"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/guochao/faceshow/session/viewmodel/UserSessionViewModel;->Companion:Lcom/guochao/faceshow/session/viewmodel/UserSessionViewModel$Companion;

    invoke-virtual {v2}, Lcom/guochao/faceshow/session/viewmodel/UserSessionViewModel$Companion;->instance()Lcom/guochao/faceshow/session/viewmodel/UserSessionViewModel;

    move-result-object v2

    invoke-virtual {v2}, Lcom/guochao/faceshow/aaspring/base/mvvm/viewmodel/BaseViewModel;->current()Lcom/guochao/faceshow/aaspring/base/mvvm/model/BaseModel;

    move-result-object v2

    check-cast v2, Lcom/guochao/faceshow/session/model/UserSessionModel;

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/guochao/faceshow/session/model/UserSessionModel;->getUserId()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 4
    invoke-static {v0, v1, p1}, Lcom/guochao/faceshow/aaspring/utils/SpUtils;->setInt(Landroid/content/Context;Ljava/lang/String;I)V

    return-void
.end method

.method public final setRechargeListeners(Ljava/util/List;)V
    .locals 1
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/guochao/faceshow/signin/RechargeListener;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sput-object p1, Lcom/guochao/faceshow/signin/SigninManager;->rechargeListeners:Ljava/util/List;

    return-void
.end method

.method public final setServerDiffTime(J)V
    .locals 0

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    sput-object p1, Lcom/guochao/faceshow/signin/SigninManager;->diff:Ljava/lang/Long;

    return-void
.end method

.method public final startWatchLiveListener()V
    .locals 7

    .line 1
    sget-object v0, Lcom/guochao/faceshow/signin/SigninManager;->mLiveTimer:Ljava/util/Timer;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/guochao/faceshow/signin/SigninManager;->mLiveTimerTask:Ljava/util/TimerTask;

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    new-instance v0, Lcom/guochao/faceshow/signin/SigninManager$startWatchLiveListener$1;

    invoke-direct {v0}, Lcom/guochao/faceshow/signin/SigninManager$startWatchLiveListener$1;-><init>()V

    sput-object v0, Lcom/guochao/faceshow/signin/SigninManager;->mLiveTimerTask:Ljava/util/TimerTask;

    .line 3
    new-instance v1, Ljava/util/Timer;

    invoke-direct {v1}, Ljava/util/Timer;-><init>()V

    sput-object v1, Lcom/guochao/faceshow/signin/SigninManager;->mLiveTimer:Ljava/util/Timer;

    .line 4
    sget-object v2, Lcom/guochao/faceshow/signin/SigninManager;->mLiveTimerTask:Ljava/util/TimerTask;

    const-wide/32 v3, 0xea60

    const-wide/32 v5, 0xea60

    invoke-virtual/range {v1 .. v6}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    return-void
.end method

.method public final unRegisterRechargeListener(Lcom/guochao/faceshow/signin/RechargeListener;)V
    .locals 1
    .param p1    # Lcom/guochao/faceshow/signin/RechargeListener;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "listener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object v0, Lcom/guochao/faceshow/signin/SigninManager;->rechargeListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    sget-object v0, Lcom/guochao/faceshow/signin/SigninManager;->rechargeListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method
