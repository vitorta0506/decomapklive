.class Li7/b$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lvh/g;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Li7/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lvh/g<",
        "Ljava/lang/Long;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Li7/b;


# direct methods
.method constructor <init>(Li7/b;)V
    .locals 0

    iput-object p1, p0, Li7/b$b;->a:Li7/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Long;)V
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    long-to-double v0, v0

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    mul-double v0, v0, v2

    iget-object v4, p0, Li7/b$b;->a:Li7/b;

    invoke-static {v4}, Li7/b;->a(Li7/b;)J

    move-result-wide v4

    long-to-double v4, v4

    div-double/2addr v0, v4

    const-wide/16 v4, 0x0

    cmpg-double v6, v0, v4

    if-lez v6, :cond_1

    cmpl-double v6, v0, v2

    if-ltz v6, :cond_0

    goto :goto_0

    :cond_0
    move-wide v12, v0

    goto :goto_1

    :cond_1
    :goto_0
    move-wide v12, v4

    .line 2
    :goto_1
    iget-object v0, p0, Li7/b$b;->a:Li7/b;

    invoke-static {v0}, Li7/b;->b(Li7/b;)Lcom/guochao/faceshow/aaspring/base/http/callback/d;

    move-result-object v7

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    iget-object p1, p0, Li7/b$b;->a:Li7/b;

    invoke-static {p1}, Li7/b;->a(Li7/b;)J

    move-result-wide v10

    invoke-virtual/range {v7 .. v13}, Lcom/guochao/faceshow/aaspring/base/http/callback/d;->onProgress(JJD)V

    return-void
.end method

.method public bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p0, p1}, Li7/b$b;->a(Ljava/lang/Long;)V

    return-void
.end method
