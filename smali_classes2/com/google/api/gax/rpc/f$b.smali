.class final Lcom/google/api/gax/rpc/f$b;
.super Lcom/google/api/gax/rpc/j$b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/api/gax/rpc/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "b"
.end annotation


# instance fields
.field private a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ll5/d;",
            ">;"
        }
    .end annotation
.end field

.field private b:Ljava/util/concurrent/ScheduledExecutorService;

.field private c:Lcom/google/auth/Credentials;

.field private d:Lcom/google/api/gax/rpc/h0;

.field private e:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private f:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private g:Lk5/a;

.field private h:Lcom/google/api/gax/rpc/a;

.field private i:Lcom/google/api/gax/rpc/l0;

.field private j:Lorg/threeten/bp/Duration;

.field private k:Ljava/lang/String;

.field private l:Ljava/lang/String;

.field private m:Lcom/google/api/gax/tracing/ApiTracerFactory;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/api/gax/rpc/j$b;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lcom/google/api/gax/rpc/j;
    .locals 17

    move-object/from16 v0, p0

    .line 1
    iget-object v2, v0, Lcom/google/api/gax/rpc/f$b;->a:Ljava/util/List;

    if-eqz v2, :cond_1

    iget-object v3, v0, Lcom/google/api/gax/rpc/f$b;->b:Ljava/util/concurrent/ScheduledExecutorService;

    if-eqz v3, :cond_1

    iget-object v6, v0, Lcom/google/api/gax/rpc/f$b;->e:Ljava/util/Map;

    if-eqz v6, :cond_1

    iget-object v7, v0, Lcom/google/api/gax/rpc/f$b;->f:Ljava/util/Map;

    if-eqz v7, :cond_1

    iget-object v8, v0, Lcom/google/api/gax/rpc/f$b;->g:Lk5/a;

    if-eqz v8, :cond_1

    iget-object v9, v0, Lcom/google/api/gax/rpc/f$b;->h:Lcom/google/api/gax/rpc/a;

    if-eqz v9, :cond_1

    iget-object v11, v0, Lcom/google/api/gax/rpc/f$b;->j:Lorg/threeten/bp/Duration;

    if-eqz v11, :cond_1

    iget-object v14, v0, Lcom/google/api/gax/rpc/f$b;->m:Lcom/google/api/gax/tracing/ApiTracerFactory;

    if-nez v14, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    new-instance v16, Lcom/google/api/gax/rpc/f;

    iget-object v4, v0, Lcom/google/api/gax/rpc/f$b;->c:Lcom/google/auth/Credentials;

    iget-object v5, v0, Lcom/google/api/gax/rpc/f$b;->d:Lcom/google/api/gax/rpc/h0;

    iget-object v10, v0, Lcom/google/api/gax/rpc/f$b;->i:Lcom/google/api/gax/rpc/l0;

    iget-object v12, v0, Lcom/google/api/gax/rpc/f$b;->k:Ljava/lang/String;

    iget-object v13, v0, Lcom/google/api/gax/rpc/f$b;->l:Ljava/lang/String;

    const/4 v15, 0x0

    move-object/from16 v1, v16

    invoke-direct/range {v1 .. v15}, Lcom/google/api/gax/rpc/f;-><init>(Ljava/util/List;Ljava/util/concurrent/ScheduledExecutorService;Lcom/google/auth/Credentials;Lcom/google/api/gax/rpc/h0;Ljava/util/Map;Ljava/util/Map;Lk5/a;Lcom/google/api/gax/rpc/a;Lcom/google/api/gax/rpc/l0;Lorg/threeten/bp/Duration;Ljava/lang/String;Ljava/lang/String;Lcom/google/api/gax/tracing/ApiTracerFactory;Lcom/google/api/gax/rpc/f$a;)V

    return-object v16

    .line 3
    :cond_1
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    iget-object v2, v0, Lcom/google/api/gax/rpc/f$b;->a:Ljava/util/List;

    if-nez v2, :cond_2

    const-string v2, " backgroundResources"

    .line 5
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6
    :cond_2
    iget-object v2, v0, Lcom/google/api/gax/rpc/f$b;->b:Ljava/util/concurrent/ScheduledExecutorService;

    if-nez v2, :cond_3

    const-string v2, " executor"

    .line 7
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 8
    :cond_3
    iget-object v2, v0, Lcom/google/api/gax/rpc/f$b;->e:Ljava/util/Map;

    if-nez v2, :cond_4

    const-string v2, " headers"

    .line 9
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 10
    :cond_4
    iget-object v2, v0, Lcom/google/api/gax/rpc/f$b;->f:Ljava/util/Map;

    if-nez v2, :cond_5

    const-string v2, " internalHeaders"

    .line 11
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 12
    :cond_5
    iget-object v2, v0, Lcom/google/api/gax/rpc/f$b;->g:Lk5/a;

    if-nez v2, :cond_6

    const-string v2, " clock"

    .line 13
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    :cond_6
    iget-object v2, v0, Lcom/google/api/gax/rpc/f$b;->h:Lcom/google/api/gax/rpc/a;

    if-nez v2, :cond_7

    const-string v2, " defaultCallContext"

    .line 15
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    :cond_7
    iget-object v2, v0, Lcom/google/api/gax/rpc/f$b;->j:Lorg/threeten/bp/Duration;

    if-nez v2, :cond_8

    const-string v2, " streamWatchdogCheckInterval"

    .line 17
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    :cond_8
    iget-object v2, v0, Lcom/google/api/gax/rpc/f$b;->m:Lcom/google/api/gax/tracing/ApiTracerFactory;

    if-nez v2, :cond_9

    const-string v2, " tracerFactory"

    .line 19
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    :cond_9
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Missing required properties:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public b(Ljava/util/List;)Lcom/google/api/gax/rpc/j$b;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ll5/d;",
            ">;)",
            "Lcom/google/api/gax/rpc/j$b;"
        }
    .end annotation

    const-string v0, "Null backgroundResources"

    .line 1
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    iput-object p1, p0, Lcom/google/api/gax/rpc/f$b;->a:Ljava/util/List;

    return-object p0
