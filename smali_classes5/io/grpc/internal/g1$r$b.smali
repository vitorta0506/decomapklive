.class final Lio/grpc/internal/g1$r$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/grpc/internal/g1$r;->j()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Lio/grpc/internal/g1$r;


# direct methods
.method constructor <init>(Lio/grpc/internal/g1$r;)V
    .locals 0

    iput-object p1, p0, Lio/grpc/internal/g1$r$b;->a:Lio/grpc/internal/g1$r;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lio/grpc/internal/g1$r$b;->a:Lio/grpc/internal/g1$r;

    iget-object v0, v0, Lio/grpc/internal/g1$r;->d:Lio/grpc/internal/g1;

    invoke-static {v0}, Lio/grpc/internal/g1;->Z(Lio/grpc/internal/g1;)V

    return-void
.end method
