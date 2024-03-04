.class public abstract Lcom/snapchat/kit/sdk/SnapCFSActivity;
.super Landroid/app/Activity;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/snapchat/kit/sdk/SnapCFSActivity$b;,
        Lcom/snapchat/kit/sdk/SnapCFSActivity$a;
    }
.end annotation


# instance fields
.field a:Lcom/snapchat/kit/sdk/f;

.field b:Lce/b;

.field c:Lce/b$b;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 2
    new-instance v0, Lcom/snapchat/kit/sdk/SnapCFSActivity$b;

    invoke-direct {v0, p0}, Lcom/snapchat/kit/sdk/SnapCFSActivity$b;-><init>(Lcom/snapchat/kit/sdk/SnapCFSActivity;)V

    iput-object v0, p0, Lcom/snapchat/kit/sdk/SnapCFSActivity;->c:Lce/b$b;

    return-void
.end method

.method static synthetic a(Lcom/snapchat/kit/sdk/SnapCFSActivity;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/snapchat/kit/sdk/SnapCFSActivity;->b:Lce/b;

    iget-object v1, p0, Lcom/snapchat/kit/sdk/SnapCFSActivity;->c:Lce/b$b;

    invoke-interface {v0, v1}, Lce/b;->removeOnLoginStateChangedListener(Lce/b$b;)V

    .line 2
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "snapchat://cfs"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v0, v2, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 3
    sget-object v1, Lpe/a;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v1, 0x10000000

    .line 4
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 5
    invoke-virtual {p0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 6
    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    :cond_0
    return-void
.end method


# virtual methods
.method protected abstract b()Lbe/a;
    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/CallSuper;
    .end annotation

    .line 1
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 2
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    if-eqz p1, :cond_7

    .line 3
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_2

    .line 4
    :cond_0
    invoke-static {p0}, Lcom/snapchat/kit/sdk/b;->d(Landroid/content/Context;)Lbe/b;

    move-result-object v0

    if-nez v0, :cond_1

    .line 5
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void

    .line 6
    :cond_1
    invoke-interface {v0, p0}, Lbe/b;->e(Lcom/snapchat/kit/sdk/SnapCFSActivity;)V

    .line 7
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    const-string v1, "code"

    invoke-virtual {v0, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 8
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    const-string/jumbo v2, "state"

    invoke-virtual {v1, v2}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 9
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_6

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_1

    .line 10
    :cond_2
    invoke-virtual {p0}, Lcom/snapchat/kit/sdk/SnapCFSActivity;->b()Lbe/a;

    move-result-object v0

    .line 11
    invoke-interface {v0}, Lbe/a;->a()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 12
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void

    :cond_3
    const-string v2, "CFS_PENDING_INTENT"

    .line 13
    invoke-virtual {p1, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/app/PendingIntent;

    if-eqz v2, :cond_5

    .line 14
    sget-object v3, Lpe/a;->a:Ljava/lang/String;

    .line 15
    invoke-virtual {v2}, Landroid/app/PendingIntent;->getCreatorPackage()Ljava/lang/String;

    move-result-object v2

    .line 16
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    goto :goto_0

    .line 17
    :cond_4
    new-instance v2, Lcom/snapchat/kit/sdk/SnapCFSActivity$a;

    .line 18
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p1

    invoke-direct {v2, p0, p1}, Lcom/snapchat/kit/sdk/SnapCFSActivity$a;-><init>(Lcom/snapchat/kit/sdk/SnapCFSActivity;Landroid/net/Uri;)V

    .line 19
    invoke-interface {v0, v1, v2}, Lbe/a;->b(Ljava/lang/String;Lie/c;)V

    return-void

    .line 20
    :cond_5
    :goto_0
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void

    .line 21
    :cond_6
    :goto_1
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void

    .line 22
    :cond_7
    :goto_2
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method
