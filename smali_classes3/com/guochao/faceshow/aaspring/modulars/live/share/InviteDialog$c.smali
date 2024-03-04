.class Lcom/guochao/faceshow/aaspring/modulars/live/share/InviteDialog$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;


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

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/share/InviteDialog$c;->b:Lcom/guochao/faceshow/aaspring/modulars/live/share/InviteDialog;

    iput p2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/share/InviteDialog$c;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageScrollStateChanged(I)V
    .locals 0

    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 0

    return-void
.end method

.method public onPageSelected(I)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/share/InviteDialog$c;->b:Lcom/guochao/faceshow/aaspring/modulars/live/share/InviteDialog;

    invoke-static {v0}, Lcom/guochao/faceshow/aaspring/modulars/live/share/InviteDialog;->P1(Lcom/guochao/faceshow/aaspring/modulars/live/share/InviteDialog;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/guochao/faceshow/aaspring/modulars/live/share/InviteListFragment;

    .line 2
    iget v0, p1, Lcom/guochao/faceshow/aaspring/modulars/live/share/InviteListFragment;->a:I

    if-lez v0, :cond_0

    .line 3
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/modulars/live/share/InviteListFragment;->b2()I

    move-result p1

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/modulars/live/share/InviteListFragment;->f2()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    .line 5
    :goto_0
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/share/InviteDialog$c;->b:Lcom/guochao/faceshow/aaspring/modulars/live/share/InviteDialog;

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/modulars/live/share/InviteDialog;->S1()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    if-nez p1, :cond_1

    goto :goto_1

    .line 6
    :cond_1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/share/InviteDialog$c;->b:Lcom/guochao/faceshow/aaspring/modulars/live/share/InviteDialog;

    iget-object v0, v0, Lcom/guochao/faceshow/aaspring/modulars/live/share/InviteDialog;->confirmLay:Landroid/view/View;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/share/InviteDialog$c;->b:Lcom/guochao/faceshow/aaspring/modulars/live/share/InviteDialog;

    iget v2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/share/InviteDialog$c;->a:I

    invoke-virtual {v1, v2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 8
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/share/InviteDialog$c;->b:Lcom/guochao/faceshow/aaspring/modulars/live/share/InviteDialog;

    iget-object v0, v0, Lcom/guochao/faceshow/aaspring/modulars/live/share/InviteDialog;->btnConfirm:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 9
    :cond_2
    :goto_1
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/share/InviteDialog$c;->b:Lcom/guochao/faceshow/aaspring/modulars/live/share/InviteDialog;

    iget-object p1, p1, Lcom/guochao/faceshow/aaspring/modulars/live/share/InviteDialog;->confirmLay:Landroid/view/View;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setEnabled(Z)V

    .line 10
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/share/InviteDialog$c;->b:Lcom/guochao/faceshow/aaspring/modulars/live/share/InviteDialog;

    iget-object v0, p1, Lcom/guochao/faceshow/aaspring/modulars/live/share/InviteDialog;->btnConfirm:Landroid/widget/TextView;

    iget v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/share/InviteDialog$c;->a:I

    invoke-virtual {p1, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_2
    return-void
.end method
