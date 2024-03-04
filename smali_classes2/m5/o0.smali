.class public Lm5/o0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lk5/b;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<ResponseT::",
        "Lcom/google/protobuf/l1;",
        ">",
        "Ljava/lang/Object;",
        "Lk5/b<",
        "Ln5/b;",
        "TResponseT;>;"
    }
.end annotation


# instance fields
.field private final a:Lm5/m0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lm5/m0<",
            "TResponseT;>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Ljava/lang/Class;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "TResponseT;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lm5/m0;

    invoke-direct {v0, p1}, Lm5/m0;-><init>(Ljava/lang/Class;)V

    iput-object v0, p0, Lm5/o0;->a:Lm5/m0;

    return-void
.end method

.method public static b(Ljava/lang/Class;)Lm5/o0;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<ResponseT::",
            "Lcom/google/protobuf/l1;",
            ">(",
            "Ljava/lang/Class<",
            "TResponseT;>;)",
            "Lm5/o0<",
            "TResponseT;>;"
        }
    .end annotation

    new-instance v0, Lm5/o0;

    invoke-direct {v0, p0}, Lm5/o0;-><init>(Ljava/lang/Class;)V

    return-object v0
.end method


# virtual methods
.method public a(Ln5/b;)Lcom/google/protobuf/l1;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ln5/b;",
            ")TResponseT;"
        }
    .end annotation

    .line 1
    invoke-interface {p1}, Ln5/b;->getErrorCode()Lcom/google/api/gax/rpc/StatusCode;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/api/gax/rpc/StatusCode;->getCode()Lcom/google/api/gax/rpc/StatusCode$Code;

    move-result-object v0

    sget-object v1, Lcom/google/api/gax/rpc/StatusCode$Code;->OK:Lcom/google/api/gax/rpc/StatusCode$Code;

    invoke-virtual {v0, v1}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    const-string v2, "Operation with name \""

    if-eqz v0, :cond_1

    .line 2
    invoke-interface {p1}, Ln5/b;->b()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lcom/google/protobuf/Any;

    if-nez v0, :cond_0

    .line 3
    invoke-interface {p1}, Ln5/b;->b()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/protobuf/l1;

    return-object p1

    .line 4
    :cond_0
    :try_start_0
    iget-object v0, p0, Lm5/o0;->a:Lm5/m0;

    invoke-interface {p1}, Ln5/b;->b()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/protobuf/Any;

    invoke-virtual {v0, v3}, Lm5/m0;->a(Lcom/google/protobuf/Any;)Lcom/google/protobuf/l1;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception v0

    .line 5
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6
    invoke-interface {p1}, Ln5/b;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\" succeeded, but encountered a problem unpacking it."

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 7
    invoke-interface {p1}, Ln5/b;->getErrorCode()Lcom/google/api/gax/rpc/StatusCode;

    move-result-object p1

    .line 8
    invoke-static {v2, v0, p1, v1}, Lcom/google/api/gax/rpc/b;->a(Ljava/lang/String;Ljava/lang/Throwable;Lcom/google/api/gax/rpc/StatusCode;Z)Lcom/google/api/gax/rpc/ApiException;

    move-result-object p1

    throw p1

    .line 9
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 10
    invoke-interface {p1}, Ln5/b;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\" failed with status = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    invoke-interface {p1}, Ln5/b;->getErrorCode()Lcom/google/api/gax/rpc/StatusCode;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " and message = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 12
    invoke-interface {p1}, Ln5/b;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    .line 13
    invoke-interface {p1}, Ln5/b;->getErrorCode()Lcom/google/api/gax/rpc/StatusCode;

    move-result-object p1

    .line 14
    invoke-static {v0, v2, p1, v1}, Lcom/google/api/gax/rpc/b;->a(Ljava/lang/String;Ljava/lang/Throwable;Lcom/google/api/gax/rpc/StatusCode;Z)Lcom/google/api/gax/rpc/ApiException;

    move-result-object p1

    throw p1
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Ln5/b;

    invoke-virtual {p0, p1}, Lm5/o0;->a(Ln5/b;)Lcom/google/protobuf/l1;

    move-result-object p1

    return-object p1
.end method
