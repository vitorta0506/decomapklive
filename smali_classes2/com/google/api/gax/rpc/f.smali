.class final Lcom/google/api/gax/rpc/f;
.super Lcom/google/api/gax/rpc/j;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/api/gax/rpc/f$b;
    }
.end annotation


# instance fields
.field private final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ll5/d;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Ljava/util/concurrent/ScheduledExecutorService;

.field private final c:Lcom/google/auth/Credentials;

.field private final d:Lcom/google/api/gax/rpc/h0;

.field private final e:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final f:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final g:Lk5/a;

.field private final h:Lcom/google/api/gax/rpc/a;

.field private final i:Lcom/google/api/gax/rpc/l0;

.field private final j:Lorg/threeten/bp/Duration;

.field private final k:Ljava/lang/String;

.field private final l:Ljava/lang/String;

.field private final m:Lcom/google/api/gax/tracing/ApiTracerFactory;


# direct methods
.method private constructor <init>(Ljava/util/List;Ljava/util/concurrent/ScheduledExecutorService;Lcom/google/auth/Credentials;Lcom/google/api/gax/rpc/h0;Ljava/util/Map;Ljava/util/Map;Lk5/a;Lcom/google/api/gax/rpc/a;Lcom/google/api/gax/rpc/l0;Lorg/threeten/bp/Duration;Ljava/lang/String;Ljava/lang/String;Lcom/google/api/gax/tracing/ApiTracerFactory;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ll5/d;",
            ">;",
            "Ljava/util/concurrent/ScheduledExecutorService;",
            "Lcom/google/auth/Credentials;",
            "Lcom/google/api/gax/rpc/h0;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lk5/a;",
            "Lcom/google/api/gax/rpc/a;",
            "Lcom/google/api/gax/rpc/l0;",
            "Lorg/threeten/bp/Duration;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/google/api/gax/tracing/ApiTracerFactory;",
            ")V"
        }
    .end annotation

    .line 2
    invoke-direct {p0}, Lcom/google/api/gax/rpc/j;-><init>()V

    .line 3
    iput-object p1, p0, Lcom/google/api/gax/rpc/f;->a:Ljava/util/List;

    .line 4
    iput-object p2, p0, Lcom/google/api/gax/rpc/f;->b:Ljava/util/concurrent/ScheduledExecutorService;

    .line 5
    iput-object p3, p0, Lcom/google/api/gax/rpc/f;->c:Lcom/google/auth/Credentials;

    .line 6
    iput-object p4, p0, Lcom/google/api/gax/rpc/f;->d:Lcom/google/api/gax/rpc/h0;

    .line 7
    iput-object p5, p0, Lcom/google/api/gax/rpc/f;->e:Ljava/util/Map;

    .line 8
    iput-object p6, p0, Lcom/google/api/gax/rpc/f;->f:Ljava/util/Map;

    .line 9
    iput-object p7, p0, Lcom/google/api/gax/rpc/f;->g:Lk5/a;

    .line 10
    iput-object p8, p0, Lcom/google/api/gax/rpc/f;->h:Lcom/google/api/gax/rpc/a;

    .line 11
    iput-object p9, p0, Lcom/google/api/gax/rpc/f;->i:Lcom/google/api/gax/rpc/l0;

    .line 12
    iput-object p10, p0, Lcom/google/api/gax/rpc/f;->j:Lorg/threeten/bp/Duration;

    .line 13
    iput-object p11, p0, Lcom/google/api/gax/rpc/f;->k:Ljava/lang/String;

    .line 14
    iput-object p12, p0, Lcom/google/api/gax/rpc/f;->l:Ljava/lang/String;

    .line 15
    iput-object p13, p0, Lcom/google/api/gax/rpc/f;->m:Lcom/google/api/gax/tracing/ApiTracerFactory;

    return-void
.end method

