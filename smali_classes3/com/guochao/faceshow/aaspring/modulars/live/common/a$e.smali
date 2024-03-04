.class Lcom/guochao/faceshow/aaspring/modulars/live/common/a$e;
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
    name = "e"
.end annotation


# instance fields
.field final synthetic a:Lcom/guochao/faceshow/aaspring/modulars/live/common/a;


# direct methods
.method private constructor <init>(Lcom/guochao/faceshow/aaspring/modulars/live/common/a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/a$e;->a:Lcom/guochao/faceshow/aaspring/modulars/live/common/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/guochao/faceshow/aaspring/modulars/live/common/a;Lcom/guochao/faceshow/aaspring/modulars/live/common/a$a;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/live/common/a$e;-><init>(Lcom/guochao/faceshow/aaspring/modulars/live/common/a;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/a$e;->a:Lcom/guochao/faceshow/aaspring/modulars/live/common/a;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/guochao/faceshow/aaspring/modulars/live/common/a;->c(Lcom/guochao/faceshow/aaspring/modulars/live/common/a;Z)Z

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/a$e;->a:Lcom/guochao/faceshow/aaspring/modulars/live/common/a;

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/modulars/live/common/a;->f()V

    .line 3
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/a$e;->a:Lcom/guochao/faceshow/aaspring/modulars/live/common/a;

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/modulars/live/common/a;->i()V

    return-void
.end method
