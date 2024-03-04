.class final Lcom/google/common/math/d$e;
.super Lcom/google/common/math/d;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/math/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "e"
.end annotation


# instance fields
.field final a:D

.field b:Lcom/google/common/math/d;


# direct methods
.method constructor <init>(D)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/common/math/d;-><init>()V

    .line 2
    iput-wide p1, p0, Lcom/google/common/math/d$e;->a:D

    const/4 p1, 0x0

    .line 3
    iput-object p1, p0, Lcom/google/common/math/d$e;->b:Lcom/google/common/math/d;

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    iget-wide v1, p0, Lcom/google/common/math/d$e;->a:D

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "x = %g"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
