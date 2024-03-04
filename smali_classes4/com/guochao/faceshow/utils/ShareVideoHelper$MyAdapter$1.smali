.class Lcom/guochao/faceshow/utils/ShareVideoHelper$MyAdapter$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/utils/ShareVideoHelper$MyAdapter;->onBindViewHolder(Lcom/guochao/faceshow/adapter/ZZ_RecycleAdapter$ViewHolder;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/guochao/faceshow/utils/ShareVideoHelper$MyAdapter;

.field final synthetic val$position:I


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/utils/ShareVideoHelper$MyAdapter;I)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/utils/ShareVideoHelper$MyAdapter$1;->this$1:Lcom/guochao/faceshow/utils/ShareVideoHelper$MyAdapter;

    iput p2, p0, Lcom/guochao/faceshow/utils/ShareVideoHelper$MyAdapter$1;->val$position:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 8

    .line 1
    iget-object p1, p0, Lcom/guochao/faceshow/utils/ShareVideoHelper$MyAdapter$1;->this$1:Lcom/guochao/faceshow/utils/ShareVideoHelper$MyAdapter;

    iget-object p1, p1, Lcom/guochao/faceshow/utils/ShareVideoHelper$MyAdapter;->this$0:Lcom/guochao/faceshow/utils/ShareVideoHelper;

    invoke-static {p1}, Lcom/guochao/faceshow/utils/ShareVideoHelper;->access$100(Lcom/guochao/faceshow/utils/ShareVideoHelper;)Ljava/util/List;

    move-result-object p1

    iget v0, p0, Lcom/guochao/faceshow/utils/ShareVideoHelper$MyAdapter$1;->val$position:I

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/guochao/faceshow/aaspring/beans/SharePlatformBean;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/SharePlatformBean;->getSharePlatformName()Ljava/lang/String;

    move-result-object p1

    const-string v0, "More"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2
    iget-object p1, p0, Lcom/guochao/faceshow/utils/ShareVideoHelper$MyAdapter$1;->this$1:Lcom/guochao/faceshow/utils/ShareVideoHelper$MyAdapter;

    invoke-static {p1}, Lcom/guochao/faceshow/utils/ShareVideoHelper$MyAdapter;->access$200(Lcom/guochao/faceshow/utils/ShareVideoHelper$MyAdapter;)V

    goto :goto_0

    .line 3
    :cond_0
    iget-object p1, p0, Lcom/guochao/faceshow/utils/ShareVideoHelper$MyAdapter$1;->this$1:Lcom/guochao/faceshow/utils/ShareVideoHelper$MyAdapter;

    iget-object p1, p1, Lcom/guochao/faceshow/utils/ShareVideoHelper$MyAdapter;->this$0:Lcom/guochao/faceshow/utils/ShareVideoHelper;

    invoke-static {p1}, Lcom/guochao/faceshow/utils/ShareVideoHelper;->access$300(Lcom/guochao/faceshow/utils/ShareVideoHelper;)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Landroid/app/Activity;

    iget-object p1, p0, Lcom/guochao/faceshow/utils/ShareVideoHelper$MyAdapter$1;->this$1:Lcom/guochao/faceshow/utils/ShareVideoHelper$MyAdapter;

    iget-object p1, p1, Lcom/guochao/faceshow/utils/ShareVideoHelper$MyAdapter;->this$0:Lcom/guochao/faceshow/utils/ShareVideoHelper;

    invoke-static {p1}, Lcom/guochao/faceshow/utils/ShareVideoHelper;->access$100(Lcom/guochao/faceshow/utils/ShareVideoHelper;)Ljava/util/List;

    move-result-object p1

    iget v1, p0, Lcom/guochao/faceshow/utils/ShareVideoHelper$MyAdapter$1;->val$position:I

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/guochao/faceshow/aaspring/beans/SharePlatformBean;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/SharePlatformBean;->getSharePlatformName()Ljava/lang/String;

    move-result-object v1

    iget-object p1, p0, Lcom/guochao/faceshow/utils/ShareVideoHelper$MyAdapter$1;->this$1:Lcom/guochao/faceshow/utils/ShareVideoHelper$MyAdapter;

    iget-object p1, p1, Lcom/guochao/faceshow/utils/ShareVideoHelper$MyAdapter;->this$0:Lcom/guochao/faceshow/utils/ShareVideoHelper;

    invoke-static {p1}, Lcom/guochao/faceshow/utils/ShareVideoHelper;->access$400(Lcom/guochao/faceshow/utils/ShareVideoHelper;)Lcom/guochao/faceshow/aaspring/beans/ShareContentBean;

    move-result-object p1

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/ShareContentBean;->getTitle()Ljava/lang/String;

    move-result-object v2

    iget-object p1, p0, Lcom/guochao/faceshow/utils/ShareVideoHelper$MyAdapter$1;->this$1:Lcom/guochao/faceshow/utils/ShareVideoHelper$MyAdapter;

    iget-object p1, p1, Lcom/guochao/faceshow/utils/ShareVideoHelper$MyAdapter;->this$0:Lcom/guochao/faceshow/utils/ShareVideoHelper;

    .line 4
    invoke-static {p1}, Lcom/guochao/faceshow/utils/ShareVideoHelper;->access$400(Lcom/guochao/faceshow/utils/ShareVideoHelper;)Lcom/guochao/faceshow/aaspring/beans/ShareContentBean;

    move-result-object p1

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/ShareContentBean;->getContent()Ljava/lang/String;

    move-result-object v3

    iget-object p1, p0, Lcom/guochao/faceshow/utils/ShareVideoHelper$MyAdapter$1;->this$1:Lcom/guochao/faceshow/utils/ShareVideoHelper$MyAdapter;

    iget-object p1, p1, Lcom/guochao/faceshow/utils/ShareVideoHelper$MyAdapter;->this$0:Lcom/guochao/faceshow/utils/ShareVideoHelper;

    invoke-static {p1}, Lcom/guochao/faceshow/utils/ShareVideoHelper;->access$400(Lcom/guochao/faceshow/utils/ShareVideoHelper;)Lcom/guochao/faceshow/aaspring/beans/ShareContentBean;

    move-result-object p1

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/ShareContentBean;->getImgUrl()Ljava/lang/String;

    move-result-object v4

    iget-object p1, p0, Lcom/guochao/faceshow/utils/ShareVideoHelper$MyAdapter$1;->this$1:Lcom/guochao/faceshow/utils/ShareVideoHelper$MyAdapter;

    iget-object p1, p1, Lcom/guochao/faceshow/utils/ShareVideoHelper$MyAdapter;->this$0:Lcom/guochao/faceshow/utils/ShareVideoHelper;

    invoke-static {p1}, Lcom/guochao/faceshow/utils/ShareVideoHelper;->access$400(Lcom/guochao/faceshow/utils/ShareVideoHelper;)Lcom/guochao/faceshow/aaspring/beans/ShareContentBean;

    move-result-object p1

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/ShareContentBean;->getShortUrl()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 5
    invoke-static/range {v0 .. v7}, Lv9/c;->g(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILu9/a;)V

    :goto_0
    return-void
.end method
