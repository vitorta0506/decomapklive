.class Lio/grpc/internal/z1$j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/grpc/internal/z1$r;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/grpc/internal/z1;->c(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "j"
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lio/grpc/internal/z1;


# direct methods
.method constructor <init>(Lio/grpc/internal/z1;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lio/grpc/internal/z1$j;->b:Lio/grpc/internal/z1;

    iput p2, p0, Lio/grpc/internal/z1$j;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lio/grpc/internal/z1$b0;)V
    .locals 1

    iget-object p1, p1, Lio/grpc/internal/z1$b0;->a:Lio/grpc/internal/q;

    iget v0, p0, Lio/grpc/internal/z1$j;->a:I

    invoke-interface {p1, v0}, Lio/grpc/internal/q;->c(I)V

    return-void
.end method
