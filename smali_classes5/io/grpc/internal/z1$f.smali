.class Lio/grpc/internal/z1$f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/grpc/internal/z1$r;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/grpc/internal/z1;->g(Lio/grpc/v;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "f"
.end annotation


# instance fields
.field final synthetic a:Lio/grpc/v;

.field final synthetic b:Lio/grpc/internal/z1;


# direct methods
.method constructor <init>(Lio/grpc/internal/z1;Lio/grpc/v;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lio/grpc/internal/z1$f;->b:Lio/grpc/internal/z1;

    iput-object p2, p0, Lio/grpc/internal/z1$f;->a:Lio/grpc/v;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lio/grpc/internal/z1$b0;)V
    .locals 1

    iget-object p1, p1, Lio/grpc/internal/z1$b0;->a:Lio/grpc/internal/q;

    iget-object v0, p0, Lio/grpc/internal/z1$f;->a:Lio/grpc/v;

    invoke-interface {p1, v0}, Lio/grpc/internal/q;->g(Lio/grpc/v;)V

    return-void
.end method
