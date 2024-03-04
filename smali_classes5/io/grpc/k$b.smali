.class public final Lio/grpc/k$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/grpc/k;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/grpc/k$b$a;
    }
.end annotation


# instance fields
.field private final a:Lio/grpc/c;

.field private final b:I

.field private final c:Z


# direct methods
.method constructor <init>(Lio/grpc/c;IZ)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "callOptions"

    .line 2
    invoke-static {p1, v0}, Lcom/google/common/base/o;->t(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/grpc/c;

    iput-object p1, p0, Lio/grpc/k$b;->a:Lio/grpc/c;

    .line 3
    iput p2, p0, Lio/grpc/k$b;->b:I

    .line 4
    iput-boolean p3, p0, Lio/grpc/k$b;->c:Z

    return-void
.end method

.method public static a()Lio/grpc/k$b$a;
    .locals 1

    new-instance v0, Lio/grpc/k$b$a;

    invoke-direct {v0}, Lio/grpc/k$b$a;-><init>()V

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 3

    .line 1
    invoke-static {p0}, Lcom/google/common/base/j;->c(Ljava/lang/Object;)Lcom/google/common/base/j$b;

    move-result-object v0

    iget-object v1, p0, Lio/grpc/k$b;->a:Lio/grpc/c;

    const-string v2, "callOptions"

    .line 2
    invoke-virtual {v0, v2, v1}, Lcom/google/common/base/j$b;->d(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/j$b;

    move-result-object v0

    iget v1, p0, Lio/grpc/k$b;->b:I

    const-string v2, "previousAttempts"

    .line 3
    invoke-virtual {v0, v2, v1}, Lcom/google/common/base/j$b;->b(Ljava/lang/String;I)Lcom/google/common/base/j$b;

    move-result-object v0

    iget-boolean v1, p0, Lio/grpc/k$b;->c:Z

    const-string v2, "isTransparentRetry"

    .line 4
    invoke-virtual {v0, v2, v1}, Lcom/google/common/base/j$b;->e(Ljava/lang/String;Z)Lcom/google/common/base/j$b;

    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/google/common/base/j$b;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
