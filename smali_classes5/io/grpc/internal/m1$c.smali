.class Lio/grpc/internal/m1$c;
.super Ljava/io/OutputStream;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/grpc/internal/m1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "c"
.end annotation


# instance fields
.field final synthetic a:Lio/grpc/internal/m1;


# direct methods
.method private constructor <init>(Lio/grpc/internal/m1;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lio/grpc/internal/m1$c;->a:Lio/grpc/internal/m1;

    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lio/grpc/internal/m1;Lio/grpc/internal/m1$a;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lio/grpc/internal/m1$c;-><init>(Lio/grpc/internal/m1;)V

    return-void
.end method


# virtual methods
.method public write(I)V
    .locals 3

    const/4 v0, 0x1

    new-array v1, v0, [B

    int-to-byte p1, p1

    const/4 v2, 0x0

    aput-byte p1, v1, v2

    .line 1
    invoke-virtual {p0, v1, v2, v0}, Lio/grpc/internal/m1$c;->write([BII)V

    return-void
.end method

.method public write([BII)V
    .locals 1

    .line 2
    iget-object v0, p0, Lio/grpc/internal/m1$c;->a:Lio/grpc/internal/m1;

    invoke-static {v0, p1, p2, p3}, Lio/grpc/internal/m1;->c(Lio/grpc/internal/m1;[BII)V

    return-void
.end method
