.class Lig/a0$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lig/a0;->h(Lio/grpc/internal/k1$a;)Ljava/lang/Runnable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lig/a0;


# direct methods
.method constructor <init>(Lig/a0;)V
    .locals 0

    iput-object p1, p0, Lig/a0$d;->a:Lig/a0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lig/a0$d;->a:Lig/a0;

    invoke-static {v0}, Lig/a0;->j(Lig/a0;)Lig/d;

    move-result-object v0

    iget-object v1, p0, Lig/a0$d;->a:Lig/a0;

    invoke-static {v1}, Lig/a0;->a(Lig/a0;)Lio/grpc/Status;

    move-result-object v1

    invoke-virtual {v0, v1}, Lig/d;->g(Lio/grpc/Status;)V

    return-void
.end method
