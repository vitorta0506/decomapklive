.class final Leh/s0$d;
.super Lio/grpc/n0$c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Leh/s0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "d"
.end annotation


# instance fields
.field final synthetic a:Leh/s0;


# direct methods
.method private constructor <init>(Leh/s0;)V
    .locals 0

    .line 1
    iput-object p1, p0, Leh/s0$d;->a:Leh/s0;

    invoke-direct {p0}, Lio/grpc/n0$c;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Leh/s0;Leh/s0$a;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Leh/s0$d;-><init>(Leh/s0;)V

    return-void
.end method


# virtual methods
.method public a(Lio/grpc/n0$d;)Lio/grpc/n0;
    .locals 2

    new-instance v0, Leh/s0$c;

    iget-object v1, p0, Leh/s0$d;->a:Leh/s0;

    invoke-direct {v0, v1, p1}, Leh/s0$c;-><init>(Leh/s0;Lio/grpc/n0$d;)V

    return-object v0
.end method
