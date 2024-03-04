.class public final Lcom/google/common/math/d$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/math/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# instance fields
.field private final a:D

.field private final b:D


# direct methods
.method private constructor <init>(DD)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-wide p1, p0, Lcom/google/common/math/d$b;->a:D

    .line 4
    iput-wide p3, p0, Lcom/google/common/math/d$b;->b:D

    return-void
.end method

.method synthetic constructor <init>(DDLcom/google/common/math/d$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/common/math/d$b;-><init>(DD)V

    return-void
.end method


# virtual methods
.method public a(D)Lcom/google/common/math/d;
    .locals 4

    .line 1
    invoke-static {p1, p2}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Lcom/google/common/base/o;->d(Z)V

    .line 2
    invoke-static {p1, p2}, Lcom/google/common/math/b;->c(D)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    iget-wide v0, p0, Lcom/google/common/math/d$b;->b:D

    iget-wide v2, p0, Lcom/google/common/math/d$b;->a:D

    mul-double v2, v2, p1

    sub-double/2addr v0, v2

    .line 4
    new-instance v2, Lcom/google/common/math/d$d;

    invoke-direct {v2, p1, p2, v0, v1}, Lcom/google/common/math/d$d;-><init>(DD)V

    return-object v2

    .line 5
    :cond_0
    new-instance p1, Lcom/google/common/math/d$e;

    iget-wide v0, p0, Lcom/google/common/math/d$b;->a:D

    invoke-direct {p1, v0, v1}, Lcom/google/common/math/d$e;-><init>(D)V

    return-object p1
.end method
