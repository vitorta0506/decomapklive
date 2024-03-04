.class Lcom/guochao/faceshow/activity/OccupationActivity$d$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/activity/OccupationActivity$d;->a(Lcom/guochao/faceshow/utils/AAViewHolder;Lcom/guochao/faceshow/bean/OccupationBean;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Landroid/widget/CheckedTextView;

.field final synthetic c:Lcom/guochao/faceshow/activity/OccupationActivity$d;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/activity/OccupationActivity$d;ILandroid/widget/CheckedTextView;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/activity/OccupationActivity$d$a;->c:Lcom/guochao/faceshow/activity/OccupationActivity$d;

    iput p2, p0, Lcom/guochao/faceshow/activity/OccupationActivity$d$a;->a:I

    iput-object p3, p0, Lcom/guochao/faceshow/activity/OccupationActivity$d$a;->b:Landroid/widget/CheckedTextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 1
    iget p1, p0, Lcom/guochao/faceshow/activity/OccupationActivity$d$a;->a:I

    iget-object v0, p0, Lcom/guochao/faceshow/activity/OccupationActivity$d$a;->c:Lcom/guochao/faceshow/activity/OccupationActivity$d;

    iget-object v0, v0, Lcom/guochao/faceshow/activity/OccupationActivity$d;->a:Lcom/guochao/faceshow/activity/OccupationActivity;

    invoke-static {v0}, Lcom/guochao/faceshow/activity/OccupationActivity;->X1(Lcom/guochao/faceshow/activity/OccupationActivity;)I

    move-result v0

    if-eq p1, v0, :cond_1

    .line 2
    iget-object p1, p0, Lcom/guochao/faceshow/activity/OccupationActivity$d$a;->b:Landroid/widget/CheckedTextView;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/widget/CheckedTextView;->setChecked(Z)V

    .line 3
    iget-object p1, p0, Lcom/guochao/faceshow/activity/OccupationActivity$d$a;->c:Lcom/guochao/faceshow/activity/OccupationActivity$d;

    iget-object p1, p1, Lcom/guochao/faceshow/activity/OccupationActivity$d;->a:Lcom/guochao/faceshow/activity/OccupationActivity;

    invoke-static {p1}, Lcom/guochao/faceshow/activity/OccupationActivity;->Z1(Lcom/guochao/faceshow/activity/OccupationActivity;)Landroid/widget/CheckedTextView;

    move-result-object p1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 4
    iget-object p1, p0, Lcom/guochao/faceshow/activity/OccupationActivity$d$a;->c:Lcom/guochao/faceshow/activity/OccupationActivity$d;

    iget-object p1, p1, Lcom/guochao/faceshow/activity/OccupationActivity$d;->a:Lcom/guochao/faceshow/activity/OccupationActivity;

    invoke-static {p1}, Lcom/guochao/faceshow/activity/OccupationActivity;->Z1(Lcom/guochao/faceshow/activity/OccupationActivity;)Landroid/widget/CheckedTextView;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/widget/CheckedTextView;->setChecked(Z)V

    .line 5
    :cond_0
    iget-object p1, p0, Lcom/guochao/faceshow/activity/OccupationActivity$d$a;->c:Lcom/guochao/faceshow/activity/OccupationActivity$d;

    iget-object p1, p1, Lcom/guochao/faceshow/activity/OccupationActivity$d;->a:Lcom/guochao/faceshow/activity/OccupationActivity;

    iget-object v1, p0, Lcom/guochao/faceshow/activity/OccupationActivity$d$a;->b:Landroid/widget/CheckedTextView;

    invoke-static {p1, v1}, Lcom/guochao/faceshow/activity/OccupationActivity;->a2(Lcom/guochao/faceshow/activity/OccupationActivity;Landroid/widget/CheckedTextView;)Landroid/widget/CheckedTextView;

    .line 6
    iget-object p1, p0, Lcom/guochao/faceshow/activity/OccupationActivity$d$a;->c:Lcom/guochao/faceshow/activity/OccupationActivity$d;

    iget-object p1, p1, Lcom/guochao/faceshow/activity/OccupationActivity$d;->a:Lcom/guochao/faceshow/activity/OccupationActivity;

    iget v1, p0, Lcom/guochao/faceshow/activity/OccupationActivity$d$a;->a:I

    invoke-static {p1, v1}, Lcom/guochao/faceshow/activity/OccupationActivity;->Y1(Lcom/guochao/faceshow/activity/OccupationActivity;I)I

    .line 7
    iget-object p1, p0, Lcom/guochao/faceshow/activity/OccupationActivity$d$a;->c:Lcom/guochao/faceshow/activity/OccupationActivity$d;

    iget-object p1, p1, Lcom/guochao/faceshow/activity/OccupationActivity$d;->a:Lcom/guochao/faceshow/activity/OccupationActivity;

    invoke-static {p1}, Lcom/guochao/faceshow/activity/OccupationActivity;->b2(Lcom/guochao/faceshow/activity/OccupationActivity;)Landroid/os/Handler;

    move-result-object p1

    iget-object v1, p0, Lcom/guochao/faceshow/activity/OccupationActivity$d$a;->c:Lcom/guochao/faceshow/activity/OccupationActivity$d;

    iget-object v1, v1, Lcom/guochao/faceshow/activity/OccupationActivity$d;->a:Lcom/guochao/faceshow/activity/OccupationActivity;

    invoke-static {v1}, Lcom/guochao/faceshow/activity/OccupationActivity;->X1(Lcom/guochao/faceshow/activity/OccupationActivity;)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 8
    iget-object p1, p0, Lcom/guochao/faceshow/activity/OccupationActivity$d$a;->c:Lcom/guochao/faceshow/activity/OccupationActivity$d;

    iget-object p1, p1, Lcom/guochao/faceshow/activity/OccupationActivity$d;->a:Lcom/guochao/faceshow/activity/OccupationActivity;

    const/4 v1, -0x1

    invoke-static {p1, v1}, Lcom/guochao/faceshow/activity/OccupationActivity;->d2(Lcom/guochao/faceshow/activity/OccupationActivity;I)I

    .line 9
    iget-object p1, p0, Lcom/guochao/faceshow/activity/OccupationActivity$d$a;->c:Lcom/guochao/faceshow/activity/OccupationActivity$d;

    iget-object p1, p1, Lcom/guochao/faceshow/activity/OccupationActivity$d;->a:Lcom/guochao/faceshow/activity/OccupationActivity;

    invoke-static {p1}, Lcom/guochao/faceshow/activity/OccupationActivity;->e2(Lcom/guochao/faceshow/activity/OccupationActivity;)Landroid/widget/TextView;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setEnabled(Z)V

    :cond_1
    return-void
.end method
