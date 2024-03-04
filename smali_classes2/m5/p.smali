.class public final Lm5/p;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/api/gax/rpc/a;


# static fields
.field static final k:Lio/grpc/c$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/grpc/c$a<",
            "Lr5/a;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final a:Lio/grpc/d;

.field private final b:Lio/grpc/c;

.field private final c:Lorg/threeten/bp/Duration;

.field private final d:Lorg/threeten/bp/Duration;

.field private final e:Lorg/threeten/bp/Duration;

.field private final f:Ljava/lang/Integer;

.field private final g:Lcom/google/api/gax/retrying/RetrySettings;

.field private final h:Lcom/google/common/collect/ImmutableSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableSet<",
            "Lcom/google/api/gax/rpc/StatusCode$Code;",
            ">;"
        }
    .end annotation
.end field

.field private final i:Lcom/google/common/collect/ImmutableMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableMap<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private final j:Lp5/a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "gax.tracer"

    invoke-static {v0}, Lio/grpc/c$a;->b(Ljava/lang/String;)Lio/grpc/c$a;

    move-result-object v0

    sput-object v0, Lm5/p;->k:Lio/grpc/c$a;

    return-void
.end method

.method private constructor <init>(Lio/grpc/d;Lio/grpc/c;Lorg/threeten/bp/Duration;Lorg/threeten/bp/Duration;Lorg/threeten/bp/Duration;Ljava/lang/Integer;Lcom/google/common/collect/ImmutableMap;Lp5/a;Lcom/google/api/gax/retrying/RetrySettings;Ljava/util/Set;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/grpc/d;",
            "Lio/grpc/c;",
            "Lorg/threeten/bp/Duration;",
            "Lorg/threeten/bp/Duration;",
            "Lorg/threeten/bp/Duration;",
            "Ljava/lang/Integer;",
            "Lcom/google/common/collect/ImmutableMap<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;",
            "Lp5/a;",
            "Lcom/google/api/gax/retrying/RetrySettings;",
            "Ljava/util/Set<",
            "Lcom/google/api/gax/rpc/StatusCode$Code;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lm5/p;->a:Lio/grpc/d;

    .line 3
    invoke-static {p2}, Lcom/google/common/base/o;->s(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/grpc/c;

    iput-object p1, p0, Lm5/p;->b:Lio/grpc/c;

    .line 4
    iput-object p3, p0, Lm5/p;->c:Lorg/threeten/bp/Duration;

    .line 5
    iput-object p4, p0, Lm5/p;->d:Lorg/threeten/bp/Duration;

    .line 6
    iput-object p5, p0, Lm5/p;->e:Lorg/threeten/bp/Duration;

    .line 7
    iput-object p6, p0, Lm5/p;->f:Ljava/lang/Integer;

    .line 8
    invoke-static {p7}, Lcom/google/common/base/o;->s(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/common/collect/ImmutableMap;

    iput-object p1, p0, Lm5/p;->i:Lcom/google/common/collect/ImmutableMap;

    .line 9
    invoke-static {p8}, Lcom/google/common/base/o;->s(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lp5/a;

    iput-object p1, p0, Lm5/p;->j:Lp5/a;

    .line 10
    iput-object p9, p0, Lm5/p;->g:Lcom/google/api/gax/retrying/RetrySettings;

    if-nez p10, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 11
    :cond_0
    invoke-static {p10}, Lcom/google/common/collect/ImmutableSet;->copyOf(Ljava/util/Collection;)Lcom/google/common/collect/ImmutableSet;

    move-result-object p1

    :goto_0
    iput-object p1, p0, Lm5/p;->h:Lcom/google/common/collect/ImmutableSet;

    return-void
.end method

.method public static a()Lm5/p;
    .locals 12

    .line 1
    new-instance v11, Lm5/p;

    sget-object v2, Lio/grpc/c;->k:Lio/grpc/c;

    .line 2
    invoke-static {}, Lcom/google/common/collect/ImmutableMap;->of()Lcom/google/common/collect/ImmutableMap;

    move-result-object v7

    .line 3
    invoke-static {}, Lp5/a;->a()Lp5/a;

    move-result-object v8

    const/4 v1, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v0, v11

    invoke-direct/range {v0 .. v10}, Lm5/p;-><init>(Lio/grpc/d;Lio/grpc/c;Lorg/threeten/bp/Duration;Lorg/threeten/bp/Duration;Lorg/threeten/bp/Duration;Ljava/lang/Integer;Lcom/google/common/collect/ImmutableMap;Lp5/a;Lcom/google/api/gax/retrying/RetrySettings;Ljava/util/Set;)V

    return-object v11
.end method


# virtual methods
.method public bridge synthetic b(Lcom/google/auth/Credentials;)Lcom/google/api/gax/rpc/a;
    .locals 0

    invoke-virtual {p0, p1}, Lm5/p;->o(Lcom/google/auth/Credentials;)Lm5/p;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic c(Lcom/google/api/gax/rpc/h0;)Lcom/google/api/gax/rpc/a;
    .locals 0

    invoke-virtual {p0, p1}, Lm5/p;->q(Lcom/google/api/gax/rpc/h0;)Lm5/p;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic d(Lr5/a;)Lcom/google/api/gax/rpc/a;
    .locals 0

    invoke-virtual {p0, p1}, Lm5/p;->p(Lr5/a;)Lm5/p;

    move-result-object p1

    return-object p1
.end method

.method public e()Lr5/a;
    .locals 2

    .line 1
    iget-object v0, p0, Lm5/p;->b:Lio/grpc/c;

    sget-object v1, Lm5/p;->k:Lio/grpc/c$a;

    invoke-virtual {v0, v1}, Lio/grpc/c;->h(Lio/grpc/c$a;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lr5/a;

    if-nez v0, :cond_0

    .line 2
    invoke-static {}, Lr5/c;->h()Lr5/a;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    .line 1
    const-class v2, Lm5/p;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    .line 2
    :cond_1
    check-cast p1, Lm5/p;

    .line 3
    iget-object v2, p0, Lm5/p;->a:Lio/grpc/d;

    iget-object v3, p1, Lm5/p;->a:Lio/grpc/d;

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lm5/p;->b:Lio/grpc/c;

    iget-object v3, p1, Lm5/p;->b:Lio/grpc/c;

    .line 4
    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lm5/p;->c:Lorg/threeten/bp/Duration;

    iget-object v3, p1, Lm5/p;->c:Lorg/threeten/bp/Duration;

    .line 5
    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lm5/p;->d:Lorg/threeten/bp/Duration;

    iget-object v3, p1, Lm5/p;->d:Lorg/threeten/bp/Duration;

    .line 6
    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lm5/p;->e:Lorg/threeten/bp/Duration;

    iget-object v3, p1, Lm5/p;->e:Lorg/threeten/bp/Duration;

    .line 7
    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lm5/p;->f:Ljava/lang/Integer;

    iget-object v3, p1, Lm5/p;->f:Ljava/lang/Integer;

    .line 8
    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lm5/p;->i:Lcom/google/common/collect/ImmutableMap;

    iget-object v3, p1, Lm5/p;->i:Lcom/google/common/collect/ImmutableMap;

    .line 9
    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lm5/p;->j:Lp5/a;

    iget-object v3, p1, Lm5/p;->j:Lp5/a;

    .line 10
    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lm5/p;->g:Lcom/google/api/gax/retrying/RetrySettings;

    iget-object v3, p1, Lm5/p;->g:Lcom/google/api/gax/retrying/RetrySettings;

    .line 11
    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lm5/p;->h:Lcom/google/common/collect/ImmutableSet;

    iget-object p1, p1, Lm5/p;->h:Lcom/google/common/collect/ImmutableSet;

    .line 12
    invoke-static {v2, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_3
    :goto_1
    return v1
.end method

.method public f(Lcom/google/api/gax/rpc/a;)Lcom/google/api/gax/rpc/a;
    .locals 14

    if-nez p1, :cond_0

    return-object p0

    .line 1
    :cond_0
    instance-of v0, p1, Lm5/p;

    if-eqz v0, :cond_c

    .line 2
    check-cast p1, Lm5/p;

    .line 3
    iget-object v0, p1, Lm5/p;->a:Lio/grpc/d;

    if-nez v0, :cond_1

    .line 4
    iget-object v0, p0, Lm5/p;->a:Lio/grpc/d;

    :cond_1
    move-object v2, v0

    .line 5
    iget-object v0, p1, Lm5/p;->b:Lio/grpc/c;

    invoke-virtual {v0}, Lio/grpc/c;->d()Lio/grpc/t;

    move-result-object v0

    if-nez v0, :cond_2

    .line 6
    iget-object v0, p0, Lm5/p;->b:Lio/grpc/c;

    invoke-virtual {v0}, Lio/grpc/c;->d()Lio/grpc/t;

    move-result-object v0

    .line 7
    :cond_2
    iget-object v1, p1, Lm5/p;->b:Lio/grpc/c;

    invoke-virtual {v1}, Lio/grpc/c;->c()Lio/grpc/b;

    move-result-object v1

    if-nez v1, :cond_3

    .line 8
    iget-object v1, p0, Lm5/p;->b:Lio/grpc/c;

    invoke-virtual {v1}, Lio/grpc/c;->c()Lio/grpc/b;

    move-result-object v1

    .line 9
    :cond_3
    iget-object v3, p1, Lm5/p;->b:Lio/grpc/c;

    sget-object v4, Lm5/p;->k:Lio/grpc/c$a;

    invoke-virtual {v3, v4}, Lio/grpc/c;->h(Lio/grpc/c$a;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lr5/a;

    if-nez v3, :cond_4

    .line 10
    iget-object v3, p0, Lm5/p;->b:Lio/grpc/c;

    invoke-virtual {v3, v4}, Lio/grpc/c;->h(Lio/grpc/c$a;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lr5/a;

    .line 11
    :cond_4
    iget-object v5, p1, Lm5/p;->c:Lorg/threeten/bp/Duration;

    if-nez v5, :cond_5

    .line 12
    iget-object v5, p0, Lm5/p;->c:Lorg/threeten/bp/Duration;

    .line 13
    :cond_5
    iget-object v6, p1, Lm5/p;->d:Lorg/threeten/bp/Duration;

    if-nez v6, :cond_6

    .line 14
    iget-object v6, p0, Lm5/p;->d:Lorg/threeten/bp/Duration;

    .line 15
    :cond_6
    iget-object v7, p1, Lm5/p;->e:Lorg/threeten/bp/Duration;

    if-nez v7, :cond_7

    .line 16
    iget-object v7, p0, Lm5/p;->e:Lorg/threeten/bp/Duration;

    .line 17
    :cond_7
    iget-object v8, p1, Lm5/p;->f:Ljava/lang/Integer;

    if-nez v8, :cond_8

    .line 18
    iget-object v8, p0, Lm5/p;->f:Ljava/lang/Integer;

    .line 19
    :cond_8
    iget-object v9, p1, Lm5/p;->g:Lcom/google/api/gax/retrying/RetrySettings;

    if-nez v9, :cond_9

    .line 20
    iget-object v9, p0, Lm5/p;->g:Lcom/google/api/gax/retrying/RetrySettings;

    :cond_9
    move-object v10, v9

    .line 21
    iget-object v9, p1, Lm5/p;->h:Lcom/google/common/collect/ImmutableSet;

    if-nez v9, :cond_a

    .line 22
    iget-object v9, p0, Lm5/p;->h:Lcom/google/common/collect/ImmutableSet;

    :cond_a
    move-object v11, v9

    .line 23
    iget-object v9, p0, Lm5/p;->i:Lcom/google/common/collect/ImmutableMap;

    iget-object v12, p1, Lm5/p;->i:Lcom/google/common/collect/ImmutableMap;

    .line 24
    invoke-static {v9, v12}, Lp5/c;->a(Ljava/util/Map;Ljava/util/Map;)Lcom/google/common/collect/ImmutableMap;

    move-result-object v9

    .line 25
    iget-object v12, p0, Lm5/p;->j:Lp5/a;

    iget-object v13, p1, Lm5/p;->j:Lp5/a;

    invoke-virtual {v12, v13}, Lp5/a;->b(Lp5/a;)Lp5/a;

    move-result-object v12

    .line 26
    iget-object p1, p1, Lm5/p;->b:Lio/grpc/c;

    .line 27
    invoke-virtual {p1, v1}, Lio/grpc/c;->k(Lio/grpc/b;)Lio/grpc/c;

    move-result-object p1

    .line 28
    invoke-virtual {p1, v0}, Lio/grpc/c;->l(Lio/grpc/t;)Lio/grpc/c;

    move-result-object p1

    if-eqz v3, :cond_b

    .line 29
    invoke-virtual {p1, v4, v3}, Lio/grpc/c;->q(Lio/grpc/c$a;Ljava/lang/Object;)Lio/grpc/c;

    move-result-object p1

    :cond_b
    move-object v3, p1

    .line 30
    new-instance p1, Lm5/p;

    move-object v1, p1

    move-object v4, v5

    move-object v5, v6

    move-object v6, v7

    move-object v7, v8

    move-object v8, v9

    move-object v9, v12

    invoke-direct/range {v1 .. v11}, Lm5/p;-><init>(Lio/grpc/d;Lio/grpc/c;Lorg/threeten/bp/Duration;Lorg/threeten/bp/Duration;Lorg/threeten/bp/Duration;Ljava/lang/Integer;Lcom/google/common/collect/ImmutableMap;Lp5/a;Lcom/google/api/gax/retrying/RetrySettings;Ljava/util/Set;)V

    return-object p1

    .line 31
    :cond_c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "context must be an instance of GrpcCallContext, but found "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public g()Lio/grpc/c;
    .locals 1

    iget-object v0, p0, Lm5/p;->b:Lio/grpc/c;

    return-object v0
.end method

.method public h()Lio/grpc/d;
    .locals 1

    iget-object v0, p0, Lm5/p;->a:Lio/grpc/d;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    const/16 v0, 0xa

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Lm5/p;->a:Lio/grpc/d;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lm5/p;->b:Lio/grpc/c;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Lm5/p;->c:Lorg/threeten/bp/Duration;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget-object v1, p0, Lm5/p;->d:Lorg/threeten/bp/Duration;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    iget-object v1, p0, Lm5/p;->e:Lorg/threeten/bp/Duration;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    iget-object v1, p0, Lm5/p;->f:Ljava/lang/Integer;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    iget-object v1, p0, Lm5/p;->i:Lcom/google/common/collect/ImmutableMap;

    const/4 v2, 0x6

    aput-object v1, v0, v2

    iget-object v1, p0, Lm5/p;->j:Lp5/a;

    const/4 v2, 0x7

    aput-object v1, v0, v2

    iget-object v1, p0, Lm5/p;->g:Lcom/google/api/gax/retrying/RetrySettings;

    const/16 v2, 0x8

    aput-object v1, v0, v2

    iget-object v1, p0, Lm5/p;->h:Lcom/google/common/collect/ImmutableSet;

    const/16 v2, 0x9

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public i()Ljava/lang/Integer;
    .locals 1

    iget-object v0, p0, Lm5/p;->f:Ljava/lang/Integer;

    return-object v0
.end method

.method public j()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    iget-object v0, p0, Lm5/p;->i:Lcom/google/common/collect/ImmutableMap;

    return-object v0
.end method

.method k()Lio/grpc/s0;
    .locals 6

    .line 1
    new-instance v0, Lio/grpc/s0;

    invoke-direct {v0}, Lio/grpc/s0;-><init>()V

    .line 2
    iget-object v1, p0, Lm5/p;->i:Lcom/google/common/collect/ImmutableMap;

    invoke-virtual {v1}, Lcom/google/common/collect/ImmutableMap;->entrySet()Lcom/google/common/collect/ImmutableSet;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/common/collect/ImmutableSet;->iterator()Lcom/google/common/collect/e9;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 3
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 4
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 5
    sget-object v5, Lio/grpc/s0;->e:Lio/grpc/s0$d;

    invoke-static {v3, v5}, Lio/grpc/s0$i;->e(Ljava/lang/String;Lio/grpc/s0$d;)Lio/grpc/s0$i;

    move-result-object v5

    invoke-virtual {v0, v5, v4}, Lio/grpc/s0;->t(Lio/grpc/s0$i;Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public l()Lorg/threeten/bp/Duration;
    .locals 1

    iget-object v0, p0, Lm5/p;->c:Lorg/threeten/bp/Duration;

    return-object v0
.end method

.method public m(Lio/grpc/c;)Lm5/p;
    .locals 12

    new-instance v11, Lm5/p;

    iget-object v1, p0, Lm5/p;->a:Lio/grpc/d;

    iget-object v3, p0, Lm5/p;->c:Lorg/threeten/bp/Duration;

    iget-object v4, p0, Lm5/p;->d:Lorg/threeten/bp/Duration;

    iget-object v5, p0, Lm5/p;->e:Lorg/threeten/bp/Duration;

    iget-object v6, p0, Lm5/p;->f:Ljava/lang/Integer;

    iget-object v7, p0, Lm5/p;->i:Lcom/google/common/collect/ImmutableMap;

    iget-object v8, p0, Lm5/p;->j:Lp5/a;

    iget-object v9, p0, Lm5/p;->g:Lcom/google/api/gax/retrying/RetrySettings;

    iget-object v10, p0, Lm5/p;->h:Lcom/google/common/collect/ImmutableSet;

    move-object v0, v11

    move-object v2, p1

    invoke-direct/range {v0 .. v10}, Lm5/p;-><init>(Lio/grpc/d;Lio/grpc/c;Lorg/threeten/bp/Duration;Lorg/threeten/bp/Duration;Lorg/threeten/bp/Duration;Ljava/lang/Integer;Lcom/google/common/collect/ImmutableMap;Lp5/a;Lcom/google/api/gax/retrying/RetrySettings;Ljava/util/Set;)V

    return-object v11
.end method

.method public n(Lio/grpc/d;)Lm5/p;
    .locals 12

    new-instance v11, Lm5/p;

    iget-object v2, p0, Lm5/p;->b:Lio/grpc/c;

    iget-object v3, p0, Lm5/p;->c:Lorg/threeten/bp/Duration;

    iget-object v4, p0, Lm5/p;->d:Lorg/threeten/bp/Duration;

    iget-object v5, p0, Lm5/p;->e:Lorg/threeten/bp/Duration;

    iget-object v6, p0, Lm5/p;->f:Ljava/lang/Integer;

    iget-object v7, p0, Lm5/p;->i:Lcom/google/common/collect/ImmutableMap;

    iget-object v8, p0, Lm5/p;->j:Lp5/a;

    iget-object v9, p0, Lm5/p;->g:Lcom/google/api/gax/retrying/RetrySettings;

    iget-object v10, p0, Lm5/p;->h:Lcom/google/common/collect/ImmutableSet;

    move-object v0, v11

    move-object v1, p1

    invoke-direct/range {v0 .. v10}, Lm5/p;-><init>(Lio/grpc/d;Lio/grpc/c;Lorg/threeten/bp/Duration;Lorg/threeten/bp/Duration;Lorg/threeten/bp/Duration;Ljava/lang/Integer;Lcom/google/common/collect/ImmutableMap;Lp5/a;Lcom/google/api/gax/retrying/RetrySettings;Ljava/util/Set;)V

    return-object v11
.end method

.method public o(Lcom/google/auth/Credentials;)Lm5/p;
    .locals 1

    .line 1
    invoke-static {p1}, Lcom/google/common/base/o;->s(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    invoke-static {p1}, Lgg/b;->a(Lcom/google/auth/Credentials;)Lio/grpc/b;

    move-result-object p1

    .line 3
    iget-object v0, p0, Lm5/p;->b:Lio/grpc/c;

    invoke-virtual {v0, p1}, Lio/grpc/c;->k(Lio/grpc/b;)Lio/grpc/c;

    move-result-object p1

    invoke-virtual {p0, p1}, Lm5/p;->m(Lio/grpc/c;)Lm5/p;

    move-result-object p1

    return-object p1
.end method

.method public p(Lr5/a;)Lm5/p;
    .locals 2

    .line 1
    invoke-static {p1}, Lcom/google/common/base/o;->s(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    iget-object v0, p0, Lm5/p;->b:Lio/grpc/c;

    sget-object v1, Lm5/p;->k:Lio/grpc/c$a;

    invoke-virtual {v0, v1, p1}, Lio/grpc/c;->q(Lio/grpc/c$a;Ljava/lang/Object;)Lio/grpc/c;

    move-result-object p1

    invoke-virtual {p0, p1}, Lm5/p;->m(Lio/grpc/c;)Lm5/p;

    move-result-object p1

    return-object p1
.end method

.method public q(Lcom/google/api/gax/rpc/h0;)Lm5/p;
    .locals 3

    .line 1
    invoke-static {p1}, Lcom/google/common/base/o;->s(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    instance-of v0, p1, Lm5/h0;

    if-eqz v0, :cond_0

    .line 3
    check-cast p1, Lm5/h0;

    .line 4
    invoke-virtual {p1}, Lm5/h0;->c()Lio/grpc/d;

    move-result-object p1

    invoke-virtual {p0, p1}, Lm5/p;->n(Lio/grpc/d;)Lm5/p;

    move-result-object p1

    return-object p1

    .line 5
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Expected GrpcTransportChannel, got "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
