.class Leh/l0$b$a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Leh/l0$b$a;->a(Lio/grpc/Status;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lio/grpc/Status;

.field final synthetic b:Leh/l0$b$a;


# direct methods
.method constructor <init>(Leh/l0$b$a;Lio/grpc/Status;)V
    .locals 0

    iput-object p1, p0, Leh/l0$b$a$a;->b:Leh/l0$b$a;

    iput-object p2, p0, Leh/l0$b$a$a;->a:Lio/grpc/Status;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Leh/l0$b$a$a;->b:Leh/l0$b$a;

    invoke-static {v0}, Leh/l0$b$a;->i(Leh/l0$b$a;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Leh/l0$b$a$a;->b:Leh/l0$b$a;

    iget-object v1, v0, Leh/l0$b$a;->g:Leh/l0$b;

    invoke-static {v1}, Leh/l0$b;->b(Leh/l0$b;)Leh/l0$b$a;

    move-result-object v1

    if-ne v0, v1, :cond_1

    .line 3
    iget-object v0, p0, Leh/l0$b$a$a;->b:Leh/l0$b$a;

    iget-object v0, v0, Leh/l0$b$a;->g:Leh/l0$b;

    iget-object v1, p0, Leh/l0$b$a$a;->a:Lio/grpc/Status;

    invoke-static {v0, v1}, Leh/l0$b;->c(Leh/l0$b;Lio/grpc/Status;)V

    :cond_1
    return-void
.end method
