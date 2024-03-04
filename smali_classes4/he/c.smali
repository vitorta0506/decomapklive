.class public final Lhe/c;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lcom/snapchat/kit/sdk/core/config/f;

.field private final b:Lhe/d;

.field private final c:Lde/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lde/b<",
            "Lcom/snapchat/kit/sdk/core/metrics/model/SkateEvent;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Lpe/c;

.field private final e:Lcom/snapchat/kit/sdk/f;

.field private final f:Lcom/snapchat/kit/sdk/core/metrics/model/SnapKitInitType;

.field private final g:Lcom/snapchat/kit/sdk/core/metrics/model/KitPluginType;

.field private final h:Z


# direct methods
.method public constructor <init>(Lcom/snapchat/kit/sdk/core/config/f;Lhe/d;Lde/b;Lcom/snapchat/kit/sdk/f;Lcom/snapchat/kit/sdk/core/metrics/model/SnapKitInitType;Lcom/snapchat/kit/sdk/core/metrics/model/KitPluginType;Z)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/snapchat/kit/sdk/core/config/f;",
            "Lhe/d;",
            "Lde/b<",
            "Lcom/snapchat/kit/sdk/core/metrics/model/SkateEvent;",
            ">;",
            "Lcom/snapchat/kit/sdk/f;",
            "Lcom/snapchat/kit/sdk/core/metrics/model/SnapKitInitType;",
            "Lcom/snapchat/kit/sdk/core/metrics/model/KitPluginType;",
            "Z)V"
        }
    .end annotation

    .line 1
    new-instance v5, Lpe/c;

    const-string v0, "GMT-8"

    .line 2
    invoke-static {v0}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v0

    invoke-direct {v5, v0}, Lpe/c;-><init>(Ljava/util/TimeZone;)V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v6, p5

    move-object v7, p6

    move/from16 v8, p7

    .line 3
    invoke-direct/range {v0 .. v8}, Lhe/c;-><init>(Lcom/snapchat/kit/sdk/core/config/f;Lhe/d;Lde/b;Lcom/snapchat/kit/sdk/f;Lpe/c;Lcom/snapchat/kit/sdk/core/metrics/model/SnapKitInitType;Lcom/snapchat/kit/sdk/core/metrics/model/KitPluginType;Z)V

    return-void
.end method

.method private constructor <init>(Lcom/snapchat/kit/sdk/core/config/f;Lhe/d;Lde/b;Lcom/snapchat/kit/sdk/f;Lpe/c;Lcom/snapchat/kit/sdk/core/metrics/model/SnapKitInitType;Lcom/snapchat/kit/sdk/core/metrics/model/KitPluginType;Z)V
    .locals 0
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/snapchat/kit/sdk/core/config/f;",
            "Lhe/d;",
            "Lde/b<",
            "Lcom/snapchat/kit/sdk/core/metrics/model/SkateEvent;",
            ">;",
            "Lcom/snapchat/kit/sdk/f;",
            "Lpe/c;",
            "Lcom/snapchat/kit/sdk/core/metrics/model/SnapKitInitType;",
            "Lcom/snapchat/kit/sdk/core/metrics/model/KitPluginType;",
            "Z)V"
        }
    .end annotation

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    iput-object p1, p0, Lhe/c;->a:Lcom/snapchat/kit/sdk/core/config/f;

    .line 6
    iput-object p2, p0, Lhe/c;->b:Lhe/d;

    .line 7
    iput-object p3, p0, Lhe/c;->c:Lde/b;

    .line 8
    iput-object p4, p0, Lhe/c;->e:Lcom/snapchat/kit/sdk/f;

    .line 9
    iput-object p5, p0, Lhe/c;->d:Lpe/c;

    .line 10
    iput-object p6, p0, Lhe/c;->f:Lcom/snapchat/kit/sdk/core/metrics/model/SnapKitInitType;

    .line 11
    iput-object p7, p0, Lhe/c;->g:Lcom/snapchat/kit/sdk/core/metrics/model/KitPluginType;

    .line 12
    iput-boolean p8, p0, Lhe/c;->h:Z

    return-void
.end method

.method static synthetic b(Lhe/c;)Lhe/d;
    .locals 0

    iget-object p0, p0, Lhe/c;->b:Lhe/d;

    return-object p0
.end method

.method static synthetic d(Lhe/c;)Lde/b;
    .locals 0

    iget-object p0, p0, Lhe/c;->c:Lde/b;

    return-object p0
.end method


