.class final Lio/grpc/internal/z1$x;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/grpc/internal/z1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "x"
.end annotation


# instance fields
.field final a:Z

.field final b:J


# direct methods
.method constructor <init>(ZJ)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-boolean p1, p0, Lio/grpc/internal/z1$x;->a:Z

    .line 3
    iput-wide p2, p0, Lio/grpc/internal/z1$x;->b:J

    return-void
.end method
