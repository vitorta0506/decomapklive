.class Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment$m0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->H2()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment$m0;->a:Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 1

    const/4 p1, 0x0

    const/16 v0, 0x42

    if-ne p2, v0, :cond_1

    .line 1
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result p2

    const/4 v0, 0x1

    if-nez p2, :cond_0

    return v0

    .line 2
    :cond_0
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result p2

    if-ne p2, v0, :cond_1

    .line 3
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment$m0;->a:Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;

    invoke-static {p2, p1}, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->X1(Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;Z)V

    return v0

    :cond_1
    return p1
.end method
