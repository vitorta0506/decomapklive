.class Leh/a2$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/grpc/n0$j;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Leh/a2;->d(Lio/grpc/n0$g;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lio/grpc/n0$h;

.field final synthetic b:Leh/a2;


# direct methods
.method constructor <init>(Leh/a2;Lio/grpc/n0$h;)V
    .locals 0

    iput-object p1, p0, Leh/a2$a;->b:Leh/a2;

    iput-object p2, p0, Leh/a2$a;->a:Lio/grpc/n0$h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lio/grpc/q;)V
    .locals 2

    iget-object v0, p0, Leh/a2$a;->b:Leh/a2;

    iget-object v1, p0, Leh/a2$a;->a:Lio/grpc/n0$h;

    invoke-static {v0, v1, p1}, Leh/a2;->f(Leh/a2;Lio/grpc/n0$h;Lio/grpc/q;)V

    return-void
.end method
