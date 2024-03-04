.class final Leh/n2$b;
.super Ldh/b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Leh/n2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "b"
.end annotation


# instance fields
.field a:Ljava/lang/String;

.field b:Lio/grpc/ConnectivityState;

.field c:Lio/grpc/n0$i;

.field final synthetic d:Leh/n2;


# direct methods
.method private constructor <init>(Leh/n2;Ljava/lang/String;)V
    .locals 0

    .line 2
    iput-object p1, p0, Leh/n2$b;->d:Leh/n2;

    invoke-direct {p0}, Ldh/b;-><init>()V

    .line 3
    sget-object p1, Lio/grpc/ConnectivityState;->CONNECTING:Lio/grpc/ConnectivityState;

    iput-object p1, p0, Leh/n2$b;->b:Lio/grpc/ConnectivityState;

    .line 4
    sget-object p1, Leh/t2;->a:Lio/grpc/n0$i;

    iput-object p1, p0, Leh/n2$b;->c:Lio/grpc/n0$i;

    .line 5
    iput-object p2, p0, Leh/n2$b;->a:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Leh/n2;Ljava/lang/String;Leh/n2$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Leh/n2$b;-><init>(Leh/n2;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public k(Lio/grpc/ConnectivityState;Lio/grpc/n0$i;)V
    .locals 2

    iget-object v0, p0, Leh/n2$b;->d:Leh/n2;

    invoke-static {v0}, Leh/n2;->h(Leh/n2;)Lio/grpc/d1;

    move-result-object v0

    new-instance v1, Leh/n2$b$a;

    invoke-direct {v1, p0, p1, p2}, Leh/n2$b$a;-><init>(Leh/n2$b;Lio/grpc/ConnectivityState;Lio/grpc/n0$i;)V

    invoke-virtual {v0, v1}, Lio/grpc/d1;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method protected m()Lio/grpc/n0$d;
    .locals 1

    iget-object v0, p0, Leh/n2$b;->d:Leh/n2;

    invoke-static {v0}, Leh/n2;->i(Leh/n2;)Lio/grpc/n0$d;

    move-result-object v0

    return-object v0
.end method
