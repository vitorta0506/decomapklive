.class final Lhg/i$f;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lhg/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "f"
.end annotation


# instance fields
.field private final a:Lhg/c;

.field private final b:Ljava/lang/String;


# direct methods
.method constructor <init>(Lhg/c;Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "loadRecorder"

    .line 2
    invoke-static {p1, v0}, Lcom/google/common/base/o;->t(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lhg/c;

    iput-object p1, p0, Lhg/i$f;->a:Lhg/c;

    const-string p1, "token"

    .line 3
    invoke-static {p2, p1}, Lcom/google/common/base/o;->t(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iput-object p1, p0, Lhg/i$f;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method a()Lio/grpc/n0$e;
    .locals 2

    .line 1
    iget-object v0, p0, Lhg/i$f;->a:Lhg/c;

    iget-object v1, p0, Lhg/i$f;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lhg/c;->f(Ljava/lang/String;)V

    .line 2
    sget-object v0, Lhg/i;->C:Lio/grpc/n0$e;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .line 1
    instance-of v0, p1, Lhg/i$f;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 2
    :cond_0
    check-cast p1, Lhg/i$f;

    .line 3
    iget-object v0, p0, Lhg/i$f;->a:Lhg/c;

    iget-object v2, p1, Lhg/i$f;->a:Lhg/c;

    invoke-static {v0, v2}, Lcom/google/common/base/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lhg/i$f;->b:Ljava/lang/String;

    iget-object p1, p1, Lhg/i$f;->b:Ljava/lang/String;

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

    iget-object v1, p0, Lhg/i$f;->a:Lhg/c;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lhg/i$f;->b:Ljava/lang/String;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-static {v0}, Lcom/google/common/base/l;->b([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "drop("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lhg/i$f;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
