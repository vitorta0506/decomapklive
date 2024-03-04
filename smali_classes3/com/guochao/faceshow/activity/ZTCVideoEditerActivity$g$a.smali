.class Lcom/guochao/faceshow/activity/ZTCVideoEditerActivity$g$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/activity/ZTCVideoEditerActivity$g;->a(Lcom/guochao/faceshow/adapter/ZZ_RecycleAdapter$ViewHolder;Lcom/guochao/pusher/beauty/FilterItem;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Landroid/widget/LinearLayout;

.field final synthetic c:Lcom/guochao/faceshow/activity/ZTCVideoEditerActivity$g;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/activity/ZTCVideoEditerActivity$g;ILandroid/widget/LinearLayout;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/activity/ZTCVideoEditerActivity$g$a;->c:Lcom/guochao/faceshow/activity/ZTCVideoEditerActivity$g;

    iput p2, p0, Lcom/guochao/faceshow/activity/ZTCVideoEditerActivity$g$a;->a:I

    iput-object p3, p0, Lcom/guochao/faceshow/activity/ZTCVideoEditerActivity$g$a;->b:Landroid/widget/LinearLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 1
    iget p1, p0, Lcom/guochao/faceshow/activity/ZTCVideoEditerActivity$g$a;->a:I

    iget-object v0, p0, Lcom/guochao/faceshow/activity/ZTCVideoEditerActivity$g$a;->c:Lcom/guochao/faceshow/activity/ZTCVideoEditerActivity$g;

    iget-object v0, v0, Lcom/guochao/faceshow/activity/ZTCVideoEditerActivity$g;->a:Lcom/guochao/faceshow/activity/ZTCVideoEditerActivity;

    invoke-static {v0}, Lcom/guochao/faceshow/activity/ZTCVideoEditerActivity;->H0(Lcom/guochao/faceshow/activity/ZTCVideoEditerActivity;)I

    move-result v0

    const v1, 0x7f06038c

    if-eq p1, v0, :cond_1

    .line 2
    iget-object p1, p0, Lcom/guochao/faceshow/activity/ZTCVideoEditerActivity$g$a;->c:Lcom/guochao/faceshow/activity/ZTCVideoEditerActivity$g;

    iget-object p1, p1, Lcom/guochao/faceshow/activity/ZTCVideoEditerActivity$g;->a:Lcom/guochao/faceshow/activity/ZTCVideoEditerActivity;

    iget v0, p0, Lcom/guochao/faceshow/activity/ZTCVideoEditerActivity$g$a;->a:I

    invoke-static {p1, v0}, Lcom/guochao/faceshow/activity/ZTCVideoEditerActivity;->I0(Lcom/guochao/faceshow/activity/ZTCVideoEditerActivity;I)I

    .line 3
    iget-object p1, p0, Lcom/guochao/faceshow/activity/ZTCVideoEditerActivity$g$a;->c:Lcom/guochao/faceshow/activity/ZTCVideoEditerActivity$g;

    iget-object p1, p1, Lcom/guochao/faceshow/activity/ZTCVideoEditerActivity$g;->a:Lcom/guochao/faceshow/activity/ZTCVideoEditerActivity;

    invoke-static {p1}, Lcom/guochao/faceshow/activity/ZTCVideoEditerActivity;->N0(Lcom/guochao/faceshow/activity/ZTCVideoEditerActivity;)Landroid/widget/LinearLayout;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 4
    iget-object p1, p0, Lcom/guochao/faceshow/activity/ZTCVideoEditerActivity$g$a;->c:Lcom/guochao/faceshow/activity/ZTCVideoEditerActivity$g;

    iget-object p1, p1, Lcom/guochao/faceshow/activity/ZTCVideoEditerActivity$g;->a:Lcom/guochao/faceshow/activity/ZTCVideoEditerActivity;

    invoke-static {p1}, Lcom/guochao/faceshow/activity/ZTCVideoEditerActivity;->N0(Lcom/guochao/faceshow/activity/ZTCVideoEditerActivity;)Landroid/widget/LinearLayout;

    move-result-object p1

    iget-object v0, p0, Lcom/guochao/faceshow/activity/ZTCVideoEditerActivity$g$a;->c:Lcom/guochao/faceshow/activity/ZTCVideoEditerActivity$g;

    iget-object v0, v0, Lcom/guochao/faceshow/activity/ZTCVideoEditerActivity$g;->a:Lcom/guochao/faceshow/activity/ZTCVideoEditerActivity;

    invoke-static {v0, v1}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 5
    :cond_0
    iget-object p1, p0, Lcom/guochao/faceshow/activity/ZTCVideoEditerActivity$g$a;->b:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/guochao/faceshow/activity/ZTCVideoEditerActivity$g$a;->c:Lcom/guochao/faceshow/activity/ZTCVideoEditerActivity$g;

    iget-object v0, v0, Lcom/guochao/faceshow/activity/ZTCVideoEditerActivity$g;->a:Lcom/guochao/faceshow/activity/ZTCVideoEditerActivity;

    const v1, 0x7f06031b

    invoke-static {v0, v1}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 6
    iget-object p1, p0, Lcom/guochao/faceshow/activity/ZTCVideoEditerActivity$g$a;->c:Lcom/guochao/faceshow/activity/ZTCVideoEditerActivity$g;

    iget-object p1, p1, Lcom/guochao/faceshow/activity/ZTCVideoEditerActivity$g;->a:Lcom/guochao/faceshow/activity/ZTCVideoEditerActivity;

    iget-object v0, p0, Lcom/guochao/faceshow/activity/ZTCVideoEditerActivity$g$a;->b:Landroid/widget/LinearLayout;

    invoke-static {p1, v0}, Lcom/guochao/faceshow/activity/ZTCVideoEditerActivity;->P0(Lcom/guochao/faceshow/activity/ZTCVideoEditerActivity;Landroid/widget/LinearLayout;)Landroid/widget/LinearLayout;

    .line 7
    iget-object p1, p0, Lcom/guochao/faceshow/activity/ZTCVideoEditerActivity$g$a;->c:Lcom/guochao/faceshow/activity/ZTCVideoEditerActivity$g;

    iget-object p1, p1, Lcom/guochao/faceshow/activity/ZTCVideoEditerActivity$g;->a:Lcom/guochao/faceshow/activity/ZTCVideoEditerActivity;

    iget v0, p0, Lcom/guochao/faceshow/activity/ZTCVideoEditerActivity$g$a;->a:I

    invoke-static {p1, v0}, Lcom/guochao/faceshow/activity/ZTCVideoEditerActivity;->Q0(Lcom/guochao/faceshow/activity/ZTCVideoEditerActivity;I)V

    goto :goto_0

    .line 8
    :cond_1
    iget-object p1, p0, Lcom/guochao/faceshow/activity/ZTCVideoEditerActivity$g$a;->c:Lcom/guochao/faceshow/activity/ZTCVideoEditerActivity$g;

    iget-object p1, p1, Lcom/guochao/faceshow/activity/ZTCVideoEditerActivity$g;->a:Lcom/guochao/faceshow/activity/ZTCVideoEditerActivity;

    invoke-static {p1}, Lcom/guochao/faceshow/activity/ZTCVideoEditerActivity;->N0(Lcom/guochao/faceshow/activity/ZTCVideoEditerActivity;)Landroid/widget/LinearLayout;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 9
    iget-object p1, p0, Lcom/guochao/faceshow/activity/ZTCVideoEditerActivity$g$a;->c:Lcom/guochao/faceshow/activity/ZTCVideoEditerActivity$g;

    iget-object p1, p1, Lcom/guochao/faceshow/activity/ZTCVideoEditerActivity$g;->a:Lcom/guochao/faceshow/activity/ZTCVideoEditerActivity;

    invoke-static {p1}, Lcom/guochao/faceshow/activity/ZTCVideoEditerActivity;->N0(Lcom/guochao/faceshow/activity/ZTCVideoEditerActivity;)Landroid/widget/LinearLayout;

    move-result-object p1

    iget-object v0, p0, Lcom/guochao/faceshow/activity/ZTCVideoEditerActivity$g$a;->c:Lcom/guochao/faceshow/activity/ZTCVideoEditerActivity$g;

    iget-object v0, v0, Lcom/guochao/faceshow/activity/ZTCVideoEditerActivity$g;->a:Lcom/guochao/faceshow/activity/ZTCVideoEditerActivity;

    invoke-static {v0, v1}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 10
    :cond_2
    iget-object p1, p0, Lcom/guochao/faceshow/activity/ZTCVideoEditerActivity$g$a;->b:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/guochao/faceshow/activity/ZTCVideoEditerActivity$g$a;->c:Lcom/guochao/faceshow/activity/ZTCVideoEditerActivity$g;

    iget-object v0, v0, Lcom/guochao/faceshow/activity/ZTCVideoEditerActivity$g;->a:Lcom/guochao/faceshow/activity/ZTCVideoEditerActivity;

    invoke-static {v0, v1}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 11
    iget-object p1, p0, Lcom/guochao/faceshow/activity/ZTCVideoEditerActivity$g$a;->c:Lcom/guochao/faceshow/activity/ZTCVideoEditerActivity$g;

    iget-object p1, p1, Lcom/guochao/faceshow/activity/ZTCVideoEditerActivity$g;->a:Lcom/guochao/faceshow/activity/ZTCVideoEditerActivity;

    const/4 v0, -0x1

    invoke-static {p1, v0}, Lcom/guochao/faceshow/activity/ZTCVideoEditerActivity;->I0(Lcom/guochao/faceshow/activity/ZTCVideoEditerActivity;I)I

    .line 12
    iget-object p1, p0, Lcom/guochao/faceshow/activity/ZTCVideoEditerActivity$g$a;->c:Lcom/guochao/faceshow/activity/ZTCVideoEditerActivity$g;

    iget-object p1, p1, Lcom/guochao/faceshow/activity/ZTCVideoEditerActivity$g;->a:Lcom/guochao/faceshow/activity/ZTCVideoEditerActivity;

    invoke-static {p1, v0}, Lcom/guochao/faceshow/activity/ZTCVideoEditerActivity;->Q0(Lcom/guochao/faceshow/activity/ZTCVideoEditerActivity;I)V

    :goto_0
    return-void
.end method
