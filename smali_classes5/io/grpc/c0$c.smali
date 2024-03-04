.class public final Lio/grpc/c0$c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/grpc/c0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "c"
.end annotation


# instance fields
.field public final a:Lio/grpc/c0$d;

.field public final b:Lio/grpc/c0$b;


# direct methods
.method public constructor <init>(Lio/grpc/c0$b;)V
    .locals 1

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lio/grpc/c0$c;->a:Lio/grpc/c0$d;

    .line 6
    invoke-static {p1}, Lcom/google/common/base/o;->s(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/grpc/c0$b;

    iput-object p1, p0, Lio/grpc/c0$c;->b:Lio/grpc/c0$b;

    return-void
.end method

.method public constructor <init>(Lio/grpc/c0$d;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {p1}, Lcom/google/common/base/o;->s(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/grpc/c0$d;

    iput-object p1, p0, Lio/grpc/c0$c;->a:Lio/grpc/c0$d;

    const/4 p1, 0x0

    .line 3
    iput-object p1, p0, Lio/grpc/c0$c;->b:Lio/grpc/c0$b;

    return-void
.end method
