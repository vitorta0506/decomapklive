.class public Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/AlarmManagerSchedulerBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method public static synthetic a()V
    .locals 0

    invoke-static {}, Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/AlarmManagerSchedulerBroadcastReceiver;->b()V

    return-void
.end method

.method private static synthetic b()V
    .locals 0

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    .line 1
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    const-string v1, "backendName"

    invoke-virtual {v0, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    const-string v2, "extras"

    invoke-virtual {v1, v2}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 3
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    const-string v3, "priority"

    invoke-virtual {v2, v3}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 4
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p2

    const-string v3, "attemptNumber"

    invoke-virtual {p2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p2

    .line 5
    invoke-static {p1}, Ln1/t;->f(Landroid/content/Context;)V

    .line 6
    invoke-static {}, Ln1/o;->a()Ln1/o$a;

    move-result-object p1

    .line 7
    invoke-virtual {p1, v0}, Ln1/o$a;->b(Ljava/lang/String;)Ln1/o$a;

    move-result-object p1

    .line 8
    invoke-static {v2}, Lz1/a;->b(I)Lcom/google/android/datatransport/Priority;

    move-result-object v0

    invoke-virtual {p1, v0}, Ln1/o$a;->d(Lcom/google/android/datatransport/Priority;)Ln1/o$a;

    move-result-object p1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    .line 9
    invoke-static {v1, v0}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v0

    invoke-virtual {p1, v0}, Ln1/o$a;->c([B)Ln1/o$a;

    .line 10
    :cond_0
    invoke-static {}, Ln1/t;->c()Ln1/t;

    move-result-object v0

    .line 11
    invoke-virtual {v0}, Ln1/t;->e()Lv1/o;

    move-result-object v0

    .line 12
    invoke-virtual {p1}, Ln1/o$a;->a()Ln1/o;

    move-result-object p1

    sget-object v1, Lv1/a;->a:Lv1/a;

    invoke-virtual {v0, p1, p2, v1}, Lv1/o;->v(Ln1/o;ILjava/lang/Runnable;)V

    return-void
.end method
