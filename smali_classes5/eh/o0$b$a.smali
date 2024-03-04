.class Leh/o0$b$a;
.super Ldh/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Leh/o0$b;->b(Lio/grpc/n0$b;)Lio/grpc/n0$h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Leh/s1$d;

.field final synthetic b:Lio/grpc/n0$h;

.field final synthetic c:Leh/o0$b;


# direct methods
.method constructor <init>(Leh/o0$b;Leh/s1$d;Lio/grpc/n0$h;)V
    .locals 0

    iput-object p1, p0, Leh/o0$b$a;->c:Leh/o0$b;

    iput-object p2, p0, Leh/o0$b$a;->a:Leh/s1$d;

    iput-object p3, p0, Leh/o0$b$a;->b:Lio/grpc/n0$h;

    invoke-direct {p0}, Ldh/c;-><init>()V

    return-void
.end method


# virtual methods
.method public h()V
    .locals 1

    .line 1
    iget-object v0, p0, Leh/o0$b$a;->a:Leh/s1$d;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Leh/s1$d;->d()V

    .line 3
    :cond_0
    invoke-virtual {p0}, Leh/o0$b$a;->k()Lio/grpc/n0$h;

    move-result-object v0

    invoke-virtual {v0}, Lio/grpc/n0$h;->h()V

    return-void
.end method

.method protected k()Lio/grpc/n0$h;
    .locals 1

    iget-object v0, p0, Leh/o0$b$a;->b:Lio/grpc/n0$h;

    return-object v0
.end method
