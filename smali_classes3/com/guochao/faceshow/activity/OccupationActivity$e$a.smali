.class Lcom/guochao/faceshow/activity/OccupationActivity$e$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/activity/OccupationActivity$e;->a(Lcom/guochao/faceshow/utils/AAViewHolder;Lcom/guochao/faceshow/bean/OccupationChildBean;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Landroid/widget/CheckedTextView;

.field final synthetic c:Lcom/guochao/faceshow/bean/OccupationChildBean;

.field final synthetic d:Lcom/guochao/faceshow/activity/OccupationActivity$e;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/activity/OccupationActivity$e;ILandroid/widget/CheckedTextView;Lcom/guochao/faceshow/bean/OccupationChildBean;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/activity/OccupationActivity$e$a;->d:Lcom/guochao/faceshow/activity/OccupationActivity$e;

    iput p2, p0, Lcom/guochao/faceshow/activity/OccupationActivity$e$a;->a:I

    iput-object p3, p0, Lcom/guochao/faceshow/activity/OccupationActivity$e$a;->b:Landroid/widget/CheckedTextView;

    iput-object p4, p0, Lcom/guochao/faceshow/activity/OccupationActivity$e$a;->c:Lcom/guochao/faceshow/bean/OccupationChildBean;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 1
    iget p1, p0, Lcom/guochao/faceshow/activity/OccupationActivity$e$a;->a:I

    iget-object v0, p0, Lcom/guochao/faceshow/activity/OccupationActivity$e$a;->d:Lcom/guochao/faceshow/activity/OccupationActivity$e;

    iget-object v0, v0, Lcom/guochao/faceshow/activity/OccupationActivity$e;->a:Lcom/guochao/faceshow/activity/OccupationActivity;

    invoke-static {v0}, Lcom/guochao/faceshow/activity/OccupationActivity;->c2(Lcom/guochao/faceshow/activity/OccupationActivity;)I

    move-result v0

    if-eq p1, v0, :cond_1

    .line 2
    iget-object p1, p0, Lcom/guochao/faceshow/activity/OccupationActivity$e$a;->b:Landroid/widget/CheckedTextView;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/widget/CheckedTextView;->setChecked(Z)V

    .line 3
    iget-object p1, p0, Lcom/guochao/faceshow/activity/OccupationActivity$e$a;->d:Lcom/guochao/faceshow/activity/OccupationActivity$e;

    iget-object p1, p1, Lcom/guochao/faceshow/activity/OccupationActivity$e;->a:Lcom/guochao/faceshow/activity/OccupationActivity;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/guochao/faceshow/activity/OccupationActivity$e$a;->c:Lcom/guochao/faceshow/bean/OccupationChildBean;

    iget v2, v2, Lcom/guochao/faceshow/bean/OccupationChildBean;->infoId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/guochao/faceshow/activity/OccupationActivity;->U1(Lcom/guochao/faceshow/activity/OccupationActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 4
    iget-object p1, p0, Lcom/guochao/faceshow/activity/OccupationActivity$e$a;->d:Lcom/guochao/faceshow/activity/OccupationActivity$e;

    iget-object p1, p1, Lcom/guochao/faceshow/activity/OccupationActivity$e;->a:Lcom/guochao/faceshow/activity/OccupationActivity;

    iget-object v1, p0, Lcom/guochao/faceshow/activity/OccupationActivity$e$a;->c:Lcom/guochao/faceshow/bean/OccupationChildBean;

    iget-object v1, v1, Lcom/guochao/faceshow/bean/OccupationChildBean;->infoName:Ljava/lang/String;

    invoke-static {p1, v1}, Lcom/guochao/faceshow/activity/OccupationActivity;->W1(Lcom/guochao/faceshow/activity/OccupationActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 5
    iget-object p1, p0, Lcom/guochao/faceshow/activity/OccupationActivity$e$a;->d:Lcom/guochao/faceshow/activity/OccupationActivity$e;

    iget-object p1, p1, Lcom/guochao/faceshow/activity/OccupationActivity$e;->a:Lcom/guochao/faceshow/activity/OccupationActivity;

    invoke-static {p1}, Lcom/guochao/faceshow/activity/OccupationActivity;->f2(Lcom/guochao/faceshow/activity/OccupationActivity;)Landroid/widget/CheckedTextView;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 6
    iget-object p1, p0, Lcom/guochao/faceshow/activity/OccupationActivity$e$a;->d:Lcom/guochao/faceshow/activity/OccupationActivity$e;

    iget-object p1, p1, Lcom/guochao/faceshow/activity/OccupationActivity$e;->a:Lcom/guochao/faceshow/activity/OccupationActivity;

    invoke-static {p1}, Lcom/guochao/faceshow/activity/OccupationActivity;->f2(Lcom/guochao/faceshow/activity/OccupationActivity;)Landroid/widget/CheckedTextView;

    move-result-object p1

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/widget/CheckedTextView;->setChecked(Z)V

    .line 7
    iget-object p1, p0, Lcom/guochao/faceshow/activity/OccupationActivity$e$a;->d:Lcom/guochao/faceshow/activity/OccupationActivity$e;

    iget-object p1, p1, Lcom/guochao/faceshow/activity/OccupationActivity$e;->a:Lcom/guochao/faceshow/activity/OccupationActivity;

    iget v1, p0, Lcom/guochao/faceshow/activity/OccupationActivity$e$a;->a:I

    invoke-static {p1, v1}, Lcom/guochao/faceshow/activity/OccupationActivity;->d2(Lcom/guochao/faceshow/activity/OccupationActivity;I)I

    .line 8
    :cond_0
    iget-object p1, p0, Lcom/guochao/faceshow/activity/OccupationActivity$e$a;->d:Lcom/guochao/faceshow/activity/OccupationActivity$e;

    iget-object p1, p1, Lcom/guochao/faceshow/activity/OccupationActivity$e;->a:Lcom/guochao/faceshow/activity/OccupationActivity;

    iget-object v1, p0, Lcom/guochao/faceshow/activity/OccupationActivity$e$a;->b:Landroid/widget/CheckedTextView;

    invoke-static {p1, v1}, Lcom/guochao/faceshow/activity/OccupationActivity;->g2(Lcom/guochao/faceshow/activity/OccupationActivity;Landroid/widget/CheckedTextView;)Landroid/widget/CheckedTextView;

    .line 9
    iget-object p1, p0, Lcom/guochao/faceshow/activity/OccupationActivity$e$a;->d:Lcom/guochao/faceshow/activity/OccupationActivity$e;

    iget-object p1, p1, Lcom/guochao/faceshow/activity/OccupationActivity$e;->a:Lcom/guochao/faceshow/activity/OccupationActivity;

    iget v1, p0, Lcom/guochao/faceshow/activity/OccupationActivity$e$a;->a:I

    invoke-static {p1, v1}, Lcom/guochao/faceshow/activity/OccupationActivity;->d2(Lcom/guochao/faceshow/activity/OccupationActivity;I)I

    .line 10
    iget-object p1, p0, Lcom/guochao/faceshow/activity/OccupationActivity$e$a;->d:Lcom/guochao/faceshow/activity/OccupationActivity$e;

    iget-object p1, p1, Lcom/guochao/faceshow/activity/OccupationActivity$e;->a:Lcom/guochao/faceshow/activity/OccupationActivity;

    invoke-static {p1}, Lcom/guochao/faceshow/activity/OccupationActivity;->e2(Lcom/guochao/faceshow/activity/OccupationActivity;)Landroid/widget/TextView;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setEnabled(Z)V

    :cond_1
    return-void
.end method