.method synthetic constructor <init>(Ljava/util/List;Ljava/util/concurrent/ScheduledExecutorService;Lcom/google/auth/Credentials;Lcom/google/api/gax/rpc/h0;Ljava/util/Map;Ljava/util/Map;Lk5/a;Lcom/google/api/gax/rpc/a;Lcom/google/api/gax/rpc/l0;Lorg/threeten/bp/Duration;Ljava/lang/String;Ljava/lang/String;Lcom/google/api/gax/tracing/ApiTracerFactory;Lcom/google/api/gax/rpc/f$a;)V
    .locals 0

    .line 1
    invoke-direct/range {p0 .. p13}, Lcom/google/api/gax/rpc/f;-><init>(Ljava/util/List;Ljava/util/concurrent/ScheduledExecutorService;Lcom/google/auth/Credentials;Lcom/google/api/gax/rpc/h0;Ljava/util/Map;Ljava/util/Map;Lk5/a;Lcom/google/api/gax/rpc/a;Lcom/google/api/gax/rpc/l0;Lorg/threeten/bp/Duration;Ljava/lang/String;Ljava/lang/String;Lcom/google/api/gax/tracing/ApiTracerFactory;)V

    return-void
.end method


# virtual methods
.method public b()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ll5/d;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/api/gax/rpc/f;->a:Ljava/util/List;

    return-object v0
.end method

.method public c()Lk5/a;
    .locals 1

    iget-object v0, p0, Lcom/google/api/gax/rpc/f;->g:Lk5/a;

    return-object v0
.end method

.method public d()Lcom/google/auth/Credentials;
    .locals 1

    iget-object v0, p0, Lcom/google/api/gax/rpc/f;->c:Lcom/google/auth/Credentials;

    return-object v0
.end method

.method public e()Lcom/google/api/gax/rpc/a;
    .locals 1

    iget-object v0, p0, Lcom/google/api/gax/rpc/f;->h:Lcom/google/api/gax/rpc/a;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 1
    :cond_0
    instance-of v1, p1, Lcom/google/api/gax/rpc/j;

    const/4 v2, 0x0

    if-eqz v1, :cond_7

    .line 2
    check-cast p1, Lcom/google/api/gax/rpc/j;

    .line 3
    iget-object v1, p0, Lcom/google/api/gax/rpc/f;->a:Ljava/util/List;

    invoke-virtual {p1}, Lcom/google/api/gax/rpc/j;->b()Ljava/util/List;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/google/api/gax/rpc/f;->b:Ljava/util/concurrent/ScheduledExecutorService;

    .line 4
    invoke-virtual {p1}, Lcom/google/api/gax/rpc/j;->h()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/google/api/gax/rpc/f;->c:Lcom/google/auth/Credentials;

    if-nez v1, :cond_1

    .line 5
    invoke-virtual {p1}, Lcom/google/api/gax/rpc/j;->d()Lcom/google/auth/Credentials;

    move-result-object v1

    if-nez v1, :cond_6

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Lcom/google/api/gax/rpc/j;->d()Lcom/google/auth/Credentials;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    :goto_0
    iget-object v1, p0, Lcom/google/api/gax/rpc/f;->d:Lcom/google/api/gax/rpc/h0;

    if-nez v1, :cond_2

    .line 6
    invoke-virtual {p1}, Lcom/google/api/gax/rpc/j;->p()Lcom/google/api/gax/rpc/h0;

    move-result-object v1

    if-nez v1, :cond_6

    goto :goto_1

    :cond_2
    invoke-virtual {p1}, Lcom/google/api/gax/rpc/j;->p()Lcom/google/api/gax/rpc/h0;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    :goto_1
    iget-object v1, p0, Lcom/google/api/gax/rpc/f;->e:Ljava/util/Map;

    .line 7
    invoke-virtual {p1}, Lcom/google/api/gax/rpc/j;->i()Ljava/util/Map;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/Map;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/google/api/gax/rpc/f;->f:Ljava/util/Map;

    .line 8
    invoke-virtual {p1}, Lcom/google/api/gax/rpc/j;->k()Ljava/util/Map;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/Map;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/google/api/gax/rpc/f;->g:Lk5/a;

    .line 9
    invoke-virtual {p1}, Lcom/google/api/gax/rpc/j;->c()Lk5/a;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/google/api/gax/rpc/f;->h:Lcom/google/api/gax/rpc/a;

    .line 10
    invoke-virtual {p1}, Lcom/google/api/gax/rpc/j;->e()Lcom/google/api/gax/rpc/a;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/google/api/gax/rpc/f;->i:Lcom/google/api/gax/rpc/l0;

    if-nez v1, :cond_3

    .line 11
    invoke-virtual {p1}, Lcom/google/api/gax/rpc/j;->m()Lcom/google/api/gax/rpc/l0;

    move-result-object v1

    if-nez v1, :cond_6

    goto :goto_2

    :cond_3
    invoke-virtual {p1}, Lcom/google/api/gax/rpc/j;->m()Lcom/google/api/gax/rpc/l0;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    :goto_2
    iget-object v1, p0, Lcom/google/api/gax/rpc/f;->j:Lorg/threeten/bp/Duration;

    .line 12
    invoke-virtual {p1}, Lcom/google/api/gax/rpc/j;->n()Lorg/threeten/bp/Duration;

    move-result-object v3

    invoke-virtual {v1, v3}, Lorg/threeten/bp/Duration;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/google/api/gax/rpc/f;->k:Ljava/lang/String;

    if-nez v1, :cond_4

    .line 13
    invoke-virtual {p1}, Lcom/google/api/gax/rpc/j;->f()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_6

    goto :goto_3

    :cond_4
    invoke-virtual {p1}, Lcom/google/api/gax/rpc/j;->f()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    :goto_3
    iget-object v1, p0, Lcom/google/api/gax/rpc/f;->l:Ljava/lang/String;

    if-nez v1, :cond_5

    .line 14
    invoke-virtual {p1}, Lcom/google/api/gax/rpc/j;->l()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_6

    goto :goto_4

    :cond_5
    invoke-virtual {p1}, Lcom/google/api/gax/rpc/j;->l()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    :goto_4
    iget-object v1, p0, Lcom/google/api/gax/rpc/f;->m:Lcom/google/api/gax/tracing/ApiTracerFactory;

    .line 15
    invoke-virtual {p1}, Lcom/google/api/gax/rpc/j;->o()Lcom/google/api/gax/tracing/ApiTracerFactory;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6

    goto :goto_5

    :cond_6
    const/4 v0, 0x0

    :goto_5
    return v0

    :cond_7
    return v2
