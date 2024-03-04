.class final Leh/n0$n;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Leh/n0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "n"
.end annotation


# instance fields
.field private final a:Leh/p2$l;

.field private final b:Lcom/google/protobuf/Any;


# direct methods
.method private constructor <init>(Leh/p2$l;Lcom/google/protobuf/Any;)V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "resourceUpdate"

    .line 3
    invoke-static {p1, v0}, Lcom/google/common/base/o;->t(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Leh/p2$l;

    iput-object p1, p0, Leh/n0$n;->a:Leh/p2$l;

    const-string p1, "rawResource"

    .line 4
    invoke-static {p2, p1}, Lcom/google/common/base/o;->t(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/protobuf/Any;

    iput-object p1, p0, Leh/n0$n;->b:Lcom/google/protobuf/Any;

    return-void
.end method

.method synthetic constructor <init>(Leh/p2$l;Lcom/google/protobuf/Any;Leh/n0$f;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Leh/n0$n;-><init>(Leh/p2$l;Lcom/google/protobuf/Any;)V

    return-void
.end method

.method static synthetic a(Leh/n0$n;)Lcom/google/protobuf/Any;
    .locals 0

    invoke-direct {p0}, Leh/n0$n;->c()Lcom/google/protobuf/Any;

    move-result-object p0

    return-object p0
.end method

.method static synthetic b(Leh/n0$n;)Leh/p2$l;
    .locals 0

    invoke-direct {p0}, Leh/n0$n;->d()Leh/p2$l;

    move-result-object p0

    return-object p0
.end method

.method private c()Lcom/google/protobuf/Any;
    .locals 1

    iget-object v0, p0, Leh/n0$n;->b:Lcom/google/protobuf/Any;

    return-object v0
.end method

.method private d()Leh/p2$l;
    .locals 1

    iget-object v0, p0, Leh/n0$n;->a:Leh/p2$l;

    return-object v0
.end method
