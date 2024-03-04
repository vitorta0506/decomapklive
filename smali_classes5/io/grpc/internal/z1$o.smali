.class Lio/grpc/internal/z1$o;
.super Lio/grpc/k$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/grpc/internal/z1;->a0(IZ)Lio/grpc/internal/z1$b0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lio/grpc/k;

.field final synthetic b:Lio/grpc/internal/z1;


# direct methods
.method constructor <init>(Lio/grpc/internal/z1;Lio/grpc/k;)V
    .locals 0

    iput-object p1, p0, Lio/grpc/internal/z1$o;->b:Lio/grpc/internal/z1;

    iput-object p2, p0, Lio/grpc/internal/z1$o;->a:Lio/grpc/k;

    invoke-direct {p0}, Lio/grpc/k$a;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lio/grpc/k$b;Lio/grpc/s0;)Lio/grpc/k;
    .locals 0

    iget-object p1, p0, Lio/grpc/internal/z1$o;->a:Lio/grpc/k;

    return-object p1
.end method
