.class public Lcom/xiaomi/push/service/az$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/push/service/az;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/push/service/az$b$a;,
        Lcom/xiaomi/push/service/az$b$b;,
        Lcom/xiaomi/push/service/az$b$c;
    }
.end annotation


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/lang/String;

.field public c:Ljava/lang/String;

.field public d:Ljava/lang/String;

.field public e:Z

.field public f:Ljava/lang/String;

.field public g:Ljava/lang/String;

.field public h:Ljava/lang/String;

.field public i:Ljava/lang/String;

.field public j:Ljava/lang/String;

.field public k:Lcom/xiaomi/push/service/s1;

.field public l:Landroid/content/Context;

.field m:Lcom/xiaomi/push/service/az$c;

.field private n:I

.field private o:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/xiaomi/push/service/az$b$a;",
            ">;"
        }
    .end annotation
.end field

.field private p:Lcom/xiaomi/push/service/XMPushService;

.field q:Lcom/xiaomi/push/service/az$c;

.field r:Landroid/os/Messenger;

.field private s:Z

.field private t:Lcom/xiaomi/push/service/XMPushService$c;

.field u:Landroid/os/IBinder$DeathRecipient;

.field final v:Lcom/xiaomi/push/service/az$b$b;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/xiaomi/push/service/az$c;->a:Lcom/xiaomi/push/service/az$c;

    iput-object v0, p0, Lcom/xiaomi/push/service/az$b;->m:Lcom/xiaomi/push/service/az$c;

    const/4 v0, 0x0

    iput v0, p0, Lcom/xiaomi/push/service/az$b;->n:I

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/xiaomi/push/service/az$b;->o:Ljava/util/List;

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/xiaomi/push/service/az$b;->q:Lcom/xiaomi/push/service/az$c;

    iput-boolean v0, p0, Lcom/xiaomi/push/service/az$b;->s:Z

    new-instance v0, Lcom/xiaomi/push/service/XMPushService$c;

    invoke-direct {v0, p0}, Lcom/xiaomi/push/service/XMPushService$c;-><init>(Lcom/xiaomi/push/service/az$b;)V

    iput-object v0, p0, Lcom/xiaomi/push/service/az$b;->t:Lcom/xiaomi/push/service/XMPushService$c;

    iput-object v1, p0, Lcom/xiaomi/push/service/az$b;->u:Landroid/os/IBinder$DeathRecipient;

    new-instance v0, Lcom/xiaomi/push/service/az$b$b;

    invoke-direct {v0, p0}, Lcom/xiaomi/push/service/az$b$b;-><init>(Lcom/xiaomi/push/service/az$b;)V

    iput-object v0, p0, Lcom/xiaomi/push/service/az$b;->v:Lcom/xiaomi/push/service/az$b$b;

    return-void
.end method