.end method

.method public f()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/api/gax/rpc/f;->k:Ljava/lang/String;

    return-object v0
.end method

.method public h()Ljava/util/concurrent/ScheduledExecutorService;
    .locals 1

    iget-object v0, p0, Lcom/google/api/gax/rpc/f;->b:Ljava/util/concurrent/ScheduledExecutorService;

    return-object v0
.end method

.method public hashCode()I
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/api/gax/rpc/f;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->hashCode()I

    move-result v0

    const v1, 0xf4243

    xor-int/2addr v0, v1

    mul-int v0, v0, v1

    .line 2
    iget-object v2, p0, Lcom/google/api/gax/rpc/f;->b:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    xor-int/2addr v0, v2

    mul-int v0, v0, v1

    .line 3
    iget-object v2, p0, Lcom/google/api/gax/rpc/f;->c:Lcom/google/auth/Credentials;

    const/4 v3, 0x0

    if-nez v2, :cond_0

    const/4 v2, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_0
    xor-int/2addr v0, v2

    mul-int v0, v0, v1

    .line 4
    iget-object v2, p0, Lcom/google/api/gax/rpc/f;->d:Lcom/google/api/gax/rpc/h0;

    if-nez v2, :cond_1

    const/4 v2, 0x0

    goto :goto_1

    :cond_1
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_1
    xor-int/2addr v0, v2

    mul-int v0, v0, v1

    .line 5
    iget-object v2, p0, Lcom/google/api/gax/rpc/f;->e:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->hashCode()I

    move-result v2

    xor-int/2addr v0, v2

    mul-int v0, v0, v1

    .line 6
    iget-object v2, p0, Lcom/google/api/gax/rpc/f;->f:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->hashCode()I

    move-result v2

    xor-int/2addr v0, v2

    mul-int v0, v0, v1

    .line 7
    iget-object v2, p0, Lcom/google/api/gax/rpc/f;->g:Lk5/a;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    xor-int/2addr v0, v2

    mul-int v0, v0, v1

    .line 8
    iget-object v2, p0, Lcom/google/api/gax/rpc/f;->h:Lcom/google/api/gax/rpc/a;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    xor-int/2addr v0, v2

    mul-int v0, v0, v1

    .line 9
    iget-object v2, p0, Lcom/google/api/gax/rpc/f;->i:Lcom/google/api/gax/rpc/l0;

    if-nez v2, :cond_2

    const/4 v2, 0x0

    goto :goto_2

    :cond_2
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_2
    xor-int/2addr v0, v2

    mul-int v0, v0, v1

    .line 10
    iget-object v2, p0, Lcom/google/api/gax/rpc/f;->j:Lorg/threeten/bp/Duration;

    invoke-virtual {v2}, Lorg/threeten/bp/Duration;->hashCode()I

    move-result v2

    xor-int/2addr v0, v2

    mul-int v0, v0, v1

    .line 11
    iget-object v2, p0, Lcom/google/api/gax/rpc/f;->k:Ljava/lang/String;

    if-nez v2, :cond_3

    const/4 v2, 0x0

    goto :goto_3

    :cond_3
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_3
    xor-int/2addr v0, v2

    mul-int v0, v0, v1

    .line 12
    iget-object v2, p0, Lcom/google/api/gax/rpc/f;->l:Ljava/lang/String;

    if-nez v2, :cond_4

    goto :goto_4

    :cond_4
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v3

    :goto_4
    xor-int/2addr v0, v3

    mul-int v0, v0, v1

    .line 13
    iget-object v1, p0, Lcom/google/api/gax/rpc/f;->m:Lcom/google/api/gax/tracing/ApiTracerFactory;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    return v0
