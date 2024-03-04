.class final Leh/p0$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Leh/p0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "a"
.end annotation


# instance fields
.field final a:Ljava/lang/String;

.field final b:Ljava/lang/String;

.field final c:Leh/j0$d;

.field final d:Ljava/lang/Long;

.field final e:Leh/i1;

.field final f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Leh/x0;",
            ">;"
        }
    .end annotation
.end field

.field final g:Lio/grpc/internal/e2$b;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Leh/j0$d;Ljava/lang/Long;Ljava/util/List;Lio/grpc/internal/e2$b;Leh/i1;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Leh/j0$d;",
            "Ljava/lang/Long;",
            "Ljava/util/List<",
            "Leh/x0;",
            ">;",
            "Lio/grpc/internal/e2$b;",
            "Leh/i1;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "cluster"

    .line 2
    invoke-static {p1, v0}, Lcom/google/common/base/o;->t(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iput-object p1, p0, Leh/p0$a;->a:Ljava/lang/String;

    .line 3
    iput-object p2, p0, Leh/p0$a;->b:Ljava/lang/String;

    .line 4
    iput-object p3, p0, Leh/p0$a;->c:Leh/j0$d;

    .line 5
    iput-object p4, p0, Leh/p0$a;->d:Ljava/lang/Long;

    .line 6
    iput-object p7, p0, Leh/p0$a;->e:Leh/i1;

    .line 7
    new-instance p1, Ljava/util/ArrayList;

    const-string p2, "dropCategories"

    .line 8
    invoke-static {p5, p2}, Lcom/google/common/base/o;->t(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/Collection;

    invoke-direct {p1, p2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 9
    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Leh/p0$a;->f:Ljava/util/List;

    const-string p1, "childPolicy"

    .line 10
    invoke-static {p6, p1}, Lcom/google/common/base/o;->t(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/grpc/internal/e2$b;

    iput-object p1, p0, Leh/p0$a;->g:Lio/grpc/internal/e2$b;

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 3

    .line 1
    invoke-static {p0}, Lcom/google/common/base/j;->c(Ljava/lang/Object;)Lcom/google/common/base/j$b;

    move-result-object v0

    iget-object v1, p0, Leh/p0$a;->a:Ljava/lang/String;

    const-string v2, "cluster"

    .line 2
    invoke-virtual {v0, v2, v1}, Lcom/google/common/base/j$b;->d(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/j$b;

    move-result-object v0

    iget-object v1, p0, Leh/p0$a;->b:Ljava/lang/String;

    const-string v2, "edsServiceName"

    .line 3
    invoke-virtual {v0, v2, v1}, Lcom/google/common/base/j$b;->d(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/j$b;

    move-result-object v0

    iget-object v1, p0, Leh/p0$a;->c:Leh/j0$d;

    const-string v2, "lrsServerInfo"

    .line 4
    invoke-virtual {v0, v2, v1}, Lcom/google/common/base/j$b;->d(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/j$b;

    move-result-object v0

    iget-object v1, p0, Leh/p0$a;->d:Ljava/lang/Long;

    const-string v2, "maxConcurrentRequests"

    .line 5
    invoke-virtual {v0, v2, v1}, Lcom/google/common/base/j$b;->d(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/j$b;

    move-result-object v0

    iget-object v1, p0, Leh/p0$a;->f:Ljava/util/List;

    const-string v2, "dropCategories"

    .line 6
    invoke-virtual {v0, v2, v1}, Lcom/google/common/base/j$b;->d(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/j$b;

    move-result-object v0

    iget-object v1, p0, Leh/p0$a;->g:Lio/grpc/internal/e2$b;

    const-string v2, "childPolicy"

    .line 7
    invoke-virtual {v0, v2, v1}, Lcom/google/common/base/j$b;->d(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/j$b;

    move-result-object v0

    .line 8
    invoke-virtual {v0}, Lcom/google/common/base/j$b;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