.method public constructor <init>(Lcom/xiaomi/push/service/XMPushService;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/xiaomi/push/service/az$c;->a:Lcom/xiaomi/push/service/az$c;

    iput-object v0, p0, Lcom/xiaomi/push/service/az$b;->m:Lcom/xiaomi/push/service/az$c;

    const/4 v0, 0x0

    iput v0, p0, Lcom/xiaomi/push/service/az$b;->n:I

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/xiaomi/push/service/az$b;->o:Ljava/util/List;

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/xiaomi/push/service/az$b;->q:Lcom/xiaomi/push/service/az$c;

    iput-boolean v0, p0, Lcom/xiaomi/push/service/az$b;->s:Z

    new-instance v0, Lcom/xiaomi/push/service/XMPushService$c;

    invoke-direct {v0, p0}, Lcom/xiaomi/push/service/XMPushService$c;-><init>(Lcom/xiaomi/push/service/az$b;)V

    iput-object v0, p0, Lcom/xiaomi/push/service/az$b;->t:Lcom/xiaomi/push/service/XMPushService$c;

    iput-object v1, p0, Lcom/xiaomi/push/service/az$b;->u:Landroid/os/IBinder$DeathRecipient;

    new-instance v0, Lcom/xiaomi/push/service/az$b$b;

    invoke-direct {v0, p0}, Lcom/xiaomi/push/service/az$b$b;-><init>(Lcom/xiaomi/push/service/az$b;)V

    iput-object v0, p0, Lcom/xiaomi/push/service/az$b;->v:Lcom/xiaomi/push/service/az$b$b;

    iput-object p1, p0, Lcom/xiaomi/push/service/az$b;->p:Lcom/xiaomi/push/service/XMPushService;

    new-instance p1, Lcom/xiaomi/push/service/b0;

    invoke-direct {p1, p0}, Lcom/xiaomi/push/service/b0;-><init>(Lcom/xiaomi/push/service/az$b;)V

    invoke-virtual {p0, p1}, Lcom/xiaomi/push/service/az$b;->i(Lcom/xiaomi/push/service/az$b$a;)V

    return-void
.end method

.method static synthetic b(Lcom/xiaomi/push/service/az$b;)Lcom/xiaomi/push/service/XMPushService$c;
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/push/service/az$b;->t:Lcom/xiaomi/push/service/XMPushService$c;

    return-object p0
.end method

.method static synthetic c(Lcom/xiaomi/push/service/az$b;)Lcom/xiaomi/push/service/XMPushService;
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/push/service/az$b;->p:Lcom/xiaomi/push/service/XMPushService;

    return-object p0
.end method

.method public static e(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, ""

    if-eqz v0, :cond_0

    return-object v1

    :cond_0
    const-string v0, "/"

    invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    const/4 v2, -0x1

    if-eq v0, v2, :cond_1

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    :cond_1
    return-object v1
.end method

.method private g(IILjava/lang/String;Ljava/lang/String;)V
    .locals 9

    iget-object v0, p0, Lcom/xiaomi/push/service/az$b;->m:Lcom/xiaomi/push/service/az$c;

    iput-object v0, p0, Lcom/xiaomi/push/service/az$b;->q:Lcom/xiaomi/push/service/az$c;

    const/4 v1, 0x2

    if-ne p1, v1, :cond_0

    iget-object p1, p0, Lcom/xiaomi/push/service/az$b;->k:Lcom/xiaomi/push/service/s1;

    iget-object p3, p0, Lcom/xiaomi/push/service/az$b;->l:Landroid/content/Context;

    invoke-virtual {p1, p3, p0, p2}, Lcom/xiaomi/push/service/s1;->f(Landroid/content/Context;Lcom/xiaomi/push/service/az$b;I)V

    goto :goto_2

    :cond_0
    const/4 v1, 0x3

    if-ne p1, v1, :cond_1

    iget-object p1, p0, Lcom/xiaomi/push/service/az$b;->k:Lcom/xiaomi/push/service/s1;

    iget-object p2, p0, Lcom/xiaomi/push/service/az$b;->l:Landroid/content/Context;

    invoke-virtual {p1, p2, p0, p4, p3}, Lcom/xiaomi/push/service/s1;->g(Landroid/content/Context;Lcom/xiaomi/push/service/az$b;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_1
    const/4 v1, 0x1

    if-ne p1, v1, :cond_5

    sget-object p1, Lcom/xiaomi/push/service/az$c;->c:Lcom/xiaomi/push/service/az$c;

    const/4 v2, 0x0

    if-ne v0, p1, :cond_2

    const/4 v6, 0x1

    goto :goto_0

    :cond_2
    const/4 v6, 0x0

    :goto_0
    if-nez v6, :cond_3

    const-string p1, "wait"

    invoke-virtual {p1, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    iget p1, p0, Lcom/xiaomi/push/service/az$b;->n:I

    add-int/2addr p1, v1

    iput p1, p0, Lcom/xiaomi/push/service/az$b;->n:I

    goto :goto_1

    :cond_3
    if-eqz v6, :cond_4

    iput v2, p0, Lcom/xiaomi/push/service/az$b;->n:I

    iget-object p1, p0, Lcom/xiaomi/push/service/az$b;->r:Landroid/os/Messenger;

    if-eqz p1, :cond_4

    const/4 p1, 0x0

    const/16 p4, 0x10

    iget-object v0, p0, Lcom/xiaomi/push/service/az$b;->p:Lcom/xiaomi/push/service/XMPushService;

    iget-object v0, v0, Lcom/xiaomi/push/service/XMPushService;->a:Landroid/os/Messenger;

    invoke-static {p1, p4, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    :try_start_0
    iget-object p4, p0, Lcom/xiaomi/push/service/az$b;->r:Landroid/os/Messenger;

    invoke-virtual {p4, p1}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_4
    :goto_1
    iget-object v3, p0, Lcom/xiaomi/push/service/az$b;->k:Lcom/xiaomi/push/service/s1;

    iget-object v4, p0, Lcom/xiaomi/push/service/az$b;->p:Lcom/xiaomi/push/service/XMPushService;

    move-object v5, p0

    move v7, p2

    move-object v8, p3

    invoke-virtual/range {v3 .. v8}, Lcom/xiaomi/push/service/s1;->h(Landroid/content/Context;Lcom/xiaomi/push/service/az$b;ZILjava/lang/String;)V

    :cond_5
    :goto_2
    return-void
.end method

.method static synthetic j(Lcom/xiaomi/push/service/az$b;IILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/xiaomi/push/service/az$b;->g(IILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private l(IILjava/lang/String;)Z
    .locals 2

    iget-object p1, p0, Lcom/xiaomi/push/service/az$b;->q:Lcom/xiaomi/push/service/az$c;

    const/4 p2, 0x1

    if-eqz p1, :cond_3

    iget-boolean p3, p0, Lcom/xiaomi/push/service/az$b;->s:Z

    if-nez p3, :cond_0

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lcom/xiaomi/push/service/az$b;->m:Lcom/xiaomi/push/service/az$c;

    const/4 v1, 0x0

    if-ne p1, v0, :cond_1

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, " status recovered, don\'t notify client:"

    :goto_0
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/xiaomi/push/service/az$b;->h:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ltf/c;->s(Ljava/lang/String;)V

    return v1

    :cond_1
    iget-object p1, p0, Lcom/xiaomi/push/service/az$b;->r:Landroid/os/Messenger;

    if-eqz p1, :cond_2

    if-eqz p3, :cond_2

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Peer alive notify status to client:"

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/xiaomi/push/service/az$b;->h:Ljava/lang/String;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ltf/c;->s(Ljava/lang/String;)V

    return p2

    :cond_2
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "peer died, ignore notify "

    goto :goto_0

    :cond_3
    :goto_1
    return p2
.end method

.method static synthetic m(Lcom/xiaomi/push/service/az$b;IILjava/lang/String;)Z
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/xiaomi/push/service/az$b;->l(IILjava/lang/String;)Z

    move-result p0

    return p0
.end method

.method private n(IILjava/lang/String;)Z
    .locals 4

    const-string v0, "wait"

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eq p1, v1, :cond_2

    const/4 p2, 0x2

    if-eq p1, p2, :cond_1

    const/4 p2, 0x3

    if-eq p1, p2, :cond_0

    return v2

    :cond_0
    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    xor-int/2addr p1, v1

    return p1

    :cond_1
    iget-object p1, p0, Lcom/xiaomi/push/service/az$b;->p:Lcom/xiaomi/push/service/XMPushService;

    invoke-virtual {p1}, Lcom/xiaomi/push/service/XMPushService;->d()Z

    move-result p1

    return p1

    :cond_2
    iget-object p1, p0, Lcom/xiaomi/push/service/az$b;->m:Lcom/xiaomi/push/service/az$c;

    sget-object v3, Lcom/xiaomi/push/service/az$c;->c:Lcom/xiaomi/push/service/az$c;

    if-ne p1, v3, :cond_3

    return v2

    :cond_3
    iget-object p1, p0, Lcom/xiaomi/push/service/az$b;->p:Lcom/xiaomi/push/service/XMPushService;

    invoke-virtual {p1}, Lcom/xiaomi/push/service/XMPushService;->d()Z

    move-result p1

    if-nez p1, :cond_4

    return v2

    :cond_4
    const/16 p1, 0x15

    if-eq p2, p1, :cond_6

    const/4 p1, 0x7

    if-ne p2, p1, :cond_5

    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    goto :goto_0

    :cond_5
    return v1

    :cond_6
    :goto_0
    return v2
.end method


# virtual methods
.method public a()J
    .locals 4

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v0

    const-wide/high16 v2, 0x4034000000000000L    # 20.0

    mul-double v0, v0, v2

    const-wide/high16 v2, 0x4024000000000000L    # 10.0

    sub-double/2addr v0, v2

    double-to-long v0, v0

    iget v2, p0, Lcom/xiaomi/push/service/az$b;->n:I

    add-int/lit8 v2, v2, 0x1

    mul-int/lit8 v2, v2, 0xf

    int-to-long v2, v2

    add-long/2addr v0, v2

    const-wide/16 v2, 0x3e8

    mul-long v0, v0, v2

    return-wide v0
.end method

.method public d(I)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    const-string p1, "unknown"

    return-object p1

    :cond_0
    const-string p1, "KICK"

    return-object p1

    :cond_1
    const-string p1, "CLOSE"

    return-object p1

    :cond_2
    const-string p1, "OPEN"

    return-object p1
.end method

.method f()V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/xiaomi/push/service/az$b;->r:Landroid/os/Messenger;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/xiaomi/push/service/az$b;->u:Landroid/os/IBinder$DeathRecipient;

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Landroid/os/Messenger;->getBinder()Landroid/os/IBinder;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/push/service/az$b;->u:Landroid/os/IBinder$DeathRecipient;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/xiaomi/push/service/az$b;->q:Lcom/xiaomi/push/service/az$c;

    return-void
.end method

.method h(Landroid/os/Messenger;)V
    .locals 3

    invoke-virtual {p0}, Lcom/xiaomi/push/service/az$b;->f()V

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    :try_start_0
    iput-object p1, p0, Lcom/xiaomi/push/service/az$b;->r:Landroid/os/Messenger;

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/xiaomi/push/service/az$b;->s:Z

    new-instance v1, Lcom/xiaomi/push/service/az$b$c;

    invoke-direct {v1, p0, p0, p1}, Lcom/xiaomi/push/service/az$b$c;-><init>(Lcom/xiaomi/push/service/az$b;Lcom/xiaomi/push/service/az$b;Landroid/os/Messenger;)V

    iput-object v1, p0, Lcom/xiaomi/push/service/az$b;->u:Landroid/os/IBinder$DeathRecipient;

    invoke-virtual {p1}, Landroid/os/Messenger;->getBinder()Landroid/os/IBinder;

    move-result-object p1

    iget-object v1, p0, Lcom/xiaomi/push/service/az$b;->u:Landroid/os/IBinder$DeathRecipient;

    invoke-interface {p1, v1, v0}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "peer linked with old sdk chid = "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/xiaomi/push/service/az$b;->h:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ltf/c;->s(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "peer linkToDeath err: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ltf/c;->s(Ljava/lang/String;)V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/xiaomi/push/service/az$b;->r:Landroid/os/Messenger;

    iput-boolean v0, p0, Lcom/xiaomi/push/service/az$b;->s:Z

    :goto_0
    return-void
.end method

.method public i(Lcom/xiaomi/push/service/az$b$a;)V
    .locals 2

    iget-object v0, p0, Lcom/xiaomi/push/service/az$b;->o:Ljava/util/List;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/xiaomi/push/service/az$b;->o:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public k(Lcom/xiaomi/push/service/az$c;IILjava/lang/String;Ljava/lang/String;)V
    .locals 5

    iget-object v0, p0, Lcom/xiaomi/push/service/az$b;->o:Ljava/util/List;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/xiaomi/push/service/az$b;->o:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/xiaomi/push/service/az$b$a;

    iget-object v3, p0, Lcom/xiaomi/push/service/az$b;->m:Lcom/xiaomi/push/service/az$c;

    invoke-interface {v2, v3, p1, p3}, Lcom/xiaomi/push/service/az$b$a;->a(Lcom/xiaomi/push/service/az$c;Lcom/xiaomi/push/service/az$c;I)V

    goto :goto_0

    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/xiaomi/push/service/az$b;->m:Lcom/xiaomi/push/service/az$c;

    const/4 v1, 0x0

    if-eq v0, p1, :cond_1

    const-string v2, "update the client %7$s status. %1$s->%2$s %3$s %4$s %5$s %6$s"

    const/4 v3, 0x7

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v0, v3, v1

    const/4 v0, 0x1

    aput-object p1, v3, v0

    const/4 v0, 0x2

    invoke-virtual {p0, p2}, Lcom/xiaomi/push/service/az$b;->d(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v0

    const/4 v0, 0x3

    invoke-static {p3}, Lcom/xiaomi/push/service/e0;->a(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v0

    const/4 v0, 0x4

    aput-object p4, v3, v0

    const/4 v0, 0x5

    aput-object p5, v3, v0

    const/4 v0, 0x6

    iget-object v4, p0, Lcom/xiaomi/push/service/az$b;->h:Ljava/lang/String;

    aput-object v4, v3, v0

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ltf/c;->l(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/xiaomi/push/service/az$b;->m:Lcom/xiaomi/push/service/az$c;

    :cond_1
    iget-object v0, p0, Lcom/xiaomi/push/service/az$b;->k:Lcom/xiaomi/push/service/s1;

    if-nez v0, :cond_2

    const-string p1, "status changed while the client dispatcher is missing"

    invoke-static {p1}, Ltf/c;->u(Ljava/lang/String;)V

    return-void

    :cond_2
    sget-object v0, Lcom/xiaomi/push/service/az$c;->b:Lcom/xiaomi/push/service/az$c;

    if-ne p1, v0, :cond_3

    return-void

    :cond_3
    const/16 p1, 0x2774

    iget-object v0, p0, Lcom/xiaomi/push/service/az$b;->q:Lcom/xiaomi/push/service/az$c;

    if-eqz v0, :cond_6

    iget-boolean v0, p0, Lcom/xiaomi/push/service/az$b;->s:Z

    if-nez v0, :cond_4

    goto :goto_1

    :cond_4
    iget-object v1, p0, Lcom/xiaomi/push/service/az$b;->r:Landroid/os/Messenger;

    if-eqz v1, :cond_5

    if-eqz v0, :cond_5

    const/16 v1, 0x3e8

    goto :goto_1

    :cond_5
    const/16 v1, 0x2774

    :cond_6
    :goto_1
    iget-object p1, p0, Lcom/xiaomi/push/service/az$b;->p:Lcom/xiaomi/push/service/XMPushService;

    iget-object v0, p0, Lcom/xiaomi/push/service/az$b;->v:Lcom/xiaomi/push/service/az$b$b;

    invoke-virtual {p1, v0}, Lcom/xiaomi/push/service/XMPushService;->b(Lcom/xiaomi/push/service/XMPushService$j;)V

    invoke-direct {p0, p2, p3, p5}, Lcom/xiaomi/push/service/az$b;->n(IILjava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_7

    invoke-direct {p0, p2, p3, p4, p5}, Lcom/xiaomi/push/service/az$b;->g(IILjava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_7
    iget-object p1, p0, Lcom/xiaomi/push/service/az$b;->p:Lcom/xiaomi/push/service/XMPushService;

    iget-object v0, p0, Lcom/xiaomi/push/service/az$b;->v:Lcom/xiaomi/push/service/az$b$b;

    invoke-virtual {v0, p2, p3, p4, p5}, Lcom/xiaomi/push/service/az$b$b;->d(IILjava/lang/String;Ljava/lang/String;)Lcom/xiaomi/push/service/XMPushService$j;

    move-result-object p2

    int-to-long p3, v1

    invoke-virtual {p1, p2, p3, p4}, Lcom/xiaomi/push/service/XMPushService;->a(Lcom/xiaomi/push/service/XMPushService$j;J)V

    :goto_2
    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method