.end method

.method public i()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/api/gax/rpc/f;->e:Ljava/util/Map;

    return-object v0
.end method

.method protected k()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/api/gax/rpc/f;->f:Ljava/util/Map;

    return-object v0
.end method

.method public l()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/api/gax/rpc/f;->l:Ljava/lang/String;

    return-object v0
.end method

.method public m()Lcom/google/api/gax/rpc/l0;
    .locals 1

    iget-object v0, p0, Lcom/google/api/gax/rpc/f;->i:Lcom/google/api/gax/rpc/l0;

    return-object v0
.end method

.method public n()Lorg/threeten/bp/Duration;
    .locals 1

    iget-object v0, p0, Lcom/google/api/gax/rpc/f;->j:Lorg/threeten/bp/Duration;

    return-object v0
.end method

.method public o()Lcom/google/api/gax/tracing/ApiTracerFactory;
    .locals 1

    iget-object v0, p0, Lcom/google/api/gax/rpc/f;->m:Lcom/google/api/gax/tracing/ApiTracerFactory;

    return-object v0
.end method

.method public p()Lcom/google/api/gax/rpc/h0;
    .locals 1

    iget-object v0, p0, Lcom/google/api/gax/rpc/f;->d:Lcom/google/api/gax/rpc/h0;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ClientContext{backgroundResources="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/google/api/gax/rpc/f;->a:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", executor="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/google/api/gax/rpc/f;->b:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", credentials="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/google/api/gax/rpc/f;->c:Lcom/google/auth/Credentials;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", transportChannel="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/google/api/gax/rpc/f;->d:Lcom/google/api/gax/rpc/h0;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", headers="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/google/api/gax/rpc/f;->e:Ljava/util/Map;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", internalHeaders="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/google/api/gax/rpc/f;->f:Ljava/util/Map;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", clock="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/google/api/gax/rpc/f;->g:Lk5/a;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", defaultCallContext="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/google/api/gax/rpc/f;->h:Lcom/google/api/gax/rpc/a;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", streamWatchdog="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/google/api/gax/rpc/f;->i:Lcom/google/api/gax/rpc/l0;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", streamWatchdogCheckInterval="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/google/api/gax/rpc/f;->j:Lorg/threeten/bp/Duration;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", endpoint="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/google/api/gax/rpc/f;->k:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", quotaProjectId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/google/api/gax/rpc/f;->l:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", tracerFactory="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/google/api/gax/rpc/f;->m:Lcom/google/api/gax/tracing/ApiTracerFactory;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
