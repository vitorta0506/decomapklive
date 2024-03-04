.class Lcom/guochao/faceshow/aaspring/modulars/live/play/PlayRotateOpenSetting$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/PopupWindow$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/aaspring/modulars/live/play/PlayRotateOpenSetting;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/guochao/faceshow/aaspring/modulars/live/play/PlayRotateOpenSetting;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/aaspring/modulars/live/play/PlayRotateOpenSetting;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/play/PlayRotateOpenSetting$c;->a:Lcom/guochao/faceshow/aaspring/modulars/live/play/PlayRotateOpenSetting;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss()V
    .locals 2

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/play/PlayRotateOpenSetting$c;->a:Lcom/guochao/faceshow/aaspring/modulars/live/play/PlayRotateOpenSetting;

    invoke-static {v0}, Lcom/guochao/faceshow/aaspring/modulars/live/play/PlayRotateOpenSetting;->Z1(Lcom/guochao/faceshow/aaspring/modulars/live/play/PlayRotateOpenSetting;)Landroid/widget/ImageView;

    move-result-object v0

    const v1, 0x7f0f04ba

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    return-void
.end method
