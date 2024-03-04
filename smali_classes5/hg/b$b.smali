.class Lhg/b$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lhg/b;->a(Lio/grpc/x;Lio/grpc/a;)Lio/grpc/n0$h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lio/grpc/n0$h;

.field final synthetic b:Lhg/b$c;

.field final synthetic c:Lhg/b;


# direct methods
.method constructor <init>(Lhg/b;Lio/grpc/n0$h;Lhg/b$c;)V
    .locals 0

    iput-object p1, p0, Lhg/b$b;->c:Lhg/b;

    iput-object p2, p0, Lhg/b$b;->a:Lio/grpc/n0$h;

    iput-object p3, p0, Lhg/b$b;->b:Lhg/b$c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lhg/b$b;->c:Lhg/b;

    invoke-static {v0}, Lhg/b;->e(Lhg/b;)Lhg/k$a;

    move-result-object v0

    iget-object v1, p0, Lhg/b$b;->a:Lio/grpc/n0$h;

    iget-object v2, p0, Lhg/b$b;->b:Lhg/b$c;

    iget-object v2, v2, Lhg/b$c;->c:Lio/grpc/q;

    invoke-interface {v0, v1, v2}, Lhg/k$a;->a(Lio/grpc/n0$h;Lio/grpc/q;)V

    return-void
.end method