# virtual methods
.method final a(Lcom/snapchat/kit/sdk/core/models/b;Lcom/snapchat/kit/sdk/core/models/b;D)Lcom/snapchat/kit/sdk/core/metrics/model/SkateEvent;
    .locals 3
    .param p1    # Lcom/snapchat/kit/sdk/core/models/b;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/VisibleForTesting;
        otherwise = 0x2
    .end annotation

    .line 1
    iget-object v0, p2, Lcom/snapchat/kit/sdk/core/models/b;->a:Lcom/snapchat/kit/sdk/core/models/c;

    if-eqz p1, :cond_1

    .line 2
    iget-object p1, p1, Lcom/snapchat/kit/sdk/core/models/b;->a:Lcom/snapchat/kit/sdk/core/models/c;

    .line 3
    invoke-virtual {p1, v0}, Lcom/snapchat/kit/sdk/core/models/c;->b(Lcom/snapchat/kit/sdk/core/models/c;)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    .line 4
    :goto_1
    new-instance v1, Lcom/snapchat/kit/sdk/core/metrics/model/SkateEvent$Builder;

    invoke-direct {v1}, Lcom/snapchat/kit/sdk/core/metrics/model/SkateEvent$Builder;-><init>()V

    .line 5
    invoke-virtual {p2}, Lcom/snapchat/kit/sdk/core/models/b;->b()Lcom/snapchat/kit/sdk/core/metrics/model/DailySessionBucket;

    move-result-object p2

    invoke-virtual {v1, p2}, Lcom/snapchat/kit/sdk/core/metrics/model/SkateEvent$Builder;->daily_session_bucket(Lcom/snapchat/kit/sdk/core/metrics/model/DailySessionBucket;)Lcom/snapchat/kit/sdk/core/metrics/model/SkateEvent$Builder;

    move-result-object p2

    iget-wide v1, v0, Lcom/snapchat/kit/sdk/core/models/c;->a:J

    .line 6
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p2, v1}, Lcom/snapchat/kit/sdk/core/metrics/model/SkateEvent$Builder;->day(Ljava/lang/Long;)Lcom/snapchat/kit/sdk/core/metrics/model/SkateEvent$Builder;

    move-result-object p2

    iget-wide v1, v0, Lcom/snapchat/kit/sdk/core/models/c;->b:J

    .line 7
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p2, v1}, Lcom/snapchat/kit/sdk/core/metrics/model/SkateEvent$Builder;->month(Ljava/lang/Long;)Lcom/snapchat/kit/sdk/core/metrics/model/SkateEvent$Builder;

    move-result-object p2

    iget-wide v0, v0, Lcom/snapchat/kit/sdk/core/models/c;->c:J

    .line 8
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/snapchat/kit/sdk/core/metrics/model/SkateEvent$Builder;->year(Ljava/lang/Long;)Lcom/snapchat/kit/sdk/core/metrics/model/SkateEvent$Builder;

    move-result-object p2

    .line 9
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/snapchat/kit/sdk/core/metrics/model/SkateEvent$Builder;->is_first_within_month(Ljava/lang/Boolean;)Lcom/snapchat/kit/sdk/core/metrics/model/SkateEvent$Builder;

    move-result-object p1

    .line 10
    invoke-static {p3, p4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/snapchat/kit/sdk/core/metrics/model/SkateEvent$Builder;->sample_rate(Ljava/lang/Double;)Lcom/snapchat/kit/sdk/core/metrics/model/SkateEvent$Builder;

    move-result-object p1

    iget-object p2, p0, Lhe/c;->f:Lcom/snapchat/kit/sdk/core/metrics/model/SnapKitInitType;

    .line 11
    invoke-virtual {p1, p2}, Lcom/snapchat/kit/sdk/core/metrics/model/SkateEvent$Builder;->snap_kit_init_type(Lcom/snapchat/kit/sdk/core/metrics/model/SnapKitInitType;)Lcom/snapchat/kit/sdk/core/metrics/model/SkateEvent$Builder;

    move-result-object p1

    iget-object p2, p0, Lhe/c;->g:Lcom/snapchat/kit/sdk/core/metrics/model/KitPluginType;

    .line 12
    invoke-virtual {p1, p2}, Lcom/snapchat/kit/sdk/core/metrics/model/SkateEvent$Builder;->kit_plugin_type(Lcom/snapchat/kit/sdk/core/metrics/model/KitPluginType;)Lcom/snapchat/kit/sdk/core/metrics/model/SkateEvent$Builder;

    move-result-object p1

    iget-boolean p2, p0, Lhe/c;->h:Z

    .line 13
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/snapchat/kit/sdk/core/metrics/model/SkateEvent$Builder;->is_from_react_native_plugin(Ljava/lang/Boolean;)Lcom/snapchat/kit/sdk/core/metrics/model/SkateEvent$Builder;

    move-result-object p1

    const-string p2, "1.13.2"

    .line 14
    invoke-virtual {p1, p2}, Lcom/snapchat/kit/sdk/core/metrics/model/SkateEvent$Builder;->core_version(Ljava/lang/String;)Lcom/snapchat/kit/sdk/core/metrics/model/SkateEvent$Builder;

    move-result-object p1

    .line 15
    iget-object p2, p0, Lhe/c;->b:Lhe/d;

    invoke-virtual {p2}, Lhe/d;->c()Ljava/lang/String;

    move-result-object p2

    .line 16
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-nez p3, :cond_2

    .line 17
    invoke-virtual {p1, p2}, Lcom/snapchat/kit/sdk/core/metrics/model/SkateEvent$Builder;->kit_variants_string_list(Ljava/lang/String;)Lcom/snapchat/kit/sdk/core/metrics/model/SkateEvent$Builder;

    .line 18
    :cond_2
    iget-object p2, p0, Lhe/c;->b:Lhe/d;

    invoke-virtual {p2}, Lhe/d;->d()Ljava/lang/String;

    move-result-object p2

    .line 19
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-nez p3, :cond_3

    .line 20
    invoke-virtual {p1, p2}, Lcom/snapchat/kit/sdk/core/metrics/model/SkateEvent$Builder;->kit_version_string_list(Ljava/lang/String;)Lcom/snapchat/kit/sdk/core/metrics/model/SkateEvent$Builder;

    .line 21
    :cond_3
    iget-object p2, p0, Lhe/c;->e:Lcom/snapchat/kit/sdk/f;

    invoke-virtual {p2}, Lcom/snapchat/kit/sdk/f;->x()Z

    move-result p2

    if-eqz p2, :cond_4

    .line 22
    sget-object p2, Lcom/snapchat/kit/sdk/core/metrics/model/LoginRoute;->LOGIN_ROUTE:Lcom/snapchat/kit/sdk/core/metrics/model/LoginRoute;

    invoke-virtual {p1, p2}, Lcom/snapchat/kit/sdk/core/metrics/model/SkateEvent$Builder;->login_route(Lcom/snapchat/kit/sdk/core/metrics/model/LoginRoute;)Lcom/snapchat/kit/sdk/core/metrics/model/SkateEvent$Builder;

    .line 23
    :cond_4
    invoke-virtual {p1}, Lcom/snapchat/kit/sdk/core/metrics/model/SkateEvent$Builder;->build()Lcom/snapchat/kit/sdk/core/metrics/model/SkateEvent;

    move-result-object p1

    return-object p1
.end method

.method public final c(Ljava/util/Date;)V
    .locals 9

    .line 1
    iget-object v0, p0, Lhe/c;->b:Lhe/d;

    invoke-virtual {v0}, Lhe/d;->a()Lcom/snapchat/kit/sdk/core/models/b;

    move-result-object v0

    .line 2
    new-instance v8, Lcom/snapchat/kit/sdk/core/models/c;

    iget-object v1, p0, Lhe/c;->d:Lpe/c;

    invoke-virtual {v1, p1}, Lpe/c;->a(Ljava/util/Date;)J

    move-result-wide v2

    iget-object v1, p0, Lhe/c;->d:Lpe/c;

    .line 3
    invoke-virtual {v1, p1}, Lpe/c;->b(Ljava/util/Date;)J

    move-result-wide v4

    iget-object v1, p0, Lhe/c;->d:Lpe/c;

    invoke-virtual {v1, p1}, Lpe/c;->c(Ljava/util/Date;)J

    move-result-wide v6

    move-object v1, v8

    invoke-direct/range {v1 .. v7}, Lcom/snapchat/kit/sdk/core/models/c;-><init>(JJJ)V

    if-eqz v0, :cond_1

    .line 4
    iget-object p1, v0, Lcom/snapchat/kit/sdk/core/models/b;->a:Lcom/snapchat/kit/sdk/core/models/c;

    invoke-virtual {v8, p1}, Lcom/snapchat/kit/sdk/core/models/c;->a(Lcom/snapchat/kit/sdk/core/models/c;)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {v0}, Lcom/snapchat/kit/sdk/core/models/b;->c()V

    move-object p1, v0

    goto :goto_1

    .line 6
    :cond_1
    :goto_0
    new-instance p1, Lcom/snapchat/kit/sdk/core/models/b;

    const/4 v1, 0x1

    invoke-direct {p1, v8, v1}, Lcom/snapchat/kit/sdk/core/models/b;-><init>(Lcom/snapchat/kit/sdk/core/models/c;I)V

    .line 7
    :goto_1
    iget-object v1, p0, Lhe/c;->b:Lhe/d;

    invoke-virtual {v1, p1}, Lhe/d;->b(Lcom/snapchat/kit/sdk/core/models/b;)V

    .line 8
    iget-object v1, p0, Lhe/c;->a:Lcom/snapchat/kit/sdk/core/config/f;

    new-instance v2, Lhe/c$a;

    invoke-direct {v2, p0, v0, p1}, Lhe/c$a;-><init>(Lhe/c;Lcom/snapchat/kit/sdk/core/models/b;Lcom/snapchat/kit/sdk/core/models/b;)V

    invoke-virtual {v1, v2}, Lcom/snapchat/kit/sdk/core/config/f;->d(Lcom/snapchat/kit/sdk/core/config/b;)V

    return-void
.end method
