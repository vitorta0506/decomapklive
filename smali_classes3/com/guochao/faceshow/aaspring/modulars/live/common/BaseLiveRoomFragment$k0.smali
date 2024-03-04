.class Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment$k0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/text/TextWatcher;


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

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment$k0;->a:Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0

    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment$k0;->a:Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;

    iget-object p2, p2, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->btnSend:Landroid/widget/ImageView;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p1

    if-lez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {p2, p1}, Landroid/widget/ImageView;->setEnabled(Z)V

    return-void
.end method
