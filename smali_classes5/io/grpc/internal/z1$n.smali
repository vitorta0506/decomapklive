.class Lio/grpc/internal/z1$n;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/grpc/internal/z1$r;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/grpc/internal/z1;->j0(Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "n"
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/Object;

.field final synthetic b:Lio/grpc/internal/z1;


# direct methods
.method constructor <init>(Lio/grpc/internal/z1;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lio/grpc/internal/z1$n;->b:Lio/grpc/internal/z1;

    iput-object p2, p0, Lio/grpc/internal/z1$n;->a:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lio/grpc/internal/z1$b0;)V
    .locals 2

    iget-object p1, p1, Lio/grpc/internal/z1$b0;->a:Lio/grpc/internal/q;

    iget-object v0, p0, Lio/grpc/internal/z1$n;->b:Lio/grpc/internal/z1;

    invoke-static {v0}, Lio/grpc/internal/z1;->v(Lio/grpc/internal/z1;)Lio/grpc/MethodDescriptor;

    move-result-object v0

    iget-object v1, p0, Lio/grpc/internal/z1$n;->a:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lio/grpc/MethodDescriptor;->l(Ljava/lang/Object;)Ljava/io/InputStream;

    move-result-object v0

    invoke-interface {p1, v0}, Lio/grpc/internal/j2;->h(Ljava/io/InputStream;)V

    return-void
.end method
