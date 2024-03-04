.class public Lle/a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Landroid/content/Context;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private final b:Ljava/lang/String;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private c:Lke/c;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private final d:Lde/b;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lde/b<",
            "Lcom/snapchat/kit/sdk/core/metrics/model/ServerEvent;",
            ">;"
        }
    .end annotation
.end field

.field private final e:Lke/a;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private f:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private g:Lcom/snapchat/kit/sdk/core/metrics/model/KitPluginType;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private h:Z


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lke/c;Lde/b;Lke/a;Lcom/snapchat/kit/sdk/core/metrics/model/KitPluginType;Z)V
    .locals 0
    .param p3    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lke/c;",
            "Lde/b<",
            "Lcom/snapchat/kit/sdk/core/metrics/model/ServerEvent;",
            ">;",
            "Lke/a;",
            "Lcom/snapchat/kit/sdk/core/metrics/model/KitPluginType;",
            "Z)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lle/a;->a:Landroid/content/Context;

    .line 3
    iput-object p2, p0, Lle/a;->b:Ljava/lang/String;

    .line 4
    iput-object p3, p0, Lle/a;->f:Ljava/lang/String;

    .line 5
    iput-object p4, p0, Lle/a;->c:Lke/c;

    .line 6
    iput-object p5, p0, Lle/a;->d:Lde/b;

    .line 7
    iput-object p6, p0, Lle/a;->e:Lke/a;

    .line 8
    iput-object p7, p0, Lle/a;->g:Lcom/snapchat/kit/sdk/core/metrics/model/KitPluginType;

    .line 9
    iput-boolean p8, p0, Lle/a;->h:Z

    return-void
.end method


