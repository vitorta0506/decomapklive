.class Lcom/guochao/faceshow/aaspring/views/loopView/LoopView$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/guochao/faceshow/aaspring/views/loopView/LoopView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field private a:Ljava/lang/String;

.field private b:I

.field final synthetic c:Lcom/guochao/faceshow/aaspring/views/loopView/LoopView;


# direct methods
.method public constructor <init>(Lcom/guochao/faceshow/aaspring/views/loopView/LoopView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/views/loopView/LoopView$a;->c:Lcom/guochao/faceshow/aaspring/views/loopView/LoopView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string p1, ""

    .line 2
    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/views/loopView/LoopView$a;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/guochao/faceshow/aaspring/views/loopView/LoopView;ILjava/lang/String;)V
    .locals 0

    .line 3
    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/views/loopView/LoopView$a;->c:Lcom/guochao/faceshow/aaspring/views/loopView/LoopView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput p2, p0, Lcom/guochao/faceshow/aaspring/views/loopView/LoopView$a;->b:I

    .line 5
    iput-object p3, p0, Lcom/guochao/faceshow/aaspring/views/loopView/LoopView$a;->a:Ljava/lang/String;

    return-void
.end method

.method static synthetic a(Lcom/guochao/faceshow/aaspring/views/loopView/LoopView$a;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/guochao/faceshow/aaspring/views/loopView/LoopView$a;->a:Ljava/lang/String;

    return-object p0
.end method
