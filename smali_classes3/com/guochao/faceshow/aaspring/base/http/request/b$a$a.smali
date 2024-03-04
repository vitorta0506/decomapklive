.class Lcom/guochao/faceshow/aaspring/base/http/request/b$a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lvh/g;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/guochao/faceshow/aaspring/base/http/request/b$a;
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
.field final synthetic a:Lcom/guochao/faceshow/aaspring/base/http/request/b$a;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/aaspring/base/http/request/b$a;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/base/http/request/b$a$a;->a:Lcom/guochao/faceshow/aaspring/base/http/request/b$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Long;)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/base/http/request/b$a$a;->a:Lcom/guochao/faceshow/aaspring/base/http/request/b$a;

    invoke-static {v0}, Lcom/guochao/faceshow/aaspring/base/http/request/b$a;->a(Lcom/guochao/faceshow/aaspring/base/http/request/b$a;)Lcom/guochao/faceshow/aaspring/base/http/callback/d;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/base/http/request/b$a$a;->a:Lcom/guochao/faceshow/aaspring/base/http/request/b$a;

    invoke-static {v0}, Lcom/guochao/faceshow/aaspring/base/http/request/b$a;->a(Lcom/guochao/faceshow/aaspring/base/http/request/b$a;)Lcom/guochao/faceshow/aaspring/base/http/callback/d;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/base/http/request/b$a$a;->a:Lcom/guochao/faceshow/aaspring/base/http/request/b$a;

    iget-wide v4, p1, Lcom/guochao/faceshow/aaspring/base/http/request/b$a;->b:J

    iget-wide v6, p1, Lcom/guochao/faceshow/aaspring/base/http/request/b$a;->a:J

    long-to-double v6, v6

    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    mul-double v6, v6, v8

    long-to-double v8, v4

    div-double/2addr v6, v8

    invoke-virtual/range {v1 .. v7}, Lcom/guochao/faceshow/aaspring/base/http/callback/d;->onProgress(JJD)V

    :cond_0
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

    invoke-virtual {p0, p1}, Lcom/guochao/faceshow/aaspring/base/http/request/b$a$a;->a(Ljava/lang/Long;)V

    return-void
.end method
