.class final Leh/a2$f;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Leh/a2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "f"
.end annotation


# instance fields
.field private final a:Lio/grpc/n0$h;

.field private final b:Lio/grpc/q;


# direct methods
.method private constructor <init>(Lio/grpc/n0$h;Lio/grpc/q;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Leh/a2$f;->a:Lio/grpc/n0$h;

    .line 4
    iput-object p2, p0, Leh/a2$f;->b:Lio/grpc/q;

    return-void
.end method

.method synthetic constructor <init>(Lio/grpc/n0$h;Lio/grpc/q;Leh/a2$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Leh/a2$f;-><init>(Lio/grpc/n0$h;Lio/grpc/q;)V

    return-void
.end method

.method static synthetic a(Leh/a2$f;)Lio/grpc/q;
    .locals 0

    iget-object p0, p0, Leh/a2$f;->b:Lio/grpc/q;

    return-object p0
.end method

.method static synthetic b(Leh/a2$f;)Lio/grpc/n0$h;
    .locals 0

    iget-object p0, p0, Leh/a2$f;->a:Lio/grpc/n0$h;

    return-object p0
.end method