.end method

.method public c(Lk5/a;)Lcom/google/api/gax/rpc/j$b;
    .locals 1

    const-string v0, "Null clock"

    .line 1
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    iput-object p1, p0, Lcom/google/api/gax/rpc/f$b;->g:Lk5/a;

    return-object p0
.end method

.method public d(Lcom/google/auth/Credentials;)Lcom/google/api/gax/rpc/j$b;
    .locals 0

    iput-object p1, p0, Lcom/google/api/gax/rpc/f$b;->c:Lcom/google/auth/Credentials;

    return-object p0
.end method

.method public e(Lcom/google/api/gax/rpc/a;)Lcom/google/api/gax/rpc/j$b;
    .locals 1

    const-string v0, "Null defaultCallContext"

    .line 1
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    iput-object p1, p0, Lcom/google/api/gax/rpc/f$b;->h:Lcom/google/api/gax/rpc/a;

    return-object p0
.end method

.method public f(Ljava/lang/String;)Lcom/google/api/gax/rpc/j$b;
    .locals 0

    iput-object p1, p0, Lcom/google/api/gax/rpc/f$b;->k:Ljava/lang/String;

    return-object p0
.end method

.method public g(Ljava/util/concurrent/ScheduledExecutorService;)Lcom/google/api/gax/rpc/j$b;
    .locals 1

    const-string v0, "Null executor"

    .line 1
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    iput-object p1, p0, Lcom/google/api/gax/rpc/f$b;->b:Ljava/util/concurrent/ScheduledExecutorService;

    return-object p0
.end method

.method public h(Ljava/util/Map;)Lcom/google/api/gax/rpc/j$b;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/google/api/gax/rpc/j$b;"
        }
    .end annotation

    const-string v0, "Null headers"

    .line 1
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    iput-object p1, p0, Lcom/google/api/gax/rpc/f$b;->e:Ljava/util/Map;

    return-object p0
.end method

.method protected i(Ljava/util/Map;)Lcom/google/api/gax/rpc/j$b;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/google/api/gax/rpc/j$b;"
        }
    .end annotation

    const-string v0, "Null internalHeaders"

    .line 1
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    iput-object p1, p0, Lcom/google/api/gax/rpc/f$b;->f:Ljava/util/Map;

    return-object p0
.end method

.method public j(Ljava/lang/String;)Lcom/google/api/gax/rpc/j$b;
    .locals 0

    iput-object p1, p0, Lcom/google/api/gax/rpc/f$b;->l:Ljava/lang/String;

    return-object p0
.end method

.method public k(Lcom/google/api/gax/rpc/l0;)Lcom/google/api/gax/rpc/j$b;
    .locals 0

    iput-object p1, p0, Lcom/google/api/gax/rpc/f$b;->i:Lcom/google/api/gax/rpc/l0;

    return-object p0
.end method

.method public l(Lorg/threeten/bp/Duration;)Lcom/google/api/gax/rpc/j$b;
    .locals 1

    const-string v0, "Null streamWatchdogCheckInterval"

    .line 1
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    iput-object p1, p0, Lcom/google/api/gax/rpc/f$b;->j:Lorg/threeten/bp/Duration;

    return-object p0
.end method

.method public m(Lcom/google/api/gax/tracing/ApiTracerFactory;)Lcom/google/api/gax/rpc/j$b;
    .locals 1

    const-string v0, "Null tracerFactory"

    .line 1
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    iput-object p1, p0, Lcom/google/api/gax/rpc/f$b;->m:Lcom/google/api/gax/tracing/ApiTracerFactory;

    return-object p0
.end method

.method public n(Lcom/google/api/gax/rpc/h0;)Lcom/google/api/gax/rpc/j$b;
    .locals 0

    iput-object p1, p0, Lcom/google/api/gax/rpc/f$b;->d:Lcom/google/api/gax/rpc/h0;

    return-object p0
.end method
