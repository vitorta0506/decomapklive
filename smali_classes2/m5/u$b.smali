.class Lm5/u$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lm5/u;->c(Lcom/google/api/gax/rpc/b0;Lcom/google/api/gax/rpc/m;Lcom/google/api/gax/rpc/a;)Lcom/google/api/gax/rpc/l;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/google/api/gax/rpc/m;

.field final synthetic b:Lcom/google/api/gax/rpc/l;

.field final synthetic c:Lm5/u;


# direct methods
.method constructor <init>(Lm5/u;Lcom/google/api/gax/rpc/m;Lcom/google/api/gax/rpc/l;)V
    .locals 0

    iput-object p1, p0, Lm5/u$b;->c:Lm5/u;

    iput-object p2, p0, Lm5/u$b;->a:Lcom/google/api/gax/rpc/m;

    iput-object p3, p0, Lm5/u$b;->b:Lcom/google/api/gax/rpc/l;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lm5/u$b;->a:Lcom/google/api/gax/rpc/m;

    iget-object v1, p0, Lm5/u$b;->b:Lcom/google/api/gax/rpc/l;

    invoke-interface {v0, v1}, Lcom/google/api/gax/rpc/m;->a(Lcom/google/api/gax/rpc/l;)V

    return-void
.end method
