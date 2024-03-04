.class Lbh/a$a$b$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbh/a$a$b;->a(Lio/grpc/Status;Lio/grpc/s0;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lio/grpc/Status;

.field final synthetic b:Lbh/a$a$b;


# direct methods
.method constructor <init>(Lbh/a$a$b;Lio/grpc/Status;)V
    .locals 0

    iput-object p1, p0, Lbh/a$a$b$b;->b:Lbh/a$a$b;

    iput-object p2, p0, Lbh/a$a$b$b;->a:Lio/grpc/Status;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lbh/a$a$b$b;->b:Lbh/a$a$b;

    iget-object v0, v0, Lbh/a$a$b;->e:Lbh/a$a;

    invoke-static {v0}, Lbh/a$a;->j(Lbh/a$a;)Lbh/a$a$b;

    move-result-object v0

    iget-object v1, p0, Lbh/a$a$b$b;->b:Lbh/a$a$b;

    if-ne v0, v1, :cond_0

    .line 2
    iget-object v0, v1, Lbh/a$a$b;->e:Lbh/a$a;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lbh/a$a;->k(Lbh/a$a;Lbh/a$a$b;)Lbh/a$a$b;

    .line 3
    iget-object v0, p0, Lbh/a$a$b$b;->b:Lbh/a$a$b;

    iget-object v1, p0, Lbh/a$a$b$b;->a:Lio/grpc/Status;

    invoke-virtual {v0, v1}, Lbh/a$a$b;->g(Lio/grpc/Status;)V

    :cond_0
    return-void
.end method
