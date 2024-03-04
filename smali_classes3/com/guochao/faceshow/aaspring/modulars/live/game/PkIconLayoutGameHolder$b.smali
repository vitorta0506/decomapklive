.class Lcom/guochao/faceshow/aaspring/modulars/live/game/PkIconLayoutGameHolder$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/guochao/faceshow/views/e$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/aaspring/modulars/live/game/PkIconLayoutGameHolder;->onViewClicked(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/guochao/faceshow/aaspring/modulars/live/game/PkIconLayoutGameHolder;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/aaspring/modulars/live/game/PkIconLayoutGameHolder;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/PkIconLayoutGameHolder$b;->a:Lcom/guochao/faceshow/aaspring/modulars/live/game/PkIconLayoutGameHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/app/Dialog;Z)V
    .locals 0

    if-eqz p2, :cond_0

    .line 1
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/PkIconLayoutGameHolder$b;->a:Lcom/guochao/faceshow/aaspring/modulars/live/game/PkIconLayoutGameHolder;

    invoke-static {p2}, Lcom/guochao/faceshow/aaspring/modulars/live/game/PkIconLayoutGameHolder;->c(Lcom/guochao/faceshow/aaspring/modulars/live/game/PkIconLayoutGameHolder;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 2
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/PkIconLayoutGameHolder$b;->a:Lcom/guochao/faceshow/aaspring/modulars/live/game/PkIconLayoutGameHolder;

    invoke-static {p2, p1}, Lcom/guochao/faceshow/aaspring/modulars/live/game/PkIconLayoutGameHolder;->e(Lcom/guochao/faceshow/aaspring/modulars/live/game/PkIconLayoutGameHolder;Landroid/app/Dialog;)V

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    :cond_1
    :goto_0
    return-void
.end method

.method public synthetic onCreate(Lcom/guochao/faceshow/views/e;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/guochao/faceshow/views/d;->a(Lcom/guochao/faceshow/views/e$a;Lcom/guochao/faceshow/views/e;)V

    return-void
.end method
