.class final Lca/b$c;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lca/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "c"
.end annotation


# instance fields
.field final synthetic a:Lca/b;


# direct methods
.method private constructor <init>(Lca/b;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lca/b$c;->a:Lca/b;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lca/b;Lca/b$a;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lca/b$c;-><init>(Lca/b;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    .line 1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    const/4 p1, -0x1

    const-string v0, "plugged"

    .line 2
    invoke-virtual {p2, v0, p1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    if-gtz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_1

    .line 3
    iget-object p1, p0, Lca/b$c;->a:Lca/b;

    invoke-virtual {p1}, Lca/b;->e()V

    goto :goto_1

    .line 4
    :cond_1
    iget-object p1, p0, Lca/b$c;->a:Lca/b;

    invoke-static {p1}, Lca/b;->a(Lca/b;)V

    :cond_2
    :goto_1
    return-void
.end method
