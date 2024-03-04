.class abstract Leh/j1$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Leh/j1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "a"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Lio/grpc/Status;ZLeh/j1$c;)Leh/j1$a;
    .locals 1

    new-instance v0, Leh/p;

    invoke-direct {v0, p0, p1, p2}, Leh/p;-><init>(Lio/grpc/Status;ZLeh/j1$c;)V

    return-object v0
.end method

.method static b(Leh/j1$c;)Leh/j1$a;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-static {v0, v1, p0}, Leh/j1$a;->a(Lio/grpc/Status;ZLeh/j1$c;)Leh/j1$a;

    move-result-object p0

    return-object p0
.end method

.method static c(Lio/grpc/Status;Leh/j1$c;)Leh/j1$a;
    .locals 1

    const-string v0, "status"

    .line 1
    invoke-static {p0, v0}, Lcom/google/common/base/o;->t(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x0

    .line 2
    invoke-static {p0, v0, p1}, Leh/j1$a;->a(Lio/grpc/Status;ZLeh/j1$c;)Leh/j1$a;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method abstract d()Z
.end method

.method abstract e()Leh/j1$c;
.end method

.method abstract f()Lio/grpc/Status;
.end method
