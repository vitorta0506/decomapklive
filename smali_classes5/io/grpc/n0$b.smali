.class public final Lio/grpc/n0$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/grpc/n0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/grpc/n0$b$a;
    }
.end annotation


# instance fields
.field private final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lio/grpc/x;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Lio/grpc/a;

.field private final c:[[Ljava/lang/Object;


# direct methods
.method private constructor <init>(Ljava/util/List;Lio/grpc/a;[[Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lio/grpc/x;",
            ">;",
            "Lio/grpc/a;",
            "[[",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "addresses are not set"

    .line 3
    invoke-static {p1, v0}, Lcom/google/common/base/o;->t(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    iput-object p1, p0, Lio/grpc/n0$b;->a:Ljava/util/List;

    const-string p1, "attrs"

    .line 4
    invoke-static {p2, p1}, Lcom/google/common/base/o;->t(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/grpc/a;

    iput-object p1, p0, Lio/grpc/n0$b;->b:Lio/grpc/a;

    const-string p1, "customOptions"

    .line 5
    invoke-static {p3, p1}, Lcom/google/common/base/o;->t(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [[Ljava/lang/Object;

    iput-object p1, p0, Lio/grpc/n0$b;->c:[[Ljava/lang/Object;

    return-void
.end method

.method synthetic constructor <init>(Ljava/util/List;Lio/grpc/a;[[Ljava/lang/Object;Lio/grpc/n0$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lio/grpc/n0$b;-><init>(Ljava/util/List;Lio/grpc/a;[[Ljava/lang/Object;)V

    return-void
.end method

.method public static c()Lio/grpc/n0$b$a;
    .locals 1

    new-instance v0, Lio/grpc/n0$b$a;

    invoke-direct {v0}, Lio/grpc/n0$b$a;-><init>()V

    return-object v0
.end method


# virtual methods
.method public a()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lio/grpc/x;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lio/grpc/n0$b;->a:Ljava/util/List;

    return-object v0
.end method

.method public b()Lio/grpc/a;
    .locals 1

    iget-object v0, p0, Lio/grpc/n0$b;->b:Lio/grpc/a;

    return-object v0
.end method

.method public d()Lio/grpc/n0$b$a;
    .locals 2

    invoke-static {}, Lio/grpc/n0$b;->c()Lio/grpc/n0$b$a;

    move-result-object v0

    iget-object v1, p0, Lio/grpc/n0$b;->a:Ljava/util/List;

    invoke-virtual {v0, v1}, Lio/grpc/n0$b$a;->e(Ljava/util/List;)Lio/grpc/n0$b$a;

    move-result-object v0

    iget-object v1, p0, Lio/grpc/n0$b;->b:Lio/grpc/a;

    invoke-virtual {v0, v1}, Lio/grpc/n0$b$a;->f(Lio/grpc/a;)Lio/grpc/n0$b$a;

    move-result-object v0

    iget-object v1, p0, Lio/grpc/n0$b;->c:[[Ljava/lang/Object;

    invoke-static {v0, v1}, Lio/grpc/n0$b$a;->a(Lio/grpc/n0$b$a;[[Ljava/lang/Object;)Lio/grpc/n0$b$a;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 1
    invoke-static {p0}, Lcom/google/common/base/j;->c(Ljava/lang/Object;)Lcom/google/common/base/j$b;

    move-result-object v0

    iget-object v1, p0, Lio/grpc/n0$b;->a:Ljava/util/List;

    const-string v2, "addrs"

    .line 2
    invoke-virtual {v0, v2, v1}, Lcom/google/common/base/j$b;->d(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/j$b;

    move-result-object v0

    iget-object v1, p0, Lio/grpc/n0$b;->b:Lio/grpc/a;

    const-string v2, "attrs"

    .line 3
    invoke-virtual {v0, v2, v1}, Lcom/google/common/base/j$b;->d(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/j$b;

    move-result-object v0

    iget-object v1, p0, Lio/grpc/n0$b;->c:[[Ljava/lang/Object;

    .line 4
    invoke-static {v1}, Ljava/util/Arrays;->deepToString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "customOptions"

    invoke-virtual {v0, v2, v1}, Lcom/google/common/base/j$b;->d(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/j$b;

    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/google/common/base/j$b;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
