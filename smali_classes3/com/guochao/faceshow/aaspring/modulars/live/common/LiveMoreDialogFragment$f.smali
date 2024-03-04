.class public Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveMoreDialogFragment$f;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveMoreDialogFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "f"
.end annotation


# instance fields
.field a:I
    .annotation build Landroidx/annotation/DrawableRes;
    .end annotation
.end field

.field b:I
    .annotation build Landroidx/annotation/DrawableRes;
    .end annotation
.end field

.field public c:I
    .annotation build Landroidx/annotation/StringRes;
    .end annotation
.end field

.field public d:Z


# direct methods
.method private constructor <init>(II)V
    .locals 0
    .param p1    # I
        .annotation build Landroidx/annotation/DrawableRes;
        .end annotation
    .end param
    .param p2    # I
        .annotation build Landroidx/annotation/StringRes;
        .end annotation
    .end param

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    iput p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveMoreDialogFragment$f;->a:I

    .line 9
    iput p2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveMoreDialogFragment$f;->c:I

    return-void
.end method

.method private constructor <init>(III)V
    .locals 0
    .param p1    # I
        .annotation build Landroidx/annotation/DrawableRes;
        .end annotation
    .end param
    .param p2    # I
        .annotation build Landroidx/annotation/DrawableRes;
        .end annotation
    .end param
    .param p3    # I
        .annotation build Landroidx/annotation/StringRes;
        .end annotation
    .end param

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveMoreDialogFragment$f;->a:I

    .line 5
    iput p3, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveMoreDialogFragment$f;->c:I

    .line 6
    iput p2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveMoreDialogFragment$f;->b:I

    return-void
.end method

.method synthetic constructor <init>(IIILcom/guochao/faceshow/aaspring/modulars/live/common/LiveMoreDialogFragment$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveMoreDialogFragment$f;-><init>(III)V

    return-void
.end method

.method synthetic constructor <init>(IILcom/guochao/faceshow/aaspring/modulars/live/common/LiveMoreDialogFragment$a;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2}, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveMoreDialogFragment$f;-><init>(II)V

    return-void
.end method
