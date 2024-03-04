.class public final Lig/f0;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static final c:Lig/f0;


# instance fields
.field private final a:Lio/grpc/a;

.field private final b:Lio/grpc/c0$c;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lig/f0;

    sget-object v1, Lio/grpc/a;->c:Lio/grpc/a;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lig/f0;-><init>(Lio/grpc/a;Lio/grpc/c0$c;)V

    sput-object v0, Lig/f0;->c:Lig/f0;

    return-void
.end method

.method private constructor <init>(Lio/grpc/a;Lio/grpc/c0$c;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "attributes"

    .line 2
    invoke-static {p1, v0}, Lcom/google/common/base/o;->t(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/grpc/a;

    iput-object p1, p0, Lig/f0;->a:Lio/grpc/a;

    .line 3
    iput-object p2, p0, Lig/f0;->b:Lio/grpc/c0$c;

    return-void
.end method


# virtual methods
.method a()Lio/grpc/a;
    .locals 1

    iget-object v0, p0, Lig/f0;->a:Lio/grpc/a;

    return-object v0
.end method

.method b()Lio/grpc/c0$c;
    .locals 1

    iget-object v0, p0, Lig/f0;->b:Lio/grpc/c0$c;

    return-object v0
.end method

.method c(Lio/grpc/a;)Lig/f0;
    .locals 2

    new-instance v0, Lig/f0;

    iget-object v1, p0, Lig/f0;->b:Lio/grpc/c0$c;

    invoke-direct {v0, p1, v1}, Lig/f0;-><init>(Lio/grpc/a;Lio/grpc/c0$c;)V

    return-object v0
.end method

.method d(Lio/grpc/c0$c;)Lig/f0;
    .locals 2

    new-instance v0, Lig/f0;

    iget-object v1, p0, Lig/f0;->a:Lio/grpc/a;

    invoke-direct {v0, v1, p1}, Lig/f0;-><init>(Lio/grpc/a;Lio/grpc/c0$c;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .line 1
    instance-of v0, p1, Lig/f0;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 2
    :cond_0
    check-cast p1, Lig/f0;

    .line 3
    iget-object v0, p0, Lig/f0;->a:Lio/grpc/a;

    iget-object v2, p1, Lig/f0;->a:Lio/grpc/a;

    invoke-static {v0, v2}, Lcom/google/common/base/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lig/f0;->b:Lio/grpc/c0$c;

    iget-object p1, p1, Lig/f0;->b:Lio/grpc/c0$c;

    .line 4
    invoke-static {v0, p1}, Lcom/google/common/base/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public hashCode()I
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Lig/f0;->a:Lio/grpc/a;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lig/f0;->b:Lio/grpc/c0$c;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-static {v0}, Lcom/google/common/base/l;->b([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 1
    invoke-static {p0}, Lcom/google/common/base/j;->c(Ljava/lang/Object;)Lcom/google/common/base/j$b;

    move-result-object v0

    iget-object v1, p0, Lig/f0;->a:Lio/grpc/a;

    const-string v2, "attributes"

    .line 2
    invoke-virtual {v0, v2, v1}, Lcom/google/common/base/j$b;->d(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/j$b;

    move-result-object v0

    iget-object v1, p0, Lig/f0;->b:Lio/grpc/c0$c;

    const-string v2, "security"

    .line 3
    invoke-virtual {v0, v2, v1}, Lcom/google/common/base/j$b;->d(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/j$b;

    move-result-object v0

    .line 4
    invoke-virtual {v0}, Lcom/google/common/base/j$b;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
