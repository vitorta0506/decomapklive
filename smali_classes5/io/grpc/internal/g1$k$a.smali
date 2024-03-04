.class final Lio/grpc/internal/g1$k$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/grpc/internal/g1$k;->c(Lio/grpc/n0$f;)Lio/grpc/internal/r;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lio/grpc/internal/g1$k;


# direct methods
.method constructor <init>(Lio/grpc/internal/g1$k;)V
    .locals 0

    iput-object p1, p0, Lio/grpc/internal/g1$k$a;->a:Lio/grpc/internal/g1$k;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lio/grpc/internal/g1$k$a;->a:Lio/grpc/internal/g1$k;

    iget-object v0, v0, Lio/grpc/internal/g1$k;->a:Lio/grpc/internal/g1;

    invoke-virtual {v0}, Lio/grpc/internal/g1;->K0()V

    return-void
.end method
