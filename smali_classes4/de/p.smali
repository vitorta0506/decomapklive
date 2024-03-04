.class public final Lde/p;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lde/a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lde/a<",
        "Lcom/snap/kit/sdk/model/SnapKitStorySnapView;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Landroid/content/SharedPreferences;

.field private final b:Lcom/snapchat/kit/sdk/core/metrics/MetricsClient;

.field private final c:Lfe/a;

.field private final d:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/content/SharedPreferences;Lcom/snapchat/kit/sdk/core/metrics/MetricsClient;Lfe/a;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lde/p;->a:Landroid/content/SharedPreferences;

    .line 3
    iput-object p2, p0, Lde/p;->b:Lcom/snapchat/kit/sdk/core/metrics/MetricsClient;

    .line 4
    iput-object p3, p0, Lde/p;->c:Lfe/a;

    .line 5
    iput-object p4, p0, Lde/p;->d:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final a(Ljava/util/List;)V
    .locals 2
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lde/f<",
            "Lcom/snap/kit/sdk/model/SnapKitStorySnapView;",
            ">;>;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lde/p;->a:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iget-object v1, p0, Lde/p;->c:Lfe/a;

    .line 2
    invoke-virtual {v1, p1}, Lfe/a;->a(Ljava/util/List;)Ljava/lang/String;

    move-result-object p1

    const-string/jumbo v1, "unsent_snap_view_events"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    .line 3
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public final b(Ljava/util/List;Lde/a$a;)V
    .locals 4
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/snap/kit/sdk/model/SnapKitStorySnapView;",
            ">;",
            "Lde/a$a;",
            ")V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lde/p;->b:Lcom/snapchat/kit/sdk/core/metrics/MetricsClient;

    .line 2
    new-instance v1, Lcom/snap/kit/sdk/model/SnapKitStorySnapViews$Builder;

    invoke-direct {v1}, Lcom/snap/kit/sdk/model/SnapKitStorySnapViews$Builder;-><init>()V

    .line 3
    invoke-virtual {v1, p1}, Lcom/snap/kit/sdk/model/SnapKitStorySnapViews$Builder;->views(Ljava/util/List;)Lcom/snap/kit/sdk/model/SnapKitStorySnapViews$Builder;

    move-result-object p1

    .line 4
    new-instance v1, Lcom/snap/kit/common/model/DeviceEnvironmentInfo$a;

    invoke-direct {v1}, Lcom/snap/kit/common/model/DeviceEnvironmentInfo$a;-><init>()V

    sget-object v2, Lcom/snap/kit/common/model/OsType$Enum;->ANDROID:Lcom/snap/kit/common/model/OsType$Enum;

    .line 5
    invoke-virtual {v1, v2}, Lcom/snap/kit/common/model/DeviceEnvironmentInfo$a;->f(Lcom/snap/kit/common/model/OsType$Enum;)Lcom/snap/kit/common/model/DeviceEnvironmentInfo$a;

    move-result-object v1

    sget-object v2, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    const-string v3, ""

    if-nez v2, :cond_0

    move-object v2, v3

    .line 6
    :cond_0
    invoke-virtual {v1, v2}, Lcom/snap/kit/common/model/DeviceEnvironmentInfo$a;->g(Ljava/lang/String;)Lcom/snap/kit/common/model/DeviceEnvironmentInfo$a;

    move-result-object v1

    sget-object v2, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 7
    invoke-virtual {v1, v2}, Lcom/snap/kit/common/model/DeviceEnvironmentInfo$a;->e(Ljava/lang/String;)Lcom/snap/kit/common/model/DeviceEnvironmentInfo$a;

    move-result-object v1

    const-string v2, "os.arch"

    .line 8
    invoke-static {v2}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/snap/kit/common/model/DeviceEnvironmentInfo$a;->k(Ljava/lang/String;)Lcom/snap/kit/common/model/DeviceEnvironmentInfo$a;

    move-result-object v1

    .line 9
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    if-nez v2, :cond_1

    goto :goto_0

    .line 10
    :cond_1
    invoke-virtual {v2}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v3

    .line 11
    :goto_0
    invoke-virtual {v1, v3}, Lcom/snap/kit/common/model/DeviceEnvironmentInfo$a;->c(Ljava/lang/String;)Lcom/snap/kit/common/model/DeviceEnvironmentInfo$a;

    move-result-object v1

    .line 12
    invoke-static {}, Landroid/os/Debug;->isDebuggerConnected()Z

    move-result v2

    if-eqz v2, :cond_2

    sget-object v2, Lcom/snap/kit/common/model/Types$Trilean;->TRUE:Lcom/snap/kit/common/model/Types$Trilean;

    goto :goto_1

    :cond_2
    sget-object v2, Lcom/snap/kit/common/model/Types$Trilean;->FALSE:Lcom/snap/kit/common/model/Types$Trilean;

    :goto_1
    invoke-virtual {v1, v2}, Lcom/snap/kit/common/model/DeviceEnvironmentInfo$a;->j(Lcom/snap/kit/common/model/Types$Trilean;)Lcom/snap/kit/common/model/DeviceEnvironmentInfo$a;

    move-result-object v1

    sget-object v2, Lcom/snap/kit/common/model/Types$Trilean;->NONE:Lcom/snap/kit/common/model/Types$Trilean;

    .line 13
    invoke-virtual {v1, v2}, Lcom/snap/kit/common/model/DeviceEnvironmentInfo$a;->i(Lcom/snap/kit/common/model/Types$Trilean;)Lcom/snap/kit/common/model/DeviceEnvironmentInfo$a;

    move-result-object v1

    .line 14
    invoke-virtual {v1, v2}, Lcom/snap/kit/common/model/DeviceEnvironmentInfo$a;->h(Lcom/snap/kit/common/model/Types$Trilean;)Lcom/snap/kit/common/model/DeviceEnvironmentInfo$a;

    move-result-object v1

    .line 15
    invoke-virtual {v1, v2}, Lcom/snap/kit/common/model/DeviceEnvironmentInfo$a;->b(Lcom/snap/kit/common/model/Types$Trilean;)Lcom/snap/kit/common/model/DeviceEnvironmentInfo$a;

    move-result-object v1

    .line 16
    invoke-virtual {v1}, Lcom/snap/kit/common/model/DeviceEnvironmentInfo$a;->a()Lcom/snap/kit/common/model/DeviceEnvironmentInfo;

    move-result-object v1

    .line 17
    invoke-virtual {p1, v1}, Lcom/snap/kit/sdk/model/SnapKitStorySnapViews$Builder;->device_environment_info(Lcom/snap/kit/common/model/DeviceEnvironmentInfo;)Lcom/snap/kit/sdk/model/SnapKitStorySnapViews$Builder;

    move-result-object p1

    iget-object v1, p0, Lde/p;->d:Ljava/lang/String;

    .line 18
    invoke-virtual {p1, v1}, Lcom/snap/kit/sdk/model/SnapKitStorySnapViews$Builder;->client_id(Ljava/lang/String;)Lcom/snap/kit/sdk/model/SnapKitStorySnapViews$Builder;

    move-result-object p1

    .line 19
    invoke-virtual {p1}, Lcom/snap/kit/sdk/model/SnapKitStorySnapViews$Builder;->build()Lcom/snap/kit/sdk/model/SnapKitStorySnapViews;

    move-result-object p1

    .line 20
    invoke-interface {v0, p1}, Lcom/snapchat/kit/sdk/core/metrics/MetricsClient;->postViewEvents(Lcom/snap/kit/sdk/model/SnapKitStorySnapViews;)Lretrofit2/Call;

    move-result-object p1

    .line 21
    new-instance v0, Lde/p$a;

    invoke-direct {v0, p0, p2}, Lde/p$a;-><init>(Lde/p;Lde/a$a;)V

    invoke-interface {p1, v0}, Lretrofit2/Call;->enqueue(Lretrofit2/Callback;)V

    return-void
.end method

.method public final c()Ljava/util/List;
    .locals 5
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lde/f<",
            "Lcom/snap/kit/sdk/model/SnapKitStorySnapView;",
            ">;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lde/p;->c:Lfe/a;

    sget-object v1, Lcom/snap/kit/sdk/model/SnapKitStorySnapView;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    iget-object v2, p0, Lde/p;->a:Landroid/content/SharedPreferences;

    const-string/jumbo v3, "unsent_snap_view_events"

    const/4 v4, 0x0

    .line 2
    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 3
    invoke-virtual {v0, v1, v2}, Lfe/a;->b(Lcom/squareup/wire/ProtoAdapter;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
