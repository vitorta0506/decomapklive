.class Ldh/e$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/grpc/n0$j;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ldh/e;->d(Lio/grpc/n0$g;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lio/grpc/n0$h;

.field final synthetic b:Ldh/e;


# direct methods
.method constructor <init>(Ldh/e;Lio/grpc/n0$h;)V
    .locals 0

    iput-object p1, p0, Ldh/e$a;->b:Ldh/e;

    iput-object p2, p0, Ldh/e$a;->a:Lio/grpc/n0$h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lio/grpc/q;)V
    .locals 2

    iget-object v0, p0, Ldh/e$a;->b:Ldh/e;

    iget-object v1, p0, Ldh/e$a;->a:Lio/grpc/n0$h;

    invoke-static {v0, v1, p1}, Ldh/e;->f(Ldh/e;Lio/grpc/n0$h;Lio/grpc/q;)V

    return-void
.end method