# virtual methods
.method public a(Loe/a;Lle/c;)V
    .locals 9
    .param p1    # Loe/a;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lle/c;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 2
    new-instance v2, Lme/a;

    iget-object v3, p0, Lle/a;->b:Ljava/lang/String;

    invoke-direct {v2, v3, p1}, Lme/a;-><init>(Ljava/lang/String;Loe/a;)V

    .line 3
    sget-object p1, Lpe/a;->a:Ljava/lang/String;

    .line 4
    iget-object v3, p0, Lle/a;->a:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 5
    invoke-static {v3, p1}, Lpe/b;->c(Landroid/content/pm/PackageManager;Ljava/lang/String;)Z

    move-result v4

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-nez v4, :cond_1

    new-array v0, v6, [Ljava/lang/Object;

    aput-object p1, v0, v5

    const-string p1, "https://play.google.com/store/apps/details?id=%s"

    .line 6
    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    .line 7
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const/high16 p1, 0x10000000

    .line 8
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 9
    iget-object p1, p0, Lle/a;->a:Landroid/content/Context;

    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 10
    iget-object p1, p0, Lle/a;->c:Lke/c;

    const-string v0, "sendToPlayStore"

    invoke-virtual {p1, v0}, Lke/c;->a(Ljava/lang/String;)V

    if-eqz p2, :cond_0

    .line 11
    sget-object p1, Lcom/snapchat/kit/sdk/creative/api/SnapCreativeKitSendError;->SNAPCHAT_NOT_INSTALLED:Lcom/snapchat/kit/sdk/creative/api/SnapCreativeKitSendError;

    invoke-interface {p2, p1}, Lle/c;->a(Lcom/snapchat/kit/sdk/creative/api/SnapCreativeKitSendError;)V

    :cond_0
    return-void

    .line 12
    :cond_1
    iget-object v4, p0, Lle/a;->c:Lke/c;

    const-string v7, "sendIntentToApp"

    invoke-virtual {v4, v7}, Lke/c;->a(Ljava/lang/String;)V

    .line 13
    iget-object v4, p0, Lle/a;->a:Landroid/content/Context;

    iget-object v7, p0, Lle/a;->g:Lcom/snapchat/kit/sdk/core/metrics/model/KitPluginType;

    iget-boolean v8, p0, Lle/a;->h:Z

    invoke-virtual {v2, v4, v7, v8}, Lme/a;->a(Landroid/content/Context;Lcom/snapchat/kit/sdk/core/metrics/model/KitPluginType;Z)Landroid/content/Intent;

    move-result-object v2

    .line 14
    invoke-virtual {v2, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 15
    iget-object p1, p0, Lle/a;->b:Ljava/lang/String;

    const-string v4, "CLIENT_ID"

    invoke-virtual {v2, v4, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "KIT_VERSION"

    const-string v4, "1.13.2"

    .line 16
    invoke-virtual {v2, p1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/16 p1, 0x28

    const-string v4, "KIT_VERSION_CODE"

    .line 17
    invoke-virtual {v2, v4, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string p1, "deep_link_intent"

    .line 18
    invoke-virtual {v2, p1, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 19
    iget-object p1, p0, Lle/a;->f:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_2

    .line 20
    iget-object p1, p0, Lle/a;->f:Ljava/lang/String;

    const-string v4, "KIT_REDIRECT_URL"

    invoke-virtual {v2, v4, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 21
    :cond_2
    new-instance p1, Landroid/content/Intent;

    iget-object v4, p0, Lle/a;->a:Landroid/content/Context;

    const-class v6, Lcom/snapchat/kit/sdk/creative/internal/SnapCreativeShareResultHandler;

    invoke-direct {p1, v4, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v4, 0x40000000    # 2.0f

    .line 22
    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v7, 0x17

    if-lt v6, v7, :cond_3

    const/high16 v4, 0x44000000    # 512.0f

    .line 23
    :cond_3
    iget-object v6, p0, Lle/a;->a:Landroid/content/Context;

    const/16 v7, 0x11

    invoke-static {v6, v7, p1, v4}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p1

    const-string v4, "RESULT_INTENT"

    .line 24
    invoke-virtual {v2, v4, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const/high16 p1, 0x14000000

    .line 25
    invoke-virtual {v2, p1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 26
    invoke-virtual {v2, v3}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 27
    iget-object p1, p0, Lle/a;->d:Lde/b;

    iget-object v3, p0, Lle/a;->e:Lke/a;

    invoke-virtual {v3}, Lke/a;->a()Lcom/snapchat/kit/sdk/core/metrics/model/ServerEvent;

    move-result-object v3

    invoke-interface {p1, v3}, Lde/b;->push(Ljava/lang/Object;)V

    .line 28
    iget-object p1, p0, Lle/a;->a:Landroid/content/Context;

    invoke-virtual {p1, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 29
    iget-object p1, p0, Lle/a;->c:Lke/c;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v2, v0

    const-string v0, "sendLatency"

    invoke-virtual {p1, v0, v2, v3}, Lke/c;->b(Ljava/lang/String;J)V

    if-eqz p2, :cond_5

    .line 30
    invoke-interface {p2}, Lle/c;->b()V

    return-void

    .line 31
    :cond_4
    iget-object p1, p0, Lle/a;->c:Lke/c;

    const-string v0, "cannotShareContent"

    invoke-virtual {p1, v0}, Lke/c;->a(Ljava/lang/String;)V

    .line 32
    iget-object p1, p0, Lle/a;->a:Landroid/content/Context;

    sget v0, Lcom/snapchat/kit/sdk/creative/R$string;->snap_connect_snap_error_cannot_share_content:I

    invoke-static {p1, v0, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    .line 33
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    if-eqz p2, :cond_5

    .line 34
    sget-object p1, Lcom/snapchat/kit/sdk/creative/api/SnapCreativeKitSendError;->SNAPCHAT_CANNOT_SHARE_CONTENT:Lcom/snapchat/kit/sdk/creative/api/SnapCreativeKitSendError;

    invoke-interface {p2, p1}, Lle/c;->a(Lcom/snapchat/kit/sdk/creative/api/SnapCreativeKitSendError;)V

    :cond_5
    return-void
.end method
