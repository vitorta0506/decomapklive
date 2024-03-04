.class Lcom/guochao/faceshow/aaspring/modulars/live/play/PlayRotateOpenSetting$d;
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

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/play/PlayRotateOpenSetting$d;->a:Lcom/guochao/faceshow/aaspring/modulars/live/play/PlayRotateOpenSetting;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/play/PlayRotateOpenSetting$d;->a:Lcom/guochao/faceshow/aaspring/modulars/live/play/PlayRotateOpenSetting;

    invoke-static {v0}, Lcom/guochao/faceshow/aaspring/modulars/live/play/PlayRotateOpenSetting;->c2(Lcom/guochao/faceshow/aaspring/modulars/live/play/PlayRotateOpenSetting;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v0, v1}, Lcom/guochao/faceshow/aaspring/modulars/live/play/PlayRotateOpenSetting;->b2(Lcom/guochao/faceshow/aaspring/modulars/live/play/PlayRotateOpenSetting;I)I

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/play/PlayRotateOpenSetting$d;->a:Lcom/guochao/faceshow/aaspring/modulars/live/play/PlayRotateOpenSetting;

    invoke-static {v0}, Lcom/guochao/faceshow/aaspring/modulars/live/play/PlayRotateOpenSetting;->d2(Lcom/guochao/faceshow/aaspring/modulars/live/play/PlayRotateOpenSetting;)Landroid/widget/TextView;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/play/PlayRotateOpenSetting$d;->a:Lcom/guochao/faceshow/aaspring/modulars/live/play/PlayRotateOpenSetting;

    invoke-static {v2}, Lcom/guochao/faceshow/aaspring/modulars/live/play/PlayRotateOpenSetting;->a2(Lcom/guochao/faceshow/aaspring/modulars/live/play/PlayRotateOpenSetting;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const/4 v2, 0x1

    const-string v3, ""

    aput-object v3, v1, v2

    const-string v2, "%s%s"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/play/PlayRotateOpenSetting$d;->a:Lcom/guochao/faceshow/aaspring/modulars/live/play/PlayRotateOpenSetting;

    invoke-static {v0}, Lcom/guochao/faceshow/aaspring/modulars/live/play/PlayRotateOpenSetting;->e2(Lcom/guochao/faceshow/aaspring/modulars/live/play/PlayRotateOpenSetting;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/play/PlayRotateOpenSetting$d;->a:Lcom/guochao/faceshow/aaspring/modulars/live/play/PlayRotateOpenSetting;

    invoke-static {v0}, Lcom/guochao/faceshow/aaspring/modulars/live/play/PlayRotateOpenSetting;->c2(Lcom/guochao/faceshow/aaspring/modulars/live/play/PlayRotateOpenSetting;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-static {v0, p1}, Lcom/guochao/faceshow/aaspring/modulars/live/play/PlayRotateOpenSetting;->g2(Lcom/guochao/faceshow/aaspring/modulars/live/play/PlayRotateOpenSetting;Ljava/lang/Integer;)V

    :cond_0
    return-void
.end method
