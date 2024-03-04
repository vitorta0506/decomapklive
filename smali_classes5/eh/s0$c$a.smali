.class abstract Leh/s0$c$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Leh/s0$c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x402
    name = "a"
.end annotation


# instance fields
.field protected final a:Ljava/lang/String;

.field protected final b:Leh/j0$d;

.field protected final c:Ljava/lang/Long;

.field protected final d:Leh/i1;

.field protected e:Lio/grpc/Status;

.field protected f:Z

.field protected g:Leh/s0$b;

.field protected h:Z

.field final synthetic i:Leh/s0$c;


# direct methods
.method private constructor <init>(Leh/s0$c;Ljava/lang/String;Leh/j0$d;Ljava/lang/Long;Leh/i1;)V
    .locals 0

    .line 2
    iput-object p1, p0, Leh/s0$c$a;->i:Leh/s0$c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    sget-object p1, Lio/grpc/Status;->f:Lio/grpc/Status;

    iput-object p1, p0, Leh/s0$c$a;->e:Lio/grpc/Status;

    .line 4
    iput-object p2, p0, Leh/s0$c$a;->a:Ljava/lang/String;

    .line 5
    iput-object p3, p0, Leh/s0$c$a;->b:Leh/j0$d;

    .line 6
    iput-object p4, p0, Leh/s0$c$a;->c:Ljava/lang/Long;

    .line 7
    iput-object p5, p0, Leh/s0$c$a;->d:Leh/i1;

    return-void
.end method

.method synthetic constructor <init>(Leh/s0$c;Ljava/lang/String;Leh/j0$d;Ljava/lang/Long;Leh/i1;Leh/s0$a;)V
    .locals 0

    .line 1
    invoke-direct/range {p0 .. p5}, Leh/s0$c$a;-><init>(Leh/s0$c;Ljava/lang/String;Leh/j0$d;Ljava/lang/Long;Leh/i1;)V

    return-void
.end method


# virtual methods
.method g()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Leh/s0$c$a;->h:Z

    return-void
.end method

.method abstract h()V
.end method
