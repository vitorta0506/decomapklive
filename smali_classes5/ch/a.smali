.class public final Lch/a;
.super Lio/grpc/o0;
.source "SourceFile"


# instance fields
.field private final b:Lio/grpc/o0;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lio/grpc/o0;-><init>()V

    .line 2
    invoke-static {}, Lch/a;->f()Lio/grpc/o0;

    move-result-object v0

    iput-object v0, p0, Lch/a;->b:Lio/grpc/o0;

    return-void
.end method

.method static f()Lio/grpc/o0;
    .locals 3

    .line 1
    :try_start_0
    const-class v0, Ldh/f;

    const-class v1, Lio/grpc/o0;

    .line 2
    invoke-virtual {v0, v1}, Ljava/lang/Class;->asSubclass(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v0

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Class;

    .line 3
    invoke-virtual {v0, v2}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/grpc/o0;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 4
    invoke-static {v0}, Lcom/google/common/base/y;->k(Ljava/lang/Throwable;)V

    .line 5
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method


# virtual methods
.method public a(Lio/grpc/n0$d;)Lio/grpc/n0;
    .locals 1

    iget-object v0, p0, Lch/a;->b:Lio/grpc/o0;

    invoke-static {v0, p1}, Lbh/b;->a(Lio/grpc/n0$c;Lio/grpc/n0$d;)Lio/grpc/n0;

    move-result-object p1

    return-object p1
.end method

.method public b()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lch/a;->b:Lio/grpc/o0;

    invoke-virtual {v0}, Lio/grpc/o0;->b()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public c()I
    .locals 1

    iget-object v0, p0, Lch/a;->b:Lio/grpc/o0;

    invoke-virtual {v0}, Lio/grpc/o0;->c()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public d()Z
    .locals 1

    iget-object v0, p0, Lch/a;->b:Lio/grpc/o0;

    invoke-virtual {v0}, Lio/grpc/o0;->d()Z

    move-result v0

    return v0
.end method

.method public e(Ljava/util/Map;)Lio/grpc/t0$c;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "*>;)",
            "Lio/grpc/t0$c;"
        }
    .end annotation

    iget-object v0, p0, Lch/a;->b:Lio/grpc/o0;

    invoke-virtual {v0, p1}, Lio/grpc/o0;->e(Ljava/util/Map;)Lio/grpc/t0$c;

    move-result-object p1

    return-object p1
.end method
