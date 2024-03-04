.class Lm5/m$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/api/gax/rpc/e0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lm5/m;->e(Lcom/google/api/gax/rpc/e0;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/google/api/gax/rpc/e0;

.field final synthetic b:Lm5/m;


# direct methods
.method constructor <init>(Lm5/m;Lcom/google/api/gax/rpc/e0;)V
    .locals 0

    iput-object p1, p0, Lm5/m$a;->b:Lm5/m;

    iput-object p2, p0, Lm5/m$a;->a:Lcom/google/api/gax/rpc/e0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 3

    .line 1
    iget-object v0, p0, Lm5/m$a;->b:Lm5/m;

    new-instance v1, Ljava/util/concurrent/CancellationException;

    const-string v2, "User cancelled stream"

    invoke-direct {v1, v2}, Ljava/util/concurrent/CancellationException;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v1}, Lm5/m;->f(Lm5/m;Ljava/util/concurrent/CancellationException;)Ljava/util/concurrent/CancellationException;

    .line 2
    iget-object v0, p0, Lm5/m$a;->a:Lcom/google/api/gax/rpc/e0;

    invoke-interface {v0}, Lcom/google/api/gax/rpc/e0;->cancel()V

    return-void
.end method
