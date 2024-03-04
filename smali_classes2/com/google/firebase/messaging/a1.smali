.class Lcom/google/firebase/messaging/a1;
.super Landroid/os/Binder;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/firebase/messaging/a1$a;
    }
.end annotation


# instance fields
.field private final a:Lcom/google/firebase/messaging/a1$a;


# direct methods
.method constructor <init>(Lcom/google/firebase/messaging/a1$a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/firebase/messaging/a1;->a:Lcom/google/firebase/messaging/a1$a;

    return-void
.end method

.method public static synthetic a(Lcom/google/firebase/messaging/d1$a;Lt4/g;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/google/firebase/messaging/a1;->b(Lcom/google/firebase/messaging/d1$a;Lt4/g;)V

    return-void
.end method

.method private static synthetic b(Lcom/google/firebase/messaging/d1$a;Lt4/g;)V
    .locals 0

    invoke-virtual {p0}, Lcom/google/firebase/messaging/d1$a;->d()V

    return-void
.end method


# virtual methods
.method c(Lcom/google/firebase/messaging/d1$a;)V
    .locals 3

    .line 1
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v1

    if-ne v0, v1, :cond_1

    const/4 v0, 0x3

    const-string v1, "FirebaseMessaging"

    .line 2
    invoke-static {v1, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "service received new intent via bind strategy"

    .line 3
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/google/firebase/messaging/a1;->a:Lcom/google/firebase/messaging/a1$a;

    iget-object v1, p1, Lcom/google/firebase/messaging/d1$a;->a:Landroid/content/Intent;

    .line 5
    invoke-interface {v0, v1}, Lcom/google/firebase/messaging/a1$a;->a(Landroid/content/Intent;)Lt4/g;

    move-result-object v0

    sget-object v1, Lcom/google/firebase/messaging/g;->a:Lcom/google/firebase/messaging/g;

    new-instance v2, Lcom/google/firebase/messaging/z0;

    invoke-direct {v2, p1}, Lcom/google/firebase/messaging/z0;-><init>(Lcom/google/firebase/messaging/d1$a;)V

    .line 6
    invoke-virtual {v0, v1, v2}, Lt4/g;->b(Ljava/util/concurrent/Executor;Lt4/c;)Lt4/g;

    return-void

    .line 7
    :cond_1
    new-instance p1, Ljava/lang/SecurityException;

    const-string v0, "Binding only allowed within app"

    invoke-direct {p1, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
