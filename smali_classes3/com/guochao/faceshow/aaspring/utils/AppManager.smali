.class public Lcom/guochao/faceshow/aaspring/utils/AppManager;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static mActivityStack:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field

.field private static mAppManager:Lcom/guochao/faceshow/aaspring/utils/AppManager;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/guochao/faceshow/aaspring/utils/AppManager;
    .locals 1

    .line 1
    sget-object v0, Lcom/guochao/faceshow/aaspring/utils/AppManager;->mAppManager:Lcom/guochao/faceshow/aaspring/utils/AppManager;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lcom/guochao/faceshow/aaspring/utils/AppManager;

    invoke-direct {v0}, Lcom/guochao/faceshow/aaspring/utils/AppManager;-><init>()V

    sput-object v0, Lcom/guochao/faceshow/aaspring/utils/AppManager;->mAppManager:Lcom/guochao/faceshow/aaspring/utils/AppManager;

    .line 3
    :cond_0
    sget-object v0, Lcom/guochao/faceshow/aaspring/utils/AppManager;->mAppManager:Lcom/guochao/faceshow/aaspring/utils/AppManager;

    return-object v0
.end method


# virtual methods
.method public AppExit(Landroid/content/Context;)V
    .locals 0

    .line 1
    :try_start_0
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/utils/AppManager;->killAllActivity()V

    const/4 p1, 0x0

    .line 2
    invoke-static {p1}, Ljava/lang/System;->exit(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public addActivity(Landroid/app/Activity;)V
    .locals 1

    .line 1
    sget-object v0, Lcom/guochao/faceshow/aaspring/utils/AppManager;->mActivityStack:Ljava/util/Stack;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    sput-object v0, Lcom/guochao/faceshow/aaspring/utils/AppManager;->mActivityStack:Ljava/util/Stack;

    .line 3
    :cond_0
    sget-object v0, Lcom/guochao/faceshow/aaspring/utils/AppManager;->mActivityStack:Ljava/util/Stack;

    invoke-virtual {v0, p1}, Ljava/util/Stack;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public containActivity(Landroid/app/Activity;)Z
    .locals 2

    const/4 v0, 0x0

    .line 4
    :try_start_0
    sget-object v1, Lcom/guochao/faceshow/aaspring/utils/AppManager;->mActivityStack:Ljava/util/Stack;

    if-eqz v1, :cond_0

    invoke-virtual {v1, p1}, Ljava/util/Stack;->contains(Ljava/lang/Object;)Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0

    :catch_0
    move-exception p1

    .line 5
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    return v0
.end method

.method public containActivity(Ljava/lang/Class;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)Z"
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    :try_start_0
    sget-object v1, Lcom/guochao/faceshow/aaspring/utils/AppManager;->mActivityStack:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/Activity;

    .line 2
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v2, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_1
    return v0

    :catch_0
    move-exception p1

    .line 3
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    return v0
.end method

.method public finishWatch(Lcom/guochao/faceshow/aaspring/modulars/live/activity/WatchLiveRoomActivity;)V
    .locals 3

    .line 1
    sget-object v0, Lcom/guochao/faceshow/aaspring/utils/AppManager;->mActivityStack:Ljava/util/Stack;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 2
    :goto_0
    sget-object v1, Lcom/guochao/faceshow/aaspring/utils/AppManager;->mActivityStack:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 3
    sget-object v1, Lcom/guochao/faceshow/aaspring/utils/AppManager;->mActivityStack:Ljava/util/Stack;

    invoke-virtual {v1, v0}, Ljava/util/Stack;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/Activity;

    .line 4
    instance-of v2, v1, Lcom/guochao/faceshow/aaspring/modulars/live/activity/WatchLiveRoomActivity;

    if-eqz v2, :cond_1

    if-eq v1, p1, :cond_1

    .line 5
    invoke-virtual {v1}, Landroid/app/Activity;->finish()V

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public getActivity(Ljava/lang/Class;)Landroid/app/Activity;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Landroid/app/Activity;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    :try_start_0
    sget-object v1, Lcom/guochao/faceshow/aaspring/utils/AppManager;->mActivityStack:Ljava/util/Stack;

    if-eqz v1, :cond_1

    .line 2
    invoke-virtual {v1}, Ljava/util/Stack;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/Activity;

    .line 3
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v3, :cond_0

    return-object v2

    :cond_1
    return-object v0

    :catch_0
    move-exception p1

    .line 4
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    return-object v0
.end method

.method public getActivityBeforeWatchRoom()Ljava/lang/Class;
    .locals 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "+",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation

    .line 1
    :try_start_0
    sget-object v0, Lcom/guochao/faceshow/aaspring/utils/AppManager;->mActivityStack:Ljava/util/Stack;

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    .line 2
    :goto_0
    sget-object v1, Lcom/guochao/faceshow/aaspring/utils/AppManager;->mActivityStack:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 3
    sget-object v1, Lcom/guochao/faceshow/aaspring/utils/AppManager;->mActivityStack:Ljava/util/Stack;

    invoke-virtual {v1, v0}, Ljava/util/Stack;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/Activity;

    .line 4
    instance-of v1, v1, Lcom/guochao/faceshow/aaspring/modulars/live/activity/WatchLiveRoomActivity;

    if-eqz v1, :cond_0

    add-int/lit8 v0, v0, -0x1

    .line 5
    sget-object v1, Lcom/guochao/faceshow/aaspring/utils/AppManager;->mActivityStack:Ljava/util/Stack;

    invoke-virtual {v1, v0}, Ljava/util/Stack;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    .line 6
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 7
    :cond_1
    const-class v0, Lcom/guochao/faceshow/activity/MainActivity;

    return-object v0
.end method

.method public getActivityStack()Ljava/util/Stack;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Stack<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/guochao/faceshow/aaspring/utils/AppManager;->mActivityStack:Ljava/util/Stack;

    return-object v0
.end method

.method public getTopActivity()Landroid/app/Activity;
    .locals 2

    .line 1
    sget-object v0, Lcom/guochao/faceshow/aaspring/utils/AppManager;->mActivityStack:Ljava/util/Stack;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 2
    :cond_0
    invoke-virtual {v0}, Ljava/util/Stack;->empty()Z

    move-result v0

    if-eqz v0, :cond_1

    return-object v1

    .line 3
    :cond_1
    sget-object v0, Lcom/guochao/faceshow/aaspring/utils/AppManager;->mActivityStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->lastElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    return-object v0
.end method

.method public killActivity(Landroid/app/Activity;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 1
    sget-object v0, Lcom/guochao/faceshow/aaspring/utils/AppManager;->mActivityStack:Ljava/util/Stack;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1}, Ljava/util/Stack;->remove(Ljava/lang/Object;)Z

    .line 3
    invoke-virtual {p1}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public killActivity(Ljava/lang/Class;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    .line 4
    :try_start_0
    sget-object v0, Lcom/guochao/faceshow/aaspring/utils/AppManager;->mActivityStack:Ljava/util/Stack;

    if-eqz v0, :cond_1

    .line 5
    invoke-virtual {v0}, Ljava/util/Stack;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/Activity;

    .line 6
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 7
    invoke-virtual {p0, v1}, Lcom/guochao/faceshow/aaspring/utils/AppManager;->killActivity(Landroid/app/Activity;)V

    .line 8
    invoke-virtual {v1}, Landroid/app/Activity;->finish()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 9
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    return-void
.end method

.method public killAllActivity()V
    .locals 3

    .line 1
    sget-object v0, Lcom/guochao/faceshow/aaspring/utils/AppManager;->mActivityStack:Ljava/util/Stack;

    if-eqz v0, :cond_2

    const/4 v1, 0x0

    .line 2
    invoke-virtual {v0}, Ljava/util/Stack;->size()I

    move-result v0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 3
    sget-object v2, Lcom/guochao/faceshow/aaspring/utils/AppManager;->mActivityStack:Ljava/util/Stack;

    invoke-virtual {v2, v1}, Ljava/util/Stack;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 4
    sget-object v2, Lcom/guochao/faceshow/aaspring/utils/AppManager;->mActivityStack:Ljava/util/Stack;

    invoke-virtual {v2, v1}, Ljava/util/Stack;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->finish()V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 5
    :cond_1
    sget-object v0, Lcom/guochao/faceshow/aaspring/utils/AppManager;->mActivityStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->clear()V

    :cond_2
    return-void
.end method
