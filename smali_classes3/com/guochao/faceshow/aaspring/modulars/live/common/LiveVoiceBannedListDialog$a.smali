.class Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveVoiceBannedListDialog$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveVoiceBannedListDialog;->l()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveVoiceBannedListDialog;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveVoiceBannedListDialog;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveVoiceBannedListDialog$a;->a:Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveVoiceBannedListDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveVoiceBannedListDialog$a;->a:Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveVoiceBannedListDialog;

    iget-object p1, p1, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveVoiceBannedListDialog;->d:Landroid/view/View;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 2
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveVoiceBannedListDialog$a;->a:Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveVoiceBannedListDialog;

    iget-object p1, p1, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveVoiceBannedListDialog;->e:Landroid/view/View;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 3
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveVoiceBannedListDialog$a;->a:Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveVoiceBannedListDialog;

    iget-object v0, p1, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveVoiceBannedListDialog;->b:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object p1

    const v1, 0x7f06009c

    invoke-static {p1, v1}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 4
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveVoiceBannedListDialog$a;->a:Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveVoiceBannedListDialog;

    iget-object v0, p1, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveVoiceBannedListDialog;->c:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object p1

    const v1, 0x7f060384

    invoke-static {p1, v1}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 5
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveVoiceBannedListDialog$a;->a:Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveVoiceBannedListDialog;

    invoke-static {p1}, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveVoiceBannedListDialog;->a(Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveVoiceBannedListDialog;)V

    return-void
.end method
