.class Lcom/guochao/faceshow/utils/ShareVideoHelper$MyAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/guochao/faceshow/utils/ShareVideoHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lcom/guochao/faceshow/adapter/ZZ_RecycleAdapter$ViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/guochao/faceshow/utils/ShareVideoHelper;


# direct methods
.method private constructor <init>(Lcom/guochao/faceshow/utils/ShareVideoHelper;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/guochao/faceshow/utils/ShareVideoHelper$MyAdapter;->this$0:Lcom/guochao/faceshow/utils/ShareVideoHelper;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/guochao/faceshow/utils/ShareVideoHelper;Lcom/guochao/faceshow/utils/ShareVideoHelper$1;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/guochao/faceshow/utils/ShareVideoHelper$MyAdapter;-><init>(Lcom/guochao/faceshow/utils/ShareVideoHelper;)V

    return-void
.end method

.method static synthetic access$200(Lcom/guochao/faceshow/utils/ShareVideoHelper$MyAdapter;)V
    .locals 0

    invoke-direct {p0}, Lcom/guochao/faceshow/utils/ShareVideoHelper$MyAdapter;->startShareMore()V

    return-void
.end method

.method private startShareMore()V
    .locals 3

    .line 1
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.SEND"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x3

    .line 2
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const-string/jumbo v1, "text/*"

    .line 3
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 4
    invoke-static {}, Leb/b;->y()Ljava/lang/String;

    move-result-object v1

    const-string v2, "android.intent.extra.TITLE"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 5
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/guochao/faceshow/utils/ShareVideoHelper$MyAdapter;->this$0:Lcom/guochao/faceshow/utils/ShareVideoHelper;

    invoke-static {v2}, Lcom/guochao/faceshow/utils/ShareVideoHelper;->access$400(Lcom/guochao/faceshow/utils/ShareVideoHelper;)Lcom/guochao/faceshow/aaspring/beans/ShareContentBean;

    move-result-object v2

    invoke-virtual {v2}, Lcom/guochao/faceshow/aaspring/beans/ShareContentBean;->getContent()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/guochao/faceshow/utils/ShareVideoHelper$MyAdapter;->this$0:Lcom/guochao/faceshow/utils/ShareVideoHelper;

    invoke-static {v2}, Lcom/guochao/faceshow/utils/ShareVideoHelper;->access$400(Lcom/guochao/faceshow/utils/ShareVideoHelper;)Lcom/guochao/faceshow/aaspring/beans/ShareContentBean;

    move-result-object v2

    invoke-virtual {v2}, Lcom/guochao/faceshow/aaspring/beans/ShareContentBean;->getShortUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "android.intent.extra.TEXT"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 6
    iget-object v1, p0, Lcom/guochao/faceshow/utils/ShareVideoHelper$MyAdapter;->this$0:Lcom/guochao/faceshow/utils/ShareVideoHelper;

    invoke-static {v1}, Lcom/guochao/faceshow/utils/ShareVideoHelper;->access$300(Lcom/guochao/faceshow/utils/ShareVideoHelper;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, ""

    invoke-static {v0, v2}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/utils/ShareVideoHelper$MyAdapter;->this$0:Lcom/guochao/faceshow/utils/ShareVideoHelper;

    invoke-static {v0}, Lcom/guochao/faceshow/utils/ShareVideoHelper;->access$100(Lcom/guochao/faceshow/utils/ShareVideoHelper;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .line 1
    check-cast p1, Lcom/guochao/faceshow/adapter/ZZ_RecycleAdapter$ViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/guochao/faceshow/utils/ShareVideoHelper$MyAdapter;->onBindViewHolder(Lcom/guochao/faceshow/adapter/ZZ_RecycleAdapter$ViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/guochao/faceshow/adapter/ZZ_RecycleAdapter$ViewHolder;I)V
    .locals 1

    .line 2
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast p1, Landroid/widget/ImageView;

    .line 3
    iget-object v0, p0, Lcom/guochao/faceshow/utils/ShareVideoHelper$MyAdapter;->this$0:Lcom/guochao/faceshow/utils/ShareVideoHelper;

    invoke-static {v0}, Lcom/guochao/faceshow/utils/ShareVideoHelper;->access$100(Lcom/guochao/faceshow/utils/ShareVideoHelper;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/guochao/faceshow/aaspring/beans/SharePlatformBean;

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/beans/SharePlatformBean;->getIcon()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 4
    new-instance v0, Lcom/guochao/faceshow/utils/ShareVideoHelper$MyAdapter$1;

    invoke-direct {v0, p0, p2}, Lcom/guochao/faceshow/utils/ShareVideoHelper$MyAdapter$1;-><init>(Lcom/guochao/faceshow/utils/ShareVideoHelper$MyAdapter;I)V

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/guochao/faceshow/utils/ShareVideoHelper$MyAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/guochao/faceshow/adapter/ZZ_RecycleAdapter$ViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/guochao/faceshow/adapter/ZZ_RecycleAdapter$ViewHolder;
    .locals 3

    .line 2
    new-instance p2, Lcom/guochao/faceshow/adapter/ZZ_RecycleAdapter$ViewHolder;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0d0396

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/guochao/faceshow/adapter/ZZ_RecycleAdapter$ViewHolder;-><init>(Landroid/view/View;)V

    return-object p2
.end method
