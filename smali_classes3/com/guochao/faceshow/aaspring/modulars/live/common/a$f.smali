.class Lcom/guochao/faceshow/aaspring/modulars/live/common/a$f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/guochao/faceshow/aaspring/modulars/live/common/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "f"
.end annotation


# instance fields
.field final synthetic a:Lcom/guochao/faceshow/aaspring/modulars/live/common/a;


# direct methods
.method private constructor <init>(Lcom/guochao/faceshow/aaspring/modulars/live/common/a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/a$f;->a:Lcom/guochao/faceshow/aaspring/modulars/live/common/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/guochao/faceshow/aaspring/modulars/live/common/a;Lcom/guochao/faceshow/aaspring/modulars/live/common/a$a;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/live/common/a$f;-><init>(Lcom/guochao/faceshow/aaspring/modulars/live/common/a;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/a$f;->a:Lcom/guochao/faceshow/aaspring/modulars/live/common/a;

    iget-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/live/common/a;->h:Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMicApplyResult;

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    .line 2
    invoke-static {v0, v1}, Lcom/guochao/faceshow/aaspring/modulars/live/common/a;->c(Lcom/guochao/faceshow/aaspring/modulars/live/common/a;Z)Z

    .line 3
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/a$f;->a:Lcom/guochao/faceshow/aaspring/modulars/live/common/a;

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/modulars/live/common/a;->f()V

    .line 4
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/a$f;->a:Lcom/guochao/faceshow/aaspring/modulars/live/common/a;

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/modulars/live/common/a;->i()V

    .line 5
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/a$f;->a:Lcom/guochao/faceshow/aaspring/modulars/live/common/a;

    iget-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/live/common/a;->h:Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMicApplyResult;

    if-eqz v1, :cond_0

    invoke-static {v0}, Lcom/guochao/faceshow/aaspring/modulars/live/common/a;->d(Lcom/guochao/faceshow/aaspring/modulars/live/common/a;)Ld9/g;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 6
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/a$f;->a:Lcom/guochao/faceshow/aaspring/modulars/live/common/a;

    invoke-static {v0}, Lcom/guochao/faceshow/aaspring/modulars/live/common/a;->d(Lcom/guochao/faceshow/aaspring/modulars/live/common/a;)Ld9/g;

    move-result-object v0

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/a$f;->a:Lcom/guochao/faceshow/aaspring/modulars/live/common/a;

    iget-object v1, v1, Lcom/guochao/faceshow/aaspring/modulars/live/common/a;->h:Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMicApplyResult;

    invoke-virtual {v1}, Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMicApplyResult;->getStreamId()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lb8/e;->g()Lb8/d;

    move-result-object v2

    invoke-interface {v2}, Lb8/d;->getUserId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ld9/g;->c0(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method
