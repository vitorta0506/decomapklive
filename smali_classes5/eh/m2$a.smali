.class final Leh/m2$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Leh/m2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "a"
.end annotation


# instance fields
.field private final a:I

.field private final b:Lio/grpc/n0$i;


# direct methods
.method constructor <init>(ILio/grpc/n0$i;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-ltz p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "weight is negative"

    .line 2
    invoke-static {v0, v1}, Lcom/google/common/base/o;->e(ZLjava/lang/Object;)V

    const-string v0, "childPicker is null"

    .line 3
    invoke-static {p2, v0}, Lcom/google/common/base/o;->t(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    iput p1, p0, Leh/m2$a;->a:I

    .line 5
    iput-object p2, p0, Leh/m2$a;->b:Lio/grpc/n0$i;

    return-void
.end method


# virtual methods
.method a()Lio/grpc/n0$i;
    .locals 1

    iget-object v0, p0, Leh/m2$a;->b:Lio/grpc/n0$i;

    return-object v0
.end method

.method b()I
    .locals 1

    iget v0, p0, Leh/m2$a;->a:I

    return v0
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
    const-class v2, Leh/m2$a;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    .line 2
    :cond_1
    check-cast p1, Leh/m2$a;

    .line 3
    iget v2, p0, Leh/m2$a;->a:I

    iget v3, p1, Leh/m2$a;->a:I

    if-ne v2, v3, :cond_2

    iget-object v2, p0, Leh/m2$a;->b:Lio/grpc/n0$i;

    iget-object p1, p1, Leh/m2$a;->b:Lio/grpc/n0$i;

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

.method public hashCode()I
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    iget v1, p0, Leh/m2$a;->a:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Leh/m2$a;->b:Lio/grpc/n0$i;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 1
    invoke-static {p0}, Lcom/google/common/base/j;->c(Ljava/lang/Object;)Lcom/google/common/base/j$b;

    move-result-object v0

    iget v1, p0, Leh/m2$a;->a:I

    const-string v2, "weight"

    .line 2
    invoke-virtual {v0, v2, v1}, Lcom/google/common/base/j$b;->b(Ljava/lang/String;I)Lcom/google/common/base/j$b;

    move-result-object v0

    iget-object v1, p0, Leh/m2$a;->b:Lio/grpc/n0$i;

    const-string v2, "childPicker"

    .line 3
    invoke-virtual {v0, v2, v1}, Lcom/google/common/base/j$b;->d(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/j$b;

    move-result-object v0

    .line 4
    invoke-virtual {v0}, Lcom/google/common/base/j$b;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
