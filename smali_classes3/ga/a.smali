.class public Lga/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/zxing/ResultPointCallback;


# instance fields
.field private final a:Lcom/guochao/faceshow/aaspring/modulars/ugc/zxing/view/ViewfinderView;


# direct methods
.method public constructor <init>(Lcom/guochao/faceshow/aaspring/modulars/ugc/zxing/view/ViewfinderView;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lga/a;->a:Lcom/guochao/faceshow/aaspring/modulars/ugc/zxing/view/ViewfinderView;

    return-void
.end method


# virtual methods
.method public foundPossibleResultPoint(Lcom/google/zxing/ResultPoint;)V
    .locals 1

    iget-object v0, p0, Lga/a;->a:Lcom/guochao/faceshow/aaspring/modulars/ugc/zxing/view/ViewfinderView;

    invoke-virtual {v0, p1}, Lcom/guochao/faceshow/aaspring/modulars/ugc/zxing/view/ViewfinderView;->d(Lcom/google/zxing/ResultPoint;)V

    return-void
.end method
