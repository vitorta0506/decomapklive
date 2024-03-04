.class Lcom/guochao/faceshow/aaspring/modulars/live/game/f$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/guochao/faceshow/aaspring/modulars/live/game/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/guochao/faceshow/aaspring/modulars/live/game/f;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/aaspring/modulars/live/game/f;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/f$a;->a:Lcom/guochao/faceshow/aaspring/modulars/live/game/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p1

    if-eqz p1, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/f$a;->a:Lcom/guochao/faceshow/aaspring/modulars/live/game/f;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/modulars/live/game/f;->Z()V

    return-void
.end method
