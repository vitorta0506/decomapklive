.class final Leh/w1$a$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Leh/w1$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "a"
.end annotation


# instance fields
.field final a:Lio/grpc/internal/e2$b;

.field final b:Z


# direct methods
.method constructor <init>(Lio/grpc/internal/e2$b;Z)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "policySelection"

    .line 2
    invoke-static {p1, v0}, Lcom/google/common/base/o;->t(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/grpc/internal/e2$b;

    iput-object p1, p0, Leh/w1$a$a;->a:Lio/grpc/internal/e2$b;

    .line 3
    iput-boolean p2, p0, Leh/w1$a$a;->b:Z

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 3

    .line 1
    invoke-static {p0}, Lcom/google/common/base/j;->c(Ljava/lang/Object;)Lcom/google/common/base/j$b;

    move-result-object v0

    iget-object v1, p0, Leh/w1$a$a;->a:Lio/grpc/internal/e2$b;

    const-string v2, "policySelection"

    .line 2
    invoke-virtual {v0, v2, v1}, Lcom/google/common/base/j$b;->d(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/j$b;

    move-result-object v0

    iget-boolean v1, p0, Leh/w1$a$a;->b:Z

    const-string v2, "ignoreReresolution"

    .line 3
    invoke-virtual {v0, v2, v1}, Lcom/google/common/base/j$b;->e(Ljava/lang/String;Z)Lcom/google/common/base/j$b;

    move-result-object v0

    .line 4
    invoke-virtual {v0}, Lcom/google/common/base/j$b;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
