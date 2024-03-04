.class Lcom/guochao/faceshow/activity/PicSelectActivity$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/activity/PicSelectActivity;->m0()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/guochao/faceshow/activity/PicSelectActivity;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/activity/PicSelectActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/activity/PicSelectActivity$c;->a:Lcom/guochao/faceshow/activity/PicSelectActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/activity/PicSelectActivity$c;->a:Lcom/guochao/faceshow/activity/PicSelectActivity;

    iget-object v0, v0, Lcom/guochao/faceshow/activity/PicSelectActivity;->f:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/activity/PicSelectActivity$c;->a:Lcom/guochao/faceshow/activity/PicSelectActivity;

    invoke-static {v0, v1}, Lcom/guochao/faceshow/activity/PicSelectActivity;->e0(Lcom/guochao/faceshow/activity/PicSelectActivity;I)I

    .line 3
    iget-object v0, p0, Lcom/guochao/faceshow/activity/PicSelectActivity$c;->a:Lcom/guochao/faceshow/activity/PicSelectActivity;

    invoke-static {v0}, Lcom/guochao/faceshow/activity/PicSelectActivity;->l0(Lcom/guochao/faceshow/activity/PicSelectActivity;)Lcom/guochao/faceshow/adapter/ZZ_RecycleAdapter;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 4
    iget-object v0, p0, Lcom/guochao/faceshow/activity/PicSelectActivity$c;->a:Lcom/guochao/faceshow/activity/PicSelectActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/guochao/faceshow/activity/PicSelectActivity;->e0(Lcom/guochao/faceshow/activity/PicSelectActivity;I)I

    .line 5
    iget-object v0, p0, Lcom/guochao/faceshow/activity/PicSelectActivity$c;->a:Lcom/guochao/faceshow/activity/PicSelectActivity;

    invoke-static {v0}, Lcom/guochao/faceshow/activity/PicSelectActivity;->l0(Lcom/guochao/faceshow/activity/PicSelectActivity;)Lcom/guochao/faceshow/adapter/ZZ_RecycleAdapter;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    :cond_0
    return-void
.end method
