.class final Lcom/google/protobuf/j0;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Lcom/google/protobuf/g0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/g0<",
            "*>;"
        }
    .end annotation
.end field

.field private static final b:Lcom/google/protobuf/g0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/g0<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/google/protobuf/i0;

    invoke-direct {v0}, Lcom/google/protobuf/i0;-><init>()V

    sput-object v0, Lcom/google/protobuf/j0;->a:Lcom/google/protobuf/g0;

    .line 2
    invoke-static {}, Lcom/google/protobuf/j0;->c()Lcom/google/protobuf/g0;

    move-result-object v0

    sput-object v0, Lcom/google/protobuf/j0;->b:Lcom/google/protobuf/g0;

    return-void
.end method

.method static a()Lcom/google/protobuf/g0;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/g0<",
            "*>;"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/google/protobuf/j0;->b:Lcom/google/protobuf/g0;

    if-eqz v0, :cond_0

    return-object v0

    .line 2
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Protobuf runtime is not correctly loaded."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static b()Lcom/google/protobuf/g0;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/g0<",
            "*>;"
        }
    .end annotation

    sget-object v0, Lcom/google/protobuf/j0;->a:Lcom/google/protobuf/g0;

    return-object v0
.end method

.method private static c()Lcom/google/protobuf/g0;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/g0<",
            "*>;"
        }
    .end annotation

    .line 1
    :try_start_0
    const-class v0, Lcom/google/protobuf/h0;

    sget v1, Lcom/google/protobuf/h0;->b:I

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Class;

    .line 2
    invoke-virtual {v0, v2}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/g0;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    const/4 v0, 0x0

    return-object v0
.end method
