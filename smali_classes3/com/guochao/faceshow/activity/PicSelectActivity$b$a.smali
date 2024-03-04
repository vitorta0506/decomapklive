.class Lcom/guochao/faceshow/activity/PicSelectActivity$b$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/activity/PicSelectActivity$b;->a(Lcom/guochao/faceshow/adapter/ZZ_RecycleAdapter$ViewHolder;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/widget/ImageView;

.field final synthetic b:Landroid/widget/ImageView;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:I

.field final synthetic e:Lcom/guochao/faceshow/activity/PicSelectActivity$b;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/activity/PicSelectActivity$b;Landroid/widget/ImageView;Landroid/widget/ImageView;Ljava/lang/String;I)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/activity/PicSelectActivity$b$a;->e:Lcom/guochao/faceshow/activity/PicSelectActivity$b;

    iput-object p2, p0, Lcom/guochao/faceshow/activity/PicSelectActivity$b$a;->a:Landroid/widget/ImageView;

    iput-object p3, p0, Lcom/guochao/faceshow/activity/PicSelectActivity$b$a;->b:Landroid/widget/ImageView;

    iput-object p4, p0, Lcom/guochao/faceshow/activity/PicSelectActivity$b$a;->c:Ljava/lang/String;

    iput p5, p0, Lcom/guochao/faceshow/activity/PicSelectActivity$b$a;->d:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .line 1
    iget-object p1, p0, Lcom/guochao/faceshow/activity/PicSelectActivity$b$a;->a:Landroid/widget/ImageView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2
    iget-object p1, p0, Lcom/guochao/faceshow/activity/PicSelectActivity$b$a;->b:Landroid/widget/ImageView;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 3
    iget-object p1, p0, Lcom/guochao/faceshow/activity/PicSelectActivity$b$a;->e:Lcom/guochao/faceshow/activity/PicSelectActivity$b;

    iget-object p1, p1, Lcom/guochao/faceshow/activity/PicSelectActivity$b;->a:Lcom/guochao/faceshow/activity/PicSelectActivity;

    invoke-static {p1}, Lcom/guochao/faceshow/activity/PicSelectActivity;->k0(Lcom/guochao/faceshow/activity/PicSelectActivity;)Landroid/widget/ImageView;

    move-result-object p1

    iget-object v1, p0, Lcom/guochao/faceshow/activity/PicSelectActivity$b$a;->c:Ljava/lang/String;

    const v2, 0x7f080220

    const/4 v3, 0x6

    invoke-static {p1, v1, v2, v3}, Lhc/a;->r(Landroid/widget/ImageView;Ljava/lang/Object;II)V

    .line 4
    iget-object p1, p0, Lcom/guochao/faceshow/activity/PicSelectActivity$b$a;->e:Lcom/guochao/faceshow/activity/PicSelectActivity$b;

    iget-object p1, p1, Lcom/guochao/faceshow/activity/PicSelectActivity$b;->a:Lcom/guochao/faceshow/activity/PicSelectActivity;

    invoke-static {p1}, Lcom/guochao/faceshow/activity/PicSelectActivity;->g0(Lcom/guochao/faceshow/activity/PicSelectActivity;)Landroid/widget/ImageView;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 5
    iget-object p1, p0, Lcom/guochao/faceshow/activity/PicSelectActivity$b$a;->e:Lcom/guochao/faceshow/activity/PicSelectActivity$b;

    iget-object p1, p1, Lcom/guochao/faceshow/activity/PicSelectActivity$b;->a:Lcom/guochao/faceshow/activity/PicSelectActivity;

    invoke-static {p1}, Lcom/guochao/faceshow/activity/PicSelectActivity;->g0(Lcom/guochao/faceshow/activity/PicSelectActivity;)Landroid/widget/ImageView;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 6
    :cond_0
    iget-object p1, p0, Lcom/guochao/faceshow/activity/PicSelectActivity$b$a;->e:Lcom/guochao/faceshow/activity/PicSelectActivity$b;

    iget-object p1, p1, Lcom/guochao/faceshow/activity/PicSelectActivity$b;->a:Lcom/guochao/faceshow/activity/PicSelectActivity;

    iget v0, p0, Lcom/guochao/faceshow/activity/PicSelectActivity$b$a;->d:I

    invoke-static {p1, v0}, Lcom/guochao/faceshow/activity/PicSelectActivity;->e0(Lcom/guochao/faceshow/activity/PicSelectActivity;I)I

    .line 7
    iget-object p1, p0, Lcom/guochao/faceshow/activity/PicSelectActivity$b$a;->e:Lcom/guochao/faceshow/activity/PicSelectActivity$b;

    iget-object p1, p1, Lcom/guochao/faceshow/activity/PicSelectActivity$b;->a:Lcom/guochao/faceshow/activity/PicSelectActivity;

    iget-object v0, p0, Lcom/guochao/faceshow/activity/PicSelectActivity$b$a;->a:Landroid/widget/ImageView;

    invoke-static {p1, v0}, Lcom/guochao/faceshow/activity/PicSelectActivity;->i0(Lcom/guochao/faceshow/activity/PicSelectActivity;Landroid/widget/ImageView;)Landroid/widget/ImageView;

    .line 8
    iget-object p1, p0, Lcom/guochao/faceshow/activity/PicSelectActivity$b$a;->e:Lcom/guochao/faceshow/activity/PicSelectActivity$b;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void
.end method
