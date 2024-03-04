.class Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveInputDialogFragment$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/guochao/faceshow/aaspring/utils/SoftKeyBoardListener$OnSoftKeyBoardChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveInputDialogFragment;->initView(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveInputDialogFragment;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveInputDialogFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveInputDialogFragment$a;->a:Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveInputDialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public keyBoardHide(I)V
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveInputDialogFragment$a;->a:Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveInputDialogFragment;

    iget-object v0, v0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveInputDialogFragment;->b:Lcom/guochao/faceshow/aaspring/utils/SoftKeyBoardListener$OnSoftKeyBoardChangeListener;

    if-eqz v0, :cond_0

    const/high16 v1, 0x40a00000    # 5.0f

    .line 2
    invoke-static {v1}, Lcom/guochao/faceshow/utils/DensityUtil;->dp2px(F)I

    move-result v1

    add-int/2addr p1, v1

    invoke-interface {v0, p1}, Lcom/guochao/faceshow/aaspring/utils/SoftKeyBoardListener$OnSoftKeyBoardChangeListener;->keyBoardHide(I)V

    .line 3
    :cond_0
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveInputDialogFragment$a;->a:Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveInputDialogFragment;

    iget-boolean v0, p1, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveInputDialogFragment;->h:Z

    if-nez v0, :cond_1

    const/4 v0, 0x1

    .line 4
    iput-boolean v0, p1, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveInputDialogFragment;->h:Z

    .line 5
    invoke-virtual {p1}, Landroidx/fragment/app/DialogFragment;->dismissAllowingStateLoss()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_1
    return-void
.end method

.method public keyBoardShow(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveInputDialogFragment$a;->a:Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveInputDialogFragment;

    iget-object v0, v0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveInputDialogFragment;->b:Lcom/guochao/faceshow/aaspring/utils/SoftKeyBoardListener$OnSoftKeyBoardChangeListener;

    if-eqz v0, :cond_0

    const/high16 v1, 0x40a00000    # 5.0f

    .line 2
    invoke-static {v1}, Lcom/guochao/faceshow/utils/DensityUtil;->dp2px(F)I

    move-result v1

    add-int/2addr p1, v1

    invoke-interface {v0, p1}, Lcom/guochao/faceshow/aaspring/utils/SoftKeyBoardListener$OnSoftKeyBoardChangeListener;->keyBoardShow(I)V

    :cond_0
    return-void
.end method
