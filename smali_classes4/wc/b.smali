.class public Lwc/b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lwc/b$b;
    }
.end annotation


# static fields
.field private static final f:J


# instance fields
.field private final a:Lcom/linecorp/linesdk/LineIdToken;

.field private final b:Ljava/lang/String;

.field private final c:Ljava/lang/String;

.field private final d:Ljava/lang/String;

.field private final e:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    sget-object v0, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x5

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lwc/b;->f:J

    return-void
.end method

.method private constructor <init>(Lwc/b$b;)V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    invoke-static {p1}, Lwc/b$b;->a(Lwc/b$b;)Lcom/linecorp/linesdk/LineIdToken;

    move-result-object v0

    iput-object v0, p0, Lwc/b;->a:Lcom/linecorp/linesdk/LineIdToken;

    .line 4
    invoke-static {p1}, Lwc/b$b;->b(Lwc/b$b;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lwc/b;->b:Ljava/lang/String;

    .line 5
    invoke-static {p1}, Lwc/b$b;->c(Lwc/b$b;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lwc/b;->c:Ljava/lang/String;

    .line 6
    invoke-static {p1}, Lwc/b$b;->d(Lwc/b$b;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lwc/b;->d:Ljava/lang/String;

    .line 7
    invoke-static {p1}, Lwc/b$b;->e(Lwc/b$b;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lwc/b;->e:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Lwc/b$b;Lwc/b$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lwc/b;-><init>(Lwc/b$b;)V

    return-void
.end method

.method private static a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2

    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " expected: "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ", but received: "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private c()V
    .locals 3

    .line 1
    iget-object v0, p0, Lwc/b;->a:Lcom/linecorp/linesdk/LineIdToken;

    invoke-virtual {v0}, Lcom/linecorp/linesdk/LineIdToken;->a()Ljava/lang/String;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lwc/b;->d:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 3
    :cond_0
    iget-object v1, p0, Lwc/b;->d:Ljava/lang/String;

    const-string v2, "OpenId audience does not match."

    invoke-static {v2, v1, v0}, Lwc/b;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method private d()V
    .locals 3

    .line 1
    iget-object v0, p0, Lwc/b;->a:Lcom/linecorp/linesdk/LineIdToken;

    invoke-virtual {v0}, Lcom/linecorp/linesdk/LineIdToken;->d()Ljava/lang/String;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lwc/b;->b:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 3
    :cond_0
    iget-object v1, p0, Lwc/b;->b:Ljava/lang/String;

    const-string v2, "OpenId issuer does not match."

    invoke-static {v2, v1, v0}, Lwc/b;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method private e()V
    .locals 3

    .line 1
    iget-object v0, p0, Lwc/b;->a:Lcom/linecorp/linesdk/LineIdToken;

    invoke-virtual {v0}, Lcom/linecorp/linesdk/LineIdToken;->e()Ljava/lang/String;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lwc/b;->e:Ljava/lang/String;

    if-nez v1, :cond_0

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-eqz v1, :cond_1

    .line 3
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    return-void

    .line 4
    :cond_1
    iget-object v1, p0, Lwc/b;->e:Ljava/lang/String;

    const-string v2, "OpenId nonce does not match."

    invoke-static {v2, v1, v0}, Lwc/b;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method private f()V
    .locals 3

    .line 1
    iget-object v0, p0, Lwc/b;->a:Lcom/linecorp/linesdk/LineIdToken;

    invoke-virtual {v0}, Lcom/linecorp/linesdk/LineIdToken;->f()Ljava/lang/String;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lwc/b;->c:Ljava/lang/String;

    if-nez v1, :cond_0

    return-void

    .line 3
    :cond_0
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    return-void

    .line 4
    :cond_1
    iget-object v1, p0, Lwc/b;->c:Ljava/lang/String;

    const-string v2, "OpenId subject does not match."

    invoke-static {v2, v1, v0}, Lwc/b;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method private g()V
    .locals 8

    .line 1
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    .line 2
    iget-object v1, p0, Lwc/b;->a:Lcom/linecorp/linesdk/LineIdToken;

    invoke-virtual {v1}, Lcom/linecorp/linesdk/LineIdToken;->c()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v3

    sget-wide v5, Lwc/b;->f:J

    add-long/2addr v3, v5

    cmp-long v7, v1, v3

    if-gtz v7, :cond_1

    .line 3
    iget-object v1, p0, Lwc/b;->a:Lcom/linecorp/linesdk/LineIdToken;

    invoke-virtual {v1}, Lcom/linecorp/linesdk/LineIdToken;->b()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v3

    sub-long/2addr v3, v5

    cmp-long v0, v1, v3

    if-ltz v0, :cond_0

    return-void

    .line 4
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "OpenId expiresAt is before current time: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lwc/b;->a:Lcom/linecorp/linesdk/LineIdToken;

    invoke-virtual {v2}, Lcom/linecorp/linesdk/LineIdToken;->b()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 5
    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "OpenId issuedAt is after current time: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lwc/b;->a:Lcom/linecorp/linesdk/LineIdToken;

    invoke-virtual {v2}, Lcom/linecorp/linesdk/LineIdToken;->c()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public b()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lwc/b;->d()V

    .line 2
    invoke-direct {p0}, Lwc/b;->f()V

    .line 3
    invoke-direct {p0}, Lwc/b;->c()V

    .line 4
    invoke-direct {p0}, Lwc/b;->e()V

    .line 5
    invoke-direct {p0}, Lwc/b;->g()V

    return-void
.end method
