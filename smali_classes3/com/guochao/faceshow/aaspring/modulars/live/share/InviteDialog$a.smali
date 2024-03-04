.class Lcom/guochao/faceshow/aaspring/modulars/live/share/InviteDialog$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/guochao/faceshow/aaspring/modulars/live/share/InviteListFragment$l;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/aaspring/modulars/live/share/InviteDialog;->initView(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/guochao/faceshow/aaspring/modulars/live/share/InviteDialog;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/aaspring/modulars/live/share/InviteDialog;I)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/share/InviteDialog$a;->b:Lcom/guochao/faceshow/aaspring/modulars/live/share/InviteDialog;

    iput p2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/share/InviteDialog$a;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/share/InviteDialog$a;->b:Lcom/guochao/faceshow/aaspring/modulars/live/share/InviteDialog;

    invoke-static {v0}, Lcom/guochao/faceshow/aaspring/modulars/live/share/InviteDialog;->P1(Lcom/guochao/faceshow/aaspring/modulars/live/share/InviteDialog;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/share/InviteDialog$a;->b:Lcom/guochao/faceshow/aaspring/modulars/live/share/InviteDialog;

    iget-object v1, v1, Lcom/guochao/faceshow/aaspring/modulars/live/share/InviteDialog;->vpContent:Lcom/duolingo/open/rtlviewpager/RtlViewPager;

    invoke-virtual {v1}, Lcom/duolingo/open/rtlviewpager/RtlViewPager;->getCurrentItem()I

    move-result v1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/guochao/faceshow/aaspring/modulars/live/share/InviteListFragment;

    .line 2
    iget v1, v0, Lcom/guochao/faceshow/aaspring/modulars/live/share/InviteListFragment;->a:I

    if-lez v1, :cond_0

    .line 3
    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/modulars/live/share/InviteListFragment;->b2()I

    move-result v0

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/modulars/live/share/InviteListFragment;->f2()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 5
    :goto_0
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/share/InviteDialog$a;->b:Lcom/guochao/faceshow/aaspring/modulars/live/share/InviteDialog;

    invoke-virtual {v1}, Lcom/guochao/faceshow/aaspring/modulars/live/share/InviteDialog;->S1()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    if-nez v0, :cond_1

    goto :goto_1

    .line 6
    :cond_1
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/share/InviteDialog$a;->b:Lcom/guochao/faceshow/aaspring/modulars/live/share/InviteDialog;

    iget-object v1, v1, Lcom/guochao/faceshow/aaspring/modulars/live/share/InviteDialog;->confirmLay:Landroid/view/View;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/view/View;->setEnabled(Z)V

    .line 7
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/share/InviteDialog$a;->b:Lcom/guochao/faceshow/aaspring/modulars/live/share/InviteDialog;

    iget v3, p0, Lcom/guochao/faceshow/aaspring/modulars/live/share/InviteDialog$a;->a:I

    invoke-virtual {v2, v3}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 8
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/share/InviteDialog$a;->b:Lcom/guochao/faceshow/aaspring/modulars/live/share/InviteDialog;

    iget-object v1, v1, Lcom/guochao/faceshow/aaspring/modulars/live/share/InviteDialog;->btnConfirm:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 9
    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/share/InviteDialog$a;->b:Lcom/guochao/faceshow/aaspring/modulars/live/share/InviteDialog;

    iget-object v0, v0, Lcom/guochao/faceshow/aaspring/modulars/live/share/InviteDialog;->confirmLay:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 10
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/share/InviteDialog$a;->b:Lcom/guochao/faceshow/aaspring/modulars/live/share/InviteDialog;

    iget-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/live/share/InviteDialog;->btnConfirm:Landroid/widget/TextView;

    iget v2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/share/InviteDialog$a;->a:I

    invoke-virtual {v0, v2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_2
    return-void
.end method
