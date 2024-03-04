.class Leh/a2$e$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Leh/a2$e;->a(Lio/grpc/n0$f;)Lio/grpc/n0$e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lio/grpc/n0$h;

.field final synthetic b:Leh/a2$e;


# direct methods
.method constructor <init>(Leh/a2$e;Lio/grpc/n0$h;)V
    .locals 0

    iput-object p1, p0, Leh/a2$e$a;->b:Leh/a2$e;

    iput-object p2, p0, Leh/a2$e$a;->a:Lio/grpc/n0$h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Leh/a2$e$a;->a:Lio/grpc/n0$h;

    invoke-virtual {v0}, Lio/grpc/n0$h;->g()V

    return-void
.end method
