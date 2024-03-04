.class Lcom/guochao/faceshow/activity/ZTCVideoEditerActivity$g;
.super Lcom/guochao/faceshow/adapter/ZZ_RecycleAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/activity/ZTCVideoEditerActivity;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/guochao/faceshow/adapter/ZZ_RecycleAdapter<",
        "Lcom/guochao/pusher/beauty/FilterItem;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/guochao/faceshow/activity/ZTCVideoEditerActivity;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/activity/ZTCVideoEditerActivity;Landroid/content/Context;I)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/activity/ZTCVideoEditerActivity$g;->a:Lcom/guochao/faceshow/activity/ZTCVideoEditerActivity;

    invoke-direct {p0, p2, p3}, Lcom/guochao/faceshow/adapter/ZZ_RecycleAdapter;-><init>(Landroid/content/Context;I)V

    return-void
.end method


# virtual methods
.method public a(Lcom/guochao/faceshow/adapter/ZZ_RecycleAdapter$ViewHolder;Lcom/guochao/pusher/beauty/FilterItem;)V
    .locals 4

    const v0, 0x7f0a064e

    .line 1
    invoke-virtual {p1, v0}, Lcom/guochao/faceshow/adapter/ZZ_RecycleAdapter$ViewHolder;->c(I)Landroid/widget/ImageView;

    move-result-object v0

    .line 2
    invoke-virtual {p2}, Lcom/guochao/pusher/beauty/FilterItem;->getIcon()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Lhc/a;->j(Landroid/widget/ImageView;Ljava/lang/String;)V

    .line 3
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getPosition()I

    move-result p2

    const v0, 0x7f0a056a

    .line 4
    invoke-virtual {p1, v0}, Lcom/guochao/faceshow/adapter/ZZ_RecycleAdapter$ViewHolder;->d(I)Landroid/widget/LinearLayout;

    move-result-object v1

    .line 5
    iget-object v2, p0, Lcom/guochao/faceshow/activity/ZTCVideoEditerActivity$g;->a:Lcom/guochao/faceshow/activity/ZTCVideoEditerActivity;

    invoke-static {v2}, Lcom/guochao/faceshow/activity/ZTCVideoEditerActivity;->H0(Lcom/guochao/faceshow/activity/ZTCVideoEditerActivity;)I

    move-result v2

    if-ne p2, v2, :cond_0

    .line 6
    iget-object v2, p0, Lcom/guochao/faceshow/activity/ZTCVideoEditerActivity$g;->a:Lcom/guochao/faceshow/activity/ZTCVideoEditerActivity;

    invoke-static {v2, v1}, Lcom/guochao/faceshow/activity/ZTCVideoEditerActivity;->P0(Lcom/guochao/faceshow/activity/ZTCVideoEditerActivity;Landroid/widget/LinearLayout;)Landroid/widget/LinearLayout;

    .line 7
    iget-object v2, p0, Lcom/guochao/faceshow/activity/ZTCVideoEditerActivity$g;->a:Lcom/guochao/faceshow/activity/ZTCVideoEditerActivity;

    const v3, 0x7f06031b

    invoke-static {v2, v3}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    goto :goto_0

    .line 8
    :cond_0
    iget-object v2, p0, Lcom/guochao/faceshow/activity/ZTCVideoEditerActivity$g;->a:Lcom/guochao/faceshow/activity/ZTCVideoEditerActivity;

    const v3, 0x7f06038c

    invoke-static {v2, v3}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 9
    :goto_0
    invoke-virtual {p1, v0}, Lcom/guochao/faceshow/adapter/ZZ_RecycleAdapter$ViewHolder;->getView(I)Landroid/view/View;

    move-result-object p1

    new-instance v0, Lcom/guochao/faceshow/activity/ZTCVideoEditerActivity$g$a;

    invoke-direct {v0, p0, p2, v1}, Lcom/guochao/faceshow/activity/ZTCVideoEditerActivity$g$a;-><init>(Lcom/guochao/faceshow/activity/ZTCVideoEditerActivity$g;ILandroid/widget/LinearLayout;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public bridge synthetic convert(Lcom/guochao/faceshow/adapter/ZZ_RecycleAdapter$ViewHolder;Ljava/lang/Object;)V
    .locals 0

    check-cast p2, Lcom/guochao/pusher/beauty/FilterItem;

    invoke-virtual {p0, p1, p2}, Lcom/guochao/faceshow/activity/ZTCVideoEditerActivity$g;->a(Lcom/guochao/faceshow/adapter/ZZ_RecycleAdapter$ViewHolder;Lcom/guochao/pusher/beauty/FilterItem;)V

    return-void
.end method
