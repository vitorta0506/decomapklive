.class Lcom/guochao/faceshow/aaspring/modulars/live/play/PlayRotateOpenSetting$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/guochao/faceshow/aaspring/modulars/live/game/r$c;


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

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/play/PlayRotateOpenSetting$b;->a:Lcom/guochao/faceshow/aaspring/modulars/live/play/PlayRotateOpenSetting;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/play/PlayRotateOpenSetting$b;->a:Lcom/guochao/faceshow/aaspring/modulars/live/play/PlayRotateOpenSetting;

    invoke-static {v0}, Lcom/guochao/faceshow/aaspring/modulars/live/play/PlayRotateOpenSetting;->X1(Lcom/guochao/faceshow/aaspring/modulars/live/play/PlayRotateOpenSetting;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-static {v0, p1}, Lcom/guochao/faceshow/aaspring/modulars/live/play/PlayRotateOpenSetting;->S1(Lcom/guochao/faceshow/aaspring/modulars/live/play/PlayRotateOpenSetting;I)I

    .line 2
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/play/PlayRotateOpenSetting$b;->a:Lcom/guochao/faceshow/aaspring/modulars/live/play/PlayRotateOpenSetting;

    invoke-static {p1}, Lcom/guochao/faceshow/aaspring/modulars/live/play/PlayRotateOpenSetting;->Y1(Lcom/guochao/faceshow/aaspring/modulars/live/play/PlayRotateOpenSetting;)Landroid/widget/TextView;

    move-result-object p1

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/play/PlayRotateOpenSetting$b;->a:Lcom/guochao/faceshow/aaspring/modulars/live/play/PlayRotateOpenSetting;

    invoke-static {v1}, Lcom/guochao/faceshow/aaspring/modulars/live/play/PlayRotateOpenSetting;->Q1(Lcom/guochao/faceshow/aaspring/modulars/live/play/PlayRotateOpenSetting;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const/4 v1, 0x1

    const-string v2, ""

    aput-object v2, v0, v1

    const-string v1, "%s%s"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
