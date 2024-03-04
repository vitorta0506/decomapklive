.class Lhg/b$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/grpc/n0$j;


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

.field final synthetic b:Lhg/b;


# direct methods
.method constructor <init>(Lhg/b;Lio/grpc/n0$h;)V
    .locals 0

    iput-object p1, p0, Lhg/b$a;->b:Lhg/b;

    iput-object p2, p0, Lhg/b$a;->a:Lio/grpc/n0$h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lio/grpc/q;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lhg/b$a;->b:Lhg/b;

    iget-object v1, p0, Lhg/b$a;->a:Lio/grpc/n0$h;

    invoke-static {v0, v1, p1}, Lhg/b;->d(Lhg/b;Lio/grpc/n0$h;Lio/grpc/q;)V

    .line 2
    iget-object v0, p0, Lhg/b$a;->b:Lhg/b;

    invoke-static {v0}, Lhg/b;->e(Lhg/b;)Lhg/k$a;

    move-result-object v0

    iget-object v1, p0, Lhg/b$a;->a:Lio/grpc/n0$h;

    invoke-interface {v0, v1, p1}, Lhg/k$a;->a(Lio/grpc/n0$h;Lio/grpc/q;)V

    return-void
.end method
