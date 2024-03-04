.class public Lcom/google/api/client/util/l$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/api/client/util/l;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field a:I

.field b:D

.field c:D

.field d:I

.field e:I

.field f:Lcom/google/api/client/util/u;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x1f4

    .line 2
    iput v0, p0, Lcom/google/api/client/util/l$a;->a:I

    const-wide/high16 v0, 0x3fe0000000000000L    # 0.5

    .line 3
    iput-wide v0, p0, Lcom/google/api/client/util/l$a;->b:D

    const-wide/high16 v0, 0x3ff8000000000000L    # 1.5

    .line 4
    iput-wide v0, p0, Lcom/google/api/client/util/l$a;->c:D

    const v0, 0xea60

    .line 5
    iput v0, p0, Lcom/google/api/client/util/l$a;->d:I

    const v0, 0xdbba0

    .line 6
    iput v0, p0, Lcom/google/api/client/util/l$a;->e:I

    .line 7
    sget-object v0, Lcom/google/api/client/util/u;->a:Lcom/google/api/client/util/u;

    iput-object v0, p0, Lcom/google/api/client/util/l$a;->f:Lcom/google/api/client/util/u;

    return-void
.end method


# virtual methods
.method public a()Lcom/google/api/client/util/l;
    .locals 1

    new-instance v0, Lcom/google/api/client/util/l;

    invoke-direct {v0, p0}, Lcom/google/api/client/util/l;-><init>(Lcom/google/api/client/util/l$a;)V

    return-object v0
.end method

.method public b(I)Lcom/google/api/client/util/l$a;
    .locals 0

    iput p1, p0, Lcom/google/api/client/util/l$a;->a:I

    return-object p0
.end method

.method public c(D)Lcom/google/api/client/util/l$a;
    .locals 0

    iput-wide p1, p0, Lcom/google/api/client/util/l$a;->c:D

    return-object p0
.end method

.method public d(D)Lcom/google/api/client/util/l$a;
    .locals 0

    iput-wide p1, p0, Lcom/google/api/client/util/l$a;->b:D

    return-object p0
.end method
