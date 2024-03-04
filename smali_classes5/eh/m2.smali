.class final Leh/m2;
.super Lio/grpc/n0$i;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Leh/m2$a;
    }
.end annotation


# instance fields
.field final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Leh/m2$a;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Leh/j2;

.field private final c:I


# direct methods
.method constructor <init>(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Leh/m2$a;",
            ">;)V"
        }
    .end annotation

    .line 1
    sget-object v0, Leh/j2$a;->a:Leh/j2;

    invoke-direct {p0, p1, v0}, Leh/m2;-><init>(Ljava/util/List;Leh/j2;)V

    return-void
.end method

.method constructor <init>(Ljava/util/List;Leh/j2;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Leh/m2$a;",
            ">;",
            "Leh/j2;",
            ")V"
        }
    .end annotation

    .line 2
    invoke-direct {p0}, Lio/grpc/n0$i;-><init>()V

    const-string v0, "weightedChildPickers in null"

    .line 3
    invoke-static {p1, v0}, Lcom/google/common/base/o;->t(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    const-string v1, "weightedChildPickers is empty"

    invoke-static {v0, v1}, Lcom/google/common/base/o;->e(ZLjava/lang/Object;)V

    .line 5
    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Leh/m2;->a:Ljava/util/List;

    const/4 v0, 0x0

    .line 6
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Leh/m2$a;

    .line 7
    invoke-virtual {v1}, Leh/m2$a;->b()I

    move-result v1

    add-int/2addr v0, v1

    goto :goto_0

    .line 8
    :cond_0
    iput v0, p0, Leh/m2;->c:I

    .line 9
    iput-object p2, p0, Leh/m2;->b:Leh/j2;

    return-void
.end method


# virtual methods
.method public final a(Lio/grpc/n0$f;)Lio/grpc/n0$e;
    .locals 4

    .line 1
    iget v0, p0, Leh/m2;->c:I

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Leh/m2;->a:Ljava/util/List;

    iget-object v1, p0, Leh/m2;->b:Leh/j2;

    .line 3
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    invoke-interface {v1, v2}, Leh/j2;->b(I)I

    move-result v1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Leh/m2$a;

    invoke-virtual {v0}, Leh/m2$a;->a()Lio/grpc/n0$i;

    move-result-object v0

    goto :goto_2

    .line 4
    :cond_0
    iget-object v1, p0, Leh/m2;->b:Leh/j2;

    invoke-interface {v1, v0}, Leh/j2;->b(I)I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 5
    :goto_0
    iget-object v3, p0, Leh/m2;->a:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_2

    .line 6
    iget-object v3, p0, Leh/m2;->a:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Leh/m2$a;

    invoke-virtual {v3}, Leh/m2$a;->b()I

    move-result v3

    add-int/2addr v2, v3

    if-ge v0, v2, :cond_1

    .line 7
    iget-object v0, p0, Leh/m2;->a:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Leh/m2$a;

    invoke-virtual {v0}, Leh/m2$a;->a()Lio/grpc/n0$i;

    move-result-object v0

    goto :goto_1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_1
    const-string v1, "childPicker not found"

    .line 8
    invoke-static {v0, v1}, Lcom/google/common/base/o;->t(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    :goto_2
    invoke-virtual {v0, p1}, Lio/grpc/n0$i;->a(Lio/grpc/n0$f;)Lio/grpc/n0$e;

    move-result-object p1

    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 1
    invoke-static {p0}, Lcom/google/common/base/j;->c(Ljava/lang/Object;)Lcom/google/common/base/j$b;

    move-result-object v0

    iget-object v1, p0, Leh/m2;->a:Ljava/util/List;

    const-string v2, "weightedChildPickers"

    .line 2
    invoke-virtual {v0, v2, v1}, Lcom/google/common/base/j$b;->d(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/j$b;

    move-result-object v0

    iget v1, p0, Leh/m2;->c:I

    const-string v2, "totalWeight"

    .line 3
    invoke-virtual {v0, v2, v1}, Lcom/google/common/base/j$b;->b(Ljava/lang/String;I)Lcom/google/common/base/j$b;

    move-result-object v0

    .line 4
    invoke-virtual {v0}, Lcom/google/common/base/j$b;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
