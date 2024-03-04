.class public final Lcom/guochao/faceshow/signin/SigninManager$startWatchLiveListener$1;
.super Ljava/util/TimerTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/signin/SigninManager;->startWatchLiveListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0011\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0008\u0010\u0002\u001a\u00020\u0003H\u0016\u00a8\u0006\u0004"
    }
    d2 = {
        "com/guochao/faceshow/signin/SigninManager$startWatchLiveListener$1",
        "Ljava/util/TimerTask;",
        "run",
        "",
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


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 15

    .line 1
    sget-object v0, Lcom/guochao/faceshow/signin/SigninManager;->INSTANCE:Lcom/guochao/faceshow/signin/SigninManager;

    invoke-virtual {v0}, Lcom/guochao/faceshow/signin/SigninManager;->getMSigninCache()Lcom/guochao/faceshow/signin/bean/SigninCache;

    move-result-object v1

    const/4 v2, 0x0

    const-string v3, "SigninCache"

    if-nez v1, :cond_2

    .line 2
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

    .line 3
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
    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/signin/SigninManager;->setMSigninCache(Lcom/guochao/faceshow/signin/bean/SigninCache;)V

    .line 5
    :cond_2
    invoke-virtual {v0}, Lcom/guochao/faceshow/signin/SigninManager;->getMSigninCache()Lcom/guochao/faceshow/signin/bean/SigninCache;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 6
    invoke-virtual {v0}, Lcom/guochao/faceshow/signin/SigninManager;->getToday()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1}, Lcom/guochao/faceshow/signin/bean/SigninCache;->getDayWatchLiveTime()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    const/16 v5, 0x3c

    if-nez v4, :cond_3

    .line 7
    invoke-virtual {v0}, Lcom/guochao/faceshow/signin/SigninManager;->getToday()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/guochao/faceshow/signin/bean/SigninCache;->setDayWatchLiveTime(Ljava/lang/String;)V

    .line 8
    invoke-virtual {v1, v5}, Lcom/guochao/faceshow/signin/bean/SigninCache;->setDayWatchCount(I)V

    goto :goto_1

    .line 9
    :cond_3
    invoke-virtual {v1}, Lcom/guochao/faceshow/signin/bean/SigninCache;->getDayWatchCount()I

    move-result v4

    add-int/2addr v4, v5

    invoke-virtual {v1, v4}, Lcom/guochao/faceshow/signin/bean/SigninCache;->setDayWatchCount(I)V

    .line 10
    :goto_1
    invoke-virtual {v0}, Lcom/guochao/faceshow/signin/SigninManager;->getToday()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/guochao/faceshow/signin/bean/SigninCache;->setGrowWatchLiveTime(Ljava/lang/String;)V

    .line 11
    invoke-virtual {v1}, Lcom/guochao/faceshow/signin/bean/SigninCache;->getGrowWatchCount()I

    move-result v4

    add-int/2addr v4, v5

    invoke-virtual {v1, v4}, Lcom/guochao/faceshow/signin/bean/SigninCache;->setGrowWatchCount(I)V

    .line 12
    invoke-static {}, Lcom/guochao/faceshow/context/GCApplication;->app()Lcom/guochao/faceshow/context/GCApplication;

    move-result-object v4

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

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
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lcom/guochao/faceshow/utils/GsonGetter;->getGson()Lcom/google/gson/Gson;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v2, v1}, Lcom/guochao/faceshow/aaspring/utils/SpUtils;->setStr(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 13
    invoke-virtual {v0}, Lcom/guochao/faceshow/signin/SigninManager;->getMActivityWatchLiveSecond()I

    move-result v1

    add-int/2addr v1, v5

    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/signin/SigninManager;->setMActivityWatchLiveSecond(I)V

    :cond_5
    return-void
.end method
